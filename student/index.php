<?php
session_start();

require 'connect.php';
$imageError="";
if(!isset($_SESSION['user_id'])){
    header("Location: ../admin/login.php");
    exit;
  
  
}
 
?>
    <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>jquery-3</title>
        <link rel="stylesheet" href="vendor/css/bootstrap.min.css" />
        <link rel="stylesheet" href="vendor/fontawesome/css/all.css" />
        <script src="vendor/js/bootstrap.bundle.min.js"></script>

        <script src="jquery-ui.js"></script>
        <script src="jquery-3.7.1.min.js"></script>
        <link href="datatables.min.css" rel="stylesheet">
        
        <script src="datatables.min.js"></script>
        <script src="jquery-ui-1.13.3.custom/external/jquery/jquery.js"></script>
           <script src="jquery-ui-1.13.3.custom/jquery-ui.js"></script>
           <script src="jquery-ui-1.13.3.custom/jquery-ui.min.js"></script>
 
        
    </head>
    <style>
    .message{
     padding:2px;
     margin-bottom:10px;
     border-radius: 5px;
    }
    .sel{
        width:95%;
        padding:5px;
        margin-bottom: 20px;
        border-radius:5px;
        border: 1px solid #ccc;

    }
    
   
    </style>
<body>

    <div class="container-fluid">
        <div class="row col-sm-14  bg-secondary bg-opacity-50" style=" margin-top: 30px;height: 100%; 
        
        border-left: 1px solid rgba(255, 255, 255, .3);
        border-top: 1px solid rgba(255, 255, 255, .3);"  >
       <div class="container col-sm-12" style="height: 50px; width: 150%; background-color:rgba(25, 72, 228, 0.582); display: flex;">
        <div class="col-md-2 text-white pt-2" id="p"><h5><i class=" fa fa-dashboard"></i> Admin<h5></div> 
            <div class="col-md-7 text-white pt-2"><h5><a href="#" class="text-decoration-none text-white "><i class="fa fa-list " id="togle"></i></a></h5></div>
            <div class="col-md-2 pt-2"></div>
            <div class="col-md-1 text-white pt-2"><h5></i><i class="fa fa-bell offset-3 "></i></h5></div>
            </div>
              
<div class="col-sm-2 sidebar" style="height: auto; background-color: rgb(9, 5, 26);" id="pa">
               
    
    <div class=" text-white ms-1 mt-4"  style="background-color:rgba(110, 110, 106, 0.233)">
        <div class="sideheader text-white mt-3 ms-1 me-md-1" style="background-color:rgba(110, 110, 117, 0.212);"><span class="fa fa-dashboard ms-2"></span><span class="hide ms-3"><a href="dashboard.html"class="text-decoration-none text-white">Accueil</a></span>

        </div>
    </div>
  
    <div class="">
          

        <div class="sideheader text-white mt-2 ms-1 me-md-1 mt-1" style= "background-color:rgba(110, 110, 117, 0.212);"><span class="fa fa-user ms-2"></span><span class="hide ms-3"><a href="index.php"class="text-decoration-none text-white">student</a></span>
           <span class="fa fa-angle-right ms-5"></span>
        </div>
        <div class="sidecontent">
     
     </div>
     <div class="sideheader text-white ms-1 me-md-1 mt-1" style="background-color:rgba(110, 110, 117, 0.212);"><span class="fa fa-briefcase ms-2"></span><span class="hide ms-3"><a href="../specialty/index.php"class="text-decoration-none text-white">specialty</a>
        <span class="fa fa-angle-right ms-4"></span>
     </div>
     <div class="sidecontent">
       
     </div>
     <div class="sideheader text-white me-md-1 ms-1 mt-1" style="background-color:rgba(110, 110, 117, 0.212);"><span class="fa fa-hourglass-half ms-2"></span><span class="hide ms-3"><a href="../level1/index.php"class="text-decoration-none text-white">level1</a></span>
      <span class="fa fa-angle-right ms-5"></span>
    </div>
     <div class="sidecontent">
         <ul type="none">
          
          
         </ul>
     </div>

     <div class="sideheader text-white ms-1 me-md-1 mt-1"style="background-color:rgba(110, 110, 117, 0.212);"><span class="fa fa-bitcoin me-md-3 ms-2"></span><span class="hide ms-0"><a href="../department/index.php"class="text-decoration-none text-white">department</a></span>
      <span class="fa fa-angle-right ms-1"></span>
    </div>
     <div class="sidecontent">
         <ul type="none">
          
         </ul>
     </div>

     
     <div class="sideheader text-white ms-1 me-md-1 mt-1"style="background-color:rgba(110, 110, 117, 0.212);"><span class="fa fa-eyedropper ms-2"></span><span class="hide ms-3"><a href="../enrollment/index.php"class="text-decoration-none text-white">enrollment</a></span>
      <span class="fa fa-angle-right ms-4"></span>
    </div>
     <div class="sidecontent">
       
     </div>
     
     
     
     
    
    </div>
