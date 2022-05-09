<?php
// query tambah
if (isset($_POST['input'])) {
  $namaindikator  = $_POST['namaindikator'];
  $pertanyaan    = $_POST['pertanyaan'];
  $thntanya    = $_POST['thntanya'];

  $res = true;

  if ($res) {
    $sql = "INSERT INTO tb_pertanyaan (idindikator, pertanyaan, tahun_pertanyaan)
      VALUES ('$namaindikator', '$pertanyaan', '$thntanya')";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Pertanyaan Berhasil Ditambah");
            window.location.href="t.php?page=pertanyaan";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Pertanyaan Gagal Ditambah");
            window.location.href="t.php?page=pertanyaan&act=tambah";
            </script>';
    }
  }
}
?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('pertanyaan').classList.add('active');
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
                <label for="namaindikator" class="col-md-2 col-form-label">Nama Indikator</label>
                <div class="col-md-10">
                  <select class="form-control" id="namaindikator" name="namaindikator">
                    <option value="0">-</option>
                    <?php
                    $sqlIndikator = "SELECT * FROM tb_indikator";
                    $resIndikator = mysqli_query($conn, $sqlIndikator);
                    while ($rowIndikator = mysqli_fetch_assoc($resIndikator)) { ?>
                      <option value="<?= $rowIndikator['idindikator']; ?>">Indikator <?= $rowIndikator['indikator']; ?> - <?= $rowIndikator['namaindikator']; ?> (<?= $rowIndikator['tahun_indikator']; ?>)</option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="pertanyaan" class="col-md-2 col-form-label">Pertanyaan</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="pertanyaan" name="pertanyaan" rows="3" placeholder="Enter Pertanyaan"></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="thntanya" class="col-md-2 col-form-label">Tahun Pertanyaan</label>
                <div class="col-md-2">
                  <select class="form-control" id="thntanya" name="thntanya">
                    <option value="0">-</option>
                    <?php
                    for ($i = 2017; $i <= $thnnow; $i++) { ?>
                      <option value="<?= $i; ?>"><?= $i; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=pertanyaan">
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