<?php

 $con = new mysqli("localhost", "root", "12345678", "ycchen");
 // Check connection
 if (mysqli_connect_errno())
 {
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
 }
 //an INSERT query


 $sql="INSERT INTO ycchen (id, comment)
 VALUES
 ('$_POST[pid]', '$_POST[did]')";



  if (!mysqli_query($con,$sql))
 {
 die('Error1: ' . mysqli_error($con));
 }

  mysqli_close($con);
  
  header("Location: ./index.html");
  die();




?>