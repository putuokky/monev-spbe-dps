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
  document.getElementById('app').classList.add('active');
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
                <label for="judul" class="col-md-2 col-form-label">Judul</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="Judul" id="judul" placeholder="Enter Judul" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="klasifikasi" class="col-md-2 col-form-label">Klasifikasi</label>
                <div class="col-md-2">
                  <select class="form-control" id="klasifikasi" name="klasifikasi">
                    <option>-</option>
                    <?php
                    $sqlKlaApp = "SELECT * FROM klasifikasi_aplikasi";
                    $resKlaApp = mysqli_query($conn, $sqlKlaApp);
                    while ($rowKlaApp = mysqli_fetch_assoc($resKlaApp)) { ?>
                      <option value="<?= $rowKlaApp['id_klasifikasi_app']; ?>"><?= $rowKlaApp['nama_klasifikasi_app']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="katapp" class="col-md-2 col-form-label">Kategori Aplikasi</label>
                <div class="col-md-2">
                  <select class="form-control" id="katapp" name="katapp">
                    <option>-</option>
                    <?php
                    $sqlKatApp = "SELECT * FROM kategori_aplikasi";
                    $resKatApp = mysqli_query($conn, $sqlKatApp);
                    while ($rowKatApp = mysqli_fetch_assoc($resKatApp)) { ?>
                      <option value="<?= $rowKatApp['id_kat_aplikasi']; ?>"><?= $rowKatApp['kat_aplikasi']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="infofungsi" class="col-md-2 col-form-label">Info / Fungsi</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="infofungsi" name="infofungsi" rows="5" placeholder="Enter Info / Fungsi"></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="namakatapp" class="col-md-2 col-form-label">Dasar Hukum</label>
                <div class="col-md-10">
                  <div class="custom-file">
                    <!-- upload cek footer -->
                    <input type="file" class="custom-file-input" id="dasarhukum" name="dasarhukum">
                    <label class="custom-file-label" for="dasarhukum">Choose file</label>
                  </div>
                </div>
              </div>
              <div class="form-group row">
                <label for="namakatapp" class="col-md-2 col-form-label"></label>
                <div class="col-md-10">
                  Anda dapat mengupload format <b>JPG, JPEG, PNG</b>. Maximum file size <b>5 MB</b>. <br>Ukuran gambar tampilan terbaik <b>100px X 100px</b>.
                </div>
              </div>
              <div class="form-group row">
                <label for="platform" class="col-md-2 col-form-label">Platform</label>
                <div class="col-md-2">
                  <select class="form-control" id="platform" name="platform">
                    <option>-</option>
                    <?php
                    $sqlKatMedia = "SELECT * FROM kategori_media";
                    $resKatMedia = mysqli_query($conn, $sqlKatMedia);
                    while ($rowKatMedia = mysqli_fetch_assoc($resKatMedia)) { ?>
                      <option value="<?= $rowKatMedia['id_media']; ?>"><?= $rowKatMedia['nama_kat_media']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="alamaturl" class="col-md-2 col-form-label">Alamat URL</label>
                <div class="col-md-8">
                  <input type="text" class="form-control" name="alamaturl" id="alamaturl" placeholder="Enter Alamat URL" autocomplete="off">
                </div>
                <div class="col-md-2">
                  * Khusus Platform Website
                </div>
              </div>
              <div class="form-group row">
                <label for="namakatapp" class="col-md-2 col-form-label">Gambar Icon</label>
                <div class="col-md-10">
                  <div class="custom-file">
                    <!-- upload cek footer -->
                    <input type="file" class="custom-file-input" id="gambar" name="gambar">
                    <label class="custom-file-label" for="gambar">Choose file</label>
                  </div>
                </div>
              </div>
              <div class="form-group row">
                <label for="dashinternal" class="col-md-2 col-form-label">Dashboard Internal</label>
                <div class="col-md-10">
                  <div class="form-check form-check-inline">
                    <?php
                    $sqlInternal = "SELECT * FROM aplikasi a 
                            LEFT JOIN kategori_media b ON b.id_media = a.media 
                            LEFT JOIN tb_opd c ON c.idopd = a.unit 
                            LEFT JOIN klasifikasi_aplikasi d ON d.id_klasifikasi_app = a.klasifikasi_aplikasi 
                            LEFT JOIN kategori_aplikasi e ON e.id_kat_aplikasi = a.kategori_aplikasi 
                            LEFT JOIN tb_opd f ON f.idopd = a.unit_pengguna
                            ORDER BY a.id_app DESC";
                    $resultInternal = mysqli_query($conn, $sqlInternal);
                    $rowInternal = mysqli_fetch_assoc($resultInternal);
                    if ($rowInternal['dash_internal'] == '1') { ?>
                      <input class="form-check-input" type="checkbox" id="dashinternal" name="dashinternal" value="1" checked>
                      <label class="form-check-label" for="dashinternal">Centang Jika Masuk Daftar Dashboard Internal</label>
                    <?php } else { ?>
                      <input class="form-check-input" type="checkbox" id="dashinternal" name="dashinternal" value="1">
                      <label class="form-check-label" for="dashinternal">Centang Jika Masuk Daftar Dashboard Internal</label>
                    <?php } ?>
                  </div>
                </div>
              </div>
              <div class="form-group row">
                <label for="opdpengelolaaapp" class="col-md-2 col-form-label">OPD Pengelola Aplikasi</label>
                <div class="col-md-10">
                  <select class="form-control" id="opdpengelolaaapp" name="opdpengelolaaapp">
                    <option>-</option>
                    <?php
                    $sqlUnitPengelola = "SELECT * FROM tb_opd WHERE LENGTH(idopd)=6 ORDER BY namaopd ASC";
                    $resUnitPengelola = mysqli_query($conn, $sqlUnitPengelola);
                    while ($rowUnitPengelola = mysqli_fetch_assoc($resUnitPengelola)) { ?>
                      <option value="<?= $rowUnitPengelola['idopd']; ?>"><?= $rowUnitPengelola['namaopd']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="opdpenggunaapp" class="col-md-2 col-form-label">OPD Pengguna Aplikasi</label>
                <div class="col-md-10">
                  <select class="form-control" id="opdpenggunaapp" name="opdpenggunaapp">
                    <option>-</option>
                    <?php
                    $sqlUnitPengguna = "SELECT * FROM tb_opd WHERE LENGTH(idopd)=6 ORDER BY namaopd ASC";
                    $resUnitPengguna = mysqli_query($conn, $sqlUnitPengguna);
                    while ($rowUnitPengguna = mysqli_fetch_assoc($resUnitPengguna)) { ?>
                      <option value="<?= $rowUnitPengguna['idopd']; ?>"><?= $rowUnitPengguna['namaopd']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="status" class="col-md-2 col-form-label">Status</label>
                <div class="col-md-2">
                  <select class="form-control" id="status" name="status">
                    <option>-</option>
                    <option value="aktif">Aktif</option>
                    <option value="naktif">Tidak Aktif</option>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="thnbuat" class="col-md-2 col-form-label">Tahun Pembuatan</label>
                <div class="col-md-2">
                  <select class="form-control" id="thnbuat" name="thnbuat">
                    <option>-</option>
                    <?php
                    $thnnow = date('Y');
                    for ($i = 2007; $i <= $thnnow; $i++) { ?>
                      <option value="<?= $i; ?>"><?= $i; ?></option>
                    <?php }
                    ?>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=app">
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