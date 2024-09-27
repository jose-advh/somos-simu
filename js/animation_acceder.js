const botonRegistrar = document.getElementById('registrar');
const botonIniciarSesion = document.getElementById('iniciarSesion');

// Evento para abrir formulario de registro
botonRegistrar.addEventListener('click', () =>
  contenedor.classList.add('contenedor--panel-derecho-activo')
);

// Evento para regresar al formulario de iniciar sesión
botonIniciarSesion.addEventListener('click', () =>
  contenedor.classList.remove('contenedor--panel-derecho-activo')
);