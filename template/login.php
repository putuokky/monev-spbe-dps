<?php
session_start();

// manggil class
function __autoload($tagline)
{
  require_once $tagline . '.php';
}
$tagline = new tagline();

// panggil file config
include 'config/config.php';

if (isset($_POST['login'])) {
  $usern = $_POST['usern'];
  $passw = md5($_POST['passw']);

  $sql = "SELECT * FROM tb_user WHERE userid = '$usern' && password = '$passw' && is_active = '1'";
  $result = mysqli_query($conn, $sql);
  $dataUser = mysqli_fetch_assoc($result);

  if ($dataUser > 0) {
    $_SESSION['userid']       = $dataUser['userid'];
    $_SESSION['nama_user']    = $dataUser['nama_user'];
    $_SESSION['password']     = $dataUser['password'];
    $_SESSION['email']        = $dataUser['email'];
    $_SESSION['opd']          = $dataUser['opd'];
    $_SESSION['groupuser']    = $dataUser['groupuser'];
    $_SESSION['grupindeks']   = $dataUser['grupindeks'];
    $_SESSION['is_active']    = $dataUser['is_active'];

    if ($_SESSION['groupuser'] == 1) {
      header("location:t.php?page=home");
    } else if ($_SESSION['groupuser'] == 2 || $_SESSION['groupuser'] == 3) {
      header("location:t.php?page=nilaikematangan");
    } else if ($_SESSION['groupuser'] == 4) {
      header("location:t.php?page=home");
    }
  } else {
    header("location:?msg=no");
  }
}

if (!empty($_SESSION['user'])) {
  header('location:t.php?page=home');
} else {

?>


  <!DOCTYPE html>
  <html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><?= $tagline->sidetitle(); ?>&nbsp;<?= $tagline->kota(); ?></title>

    <!-- Custom fonts for this template-->
    <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- The fav icon -->
    <link rel="shortcut icon" href="assets/img/Lambang_Kota_Denpasar.png">

    <script type="text/javascript">
      function validasi_input(form) {
        pola_username = /^[a-zA-Z0-9\_\-]{3,100}$/;
        if (!pola_username.test(form.usern.value)) {
          alert('Username minimal 3 karakter dan hanya boleh Huruf atau Angka!');
          form.usern.focus();
          return false;
        } else if (!pola_username.test(form.passw.value)) {
          alert('Password minimal 3 karakter dan hanya boleh Huruf atau Angka!');
          form.passw.focus();
          return false;
        }
        return (true);
      }
    </script>

  </head>

  <body class="bg-gray-900">

    <div class="container">

      <!-- Outer Row -->
      <div class="row justify-content-center">

        <!-- <div class="text-center text-white my-5">
          <p class="h1">Sistem Pemerintah Berbasis Elektronik <br>Pemerintahan Kota Denpasar</p>
        </div> -->


        <div class="col-xl-6 col-lg-12 col-md-6">
          <div class="text-center text-white my-5">
            <p class="h1"><?= $tagline->sidetitle(); ?><br><?= $tagline->pemkot(); ?><br></p>
          </div>
          <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
              <!-- Nested Row within Card Body -->
              <div class="row">
                <div class="col-lg">
                  <div class="p-5">
                    <div class="text-center">
                      <?php
                      if (isset($_GET['msg']) == 'no') { ?>
                        <div class="alert alert-danger">
                          Login Gagal.
                        </div>
                      <?php } else { ?>
                        <div class="alert alert-primary">Silahkan login dengan Username and Password anda!</div>
                      <?php } ?>
                    </div>
                    <form class="user" method="post" name="form" onsubmit="return validasi_input(this)">
                      <div class="form-group">
                        <input type="text" class="form-control form-control-user" id="username" placeholder="Enter Username" name="usern" autocomplete="off">
                      </div>
                      <div class="form-group">
                        <input type="password" class="form-control form-control-user" id="password" placeholder="Password" name="passw">
                      </div>
                      <hr>
                      <button type="submit" name="login" class="btn btn-primary btn-user btn-block">Login</button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="assets/js/sb-admin-2.min.js"></script>

  </body>

  </html>

<?php
}
?>