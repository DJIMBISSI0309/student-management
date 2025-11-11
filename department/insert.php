<?php
session_start();
ini_set('dispaly_errors', 1);
ini_set('dispaly_startup_errors', 1);
error_reporting(E_ALL);
//connexion a la base de donnes 
require 'connect.php';
//initialisation  des champs  de mon formulaire
if($_SERVER["REQUEST_METHOD"]== "POST"){
    $namedepart=isset($_POST['namedepart']) ? $_POST['namedepart'] : '';
    $descriptiondepart=isset($_POST['descriptiondepart']) ? $_POST['descriptiondepart'] : '';

    //verification des champs de mon formulaire
 if(!empty($namedepart) && !empty($descriptiondepart)){
        //ecriture de la requete d'insertion
        $sql="INSERT INTO department (namedepart, descriptiondepart) VALUES('$namedepart',' $descriptiondepart')";
        //execution de la requete
    if($conn->query($sql)=== TRUE){
     
        $_SESSION['message'] ='<div class="message alert-success">Data inserted successfully </div>';
    }else{
        $_SESSION['message'] = 'error';
    }
   } 
    else{
        $_SESSION['message'] = 'empty'; 
    }
    //redirection vers la page d'accueil
    
   header("Location: index.php");
    exit();
}
?>
