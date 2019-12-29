<?php
// query tambah
if (isset($_POST['input'])) {
  $username   = $_POST['username'];
  $passw      = md5($_POST['passw']);
  $nama       = $_POST['nama'];
  $email      = $_POST['email'];
  $unit       = $_POST['unit'];
  $grupuser   = $_POST['grupuser'];

  $res = true;

  if ($res) {
    $sql = "INSERT INTO  tb_user (userid, nama_user, password, email, opd, groupuser, is_active)
      VALUES ('$username', '$nama', '$passw', '$email', '$unit', '$grupuser', '1')";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data User Berhasil Ditambah");
            window.location.href="t.php?page=user";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data User Gagal Ditambah");
            window.location.href="t.php?page=user";
            </script>';
    }
  }
}
?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('user').classList.add('active');
</script>

<!-- isi konten -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">

    <h1 class="h3 mb-0 text-gray-800"><?php include 'template/title.php'; ?></h1>

  </div>

  <div class="row">

    <div class="col-xl-12 col-lg-12">
      <div class="card shadow mb-4">
        <!-- Card Header - Dropdown -->
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
          <h6 class="m-0 font-weight-bold text-primary">Form Tambah <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
            <form method="post">
              <div class="form-group row">
                <label for="username" class="col-md-2 col-form-label">Username</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="username" id="username" placeholder="Enter Username" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="passw" class="col-md-2 col-form-label">Password</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="passw" id="passw" placeholder="Enter Your Password" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="nama" class="col-md-2 col-form-label">Nama</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="nama" id="nama" placeholder="Enter Nama" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="email" class="col-md-2 col-form-label">Email</label>
                <div class="col-md-10">
                  <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="unit" class="col-md-2 col-form-label">OPD</label>
                <div class="col-md-10">
                  <select class="form-control" id="unit" name="unit">
                    <option value="0">-</option>
                    <?php
                    // grup user admin OPD atau Operator OPD
                    if ($_SESSION['groupuser'] == 2 || $_SESSION['groupuser'] == 3) {
                      $sqlUnit = "SELECT * FROM tb_opd 
                                WHERE LENGTH(idopd) = 6 && idopd = '$_SESSION[opd]'";
                    } else {
                      $sqlUnit = "SELECT * FROM tb_opd
                                WHERE LENGTH(idopd) = 6";
                    }

                    $sqlUnit = $sqlUnit . " ORDER BY namaopd ASC";

                    $resUnit = mysqli_query($conn, $sqlUnit);
                    while ($rowUnit = mysqli_fetch_assoc($resUnit)) { ?>
                      <option value="<?= $rowUnit['idopd']; ?>"><?= $rowUnit['namaopd']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="grupuser" class="col-md-2 col-form-label">Groupuser</label>
                <div class="col-md-10">
                  <select class="form-control" id="grupuser" name="grupuser">
                    <option value="0">-</option>
                    <?php
                    // grup user admin OPD atau Operator OPD
                    if ($_SESSION['groupuser'] == 2) {
                      $sqlGrupUser = "SELECT * FROM tb_groupuser 
                                    WHERE id_groupuser = 3";
                    } else {
                      $sqlGrupUser = "SELECT * FROM tb_groupuser";
                    }

                    $sqlGrupUser = $sqlGrupUser . " ORDER BY id_groupuser ASC";

                    $resGrupUser = mysqli_query($conn, $sqlGrupUser);

                    while ($rowGrupUser = mysqli_fetch_assoc($resGrupUser)) { ?>
                      <option value="<?= $rowGrupUser['id_groupuser']; ?>"><?= $rowGrupUser['keterangan']; ?></option>
                    <?php } ?>
                  </select> </div>
              </div>
              <!-- <div class="form-group row">
                <label for="aktifan" class="col-md-2 col-form-label">Status Aktif</label>
                <div class="col-md-10">
                  <select class="form-control" id="aktifan" name="aktifan">
                    <option value="0">-</option>
                    <option value="1">Aktif</option>
                    <option value="2">Tidak Aktif</option>
                  </select> </div>
              </div> -->
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=user">
                  <span class="text">Kembali</span>
                </a>
                <button type="submit" class="btn btn-primary" name="input">Simpan</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

  </div>

</div>