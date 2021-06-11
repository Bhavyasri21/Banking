<!DOCTYPE html>
<html>
  
<head>
    <title>SignUp page</title>
</head>
  
<body>
    <center>
        <?php
  
        // servername => localhost
        // username => root
        // password => empty
        // database name => staff
        $conn = mysqli_connect("localhost", "root", "", "banking");
          
        // Check connection
        if($conn === false){
            die("ERROR: Could not connect. " 
                . mysqli_connect_error());
        }
          
        // Taking all 5 values from the form data(input)
        $custid = $_REQUEST['id'];
        $custname = $_REQUEST['username'];
        $password = $_REQUEST['password'];
        $email =  $_REQUEST['email'];
        $currentbalance = $_REQUEST['balance'];
        
          
        // Performing insert query execution
        // here our table name is college
        $sql = "INSERT INTO userlogin  VALUES ('$custid', 
            '$custname','$password','$email','$currentbalance')";
          
        if(mysqli_query($conn, $sql)){
           echo "<script> alert('Welcome to BUDDY Bank ');
                                     window.location='login.php';
                           </script>";
            //echo nl2br("\n$first_name\n $last_name\n "
                //. "$gender\n $address\n $email");
        } else{
            echo "ERROR: Hush! Sorry $sql. " 
                . mysqli_error($conn);
        }
          
        // Close connection
        mysqli_close($conn);
        ?>
		<?php
// PHP program to pop an alert
// message box on the screen
  
// Display the alert box 

  
?>
    </center>
</body>
  
</html>
