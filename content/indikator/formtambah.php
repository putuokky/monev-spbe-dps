<?php
// query tambah
if (isset($_POST['input'])) {
  $namaaspek              = $_POST['namaaspek'];
  $namaindikator          = $_POST['namaindikator'];
  $indikator              = $_POST['indikator'];
  // $penjelasanindikator    = $_POST['penjelasanindikator'];

  $res = true;

  if ($res) {
    $sql = "INSERT INTO tb_indikator (idaspek, namaindikator, indikator)
      VALUES ('$namaaspek', '$namaindikator', '$indikator')";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Indikator Berhasil Ditambah");
            window.location.href="t.php?page=indikator";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Indikator Gagal Ditambah");
            window.location.href="t.php?page=indikator&act=tambah";
            </script>';
    }
  }
}
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
          <h6 class="m-0 font-weight-bold text-primary">Form Tambah <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
            <form method="post">
              <div class="form-group row">
                <label for="namaaspek" class="col-md-2 col-form-label">Nama Aspek</label>
                <div class="col-md-10">
                  <select class="form-control" id="namaaspek" name="namaaspek">
                    <option value="0">-</option>
                    <?php
                    $sqlAspek = "SELECT * FROM tb_aspek ORDER BY nama_aspek ASC";
                    $resAspek = mysqli_query($conn, $sqlAspek);
                    while ($rowAspek = mysqli_fetch_assoc($resAspek)) { ?>
                      <option value="<?= $rowAspek['idaspek']; ?>"><?= $rowAspek['nama_aspek']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="indikator" class="col-md-2 col-form-label">Indikator</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="indikator" id="indikator" placeholder="Enter Indikator" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="namaindikator" class="col-md-2 col-form-label">Nama Indikator</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="namaindikator" id="namaindikator" placeholder="Enter Nama Indikator" autocomplete="off">
                </div>
              </div>

              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=indikator">
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