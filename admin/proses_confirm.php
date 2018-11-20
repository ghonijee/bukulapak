<?php
require_once("../control/connect.php");

$kd_order=$_POST['kode'];
$status=$_POST['status'];
$resi=$_POST['resi'];

var_dump($status);
mysqli_query($connection, "UPDATE chekout SET status = '$status' , noresi = '$resi' WHERE kd_order = $kd_order" );
 //see the result
header("location:index.php?page=verifikasi");
?>