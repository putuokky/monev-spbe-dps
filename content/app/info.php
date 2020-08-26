<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}


// query menampilkan data dengan id
$sql = "SELECT a.id_app,a.judul,a.klasifikasi_aplikasi,a.kategori_aplikasi,a.infofungsi,a.dasarhukum,a.media,a.link,a.pict,a.infoapp,a.unit,a.unit_pengguna,a.sts_aktif,a.thn_pembuatan,a.usr,a.dlu,b.nama_kat_media,c.namaopd,d.nama_klasifikasi_app, e.kat_aplikasi,f.namaopd as unitpengguna,g.version,g.db,g.pemrograman,g.integrasi,g.info_integrasi,g.inte_app_lain,g.info_inte_app_lain,g.thn_pengembangan,g.cpu_server,g.ram_server,g.harddisk_server,g.os_server,g.bp_server,g.web_server,g.database_server,g.bplain_server,g.judul_spk,g.nilai_spk,g.sumberdana_spk,g.vendor,g.kontak_vendor,h.namaopd as unitpengembang
FROM aplikasi a 
LEFT JOIN kategori_media b ON b.id_media = a.media
LEFT JOIN tb_opd c ON c.idopd = a.unit 
LEFT JOIN klasifikasi_aplikasi d ON d.id_klasifikasi_app = a.klasifikasi_aplikasi 
LEFT JOIN kategori_aplikasi e ON e.id_kat_aplikasi = a.kategori_aplikasi 
LEFT JOIN tb_opd f ON f.idopd = a.unit_pengguna
LEFT JOIN detail_aplikasi g ON g.id_aplikasi = a.id_app
LEFT JOIN tb_opd h ON h.idopd = a.unit_pengembang
        WHERE id_app = '$id'";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);


