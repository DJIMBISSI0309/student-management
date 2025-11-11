<?php
 $check = getimagesize($_FILES["image"]["tmp_name"]);
 if($check !== false) {
   echo "le fichier est une image - " . $check["mime"] . ".";
   $uploadOk = 1;
 } else {
   echo "le fichier n'est pas une image.";
   $uploadOk = 0;
 }


// Check si fichier existe deja
if (file_exists($target_file)) {
 echo "desole le fichier existe deja.";
 $uploadOk = 0;
}



$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["image"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
// Check taille du fichier
if ($_FILES["image"]["size"] > 500000) {
 echo "desole votre dossier est trop grand.";
 $uploadOk = 0;
}

// Autoriser certains formats de fichiers
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
 echo "desole seuls les fichiers JPG, JPEG, PNG & GIF sont  autorises.";
 $uploadOk = 0;
}

// Check si $uploadOk est regle a 0 par une erreur
if ($uploadOk == 0) {
 echo "desole, votre  dossier n'a pas ete telecharge.";
// si tout est ok ,essayer de telecharger le fichier
} else {
 if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
   echo "le fichier ". htmlspecialchars( basename( $_FILES["image"]["name"])). " a bien été telechargé.";
 } else {
   echo "Desole il n'ya une erreur de téléchargement du fichier.";
 }
}
?>