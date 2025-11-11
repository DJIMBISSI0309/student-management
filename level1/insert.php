<?php
session_start();
ini_set('dispaly_errors', 1);
ini_set('dispaly_startup_errors', 1);
error_reporting(E_ALL);
//connexion a la base de donnes 
require 'connect.php';
//initialisation  des champs  de mon formulaire
if( $_SERVER["REQUEST_METHOD"]== "POST"){
    $desclev=isset($_POST['desclev']) ? $_POST['desclev'] : '';


    //verification des champs de mon formulaire
 if(!empty($desclev) ){
        //ecriture de la requete d'insertion
        $sql="INSERT INTO level1 (desclev) VALUES('$desclev')";
        //execution de la requete
    if($conn->query($sql)== TRUE){
        $_SESSION['message']='<div class="message alert-success">Data inserted successfully</div>';
       
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
