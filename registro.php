<?php
include("conexion.php");

// Verificar si se ha enviado el formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Escapar y limpiar los datos de entrada
    $name = mysqli_real_escape_string($conexion, trim($_POST['name']));
    $email = mysqli_real_escape_string($conexion, trim($_POST['email']));
    $password = password_hash(trim($_POST['password']), PASSWORD_DEFAULT);

    // Preparar la consulta SQL usando una sentencia preparada
    $query = "INSERT INTO usuario (nombre, email, contrasena) VALUES (?, ?, ?)";
    $stmt = mysqli_prepare($conexion, $query);

    if ($stmt) {
        mysqli_stmt_bind_param($stmt, "sss", $name, $email, $password);
        $resultado = mysqli_stmt_execute($stmt);

        if ($resultado) {
            echo '<script>alert("Te has registrado correctamente");</script>';
        } else {
            echo '<script>alert("Error al registrar: ' . mysqli_error($conexion) . '");</script>';
        }

        mysqli_stmt_close($stmt);
    } else {
        echo '<script>alert("Error en la preparación de la consulta: ' . mysqli_error($conexion) . '");</script>';
    }
}
?>



