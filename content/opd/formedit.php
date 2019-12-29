<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query edit
if (isset($_POST['update'])) {
  $namaopd   = $_POST['namaopd'];
  $ketopd   = $_POST['ketopd'];

  $res = true;

  if ($res) {
    $sql = "UPDATE tb_opd 
        SET namaopd = '$namaopd',
        nama_pendek_opd = '$ketopd'
        WHERE idopd = '$id'";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Unit OPD Berhasil Diedit");
            window.location.href="t.php?page=opd";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Unit OPD Gagal Diedit");
            window.location.href="t.php?page=opd&act=ubah&id=$id";
            </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM tb_opd WHERE idopd = '$id'";
$resUbah = mysqli_query($conn, $sqlUbah);
$data = mysqli_fetch_assoc($resUbah);

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
          <h6 class="m-0 font-weight-bold text-primary">Form Ubah <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
            <form method="post">
              <div class="form-group row">
                <label for="kode" class="col-md-2 col-form-label">Kode</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="kode" id="kode" placeholder="Enter kode" autocomplete="off" value="<?= $data['idopd']; ?>" readonly>
                </div>
              </div>
              <div class="form-group row">
                <label for="namaopd" class="col-md-2 col-form-label">Nama OPD</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="namaopd" id="namaopd" placeholder="Enter Nama OPD" autocomplete="off" value="<?= $data['namaopd']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="ketopd" class="col-md-2 col-form-label">Nama Pendek OPD</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="ketopd" id="ketopd" placeholder="Enter Nama Pendek OPD" autocomplete="off" value="<?= $data['nama_pendek_opd']; ?>">
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=opd">
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