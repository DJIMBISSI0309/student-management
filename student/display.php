<?php
require 'connect.php';
//ecriture de la requete
$sql="SELECT * FROM student";        
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
<th class="text-center">idstud</th>
<th class="text-center">Photos</th>
<th class="text-center">Firstname</th>
<th class="text-center">Lastname</th>
<th class="text-center">Birth</th>
<th class="text-center">Actions</th>
</tr>
</thead>
<tbody>
<!--chargement des donnes dans les lignes de la table-->
<?php
while($row=$result->fetch_assoc()):?>


  <tr>
  <td class="text-center"><?php echo htmlspecialchars($row['idstud']); ?></td>
  <td class="text-center"><img src="<?php echo '../images/'.$row['image'];?>" alt="..." style="max-width:50px;"></td>
  <td class="text-center"><?php echo htmlspecialchars($row['firstname']); ?></td>

  <td class="text-center"><?php echo htmlspecialchars($row['lastname']); ?></td>
  <td class="text-center"><?php echo htmlspecialchars($row['birth']); ?></td>
  <td>
  <!--creation des boutons de modifications-->
  <a href="edit.php?id=<?php echo $row['idstud']; ?>"><span class="fa fa-edit text-primary"></span></a>
  <a href="delete.php?id=<?php echo $row['idstud']; ?>"onclick="return confirm('Are you sure?')">
  <span class="fa fa-trash text-danger ms-4"></span></a>
  <a href="view.php?id=<?php echo $row['idstud']; ?>"><span class="fa fa-external-link  text-primary ms-4"></span></a>
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




