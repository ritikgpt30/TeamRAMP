<?php

$psw=$_POST['psw'];
$name=$_POST['name'];
$mono=$_POST['mono'];
$email=$_POST["email"];
$age=$_POST['age'];
$gender=$_POST["gender"];


$con=mysqli_connect("localhost","root","","testdb2");
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }


$str="INSERT INTO `users` (`User_Name`, `Password`, `Email_Adress`, `Phone_Number`, `Age`, `Gender`) 
VALUES ('$name','$psw','$email','$mono','$age','$gender')";


if(mysqli_query($con,$str)){
	echo "Sign Up Succesfull";
}
else{

	echo "Error!Could not able to execute $str. " . mysqli_error($con);
}

mysqli_close($con);
?>