 <!DOCTYPE html>
<html>
<body>

<?php
error_reporting(0);
  	# code...
$error=NULL;
	  

	# code...

$fname=$_POST['Fname'];
$lname=$_POST['Lname'];
$email=$_POST['email'];
$password=$_POST['password'];
$confpass=$_POST['conf-password'];
echo"hii";	
 	# code...
 	
	
			  				  	
if(!empty($email)){
    echo"hii";
	if (!empty($password)) {
		$host="localhost";
		$dbusername="root";
		$dbpassword="";
		$dbname="crops";

		 $conn=mysqli_connect($host,$dbusername,$dbpassword,$dbname);
		  if (mysqli_connect_error())
		  {
		  	echo "failed to connect";
		  }
		  else
		  {
		//  $password= password_hash($password, PASSWORD_BCRYPT);
  $sql= "INSERT INTO `user` (`fname`, `lname`, `email`,  `password`) VALUES('$fname','$lname','$email','$password')";
     if ($conn->query($sql)) {
     	# code...

    header('Location:login.html');
         }
        else{
     	echo"Error:".$sql ."<br>" .$conn->Error;
             }
       $conn->close();
		  }
	
}
	else{
	echo"password needed";
	die();
      }

}


 
		
?> 

</body>
</html>
