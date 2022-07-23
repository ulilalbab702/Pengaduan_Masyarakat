<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Daftar</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body style="background-image: url('bg.jpg'); background-size: cover; background-attachment: fixed;">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-6 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-12 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-12">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Silahkan Daftar!</h1>
                  </div>
                  <form class="user" method="post" action="simpan_masyarakat.php">
                    <div class="form-group">
                      <input type="number" class="form-control form-control-user" name="nik" placeholder="Masukkan NIK" onkeypress="return event.charCode >= 48 && event.charCode <=57" required autofocus>
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control form-control-user" name="nama" placeholder="Masukkan Nama Anda" required>
                    </div>
                     <div class="form-group">
                      <input type="text" class="form-control form-control-user" name="username" placeholder="Masukkan Username" required>
                    </div>
                     <div class="form-group">
                      <input type="password" class="form-control form-control-user" name="password" placeholder="Masukkan Password" required>
                    </div>
                     <div class="form-group">
                      <input type="number" class="form-control form-control-user" name="telp" placeholder="Masukkan Nomor Telepon" onkeypress="return event.charCode >= 48 && event.charCode <=57" required>
                    </div>
                    <div class="form-group">
                      
                    </div>
                    <input type="submit" value="Daftar" class="btn btn-warning btn-user btn-block">
                      
                    
                    <hr>
                   
                  </form>
                  <div class="text-center">
                    Sudah Punya Akun ?<br>
                    <a class="small" href="index2.php" style="color: orange;">Silahkan Login</a>
                  </div>
                  <hr>
                  
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
