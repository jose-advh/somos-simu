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
        <header class="header-contenido shadow" style="width: 5rem !important;">
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
                                class="w-100"
                                alt="Icono de simulacros"
                            />
                        </a>
                    </li>
                    <li>
                        <a
                            href="resultado.php"
                            class="d-flex gap-2 align-items-center"
                        >
                            <img
                                src="../img/iconos/resultados_icono.png"
                                class="w-100"
                                alt="Icono de resultados"
                            />
                        </a>
                    </li>
                    <li>
                        <a
                            href="simulacros.php"
                            class="d-flex align-items-center gap-2"
                        >
                            <img
                                src="../img/iconos/volver_icono.png"
                                class="w-100"
                                alt="Icono de regreso"
                            />
                        </a>
                    </li>
                </ul>
                <a href="#" class="gap-4">
                    <img
                        src="../img/iconos/ajustes_icono.png"
                        class="w-50"
                        alt="Icono de ajustes"
                    />
                </a>
            </nav>
        </header>
        <main class="w-100">
            <section class="d-flex aling-items-center justify-content-between p-2 px-4">
                    <p class="fw-bold">1/100</p>
                    <h2>Simulacro X</h2>
            </section>
            <div class="progress">
                <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <section class="bg-light mt-2 d-flex">
                <p class="w-75 fw-bold m-auto py-2">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Nulla ut sequi non sit unde iure odio earum repudiandae et facilis odit, delectus sed adipisci dolorum aperiam aut, corporis repellendus qui. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quo blanditiis ab exercitationem debitis ducimus id ullam dolor modi, necessitatibus quae at nam unde error molestias quis ipsa, quam nihil odio. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Saepe illo totam ducimus illum alias maxime tempore, quam eius ex voluptate autem atque distinctio! Sit explicabo quos sint veniam quia vel? Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit, fugit soluta eaque tempora unde quas mollitia quia nulla consequuntur vitae consectetur at, dolor commodi maxime saepe quisquam, voluptatem in quidem. Lorem ipsum dolor, sit amet consectetur adipisicing elit. A sit laboriosam doloremque possimus. Sint error magnam sunt! Nobis fugit esse enim quos voluptatum. Libero similique sequi repellat facilis excepturi? Quibusdam. Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt eaque ipsam voluptate laborum vero quibusdam aliquid deleniti eveniet in! Odit sint optio aperiam dolorum voluptatem saepe aliquam architecto labore eveniet. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eos eveniet, beatae assumenda error, harum tenetur recusandae sequi asperiores delectus nobis cumque voluptas ipsum voluptatum soluta fugit facere, facilis accusantium! Ratione.
                </p>
            </section>
            
            <article class="w-75 m-auto mt-3">
            <p class="text-center">
                <a class="btn bg-warning fw-bold" style="width: 25rem;" data-bs-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">PREGUNTA 1</a>
                <button class="btn bg-warning fw-bold" style="width: 25rem;" type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">RESPUESTAS</button>
            </p>

            <div class="row">
                <div class="col">
                    <div class="collapse multi-collapse" style="width: 30rem;" id="multiCollapseExample1">
                    <div class="card card-body w-100 m-auto">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur minima amet minus totam vel quidem ducimus, dicta nemo, exercitationem, beatae enim deleniti quae at delectus excepturi vitae explicabo neque! Iusto. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit, possimus? Eaque voluptates blanditiis laborum error reiciendis perferendis molestiae autem non quod nobis neque ea alias commodi quo adipisci, dicta tempora! Lorem ipsum dolor sit, amet consectetur adipisicing elit. Provident beatae cupiditate non dolor ea dolorem doloribus reiciendis est placeat necessitatibus sit iusto numquam aperiam praesentium, suscipit nesciunt repellendus adipisci iste. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nisi tempora, debitis, voluptatum laborum non numquam repellat quas assumenda porro repellendus quia. Animi sint eaque hic quaerat quidem nam ea adipisci. lorem
                    </div>
                    </div>
                </div>
                <div class="col">
                    <div class="collapse multi-collapse w-50" id="multiCollapseExample2">
                        <div class="card card-body d-flex flex-row gap-3 w-100">
                            <a class="btn bg-warning fw-bold" style="width: 5rem;" data-bs-toggle="collapse" href="#multiCollapseExample3" role="button" aria-expanded="false" aria-controls="multiCollapseExample3">A</a>
                            <a class="btn bg-warning fw-bold" style="width: 5rem;" data-bs-toggle="collapse" href="#multiCollapseExample4" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">B</a>
                            <a class="btn bg-warning fw-bold" style="width: 5rem;" data-bs-toggle="collapse" href="#multiCollapseExample5" role="button" aria-expanded="false" aria-controls="multiCollapseExample5">C</a>
                            <a class="btn bg-warning fw-bold" style="width: 5rem;" data-bs-toggle="collapse" href="#multiCollapseExample6" role="button" aria-expanded="false" aria-controls="multiCollapseExample6">D</a>
                        </div>
                    </div>

                    <div class="collapse multi-collapse w-100" id="multiCollapseExample3">
                    <div class="card card-body d-flex flex-column gap-3 w-100 ">
                        <form action="#">
                            <input type="checkbox"> 
                            <label for="A" class="fw-bold">Seleccionar respuesta (A)</label>
                            <br>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Totam quas incidunt iure, facere sint culpa maiores, minus animi ab natus magni. Sequi asperiores aliquam ut voluptates porro, temporibus id aliquid.
                        </form>
                    </div>
                    </div>

                    <div class="collapse multi-collapse w-100" id="multiCollapseExample4">
                    <div class="card card-body d-flex flex-column gap-3 w-100 ">
                        <form action="#">
                            <input type="checkbox"> 
                            <label for="B" class="fw-bold">Seleccionar respuesta (B)</label>
                            <br>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Totam quas incidunt iure, facere sint culpa maiores, minus animi ab natus magni. Sequi asperiores aliquam ut voluptates porro, temporibus id aliquid.
                        </form>
                    </div>
                    </div>

                    <div class="collapse multi-collapse w-100" id="multiCollapseExample5">
                    <div class="card card-body d-flex flex-column gap-3 w-100 ">
                        <form action="#">
                            <input type="checkbox"> 
                            <label for="C" class="fw-bold">Seleccionar respuesta (C)</label>
                            <br>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Totam quas incidunt iure, facere sint culpa maiores, minus animi ab natus magni. Sequi asperiores aliquam ut voluptates porro, temporibus id aliquid.
                        </form>
                    </div>
                    </div>

                    <div class="collapse multi-collapse w-100" id="multiCollapseExample6">
                    <div class="card card-body d-flex flex-column gap-3 w-100 ">
                        <form action="#">
                            <input type="checkbox"> 
                            <label for="D" class="fw-bold">Seleccionar respuesta (D)</label>
                            <br>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Totam quas incidunt iure, facere sint culpa maiores, minus animi ab natus magni. Sequi asperiores aliquam ut voluptates porro, temporibus id aliquid.
                        </form>
                    </div>
                    </div>
                 </div>
                 </div>
            </article>
        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="./js/scroll_effect.js"></script>
    </body>
</html>
