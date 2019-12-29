<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// validasi tambah
if (isset($_POST['input'])) {
  $penilaian = $_POST['penilaian'];
  $ketfeedback = $_POST['ketfeedback'];

  // variabel untuk upload file
  $fileupload = $_FILES['filedukung']['name'];
  $ukuran_file = $_FILES['filedukung']['size'];
  $tipe_file = $_FILES['filedukung']['type'];
  $tmp_file = $_FILES['filedukung']['tmp_name'];

  // kapasitas size dalam byte
  $space = 26214400;

  // Set path folder tempat menyimpan file upload
  $path = "assets/file/feedback/" . $fileupload;

  $res = true;

  if ($res) {
    // Cek apakah tipe file yang akan diupload
    if ($tipe_file == "application/pdf" || $tipe_file == "image/jpg" || $tipe_file == "image/jpeg" || $tipe_file == "image/png") {
      // Jika tipe file yang diupload seperti diatas, lakukan :
      if ($ukuran_file <= $space) {
        // Jika ukuran file kurang dari sama dengan kapasitas size, lakukan :
        if (move_uploaded_file($tmp_file, $path)) {
          $sql = "INSERT INTO tb_feedback (idpenilaian, ket_feedback, userid_created, date_created)
                VALUES ('$penilaian', '$ketfeedback', '$_SESSION[userid]', '$datenow4')";
          mysqli_query($conn, $sql);

          $query2 = mysqli_query($conn, "SELECT idfeedback FROM tb_feedback ORDER BY idfeedback DESC LIMIT 1");
          $qdata = mysqli_fetch_assoc($query2);
          $feedback = $qdata['idfeedback'];
          $sql2 = "UPDATE tb_feedback 
                  SET files_feedback = '$fileupload'
                  WHERE idfeedback = '$feedback'";

          if (mysqli_query($conn, $sql2)) {
            echo '<script type="text/javascript">
            alert("Data Penjelasan Data Pendukung Berhasil Ditambah");
            </script>';
          } else {
            echo '<script type="text/javascript">
            alert("Data Penjelasan Data Pendukung Gagal Ditambah");
            </script>';
          }
        } else {
          // Jika gambar gagal diupload, lakukan :
          echo '<script type="text/javascript">
          alert("Maaf, File gagal untuk diupload.");
          </script>';
        }
      } else {
        // Jika gagal diupload, lakukan :
        echo '<script type="text/javascript">
        alert("Maaf, Ukuran file yang diupload tidak boleh lebih dari 25MB");
        </script>';
      }
    } else {
      // Jika ukuran file tidak sesuai yang inginkan, lakukan :
      echo '<script type="text/javascript">
      alert("Maaf, tipe file yang diupload harus .PDF / .JPG .JPEG .PNG");
      </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM tb_penilaian a 
          LEFT JOIN tb_indikator b ON b.idindikator = a.idindikator 
          LEFT JOIN tb_opdterkait c ON c.idpenilaian = a.idpenilaian
          LEFT JOIN tb_opd d ON d.idopd = c.idopd 
          WHERE a.idpenilaian = '$id'";
$resUbah = mysqli_query($conn, $sqlUbah);
$data = mysqli_fetch_assoc($resUbah);
?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('nilaikematangan').classList.add('active');
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
          <h6 class="m-0 font-weight-bold text-primary">Form Penjelasan Data Pendukung <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
            <form method="post" enctype="multipart/form-data">
              <!-- input hidden utk ambil id -->
              <input type="hidden" class="form-control" name="penilaian" id="penilaian" placeholder="Enter Penilaian" autocomplete="off" value="<?= $data['idpenilaian']; ?>" readonly>
              <!-- end input hidden utk ambil id -->
              <fieldset disabled>
                <div class="form-group row">
                  <label for="thnnilaimatang" class="col-md-2 col-form-label">Tahun</label>
                  <div class="col-md-2">
                    <input type="text" class="form-control" name="thnnilaimatang" id="thnnilaimatang" placeholder="Enter Tahun Nilai" autocomplete="off" value="<?= $data['tahun_penilaian']; ?>" readonly>
                  </div>
                </div>
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
                <label for="nilaimatang" class="col-md-2 col-form-label">Nilai Kematangan (Nilai Pusat)</label>
                <div class="col-md-10">
                  <?php
                  $sqlNilai = "SELECT * FROM tb_level WHERE idpertanyaan = " . $data['idindikator'];
                  $resNilai = mysqli_query($conn, $sqlNilai);
                  while ($dataNIlai = mysqli_fetch_assoc($resNilai)) { ?>
                    <div class="form-check">
                      <?php
                        if ($data['nilaikematangan'] == $dataNIlai['nilaimadiri']) { ?>
                        <input class="form-check-input" type="radio" name="nilaimatang" id="nilaimatang" value="option2" checked>
                        <label class="form-check-label" for="nilaimatang">
                          <?= $dataNIlai['namalevel'] . " - " . $dataNIlai['penjelasan_level']; ?>
                        </label>
                      <?php } else { ?>
                        <input class="form-check-input" type="radio" name="nilaimatang" id="nilaimatang" value="option2" disabled>
                        <label class="form-check-label" for="nilaimatang">
                          <?= $dataNIlai['namalevel'] . " - " . $dataNIlai['penjelasan_level']; ?>
                        </label>
                      <?php } ?>
                    </div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group row">
                <label for="nilaimandiri" class="col-md-2 col-form-label">Penilaian Mandiri</label>
                <div class="col-md-10">
                  <?php
                  $sqlMandiri = "SELECT * FROM tb_level WHERE idpertanyaan = " . $data['idindikator'];
                  $resMandiri = mysqli_query($conn, $sqlMandiri);
                  while ($dataMandiri = mysqli_fetch_assoc($resMandiri)) { ?>
                    <div class="form-check">
                      <?php
                        if ($data['penilaianmandiri'] == $dataMandiri['nilaimadiri']) { ?>
                        <input class="form-check-input" type="radio" name="nilaimandiri" id="nilaimandiri" value="<?= $dataMandiri['idlevel']; ?>" checked>
                        <label class="form-check-label" for="nilaimandiri">
                          <?= $dataMandiri['namalevel'] . " - " . $dataMandiri['penjelasan_level']; ?>
                        </label>
                      <?php } else { ?>
                        <input class="form-check-input" type="radio" name="nilaimandiri" id="nilaimandiri" value="<?= $dataMandiri['idlevel']; ?>" disabled>
                        <label class="form-check-label" for="nilaimandiri">
                          <?= $dataMandiri['namalevel'] . " - " . $dataMandiri['penjelasan_level']; ?>
                        </label>
                      <?php } ?>
                    </div>
                  <?php } ?>
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
              <div class="form-group row">
                <label for="ketfeedback" class="col-md-2 col-form-label">Penjelasan Data Pendukung</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="ketfeedback" name="ketfeedback" rows="3" placeholder="Enter Penjelasan Data Pendukung"></textarea>
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
                  Anda dapat mengupload format <b>.PDF / .JPG .JPEG .PNG</b> dengan maximum file size <b>25 MB</b>.
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=nilaikematangan">
                  <span class="text">Kembali</span>
                </a>
                <button type="submit" class="btn btn-primary" name="input">Simpan</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xl-12 col-lg-12">
      <div class="card shadow mb-4">
        <!-- Card Header - Dropdown -->
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
          <h6 class="m-0 font-weight-bold text-primary">Tabel Penjelasan Data Pendukung Perangkat Daerah</h6>
        </div>
        <div class="card-body">
          <?php include 'tabel_feedbackopd.php'; ?>
        </div>
      </div>
    </div>

  </div>

</div>