<?php 
	require 'function.php';
	if( isset($_POST["login"])) {
		$username = $_POST["username"];
		$password = $_POST["password"];

		$result = mysqli_query($koneksi, "SELECT * FROM akun WHERE username = '$username'");

		if( mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
			if($password == $row["password"]) {

				$_SESSION["login"] = true;
				$_SESSION["username"] = $row["username"];
				$_SESSION["role"] = $row["role"];
				header("Location: index.php");
				exit;
			}
		}

		$error = true;
	}
	if( isset($_SESSION["login"])) {
	    header("Location: index.php");
	    exit;
	}

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta http-equiv="X-UA-Compatible" content="ie=edge"/>
	<link rel="stylesheet" type="text/css" href="style-login.css">
</head>
<body>
    <div class="login">
    	<h1 style="text-align: center; margin-top: 10px;">LOGIN</h1>
		<?php if(isset($error)) : ?>
			<p style="color: red;">Username atau Password salah!</p>
		<?php endif; ?>
        <form action="" method="post">
            <label for="username" style="font-size: 12pt;"> Username
                <input type="text" name="username" id="username" class="forminput" placeholder="Masukkan username">
            </label>
            <label for="username" style="font-size: 12pt;"> Password
                <input type="password" name="password" id="password" class="forminput" placeholder="Masukkan password">
            </label>

            <input type="submit" name="login" class="loginbutton" value="LOGIN">
            <br><br>
        </form>
    </div>
</body>
</html>