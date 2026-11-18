/**
 * Formularios de contacto y distribuidor: validación, anti-bots (honeypot, Turnstile opcional, límite por
 * IP), registro en D1 (tabla leads) y aviso por correo con Resend.
 */
import type { Env } from './db';
import { getAjuste } from './archivos';
import { esc } from './html';

export type TipoLead = 'contacto' | 'distribuidor';

export interface Lead {
	tipo: TipoLead;
	nombre: string;
	email: string;
	telefono: string | null;
	empresa: string | null;
	rut: string | null;
	giro: string | null;
	comuna: string | null;
	sitio_web: string | null;
	mensaje: string | null;
	origen: string | null;
}

export const AJUSTES_CORREO = {
	contacto: 'formularios.correo_contacto',
	distribuidor: 'formularios.correo_distribuidor',
	remitente: 'formularios.remitente',
	autorespuesta: 'formularios.autorespuesta', // '0' desactiva
	autoContactoAsunto: 'formularios.autorespuesta_contacto_asunto',
	autoContactoTexto: 'formularios.autorespuesta_contacto_texto',
	autoDistribuidorAsunto: 'formularios.autorespuesta_distribuidor_asunto',
	autoDistribuidorTexto: 'formularios.autorespuesta_distribuidor_texto'
} as const;

export const AUTORESPUESTA_DEFECTO = {
	contacto: {
		asunto: 'Recibimos tu mensaje, {{nombre}}',
		texto: `Hola {{nombre}},

Gracias por escribir a Quality Pro. Recibimos tu mensaje y nuestro equipo se pondrá en contacto contigo a la brevedad, en horario hábil.

Si necesitas una respuesta inmediata, escríbenos por WhatsApp al +56 9 3258 6340 o llámanos al +56 2 2814 4705.

Saludos,
Equipo Quality Pro
Balmaceda 2762, Peñaflor · qualitypro.cl`
	},
	distribuidor: {
		asunto: 'Recibimos tu solicitud para ser distribuidor Quality Pro',
		texto: `Hola {{nombre}},

Gracias por tu interés en distribuir los productos Quality Pro. Recibimos la solicitud de {{empresa}} y nuestro equipo comercial la revisará para contactarte pronto y conversar sobre productos, condiciones y cobertura.

Si prefieres adelantar la conversación, escríbenos por WhatsApp al +56 9 3258 6340.

Saludos,
Equipo comercial Quality Pro
Balmaceda 2762, Peñaflor · qualitypro.cl`
	}
};
export const CORREO_DEFECTO = 'contacto@qualitypro.cl';
export const REMITENTE_DEFECTO = 'Quality Pro <onboarding@resend.dev>';

const LIMITE_POR_IP = 5; // envíos por IP cada 15 minutos

/** Celular chileno: acepta "12345678", "912345678", "+56 9 1234 5678", "56912345678"; devuelve "+56 9 1234 5678" o null si no es válido. */
export function normalizarCelular(v: string): string | null {
	let d = v.replace(/\D/g, '');
	if (d.startsWith('56')) d = d.slice(2);
	if (d.length === 9 && d.startsWith('9')) d = d.slice(1);
	if (d.length !== 8) return null;
	return `+56 9 ${d.slice(0, 4)} ${d.slice(4)}`;
}
const str = (v: unknown, max = 255) => (typeof v === 'string' ? v.trim().slice(0, max) : '');

/** Valida y normaliza el cuerpo recibido. Devuelve el lead o un mensaje de error para el usuario. */
export function validarLead(tipo: TipoLead, b: Record<string, unknown>): { lead: Lead } | { error: string } {
	if (str(b.empresa_fax)) return { error: 'spam' }; // honeypot: los humanos no ven este campo
	const nombre = str(b.nombre, 120);
	const email = str(b.email, 160).toLowerCase();
	if (!nombre) return { error: 'Indica tu nombre.' };
	if (!/^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/.test(email)) return { error: 'Indica un correo válido.' };
	const telefonoCrudo = str(b.telefono, 40);
	const telefono = telefonoCrudo ? normalizarCelular(telefonoCrudo) : null;
	if (telefonoCrudo && !telefono) return { error: 'Ingresa un celular chileno de 8 dígitos después de +56 9.' };
	const lead: Lead = {
		tipo,
		nombre,
		email,
		telefono,
		empresa: str(b.empresa, 160) || null,
		rut: str(b.rut, 20) || null,
		giro: str(b.giro, 160) || null,
		comuna: str(b.comuna, 100) || null,
		sitio_web: str(b.sitio_web, 200) || null,
		mensaje: str(tipo === 'contacto' ? b.mensaje : b.productos_interes, 4000) || null,
		origen: str(b.origen, 300) || null
	};
	if (tipo === 'contacto' && !lead.mensaje) return { error: 'Escribe tu mensaje.' };
	if (tipo === 'distribuidor') {
		if (!lead.empresa || !lead.telefono) return { error: 'Empresa y teléfono son obligatorios.' };
		if (!lead.mensaje) return { error: 'Indica los productos de interés.' };
	}
	return { lead };
}

