<?php session_start();

 $con = new mysqli("localhost", "root", "12345678", "ycchen");
 // Check connection
 if (mysqli_connect_errno())
 {
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
 }

 echo json_encode($_SESSION["date"]);
 $Sdate = json_encode($_SESSION["date"]);


 if($_SESSION["date"]!=null){
    $sql = "SELECT id, comment, posttime FROM ycchen where DATE_FORMAT(posttime,'%Y-%m-%d')= $Sdate ORDER BY posttime desc ;";
 }else{
    $sql = "SELECT id, comment, posttime FROM ycchen ORDER BY posttime desc;";
 }
 if( $sql!=null){
    $result = mysqli_query($con, $sql);

 if (mysqli_num_rows($result) > 0) {
   
     while($row = mysqli_fetch_assoc($result)) {
      //   echo $row["id"]. " said: " . $row["comment"]. " at " . $row["posttime"]. "<br>";
       //    echo  $row["id"];           
          echo json_encode($row["comment"]);
         // echo json_encode((object) $row  ); 

     }
 } else {
     echo "0 comment";
 }
}

  mysqli_close($con);
  
?>