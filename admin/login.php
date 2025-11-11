<?php
include 'connexion.php';
session_start();
if($_SERVER['REQUEST_METHOD']=="POST"){
  
    $email=$_POST['email'];
    $password=$_POST['password'];
    $sql="SELECT * FROM administrateur WHERE Email = ?";
    $stmt=$pdo->prepare($sql);
    $stmt->execute([$email]);
    $user=$stmt->fetch();
   // $user['mot_de_passe']=password_hash($password,PASSWORD_DEFAULT);
        if($user && password_verify($password,$user['mot_de_passe'])){
            $_SESSION['user_id']= $user['idadmin'];
            $_SESSION['username']= $user['nom_utilisateur'];
            header("Location: dashboard.php");
            exit;
        }else{
            $error='Email ou mot de passe incorrect';
        }
  
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Connexion</title>
    <link href="vendor/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/fontawesome/css/all.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
<h2 class="text-center">Connexion</h2>
<?php if(isset($error)): ?>
<div class="alert alert-danger"><?= $error ?></div>
<?php endif ?>

    <form method="post">
  
    <div class="mb-3">
    <label for="email" class="form-label">Email</label>
    <input type="email" class="form-control" id="email" name="email" required>
    </div>
    <div class="mb-3">
    <label for="password" class="form-label">Mot de passe</label>
    <input type="password" class="form-control" id="password" name="password" required>
    </div>
    <input type="submit"class="btn btn-primary">
    </form>
    <div class="row">
    <div class="col-sm-8">
    </div>
    <div class="col-sm-4">
    <p class="mt-3"><b>pas encore inscrit  ? </b><a href="register.php" class="btn btn-primary text-decoration-none ms-3">Inscrivez-vous ici </a></p>
    </div>
    </div>
 
 </div>

    <script src="vendor/js/bootstrap.bundle.min.css"></script>
    <script src="vendor/fontawesome/js/all.min.css"></script>
</body>
</html>