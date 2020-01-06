<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query edit
if (isset($_POST['update'])) {
  // $id         = $_POST['username'];
  $nama       = $_POST['nama'];
  $email      = $_POST['email'];
  $unit       = $_POST['unit'];
  $grupuser   = $_POST['grupuser'];
  $indekss    = $_POST['indekss'];

  $res = true;

  if ($res) {
    $sql = "UPDATE tb_user 
        SET nama_user = '$nama',
        email = '$email',
        opd = '$unit',
        groupuser = '$grupuser',
        grupindeks = '$indekss'
        WHERE userid = '$id'";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data User Berhasil Diedit");
            window.location.href="t.php?page=user";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data User Gagal Diedit");
            window.location.href="t.php?page=user";
            </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM tb_user WHERE userid = '$id'";
$resUbah = mysqli_query($conn, $sqlUbah);
$data = mysqli_fetch_assoc($resUbah);

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
          <h6 class="m-0 font-weight-bold text-primary">Form Ubah <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
            <form method="post">
              <div class="form-group row">
                <label for="username" class="col-md-2 col-form-label">Username</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="username" id="username" placeholder="Enter Username" autocomplete="off" value="<?= $data['userid']; ?>" readonly>
                </div>
              </div>
              <div class="form-group row">
                <label for="nama" class="col-md-2 col-form-label">Nama</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="nama" id="nama" placeholder="Enter Nama" value="<?= $data['nama_user']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="email" class="col-md-2 col-form-label">Email</label>
                <div class="col-md-10">
                  <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com" value="<?= $data['email']; ?>">
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
                    while ($rowUnit = mysqli_fetch_assoc($resUnit)) {
                      if ($rowUnit['idopd'] == $data['opd']) { ?>
                        <option value="<?= $rowUnit['idopd']; ?>" selected><?= $rowUnit['namaopd']; ?></option>
                      <?php } else { ?>
                        <option value="<?= $rowUnit['idopd']; ?>"><?= $rowUnit['namaopd']; ?></option>
                      <?php } ?>
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
                    while ($rowGrupUser = mysqli_fetch_assoc($resGrupUser)) {
                      if ($rowGrupUser['id_groupuser'] == $data['groupuser']) { ?>
                        <option value="<?= $rowGrupUser['id_groupuser']; ?>" selected><?= $rowGrupUser['keterangan']; ?></option>
                      <?php } else { ?>
                        <option value="<?= $rowGrupUser['id_groupuser']; ?>"><?= $rowGrupUser['keterangan']; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="aktifan" class="col-md-2 col-form-label">Grup Indeks</label>
                <div class="col-md-10">
                <?php
                  $sqlIndeks = "SELECT * FROM tb_indeks";
                  $resultIndeks = mysqli_query($conn, $sqlIndeks);

                  while ($rowIndeks = mysqli_fetch_assoc($resultIndeks)) {
                    $id_indeks = $rowIndeks['id_indeks'];
                    $nama_indeks = $rowIndeks['nama_indeks'];
                    $nilai_indeks = $rowIndeks['nilai_indeks'];
                    $tahun_indeks = $rowIndeks['tahun_indeks'];

                    if ($id_indeks == $data['grupindeks']) { ?>
                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="indekss" id="inlineRadio1" value="<?= $id_indeks; ?>" checked>
                        <label class="form-check-label" for="inlineRadio1"><?= $nama_indeks; ?></label>
                      </div>
                    <?php } else { ?>
                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="indekss" id="inlineRadio1" value="<?= $id_indeks; ?>">
                        <label class="form-check-label" for="inlineRadio1"><?= $nama_indeks; ?></label>
                      </div>
                     <?php } ?>
                <?php } ?>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=user">
                  <span class="text">Kembali</span>
                </a>
                <button type="submit" class="btn btn-primary" name="update">Simpan</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

  </div>

</div>