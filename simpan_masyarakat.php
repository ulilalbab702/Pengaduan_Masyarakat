<?php
//require 'koneksi.php';
require 'koneksi.php';
$cekdulu= "select * from masyarakat where nik='$_POST[nik]' ";
$prosescek = mysqli_query($koneksi, $cekdulu);
if (mysqli_num_rows($prosescek) > 0 ) {
	echo "<script>alert('NIK Sudah Digunakan');history.go(-1) </script>";
}
else {

$nik=$_POST['nik'];
$nama=$_POST['nama'];
$user=$_POST['username'];
$pass=$_POST['password'];
$telp=$_POST['telp'];

//$sql=mysqli_query($conn,"insert into masyarakat values ('$nik','$user','$pass','$telp')");

$query=mysqli_query($koneksi, "INSERT INTO  masyarakat VALUES ('$nik','$nama','$user','$pass','$telp')");
if ($koneksi)
{
	?>
	<script type="text/javascript">
		alert ('Data Berhasil Disimpan,Silahkan Gunakan Untuk Login');
		window.location="index2.php";
	</script>
<?php
} }
?>