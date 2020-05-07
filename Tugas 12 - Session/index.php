<?php 
	require 'function.php';

	if( !isset($_SESSION["login"])) {
	    header("Location: login.php");
	    exit;
	}

	$nama = $_SESSION["username"];
	$type = $_SESSION["role"];

?>

<!DOCTYPE html>
<html>
<head>
	<title>Perpustakaan Buku Universitas Udayana</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="container">
	<div class="panel-list">
		<div class="logo">
			<img src="gambar/logo.png">
		</div>
		<div class="kategori">
			<h4>Kategori Buku Populer</h4>
		</div>
		<div class="kategori2">
			<a href="#" style="text-decoration: none;"><h5>Anak-anak</h5></a>
		</div>
		<div class="kategori2">
			<a href="#" style="text-decoration: none;"><h5>Teknologi</h5></a>
		</div>
		<div class="kategori2">
			<a href="#" style="text-decoration: none;"><h5>Politik</h5></a>
		</div>
		<div class="kategori2">
			<a href="#" style="text-decoration: none;"><h5>Hukum</h5></a>
		</div>
		<div class="kategori2">
			<a href="logout.php" style="text-decoration: none;"><h5>Logout</h5></a>
		</div>
		<br>
	</div>
	<div class="main">
		<div class="judul" style="background-image: url(gambar/unud.jpg); background-size: 1040px 300px;">
			<h1>Perpustakaan Universitas Udayana</h1>
		</div>
		<div class="nav">
			<ul>
				<li>
					<a href="index.html"><h3>HOME</h3></a>
				</li>
				<li>
					<a href="tentang.html"><h3>TENTANG</h3></a>
				</li>
				<li>
					<a href="galeri.html"><h3>GALERI BUKU</h3></a>
				</li>
				<li>
					<a href="kontak.html"><h3>KONTAK</h3></a>
				</li>
			</ul>
		</div>
		<br>
		<div class="content">
			<h1>Selamat Datang <?= $nama; ?> , Anda Login Sebagai <?= $type; ?> !</h1>
			<p align="justify"> Sistem layanan yang digunakan di perpustakaan adalah sistem layanan terbuka (open access), 
			dimana pengunjung dapat langsung memanfaatkan koleksi dan meminjamnya. Sistem ini diterapkan pada koleksi buku teks, sedangkan koleksi lainya seperti majalah,referensi, skripsi, tesis, disertasi dan lapen tidak dapat dipinjamkan.
			</p>
			<h1><a href="">Galeri Buku</a></h1>
			<table class="galeri_home" width="1000px" height="250px">
				<tr>
					<td><img src="gambar/buku1.jpg" height="200px" width="180px"></td>
					<td><img src="gambar/buku2.jpg" height="200px" width="180px"></td>
					<td><img src="gambar/buku3.png" height="200px" width="180px"></td>
					<td><img src="gambar/buku4.jpg" height="200px" width="180px"></td>
				</tr>
			</table>
			<h3><a href="galeri.html">Lihat Lebih Banyak Buku</a></h3>
		</div>
	</div>
</div>
<div class="footer">
	<p align="center">© 2016 USDI -  Universitas Udayana</p>
	<p align="center">Jl. Raya Kampus UNUD, Bukit Jimbaran, Kuta Selatan, Badung-Bali-803611<br>
						Phone Number: +62 (361) 701954, 704845<br>
    					Fax: +62 (361) 701907<br>
    					Email: info@unud.ac.id
	</p>
</div>
</body>
</html>