<?php
// query tambah
if (isset($_POST['input'])) {
  $tahun                = $_POST['tahun'];
  $nama_indikator       = $_POST['nama_indikator'];
  $nama_level           = $_POST['nama_level'];
  $pertanyaan           = $_POST['pertanyaan'];
  $penjelasanevaluasi   = $_POST['penjelasanevaluasi'];

  $res = true;

  if ($res) {
    $sql = "INSERT INTO tb_evaluasi (tahun_evaluasi, idlevel, idindikator, idpertanyaan, penjelasan_evaluasi)
      VALUES ('$tahun', '$nama_level', '$nama_indikator', '$pertanyaan', '$penjelasanevaluasi')";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Evaluasi Berhasil Ditambah");
            window.location.href="t.php?page=evaluasi";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Evaluasi Gagal Ditambah");
            window.location.href="t.php?page=evaluasi&act=tambah";
            </script>';
    }
  }
}
?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('evaluasi').classList.add('active');
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
                <label for="tahun" class="col-md-2 col-form-label">Tahun</label>
                <div class="col-md-2">
                  <select class="form-control" id="tahun" name="tahun">
                    <option value="0">-</option>
                    <?php
                    for ($i = $tahun_old; $i <= $thnnow; $i++) { ?>
                      <option value="<?= $i; ?>"><?= $i; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="nama_indikator" class="col-md-2 col-form-label">Nama Indikator</label>
                <div class="col-md-10">
                  <select class="form-control" id="nama_indikator" name="nama_indikator">
                    <option value="0">-</option>
                    <?php
                    $sqlIndikator = "SELECT * FROM tb_indikator";
                    $resIndikator = mysqli_query($conn, $sqlIndikator);
                    while ($rowIndikator = mysqli_fetch_assoc($resIndikator)) { ?>
                      <option value="<?= $rowIndikator['idindikator']; ?>"><?= "Indikator " . $rowIndikator['indikator'] . " : " . $rowIndikator['namaindikator'] . " (" . $rowIndikator['tahun_indikator'] . ")"; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="nama_level" class="col-md-2 col-form-label">Nama Level</label>
                <div class="col-md-10 ">
                  <select class="form-control" id="nama_level" name="nama_level" disabled>
                    <option value="0">-</option>

                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="pertanyaan" class="col-md-2 col-form-label">Pertanyaan</label>
                <div class="col-md-10">
                  <select class="form-control" id="fpertanyaan" name="pertanyaan" disabled>
                    <option value="0">-</option>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="penjelasanevaluasi" class="col-md-2 col-form-label">Penjelasan Evaluasi</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="penjelasanevaluasi" name="penjelasanevaluasi" rows="3" placeholder="Enter Penjelasan Evaluasi"></textarea>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=evaluasi">
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