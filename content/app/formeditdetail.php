<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// inisiasi idx
if (isset($_GET['idx']) && $_GET['idx'] != "") {
  $idx = $_GET['idx'];
} else {
  $idx = "";
}

// query tampil id
$sqlTampil = "SELECT * FROM aplikasi WHERE id_app = '$id'";
$resTampil = mysqli_query($conn, $sqlTampil);
$datax = mysqli_fetch_assoc($resTampil);

// query edit
if (isset($_POST['updatedetail'])) {
  // $judul              = $_POST['judul'];
  $version            = $_POST['version'];
  $thnkembang         = $_POST['thnkembang'];
  $input              = $_POST['input'];
  $output             = $_POST['output'];
  $integrasi          = $_POST['integrasi'];
  $infointegrasi      = $_POST['infointegrasi'];
  $inte_app_lain      = $_POST['inte_app_lain'];
  $info_inte_app_lain = $_POST['info_inte_app_lain'];
  $db                 = $_POST['db'];
  $bhsprogram         = $_POST['bhsprogram'];
  $cpu                = $_POST['cpu'];
  $ram                = $_POST['ram'];
  $harddisk           = $_POST['harddisk'];
  $osserver           = $_POST['osserver'];
  $bhsprogramserver   = $_POST['bhsprogramserver'];
  $webserver          = $_POST['webserver'];
  $dbserver           = $_POST['dbserver'];
  $bhspendukunglain   = $_POST['bhspendukunglain'];
  $lokserver          = $_POST['lokserver'];
  $judulspk           = $_POST['judulspk'];
  $sumberdana         = $_POST['sumberdana'];
  $nilaispk           = $_POST['nilaispk'];
  $vendor             = $_POST['vendor'];
  $kontakvendor       = $_POST['kontakvendor'];

  $res = true;

  if ($res) {
    $sql = "UPDATE detail_aplikasi 
        SET input = '$input',
        output = '$output',
        version = '$version',
        db = '$db',
        pemrograman = '$bhsprogram',
        integrasi = '$integrasi',
        info_integrasi = '$infointegrasi',
        inte_app_lain = '$inte_app_lain',
        info_inte_app_lain = '$info_inte_app_lain',
        thn_pengembangan = '$thnkembang',
        cpu_server = '$cpu',
        ram_server = '$ram',
        harddisk_server = '$harddisk',
        os_server = '$osserver',
        bp_server = '$bhsprogramserver',
        web_server = '$webserver',
        database_server = '$dbserver',
        bplain_server = '$bhspendukunglain',
        loka_server = '$lokserver',
        judul_spk = '$judulspk',
        nilai_spk = '$nilaispk',
        sumberdana_spk = '$sumberdana',
        vendor = '$vendor',
        kontak_vendor = '$kontakvendor',
        usr = '$_SESSION[userid]',
        dlu = '$datenow2'
        WHERE id_detail_aplikasi  = '$idx'";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Detail Aplikasi Berhasil Diedit");
            window.location.href="t.php?page=app&act=detail&id=' . $id . '";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Detail Aplikasi Gagal Diedit");
            window.location.href="t.php?page=app&act=detail&id=' . $id . '&aksi=tambahdetail&idx=' . $idx . '";
            </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM detail_aplikasi WHERE id_detail_aplikasi = '$idx'";
$resUbah = mysqli_query($conn, $sqlUbah);
$data = mysqli_fetch_assoc($resUbah);
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
          <h6 class="m-0 font-weight-bold text-primary">Form Edit <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
            <form method="post">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item active" aria-current="page">Informasi Umum</li>
                </ol>
              </nav>
              <div class="form-group row">
                <label for="judul" class="col-md-2 col-form-label">Judul</label>
                <div class="col-md-10">
                  <select class="form-control" id="judul" name="judul">
                    <option value="<?= $idx; ?>"><?= $datax['judul']; ?></option>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="version" class="col-md-2 col-form-label">Version</label>
                <div class="col-md-4">
                  <input type="text" class="form-control" name="version" id="version" placeholder="Enter Version" autocomplete="off" value="<?= $data['version']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="thnkembang" class="col-md-2 col-form-label">Tahun Pengembangan</label>
                <div class="col-md-2">
                  <select class="form-control" id="thnkembang" name="thnkembang">
                    <option>-</option>
                    <?php
                    for ($i = $tahun_old; $i <= $thnnow; $i++) {
                      if ($i == $data['thn_pengembangan']) : ?>
                        <option value="<?= $i; ?>" selected><?= $i; ?></option>
                      <?php else : ?>
                        <option value="<?= $i; ?>"><?= $i; ?></option>
                      <?php endif; ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="input" class="col-md-2 col-form-label">Input</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="input" name="input" rows="3" placeholder="Enter Input"><?= $data['input']; ?></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="output" class="col-md-2 col-form-label">Output</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="output" name="output" rows="3" placeholder="Enter Output"><?= $data['output']; ?></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="integrasi" class="col-md-2 col-form-label">Terintegrasi</label>
                <div class="col-md-2">
                  <select class="form-control" id="integrasi" name="integrasi">
                    <?php if ($data['integrasi'] == 'belum') { ?>
                      <option>-</option>
                      <option value="belum" selected>Belum</option>
                      <option value="sudah">Sudah</option>
                    <?php } else if ($data['integrasi'] == 'sudah') { ?>
                      <option>-</option>
                      <option value="belum">Belum</option>
                      <option value="sudah" selected>Sudah</option>
                    <?php } else { ?>
                      <option>-</option>
                      <option value="belum">Belum</option>
                      <option value="sudah">Sudah</option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="infointegrasi" class="col-md-2 col-form-label">Info Versi</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="infointegrasi" name="infointegrasi" rows="3" placeholder="Enter Info Versi"><?= $data['info_integrasi']; ?></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="inte_app_lain" class="col-md-2 col-form-label">Terintegrasi dengan Aplikasi Lain</label>
                <div class="col-md-2">
                  <select class="form-control" id="inte_app_lain" name="inte_app_lain">
                    <?php if ($data['inte_app_lain'] == 'ada') { ?>
                      <option>-</option>
                      <option value="ada" selected>Ada</option>
                      <option value="noada">Tidak Ada</option>
                    <?php } else if ($data['inte_app_lain'] == 'noada') { ?>
                      <option>-</option>
                      <option value="ada">Ada</option>
                      <option value="noada" selected>Tidak Ada</option>
                    <?php } else { ?>
                      <option>-</option>
                      <option value="ada">Ada</option>
                      <option value="noada">Tidak Ada</option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="info_inte_app_lain" class="col-md-2 col-form-label">Info Terintegrasi dengan Aplikasi Lain</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="info_inte_app_lain" name="info_inte_app_lain" rows="3" placeholder="Enter Info Terintegrasi dengan Aplikasi Lain (Gunakan Koma (,) untuk memisahkan)"><?= $data['info_inte_app_lain']; ?></textarea>
                </div>
              </div>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item active" aria-current="page">Informasi Software</li>
                </ol>
              </nav>
              <div class="form-group row">
                <label for="db" class="col-md-2 col-form-label">Database</label>
                <div class="col-md-2">
                  <select class="form-control" id="db" name="db">
                    <option>-</option>
                    <?php
                    $sqlDb = "SELECT * FROM kategori_database";
                    $resDb = mysqli_query($conn, $sqlDb);
                    while ($rowDb = mysqli_fetch_assoc($resDb)) {
                      if ($rowDb['id_kat_database'] == $data['db']) : ?>
                        <option value="<?= $rowDb['id_kat_database']; ?>" selected><?= $rowDb['nama_kat_database']; ?></option>
                      <?php else : ?>
                        <option value="<?= $rowDb['id_kat_database']; ?>"><?= $rowDb['nama_kat_database']; ?></option>
                      <?php endif; ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="bhsprogram" class="col-md-2 col-form-label">Bahasa Pemrograman</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="bhsprogram" id="bhsprogram" placeholder="Enter Bahasa Pemrograman" autocomplete="off" value="<?= $data['pemrograman']; ?>">
                </div>
              </div>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item active" aria-current="page">Kebutuhan Server Fisik</li>
                </ol>
              </nav>
              <div class="form-group row">
                <label for="cpu" class="col-md-2 col-form-label">CPU</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="cpu" id="cpu" placeholder="Enter CPU" autocomplete="off" value="<?= $data['cpu_server']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="ram" class="col-md-2 col-form-label">RAM</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="ram" id="ram" placeholder="Enter RAM" autocomplete="off" value="<?= $data['ram_server']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="harddisk" class="col-md-2 col-form-label">Hard Disk</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="harddisk" id="harddisk" placeholder="Enter Hard Disk" autocomplete="off" value="<?= $data['harddisk_server']; ?>">
                </div>
              </div>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item active" aria-current="page">Kebutuhan Lingkungan Server</li>
                </ol>
              </nav>
              <div class="form-group row">
                <label for="osserver" class="col-md-2 col-form-label">OS Server</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="osserver" id="osserver" placeholder="Enter OS Server" autocomplete="off" value="<?= $data['os_server']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="bhsprogramserver" class="col-md-2 col-form-label">Bahasa Pemrograman Server</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="bhsprogramserver" id="bhsprogramserver" placeholder="Enter Bahasa Pemrograman Server" autocomplete="off" value="<?= $data['bp_server']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="webserver" class="col-md-2 col-form-label">Web Server</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="webserver" id="webserver" placeholder="Enter Web Server" autocomplete="off" value="<?= $data['web_server']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="dbserver" class="col-md-2 col-form-label">Database Server</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="dbserver" id="dbserver" placeholder="Enter Database Server" autocomplete="off" value="<?= $data['database_server']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="bhspendukunglain" class="col-md-2 col-form-label">Bahasa Pendukung Lainnya</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="bhspendukunglain" id="bhspendukunglain" placeholder="Enter Bahasa Pendukung Lainnya" autocomplete="off" value="<?= $data['bplain_server']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="lokserver" class="col-md-2 col-form-label">Lokasi Server</label>
                <div class="col-md-5">
                  <select class="form-control" id="lokserver" name="lokserver">
                    <option>-</option>
                    <?php
                    $sqlKatLokSer = "SELECT * FROM kategori_lok_server";
                    $resKatLokSer = mysqli_query($conn, $sqlKatLokSer);
                    while ($rowKatLokSer = mysqli_fetch_assoc($resKatLokSer)) {
                      if ($rowKatLokSer['id_lok_server'] == $data['loka_server']) : ?>
                        <option value="<?= $rowKatLokSer['id_lok_server']; ?>" selected><?= $rowKatLokSer['nama_lok_server']; ?></option>
                      <?php else : ?>
                        <option value="<?= $rowKatLokSer['id_lok_server']; ?>"><?= $rowKatLokSer['nama_lok_server']; ?></option>
                      <?php endif; ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item active" aria-current="page">Informasi Surat Perintah Kerja</li>
                </ol>
              </nav>
              <div class="form-group row">
                <label for="judulspk" class="col-md-2 col-form-label">Judul SPK</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="judulspk" name="judulspk" rows="3" placeholder="Enter Judul SPK"><?= $data['judul_spk']; ?></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="sumberdana" class="col-md-2 col-form-label">Sumber Dana</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="sumberdana" id="sumberdana" placeholder="Enter Sumber Dana" autocomplete="off" value="<?= $data['sumberdana_spk']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="nilaispk" class="col-md-2 col-form-label">Nilai SPK</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="nilaispk" id="nilaispk" placeholder="Enter Nilai SPK" autocomplete="off" value="<?= $data['nilai_spk']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="vendor" class="col-md-2 col-form-label">Pengembang</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="vendor" id="vendor" placeholder="Enter Vendor" autocomplete="off" value="<?= $data['vendor']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="kontakvendor" class="col-md-2 col-form-label">Kontak Pengembang</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="kontakvendor" id="kontakvendor" placeholder="Enter Kontak Vendor" autocomplete="off" value="<?= $data['kontak_vendor']; ?>">
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=app&act=detail&id=<?= $id; ?>">
                  <span class="text">Kembali</span>
                </a>
                <button type="submit" class="btn btn-primary" name="updatedetail">Simpan</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

  </div>

</div>