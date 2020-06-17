<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query edit
if (isset($_POST['update'])) {
  $respontl = $_POST['respontl'];

  $res = true;

  if ($res) {
    $sql = "UPDATE tbl_lapormasalah 
        SET status_lapor = '2',
        kat_tl = '1',
        respon_lapor = '$respontl'
        WHERE id_lapormasalah = '$id'";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Respon Lapor Permasalahan Berhasil Tindak Lanjut");
            window.location.href="t.php?page=lapormasalah";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Respon Lapor Permasalahan Gagal Tindak Lanjut");
            window.location.href="t.php?page=lapormasalah&act=respontl&id=' . $id . '";
            </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM tbl_lapormasalah WHERE id_lapormasalah  = '$id'";
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
          <h6 class="m-0 font-weight-bold text-primary">Form Respon Tindak Lanjut <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
            <form method="post" enctype="multipart/form-data">
              <div class="form-group row">
                <label for="jnslaporan" class="col-md-2 col-form-label">Jenis Laporan</label>
                <div class="col-md-2">
                  <select class="form-control" id="jnslaporan" name="jnslaporan">
                    <?php
                    $sqlJnsLapor = "SELECT * FROM tbl_jenis_laporan WHERE id_jenis_laporan = $data[jns_laporan]";
                    $resJnsLapor = mysqli_query($conn, $sqlJnsLapor);
                    $rowJnsLapor = mysqli_fetch_assoc($resJnsLapor);
                    ?>
                    <option value="<?= $rowJnsLapor['id_jenis_laporan']; ?>" selected><?= $rowJnsLapor['nama_jenis_laporan']; ?></option>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="applapor" class="col-md-2 col-form-label">Aplikasi</label>
                <div class="col-md-10">
                  <select class="form-control" id="applapor" name="applapor">
                    <?php
                    $sqlApp = "SELECT * FROM aplikasi WHERE id_app = $data[nama_app]";
                    $sqlApp = $sqlApp . " ORDER BY id_app ASC";
                    $resApp = mysqli_query($conn, $sqlApp);
                    $rowApp = mysqli_fetch_assoc($resApp);
                    ?>
                    <option value="<?= $rowApp['id_app']; ?>"><?= $rowApp['judul']; ?></option>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="masalahlapor" class="col-md-2 col-form-label">Permasalahan</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="masalahlapor" name="masalahlapor" rows="3" placeholder="Enter Permasalahan" readonly><?= $data['permasalahan']; ?></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="buktimasalah" class="col-md-2 col-form-label">Bukti</label>
                <div class="col-md-10">
                  <?php
                  if (!empty($data['bukti_lapor'])) { ?>
                    <a href="assets/file/aplikasi/lapormasalah/<?= $data['bukti_lapor']; ?>" target="_blank"><?= $data['bukti_lapor']; ?></a>
                  <?php } else {
                    echo '<b><u>File Tidak Ada</u></b>';
                  }
                  ?>
                </div>
              </div>
              <div class="form-group row">
                <label for="user" class="col-md-2 col-form-label">User</label>
                <div class="col-md-5">
                  <input type="text" class="form-control" name="user" id="user" placeholder="Enter User" autocomplete="off" value="<?= $data['nama_input']; ?>" readonly>
                </div>
              </div>
              <div class="form-group row">
                <label for="respontl" class="col-md-2 col-form-label">Respon Tindak Lanjut</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="respontl" name="respontl" rows="3" placeholder="Enter Respon Tindak Lanjut"></textarea>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=lapormasalah">
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