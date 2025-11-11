<?php
include 'admin/connexion.php';
if($_SERVER['REQUEST_METHOD']=="POST"){
    $username=$_POST['username'];
    $email=$_POST['email'];
    $password=$_POST['password'];
    $pass = password_hash($password, PASSWORD_DEFAULT);
    $sql="INSERT INTO administrateur (nom_utilisateur,Email,mot_de_passe) VALUES(?,?,?)";
    $stmt=$pdo->prepare($sql);
    try{
        if($stmt->execute([$username,$email,$pass])){
            header("Location: login.php");
            exit;
        }else{
            $error='Erreur lors de l\'inscription.';
        }
    }catch(Exception $e){
        $error='Erreur lors de l\'inscription.' .$e->getMessage();
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Inscription</title>
    <link href="vendor/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/fontawesome/css/all.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
<h2 class="text-center">Inscription</h2>
<?php if(isset($error)): ?>
<div class="alert alert-danger"><?= $error ?></div>
<?php endif ?>

    <form method="post">
    <div class="form-floating mb-3 ">
  
    <input type="text" class="form-control" id="username"  placeholder="Enter nom utilisateur" name="username" required style="height:5%">
    <label for="username" class="">NOM d'utilisateur</label>
    </div>
    <div class="form-floating mb-3">
    <input type="text" class="form-control" id="email"  placeholder="Enter email" name="email" required style="height:5%">
    <label for="email" class="">Email</label>
    </div>
    <div class="form-floating mb-3">
  
    <input type="password" class="form-control" id="password" placeholder="Enter mot de passe" name="password" required style="height:5%">
    <label for="password" class="">Mot de passe</label>
    </div>
    <input type="submit"class="btn btn-primary">
    </form>
    <div class="row">
    <div class="col-sm-8">
    </div>
    <div class="col-sm-4">
    <p class="mt-3"><b>Deja inscrit  ? </b><a href="admin/login.php" class="btn btn-primary text-decoration-none ms-3">Connectez-vous ici </a></p>
    </div>
    </div>
   
 </div>

    <script src="vendor/js/bootstrap.bundle.min.css"></script>
    <script src="vendor/fontawesome/js/all.min.css"></script>
</body>
</html>