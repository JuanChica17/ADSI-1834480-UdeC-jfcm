<!DOCTYPE html>
<html lang="es">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>UC - Validacion Registro Usuario</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-info">

  <div class="container">

<?php
    $nombre         = $_REQUEST['nombre'];
    $apellido       = $_REQUEST['apellido'];
    $email          = $_REQUEST['email'];
    $password       = $_REQUEST['password'];
    $tipo_usuario   = $_REQUEST['tipo_usuario'];

    $user = 'root';
    $pass = '';
    $nombrebd = 'encuesta_jfcm';

    try{


    $bd = new PDO(
        $dsn = "mysql:host=localhost;dbname=".$nombrebd,$user,$pass,
        array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
    );

    $sentencia = $bd->prepare("INSERT INTO usuarios_jfcm(nombre,apellido,email,password,tipo_usuario) VALUES (?,?,?,?,?);");
        $resultado = $sentencia->execute([$nombre,$apellido,$email,$password,$tipo_usuario]);

      if($resultado === TRUE){
        echo "<div class='alert alert-success'>Usuario registrado correctamente</div>";
        echo "<div class='alert alert-warning'><a href='jfcm_login.php'>Regresar</a></div>";
      }else{
        echo "<div class='alert alert-danger'>Error</div>";
            echo "<div class='alert alert-warning'><a href='jfcm_login.php'>Regresar</a></div>";
      }

    }catch(PDOException $e){
      echo "Error".$e->getMessage();
    }
  
?>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>