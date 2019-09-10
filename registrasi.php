<?php 
session_start();
if (isset($_SESSION['username'])) {
	header("location:index.php");
}
?>


<!DOCTYPE html>
<html>
<head>
	<title>Registrasi Peserta Ujian</title>
</head>
<body>
	<div class="kotaklogin" align="center">

		<h1>Silahkan Isi Form Registrasi</h1>

		<form method="post" enctype="multipart/form-data">
			<p>NISN</p>
			<input type="number" name="nisn" placeholder="Masukan NISN">
			<p>Nama Lengkap</p>
			<input type="text" name="nama" placeholder="Masukan Nama Lengkap">
			<p>Email</p>
			<input type="email" name="email" placeholder="Masukan Email">
			<p>Jenis Kelamin</p>
			<input type="radio" name="jk" value="L">Laki-Laki <input type="radio" name="jk" value="P">Perempuan
			<p>Nama Sekolah</p>
			<input type="text" name="nama_sekolah" placeholder="Masukan Nama Sekolah">
			<p>Username</p>
			<input type="text" name="username" placeholder="Masukan Username">
			<p>Password</p>
			<input type="password" name="password" placeholder="Masukan Password">
			<br><br>
			<input type="submit" name="tambah" value="REGISTRASI">
			<input type="reset" name="reset" value="RESET">
			<br><br>
			<a href="index.php">Sudah Punya Akun?</a>
		</form>

	</div>
</body>
</html>

<?php 

include('koneksi.php');
if (isset($_POST['tambah'])) {
	$nisn = $_POST['nisn'];
	$nama = $_POST['nama'];
	$email = $_POST['email'];
	$jk = $_POST['jk'];
	$nama_sekolah = $_POST['nama_sekolah'];
	$username = $_POST['username'];
	$password = $_POST['password'];

	$tambah=mysqli_query($koneksi, "insert into user values ('','$nisn','$nama','$email','$jk','$nama_sekolah','$username','$password','0')");

	if ($tambah) {
		header("location:indexuser.php");
	} else {
		echo '<center>Gagal Registrasi</center><br>';
		header("location:registrasi.php");

		}

}
?>