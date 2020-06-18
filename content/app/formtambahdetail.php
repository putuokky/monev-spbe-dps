<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query tampil id
$sqlTampil = "SELECT * FROM aplikasi WHERE id_app = '$id'";
$resTampil = mysqli_query($conn, $sqlTampil);
$data = mysqli_fetch_assoc($resTampil);
$idx = $data['id_app'];

// query tambah
if (isset($_POST['inputdetail'])) {
  $judul              = $_POST['judul'];
  $version            = $_POST['version'];
  $thnkembang         = $_POST['thnkembang'];
  $input              = $_POST['input'];
  $output             = $_POST['output'];
  $integrasi          = $_POST['integrasi'];
  $infointegrasi      = $_POST['infointegrasi'];
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
  $judulspk           = $_POST['judulspk'];
  $sumberdana         = $_POST['sumberdana'];
  $nilaispk           = $_POST['nilaispk'];
  $vendor             = $_POST['vendor'];
  $kontakvendor       = $_POST['kontakvendor'];

  $res = true;

  if ($res) {
    $sql = "INSERT INTO detail_aplikasi (id_aplikasi,input,output,version,db,pemrograman,integrasi,info_integrasi,thn_pengembangan,cpu_server,ram_server,harddisk_server,os_server,bp_server,web_server,database_server,bplain_server,judul_spk,nilai_spk,sumberdana_spk,vendor,kontak_vendor,usr,dlu)
          VALUES ('$judul','$input','$output','$version','$db','$bhsprogram','$integrasi','$infointegrasi','$thnkembang','$cpu','$ram','$harddisk','$osserver','$bhsprogramserver','$webserver','$dbserver','$bhspendukunglain','$judulspk','$nilaispk','$sumberdana','$vendor','$kontakvendor','$_SESSION[userid]','$datenow2')";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Detail Aplikasi Berhasil Ditambah");
            window.location.href="t.php?page=app&act=detail&id=' . $id . '";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Detail Aplikasi Gagal Ditambah");
            window.location.href="t.php?page=app&act=detail&id=' . $id . '&aksi=tambahdetail";
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
          <h6 class="m-0 font-weight-bold text-primary">Form Tambah Detail <?php include 'template/title.php'; ?></h6>
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
                    <option value="<?= $idx; ?>"><?= $data['judul']; ?></option>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="version" class="col-md-2 col-form-label">Version</label>
                <div class="col-md-4">
                  <input type="text" class="form-control" name="version" id="version" placeholder="Enter Version" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="thnkembang" class="col-md-2 col-form-label">Tahun Pengembangan</label>
                <div class="col-md-2">
                  <select class="form-control" id="thnkembang" name="thnkembang">
                    <option>-</option>
                    <?php
                    for ($i = $tahun_old; $i <= $thnnow; $i++) { ?>
                      <option value="<?= $i; ?>"><?= $i; ?></option>
                    <?php }
                    ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="input" class="col-md-2 col-form-label">Input</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="input" name="input" rows="3" placeholder="Enter Input"></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="output" class="col-md-2 col-form-label">Output</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="output" name="output" rows="3" placeholder="Enter Output"></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="integrasi" class="col-md-2 col-form-label">Integrasi</label>
                <div class="col-md-2">
                  <select class="form-control" id="integrasi" name="integrasi">
                    <option>-</option>
                    <option value="belum">Belum</option>
                    <option value="sudah">Sudah</option>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="infointegrasi" class="col-md-2 col-form-label">Info Integrasi</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="infointegrasi" name="infointegrasi" rows="3" placeholder="Enter Info Integrasi"></textarea>
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
                    while ($rowDb = mysqli_fetch_assoc($resDb)) { ?>
                      <option value="<?= $rowDb['id_kat_database']; ?>"><?= $rowDb['nama_kat_database']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="bhsprogram" class="col-md-2 col-form-label">Bahasa Pemrograman</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="bhsprogram" id="bhsprogram" placeholder="Enter Bahasa Pemrograman" autocomplete="off">
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
                  <input type="text" class="form-control" name="cpu" id="cpu" placeholder="Enter CPU" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="ram" class="col-md-2 col-form-label">RAM</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="ram" id="ram" placeholder="Enter RAM" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="harddisk" class="col-md-2 col-form-label">Hard Disk</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="harddisk" id="harddisk" placeholder="Enter Hard Disk" autocomplete="off">
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
                  <input type="text" class="form-control" name="osserver" id="osserver" placeholder="Enter OS Server" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="bhsprogramserver" class="col-md-2 col-form-label">Bahasa Pemrograman Server</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="bhsprogramserver" id="bhsprogramserver" placeholder="Enter Bahasa Pemrograman Server" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="webserver" class="col-md-2 col-form-label">Web Server</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="webserver" id="webserver" placeholder="Enter Web Server" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="dbserver" class="col-md-2 col-form-label">Database Server</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="dbserver" id="dbserver" placeholder="Enter Database Server" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="bhspendukunglain" class="col-md-2 col-form-label">Bahasa Pendukung Lainnya</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="bhspendukunglain" id="bhspendukunglain" placeholder="Enter Bahasa Pendukung Lainnya" autocomplete="off">
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
                  <textarea class="form-control" id="judulspk" name="judulspk" rows="3" placeholder="Enter Judul SPK"></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="sumberdana" class="col-md-2 col-form-label">Sumber Dana</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="sumberdana" id="sumberdana" placeholder="Enter Sumber Dana" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="nilaispk" class="col-md-2 col-form-label">Nilai SPK</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="nilaispk" id="nilaispk" placeholder="Enter Nilai SPK" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="vendor" class="col-md-2 col-form-label">Pengembang</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="vendor" id="vendor" placeholder="Enter Vendor" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="kontakvendor" class="col-md-2 col-form-label">Kontak Pengembang</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="kontakvendor" id="kontakvendor" placeholder="Enter Kontak Vendor" autocomplete="off">
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=app&act=detail&id=<?= $idx; ?>">
                  <span class="text">Kembali</span>
                </a>
                <button type="submit" class="btn btn-primary" name="inputdetail">Simpan</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

  </div>

</div>