<!doctype html>
<html lang="es">
<?php
  session_start();
  if (!isset($_SESSION['nombre'])) {
    header('Location: ../acceder.php');
    exit;
  }
?>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Simu - Contenido</title>
        <link rel="stylesheet" href="../css/styles.css" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous"
        />
    </head>
    <body class="body-contenido d-flex">
        <header class="header-contenido shadow">
            <nav class="header_nav-contenido d-flex flex-column">
                <div
                    class="nav_usuario-contenido d-flex flex-column align-items-center"
                >
                    <img
                        src="../img/iconos/user_icono.png"
                        alt="Avatar del usuario"
                    />
                    <p class="text-center">Hola, <?php echo $_SESSION['nombre']; ?></p>
                </div>
                <ul class="nav_ul-contenido text-center gap-4">
                    <li class="linea_roja-contenido">
                        <a href="#" class="d-flex gap-2 align-items-center">
                            <img
                                src="../img/iconos/simulacros_icono.png"
                                class="w-25"
                                alt="Icono de simulacros"
                            />
                            SIMULACROS
                        </a>
                    </li>
                    <li>
                        <a
                            href="resultado.php"
                            class="d-flex gap-2 align-items-center"
                        >
                            <img
                                src="../img/iconos/resultados_icono.png"
                                class="w-25"
                                alt="Icono de resultados"
                            />
                            RESULTADOS
                        </a>
                    </li>
                    <li>
                        <a
                            href="../index.html"
                            class="d-flex align-items-center gap-2"
                        >
                            <img
                                src="../img/iconos/volver_icono.png"
                                class="w-25"
                                alt="Icono de regreso"
                            />
                            SALIR
                        </a>
                    </li>
                </ul>
                <a href="#" class="gap-4">
                    <img
                        src="../img/iconos/ajustes_icono.png"
                        class="w-25"
                        alt="Icono de ajustes"
                    />
                    AJUSTES
                </a>
            </nav>
        </header>
        <main class="main-contenido">
            <section
                class="main_simulacros-contenido p-4 d-flex gap-4 flex-wrap"
            >
                <div class="card" style="width: 18rem">
                    <img
                        class="card-img-top"
                        src="../img/cards_simulacro/simulacro_principal-global.jpg"
                        alt="Card image cap"
                    />
                    <div class="card-body">
                        <h5 class="card-title">SIMULACRO GENERAL</h5>
                        <p class="card-text">
                            Este simulacro incluye 2 preguntas de cada materia,
                            tendrá un tiempo limite de 30 minutos.
                        </p>
                        <a class="btn btn-secondary btn-lg" href="plantilla.php">
                            Realizar
                        </a>
                    </div>
                </div>
            </section>
        </main>
    </body>
</html>
