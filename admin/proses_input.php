<?php
require_once '../control/connect.php';

$kd_buku=$_POST["kd_buku"];
//$foto=$_POST["foto"];

    $ekstensi_diperbolehkan	= array('png','jpg','jpeg');
    $foto = $_FILES['file']['name'];
    $x = explode('.', $foto);
    $ekstensi = strtolower(end($x));
    $ukuran	= $_FILES['file']['size'];
    $file_tmp = $_FILES['file']['tmp_name'];
    if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
        move_uploaded_file($file_tmp, '../img/katalog/'.$foto);
    } else {
        //header("location:/admin/?page=input");
    }

$judul_buku=$_POST["judul_buku"];
$pengarang=$_POST["pengarang"];
$kategori=$_POST["select"];
$stok=$_POST["stok"];
$detail=mysqli_real_escape_string($connection, $_POST["detailbuku"]);
$harga=$_POST["harga"];

$input=mysqli_query($connection, "INSERT INTO buku VALUES ('$kd_buku','$foto','$judul_buku','$pengarang','$kategori',$stok,'$detail',$harga)");
header("location: index.php?page=tampil");

?>