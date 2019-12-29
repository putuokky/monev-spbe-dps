<?php
// query tambah
if (isset($_POST['input'])) {
  $kode       = $_POST['kode'];
  $namaopd   = $_POST['namaopd'];
  $ketopd   = $_POST['ketopd'];

  $res = true;

  if ($res) {
    $sql = "INSERT INTO tb_opd (idopd, namaopd, nama_pendek_opd)
      VALUES ('$kode', '$namaopd','$ketopd')";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Unit OPD Berhasil Ditambah");
            window.location.href="t.php?page=opd";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Unit OPD Gagal Ditambah");
            window.location.href="t.php?page=opd&act=tambah";
            </script>';
    }
  }
}
?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('opd').classList.add('active');
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
                <label for="kode" class="col-md-2 col-form-label">Kode</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="kode" id="kode" placeholder="Enter kode" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="namaopd" class="col-md-2 col-form-label">Nama OPD</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="namaopd" id="namaopd" placeholder="Enter Nama OPD" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="ketopd" class="col-md-2 col-form-label">Nama Pendek OPD</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="ketopd" id="ketopd" placeholder="Enter Nama Pendek OPD" autocomplete="off">
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=opd">
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