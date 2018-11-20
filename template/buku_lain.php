<hr class="w-100">
<h4 class="text-light w-100 text-center badge-info p-3 rounded">Buku Lainnya</h4>
<hr class="w-100">
<div class="container">
   <div class="row">
      <?php
                $select_buku = mysqli_query($connection, "SELECT * FROM buku LIMIT 6");
                if (mysqli_num_rows($select_buku)>0) {
                    while ($data = mysqli_fetch_array($select_buku)) {
                        ?>
      <div class="col-12 col-sm-6 col-md-3 col-lg-2 text-center">
         <div class="card col p-1">
            <a href="detail_buku.php?kd_buku=<?php echo $data['kd_buku']; ?>">
               <img src="img/katalog/<?php echo $data['foto']; ?>" class="card-img-top" style="width: 135px; height: 170px;">
               <p class="card-title mt-3 mb-0 text-truncate">
                  <?php echo $data['judul_buku']; ?>
               </p>
               <p class="text-muted m-1 small">
                  <?php echo $data['kategori']; ?>
               </p>
               <p class="text-dark card-text">Rp.
                  <?php echo $data['harga']; ?>
               </p>
            </a>
         </div>
      </div>
      <?php
                    }
                } ?>
   </div>
</div>
<hr class="w-100">