export async function superaLimite(env: Env, ip: string | null): Promise<boolean> {
	if (!ip) return false;
	const r = await env.DB.prepare("SELECT COUNT(*) n FROM leads WHERE ip = ? AND created_at > datetime('now', '-15 minutes')").bind(ip).first<{ n: number }>();
	return (r?.n ?? 0) >= LIMITE_POR_IP;
}

/** Verifica el token de Cloudflare Turnstile. Si no hay secreto configurado, se omite. */
export async function verificarTurnstile(env: Env, token: string, ip: string | null): Promise<boolean> {
	if (!env.TURNSTILE_SECRET) return true;
	if (!token) return false;
	const body = new URLSearchParams({ secret: env.TURNSTILE_SECRET, response: token });
	if (ip) body.set('remoteip', ip);
	try {
		const r = await fetch('https://challenges.cloudflare.com/turnstile/v0/siteverify', { method: 'POST', body });
		const j = (await r.json()) as { success: boolean };
		return !!j.success;
	} catch {
		return false;
	}
}

export async function guardarLead(env: Env, lead: Lead, ip: string | null, userAgent: string | null): Promise<number> {
	const r = await env.DB.prepare(
		`INSERT INTO leads (tipo, nombre, email, telefono, empresa, rut, giro, comuna, sitio_web, mensaje, origen, ip, user_agent)
		 VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`
	)
		.bind(lead.tipo, lead.nombre, lead.email, lead.telefono, lead.empresa, lead.rut, lead.giro, lead.comuna, lead.sitio_web, lead.mensaje, lead.origen, ip, userAgent?.slice(0, 300) ?? null)
		.run();
	return Number(r.meta.last_row_id);
}

/** Envía el aviso por Resend y deja constancia en el lead. Nunca lanza: el lead ya está guardado. */
export async function notificarLead(env: Env, id: number, lead: Lead): Promise<void> {
	let error: string | null = null;
	if (!env.RESEND_API_KEY) error = 'RESEND_API_KEY no configurada';
	else {
		const para = (await getAjuste(env, AJUSTES_CORREO[lead.tipo])) || CORREO_DEFECTO;
		const remitente = (await getAjuste(env, AJUSTES_CORREO.remitente)) || REMITENTE_DEFECTO;
		const asunto = lead.tipo === 'contacto' ? `Contacto web: ${lead.nombre}` : `Solicitud de distribuidor: ${lead.empresa ?? lead.nombre}`;
		try {
			const r = await fetch('https://api.resend.com/emails', {
				method: 'POST',
				headers: { Authorization: `Bearer ${env.RESEND_API_KEY}`, 'Content-Type': 'application/json' },
				body: JSON.stringify({
					from: remitente,
					to: para.split(/[,;]\s*/).filter(Boolean),
					reply_to: lead.email,
					subject: asunto,
					html: htmlCorreo(lead, id, env.SITE_URL),
					text: textoCorreo(lead, id, env.SITE_URL)
				})
			});
			if (!r.ok) error = `Resend ${r.status}: ${(await r.text()).slice(0, 300)}`;
		} catch (e) {
			error = `Resend: ${String(e).slice(0, 300)}`;
		}
	}
	let errorAuto: string | null = null;
	if (env.RESEND_API_KEY && (await getAjuste(env, AJUSTES_CORREO.autorespuesta)) !== '0') {
		errorAuto = await enviarAutorespuesta(env, lead);
	}
	const detalle = [error, errorAuto ? `autorespuesta: ${errorAuto}` : null].filter(Boolean).join(' | ') || null;
	await env.DB.prepare('UPDATE leads SET correo_enviado = ?, correo_error = ? WHERE id = ?').bind(error ? 0 : 1, detalle, id).run();
	if (detalle) console.error('Correo con problemas para lead', id, detalle);
}

