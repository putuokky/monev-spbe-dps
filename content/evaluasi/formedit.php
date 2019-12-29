<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query edit
if (isset($_POST['update'])) {
  $tahun                = $_POST['tahun'];
  $nama_indikator       = $_POST['nama_indikator'];
  $nama_level           = $_POST['nama_level'];
  $pertanyaan           = $_POST['pertanyaan'];
  $penjelasanevaluasi   = $_POST['penjelasanevaluasi'];

  $res = true;

  if ($res) {
    $sql = "UPDATE tb_evaluasi 
        SET tahun_evaluasi = '$tahun',
        idlevel = '$nama_level',
        idindikator = '$nama_indikator',
        idpertanyaan = '$pertanyaan',
        penjelasan_evaluasi = '$penjelasanevaluasi'
        WHERE idevaluasi = '$id'";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Evaluasi Berhasil Diedit");
            window.location.href="t.php?page=evaluasi";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Evaluasi Gagal Diedit");
            window.location.href="t.php?page=evaluasi";
            </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM tb_evaluasi WHERE idevaluasi = '$id'";
$resUbah = mysqli_query($conn, $sqlUbah);
$data = mysqli_fetch_assoc($resUbah);

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
          <h6 class="m-0 font-weight-bold text-primary">Form Ubah <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
            <form method="post">
              <div class="form-group row">
                <label for="tahun" class="col-md-2 col-form-label">Tahun</label>
                <div class="col-md-2">
                  <select class="form-control" id="tahun" name="tahun">
                    <?php
                    $thnnow = date('Y');
                    for ($i = 2015; $i <= $thnnow; $i++) {
                      if ($data['tahun_evaluasi'] == $i) { ?>
                        <option value="<?= $i; ?>" selected><?= $i; ?></option>
                      <?php } else { ?>
                        <option value="<?= $i; ?>"><?= $i; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="nama_indikator" class="col-md-2 col-form-label">Nama Indikator</label>
                <div class="col-md-10">
                  <select class="form-control" id="sel_depart" name="nama_indikator">
                    <option value="0">-</option>
                    <?php
                    $sqlIndikator = "SELECT * FROM tb_indikator";
                    $resIndikator = mysqli_query($conn, $sqlIndikator);
                    while ($rowIndikator = mysqli_fetch_assoc($resIndikator)) {
                      if ($rowIndikator['idindikator'] == $data['idindikator']) : ?>
                        <option value="<?= $rowIndikator['idindikator']; ?>" selected><?= "Indikator " . $rowIndikator['indikator'] . " : " . $rowIndikator['namaindikator']; ?></option>
                      <?php else : ?>
                        <option value="<?= $rowIndikator['idindikator']; ?>"><?= "Indikator " . $rowIndikator['indikator'] . " : " . $rowIndikator['namaindikator']; ?></option>
                      <?php endif; ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="nama_level" class="col-md-2 col-form-label">Nama Level</label>
                <div class="col-md-10 ">
                  <select class="form-control" id="nama_level" name="nama_level">
                    <option value="0">-</option>
                    <?php
                    $sqlLevel = "SELECT * FROM tb_level a 
                                  LEFT JOIN tb_pertanyaan b ON a.idpertanyaan = b.idpertanyaan 
                                  LEFT JOIN tb_indikator c ON b.idindikator = c.idindikator";
                    $resLevel = mysqli_query($conn, $sqlLevel);
                    while ($rowLevel = mysqli_fetch_assoc($resLevel)) {
                      if ($rowLevel['idlevel'] == $data['idlevel']) : ?>
                        <option value="<?= $rowLevel['idlevel']; ?>" selected><?= $rowLevel['namalevel'] . " | Indikator" . $rowLevel['indikator']; ?></option>
                      <?php else : ?>
                        <option value="<?= $rowLevel['idlevel']; ?>"><?= $rowLevel['namalevel'] . " | Indikator" . $rowLevel['indikator']; ?></option>
                      <?php endif; ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="pertanyaan" class="col-md-2 col-form-label">Pertanyaan</label>
                <div class="col-md-10">
                  <select class="form-control" id="pertanyaan" name="pertanyaan">
                    <option value="0">-</option>
                    <?php
                    $sqlPertanyaan = "SELECT * FROM tb_pertanyaan a
                                      LEFT JOIN tb_indikator b ON b.idindikator = a.idindikator";
                    $resPertanyaan = mysqli_query($conn, $sqlPertanyaan);
                    while ($rowPertanyaan = mysqli_fetch_assoc($resPertanyaan)) {
                      if ($rowPertanyaan['idpertanyaan'] == $data['idpertanyaan']) : ?>
                        <option value="<?= $rowPertanyaan['idpertanyaan']; ?>" selected>Indikator <?= $rowPertanyaan['indikator'] . " | " . $rowPertanyaan['pertanyaan']; ?></option>
                      <?php else : ?>
                        <option value="<?= $rowPertanyaan['idpertanyaan']; ?>">Indikator <?= $rowPertanyaan['indikator'] . " | " . $rowPertanyaan['pertanyaan']; ?></option>
                      <?php endif; ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="penjelasanevaluasi" class="col-md-2 col-form-label">Penjelasan Evaluasi</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="penjelasanevaluasi" name="penjelasanevaluasi" rows="3" placeholder="Enter Penjelasan Evaluasi"><?= $data['penjelasan_evaluasi'] ?></textarea>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=evaluasi">
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