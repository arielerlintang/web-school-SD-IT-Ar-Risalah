<?php 
include 'header.php';
 ?>
<?php
$pendaftar = array();
$ambil_pendaftar = $koneksi->query("SELECT * FROM pendaftar");
while($tiap_pendaftar = $ambil_pendaftar->fetch_assoc())
{
	$pendaftar[] = $tiap_pendaftar;
} 
// echo "<pre>";
// print_r ($pendaftar);
// echo "</pre>";
$total_pendaftar = count($pendaftar)+1;
// echo "$total_pendaftar";

 ?>

   <section class="py-5" style="background-image: url('https://png.pngtree.com/thumb_back/fw800/background/20221213/pngtree-black-and-white-patterned-batik-image_1512065.jpg')">
   	<div class="container">
		<div class="row">
			<div class="col-md-7 offset-md-2 bg-white rounded shadow p-5">
				<h6>Form Pendaftaran</h6>
				<form method="post">
					<div class="mb-3">
						<label>Nama</label>
						<input type="text" name="nama_pendaftar" class="form-control">
					</div>
					<div class="mb-3">
						<label>Jenis Kelamin</label>
						<select name="jk_pendaftar" class="form-control">
							<option class="text-muted" value="">--pilih jenis kelamin--</option>
							<option value="laki laki">Laki Laki</option>
							<option value="perempuan">Perempuan</option>
						</select>
					</div>
					<div class="mb-3">
						<label>Alamat</label>
						<textarea class="form-control" name="alamat_pendaftar"></textarea>
					</div>
					<div class="mb-3">
						<label>Telepon</label>
						<input type="number" name="telepon_pendaftar" class="form-control">
					</div>
					<div class="mb-3">
						<label>Nama Ayah</label>
						<input type="text" name="ayah_pendaftar" class="form-control">
					</div>
					<div class="mb-3">
						<label>Nama Ibu</label>
						<input type="text" name="ibu_pendaftar" class="form-control">
					</div>
					<div class="mb-3">
						<label>Jenis</label>
						<select class="form-control" name="jenis_pendaftar">
							<option value="" class="text-muted">--pilih jenis--</option>
							<option value="baru">Baru</option>
							<option value="pindahan">Pindahan</option>
						</select>
					</div>	
					
					<button name="tambah" class="btn btn-primary" type="submit">Daftar</button>	
				</form>
			</div>
		</div>
	</div>


   </section>
	
<?php

	if (isset($_POST["tambah"])) 
	{
		
		$nama_pendaftar = $_POST["nama_pendaftar"];
		$jk_pendaftar = $_POST["jk_pendaftar"];
		$alamat_pendaftar = $_POST["alamat_pendaftar"];
		$telepon_pendaftar = $_POST["telepon_pendaftar"];
		$ayah_pendaftar = $_POST["ayah_pendaftar"];
		$ibu_pendaftar = $_POST["ibu_pendaftar"];
		$jenis_pendaftar = $_POST["jenis_pendaftar"];
		

		  $tanggal_pendaftar = date("Y-m-d");

	

		if ($total_pendaftar>12)
		 {
					$koneksi->query("INSERT INTO pendaftar (nomor_pendaftar,nama_pendaftar,jk_pendaftar,alamat_pendaftar,telepon_pendaftar,ayah_pendaftar,ibu_pendaftar,jenis_pendaftar,status_pendaftar,tanggal_pendaftar) 
			VALUES ('$total_pendaftar','$nama_pendaftar','$jk_pendaftar','$alamat_pendaftar','$telepon_pendaftar','$ayah_pendaftar','$ibu_pendaftar','$jenis_pendaftar','tidak lulus','$tanggal_pendaftar') ");
		}
		else
		{
			$koneksi->query("INSERT INTO pendaftar (nomor_pendaftar,nama_pendaftar,jk_pendaftar,alamat_pendaftar,telepon_pendaftar,ayah_pendaftar,ibu_pendaftar,jenis_pendaftar,status_pendaftar,tanggal_pendaftar) 
			VALUES ('$total_pendaftar','$nama_pendaftar','$jk_pendaftar','$alamat_pendaftar','$telepon_pendaftar','$ayah_pendaftar','$ibu_pendaftar','$jenis_pendaftar','lulus','$tanggal_pendaftar') ");
		}


		echo "<script>alert('Data Pendaftar Di Tambahkan')</script>";
		echo "<script>location='index.php?page=pendaftar'</script>";


	} 


	?>
	<?php include 'footer.php'; ?>