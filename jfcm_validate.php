<?php
session_start();
try{
$email = $_POST['email'];
$password = $_POST['password'];
$tipo_usuario = $_POST['tipo_usuario'];

$user = 'root';
$pass = '';
$nombrebd = 'encuesta_jfcm';

$bd = new PDO(
    $dsn = "mysql:host=localhost;dbname=".$nombrebd,$user,$pass,
    array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
);

if($tipo_usuario == 'Administrativo'){
$sql = "SELECT * FROM usuarios_jfcm WHERE email = ? AND password = ?";
}else{
$sql = "SELECT * FROM estudiantes_jfcm WHERE email = ? AND password = ?";
}

$stm = $bd->prepare($sql);
$stm->execute(array($email,$password));

if($stm->rowCount() >= 0){
$row = $stm->fetch(PDO::FETCH_OBJ);
$_SESSION['genero'] = $row->genero;
$_SESSION['tipo_usuario'] = $row->tipo_usuario;
$_SESSION['nombre'] = $row->nombre;
$_SESSION['id'] = $row->id;
header('location: jfcm_index.php');
}else{
header('location: jfcm_login.php');
}

}catch(PDOException $e){
	echo "Error".$e->getMessage();
}
?>