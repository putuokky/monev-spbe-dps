<?php
// query tambah
if (isset($_POST['input'])) {
  $jnslaporan     = $_POST['jnslaporan'];
  $applapor       = $_POST['applapor'];
  $masalahlapor   = $_POST['masalahlapor'];
  $user           = $_POST['user'];

  // variabel upload file
  $buktimasalah = $_FILES['buktimasalah']['name'];
  $ukuran_file = $_FILES['buktimasalah']['size'];
  $tipe_file = $_FILES['buktimasalah']['type'];
  $tmp_file = $_FILES['buktimasalah']['tmp_name'];

  // kapasitas size dalam Byte
  $space = 5242880;

  // direct penempatan file
  $lokasi = "assets/file/aplikasi/lapormasalah/";

  // Set path folder tempat menyimpan gambarnya
  $path = $lokasi . "" . $buktimasalah;

  $res = true;

  if ($res) {
    if (!empty($buktimasalah)) {
      // Cek apakah tipe file yang diupload adalah JPG / JPEG / PNG
      if ($tipe_file == "application/pdf") {
        // Jika tipe file yang diupload JPG / JPEG / PNG, lakukan :
        if ($ukuran_file <= $space) {
          // Jika ukuran file kurang dari sama dengan 5MB, lakukan :
          if (move_uploaded_file($tmp_file, $path)) {
            $sql = "INSERT INTO tbl_lapormasalah (jns_laporan,nama_app,permasalahan,bukti_lapor,nama_input,status_lapor,dlu)
            VALUES ('$jnslaporan','$applapor','$masalahlapor','$buktimasalah','$user','1','$datenow2')";

            if (mysqli_query($conn, $sql)) {
              echo '<script type="text/javascript">
                    alert("Data Lapor Permasalahan Berhasil Ditambah");
                    window.location.href="t.php?page=lapormasalah";
                    </script>';
            } else {
              echo '<script type="text/javascript">
                    alert("Data Lapor Permasalahan Gagal Ditambah");
                    window.location.href="t.php?page=lapormasalah&act=tambah";
                    </script>';
            }
          } else {
            // Jika gambar gagal diupload, Lakukan :
            echo '<script type="text/javascript">
                  alert("Maaf, File gagal untuk diupload.");
                  window.location.href="t.php?page=lapormasalah&act=tambah";
                  </script>';
          }
        } else {
          // Jika gambar gagal diupload, Lakukan :
          echo '<script type="text/javascript">
                alert("Maaf, Ukuran file yang diupload tidak boleh lebih dari 5MB");
                window.location.href="t.php?page=lapormasalah&act=tambah";
                </script>';
        }
      } else {
        // Jika ukuran file lebih dari 1MB, lakukan :
        echo '<script type="text/javascript">
              alert("Maaf, Tipe file yang diupload harus PDF");
              window.location.href="t.php?page=lapormasalah&act=tambah";
              </script>';
      }
    } else {
      $sql = "INSERT INTO tbl_lapormasalah (jns_laporan,nama_app,permasalahan,nama_input,status_lapor,dlu)
      VALUES ('$jnslaporan','$applapor','$masalahlapor','$user','1','$datenow2')";

      if (mysqli_query($conn, $sql)) {
        echo '<script type="text/javascript">
                    alert("Data Lapor Permasalahan Berhasil Ditambah");
                    window.location.href="t.php?page=lapormasalah";
                    </script>';
      } else {
        echo '<script type="text/javascript">
                    alert("Data Lapor Permasalahan Gagal Ditambah");
                    </script>';
      }
    }
  }
}
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
          <h6 class="m-0 font-weight-bold text-primary">Form Tambah <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
            <form method="post" enctype="multipart/form-data">
              <div class="form-group row">
                <label for="jnslaporan" class="col-md-2 col-form-label">Jenis Laporan</label>
                <div class="col-md-2">
                  <select class="form-control" id="jnslaporan" name="jnslaporan">
                    <option>-</option>
                    <?php
                    $sqlJnsLapor = "SELECT * FROM tbl_jenis_laporan";
                    $resJnsLapor = mysqli_query($conn, $sqlJnsLapor);
                    while ($rowJnsLapor = mysqli_fetch_assoc($resJnsLapor)) { ?>
                      <option value="<?= $rowJnsLapor['id_jenis_laporan']; ?>"><?= $rowJnsLapor['nama_jenis_laporan']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="applapor" class="col-md-2 col-form-label">Aplikasi</label>
                <div class="col-md-10">
                  <select class="form-control" id="applapor" name="applapor">
                    <option>-</option>
                    <?php
                    if ($_SESSION['opd'] == 0) {
                      $sqlApp = "SELECT * FROM aplikasi";
                    } else {
                      $sqlApp = "SELECT * FROM aplikasi WHERE unit = $_SESSION[opd]";
                    }
                    $sqlApp = $sqlApp . " ORDER BY id_app ASC";
                    $resApp = mysqli_query($conn, $sqlApp);
                    while ($rowApp = mysqli_fetch_assoc($resApp)) { ?>
                      <option value="<?= $rowApp['id_app']; ?>"><?= $rowApp['judul']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="masalahlapor" class="col-md-2 col-form-label">Permasalahan</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="masalahlapor" name="masalahlapor" rows="3" placeholder="Enter Permasalahan"></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="buktimasalah" class="col-md-2 col-form-label">Bukti</label>
                <div class="col-md-10">
                  <div class="custom-file">
                    <!-- upload cek footer -->
                    <input type="file" class="custom-file-input" id="buktimasalah" name="buktimasalah">
                    <label class="custom-file-label" for="buktimasalah">Choose file</label>
                  </div>
                </div>
              </div>
              <div class="form-group row">
                <label for="buktimasalah" class="col-md-2 col-form-label"></label>
                <div class="col-md-10">
                  Anda dapat mengupload format <b>PDF</b>. Maximum file size <b>5 MB</b>.
                </div>
              </div>
              <div class="form-group row">
                <label for="user" class="col-md-2 col-form-label">User</label>
                <div class="col-md-5">
                  <input type="text" class="form-control" name="user" id="user" placeholder="Enter User" autocomplete="off" value="<?= $_SESSION['userid']; ?>" readonly>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=lapormasalah">
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