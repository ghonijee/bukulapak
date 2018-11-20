<?php session_start();

if (!isset($_SESSION['username'])) {
    header('location:login.php');
} else {
    $username=$_SESSION['username'];
}

require_once("../control/connect.php");
$query=mysqli_query($connection, "SELECT * FROM admin WHERE username = '$username'");
$hasil=mysqli_fetch_array($query);

?>
    <html>

    <head>
        <title>HOME</title>
        <style>
            nav {
                margin: auto;
                text-align: center;
                width: 100%;
                font-family: arial;
                font-size: 20px;
            }

            nav ul {
                background: #B3D9D9;
                list-style: none;
                position: relative;
                display: inline-table;
                width: 100%;
                padding: 0px 0px 0px 0px;
            }

            nav ul li {
                float: left;
                padding: 10px;
            }

            nav ul li:hover {
                background: white;
                color: pink;
            }

            .butt {
                background-color: #EAEAEA;
                font-size: 12px;
                color: black;
            }

            a {
                color: black;
                text-decoration-line: none;
            }

            .iniinput {
                font-family: FS Joey;
                width: 500px;
                height: 50px;
                text-align: center;
                border: none;
                border-radius: 5px;
                background-color: #B3D9D9;
                font-family: arial;

            }

            .button {
                width: 243px;
                height: 40px;
                background: #004040;
                margin-left: 130px;
                font-size: larger;
                color: white;
                font-family: arial;
            }

            body {
                font-family: FS Joey;
                background-size: cover;
            }

            table {
                margin-top: 20px;
                margin-bottom: 20px;
                border-collapse: collapse;

            }

            .atas {
                background-color: #004040;
                width: 1350px;
                margin-top: 0px;
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
            }

            fieldset {
                margin: 120px 400px 175px 175px;
                background-color: #DCEDED;
                width: 400px;
                border: 10px white solid;
                border-radius: 40px;
                font-family: arial;
                opacity: 0.9;
            }

            legend {
                background: #004040;
                border: 10px white solid;
                color: white;
                width: 200px;
                text-align: center;
                margin-left: 140px;
                border-radius: 10px;
                font-family: arial;
            }
        </style>
    </head>

    <body>
        <nav>
            <ul>
                <li><a href="?page=beranda">HOME</a></li>
                <li><a href="?page=verifikasi">VERIFIKASI</a></li>
                <li><a href="?page=input">INPUT BUKU</a></li>
                <li><a href="?page=tampil">DATA BUKU</a>
                <li>
                <li><a href="?page=pesanan">TRANSAKSI</a>
                <li>
                <li><a href="?page=pesanan">LAPORAN</a>
                <li>
                <li style="float: right;">
                    <?php echo "Hay, $username";
?>
                </li>
                <li style="float: right;"><a href="logout.php"><b><img src="log.png" width="15px" /></a></li>
            </ul>
        </nav>
        <?php //include "koneksi.php";
isset($_GET["page"])? $page=$_GET["page"]:$page="";

if ($page=="input") {
    include "input.php";
} elseif ($page=="tampil") {
    require "tampil.php";
} elseif ($page=="pesanan") {
    include "transaksi.php";
} elseif ($page=="beranda") {
    include "beranda.php";
} elseif ($page=="edit") {
    include "edit.php";
} elseif ($page=="verifikasi") {
    include "verifikasi.php";
} else {
    echo "Halaman tidak ditemukan";
}

?>
    </body>

    </html>