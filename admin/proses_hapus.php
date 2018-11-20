<?php
include "koneksi.php";

$kd=$_GET[kd_buku];
mysql_query("delete from buku where kd_buku='$kd'")
    or die(mysql_error());
header("location: /admin/?page=tampil");
?>