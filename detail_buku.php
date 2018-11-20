<?php
include "control/connect.php";
include 'control/fungsi.php';
if (!isset($_SESSION)) {
    session_start();
}
$select_buku = mysqli_query($connection, "SELECT * FROM buku");
$kd_buku=$_GET['kd_buku'];
$detail_buku = mysqli_query($connection, "SELECT * FROM buku WHERE kd_buku='$kd_buku'");
if (isset($_POST['login'])) {
    login($_POST);
}
if(isset($_POST['keranjang'])){
    if(isset($_SESSION['login'])) {
        if (keranjang($_POST)) {
            //pesanan($_POST);
            header("location: keranjang.php");
        }
    }else{
        header("location: register.php");
    }
    
}
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width-device-width, initial-scale=1, shrink-to-">
    <title>BUKULAPAK</title>
    <link rel="stylesheet" href="fontawesome/css/all.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
     #detail img:hover{
        transform: scale(1.5);
        transition-property: transform;
        transition-duration: .5s;
    }
    </style>
</head>

<body>
    <?php require_once 'template/navbar.php'; ?>
    <?php
        $detail = mysqli_fetch_array($detail_buku);
        // var_dump($detail['kd_buku']);
        $jumlah=1;
    ?>
    <div id="content">
    <div class="container" style="margin-top:8rem;">
        <hr class="w-100">
        <div class="row" id="detail">
            <div class="col-2 offset-1 border mr-1 p-3 rounded">
                <div class="border-secondary mr-1 text-center">
                    <img src="img/katalog/<?php echo $detail['foto']; ?>" class="img-fluid" style="width: 200px;">
                </div>
            </div>
            <div class="col-5">
                <h2 class="font-weight-normal">
                    <?php echo $detail['judul_buku']; ?>
                </h2>
                <h5 class="d-inline">
                    <?php echo $detail['pengarang']; ?>
                </h5>
                <h5 class="d-inline ml-3">
                    <?php echo $detail['kategori']; ?>
                </h5>
                <div class="badge-light text-center col-4 p-1 rounded mt-2">
                    <h5 class="text-secondary mt-3">STOK BUKU</h5>
                    <h5 class="font-weight-bold text-danger">
                        <?php echo $detail['stok']; ?>
                    </h5>
                    <?php 
                     $subtotal=$jumlah*$detail['harga'];
                    ?>
                </div>
                <form id="add" action="" method="post">
                    <input type="hidden" name="kd_buku" value="<?php echo $kd_buku; ?>">
                    <input type="hidden" name="id" value="<?php echo $_SESSION['login']['id']; ?>">
                    <!-- <input type="hidden" name="jumlah" value="<?php //echo $jumlah; ?>"> -->
                    <input type="hidden" name="harga" value="<?php echo $detail['harga']; ?>">
                    <input type="hidden" name="subtotal" value="<?php echo $subtotal; ?>">
                    <h4 class="text-secondary mt-3">JUMLAH</h4>
                    <input type="number" class=" p-2 form-control col-2" name='jumlah' value=1>
                    <!-- <button type="submit" name="keranjang" class="btn-info btn-block border-0 btn font-weight-bold pt-3 pb-3">Tambah Ke Keranjang</button> -->
                </form>
            </div>
            <div class="col-3">
                <div class="row">
                    <div class="col">
                        <button type="submit" form="add" name="keranjang" class="btn-info btn-block border-0 btn font-weight-bold pt-3 pb-3">Tambah Ke Keranjang</button>
                        <!-- <button type="submit" name="beli" class="btn-info btn-block border-0 btn font-weight-bold pt-3 pb-3">Beli -->
                            <!-- Sekarang</button> -->
                    </div>
                </div>
            </div>

        </div>
        <div class="row mt-4">
            <div class="col">
                <!-- <hr class="w-100"> -->
                <h4 class="text-light text-center badge-info p-3 rounded">Detail Buku</h4>
                <hr class="w-75">
                <p class="text-justify col-8 offset-2">
                    <?php echo $detail['detail']; ?>
                </p>
            </div>
        </div>
        <?php require_once 'template/buku_lain.php'; ?>
    </div>
    </div>
    <?php require_once 'template/footbar.php'; ?>
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/script.js"></script>
    <script>
        //javascript
    </script>
</body>

</html>