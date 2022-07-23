<?php
if (isset($_GET['url']))
{
	$url=$_GET['url'];

	switch ($url) {
		case 'tulis_pengaduan';
		include 'tulis_pengaduan.php';
			break;
		
		case 'lihat_pengaduan';
		include 'lihat_pengaduan.php';
			break;

		case 'detail_pengaduan';
		include 'detail_pengaduan.php';
			break;

		case 'lihat_tanggapan';
		include 'lihat_tanggapan.php';
			break;

		case 'petunjuk';
		include 'petunjuk.php';
			break;
	}
}
else 
{
	?>
	Selamat Datang di Aplikasi Web Pelaporan Pengaduan Masyarakat Temanggung<br><br>
	Anda Login Sebagai : <h2 class="text-warning"><i class="fas fa-users"></i> <b><?php echo $_SESSION['nama'];
}
?>