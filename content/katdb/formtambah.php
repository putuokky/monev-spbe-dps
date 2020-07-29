<?php
// query tambah
if (isset($_POST['input'])) {
  $katedb = $_POST['katedb'];

  $res = true;

  if ($res) {
    $sql = "INSERT INTO kategori_database (nama_kat_database)
      VALUES ('$katedb')";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Kategori Database Berhasil Ditambah");
            window.location.href="t.php?page=katdb";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Kategori Database Gagal Ditambah");
            window.location.href="t.php?page=katdb&act=tambah";
            </script>';
    }
  }
}
?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('katdb').classList.add('active');
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
                <label for="katedb" class="col-md-2 col-form-label">Kategori Database</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="katedb" id="katedb" placeholder="Enter Kategori Database" autocomplete="off">
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=katdb">
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