<?php include ('koneksi.php');

session_start();
if (!isset($_SESSION['username'])) {
	header("location:index.php");
}

$user=mysqli_query($koneksi, "select*from user");
$data=mysqli_fetch_assoc($user);
	
?>
<h1 align="center">Berhasil Login! Selamat Datang <?php echo $data['nama'];  ?> </h1>
<a href="logout.php">Logout gan</a>	

<a href="ujian.php">HIDUP MEMANG PENUH UJIAN GAN...MAU MULAI?</a>
