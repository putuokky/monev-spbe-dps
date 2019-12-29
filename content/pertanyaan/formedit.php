<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query edit
if (isset($_POST['update'])) {
  $namaindikator  = $_POST['namaindikator'];
  $pertanyaan    = $_POST['pertanyaan'];

  $res = true;

  if ($res) {
    $sql = "UPDATE tb_pertanyaan 
        SET idindikator = '$namaindikator',
        pertanyaan = '$pertanyaan'
        WHERE idpertanyaan = '$id'";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Pertanyaan Berhasil Diedit");
            window.location.href="t.php?page=pertanyaan";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Pertanyaan Gagal Diedit");
            window.location.href="t.php?page=pertanyaan&act=ubah&id=$id";
            </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM tb_pertanyaan WHERE idpertanyaan = '$id'";
$resUbah = mysqli_query($conn, $sqlUbah);
$data = mysqli_fetch_assoc($resUbah);

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
          <h6 class="m-0 font-weight-bold text-primary">Form Ubah <?php include 'template/title.php'; ?></h6>
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
                    while ($rowIndikator = mysqli_fetch_assoc($resIndikator)) {
                      if ($rowIndikator['idindikator'] == $data['idindikator']) { ?>
                        <option value="<?= $rowIndikator['idindikator']; ?>" selected><?= $rowIndikator['namaindikator']; ?></option>
                      <?php } else { ?>
                        <option value="<?= $rowIndikator['idindikator']; ?>"><?= $rowIndikator['namaindikator']; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="pertanyaan" class="col-md-2 col-form-label">Pertanyaan</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="pertanyaan" name="pertanyaan" rows="3" placeholder="Enter Pertanyaan"><?= $data['pertanyaan']; ?></textarea>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=pertanyaan">
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