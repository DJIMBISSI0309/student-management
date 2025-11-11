<?php
session_start();
require 'connect.php';
  $id= $_GET['id'];
  $sql="DELETE FROM specialty WHERE idspe=$id";
  if($conn->query($sql)===TRUE){
      $_SESSION['delete_message']='<div class="message alert-danger">Data deleted successfully</div>';
  }else{
    $_SESSION['delete_message']="Error deleting data".$conn->error;
  }
  header("Location: index.php");
  exit();

?>