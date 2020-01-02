<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query edit
if (isset($_POST['simpanjelas'])) {
  $kode                 = $_POST['kode'];
  $jelas_indi_list      = $_POST['jelas_indi_list'];
  $jelas_indi_lvl       = $_POST['jelas_indi_lvl'];
  $jelas_indi_tambah    = $_POST['jelas_indi_tambah'];

  $res = true;

  if ($res) {
    $sql = "UPDATE tb_indikator 
        SET penjelasanindikator = '$kode'
        WHERE idindikator = '$id'";

    $sql2 = "INSERT INTO tb_detail_indikator (idindikator_detail, penjelasan_indikator_list, penjelasan_indikator_level,penjelasan_indikator_tambahan)
          VALUES ('$kode', '$jelas_indi_list', '$jelas_indi_lvl', '$jelas_indi_tambah')";

    if (mysqli_query($conn, $sql) && mysqli_query($conn, $sql2)) {
      echo '<script type="text/javascript">
            alert("Data Penjelasan Indikator Berhasil Ditambah");
            window.location.href="t.php?page=indikator";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Penjelasan Indikator Gagal Ditambah");
            window.location.href="t.php?page=indikator&act=addjelas&id=$id";
            </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM tb_indikator WHERE idindikator = '$id'";
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
          <h6 class="m-0 font-weight-bold text-primary">Form Tambah Penjelasan <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
            <form method="post">
              <input type="hidden" class="form-control" name="kode" id="kode" placeholder="Enter Indikator" autocomplete="off" value="<?= $data['idindikator']; ?>" readonly>
              <div class="form-group row">
                <label for="indikator" class="col-md-2 col-form-label">Nama Aspek</label>
                <div class="col-md-10">
                  <select class="form-control" id="namaaspek" name="namaaspek">
                    <?php
                    $sqlAspek = "SELECT * FROM tb_aspek ORDER BY nama_aspek ASC";
                    $resAspek = mysqli_query($conn, $sqlAspek);
                    while ($rowAspek = mysqli_fetch_assoc($resAspek)) {
                      if ($rowAspek['idaspek'] == $data['idaspek']) { ?>
                        <option value="<?= $rowAspek['idaspek']; ?>" selected><?= $rowAspek['nama_aspek']; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="indikator" class="col-md-2 col-form-label">Indikator</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="indikator" id="indikator" placeholder="Enter Indikator" autocomplete="off" value="<?= $data['indikator'] . " - " . $data['namaindikator']; ?>" readonly>
                </div>
              </div>
              <div class="form-group row">
                <label for="jelas_indi_list" class="col-md-2 col-form-label">Penjelasan Indikator List</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="jelas_indi_list" name="jelas_indi_list" rows="5" placeholder="Enter Penjelasan Indikator List"></textarea>
                  <small class="form-text text">
                    <h6>Note : Untuk memberikan "List" isikan tanda Pisah (--) diawal penulisan.</h6>
                  </small>
                </div>
              </div>
              <div class="form-group row">
                <label for="jelas_indi_lvl" class="col-md-2 col-form-label">Penjelasan Indikator Level</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="jelas_indi_lvl" name="jelas_indi_lvl" rows="5" placeholder="Enter Penjelasan Indikator Level"></textarea>
                  <small class="form-text text">
                    <h6>Note : Untuk memberikan "Enter" isikan Tanda Titik Koma (;) diawal penulisan.</h6>
                  </small>
                </div>
              </div>
              <div class="form-group row">
                <label for="jelas_indi_tambah" class="col-md-2 col-form-label">Penjelasan Indikator Tambahan</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="jelas_indi_tambah" name="jelas_indi_tambah" rows="5" placeholder="Enter Penjelasan Indikator Tambahan"></textarea>
                  <small class="form-text text">
                    <h6>Note : Untuk memberikan "Enter" isikan Tanda Titik Koma 2x (;;) diawal penulisan.</h6>
                  </small>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=indikator">
                  <span class="text">Kembali</span>
                </a>
                <button type="submit" class="btn btn-primary" name="simpanjelas">Simpan</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

  </div>

</div>