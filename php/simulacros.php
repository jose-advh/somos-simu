
<?php
session_start();
// session_destroy();

include("../admin/funciones.php");

aumentarVisita();

$categorias =  obtenerCategorias();

if(isset($_GET['idCategoria'])){
    session_start();
    $_SESSION['usuario'] = "usuario";
    $_SESSION['idCategoria'] = $_GET['idCategoria'];
    header("Location: jugar.php");
}

?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simu - Dashboard</title>
    <link rel="stylesheet" href="../css/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body class="d-flex">
<header class="header-contenido shadow">
            <nav class="header_nav-contenido d-flex flex-column">
                <div
                    class="nav_usuario-contenido d-flex flex-column align-items-center"
                >
                    <h2 class="text-center py-2">Simu</h2>
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
                            href="#"
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
                <a href="../admin/login.php" class="gap-4">
                    <img
                        src="../img/iconos/ajustes_icono.png"
                        class="w-25"
                        alt="Icono de admin"
                    />
                    ADMIN
                </a>
            </nav>
        </header>
    </header>
    <main class="w-80 m-auto">
            <div class="p-2 d-flex flex-wrap gap-4">
                <?php while ($cat = mysqli_fetch_assoc($categorias)):?>
                <div class="p-4">
                    <form action="<?php echo $_SERVER['PHP_SELF'] ?>" id="<?php echo $cat['tema']?>">
                        <input type="hidden" name="idCategoria" value="<?php echo $cat['tema']?>">
                        <a href="javascript:{}" onclick="document.getElementById(<?php echo $cat['tema']?>).submit(); return false;">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title fw-bold">
                                    <?php echo obtenerNombreTema($cat['tema'])?>
                                </h5>
                                <h6 class="card-subtitle mb-2 text-muted">10 Preguntas</h6>
                                <p class="card-text">
                                    <?php
                                        if ($cat['tema'] <= 5) {
                                         echo 
                                            "
                                             Este simulacro contiene preguntas únicamente de la materia " .obtenerNombreTema($cat['tema']).  ".   
                                            ";                                            
                                         } elseif ($cat['tema'] == 6) {
                                            echo 
                                            "
                                             Este simulacro contiene preguntas de todas las materias que se presentan en la prueba.
                                            ";
                                         }   
                                    ?>
                                </p>
                            </div>
                        </div>
                        </a>
                    </form>
                </div>
                <?php endwhile?>
        </div>
    </main>
    <footer></footer>
</body>
</html>