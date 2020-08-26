<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query edit
if (isset($_POST['update'])) {
  $dasarhukum = $_FILES['dasarhukum']['name'];
  $ukuran_file = $_FILES['dasarhukum']['size'];
  $tipe_file = $_FILES['dasarhukum']['type'];
  $tmp_file = $_FILES['dasarhukum']['tmp_name'];

  // query menampilkan data dengan id
  $sqlGetId = "SELECT * FROM aplikasi WHERE id_app = '$id'";
  $resGetId = mysqli_query($conn, $sqlGetId);
  $data = mysqli_fetch_assoc($resGetId);

  // kapasitas size dalam Byte
  $space = 5242880;

  // direct penempatan file
  $lokasi = "assets/file/aplikasi/dasarhukum/";

  // path lokasi gambar
  $file = $lokasi . "" . $data['dasarhukum'];

  // Set path folder tempat menyimpan gambarnya
  $path = $lokasi . "" . $dasarhukum;

  $res = true;

  if ($res) {
    if (!empty($dasarhukum)) {
      // Cek apakah tipe file yang diupload adalah JPG / JPEG / PNG
      if ($tipe_file == "application/pdf") {
        // Jika tipe file yang diupload JPG / JPEG / PNG, lakukan :
        if ($ukuran_file <= $space) {
          // Jika ukuran file kurang dari sama dengan 5MB, lakukan :
          if (move_uploaded_file($tmp_file, $path)) {
            $sql = "UPDATE aplikasi 
                    SET dasarhukum = '$dasarhukum'
                    WHERE id_app = '$id'";

            if (mysqli_query($conn, $sql)) {
              echo '<script type="text/javascript">
                    alert("File Dasar Hukum Data Aplikasi Berhasil Ditambah");
                    window.location.href="t.php?page=app";
                    </script>';
            } else {
              echo '<script type="text/javascript">
                    alert("File Dasar Hukum Data Aplikasi Gagal Ditambah");
                    window.location.href="t.php?page=app&act=upfile&id=' . $id . '";
                    </script>';
            }
          } else {
            // Jika gambar gagal diupload, Lakukan :
            echo '<script type="text/javascript">
                  alert("Maaf, Gambar gagal untuk diupload.");
                  window.location.href="t.php?page=app&act=upfile&id=' . $id . '";
                  </script>';
          }
        } else {
          // Jika gambar gagal diupload, Lakukan :
          echo '<script type="text/javascript">
                alert("Maaf, Ukuran gambar yang diupload tidak boleh lebih dari 5MB");
                window.location.href="t.php?page=app&act=upfile&id=' . $id . '";
                </script>';
        }
      } else {
        // Jika ukuran file lebih dari 1MB, lakukan :
        echo '<script type="text/javascript">
              alert("Maaf, Tipe gambar yang diupload harus PDF.");
              window.location.href="t.php?page=app&act=upfile&id=' . $id . '";
              </script>';
      }
    } else {
      $sql = "UPDATE aplikasi 
              SET dasarhukum = '$dasarhukum'
              WHERE id_app = '$id'";

      if (!unlink($file)) {
        echo ("Error deleting $file");
      } else {
        if (mysqli_query($conn, $sql)) {
          echo '<script type="text/javascript">
                alert("File Dasar Hukum Data Aplikasi Berhasil Diedit");
                window.location.href="t.php?page=app";
                </script>';
        } else {
          echo '<script type="text/javascript">
                alert("File Dasar Hukum Data Aplikasi Gagal Diedit");
                window.location.href="t.php?page=app&act=upfile&id=' . $id . '";
                </script>';
        }
      }
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM aplikasi WHERE id_app = '$id'";
$resUbah = mysqli_query($conn, $sqlUbah);
$data = mysqli_fetch_assoc($resUbah);
?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('app').classList.add('active');
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
          <h6 class="m-0 font-weight-bold text-primary">Form Upload File <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
            <form method="post" enctype="multipart/form-data">
              <div class="form-group row">
                <label for="judul" class="col-md-2 col-form-label">Judul</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="judul" id="judul" value="<?= $data['judul']; ?>" placeholder="Enter Judul" autocomplete="off" readonly>
                </div>
              </div>
              <div class="form-group row">
                <label for="namakatapp" class="col-md-2 col-form-label">Dasar Hukum</label>
                <div class="col-md-10">
                  <div class="custom-file">
                    <!-- upload cek footer -->
                    <input type="file" class="custom-file-input" id="dasarhukum" name="dasarhukum">
                    <label class="custom-file-label" for="dasarhukum">Choose file</label>
                  </div>
                </div>
              </div>
              <div class="form-group row">
                <label for="namakatapp" class="col-md-2 col-form-label"></label>
                <div class="col-md-10">
                  Anda dapat mengupload format <b>PDF</b>. Maximum file size <b>5 MB</b>.
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=app">
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