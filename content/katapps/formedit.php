<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query edit
if (isset($_POST['update'])) {
  $kateapp   = $_POST['kateapp'];

  $res = true;

  if ($res) {
    $sql = "UPDATE kategori_aplikasi 
        SET kat_aplikasi = '$kateapp'
        WHERE id_kat_aplikasi = '$id'";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Kategori Aplikasi Berhasil Diedit");
            window.location.href="t.php?page=katapps";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Kategori Aplikasi Gagal Diedit");
            window.location.href="t.php?page=katapps&act=ubah&id=$id";
            </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM kategori_aplikasi WHERE id_kat_aplikasi = '$id'";
$resUbah = mysqli_query($conn, $sqlUbah);
$data = mysqli_fetch_assoc($resUbah);
?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('katapps').classList.add('active');
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
                <label for="kateapp" class="col-md-2 col-form-label">Kategori Aplikasi</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="kateapp" id="kateapp" placeholder="Enter Kategori Aplikasi" autocomplete="off" value="<?= $data['kat_aplikasi']; ?>">
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=katapps">
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