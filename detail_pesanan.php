<?php
include'control/connect.php';
include'control/fungsi.php';
if (!isset($_SESSION)) {
    session_start();
}
if (!isset($_SESSION['login'])) {
    header('location: register.php');
}
if(isset($_POST['checkout'])){
    if(checkout($_POST)){
        clearcart($_POST);
        header("location: checkout.php");
    }
}
if(isset($_POST['tambah'])){
    tambah($_POST);
}elseif(isset($_POST['kurang'])){
    kurang($_POST);
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

    </style>
</head>

<body>
    <?php require_once 'template/navbar.php'; ?>
    <div class="container" style="margin-top:7rem;">
        <div class="container">
            <h5 class="text-info offset text-center badge-light p-2">Buku Pesanan Anda</h5>
            <div class="row">
                <?php
                    $total=0;
                    // foreach ($_SESSION['keranjang'] as $kd_buku => $jumlah) {
                    $id=$_SESSION['login']['id'];
                    $kd_order=$_GET['kd_order'];
                    $pesanan=mysqli_query($connection,"SELECT * FROM pesanan WHERE id=$id AND kd_order=$kd_order");
                    
                   while($hasil=$pesanan->fetch_assoc()){
                       $kode=$hasil['kd_buku'];
                       $jumlah=$hasil['jumlah'];
                    // $result= $connection->query("SELECT * FROM buku WHERE kd_buku='$hasil['kd_buku']'");
                    $result= mysqli_query($connection,"SELECT * FROM buku WHERE kd_buku='$kode'");
                    while ($data = $result->fetch_assoc()) {
                        $subharga=$jumlah * $data['harga']; ?>
                <div class="offset-1 col-10">
                    <div class="row border-top p-3 mb-3">
                        <div class="col-0 col-md-2">
                            <img src="img/katalog/<?php echo $data['foto']; ?>" class="img-thumbnail d-none d-md-block">
                        </div>
                        <div class="col-6">
                            <p class="text-dark font-weight-bold">
                                <?php echo $data['judul_buku']; ?>
                            </p>
                            <p class="text-muted small">
                                <?php echo $data['pengarang']; ?>
                            </p>
                            <p class="text-danger">Rp.
                                <?php echo $data['harga']; ?>
                            </p>
                        </div>
                        <div class="col col-md-2 text-center">
                            <form action="" method="post" >
                                <input type="text" name="jumlah" readonly id="jumlah" class="form-control text-center" value="<?php echo $jumlah ?>">
                            </form>
                        </div>
                        <div class="col-2 text-right">
                            <p class="text-danger font-weight-bold">Subtotal</p>
                            <p class="text-danger">Rp.
                                <?php echo $subharga; ?>
                            </p>
                        </div>
                    </div>
                </div>
                <?php
                $total=$total+$subharga;
                    }
            }
                ?>
                <?php 
            //if (!$total==0) { ?>
                <!-- <div class="col-3 offset-1" style="position: absolute; top: 150px; right: 100px;">
                    <div class="row border badge-light p-3 rounded w-75 ">
                        <div class="col-12 text-center">
                            <p class="text-dark font-weight-bold">Total Pembayaran </p>
                            <p class="text-danger font-weight-bold">Rp.
                                <?php //echo $total; ?>
                            </p>
                        </div>
                        <div class="col-12 text-center">
                            <form action="" method="POST">
                                <input type="hidden" name="tanggal" value="<?php //echo date("d M Y"); ?>" >
                                <input type="hidden" name="id" value="<?php //echo $id; ?>" >
                                <input type="hidden" name="total" value="<?php //echo $total; ?>" >
                                <input type="hidden" name="status" value="Belum Dibayar">
                                <input type="hidden" name="noresi" value="Belum Tersedia">
                                <button type="submit" class="btn-block border-0 btn-info p-2 rounded" name="checkout">Checkout</button>
                            </form>
                        </div>
                    </div>
                </div> -->
            </div>
            <?php //} else {
        ?>
            <!-- <div class="row justify-content-center">
                <div class="col-5 rounded text-center text-info p-3">
                    <h3>Maaf Keranjang Masih Kosong!</h3>
                    <img src="img/assets/kerangang_kosong.png" alt="" class="card-img-top h-75 w-50 mt-4">
                    <div class="mt-3">
                    <a href="home.php" class="mt-5 rounded btn-info p-2 btn-lg text-center text-light">Belanja Yuk!</a>
                    </div>
                </div>
            </div> -->
        </div>
        <?php 
             //}
            ?>
    </div>
    </div>
    <div style="margin-top:7rem;">
        <?php require_once 'template/footbar.php'; ?>
        <script src="js/jquery-3.3.1.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.js"></script>
        <script>

        </script>
</body>

</html>
?>