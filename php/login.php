<?php
include("conexion.php");

// Verificar si se ha enviado el formulario de login
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['action']) && $_POST['action'] == 'login') {
    $email = mysqli_real_escape_string($conexion, trim($_POST['email']));
    $password = trim($_POST['password']);

    $query = "SELECT * FROM usuario WHERE email = ?";
    $stmt = mysqli_prepare($conexion, $query);
    
    if ($stmt) {
        mysqli_stmt_bind_param($stmt, "s", $email);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);
        
        if ($usuario = mysqli_fetch_assoc($result)) {
            if (password_verify($password, $usuario['contrasena'])) {
                // Inicio de sesión exitoso
                session_start();
                $_SESSION['id_usuario'] = $usuario['id'];
                $_SESSION['email'] = $usuario['email'];
                $_SESSION['nombre'] = $usuario['nombre'];
                echo '<script>alert("Has iniciado sesión correctamente");
                      window.location.href = "simulacros.php";</script>';
            } else {
                echo '<script>alert("La contraseña que ingresaste es incorrecta.");
                window.location.href = "acceder.php";</script>';
            }
        } else {
            echo '<script>alert("No se encontró un usuario con ese email");
            window.location.href = "acceder.php";</script>';
            
        }
        
        mysqli_stmt_close($stmt);
    } else {
        echo '<script>alert("Error en la preparación de la consulta: ' . mysqli_error($conexion) . '");</script>';
    }
}
?>

