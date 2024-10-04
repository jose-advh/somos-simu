
<?php
session_start();

//Si el usuario no esta logeado lo enviamos al index
if (!$_SESSION['usuario']) {
    header("Location:simulacros.php");
}

//
include("../admin/funciones.php");

$confi = obtenerConfiguracion();
$totalPreguntasPorJuego = $confi['totalPreguntas'];

//Variables que contral la partida


if(isset($_GET['siguiente'])){//Ya esta jugando
    //Aumento 1 en las estadísticas
    aumentarRespondidas();

    //Controlar si la respuesta esta bien
    if($_SESSION['respuesta_correcta']==$_GET['respuesta']){
        $_SESSION['correctas'] = $_SESSION['correctas'] + 1;
    }

    //
    $_SESSION['numPreguntaActual'] = $_SESSION['numPreguntaActual'] + 1;
    if($_SESSION['numPreguntaActual'] < ($totalPreguntasPorJuego)){
        $preguntaActual = obtenerPreguntaPorId($_SESSION['idPreguntas'][ $_SESSION['numPreguntaActual']]);
        $_SESSION['respuesta_correcta'] = $preguntaActual['correcta'];
    }else{
        //Lo enviamos al pagina de los resultados
        //Calculo la cantidad de respuestas incorrectas y lo guardo en una variable global
        $_SESSION['incorrectas'] = $totalPreguntasPorJuego - $_SESSION['correctas'];
        //Obetengo el nombre de la categoria y lo ponogo en una variable global
        $_SESSION['nombreCategoria'] = obtenerNombreTema($_SESSION['idCategoria']);
        $_SESSION['score'] = ($_SESSION['correctas'] * 100)/$totalPreguntasPorJuego;
        header("Location: final.php");
    }

}else{//comenzó a jugar
    $_SESSION['correctas']=0;
    $_SESSION['numPreguntaActual'] = 0;
    $_SESSION['preguntas'] = obtenerIdsPreguntasPorCategoria($_SESSION['idCategoria']);
    $_SESSION['idPreguntas'] = array();

    foreach ($_SESSION['preguntas'] as $idPregunta) {
        array_push($_SESSION['idPreguntas'],$idPregunta['id']); // Item agregado
    }
    
    //Desordeno el arreglo
    shuffle($_SESSION['idPreguntas']);
    $preguntaActual = obtenerPreguntaPorId($_SESSION['idPreguntas'][0]);
    $_SESSION['respuesta_correcta'] = $preguntaActual['correcta'];
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simu</title>
    <link rel="stylesheet" href="../css/estilo.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
    <div class="container-juego shadow" id="container-juego">
        <header class="header">
            <div class="categoria">
                <?php echo obtenerNombreTema($preguntaActual['tema']) ?>
            </div>
            <a href="simulacros.php" style="color:black">Volver al inicio</a>
        </header>
        <div class="info">
            <div class="estadoPregunta">
                Pregunta <span class="numPregunta"><?php echo $_SESSION['numPreguntaActual'] + 1?></span> de <?php echo $totalPreguntasPorJuego ?>
            </div>
            <h3>
                <?php echo $preguntaActual['pregunta']?>
            </h3>
            <form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="get">
                <div class="opciones">
                    <label for="respuesta1" onclick="seleccionar(this)" class="op1">
                        <p>A. <?php echo $preguntaActual['opcion_a']?></p>
                        <input type="radio" name="respuesta" value="A" id="respuesta1" required>
                    </label>
                    <label for="respuesta2" onclick="seleccionar(this)" class="op2">
                        <p>B. <?php echo $preguntaActual['opcion_b']?></p>
                        <input type="radio" name="respuesta" value="B" id="respuesta2" required>
                    </label>
                    <label for="respuesta3" onclick="seleccionar(this)" class="op3">
                        <p>C. <?php echo $preguntaActual['opcion_c']?></p>
                        <input type="radio" name="respuesta" value="C" id="respuesta3" required>
                    </label>
                    <label for="respuesta4" onclick="seleccionar(this)" class="op4">
                        <p>D. <?php echo $preguntaActual['opcion_d']?></p>
                        <input type="radio" name="respuesta" value="D" id="respuesta4" required>
                    </label>
                </div>
                    <input type="submit" class="btn btn-warning" value="Siguiente" name="siguiente">
            </form>
        </div>
    </div>
    <script src="../js/juego.js"></script>
</body>
</html>