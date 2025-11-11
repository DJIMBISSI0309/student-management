<?php
//include 'connexion.php';
session_start();
if(!isset($_SESSION['user_id'])){
    header("Location: login.php");
    exit;
  
  
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dashboard</title>
    <link href="vendor/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/fontawesome/css/all.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
<h2 class="text-center">Bienvenue,<b class="text-primary"> <?= htmlspecialchars($_SESSION['username']) ?></b></h2>
<h6> vous vous êtes connecté avec succès .</h6>
<a href="../department/index.php" class="btn btn-success text-decoration-none ms-3 mt-2">Connexion </a>
    <div class="row">
    <div class="col-sm-8">
    </div>
    <div class="col-sm-4">
    <a href="logout.php" class="btn btn-danger text-decoration-none ms-3">Deconnexion </a>
    </div>
    </div>
 </div>

    <script src="vendor/js/bootstrap.bundle.min.css"></script>
    <script src="vendor/fontawesome/js/all.min.css"></script>
</body>
</html>