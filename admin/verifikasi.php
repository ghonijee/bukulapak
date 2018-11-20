
<?php
require_once("../control/connect.php");
?>

<table border=1>
    <tr><th>No<th>Kode Order<th>ID Customer<th>Bukti<th>Verifikasi</th></tr>
    <?php
    include "koneksi.php";
    $data=mysqli_query($connection, "Select * from konfirmasi");
    $no=1;
    while($data2=mysqli_fetch_array($data)){
        echo"<tr>
        <td>$no
        <td>$data2[kd_order]
        <td>$data2[id]
        "
        ?>
        <td><img src="../img/konfirmasi/<?php echo $data2['bukti']; ?>" width="100px"></td>
        <td><button onclick="edit(<?php echo"$data2[kd_order]"; ?>)">Verifikasi</button></td>
        </tr>
        <?php
    $no++;
    }
    ?>
</table>
<script type="text/javascript">
function edit(kd_order){
    document.location="edit.php?kd_order="+kd_order;
}
</script>