<!DOCTYPE html>
<html lang="es">


<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://kit.fontawesome.com/869dc8f5ef.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../css/styles.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Simu - Acceder</title>
</head>

<body class="body-acceder">
    <header>
        <a href="/index.html" class="header__volver">Volver</a>
    </header>
    <div class="contenedor" id="contenedor">

        <!-- 
        Formulario de Registro
      - Campos requeridos: Nombre, Email, Contraseña
      - Validación: Implementar validación del lado del servidor para todos los campos
      -->
        <div class="formulario__contenedor formulario__contenedor--registro">
            <form action="#" class="formulario" method="post">
                <h1 class="formulario__titulo">Crea tu Cuenta</h1>
                <span class="formulario__subtitulo">Usa tu email como registro</span>
                <input type="text" placeholder="Nombre" class="formulario__entrada" name="name" required>
                <input type="email" placeholder="Correo" class="formulario__entrada" name="email" required>
                <input type="password" placeholder="Contraseña" class="formulario__entrada" name="password" required>
                <button class="formulario__boton formulario__boton--lila" name="registrar">Registrar</button>
            </form>
        </div>

        <!-- 
        Formulario de Inicio de Sesión
      - Campos requeridos: Correo, Contraseña (ambos marcados como required)
      - Validación: Verificar credenciales contra la base de datos
      -->
        <div class="formulario__contenedor formulario__contenedor--inicio-sesion">
            <form action="#" class="formulario" method="post">
                <h1 class="formulario__titulo">Iniciar Sesión</h1>
                <span class="formulario__subtitulo">Usa tu email</span>
                <input type="email" placeholder="Correo" class="formulario__entrada" name="email" required>
                <input type="password" placeholder="Contraseña" class="formulario__entrada" name="password" required>

                <!-- 
            Ustedes verán si le dan funcionamiento a esto. (Olvidaste contraseña)
          -->
                <a href="#" class="formulario__enlace">¿Olvidaste tu contraseña?</a>
                <button class="formulario__boton" name="Inicio">Iniciar sesión</button>
            </form>
        </div>

        <!-- 
      Esta sección es manejada principalmente por el frontend, no se requiere backend. 
      -->
        <div class="superposicion__contenedor">
            <div class="superposicion">
                <div class="superposicion__panel superposicion__panel--izquierdo align-items-center">
                    <h1 class="superposicion__titulo">¿Ya tienes una cuenta en Simu?</h1>
                    <p class="superposicion__descripcion">
                        Inicia sesión con tu cuenta
                    </p>
                    <button class="superposicion__boton superposicion__boton--fantasma" id="iniciarSesion">Inicia sesión</button>
                </div>
                <div class="superposicion__panel superposicion__panel--derecho align-items-center">
                    <h1 class="superposicion__titulo">Hey, ¿aún no tienes una cuenta?</h1>
                    <p class="superposicion__descripcion">Crear tu cuenta</p>
                    <button class="superposicion__boton superposicion__boton--fantasma" id="registrar">Registrarme</button>
                </div>
            </div>
        </div>
    </div>
    <script src="../js/scripts.js"></script>
<?php  
include ("php/registro.php");
?>

</body>

</html>