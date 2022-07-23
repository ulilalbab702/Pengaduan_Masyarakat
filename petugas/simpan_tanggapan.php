<?php
require '../koneksi.php';
$id_pengaduan=$_POST['id_pengaduan'];
$tgl=$_POST['tgl_tanggapan'];
$tanggapan=$_POST['tanggapan'];
$id_petugas=$_POST['id_petugas'];
$ft=$_FILES['foto']['name'];
$file=$_FILES['foto']['tmp_name'];
$st='selesai';

$sql=mysqli_query($koneksi,"insert into tanggapan(id_pengaduan,tgl_tanggapan,tanggapan,foto,id_petugas) values 
	('$id_pengaduan','$tgl','$tanggapan','$ft','$id_petugas')");
move_uploaded_file($file, "../foto/".$ft);
$update_st=mysqli_query($koneksi,"update pengaduan set status='$st' where id_pengaduan='$id_pengaduan' ");
if ($sql)
{
	?>
	<script type="text/javascript">
		alert('Data Sudah Ditanggapi');
		window.location="petugas.php?url=verifikasi_pengaduan2";
	</script>
<?php
}
?>