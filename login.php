<!DOCTYPE html>
<html>
<head>
	<title>Login Peserta Ujian</title>
</head>
<body>
	<div class="kotaklogin" align="center">

		<h1>Selamat Datang</h1>

		<form method="post">
			<p>Username</p>
			<input type="text" name="username" placeholder="Masukan Username">
			<p>Password</p>
			<input type="password" name="password" placeholder="Masukan Password">
			<br><br>
			<input type="submit" name="login" value="LOGIN">
			<input type="submit" name="reset" value="RESET">
			<br><br>
			<a href="registrasi.php">Belum Punya Akun?</a>
		</form>

	</div>
</body>
</html>

<?php 

include('koneksi.php');
if (isset($_POST['login'])) {
	$username = $_POST['username'];
	$password = $_POST['password'];

	$user = mysqli_query($koneksi, "select * from user where username='$username' and password='$password'")or die(mysqli_error($koneksi));
	$data = mysqli_fetch_assoc($user);
	$cek = mysqli_num_rows($user);

	if ($cek > 0) {
		session_start();
		$_SESSION['username'] = $data['username'];
		$_SESSION['password'] = $data['password'];
		header("location:indexuser.php");
		// echo "sukses";
	} else {
		// echo "gagal";
	}
	
}

 ?>