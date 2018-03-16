<?php session_start(); 

  $_SESSION["date"]=$_POST[app_d];
 // echo $_SESSION["date"];
  header("Location: ./index.html");
  die();
?>

