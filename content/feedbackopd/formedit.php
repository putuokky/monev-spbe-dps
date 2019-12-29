<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query edit
if (isset($_POST['update'])) {
  $ketfeedback = $_POST['ketfeedback'];

  // variabel untuk upload file
  $fileupload = $_FILES['filedukung']['name'];
  $ukuran_file = $_FILES['filedukung']['size'];
  $tipe_file = $_FILES['filedukung']['type'];
  $tmp_file = $_FILES['filedukung']['tmp_name'];

  // query menampilkan data dengan id
  $sqlGetId = "SELECT * FROM tb_feedback WHERE idfeedback = '$id'";
  $resGetId = mysqli_query($conn, $sqlGetId);
  $data = mysqli_fetch_assoc($resGetId);

  // path lokasi gambar
  $file = "assets/file/feedback/" . $data['files_feedback'];

  // kapasitas size
  $space = 5242880;

  // Set path folder tempat menyimpan file upload
  $path = "assets/file/feedback/" . $fileupload;

  $res = true;

  if ($res) {
    // Cek apakah tipe file yang akan diupload
    if ($tipe_file == "application/pdf") {
      // Jika tipe file yang diupload seperti diatas, lakukan :
      if ($ukuran_file <= $space) {
        // Jika ukuran file kurang dari sama dengan kapasitas size, lakukan :
        if (move_uploaded_file($tmp_file, $path)) {
          $query2 = mysqli_query($conn, "SELECT idfeedback FROM tb_feedback ORDER BY idfeedback DESC LIMIT 1");
          $qdata = mysqli_fetch_assoc($query2);
          $feedback = $qdata['idfeedback'];
          $sql2 = "UPDATE tb_feedback 
                  SET ket_feedback = '$ketfeedback',
                  files_feedback = '$fileupload'
                  WHERE idfeedback = '$id'";

          if (!unlink($file)) {
            echo ("Error deleting $file");
          } else {
            if (mysqli_query($conn, $sql2)) {
              echo '<script type="text/javascript">
                    alert("Data Feedback OPD Berhasil Diedit");
                    window.location.href="t.php?page=feedbackopd";
                    </script>';
            } else {
              echo '<script type="text/javascript">
                    alert("Data Feedback OPD Gagal Diedit");
                    window.location.href="t.php?page=feedbackopd";
                    </script>';
            }
          }
        } else {
          // Jika gambar gagal diupload, lakukan :
          echo '<script type="text/javascript">
          alert("Maaf, Gambar gagal untuk diupload.");
          window.location.href="t.php?page=feedbackopd";
          </script>';
        }
      } else {
        // Jika gagal diupload, lakukan :
        echo '<script type="text/javascript">
        alert("Maaf, Ukuran file yang diupload tidak boleh lebih dari 5MB");
        window.location.href="t.php?page=feedbackopd";
        </script>';
      }
    } else {
      // Jika ukuran file tidak sesuai yang inginkan, lakukan :
      echo '<script type="text/javascript">
      alert("Maaf, tipe file yang diupload harus .PDF");
      window.location.href="t.php?page=feedbackopd";
      </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM tb_feedback a 
            LEFT JOIN tb_penilaian b ON b.idpenilaian = a.idpenilaian 
            LEFT JOIN tb_indikator c ON c.idindikator = b.idindikator
            WHERE a.idfeedback = '$id'";
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
          <h6 class="m-0 font-weight-bold text-primary">Form Ubah <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
            <form method="post" enctype="multipart/form-data">
              <div class="alert alert-primary" role="alert">
                Penilaian Kematangan
              </div>
              <fieldset disabled>
                <div class="form-group row">
                  <label for="namaindikator" class="col-md-2 col-form-label">Indikator</label>
                  <div class="col-md-10">
                    <textarea class="form-control" id="namaindikator" name="namaindikator" rows="3" placeholder="Enter Nama Indikator"><?= "Indikator " . $data['idindikator'] . " : " . $data['namaindikator']; ?></textarea>
                  </div>
                </div>
                <div class="form-group row">
                  <label for="rekomen" class="col-md-2 col-form-label">Rekomendasi</label>
                  <div class="col-md-10">
                    <textarea class="form-control" id="rekomen" name="rekomen" rows="4" placeholder="Enter Rekomendasi"><?= $data['rekomendasi']; ?></textarea>
                  </div>
                </div>
              </fieldset>
              <div class="form-group row">
                <label for="nilaimatang" class="col-md-2 col-form-label">Nilai Kematangan</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="nilaimatang" id="nilaimatang" placeholder="Enter Nilai Kematangan" autocomplete="off" value="<?= $data['nilaikematangan']; ?>" readonly>
                </div>
              </div>
              <div class="form-group row">
                <label for="nilaimandiri" class="col-md-2 col-form-label">Penilaian Mandiri</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="nilaimandiri" id="nilaimandiri" placeholder="Enter Penilaian Mandiri" autocomplete="off" value="<?= $data['penilaianmandiri']; ?>" readonly>
                </div>
              </div>
              <fieldset disabled>
                <div class="form-group row">
                  <label for="tindaklanjut" class="col-md-2 col-form-label">Tindak Lanjut</label>
                  <div class="col-md-10">
                    <textarea class="form-control" id="tindaklanjut" name="tindaklanjut" rows="3" placeholder="Enter Tindak Lanjut"><?= $data['tindaklanjut']; ?></textarea>
                  </div>
                </div>
              </fieldset>
              <div class="alert alert-primary" role="alert">
                Feedback OPD
              </div>
              <div class="form-group row">
                <label for="ketfeedback" class="col-md-2 col-form-label">Feedback</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="ketfeedback" name="ketfeedback" rows="3" placeholder="Enter Feedback"><?= $data['ket_feedback']; ?></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="filedukung" class="col-md-2 col-form-label">File Pendukung</label>
                <div class="col-md-10">
                  <div class="custom-file">
                    <!-- upload file dokumen/gambar cek footer -->
                    <input type="file" class="custom-file-input" id="filedukung" name="filedukung">
                    <label class="custom-file-label" for="filedukung">Choose file</label>
                  </div>
                </div>
              </div>
              <div class="form-group row">
                <label for="namakatapp" class="col-md-2 col-form-label"></label>
                <div class="col-md-10">
                  Anda dapat mengupload format <b>.PDF</b> dengan maximum file size <b>5 MB</b>.
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=feedbackopd">
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