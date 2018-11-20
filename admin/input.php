<style type="text/css">
	#form{
		margin-left: 20px;
	}
	#form label{
		width: 90px;
		float: left;
	}
</style>

<div id="form">
	<h3>Input Data</h3>
	<form action="proses_input.php" method="POST" enctype="multipart/form-data">
		<label>kd_buku</label><input type="text" name="kd_buku"><br>
		<label>foto</label><input type="file" name="file"><br>
		<label>judul_buku</label><input type="text" name="judul_buku"><br>
		<label>pengarang</label><input type="text" name="pengarang"><br>
		<label>katagori</label>
		<select name="select" id="select">
			<option>--pilih kategori--</option>
   			<option>pendidikan</option>
    		<option>umum</option>
   	</select><br>
		<label>stok</label><input type="text" name="stok"><br>
		<label>detail</label><input type="text" name='detailbuku'><br>
		<label>harga</label><input type="text" name="harga"><br>

		<input type="submit" value="Tambahkan">
		<input type="reset" name="Hapus">
	</form>
</div>
<?php 

 ?>
