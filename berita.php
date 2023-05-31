<?php include 'header.php'; ?>


	<?php


	$kategori = array();
	$ambil_kategori = $koneksi->query("SELECT * FROM kategori");
	while($tiap_kategori = $ambil_kategori->fetch_assoc())
	{
		$kategori[] = $tiap_kategori;
	}
// echo "<pre>";
// print_r ($berita);
// echo "</pre>"; 

	?>

	<section class="py-5 bg-light">
		<div class="container mb-3">
			<div class="card py-2 px-3 bg-white">
      <h3 class="text-center text-muted">Berita</h3>
    </div>
		</div>
		<div class="container">
			<?php foreach ($kategori as $key => $value): ?>
				<h5 class="text-center text-muted"><?php echo $value["nama_kategori"]; ?></h5>
			<br>
			<div class="row">
<?php 
				$id_kategori = $value["id_kategori"];
	$berita = array();
	$ambil = $koneksi->query("SELECT * FROM berita WHERE id_kategori = '$id_kategori' ");
	while($tiap = $ambil->fetch_assoc())
	{
		$berita[] = $tiap;
	}
 ?>
                <?php foreach ($berita as $key => $value): ?>
                	
               
				<div class="col-md-4">
					 <div class="card mb-3 shadow">
                    <img src="asset/file/<?php echo $value['foto_berita']; ?>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title fw-bold"><?php echo strtoupper($value["judul_berita"]); ?></h5>

                        <p class="card-text"><span class="bi bi-person-circle fw-bold text-muted">Admin</span><small class="text-muted"> | <i class="bi bi-calendar"></i><?php echo date("d/m/Y", strtotime($value["tanggal_berita"])); ?></small></p>
                        
                        <p class="card-text"><?php echo substr(strip_tags($value["isi_berita"]), 0,100) ?></p> 
                        <!--  -->
                        <a href="berita_detail.php?id=<?php echo $value['id_berita']; ?>" class="btn btn-outline-primary  rounded-pill"><i class="bi bi-chevron-double-right"></i> SELENGKAPNYA</a>
                    </div>
                </div>
				</div>

                 <?php endforeach ?>
			</div>
			<?php endforeach ?>
		</div>
	</section>


<?php include 'footer.php'; ?>