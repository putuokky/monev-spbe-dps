<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query edit
if (isset($_POST['update'])) {
  $responkoor = $_POST['responkoor'];
  $koornama = $_POST['koornama'];

  $res = true;

  if ($res) {
    $sql = "UPDATE tbl_monev_app 
        SET status_monev = '2',
        respon_koor = '$responkoor',
        nama_koor = '$koornama',
        dlu_respon_koor = '$datenow2'
        WHERE id_monev_app = '$id'";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Respon Monitoring Aplikasi Berhasil");
            window.location.href="t.php?page=monevapp";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Respon Monitoring Aplikasi Gagal");
            window.location.href="t.php?page=monevapp&act=respon&id=' . $id . '";
            </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM tbl_monev_app WHERE id_monev_app = '$id'";
$resUbah = mysqli_query($conn, $sqlUbah);
$data = mysqli_fetch_assoc($resUbah);

?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('lapormasalah').classList.add('active');
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
          <h6 class="m-0 font-weight-bold text-primary">Form Respon <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
            <form method="post" enctype="multipart/form-data">
              <div class="form-group row">
                <label for="katmonev" class="col-md-2 col-form-label">Kategori Monev</label>
                <div class="col-md-2">
                  <select class="form-control" id="katmonev" name="katmonev">
                    <?php
                    $sqlKatMonev = "SELECT * FROM tbl_kategori_monev WHERE id_kat_monev = $data[kategori_monev]";
                    $resKatMonev = mysqli_query($conn, $sqlKatMonev);
                    $rowKatMonev = mysqli_fetch_assoc($resKatMonev);
                    ?>
                    <option value="<?= $rowKatMonev['id_kat_monev']; ?>" selected><?= $rowKatMonev['nama_kategori_monev']; ?></option>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="appsnama" class="col-md-2 col-form-label">Nama Aplikasi</label>
                <div class="col-md-10">
                  <select class="form-control" id="appsnama" name="appsnama">
                    <?php
                    $sqlApp = "SELECT * FROM aplikasi WHERE id_app = $data[nama_app]";
                    $sqlApp = $sqlApp . " ORDER BY id_app ASC";
                    $resApp = mysqli_query($conn, $sqlApp);
                    $rowApp = mysqli_fetch_assoc($resApp);
                    ?>
                    <option value="<?= $rowApp['id_app']; ?>" selected><?= $rowApp['judul']; ?></option>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="masalahmonev" class="col-md-2 col-form-label">Permasalahan</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="masalahmonev" name="masalahmonev" rows="3" placeholder="Enter Permasalahan" readonly><?= $data['masalah']; ?></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="buktidukung" class="col-md-2 col-form-label">Bukti Dukung</label>
                <div class="col-md-10">
                  <?php
                  if (!empty($data['bukti_dukung'])) { ?>
                    <a href="assets/file/aplikasi/monev/<?= $data['bukti_dukung']; ?>" target="_blank"><?= $data['bukti_dukung']; ?></a>
                  <?php } else {
                    echo '<b><u>File Tidak Ada</u></b>';
                  }
                  ?>
                </div>
              </div>
              <div class="form-group row">
                <label for="solusikembang" class="col-md-2 col-form-label">Solusi / Pengembangan</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="solusikembang" name="solusikembang" rows="3" placeholder="Enter Solusi / Pengembangan" readonly><?= $data['solusi_pengembang']; ?></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="user" class="col-md-2 col-form-label">User</label>
                <div class="col-md-5">
                  <input type="text" class="form-control" name="user" id="user" placeholder="Enter User" autocomplete="off" value="<?= $data['nama_team']; ?>" readonly>
                </div>
              </div>
              <div class="form-group row">
                <label for="responkoor" class="col-md-2 col-form-label">Respon Koordinator</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="responkoor" name="responkoor" rows="3" placeholder="Enter Respon Koordinator"></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="koornama" class="col-md-2 col-form-label">Koordinator</label>
                <div class="col-md-5">
                  <input type="text" class="form-control" name="koornama" id="koornama" placeholder="Enter Koordinator" autocomplete="off" value="<?= $_SESSION['userid']; ?>" readonly>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=monevapp">
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