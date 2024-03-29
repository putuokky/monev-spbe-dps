<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query edit
if (isset($_POST['input'])) {
  $indeks        = $_POST['indeks'];
  $domain        = $_POST['domain'];
  $aspek         = $_POST['aspek'];
  $nilaiaspek   = $_POST['nilaiaspek'];

  $res = true;

  if ($res) {
    $sql = "INSERT INTO tb_aspek_nilai (aspek, nilai_aspek, domain, indeks_nilai)
      VALUES ('$aspek', '$nilaiaspek', '$domain', '$indeks')";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Nilai Aspek Berhasil Ditambah");
            window.location.href="t.php?page=aspek&act=detilaspek&id=' . $id . '";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Nilai Aspek Gagal Ditambah");
            </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM tb_aspek_nilai WHERE id_aspek_nilai = '$id'";
$resUbah = mysqli_query($conn, $sqlUbah);
$data = mysqli_fetch_assoc($resUbah);

?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('domain').classList.add('active');
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
          <h6 class="m-0 font-weight-bold text-primary">Form Tambah Nilai <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
            <form method="post">
              <div class="form-group row">
                <label for="indeks" class="col-md-2 col-form-label">Indeks</label>
                <div class="col-md-2">
                  <select class="form-control" id="indeks" name="indeks">
                    <option value="0">-</option>
                    <?php
                    if ($_SESSION['grupindeks'] == 1) {
                      $sqlIndeks = "SELECT * FROM tb_indeks_nilai a
                      LEFT JOIN tb_indeks b ON b.id_indeks = a.indeks
                      WHERE a.indeks = $_SESSION[grupindeks]";
                      // } else if ($_SESSION['grupindeks'] == 2) {
                      //   $sqlIndeks = "SELECT * FROM tbl_user_katindex
                      //   WHERE id_user_katindex = $_SESSION[grupindeks]";
                    } else {
                      $sqlIndeks = "SELECT * FROM tb_indeks_nilai a
                      LEFT JOIN tb_indeks b ON b.id_indeks = a.indeks";
                    }
                    $resIndeks = mysqli_query($conn, $sqlIndeks);
                    while ($rowIndeks = mysqli_fetch_assoc($resIndeks)) { ?>
                      <option value="<?= $rowIndeks['id_indeks_nilai']; ?>"><?= $rowIndeks['nama_indeks']; ?> (<?= $rowIndeks['tahun_indeks']; ?>)</option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="domain" class="col-md-2 col-form-label">Domain</label>
                <div class="col-md-4">
                  <select class="form-control" id="domain" name="domain">
                    <?php
                    if ($_SESSION['grupindeks'] == 1) {
                      $sqlDomain = "SELECT * FROM tb_domain
                      WHERE user_katindex = $_SESSION[grupindeks]";
                      // } else if ($_SESSION['grupindeks'] == 2) {
                      //   $sqlDomain = "SELECT * FROM tbl_user_katindex
                      //   WHERE id_user_katindex = $_SESSION[grupindeks]";
                    } else {
                      $sqlDomain = "SELECT * FROM tb_domain";
                    }
                    $resDomain = mysqli_query($conn, $sqlDomain);
                    while ($rowDomain = mysqli_fetch_assoc($resDomain)) {
                      if ($data['domain'] == $rowDomain['id_domain']) { ?>
                        <option value="<?= $rowDomain['id_domain']; ?>" selected><?= $rowDomain['nama_domain']; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="aspek" class="col-md-2 col-form-label">Aspek</label>
                <div class="col-md-4">
                  <select class="form-control" id="aspek" name="aspek">
                    <?php
                    if ($_SESSION['grupindeks'] == 1) {
                      $sqlAspek = "SELECT * FROM tb_aspek
                      WHERE user_katindex = $_SESSION[grupindeks]";
                      // } else if ($_SESSION['grupindeks'] == 2) {
                      //   $sqlAspek = "SELECT * FROM tbl_user_katindex
                      //   WHERE id_user_katindex = $_SESSION[grupindeks]";
                    } else {
                      $sqlAspek = "SELECT * FROM tb_aspek";
                    }
                    $resAspek = mysqli_query($conn, $sqlAspek);
                    while ($rowAspek = mysqli_fetch_assoc($resAspek)) {
                      if ($data['aspek'] == $rowAspek['id_aspek']) { ?>
                        <option value="<?= $rowAspek['id_aspek']; ?>" selected><?= $rowAspek['nama_aspek']; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="nilaiaspek" class="col-md-2 col-form-label">Nilai Aspek</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="nilaiaspek" id="nilaiaspek" placeholder="Enter Nilai Aspek" autocomplete="off" value="">
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="javascript:window.history.go(-1);">
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