</div>
<div id="contenu" class="col-sm-10  bg-opacity-50"style="height: auto;">
    <div class="container bg-white p-3" style="margin-top: 10px; height: auto;">
        <div class="row">
  
            <div class="text-end text-black mt-3 mb-2"> <i class="fa fa-angle-down  tol"  style="color: rgb(126, 123, 123);"></i> <i class="fa fa-x" id="hides" style="color: rgb(126, 123, 123);"></i></div>
            <div class="text-center" style="margin-top: -10px;"><h2><small class="text-primary">student</small></h2>

            </div><br><hr>
  
          </div>
          <?php
        
        if(isset($_SESSION['update_message'])){
            echo '<div class="message alert-success">'.$_SESSION['update_message'].'</div>';
            unset($_SESSION['update_message']);
             if($_SESSION['image']){
            echo '<div class="message text-danger">'.$_SESSION['image'].'</div>';
            unset($_SESSION['image']);
        }
    }
          if(isset($_SESSION['message'])){
         
            echo '<div class="message alert-success">'.$_SESSION['message'].'</div>';
            unset($_SESSION['message']);

            if($_SESSION['image']){
                echo '<div class="message text-danger">'.$_SESSION['image'].'</div>';
                unset($_SESSION['image']);
          }
        }
   
      
      if(isset($_SESSION['delete_message'])){
          echo '<div class="message alert-danger">'.$_SESSION['delete_message'].'</div>';
          unset($_SESSION['delete_message']);
      }

         ?>
         <div class="row">
       
         <form method="POST" action="insert.php" enctype="multipart/form-data">
          <div class="col-sm-12 ">
                
                <div class="form-group row">
            
                    <label form="depart1" class="col-sm-4 col-form-label " style=""><b>firstname</b></label>
                    <div class="col-sm-8">
                    <input type="text"   name="firstname" id="depart1"  placeholder="nom"class=" form-control mt-2"style="width:95%;height: 70%;">
                   </div>
                   <label form="depart2" class="col-sm-4 col-form-label " style=""><b>lastname</b></label>
                    <div class="col-sm-8">
                    <input type="text"   name="lastname" id="depart2 " placeholder="prenom"class=" form-control mt-2"style="width:95%;height: 70%;">
                   </div>
                   <label form="depart2" class="col-sm-4 col-form-label " style=""><b>birth</b></label>
                    <div class="col-sm-8">
                    <input type="date"   name="birth" id="depart2 " placeholder="date de naissance"class=" form-control mt-2"style="width:95%;height: 70%;">
                   </div>
                   <label form="depart2" class="col-sm-4 col-form-label mt-2" style=""><b>Selectionner une image</b></label>
                   <div class="col-sm-8">
                    <input type="file"   name="image" id="image"  placeholder=""class=" form-control mt-2 "style="width:95%;">

                   </div>
                       
                    <label form="depart1" class="col-sm-4 col-form-label " style=""><b>namespe</b></label>
                    <div class="col-sm-8 mt-3">
                 
                    <select id="" name="namespe" class="sel" >
                    <?php
                    require 'connect.php';
                    $sql='SELECT * FROM specialty';
                    $specialty =$conn->query($sql);
                    foreach($specialty as $key) : ?>
                    <option value="<?= $key['idspe'];?>">
                    <?= $key['namespe'];?></option>
                    <?php endforeach ?>
                    </select>
                     </div>
                   <label form="depart2" class="col-sm-4 col-form-label " style=""><b>desclev</b></label>
                    <div class="col-sm-8">
                     <select id="" name="namelev" class="sel">
                     <?php
                     require 'connect.php';
                     $sql='SELECT * FROM level1';
                     $level=$conn->query($sql);
                     foreach($level as $key) : ?>
                     <option value="<?= $key['idlev']; ?>">
                       <?= $key['desclev'];?></option>
                       <?php endforeach?>
                       </select>
                   </div>
                   
                   
                    </div>
                    <div class="form-actions">
                  <button type="submit" class="btn btn-success mt-5"  name="valider">Submit</button>
                  <button type="reset" class="btn btn-danger mt-5 ml-5" ><a href="../admin/dashboard.php" class="text-decoration-none text-white">Reset</a></button>
                  </div>
                  </div>
           
          </form>
          <?php
        require 'display.php';
         ?>
       </div>
</div>
</div>
</div>
</div>
  
    

  
   <script>
    


$(document).ready(function(){
    $("#hide, #hides").click(function(){
        $("#contenu").toggle(2000);
    });
});


    $(".accordion").accordion({
        collapsible: true

    });
    
    $(".tol").click(function () {
    
    $(".form-group").toggle(1000);
    $(".form-actions").toggle(1000);
    $(".boot").toggle(1000);
    });

    /*$("#togle").click(function () {
      $(".sidehearder").toggleClass("sidebarcollapse", 800, "easeOutSine");
      $(".image").toggleClass("imagecollapse", 500, "easeOutSine");
      $(".hide").toggleClass("hidecontent", 500, "easeOutSine");
      $("ul").toggleClass("uli", 300, "easeOutSine");
    });*/
    $("#togle").click(function () {
      $(".sidebar").toggle(800);
      $(".image").toggle(100);
      $(".hide").toggle(500);
      $("ul").toggle( 300);
    });
    
   </script>


</body>
</html>