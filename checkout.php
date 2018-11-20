<?php
include'control/connect.php';
include'control/fungsi.php';
if (!isset($_SESSION)) {
    session_start();
}
if (!isset($_SESSION['login'])) {
    header('location: register.php');
}
if(!isset($kd_buku)){
    $kd_buku=0;
}
if(isset($_POST['konfirmasi'])){
    if(konfirmasi($_POST)){
        updatestatuscheckout($_POST);
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
        
    </style>
</head>

<body>
    <?php require_once 'template/navbar.php'; ?>
    <div class="container" style="margin-top:7rem;">
      <h4 class="text-info text-left badge-light p-3">Pesananku</h4>
      <div class="row">
         <div class="col-8">
            <div class="row container-fluid">
               <?php
            $id=$_SESSION['login']['id'];
            $checkout=mysqli_query($connection,"SELECT * FROM chekout WHERE id=$id");
            while ($hasil=$checkout->fetch_assoc()) {
                ?>
               <div class="col-12 mt-3 border-top badge-light">
                  <div class="row mt-3 mb-2">
                     <div class="col-4">
                        <h6 class="font-weight-bold">Kode Order</h6>
                        <h6>
                           <?php echo $hasil['kd_order']; ?>
                        </h6>
                        <h6 class="font-weight-bold">Tanggal</h6>
                        <h6>
                           <?php echo $hasil['tanggal'] ?>
                        </h6>
                        <h6 class="font-weight-bold">ID User</h6>
                        <h6>
                           <?php echo $hasil['id']; ?>
                        </h6>
                     </div>
                     <div class="col-4">
                        <h6 class=" font-weight-bold">No. Resi</h6>
                        <h6>
                           <?php echo $hasil['noresi']; ?>
                        </h6>
                        <h6 class=" font-weight-bold">TOTAL</h6>
                        <h6 class="text-dark">Rp.
                           <?php echo number_format($hasil['total']); ?>
                        </h6>
                        <h6 class=" font-weight-bold">Status</h6>
                        <h6>
                           <?php echo $hasil['status'] ?>
                        </h6>
                     </div>
                     <div class="col-4">
                        <?php
                           $cekkode = mysqli_query($connection, "SELECT * FROM konfirmasi WHERE kd_order=$hasil[kd_order]");
                           $cekhasil=mysqli_fetch_assoc($cekkode);
                           if ($cekhasil['kd_order']!==$hasil['kd_order']) {
                        ?>
                        <form action="" method="post" enctype="multipart/form-data">
                           <input type="hidden" name="kd_order" value="<?php echo $hasil['kd_order']; ?>">
                           <input type="hidden" name="id" value="<?php echo $hasil['id']; ?>">
                           <p class="custom-file-label ml-3 mr-3">Upload...</p><input type="file" class="custom-file-input mb-2"
                              name="konfirmasi">
                           <button class="btn-info w-100 mb-5 border-0 pt-2 pb-2 rounded" name="konfirmasi" type="submit">Konfirmasi</button>
                           <a href="detail_pesanan.php?kd_order=<?php echo $hasil['kd_order']; ?>" class="text-center btn-block pb-2 rounded"
                              onclick="detail()">Detail</a>
                        </form>
                        <?php
                        } else {
                        ?>
                        <a href="detail_pesanan.php?kd_order=<?php echo $hasil['kd_order']; ?>" class="text-center btn-block border-0 pb-2 rounded"
                           onclick="detail()">Detail</a>
                        <?php
                        } ?>
                     </div>
                  </div>
               </div>
               <?php
            }
            ?>
            </div>
         </div>
         <div class="col-4">
            <div class="row container-fluid">
               <div class="col-12">
               <?php 
                  $checkout1=mysqli_query($connection,"SELECT * FROM chekout");
                  if (mysqli_num_rows($checkout1)!==0) {
                ?>
                  <div class="card mt-3">
                  <p class=" font-weight-bold text-light card-header text-center bg-info">Langkah Pembayaran</p>
                  <ul class="list-group">
                     <li class=" list-group-item card-text">Lakukan pembayaran melalui Transfer atau Kirim ke rekening Berikut: <br>
                     <span class="text-danger">BNI SYARI'AH</span><br>
                     <span class="text-danger">Nama: bukulapak.com</span><br>
                     <span class="text-danger ">No: 0988363739393</span>
                     </li>
                  <li class=" list-group-item card-text">Kirimkan Bukti Transfer / Kirim Melalui fungsi konfirmasi</li>
                  <li class=" list-group-item card-text">Silahkan Tunggu Konfirmasi Dari admin untuk status dan No. Resi</li>
                  </ul>
                  </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
                  <?php
                  }else{ ?>
      </div>
      </div>
      </div>
      </div>
      
         <div class="col-12">
            <div class="row justify-content-center">
               <div class="col-5 rounded text-center text-info p-3">
                  <h4>Maaf Anda Tidak Memiliki Pesanan!</h4>
                  <img src="img/assets/kerangang_kosong.png" alt="" class="card-img-top h-75 w-50 mt-4">
                  <div class="mt-3">
                     <a href="home.php" class="mt-5 btn-info pt-2 pb-2 pr-5 pl-5 btn-lg text-center text-light" style="text-decoration: none;">Belanja Yuk!</a>
                  </div>
               </div>
            </div>
         </div>
         <?php
            }
         ?>
   </div>

    <div style="margin-top:6rem;">
        <?php require_once 'template/footbar.php'; ?>
        <script src="js/jquery-3.3.1.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.js"></script>
        <script>
            function detail() {
                document.location = "detail_pesanan.php?kd_order=<?php echo $hasil['kd_order']; ?>";
            }
        </script>
</body>

</html>