<?php include 'header.php'; ?>
<?php 
$galeri = array();
$ambil = $koneksi->query("SELECT * FROM galeri");
while($tiap = $ambil->fetch_assoc())
{
  $galeri[] = $tiap;
}
// echo "<pre>";
// print_r ($galeri);
// echo "</pre>";
?>
<main class="my-5">
  <div class="container">
    <div class="card py-2 px-3 bg-light">
      <h3 class="text-center">Galeri</h3>
    </div>
    <div class="row my-3">

      <?php foreach ($galeri as $key => $value): ?>

        <div class="col-md-3">
          <div class="card">
            <img src="asset/file/<?php echo $value['foto_galeri']; ?>" width="">
          </div>
        </div>
      <?php endforeach ?>
    </div>
  </div>
</main>

<?php include 'footer.php'; ?>