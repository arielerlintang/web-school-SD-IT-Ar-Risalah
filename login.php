<?php include 'koneksi.php' ?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="asset/css/bootstrap.css">
	<title>login</title>
</head>
<body style="background-image: url('https://png.pngtree.com/thumb_back/fw800/background/20221213/pngtree-black-and-white-patterned-batik-image_1512065.jpg');">

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-5 offset-md-3 mt-5 shadow rounded bg-white p-5">
				<form method="post">
					<div class="mb-3">
						<label>Email</label>
						<input type="text" name="email" class="form-control">
					</div>
					<div class="mb-3">
						<label>Password</label>
						<input type="password" name="password" class="form-control">
					</div>
					<button class="btn btn-primary" name="login" type="submit">LOGIN</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
<?php 
// jika ada tombol login maka
if (isset($_POST["email"])) 
{
  $email = $_POST["email"];
  $password = $_POST["password"];

$cek_admin = $koneksi->query("SELECT * FROM admin WHERE email_admin = '$email' AND password_admin = '$password' ");
$cek = $cek_admin->num_rows;

$ambil_guru = $koneksi->query("SELECT * FROM guru WHERE email_guru = '$email' AND password_guru = '$password' ");
$hitung = $ambil_guru->num_rows;

$ambil_wali = $koneksi->query("SELECT * FROM wali WHERE email_wali = '$email' AND password_wali = '$password' ");
$hitung_wali = $ambil_wali->num_rows;

if ($cek==1)
 {
  $login = $cek_admin->fetch_assoc();
  $_SESSION["admin"] = $login;

  echo "<script>alert('Akun Anda Benar')</script>";
  echo "<script>location='admin/index.php'</script>";
}
elseif ($hitung==1) {
 $login_guru = $ambil_guru->fetch_assoc();
 $_SESSION["guru"] = $login_guru;

  echo "<script>alert('Akun Anda Benar')</script>";
  echo "<script>location='guru/index.php'</script>";
}
elseif ($hitung_wali==1) {
  $login_wali = $ambil_wali->fetch_assoc();
 $_SESSION["wali"] = $login_wali;
   echo "<script>alert('Akun Anda Benar')</script>";
  echo "<script>location='wali/index.php'</script>";
}

else
{
  echo "<script>alert('Email Atau Password Salahs')</script>";
  echo "<script>location='login.php'</script>";
}
  
}



 ?>