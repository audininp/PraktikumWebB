<?php 
include_once('db-con.php');
$database = new database();
session_start();
if(isset($_SESSION['is_login']))
{
    header('location:index.php');
}

if(isset($_POST['daftar']))
{
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'],PASSWORD_DEFAULT);
    
    if($database->register($name, $email, $password))
    {
        header('location:index.php');
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Perpustakaan Unud</title>

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
</head>
<body>
    <div class="container">
        <div class="form-signin">
            <h2 class="form-signin-heading">Daftar Akun</h2>
            <form method="post" action="" name="daftar">
                <div class="form-group">
                    <label>Name</label>
                    <input id="name" type="name" class="form-control" name="name" placeholder="Name" required autofocus>
                </div>
                 <div class="form-group">
                    <label>Email</label>
                    <input id="email" type="email" class="form-control" name="email" placeholder="Email" required>
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input id="password1" type="password" class="form-control" name="password" placeholder="Password" required>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit" name="daftar">Sign Up</button>
                <p>Sudah punya akun? <a href="login.php">Login</a></p>  
                <p><a href="index.php">Home</a></p>
            </form>
        </div>
    </div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>