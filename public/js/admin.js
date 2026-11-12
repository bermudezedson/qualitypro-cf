// Panel de administración: slug automático, confirmaciones, editor de secciones de la ficha técnica.
(function () {
	'use strict';

	function slugify(s) {
		return s
			.normalize('NFD')
			.replace(/[̀-ͯ]/g, '')
			.toLowerCase()
			.replace(/[^a-z0-9]+/g, '-')
			.replace(/^-+|-+$/g, '')
			.slice(0, 150);
	}

	// Slug desde el nombre mientras el usuario no lo haya editado a mano
	var origen = document.querySelector('[data-slug-origen]');
	var destino = document.querySelector('[data-slug-destino]');
	if (origen && destino) {
		var manual = destino.value !== '' && destino.value !== slugify(origen.value);
		destino.addEventListener('input', function () {
			manual = true;
		});
		origen.addEventListener('input', function () {
			if (!manual) destino.value = slugify(origen.value);
		});
	}

	// Confirmaciones
	document.querySelectorAll('form[data-confirm]').forEach(function (f) {
		f.addEventListener('submit', function (e) {
			if (!window.confirm(f.getAttribute('data-confirm'))) e.preventDefault();
		});
	});

	// Editor de secciones
	var cont = document.querySelector('[data-secciones]');
	if (cont) {
		var tpl = document.getElementById('tpl-seccion');

		function activar(sec) {
			var area = sec.querySelector('[data-editor]');
			var dest = sec.querySelector('[data-editor-destino]');
			sec.querySelectorAll('[data-cmd]').forEach(function (b) {
				b.addEventListener('click', function () {
					area.focus();
					document.execCommand(b.getAttribute('data-cmd'), false, null);
					dest.value = area.innerHTML;
				});
			});
			area.addEventListener('input', function () {
				dest.value = area.innerHTML;
			});
			// Pegar como texto plano para no arrastrar estilos de Word/Excel
			area.addEventListener('paste', function (e) {
				e.preventDefault();
				var t = (e.clipboardData || window.clipboardData).getData('text/plain');
				document.execCommand('insertText', false, t);
			});
			sec.querySelector('[data-quitar]').addEventListener('click', function () {
				if (window.confirm('¿Quitar esta sección de la ficha?')) sec.remove();
			});
			sec.querySelectorAll('[data-mover]').forEach(function (b) {
				b.addEventListener('click', function () {
					var dir = parseInt(b.getAttribute('data-mover'), 10);
					var ref = dir < 0 ? sec.previousElementSibling : sec.nextElementSibling;
					if (!ref) return;
					if (dir < 0) cont.insertBefore(sec, ref);
					else cont.insertBefore(ref, sec);
				});
			});
		}

		cont.querySelectorAll('[data-seccion]').forEach(activar);

		var agregar = document.querySelector('[data-agregar-seccion]');
		if (agregar && tpl) {
			agregar.addEventListener('click', function () {
				var nodo = tpl.content.firstElementChild.cloneNode(true);
				cont.appendChild(nodo);
				activar(nodo);
				nodo.querySelector('input').focus();
			});
		}

		// Antes de enviar, sincronizar el HTML de cada editor
		var form = document.getElementById('form-producto');
		if (form) {
			form.addEventListener('submit', function () {
				cont.querySelectorAll('[data-seccion]').forEach(function (sec) {
					var area = sec.querySelector('[data-editor]');
					var dest = sec.querySelector('[data-editor-destino]');
					dest.value = area.innerHTML.replace(/<div>/g, '<br>').replace(/<\/div>/g, '');
				});
			});
		}
	}
})();
