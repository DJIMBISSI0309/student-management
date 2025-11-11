<?php
//connexion a la base de donnée
$conn=mysqli_connect('localhost','root','','sigeris');
//verification de la connexion
if($conn->connect_error){
    die("connexion failed".$conn->connect_error);
}
?>