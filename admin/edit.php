<?php
require_once("../control/connect.php");
$kd = $_GET['kd_order']; //get the no which will updated
$query = "SELECT * FROM chekout WHERE kd_order = $kd"; //get the data that will be updated
$hasil = mysqli_query($connection, $query);
$data  = mysqli_fetch_array($hasil);
?>
<style type="text/css">
#form {margin-left: 10px;}
#form label{
    width: 60px;
    float: left;
}
</style>

<div id="form">
<h3>INPUT DATA</h3>
<form action="proses_confirm.php" method="post">
    <label>Kode</label><input readonly type="text" name="kode" value="<?php echo $data['kd_order']; ?>"/><br />
    <label>Status</label>
        <select name="status">
            <option value="Belum Terkonfirmasi">Belum Terkonfirmasi</option>
            <option value="Sudah Dikirim">Sudah Dikirim</option>
            </select><br />
    <label>Resi</label><input type="text" name="resi"/><br />
    <input class="butt" type="submit" value="Edit" />
    <input class="butt" type="reset" value="Hapus" />
</form>
</div>