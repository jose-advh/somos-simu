<?php
include("conexion.php");

// Verificar si se ha enviado el formulario de registro
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['action']) && $_POST['action'] == 'register') {
    // Escapar y limpiar los datos de entrada
    $name = mysqli_real_escape_string($conexion, trim($_POST['name']));
    $email = mysqli_real_escape_string($conexion, trim($_POST['email']));
    $password = password_hash(trim($_POST['password']), PASSWORD_DEFAULT);
    
    // Verificar si el email ya existe
    $check_email = "SELECT * FROM usuario WHERE email = ?";
    $stmt_check = mysqli_prepare($conexion, $check_email);
    mysqli_stmt_bind_param($stmt_check, "s", $email);
    mysqli_stmt_execute($stmt_check);
    $result_check = mysqli_stmt_get_result($stmt_check);
    
    if (mysqli_num_rows($result_check) > 0) {
        echo '<script>alert("Este email ya está registrado.");</script>';
    } else {
        // Preparar la consulta SQL usando una sentencia preparada
        $query = "INSERT INTO usuario (nombre, email, contrasena) VALUES (?, ?, ?)";
        $stmt = mysqli_prepare($conexion, $query);
        
        if ($stmt) {
            mysqli_stmt_bind_param($stmt, "sss", $name, $email, $password);
            if (mysqli_stmt_execute($stmt)) {
                echo '<script>alert("Te has registrado correctamente");</script>';
                // Aquí puedes añadir código para iniciar sesión automáticamente si lo deseas
            } else {
                echo '<script>alert("Error al registrar: ' . mysqli_error($conexion) . '");</script>';
            }
        } else {
            echo '<script>alert("Error en la preparación de la consulta: ' . mysqli_error($conexion) . '");</script>';
        }
        
        mysqli_stmt_close($stmt);
    }
    mysqli_stmt_close($stmt_check);
}
?>



