 <?php
 session_start();
 require 'connect.php';
$id=$_GET['id'];
$sql="DELETE FROM enrollment WHERE idenrol= $id";
if($conn->query($sql)===TRUE){
    $_SESSION['delete']='<div class="message alert-danger">Data deleted successfully.</div>';
}else{
  $_SESSION['delete']="Error deleting data".$conn->error;
}
header("Location: index.php");
exit();

?> 