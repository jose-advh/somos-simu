const botonRegistrar = document.getElementById('registrar');
const botonIniciarSesion = document.getElementById('iniciarSesion');
const contenedor = document.getElementById('contenedor');

window.addEventListener('scroll', function() {
    let header = document.querySelector('header');
    if (this.window.scrollY > 50) {
        header.classList.add('scrolled');
    } else {
        header.classList.remove('scrolled');
    }
})

// Evento para abrir formulario de registro
botonRegistrar.addEventListener('click', () =>
  contenedor.classList.add('contenedor--panel-derecho-activo')
);

// Evento para regresar al formulario de iniciar sesión
botonIniciarSesion.addEventListener('click', () =>
  contenedor.classList.remove('contenedor--panel-derecho-activo')
);