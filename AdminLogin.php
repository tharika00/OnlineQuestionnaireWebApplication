<?php

include 'DBConnection.php';

$conn = OpenCon();

if(isset($_POST['Login'])) {

{
    $username = $_POST['username'];
    $password = $_POST['password'];

    $query = "select * from users where username ='$username' AND password ='$password'";

    $query_run = mysqli_query($conn, $query);

    if ($query_run)
    {
        $_SESSION['username'] = $username;
        $_SESSION['password'] = $password;
        header('Location: AdminDashboard.php');
    }

    else {
        $_SESSION['status'] = "Username or Password incorrect";
        header('Location: AdminLogin.php');
    
    }

}
}

    CloseCon($conn);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Admin Login</title>

    <style> 

body {
    background-color: #000000;
    background-image: linear-gradient(315deg, #000000 0%, #414141 74%);
}

h1 {
    color: rgb(232, 238, 145); 
    float: right;
    
}

.logincontainer {
    margin-left: 23%;
    margin-top: 6%;
    padding-left: 10%;
    padding-bottom: 10%;
    padding-right: 10%;
    padding-top: 4%;
    background-color: #2d3436;
    background-image: linear-gradient(315deg, #2d3436 0%, #000000 74%);
    color: #fff;
    width: 30%;
    height: 50%;
}

.loginlabel {  
    color: white;
    font-family: sans-serif;
    font-size: 20px;   
    margin-top: 8%;
}

.textboxes {
    float: right;
    margin-left: 15%;
    color:white;
    background-color: transparent;
    border: 0;
    outline: 0;
    border-bottom: 2px solid #828282;
    font-size: 20px;
    font-family: Arial, Helvetica, sans-serif;
}

.loginbutton {
    cursor: pointer;
    float: right;
    margin-top: 6%;
    border: 1px solid rgb(232, 238, 145);
    border-radius: 10px;
    color: white;
    padding: 7px 30px;
    text-align: center;
    display: inline-block;
    font-size: 17px;
    background-color: transparent;
    
}

hr.solid {
  border-top: 3px solid #bbb;
}

</style>
</head>

<body> 

    <div class="logincontainer">

    <h1> Admin Login </h1> <br> <br> <br> &nbsp; 

    <hr class="solid">
    
    <form action="#" method="POST">
    
        <div style= "display:flex; flex-direction: row; justify-content: center;"> 
            <label class="loginlabel"> Username </label> &nbsp; 
            <input type="text" class="textboxes" name="username" required>
        </div>

        <div style= "display:flex; flex-direction: row; justify-content: center;"> 
            <label class="loginlabel"> Password </label>  &nbsp; &nbsp; 
            <input type="password" class="textboxes" name="password" required>
        </div>

        <button type="submit" class="loginbutton" name="Login"> Login </button>

    </form>
 
    </div>
</body>
</html>

