<?php
// query tambah
if (isset($_POST['input'])) {
  $namaindeks   = $_POST['namaindeks'];
  $namadomain   = $_POST['namadomain'];
  $bobot        = str_replace(",", ".", $_POST['bobot']);
  $tahun        = $_POST['tahun'];
  $nilaindeks   = str_replace(",", ".", $_POST['nilaindeks']);
  $urutandomain = $_POST['urutandomain'];
  $katindeks    = $_POST['katindeks'];

  $res = true;

  if ($res) {
    $sql = "INSERT INTO tb_domain (id_indeks, nilai_indeks_domain, namadomain, bobot, tahun_domain, urutan_domain,user_katindex)
      VALUES ('$namaindeks', '$nilaindeks', '$namadomain', '$bobot', '$tahun', '$urutandomain','$katindeks')";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Domain Berhasil Ditambah");
            window.location.href="t.php?page=domain";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Domain Gagal Ditambah");
            window.location.href="t.php?page=domain&act=tambah";
            </script>';
    }
  }
}
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
          <h6 class="m-0 font-weight-bold text-primary">Form Tambah <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
            <form method="post">
              <div class="form-group row">
                <label for="katindeks" class="col-md-2 col-form-label">Kategori Indeks</label>
                <div class="col-md-2">
                  <select class="form-control" id="katindeks" name="katindeks">
                    <option value="0">-</option>
                    <?php
                    if ($_SESSION['grupindeks'] == 1) {
                      $sqlKatindeks = "SELECT * FROM tbl_user_katindex
                      WHERE id_user_katindex = $_SESSION[grupindeks]";
                    } else if ($_SESSION['grupindeks'] == 2) {
                      $sqlKatindeks = "SELECT * FROM tbl_user_katindex
                      WHERE id_user_katindex = $_SESSION[grupindeks]";
                    } else {
                      $sqlKatindeks = "SELECT * FROM tbl_user_katindex";
                    }
                    $resKatindeks = mysqli_query($conn, $sqlKatindeks);
                    while ($rowKatindeks = mysqli_fetch_assoc($resKatindeks)) { ?>
                      <option value="<?= $rowKatindeks['id_user_katindex']; ?>"><?= $rowKatindeks['user_katindex']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="tahun" class="col-md-2 col-form-label">Tahun</label>
                <div class="col-md-2">
                  <select class="form-control" id="tahun" name="tahun">
                    <option value="0">-</option>
                    <?php
                    if ($_SESSION['grupindeks'] == 1) {
                      $sql = "SELECT * FROM tb_indeks a 
                      LEFT JOIN tb_indeks_nilai b ON b.indeks = a.id_indeks 
                      LEFT JOIN tbl_user_katindex c ON c.user_katindex = a.nama_indeks 
                      WHERE c.id_user_katindex = $_SESSION[grupindeks]";
                      // IKCI
                    } else if ($_SESSION['grupindeks'] == 2) {
                      $sql = "SELECT * FROM tb_indeks a 
                      LEFT JOIN tb_indeks_nilai b ON b.indeks = a.id_indeks 
                      LEFT JOIN tbl_user_katindex c ON c.user_katindex = a.nama_indeks 
                      WHERE c.id_user_katindex = $_SESSION[grupindeks]";
                    } else {
                      $sql = "SELECT * FROM tb_indeks a 
                      LEFT JOIN tb_indeks_nilai b ON b.indeks = a.id_indeks 
                      LEFT JOIN tbl_user_katindex c ON c.user_katindex = a.nama_indeks 
                        GROUP BY b.tahun_indeks";
                    }
                    $result = mysqli_query($conn, $sql);
                    while ($row = mysqli_fetch_assoc($result)) { ?>
                      <option value="<?= $row['tahun_indeks']; ?>"><?= $row['tahun_indeks']; ?></option>
                    <?php
                    } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="namaindeks" class="col-md-2 col-form-label">Nama Indeks</label>
                <div class="col-md-10">
                  <select class="form-control" id="namaindeks" name="namaindeks" disabled>
                    <option value="0">-</option>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="namadomain" class="col-md-2 col-form-label">Nama Domain</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="namadomain" id="namadomain" placeholder="Enter Nama Domain" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="bobot" class="col-md-2 col-form-label">Bobot (%)</label>
                <div class="col-md-5">
                  <input type="text" class="form-control" name="bobot" id="bobot" placeholder="Enter Bobot" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="nilaindeks" class="col-md-2 col-form-label">Nilai</label>
                <div class="col-md-5">
                  <input type="text" class="form-control" name="nilaindeks" id="nilaindeks" placeholder="Enter Nilai Indeks" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="urutandomain" class="col-md-2 col-form-label">Urutan</label>
                <div class="col-md-2">
                  <input type="text" class="form-control" name="urutandomain" id="urutandomain" placeholder="Enter Urutan" autocomplete="off">
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=domain">
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