<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php include "style.php"; ?>
    <link rel="stylesheet" href="css/index.css">
    <title>Perpustakaan Unud</title>
</head>

<body>
    <div id="main-content">
        <?php include'header-sidebar.php';?>
        <div id="isi">
            <h1>Selamat Datang!</h1>
            <p style="text-align: justify;">Sistem layanan yang digunakan di perpustakaan adalah sistem layanan terbuka (open access), dimana pengunjung dapat langsung memanfaatkan koleksi dan meminjamnya. Sistem ini diterapkan pada koleksi buku teks, sedangkan koleksi lainya seperti majalah,referensi, skripsi, tesis, disertasi dan lapen tidak dapat dipinjamkan.</p>
            <h1>Galeri</h1>
            <p style="text-align: right; margin-top: -30px;"><a href="galeri.php"
                    style="text-decoration: none; color: #9a1f40">Lihat lainnya...</a></p>
            <div class="galeri">
                <img src="gambar/buku1.jpg" alt="">
                <p><a href="galeri.php"><button class="button">Lihat Buku</button></a></p>
            </div>
            <div class="galeri">
                <img src="gambar/buku2.png" alt="">
                <p><a href="galeri.php"><button class="button">Lihat Buku</button></a></p>
            </div>

            <div class="galeri">
                <img src="gambar/buku3.jpg" alt="">
                <p><a href="galeri.php"><button class="button">Lihat Buku</button></a></p>
            </div>
        </div>
        <div id="clear"></div>
        <div id="footer">
            <p align="center">© 2020 USDI -  Universitas Udayana</p>
        </div>

    </div>
</body>

</html>