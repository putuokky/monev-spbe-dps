<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query edit
if (isset($_POST['update'])) {
  $namaaspek            = $_POST['namaaspek'];
  $namaindikator        = $_POST['namaindikator'];
  $indikator            = $_POST['indikator'];
  $bobotindikator       = $_POST['bobotindikator'];
  $tahun                = $_POST['tahun'];
  $id_detail_indikator  = $_POST['id_detail_indikator'];
  $jelas_indi_list      = $_POST['jelas_indi_list'];
  $jelas_indi_lvl       = $_POST['jelas_indi_lvl'];
  $jelas_indi_tambah    = $_POST['jelas_indi_tambah'];

  $res = true;

  if ($res) {
    $sql = "UPDATE tb_indikator 
            SET idaspek = '$namaaspek',
            namaindikator = '$namaindikator',
            indikator = '$indikator',
            bobot_indikator = '$bobotindikator',
            tahun_indikator = '$tahun'
            WHERE idindikator = '$id'";

    $sql2 = "UPDATE tb_detail_indikator 
            SET penjelasan_indikator_list = '$jelas_indi_list',
            penjelasan_indikator_level = '$jelas_indi_lvl',
            penjelasan_indikator_tambahan = '$jelas_indi_tambah'
            WHERE id_detail_indikator = '$id_detail_indikator'";

    if (mysqli_query($conn, $sql) && mysqli_query($conn, $sql2)) {
      echo '<script type="text/javascript">
            alert("Data Indikator Berhasil Diedit");
            window.location.href="t.php?page=indikator";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Indikator Gagal Diedit");
            window.location.href="t.php?page=indikator";
            </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM tb_indikator a 
  LEFT JOIN tb_aspek b ON b.id_aspek = a.idaspek
  LEFT JOIN tb_detail_indikator c ON c.idindikator_detail =  a.idindikator
  WHERE idindikator = '$id'";
$resUbah = mysqli_query($conn, $sqlUbah);
$data = mysqli_fetch_assoc($resUbah);

?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('indikator').classList.add('active');
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
              <input type="hidden" class="form-control" name="id_detail_indikator" id="id_detail_indikator" placeholder="Enter Nama Indikator" autocomplete="off" readonly value="<?= $data['id_detail_indikator']; ?>">
              <div class="form-group row">
                <label for="namaaspek" class="col-md-2 col-form-label">Nama Aspek</label>
                <div class="col-md-10">
                  <select class="form-control" id="namaaspek" name="namaaspek">
                    <option value="0">-</option>
                    <?php
                    if ($_SESSION['grupindeks'] == 1) {
                      $sqlAspek = "SELECT * FROM tb_aspek a 
                      LEFT JOIN tb_domain b ON b.id_domain = a.domain 
                      LEFT JOIN tb_indeks c ON c.id_indeks = b.indeks
                                  WHERE c.id_indeks = $_SESSION[grupindeks]";
                    } else if ($_SESSION['grupindeks'] == 2) {
                      $sqlAspek = "SELECT * FROM tb_aspek a 
                      LEFT JOIN tb_domain b ON b.id_domain = a.domain 
                      LEFT JOIN tb_indeks c ON c.id_indeks = b.indeks
                                WHERE c.id_indeks = $_SESSION[grupindeks]";
                    } else {
                      $sqlAspek = "SELECT * FROM tb_aspek";
                    }
                    $resAspek = mysqli_query($conn, $sqlAspek);
                    while ($rowAspek = mysqli_fetch_assoc($resAspek)) {
                      if ($rowAspek['id_aspek'] == $data['idaspek']) { ?>
                        <option value="<?= $rowAspek['id_aspek']; ?>" selected>Aspek <?= $rowAspek['urutan_aspek'] . " - " . $rowAspek['nama_aspek']; ?></option>
                      <?php } else { ?>
                        <option value="<?= $rowAspek['id_aspek']; ?>">Aspek <?= $rowAspek['urutan_aspek'] . " - " . $rowAspek['nama_aspek']; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="indikator" class="col-md-2 col-form-label">Indikator</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="indikator" id="indikator" placeholder="Enter Indikator" autocomplete="off" value="<?= $data['indikator']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="namaindikator" class="col-md-2 col-form-label">Nama Indikator</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="namaindikator" id="namaindikator" placeholder="Enter Nama Indikator" autocomplete="off" value="<?= $data['namaindikator']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="bobotindikator" class="col-md-2 col-form-label">Bobot (%)</label>
                <div class="col-md-3">
                  <input type="text" class="form-control" name="bobotindikator" id="bobotindikator" placeholder="Enter Bobot Indikator" autocomplete="off" value="<?= $data['bobot_indikator']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="tahun" class="col-md-2 col-form-label">Tahun</label>
                <div class="col-md-2">
                  <select class="form-control" id="tahun" name="tahun">
                    <option value="0">-</option>
                    <?php
                    $thnnow = date('Y');
                    for ($i = $tahun_old; $i <= $thnnow; $i++) {
                      if ($data['tahun_indikator'] == $i) { ?>
                        <option value="<?= $i; ?>" selected><?= $i; ?></option>
                      <?php } else { ?>
                        <option value="<?= $i; ?>"><?= $i; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="jelas_indi_list" class="col-md-2 col-form-label">Penjelasan Indikator List</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="jelas_indi_list" name="jelas_indi_list" rows="5" placeholder="Enter Penjelasan Indikator List"><?= $data['penjelasan_indikator_list']; ?></textarea>
                  <small class="form-text text">
                    <h6>Note : Untuk memberikan "List" isikan tanda Pisah (--) diawal penulisan.</h6>
                  </small>
                </div>
              </div>
              <div class="form-group row">
                <label for="jelas_indi_lvl" class="col-md-2 col-form-label">Penjelasan Indikator Level</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="jelas_indi_lvl" name="jelas_indi_lvl" rows="5" placeholder="Enter Penjelasan Indikator Level"><?= $data['penjelasan_indikator_level']; ?></textarea>
                  <small class="form-text text">
                    <h6>Note : Untuk memberikan "Enter" isikan Tanda Titik Koma (;) diawal penulisan.</h6>
                  </small>
                </div>
              </div>
              <div class="form-group row">
                <label for="jelas_indi_tambah" class="col-md-2 col-form-label">Penjelasan Indikator Tambahan</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="jelas_indi_tambah" name="jelas_indi_tambah" rows="5" placeholder="Enter Penjelasan Indikator Tambahan"><?= $data['penjelasan_indikator_tambahan']; ?></textarea>
                  <small class="form-text text">
                    <h6>Note : Untuk memberikan "Enter" isikan Tanda Titik Koma 2x (;;) diawal penulisan.</h6>
                  </small>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=indikator">
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