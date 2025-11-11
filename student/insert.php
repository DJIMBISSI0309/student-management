<?php
session_start();
ini_set('dispaly_errors', 1);
ini_set('dispaly_startup_errors', 1);
error_reporting(E_ALL);
//integration de FPDF
require 'connect.php';
//connexion a la base de donnes 

//initialisation  des champs  de mon formulaire
//$imageError="";

// Check si  le fichier image  est une image reelle ou une fausse image

  
if($_SERVER["REQUEST_METHOD"]== "POST"){
    $nom=isset($_POST['firstname']) ? $_POST['firstname'] : '';
    $prenom=isset($_POST['lastname']) ? $_POST['lastname'] : '';
    $date=isset($_POST['birth']) ? $_POST['birth'] : '';
    $namespe=isset($_POST['namespe']) ? $_POST['namespe'] : '';
    $namelev=isset($_POST['namelev']) ? $_POST['namelev'] : '';
    $namestud=isset($_POST['namestud']) ? $_POST['namestud'] : '';
    $academic=date('Y');
    $image  = isset($_FILES['image']['name']) ? $_FILES['image']['name']:'';
       //verifie si sa existe

    $img ='../images';
    //s'assurer que le dossier existe et est accessible en ecriture
    $image_tmp= $_FILES['image']['tmp_name'];
    $name= basename($_FILES['image']['name']);

    //$target_dir = '../images/';
    $imagePath          = "$img/$name";
    $imageExtension     = pathinfo($imagePath,PATHINFO_EXTENSION);
    $isSuccess          = true;
    $isUploadSuccess    = false;


    if(!empty($image)) 
    {
        $_SESSION['image']='<div class="text-success">insertion reussie </div>';
      //  $imageError = 
         $isSuccess = false;
    }
    if(empty($image)) 
    {
        $_SESSION['image']='le champ image ne peut pas être vide';
      //  $imageError = 
         $isSuccess = false;
    }
   
    else
    {
        $isUploadSuccess = true;
        if($imageExtension != "jpg" && $imageExtension != "png" && $imageExtension != "jpeg" && $imageExtension != "gif" ) 
        { 
            $_SESSION['image'] ='Les fichiers autorises sont: .jpg, .jpeg, .png, .gif';
            $isUploadSuccess = false;
        }
        if(file_exists($imagePath))
        {
            $_SESSION['image'] ='Le fichier existe deja';
            $isUploadSuccess = false;
        }
        if($_FILES['image']['size'] > 1000000) 
        {
            $_SESSION['image'] = 'Le fichier ne doit pas depasser les 1MO';
            $isUploadSuccess = false;
        }
        if($isUploadSuccess) 
        {
            //deplacez  le fichier telecharge vers le dossier de destination
            if (move_uploaded_file($image_tmp, $imagePath)) {
                echo "le fichier ". htmlspecialchars( basename($_FILES['image']['name'])). " a bien été telechargé.";
              } else {
                $_SESSION['image'] = 'Il y a eu une erreur lors de l\'upload';
                $isUploadSuccess = false;
              }
              
        } 
    
    }
  
    //verification des champs de mon formulaire
 if(!empty($nom) && !empty($prenom) && !empty($date) && !empty($image) &&  $isUploadSuccess === TRUE)
 {
        //ecriture de la requete d'insertion
        $sql="INSERT INTO student (firstname, lastname,birth,image) VALUES('$nom',' $prenom','$date',
       '$image')";
        //execution de la requete
    if($conn->query($sql)===TRUE){
        $idetudiant=mysqli_insert_id($conn);
        $sql2="INSERT INTO enrollment (academic_year,idspe,idlev,idstud) VALUES('$academic','$namespe','$namelev','$idetudiant')";
       
        if($conn->query($sql2)== TRUE){
            $_SESSION['message'] ='<div class="message alert-success">Data inserted successfully.</div>';
     
    
        }else{
            $_SESSION['message'] = 'error';
        }

    }else{
        $_SESSION['message'] = 'error';
    }
}
   

    else if($isUploadSuccess == false){
        $_SESSION['message'] = 'empty'; 
    }
    //redirection vers la page d'accueil
    header("Location: index.php");
    exit();
}

?>
