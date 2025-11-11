<?php
require 'connect.php';
//ecriture de la requete
$sql="SELECT * FROM enrollment,student,level1,specialty,department WHERE specialty.idspe= enrollment.idspe
    AND student.idstud=enrollment.idstud AND level1.idlev=enrollment.idlev AND
    specialty.iddepart=department.iddepart";
      
$result=$conn->query($sql);
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
        <script src="jquery-ui-1.13.3.custom/external/jquery/jquery.js"></script>
           <script src="jquery-ui-1.13.3.custom/jquery-ui.js"></script>
           <script src="jquery-ui-1.13.3.custom/jquery-ui.min.js"></script>
           <script src="datatables.js"></script>
           <link rel="stylesheet" href="datatables.css">    
    </head>
    <body>
    <!--creation de ma table d'affichage-->
<table class="table table-striped table-bordered table-responsive"  id="exam">
<thead>
<tr>
<th class="text-center">idenrol</th>

<th class="text-center">image</th>
<th class="text-center">firstname</th>
<th class="text-center">Lastname</th>
<th class="text-center">depart</th>
<th class="text-center">namespe</th>
<th class="text-center">desclev</th>
<th class="text-center">academic_year</th>
<th class="text-center">Actions</th>
</tr>
</thead>
<tbody>
<!--chargement des donnes dans les lignes de la table-->
<?php
while($row=$result->fetch_assoc()):?>

  <tr>
  <td class="text-center"><?php echo htmlspecialchars($row['idenrol']); ?></td>
 
  <td class="text-center"><img src="<?php echo '../images/'.$row['image'];?>" alt="..." style="max-width:50px;"></td>
  <td class="text-center"><?php echo htmlspecialchars($row['firstname']); ?></td>
  <td class="text-center"><?php echo htmlspecialchars($row['lastname']); ?></td>
  <td class="text-center"><?php echo htmlspecialchars($row['namedepart']); ?></td>
  <td class="text-center"><?php echo htmlspecialchars($row['namespe']); ?></td>
  <td class="text-center"><?php echo htmlspecialchars($row['desclev']); ?></td>
  <td class="text-center"><?php echo  htmlspecialchars( "2024-".$row['academic_year']); ?></td>
  <td>
  <!--creation des boutons de modifications-->
  <a href="edit.php?id=<?php echo $row['idenrol'];?>"><span class="fa fa-edit text-primary"></span></a>
  <a href="delete.php?id=<?php echo $row['idenrol'];?>"onclick="return confirm('Are you sure?')">
  <span class="fa fa-trash text-danger "></span></a>
  <a href="view.php?id=<?php echo $row['idenrol']; ?>"><span class="fa fa-external-link  text-primary "></span></a>
  </td>
  </tr>
 
<?php endwhile; ?>
</tbody>
</table>
<script>
     $('#exam').DataTable();
</script>

    </body>
    </html>




