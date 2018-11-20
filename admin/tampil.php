<style type="text/css">
table{
    margin-top: 10px;
    margin-bottom: 10px;
}
</style>
<script type="text/javascript">
function hapus(kd){
    var jawab=confirm("Anda yakin menghapus "+kd+"?");
    if(jawab==true){
        document.location="/admin/proses_hapus.php?kd_buku="+kd;
    }
}
function edit(kd){
    document.location="/admin/edit.php?kd_buku="+kd;
}
</script>
<?php 
$data="";
$no=1;
if(isset($_POST["cari"])){
    $cari=$_POST["tekscari"];
    $filter=$_POST["filter"];
        if ($filter=="Judul Buku"){
        $data=mysqli_query($connection, "select * from buku where judul_buku like '%$cari'");
        }elseif($filter=="Nama Pengarang"){
        $data=mysqli_query($connection,"select * from buku where pengarang like '%$cari'");    
        }else{
        $data=mysqli_query($connection,"select * from buku where kategori like '%$cari'");     
        }       
}else{
    $data=mysqli_query($connection,"select * from buku");
}
?>
<html>
<form action="" method="post"> 
Masukkan <select name="filter">
<option>Judul Buku</option>
<option>Nama Pengarang</option>
<option>Kategori</option>
</select><input type="text" name="tekscari" size="50" />
<input type="submit" name="cari" value="Cari" />
<input type="submit" name="semua" value="Tampilkan Semua" />
</form>
<table border=1>
    <tr><th>No<th>Kode<th>Foto<th>Judul<th>Pengarang<th>Kategori<th>Stok<th>Detail<th>Harga<th>Edit<th>Hapus</th></tr>
    <?php
    while($data2=mysqli_fetch_array($data)){
        echo"<tr>
        <td>$no
        <td>$data2[kd_buku]
        "
        ?>
        <td><img src="../img/katalog/<?php echo $data2['foto']; ?>" width="100px"></td>
        
        <?php 
        echo "
        <td>$data2[judul_buku]
        <td>$data2[pengarang]
        <td>$data2[kategori]
        <td>$data2[stok]
        <td>$data2[detail]
        <td>$data2[harga]
        ";
        ?>
        <td><button onclick="">Edit</button></td>
        <td><button onclick="hapus(<?php echo "$data2[kd_buku]"; ?>)">Hapus</button></td>
        </tr>
        <?php
    $no++;
    }
    ?>
</table>
</html>