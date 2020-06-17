<?php
// query tambah
if (isset($_POST['input'])) {
  $katmonev        = $_POST['katmonev'];
  $appsnama        = $_POST['appsnama'];
  $masalahmonev    = $_POST['masalahmonev'];
  $solusikembang   = $_POST['solusikembang'];
  $user            = $_POST['user'];

  // variabel upload file
  $buktidukung = $_FILES['buktidukung']['name'];
  $ukuran_file = $_FILES['buktidukung']['size'];
  $tipe_file = $_FILES['buktidukung']['type'];
  $tmp_file = $_FILES['buktidukung']['tmp_name'];

  // kapasitas size dalam Byte
  $space = 5242880;

  // direct penempatan file
  $lokasi = "assets/file/aplikasi/monev/";

  // Set path folder tempat menyimpan gambarnya
  $path = $lokasi . "" . $buktidukung;

  $res = true;

  if ($res) {
    if (!empty($buktidukung)) {
      // Cek apakah tipe file yang diupload adalah JPG / JPEG / PNG
      if ($tipe_file == "application/pdf") {
        // Jika tipe file yang diupload JPG / JPEG / PNG, lakukan :
        if ($ukuran_file <= $space) {
          // Jika ukuran file kurang dari sama dengan 5MB, lakukan :
          if (move_uploaded_file($tmp_file, $path)) {
            $sql = "INSERT INTO tbl_monev_app (nama_app,kategori_monev,masalah,bukti_dukung,solusi_pengembang,nama_team,status_monev,dlu_monev)
            VALUES ('$appsnama','$katmonev','$masalahmonev','$buktidukung','$solusikembang','$user','1','$datenow2')";

            if (mysqli_query($conn, $sql)) {
              echo '<script type="text/javascript">
                    alert("Data Monitoring Aplikasi Berhasil Ditambah");
                    window.location.href="t.php?page=monevapp";
                    </script>';
            } else {
              echo '<script type="text/javascript">
                    alert("Data Monitoring Aplikasi Gagal Ditambah");
                    window.location.href="t.php?page=monevapp&act=tambah";
                    </script>';
            }
          } else {
            // Jika gambar gagal diupload, Lakukan :
            echo '<script type="text/javascript">
                  alert("Maaf, File gagal untuk diupload.");
                  window.location.href="t.php?page=monevapp&act=tambah";
                  </script>';
          }
        } else {
          // Jika gambar gagal diupload, Lakukan :
          echo '<script type="text/javascript">
                alert("Maaf, Ukuran file yang diupload tidak boleh lebih dari 5MB");
                window.location.href="t.php?page=monevapp&act=tambah";
                </script>';
        }
      } else {
        // Jika ukuran file lebih dari 1MB, lakukan :
        echo '<script type="text/javascript">
              alert("Maaf, Tipe file yang diupload harus PDF");
              window.location.href="t.php?page=monevapp&act=tambah";
              </script>';
      }
    } else {
      $sql = "INSERT INTO tbl_monev_app (nama_app,kategori_monev,masalah,solusi_pengembang,nama_team,status_monev,dlu_monev)
            VALUES ('$appsnama','$katmonev','$masalahmonev','$solusikembang','$user','1','$datenow2')";

      if (mysqli_query($conn, $sql)) {
        echo '<script type="text/javascript">
        alert("Data Monitoring Aplikasi Berhasil Ditambah");
        window.location.href="t.php?page=monevapp";
        </script>';
      } else {
        echo '<script type="text/javascript">
        alert("Data Monitoring Aplikasi Gagal Ditambah");
        </script>';
      }
    }
  }
}
?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('monevapp').classList.add('active');
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
                <label for="katmonev" class="col-md-2 col-form-label">Kategori Monev</label>
                <div class="col-md-2">
                  <select class="form-control" id="katmonev" name="katmonev">
                    <option value="0">-</option>
                    <?php
                    $sqlKatMonev = "SELECT * FROM tbl_kategori_monev";
                    $resKatMonev = mysqli_query($conn, $sqlKatMonev);
                    while ($rowKatMonev = mysqli_fetch_assoc($resKatMonev)) { ?>
                      <option value="<?= $rowKatMonev['id_kat_monev']; ?>"><?= $rowKatMonev['nama_kategori_monev']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="appsnama" class="col-md-2 col-form-label">Nama Aplikasi</label>
                <div class="col-md-10">
                  <select class="form-control" id="appsnama" name="appsnama">
                    <option value="0">-</option>
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
                <label for="masalahmonev" class="col-md-2 col-form-label">Permasalahan</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="masalahmonev" name="masalahmonev" rows="3" placeholder="Enter Permasalahan"></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="buktidukung" class="col-md-2 col-form-label">Bukti Dukung</label>
                <div class="col-md-10">
                  <div class="custom-file">
                    <!-- upload cek footer -->
                    <input type="file" class="custom-file-input" id="buktidukung" name="buktidukung">
                    <label class="custom-file-label" for="buktidukung">Choose file</label>
                  </div>
                </div>
              </div>
              <div class="form-group row">
                <label for="buktidukung" class="col-md-2 col-form-label"></label>
                <div class="col-md-10">
                  Anda dapat mengupload format <b>PDF</b>. Maximum file size <b>5 MB</b>.
                </div>
              </div>
              <div class="form-group row">
                <label for="solusikembang" class="col-md-2 col-form-label">Solusi / Pengembangan</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="solusikembang" name="solusikembang" rows="3" placeholder="Enter Solusi / Pengembangan"></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="user" class="col-md-2 col-form-label">User</label>
                <div class="col-md-5">
                  <input type="text" class="form-control" name="user" id="user" placeholder="Enter User" autocomplete="off" value="<?= $_SESSION['userid']; ?>" readonly>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=monevapp">
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