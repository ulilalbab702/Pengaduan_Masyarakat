<?php
if (isset($_GET['url']))
{
	$url=$_GET['url'];

	switch ($url) {
	case 'verifikasi_pengaduan':
	include 'verifikasi_pengaduan.php';
		break;

	case 'detail_pengaduan':
	include 'detail_pengaduan.php';
		break;	

	case 'tanggapan':
	include 'tanggapan.php';
		break;	

	case 'lihat_petugas':
	include 'lihat_petugas.php';
		break;

	case 'tambah_petugas':
	include 'tambah_petugas.php';
		break;

	case 'edit_petugas':
	include 'edit_petugas.php';
		break;

	case 'preview_masyarakat':
	include 'preview_masyarakat.php';
		break;
		
	case 'lihat_masyarakat':
	include 'lihat_masyarakat.php';
		break;

	case 'lihat_laporan':
	include 'lihat_laporan.php';
		break;

	case 'preview_pengaduan':
	include 'preview_pengaduan.php';
		break;

	case 'lapor_petugas':
	include 'lapor_petugas.php';
		break;

	case 'lihat_tanggapan':
	include 'lihat_tanggapan.php';
		break;

	case 'preview_tanggapan':
	include 'preview_tanggapan.php';
		break;
	}
}
else 
{
	?>
	Selamat Datang di Aplikasi Web Pelaporan Pengaduan Masyarakat Temanggung<br><br>
	Anda Login Sebagai : <h2 class="text-warning"><i class="fas fa-user-tie"></i> <b><?php echo $_SESSION['nama'];
	require '../koneksi.php';
	$sql = mysqli_query($koneksi,"select * from pengaduan where status='proses'");
	if($cek=mysqli_num_rows($sql))
	{

	?>
	<br>
	<br>
	<div class="row">
	<div class="col-xl-6 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-lg font-weight-bold text-warning text-uppercase mb-1">Pesan :</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800 ">Ada <?php echo $cek; ?> Laporan Pengaduan dari Masyarakat</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-bell fa-3x text-gray-300 rotate-n-15" ></i>
                      <span class="badge badge-warning badge-counter"> <?php echo $cek; ?></span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
<?php
} }
?>