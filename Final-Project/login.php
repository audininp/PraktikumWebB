<?php 
include_once('db-con.php');
$database = new database();
session_start();
if(isset($_SESSION['is_login']))
{
    header('location:index.php');
}

if(isset($_POST['login']))
{
    $email = $_POST['email'];
    $password = $_POST['password'];
    
    if($database->login($email,$password))
    {
      header('location:index.php');
    }
}
?>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style>
    body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #eee;
    }

    .form-signin {
        max-width: 330px;
        padding: 15px;
        margin: 0 auto;
    }
    .form-signin .form-signin-heading{
        margin-bottom: 10px;
    }
    .form-signin .form-control {
        position: relative;
        height: auto;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        padding: 10px;
        font-size: 16px;
    }
    .form-signin .form-control:focus {
        z-index: 2;
    }
    .btn{
        width: 300px;
        height: 50px;
        background-color: #1b6ca8;
        font-style: monospace;
        font-size: 15px;
        border-style: none;
    }
    .btn a{
        color: white;
    }
    .btn a:hover{
        color: black;
        text-decoration: none;
    }
    .btn:hover{
        background-color: white;
        color: black;
        font-style: monospace;
        font-size: 15px;
    }
</style>
<title>Perpustakaan Unud</title>
<body>
    <div class="container">
        <div class="form-signin">
        <h2 class="form-signin-heading">Login Akun</h2>
        <form method="post" action="" name="login">
            <div class="form-group">
                <label>Email</label>
                <input type="email" class="form-control" name="email" placeholder="Email" required autofocus>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" class="form-control" name="password" placeholder="Password" required>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit" name="login">Login</button>
        </form>
        <br>
            <button type="button" class="btn btn-success"><a href="daftar.php">Sign Up</a></button>
            <p><a href="index.php">Home</a></p>
        </div>
    </div>
</body>
</html>
