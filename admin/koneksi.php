<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bukulapak";

$konek = mysqli_connect($servername, $username, $password, $dbname);
if (!$konek){
        die("Connection Failed:".mysqli_connect_error());
    }
?>