$sqlDetail = "SELECT * FROM detail_aplikasi a 
LEFT JOIN aplikasi b ON b.id_app = a.id_aplikasi 
LEFT JOIN kategori_database c ON c.id_kat_database = a.db
LEFT JOIN kategori_lok_server d ON d.id_lok_server = a.loka_server
WHERE a.id_aplikasi = '$id'
ORDER BY a.id_detail_aplikasi DESC";
$resultInfoUmum = mysqli_query($conn, $sqlDetail);
$resultInfoSoft = mysqli_query($conn, $sqlDetail);
$resultServerFisik = mysqli_query($conn, $sqlDetail);
$resultLingkServer = mysqli_query($conn, $sqlDetail);
$resultInfoSPK = mysqli_query($conn, $sqlDetail);

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
          <h6 class="m-0 font-weight-bold text-primary">Informasi <?php include 'template/title.php'; ?></h6>
        </div>

        <div class="card-body">
          <div class="form-group">
            <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=app">
              <span class="text">Kembali</span>
            </a>
          </div>
          <div class="table-responsive">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
              <li class="nav-item">
                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#info" role="tab" aria-controls="info" aria-selected="true">Info</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="infodetail-tab" data-toggle="tab" href="#infodetail" role="tab" aria-controls="info" aria-selected="true">Info Detail</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="iconapp-tab" data-toggle="tab" href="#iconapp" role="tab" aria-controls="iconapp" aria-selected="false">Icon Aplikasi</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="infoapp-tab" data-toggle="tab" href="#infoapp" role="tab" aria-controls="infoapp" aria-selected="false">Info Grafis Aplikasi</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="dasar-hukum-tab" data-toggle="tab" href="#dasar-hukum" role="tab" aria-controls="dasar-hukum" aria-selected="false">Dasar Hukum</a>
              </li>
            </ul>
            <div class="tab-content" id="myTabContent">
              <div class="tab-pane fade show active" id="info" role="tabpanel" aria-labelledby="info-tab">
                <table class="table table-striped table-hover">
                  <thead>
                    <tr>
                      <th scope="col" colspan="2" class="align-middle text-center">
                        <h3><?= $row['judul']; ?></h3>
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th>Info</th>
                      <td><?php if (!empty($row['infofungsi'])) {
                            echo $row['infofungsi'];
                          } else {
                            echo "-";
                          } ?></td>
                    </tr>
                    <tr>
                      <th>Platform</th>
                      <td><?= $row['nama_kat_media']; ?></td>
                    </tr>
                    <tr>
                      <th>Sifat</th>
                      <td><?= $row['nama_klasifikasi_app']; ?></td>
                    </tr>
                    <tr>
                      <th>Kategori</th>
                      <td><?= $row['kat_aplikasi']; ?></td>
                    </tr>
                    <tr>
                      <th>Pengembang</th>
                      <td><?= $row['unitpengembang']; ?></td>
                    </tr>
                    <tr>
                      <th>Pengelola</th>
                      <td><?= $row['namaopd']; ?></td>
                    </tr>
                    <tr>
                      <th>Pengguna</th>
                      <td><?= $row['unitpengguna']; ?></td>
                    </tr>
                    <tr>
                      <th>Link</th>
                      <td><?php if ($row['link'] == '') {
                            echo '-';
                          } else {
                            echo '<a href="' . $row['link'] . '" target="_blank">' . $row['link'] . '</a>';
                          } ?></td>
                    </tr>
                    <tr>
                      <th>Tahun Pembuatan</th>
                      <td><?php if ($row['thn_pembuatan'] == '') {
                            echo '-';
                          } else {
                            echo $row['thn_pembuatan'];
                          } ?></td>
                    </tr>
                    <tr>
                      <th>Status</th>
                      <td><?php if ($row['sts_aktif'] == 'aktif') {
                            echo '<span class="badge badge-success">Aktif</span>';
                          } else {
                            echo '<span class="badge badge-danger">Tidak Aktif</span>';
                          } ?></td>
                    </tr>
                    <tr>
                      <th>Terintegrasi dengan Pusat Data</th>
                      <td><?php if ($row['integrasi'] == 'sudah') {
                            echo '<span class="badge badge-success">Sudah</span>';
                          } else {
                            echo '<span class="badge badge-danger">Belum</span>';
                          } ?></td>
                    </tr>
                    <tr>
                      <th>Terintegrasi dengan Aplikasi Lainnya</th>
                      <td><?php if ($row['inte_app_lain'] == 'ada') {
                            echo '<span class="badge badge-success">Ada</span>';
                          } else {
                            echo '<span class="badge badge-danger">Tidak Ada</span>';
                          } ?>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="tab-pane fade" id="infodetail" role="tabpanel" aria-labelledby="infodetail-tab">
                <h3 class="text-gray-900 border-bottom-info mt-3">Informasi Umum</h3>
                <div class="table-responsive">
                  <table class="table table-bordered table-hover" id="" width="100%" cellspacing="0">
                    <thead>
                      <tr class="btn-dark">
                        <th>Version</th>
                        <th>Tahun Pengembangan</th>
                        <th>Info Versi</th>
                        <th>Info Terintegrasi Aplikasi Lain</th>
                    </thead>
                    <tbody>
                      <?php
                      if (mysqli_num_rows($resultInfoUmum) > 0) {
                        while ($rowInfoUmum = mysqli_fetch_assoc($resultInfoUmum)) { ?>
                          <tr>
                            <td><?= $rowInfoUmum['version']; ?></td>
                            <td><?= $rowInfoUmum['thn_pengembangan']; ?></td>
                            <td><?= $rowInfoUmum['info_integrasi']; ?></td>
                            <td><?= $rowInfoUmum['info_inte_app_lain']; ?></td>
                          </tr>
                        <?php }
                      } else { ?>
                        <th colspan="4" class="text-center">Belum Tersedia</th>
                      <?php } ?>
                    </tbody>
                  </table>
                </div>

                <h3 class="text-gray-900 border-bottom-info">Informasi Software</h3>
                <div class="table-responsive">
                  <table class="table table-bordered table-hover" id="" width="100%" cellspacing="0">
                    <thead>
                      <tr class="btn-dark">
                        <th>Version</th>
                        <th>Database</th>
                        <th>Bahasa Pemrograman</th>
                    </thead>
                    <tbody>
                      <?php
                      if (mysqli_num_rows($resultInfoSoft) > 0) {
                        while ($rowInfoSoft = mysqli_fetch_assoc($resultInfoSoft)) { ?>
                          <tr>
                            <td><?= $rowInfoSoft['version']; ?></td>
                            <td><?= $rowInfoSoft['nama_kat_database']; ?></td>
                            <td><?= $rowInfoSoft['pemrograman']; ?></td>
                          </tr>
                        <?php }
                      } else { ?>
                        <th colspan="3" class="text-center">Belum Tersedia</th>
                      <?php } ?>
                    </tbody>
                  </table>
                </div>

                <h3 class="text-gray-900 border-bottom-info">Kebutuhan Server Fisik</h3>
                <div class="table-responsive">
                  <table class="table table-bordered table-hover" id="" width="100%" cellspacing="0">
                    <thead>
                      <tr class="btn-dark">
                        <th>Version</th>
                        <th>CPU</th>
                        <th>RAM</th>
                        <th>Hard Disk</th>
                    </thead>
                    <tbody>
                      <?php
                      if (mysqli_num_rows($resultServerFisik) > 0) {
                        while ($rowServerFisik = mysqli_fetch_assoc($resultServerFisik)) { ?>
                          <tr>
                            <td><?= $rowServerFisik['version']; ?></td>
                            <td><?= $rowServerFisik['cpu_server']; ?></td>
                            <td><?= $rowServerFisik['ram_server']; ?></td>
                            <td><?= $rowServerFisik['harddisk_server']; ?></td>
                          </tr>
                        <?php }
                      } else { ?>
                        <th colspan="4" class="text-center">Belum Tersedia</th>
                      <?php } ?>
                    </tbody>
                  </table>
                </div>

                <h3 class="text-gray-900 border-bottom-info">Kebutuhan Lingkungan Server</h3>
                <div class="table-responsive">
                  <table class="table table-bordered table-hover" id="" width="100%" cellspacing="0">
                    <thead>
                      <tr class="btn-dark">
                        <th>Version</th>
                        <th>OS Server</th>
                        <th>Bahasa Pemrograman Server</th>
                        <th>Web Server</th>
                        <th>Database Server</th>
                        <th>Bahasa Pendukung Lainnya</th>
                        <th>Lokasi Server</th>
                    </thead>
                    <tbody>
                      <?php
                      if (mysqli_num_rows($resultServerFisik) > 0) {
                        while ($rowLingkServer = mysqli_fetch_assoc($resultLingkServer)) { ?>
                          <tr>
                            <td><?= $rowLingkServer['version']; ?></td>
                            <td><?= $rowLingkServer['os_server']; ?></td>
                            <td><?= $rowLingkServer['bp_server']; ?></td>
                            <td><?= $rowLingkServer['web_server']; ?></td>
                            <td><?= $rowLingkServer['database_server']; ?></td>
                            <td><?= $rowLingkServer['bplain_server']; ?></td>
                            <td><?= $rowLingkServer['nama_lok_server']; ?></td>
                          </tr>
                        <?php }
                      } else { ?>
                        <th colspan="7" class="text-center">Belum Tersedia</th>
                      <?php } ?>
                    </tbody>
                  </table>
                </div>

                <h3 class="text-gray-900 border-bottom-info">Informasi Surat Perintah Kerja</h3>
                <div class="table-responsive">
                  <table class="table table-bordered table-hover" id="" width="100%" cellspacing="0">
                    <thead>
                      <tr class="btn-dark">
                        <th>Version</th>
                        <th>SPK</th>
                        <th>Sumber Dana</th>
                        <th>Nilai SPK</th>
                        <th>Pengembang</th>
                        <th>Kontak Pengembang</th>
                    </thead>
                    <tbody>
                      <?php
                      if (mysqli_num_rows($resultInfoSPK) > 0) {
                        while ($rowInfoSPK = mysqli_fetch_assoc($resultInfoSPK)) { ?>
                          <tr>
                            <td><?= $rowInfoSPK['version']; ?></td>
                            <td><?= $rowInfoSPK['judul_spk']; ?></td>
                            <td><?= $rowInfoSPK['sumberdana_spk']; ?></td>
                            <td><?= "Rp " . number_format($rowInfoSPK['nilai_spk'], 0, ',', '.'); ?></td>
                            <td><?= $rowInfoSPK['vendor']; ?></td>
                            <td><?= $rowInfoSPK['kontak_vendor']; ?></td>
                          </tr>
                        <?php }
                      } else { ?>
                        <th colspan="6" class="text-center">Belum Tersedia</th>
                      <?php } ?>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="tab-pane fade" id="iconapp" role="tabpanel" aria-labelledby="iconapp-tab">
                <div class="card-body">
                  <h5 class="card-title">
                    <?php if ($row['pict'] == '') { ?>
                      <div class="alert alert-danger" role="alert">
                        <b>Icon App</b> Belum Tersedia!
                      </div>
                    <?php } else { ?>
                      <img src="assets/img/aplikasi/<?= $row['pict']; ?>" class="img-thumbnail">
                    <?php } ?>
                  </h5>
                </div>
              </div>
              <div class="tab-pane fade" id="dasar-hukum" role="tabpanel" aria-labelledby="dasar-hukum-tab">
                <div class="card-body">
                  <h5 class="card-title">
                    <?php if ($manual_book == '') { ?>
                      <div class="alert alert-danger" role="alert">
                        <b>Dasar Hukum</b> Belum Tersedia!
                      </div>
                    <?php } else {
                      echo $manual_book;
                    } ?>
                  </h5>
                </div>
              </div>
              <div class="tab-pane fade" id="infoapp" role="tabpanel" aria-labelledby="infoapp-tab">
                <div class="card-body">
                  <h5 class="card-title">
                    <?php if ($row['infoapp'] == '' || empty($row['infoapp'])) { ?>
                      <div class="alert alert-danger" role="alert">
                        <b>Keterangan Lainnya</b> Belum Tersedia!
                      </div>
                    <?php } else { ?>
                      <img src="assets/img/aplikasi/infoapp/<?= $row['infoapp']; ?>" class="img-thumbnail">
                    <?php } ?>
                  </h5>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

</div>