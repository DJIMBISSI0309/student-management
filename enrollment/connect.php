<?php
//connexion a la base de donnee
$conn=mysqli_connect('localhost','root','','sigeris');
//verification de la connexion
if($conn->connect_error){
    die("connexion failled".$conn->connect_error);
}
?>