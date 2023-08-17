<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<?php
error_reporting(0);
session_start();
//   	# code...
  	$email=$_POST['email'];
  	$password=$_POST['password'];
    // $_SESSION['email']=$email;
if (!empty($email) &&!empty($password))  {
		$host="localhost";
		$dbusername="root";
		$dbpassword="";
		$dbname="crops";
		
		  $conn= mysqli_connect($host,$dbusername,$dbpassword,$dbname);
		  if (mysqli_connect_error())
		  {
		  	echo "failed to connect";
		  }
		  else
		  {
		  	$sql="SELECT * FROM `user` WHERE email='$email'";
   $result=mysqli_query($conn,$sql) or die("failed to connect");
   $row=mysqli_fetch_array($result);
   
   echo $password;
   echo $row["password"];
   	 if ($password==$row["password"]) {
   	
     
    //  echo $password;
    //  echo $row["password"]
    
     header('Location:main.html');
   	$username=$row["fname"];
   }else{
      $error=" *invalid username or password";
      header('Location:login.html');
		  }
		}
	//}
	//else{
           //$sql="SELECT * FROM `register` WHERE email='$email'";
		  //$result=mysqli_query($conn,$sql) or die("failed to connect");
		  //$row=mysqli_fetch_array($result);
		  //if($password==$row["password"]){
                //header('Location:managerhome.php');

		  //}else{
               //header('Location:login1.php');
		  //}
	//	}	  
   }



?>
</body>
</html>
