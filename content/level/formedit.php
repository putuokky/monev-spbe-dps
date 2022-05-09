<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query edit
if (isset($_POST['update'])) {
  $namapertanyaan  = $_POST['namapertanyaan'];
  $namalevel       = $_POST['namalevel'];
  $nilaimandiri    = $_POST['nilaimandiri'];
  $penjelasanlevel = $_POST['penjelasanlevel'];
  $thnlevel        = $_POST['thnlevel'];

  $res = true;

  if ($res) {
    $sql = "UPDATE tb_level 
        SET idpertanyaan = '$namapertanyaan',
        namalevel = '$namalevel',
        penjelasan_level = '$penjelasanlevel',
        nilaimadiri = '$nilaimandiri',
        tahun_level = '$thnlevel'
        WHERE idlevel = '$id'";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Level Berhasil Diedit");
            window.location.href="t.php?page=level";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Level Gagal Diedit");
            window.location.href="t.php?page=level&act=ubah&id=$id";
            </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM tb_level WHERE idlevel = '$id'";
$resUbah = mysqli_query($conn, $sqlUbah);
$data = mysqli_fetch_assoc($resUbah);

?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('level').classList.add('active');
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
                <label for="namapertanyaan" class="col-md-2 col-form-label">Nama Pertanyaan</label>
                <div class="col-md-10">
                  <select class="form-control" id="namapertanyaan" name="namapertanyaan">
                    <option value="0">-</option>
                    <?php
                    $sqlPertanyaan = "SELECT * FROM tb_pertanyaan";
                    $resPertanyaan = mysqli_query($conn, $sqlPertanyaan);
                    while ($rowPertanyaan = mysqli_fetch_assoc($resPertanyaan)) {
                      if ($rowPertanyaan['idpertanyaan'] == $data['idpertanyaan']) { ?>
                        <option value="<?= $rowPertanyaan['idpertanyaan']; ?>" selected><?= $rowPertanyaan['pertanyaan']; ?> (<?= $rowPertanyaan['tahun_pertanyaan']; ?>)</option>
                      <?php } else { ?>
                        <option value="<?= $rowPertanyaan['idpertanyaan']; ?>"><?= $rowPertanyaan['pertanyaan']; ?> (<?= $rowPertanyaan['tahun_pertanyaan']; ?>)</option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="namalevel" class="col-md-2 col-form-label">Nama Level</label>
                <div class="col-md-10">
                  <input type="text" class="form-control col-3" name="namalevel" id="namalevel" placeholder="Enter Nama Level" autocomplete="off" value="<?= $data['namalevel']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="nilaimandiri" class="col-md-2 col-form-label">Nilai Mandiri</label>
                <div class="col-md-10">
                  <input type="text" class="form-control col-2" name="nilaimandiri" id="nilaimandiri" placeholder="Enter Nilai Mandiri" autocomplete="off" value="<?= $data['nilaimadiri']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="penjelasanlevel" class="col-md-2 col-form-label">Penjelasan Level</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="penjelasanlevel" name="penjelasanlevel" rows="3" placeholder="Enter Penjelasan Level"><?= $data['penjelasan_level']; ?></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="thnlevel" class="col-md-2 col-form-label">Tahun Level</label>
                <div class="col-md-2">
                  <select class="form-control" id="thnlevel" name="thnlevel">
                    <option value="0">-</option>
                    <?php
                    for ($i = 2017; $i <= $thnnow; $i++) {
                      if ($data['tahun_level'] == $i) { ?>
                        <option value="<?= $i; ?>" selected><?= $i; ?></option>
                      <?php } else { ?>
                        <option value="<?= $i; ?>"><?= $i; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=level">
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