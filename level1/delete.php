<?php
session_start();
require 'connect.php';
$id=$_GET['id'];
$sql="DELETE FROM level1 WHERE idlev=$id";
if($conn->query($sql)==TRUE){
    echo '<script> alert("suppression reussie"); </script>';
    echo '<meta http-equiv="refresh" content="0; URL=index.php">';
    $_SESSION['delete_message']='<div class="message alert-danger">Data deleted successfully</div>';
}else{
    $_SESSION['delete_message']="Error deleting data".$conn->error;
}
header("Location: index.php");
exit();
?>