/** Correo de confirmación a la persona que escribió. Devuelve un mensaje de error o null. */
async function enviarAutorespuesta(env: Env, lead: Lead): Promise<string | null> {
	const def = AUTORESPUESTA_DEFECTO[lead.tipo];
	const asuntoPlantilla = (await getAjuste(env, lead.tipo === 'contacto' ? AJUSTES_CORREO.autoContactoAsunto : AJUSTES_CORREO.autoDistribuidorAsunto)) || def.asunto;
	const textoPlantilla = (await getAjuste(env, lead.tipo === 'contacto' ? AJUSTES_CORREO.autoContactoTexto : AJUSTES_CORREO.autoDistribuidorTexto)) || def.texto;
	const rellenar = (t: string) => t.replace(/\{\{\s*nombre\s*\}\}/g, lead.nombre).replace(/\{\{\s*empresa\s*\}\}/g, lead.empresa ?? 'tu empresa');
	const asunto = rellenar(asuntoPlantilla);
	const texto = rellenar(textoPlantilla);
	const remitente = (await getAjuste(env, AJUSTES_CORREO.remitente)) || REMITENTE_DEFECTO;
	const responderA = (await getAjuste(env, AJUSTES_CORREO[lead.tipo])) || CORREO_DEFECTO;
	const parrafos = texto
		.split(/\n{2,}/)
		.map((p) => `<p style="margin:0 0 14px;line-height:1.6">${esc(p).replace(/\n/g, '<br>')}</p>`)
		.join('');
	const html = `<div style="font-family:Manrope,Arial,sans-serif;max-width:600px;margin:0 auto;border:1px solid #d9e1e8;border-radius:10px;overflow:hidden">
<div style="background:#0f3353;color:#fff;padding:16px 20px;font-size:18px;font-weight:700">Quality Pro · Nutrición y salud animal</div>
<div style="padding:20px;color:#1d2b36;font-size:15px">${parrafos}</div>
<div style="padding:12px 20px;border-top:1px solid #d9e1e8;font-size:12px;color:#64737f">Este es un mensaje automático de confirmación. Puedes responderlo y llegará a nuestro equipo.</div></div>`;
	try {
		const r = await fetch('https://api.resend.com/emails', {
			method: 'POST',
			headers: { Authorization: `Bearer ${env.RESEND_API_KEY}`, 'Content-Type': 'application/json' },
			body: JSON.stringify({ from: remitente, to: [lead.email], reply_to: responderA.split(/[,;]\s*/)[0], subject: asunto, html, text: texto })
		});
		if (!r.ok) return `Resend ${r.status}: ${(await r.text()).slice(0, 200)}`;
		return null;
	} catch (e) {
		return String(e).slice(0, 200);
	}
}

function campos(lead: Lead): [string, string | null][] {
	return lead.tipo === 'contacto'
		? [
				['Nombre', lead.nombre],
				['Correo', lead.email],
				['Teléfono', lead.telefono],
				['Mensaje', lead.mensaje]
			]
		: [
				['Empresa', lead.empresa],
				['RUT', lead.rut],
				['Giro', lead.giro],
				['Comuna', lead.comuna],
				['Contacto', lead.nombre],
				['Correo', lead.email],
				['Teléfono', lead.telefono],
				['Sitio web', lead.sitio_web],
				['Productos de interés', lead.mensaje]
			];
}

function textoCorreo(lead: Lead, id: number, sitio: string): string {
	const titulo = lead.tipo === 'contacto' ? 'Nuevo mensaje de contacto desde el sitio web' : 'Nueva solicitud para ser distribuidor';
	return [
		titulo,
		'',
		...campos(lead).map(([k, v]) => `${k}: ${v ?? '-'}`),
		'',
		`Origen: ${lead.origen ?? '-'}`,
		`Ver en el panel: ${sitio}/admin/leads/${id}`,
		'',
		'Responde a este correo para contestar directamente a la persona.'
	].join('\n');
}

function htmlCorreo(lead: Lead, id: number, sitio: string): string {
	const titulo = lead.tipo === 'contacto' ? 'Nuevo mensaje de contacto' : 'Nueva solicitud para ser distribuidor';
	const filas = campos(lead)
		.map(([k, v]) => `<tr><td style="padding:6px 10px;color:#64737f;white-space:nowrap;vertical-align:top">${esc(k)}</td><td style="padding:6px 10px;color:#1d2b36">${esc(v ?? '-').replace(/\n/g, '<br>')}</td></tr>`)
		.join('');
	return `<div style="font-family:Manrope,Arial,sans-serif;max-width:600px;margin:0 auto;border:1px solid #d9e1e8;border-radius:10px;overflow:hidden">
<div style="background:#0f3353;color:#fff;padding:16px 20px;font-size:18px;font-weight:700">${esc(titulo)}</div>
<table style="border-collapse:collapse;width:100%;font-size:15px">${filas}</table>
<div style="padding:14px 20px;border-top:1px solid #d9e1e8;font-size:13px;color:#64737f">
Origen: ${esc(lead.origen ?? '-')} · <a href="${esc(sitio)}/admin/leads/${id}" style="color:#1f6f9f">Ver en el panel</a><br>
Responde a este correo para contestar directamente a ${esc(lead.nombre)}.
</div></div>`;
}
