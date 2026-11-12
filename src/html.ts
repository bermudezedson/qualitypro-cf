/** Utilidades de HTML. */

export function esc(v: unknown): string {
	return String(v ?? '')
		.replace(/&/g, '&amp;')
		.replace(/</g, '&lt;')
		.replace(/>/g, '&gt;')
		.replace(/"/g, '&quot;')
		.replace(/'/g, '&#39;');
}

/** Serializa JSON para incrustarlo en un <script> sin romper el HTML. */
export function jsonScript(v: unknown): string {
	const LS = String.fromCharCode(0x2028);
	const PS = String.fromCharCode(0x2029);
	return JSON.stringify(v).replace(/</g, '\\u003c').split(LS).join('\\u2028').split(PS).join('\\u2029');
}
