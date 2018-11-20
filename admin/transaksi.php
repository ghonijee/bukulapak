<style type="text/css">
table{
    margin-top: 10px;
    margin-bottom: 10px;
}
</style>
<?php 
$data="";
$no=1;
if(isset($_POST["cari"])){
    $cari=$_POST["tekscari"];
    $filter=$_POST["filter"];
        if ($filter=="Tanggal"){
        $data=mysql_query("select * from chekout where tanggal like '%$cari'");
        }elseif($filter=="ID Customer"){
        $data=mysql_query("select * from chekout where id like '%$cari'");    
        }elseif($filter=="Status"){
        $data=mysql_query("select * from chekout where status like '%$cari'");    
        }    
}else{
    $data=mysql_query("select * from chekout");
}
?>
<html>
<form action="" method="post"> 
Masukkan <select name="filter">
<option>Tanggal</option>
<option>ID Customer</option>
<option>Status</option>
</select><input type="text" name="tekscari" size="50" />
<input type="submit" name="cari" value="Cari" />
<input type="submit" name="semua" value="Tampilkan Semua" />
</form>
<table border=1>
    <tr><th>No<th>Kode Order<th>Tanggal<th>ID Customer<th>Total<th>Status<th>No Resi</th></tr>
    <?php
    while($data2=mysql_fetch_array($data)){
        echo"<tr>
        <td>$no
        <td>$data2[kd_order]
        <td>$data2[tanggal]
        <td>$data2[id]
        <td>$data2[total]
        <td>$data2[status]
        <td>$data2[noresi]
         </tr>";
    $no++;
    }
    ?>
</table>
</html>