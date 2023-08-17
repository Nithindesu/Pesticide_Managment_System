
<?php
 session_start();


?>


<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="main.css">
  <title>Pesticide Managment System</title>
  
</head>
<body>
<?php
error_reporting(0);
session_start();
//   	# code...
  	$crop=$_POST['crop'];
  
    // $_SESSION['email']=$email;
if (!empty($crop))  {
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
		  	$sql="SELECT * FROM `pest_details` WHERE CROP='$crop'";
   $result=mysqli_query($conn,$sql) or die("failed to connect");
   $row=mysqli_fetch_array($result);
   
  //  echo $password;
  //  echo $row["password"];
  $error="";
   	 if ($row) {
   	
     
    
    
    
        $_SESSION['PEST']=$row["PESTICIDE"];
    $pest=$row["PESTICIDE"];
    $precaution=$row["PRECAUTION"];
   
    
   }else{
      $error=" crop not found";
      
		  }
		}
	
   }



?>


    <section>
        <div class="form-box">
            <div class="form-value">
                <h6>
                 
                <?php
                    echo  $crop;
                 ?>
                 
                 </h6> 
                 
                <h6>
                 <?php
                    echo  $error;
                 ?>
                 </h6>
                 <br>
                 Pesticides:
                <h6>
                    
                <?php
                
               echo  $pest;
                ?> </h3> <br>
                Precautions:
                
                <h3>
                    <?php
                
                echo  $precaution;
                 ?> 
                </h3>
  </div>
  </div>
    </section>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>
      