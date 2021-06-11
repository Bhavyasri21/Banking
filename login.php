<?php
$host="localhost";
$username="root";
$password="";
$db="banking";
$conn=mysqli_connect($host,$username,$password);
mysqli_select_db($conn,$db);
if(isset($_POST['username']))
{
  $uname=$_POST['username'];
  $password=$_POST['password'];

  $sql="select * from userlogin where username='".$uname."' AND password='".$password."' limit 1";
  $result=mysqli_query($conn,$sql);

  if(mysqli_num_rows($result)==1)
  {
    echo "you have successfully logged in";
    
    exit();
     
  }
  else
  {
     echo "you have entered uncorrect password";
     exit();
  }
}


?>



<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<title> CSS Login Screen Tutorial </title>
</head>
<body>

     
    <div class="login-page">
      <div class="form">
        <div class="login">
          <div class="login-header">
            <h3><img src="user.jfif" height="150" width="150"/></h3>
            <p>Please enter your credentials to login.</p>
          </div>
        </div>
        <form class="login-form" method="POST" action="login.php">
          <input type="text" name="username" placeholder="username" required="required"/>
          <input type="password" name="password" placeholder="password" required="required"/>
          
          <button name="create">LOGIN</button>
         
        </form>
      </div>
    </div>
</body>
</html>