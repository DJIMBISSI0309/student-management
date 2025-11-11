<?php
session_start();
ini_set('dispaly_errors', 1);
ini_set('dispaly_startup_errors', 1);
error_reporting(E_ALL);
//connexion a la base de donnes 
require 'connect.php';
//initialisation  des champs  de mon formulaire
if( $_SERVER["REQUEST_METHOD"]== "POST"){
    $namespe=isset($_POST['namespe']) ? $_POST['namespe'] : '';
    $namelev=isset($_POST['namelev']) ? $_POST['namelev'] : '';
    $namestud=isset($_POST['namestud']) ? $_POST['namestud'] : '';
    //$laststud=isset($_POST['laststud']) ? $_POST['laststud'] : '';
    // $academic=isset($_POST['academic']) ? $_POST['academic'] : '';
   
    //verification des champs de mon formulaire
 if(!empty($namespe) && !empty($namelev) && !empty($namestud) && !empty($academic)){
        //ecriture de la requete d'insertion
        $sql="INSERT INTO enrollment (academic_year,idspe,idlev,idstud) VALUES('$academic','$namespe','$namelev','$namestud')";
        //execution de la requete
    if($conn->query($sql)== TRUE){
        $_SESSION['message'] ='<div class="message alert-success">Data inserted successfully.</div>';
 

    }else{
        $_SESSION['message'] = 'error';
    }
   } 
    else{
        $_SESSION['message'] ='empty'; 
    }
    //redirection vers la page d'accueil
    header("Location: index.php");
     exit();
}
?>
