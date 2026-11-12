/**
 * Autenticación del panel: usuario único con contraseña (secret ADMIN_PASSWORD) y cookie firmada
 * con HMAC-SHA256 (secret ADMIN_SECRET). Todo viaja por HTTPS; la cookie es HttpOnly y SameSite=Lax.
 */
import type { Context, Next } from 'hono';
import { getCookie, setCookie, deleteCookie } from 'hono/cookie';
import type { Env } from '../db';

export const COOKIE = 'qp_admin';
const DURACION_S = 12 * 60 * 60; // 12 horas

type Ctx = Context<{ Bindings: Env }>;

const enc = new TextEncoder();

async function clave(secret: string): Promise<CryptoKey> {
	return crypto.subtle.importKey('raw', enc.encode(secret), { name: 'HMAC', hash: 'SHA-256' }, false, ['sign', 'verify']);
}

function b64url(bytes: ArrayBuffer): string {
	return btoa(String.fromCharCode(...new Uint8Array(bytes))).replace(/\+/g, '-').replace(/\//g, '_').replace(/=+$/, '');
}

async function firmar(payload: string, secret: string): Promise<string> {
	const sig = await crypto.subtle.sign('HMAC', await clave(secret), enc.encode(payload));
	return b64url(sig);
}

/** Comparación en tiempo constante. */
async function iguales(a: string, b: string): Promise<boolean> {
	const [ha, hb] = await Promise.all([crypto.subtle.digest('SHA-256', enc.encode(a)), crypto.subtle.digest('SHA-256', enc.encode(b))]);
	const x = new Uint8Array(ha);
	const y = new Uint8Array(hb);
	let diff = 0;
	for (let i = 0; i < x.length; i++) diff |= x[i] ^ y[i];
	return diff === 0 && a.length === b.length;
}

export async function validarPassword(env: Env, password: string): Promise<boolean> {
	if (!env.ADMIN_PASSWORD || !password) return false;
	return iguales(password, env.ADMIN_PASSWORD);
}

export async function crearSesion(c: Ctx): Promise<void> {
	const exp = Math.floor(Date.now() / 1000) + DURACION_S;
	const payload = `admin.${exp}`;
	const token = `${payload}.${await firmar(payload, c.env.ADMIN_SECRET)}`;
	setCookie(c, COOKIE, token, { path: '/admin', httpOnly: true, secure: true, sameSite: 'Lax', maxAge: DURACION_S });
}

export function cerrarSesion(c: Ctx): void {
	deleteCookie(c, COOKIE, { path: '/admin' });
}

export async function sesionValida(c: Ctx): Promise<boolean> {
	const token = getCookie(c, COOKIE);
	if (!token || !c.env.ADMIN_SECRET) return false;
	const partes = token.split('.');
	if (partes.length !== 3) return false;
	const [usuario, exp, firma] = partes;
	if (usuario !== 'admin' || Number(exp) < Date.now() / 1000) return false;
	const esperada = await firmar(`${usuario}.${exp}`, c.env.ADMIN_SECRET);
	return iguales(firma, esperada);
}

/** Middleware: exige sesión y, en POST, que la petición venga del mismo sitio (anti-CSRF). */
export async function requiereSesion(c: Ctx, next: Next) {
	if (!(await sesionValida(c))) {
		const next_ = encodeURIComponent(new URL(c.req.url).pathname);
		return c.redirect(`/admin/login?next=${next_}`, 302);
	}
	if (c.req.method !== 'GET' && c.req.method !== 'HEAD') {
		const site = c.req.header('Sec-Fetch-Site');
		const origin = c.req.header('Origin');
		const mismo = site ? site === 'same-origin' || site === 'none' : !origin || origin === new URL(c.req.url).origin;
		if (!mismo) return c.text('Petición rechazada (origen no válido).', 403);
	}
	await next();
}
