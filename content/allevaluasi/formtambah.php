<?php
// query tambah
if (isset($_POST['input'])) {
  $namaindeks   = $_POST['namaindeks'];
  $nilaindeks   = $_POST['nilaindeks'];
  $nilaindeks   = str_replace(",", ".", $nilaindeks);
  $tahun        = $_POST['tahun'];
  $urutanindeks = $_POST['urutanindeks'];

  $res = true;

  if ($res) {
    $sql = "INSERT INTO tb_indeks (nama_indeks, nilai_indeks, tahun_indeks, urutan_indeks)
      VALUES ('$namaindeks', '$nilaindeks', '$tahun', '$urutanindeks')";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Indeks Berhasil Ditambah");
            window.location.href="t.php?page=indeks";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Indeks Gagal Ditambah");
            window.location.href="t.php?page=indeks&act=tambah";
            </script>';
    }
  }
}
?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('alleva').classList.add('active');
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
                <label for="namaindeks" class="col-md-2 col-form-label">Nama Indeks</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="namaindeks" id="namaindeks" placeholder="Enter Nama Indeks" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="nilaindeks" class="col-md-2 col-form-label">Nilai Indeks</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="nilaindeks" id="nilaindeks" placeholder="Enter Nilai Indeks" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="tahun" class="col-md-2 col-form-label">Tahun</label>
                <div class="col-md-10">
                  <select class="form-control" id="tahun" name="tahun">
                    <option value="0">-</option>
                    <?php
                    $thnnow = date('Y');
                    for ($i = 2010; $i <= $thnnow; $i++) { ?>
                      <option value="<?= $i; ?>"><?= $i; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="urutanindeks" class="col-md-2 col-form-label">Urutan</label>
                <div class="col-md-2">
                  <input type="text" class="form-control" name="urutanindeks" id="urutanindeks" placeholder="Enter Urutan" autocomplete="off">
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=indeks">
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