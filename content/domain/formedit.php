<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query edit
if (isset($_POST['update'])) {
  $namaindeks   = $_POST['namaindeks'];
  $namadomain   = $_POST['namadomain'];
  $bobot        = str_replace(",", ".", $_POST['bobot']);
  $tahun        = $_POST['tahun'];
  $nilaindeks   = str_replace(",", ".", $_POST['nilaindeks']);
  $urutandomain = $_POST['urutandomain'];

  $res = true;

  if ($res) {
    $sql = "UPDATE tb_domain 
        SET namadomain = '$namadomain',
        id_indeks = '$namaindeks',
        bobot = '$bobot',
        nilai_indeks_domain = '$nilaindeks',
        urutan_domain = '$urutandomain',
        tahun_domain = '$tahun'
        WHERE iddomain = '$id'";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Domain Berhasil Diedit");
            window.location.href="t.php?page=domain";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Domain Gagal Diedit");
            window.location.href="t.php?page=domain&act=ubah&id=$id";
            </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM tb_domain WHERE iddomain = '$id'";
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
            <form method="post">
              <div class="form-group row">
                <label for="namaindeks" class="col-md-2 col-form-label">Nama Indeks</label>
                <div class="col-md-10">
                  <select class="form-control" id="namaindeks" name="namaindeks">
                    <option value="0">-</option>
                    <?php
                    $sqlIndeks = "SELECT * FROM tb_indeks";
                    $resIndeks = mysqli_query($conn, $sqlIndeks);
                    while ($rowIndeks = mysqli_fetch_assoc($resIndeks)) {
                      if ($rowIndeks['id_indeks'] == $data['id_indeks']) { ?>
                        <option value="<?= $rowIndeks['id_indeks']; ?>" selected><?= $rowIndeks['nama_indeks']; ?></option>
                      <?php } else { ?>
                        <option value="<?= $rowIndeks['id_indeks']; ?>"><?= $rowIndeks['nama_indeks']; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="namadomain" class="col-md-2 col-form-label">Nama Domain</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="namadomain" id="namadomain" placeholder="Enter Nama Domain" autocomplete="off" value="<?= $data['namadomain']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="bobot" class="col-md-2 col-form-label">Bobot (%)</label>
                <div class="col-md-5">
                  <input type="text" class="form-control" name="bobot" id="bobot" placeholder="Enter Bobot" autocomplete="off" value="<?= number_format($data['bobot'], 2, ",", "."); ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="tahun" class="col-md-2 col-form-label">Tahun</label>
                <div class="col-md-2">
                  <select class="form-control" id="tahun" name="tahun">
                    <option value="0">-</option>
                    <?php
                    $thnnow = date('Y');
                    for ($i = 2010; $i <= $thnnow; $i++) {
                      if ($data['tahun_domain'] == $i) { ?>
                        <option value="<?= $i; ?>" selected><?= $i; ?></option>
                      <?php } else { ?>
                        <option value="<?= $i; ?>"><?= $i; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="nilaindeks" class="col-md-2 col-form-label">Nilai</label>
                <div class="col-md-5">
                  <input type="text" class="form-control" name="nilaindeks" id="nilaindeks" placeholder="Enter Nilai Indeks" autocomplete="off" value="<?= number_format($data['nilai_indeks_domain'], 2, ",", "."); ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="urutandomain" class="col-md-2 col-form-label">Urutan</label>
                <div class="col-md-2">
                  <input type="text" class="form-control" name="urutandomain" id="urutandomain" placeholder="Enter Urutan" autocomplete="off" value="<?= $data['urutan_domain']; ?>">
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=domain">
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