<?php
$username=$_POST["uname"];
$password=$_POST["psw"];
$con=mysqli_connect("localhost","root","","testdb2");
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
$result=mysqli_query($con,"SELECT Email_Adress,Password FROM `users` where Email_Adress = '$username' and Password = '$password'") ;
$row=mysqli_fetch_array($result);
if($row['Email_Adress']=="$username" && $row['Password'] == "$password"){
	echo "LogIn Successfull!!!  Welcome  ".$row['Email_Adress'];
}
else{
	echo "Failed to LogIn!";
}
mysqli_close($con);
?>