<?php
session_start();
ini_set('dispaly_errors', 1);
ini_set('dispaly_startup_errors', 1);
error_reporting(E_ALL);
//connexion a la base de donnes 
require 'connect.php';
//initialisation  des champs  de mon formulaire
if( $_SERVER["REQUEST_METHOD"]== "POST"){
    $name=isset($_POST['namespe']) ? $_POST['namespe'] : '';
    $description=isset($_POST['descriptionspe']) ? $_POST['descriptionspe'] : '';
    $namedepart=isset($_POST['namedepart']) ? $_POST['namedepart'] : '';
    //verification des champs de mon formulaire
 if(!empty($name) && !empty($description) && !empty($namedepart) ){
        //ecriture de la requete d'insertion
        $sql="INSERT INTO specialty (namespe,descriptionspe,iddepart) VALUES('$name','$description','$namedepart')";
        //execution de la requete
    if($conn->query($sql)===TRUE){
        $_SESSION['message'] ='<div class="message alert-success">Data inserted successfully</div>';
 

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
