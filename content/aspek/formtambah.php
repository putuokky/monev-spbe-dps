<?php
// query tambah
if (isset($_POST['input'])) {
  $namadomainforaspek   = $_POST['namadomainforaspek'];
  $namaaspek            = $_POST['namaaspek'];
  $bobot                = str_replace(",", ".", $_POST['bobot']);
  $target               = $_POST['target'];
  $tahunaspek           = $_POST['tahunaspek'];
  $nilaindeks           = str_replace(",", ".", $_POST['nilaindeks']);
  $urutanaspek          = $_POST['urutanaspek'];
  $katindeks            = $_POST['katindeks'];

  $res = true;

  if ($res) {
    $sql = "INSERT INTO tb_aspek (nilai_indeks_aspek, iddomain, nama_aspek, bobot_aspek, target, tahun_aspek, urutan_aspek, user_katindex)
      VALUES ('$nilaindeks', '$namadomainforaspek', '$namaaspek', '$bobot', '$target', '$tahunaspek', '$urutanaspek', '$katindeks')";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Aspek Berhasil Ditambah");
            window.location.href="t.php?page=aspek";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Aspek Gagal Ditambah");
            window.location.href="t.php?page=aspek&act=tambah";
            </script>';
    }
  }
}
?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('aspek').classList.add('active');
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
                <label for="tahunaspek" class="col-md-2 col-form-label">Tahun</label>
                <div class="col-md-2">
                  <select class="form-control" id="tahunaspek" name="tahunaspek">
                    <option value="0">-</option>
                    <?php
                    if ($_SESSION['grupindeks'] == 1) {
                      $sqlthnDomain = "SELECT * FROM tb_domain a 
                          LEFT JOIN tbl_user_katindex b ON b.id_user_katindex = a.user_katindex
                          WHERE b.id_user_katindex = $_SESSION[grupindeks]";
                    } else if ($_SESSION['grupindeks'] == 2) {
                      $sqlthnDomain = "SELECT * FROM tb_domain a 
                          LEFT JOIN tbl_user_katindex b ON b.id_user_katindex = a.user_katindex
                          WHERE b.id_user_katindex = $_SESSION[grupindeks]";
                    } else {
                      $sqlthnDomain = "SELECT * FROM tb_domain a 
                          LEFT JOIN tbl_user_katindex b ON b.id_user_katindex = a.user_katindex";
                    }

                    $sqlthnDomain = $sqlthnDomain . " GROUP BY a.tahun_domain";

                    $resthnDomain = mysqli_query($conn, $sqlthnDomain);
                    while ($rowthnDomain = mysqli_fetch_assoc($resthnDomain)) { ?>
                      <option value="<?= $rowthnDomain['tahun_domain']; ?>"><?= $rowthnDomain['tahun_domain']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="namadomainforaspek" class="col-md-2 col-form-label">Nama Domain</label>
                <div class="col-md-10">
                  <select class="form-control" id="namadomainforaspek" name="namadomainforaspek" disabled>
                    <option value="0">-</option>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="namaaspek" class="col-md-2 col-form-label">Nama Aspek</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="namaaspek" id="namaaspek" placeholder="Enter Nama Aspek" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="bobot" class="col-md-2 col-form-label">Bobot (%)</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="bobot" id="bobot" placeholder="Enter Bobot" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="target" class="col-md-2 col-form-label">Target</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="target" id="target" placeholder="Enter Target" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="nilaindeks" class="col-md-2 col-form-label">Nilai</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="nilaindeks" id="nilaindeks" placeholder="Enter Nilai Indeks" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="urutanaspek" class="col-md-2 col-form-label">Urutan</label>
                <div class="col-md-2">
                  <input type="text" class="form-control" name="urutanaspek" id="urutanaspek" placeholder="Enter Urutan" autocomplete="off">
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=aspek">
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