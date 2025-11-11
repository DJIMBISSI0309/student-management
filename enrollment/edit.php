    
     <?php
     session_start();
    require 'connect.php';
    if($_SERVER["REQUEST_METHOD"]=="POST"){
      
      $id= $_POST['idenrol'];
     // $idl=$_POST['idlev'];
     // $ids=$_POST['idstud'];
      $idspe = $_POST['namespe'] ;
      $idlev = $_POST['namelev'] ;
      $idstud = $_POST['namestud'] ;
      $academic=$_POST['academic'];
      $sql="UPDATE enrollment SET academic_year='$academic', idspe='$idspe',idlev='$idlev',idstud='$idstud' WHERE idenrol=$id";
      if($conn->query($sql)===TRUE){
    
          $_SESSION['update_message']='<div class="message alert-success">data updated successfully.</div>';
          header("Location: index.php");
          exit();
      }else{
        $_SESSION['update_message']="Error updating data .".$conn->error; 
      }
    }else{
    
     // $idc= $id."-".$ids."-".$idl;
    
     $id=$_GET['id'];
     $sql="SELECT * FROM enrollment,student,level1,specialty WHERE specialty.idspe= enrollment.idspe
     AND student.idstud=enrollment.idstud AND level1.idlev=enrollment.idlev AND idenrol=$id";  
     $result= $conn->query($sql);
     $row=$result->fetch_assoc();
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
              
<div class="col-sm-2 sidebar" style="height: 900px; background-color: rgb(9, 5, 26);" id="pa">
               
    
    <div class=" text-white ms-1 mt-4"  style="background-color:rgba(110, 110, 106, 0.233)">
        <div class="sideheader text-white mt-3 ms-1 me-md-1" style="background-color:rgba(110, 110, 117, 0.212);"><span class="fa fa-dashboard ms-2"></span><span class="hide ms-3"><a href="dashboard.html"class="text-decoration-none text-white">Accueil</a></span>

        </div>
    </div>
    <div class="accordion">
          

        <div class="sideheader text-white mt-2 ms-1 me-md-1 mt-1" style="background-color:rgba(110, 110, 117, 0.212);"><span class="fa fa-user ms-2"></span><span class="hide ms-3">Student</span>
           <span class="fa fa-angle-right ms-5"></span>
        </div>
        <div class="sidecontent">
     
     </div>
     <div class="sideheader text-white ms-1 me-md-1 mt-1" style="background-color:rgba(110, 110, 117, 0.212);"><span class="fa fa-briefcase ms-2"></span><span class="hide ms-3">specialty
        <span class="fa fa-angle-right ms-4"></span>
     </div>
     <div class="sidecontent">
       
     </div>
     <div class="sideheader text-white me-md-1 ms-1 mt-1" style="background-color:rgba(110, 110, 117, 0.212);"><span class="fa fa-hourglass-half ms-2"></span><span class="hide ms-3">level1</span>
      <span class="fa fa-angle-right ms-5"></span>
    </div>
     <div class="sidecontent">
         <ul type="none">
          
          
         </ul>
     </div>

     <div class="sideheader text-white ms-1 me-md-1 mt-1"style="background-color:rgba(110, 110, 117, 0.212);"><span class="fa fa-bitcoin me-md-3 ms-2"></span><span class="hide ms-0">department</span>
      <span class="fa fa-angle-right ms-1"></span>
    </div>
     <div class="sidecontent">
         <ul type="none">
          
         </ul>
     </div>

     
     <div class="sideheader text-white ms-1 me-md-1 mt-1"style="background-color:rgba(110, 110, 117, 0.212);"><span class="fa fa-eyedropper ms-2"></span><span class="hide ms-3">enrollment</span>
      <span class="fa fa-angle-right ms-4"></span>
    </div>
     <div class="sidecontent">
       
     </div>
     
     
     
     
    
    </div>
</div>
<div id="contenu" class="col-sm-10  bg-opacity-50"style="height: 100%;">
    <div class="container bg-white p-3" style="margin-top: 10px; height: auto;">
        <div class="row">
            <div class="text-end text-black mt-3 mb-2"> <i class="fa fa-angle-down  tol"  style="color: rgb(126, 123, 123);"></i> <i class="fa fa-x" id="hides" style="color: rgb(126, 123, 123);"></i></div>
            <div class="text-center" style="margin-top: -10px;"><h2><small class="text-primary">enrollment</small></h2>

            </div><br><hr>
          </div>
         <div class="row">
        
         <form method="POST" action="">
          <div class="col-sm-12 ">
             
                <div class="form-group row">
               
                   
                <div class="col-sm-12">
                    <input type="hidden"   name="idenrol" id="depart1"  placeholder=""class=" form-control mt-2"style="width:95%;height: 70%;" value="<?php echo htmlspecialchars($row['idenrol']); ?>">
                   </div>
            
                   <label form="depart2" class="col-sm-4 col-form-label " style=""><b>namespe</b></label>
                       
                           <div class="col-sm-8">
                           
                          
                    <select id="" name="namespe" class="sel">
                    <?php
                    require 'connect.php';
                    $id=htmlspecialchars($row['idspe']);
                    $sql="SELECT * FROM specialty WHERE idspe=$id UNION SELECT * FROM specialty";
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
                     $id=htmlspecialchars($row['idlev']);
                     $sql="SELECT * FROM level1 WHERE idlev=$id UNION SELECT * FROM level1";
                     $level=$conn->query($sql);
                     foreach($level as $key) : ?>
                     <option value="<?= $key['idlev']; ?>">
                       <?= $key['desclev'];?></option>
                       <?php endforeach?>
                       </select>
                      </div>
                   <label form="depart2" class="col-sm-4 col-form-label " style=""><b>firstname</b></label>
                    <div class="col-sm-8">
                    
                    <select name="namestud" class="sel" >
                  
                     <?php
                     require 'connect.php';
                     $id=htmlspecialchars($row['idstud']);
                     $sql="SELECT * FROM student WHERE idstud=$id UNION SELECT * FROM student";
                   // $sql1="SELECT * FROM student";
                     $student=$conn->query($sql);
                     foreach($student as $key ):  ?>
                        
                     <option value="<?= $key['idstud'];?> ">
                       <?= $key['firstname']; ?>
                   
                        </option>
                     
                        <?php endforeach ?>

                        </select>
                             
                      </div>
                      <label form="depart1" class="col-sm-4 col-form-label " style=""><b>academic year</b></label>
                    <div class="col-sm-8">
                    <input type="text"   name="academic" id="depart1"  placeholder="annee academique"class=" form-control mt-2"style="width:95%;height: 70%;" value="<?php echo htmlspecialchars($row['academic_year']); ?>">
                   </div>

                    </div>
            
                  <button type="submit" class="btn btn-success mt-5" name="valider">Update</button>
                  <button type="reset" class="btn btn-danger mt-5 ml-5">Reset</button>
                  </div>
          </form>
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