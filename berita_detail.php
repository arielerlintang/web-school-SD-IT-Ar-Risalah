<?php include 'header.php'; ?>
<?php 
$id_berita = $_GET["id"];
$ambil_berita = $koneksi->query("SELECT * FROM berita WHERE id_berita = '$id_berita' ");
$berita = $ambil_berita->fetch_assoc();



	$beritaa = array();
	$ambil = $koneksi->query("SELECT * FROM berita LIMIT 6");
	while($tiap = $ambil->fetch_assoc())
	{
		$berita_semua[] = $tiap;
	}
// echo "<pre>";
// print_r ($berita);
// echo "</pre>"; 


 ?>
	<main class="my-5" class="light">
		<div class="container">
			<div class="row">
				<div class="col-md-8 mb-4">
					<div class="card p-4 bg-white card shadow">
						
							<img src="asset/file/<?php echo $berita['foto_berita']; ?>" class="rounded">
							<strong class="text-muted" style="font-size: 12px;"><i class="bi bi-person-circle"> By: Admin</i> <i class="bi bi-calendar"></i> <?php echo date("D, d/m/Y", strtotime($berita["tanggal_berita"])); ?></strong>
						<div class="text-center mb-2">
						</div>
						<h4 style="text-transform: capitalize;"><?php echo $berita["judul_berita"]; ?></h4>
						<p><?php echo $berita["isi_berita"]; ?></p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card p-3 bg-white shadow">
						<div class="card-header bg-white text-center">
						<h4>POS TERBARU</h4>	
						</div>
						<?php foreach ($berita_semua as $key => $value): ?>
							<div class="row my-2">
							<div class="col-md-7">
								<strong style="font-size: 10px;" class="text-muted"><?php echo date("D, d/m/Y",strtotime($value["tanggal_berita"])) ?></strong>
								<h6><a href="berita_detail.php?id=<?php echo $value['id_berita'] ?>" class="text-decoration-none text-success"><?php echo strtoupper($value["judul_berita"]); ?></a></h6>
							</div>
							<div class="col-md-5">
								<div class="">
									<img src="asset/file/<?php echo $value['foto_berita'] ?>" width="100">
								</div>
							</div>
							<hr style="width: 95%;" class="mx-auto mt-1">
						</div>
						<?php endforeach ?>


					</div>
				</div>
			</div>
		</div>
	</main>

<?php include 'footer.php'; ?>