<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}


// query menampilkan data dengan id
$sql = "SELECT a.id_app,a.judul,a.klasifikasi_aplikasi,a.kategori_aplikasi,a.infofungsi,a.dasarhukum,a.media,a.link,a.pict,a.infoapp,a.unit,a.unit_pengguna,a.sts_aktif,a.thn_pembuatan,a.usr,a.dlu,b.nama_kat_media,c.namaopd,d.nama_klasifikasi_app, e.kat_aplikasi,f.namaopd as unitpengguna,g.version,g.db,g.pemrograman,g.integrasi,g.info_integrasi,g.thn_pengembangan,g.cpu_server,g.ram_server,g.harddisk_server,g.os_server,g.bp_server,g.web_server,g.database_server,g.bplain_server,g.judul_spk,g.nilai_spk,g.sumberdana_spk,g.vendor,g.kontak_vendor
FROM aplikasi a 
LEFT JOIN kategori_media b ON b.id_media = a.media
LEFT JOIN tb_opd c ON c.idopd = a.unit 
LEFT JOIN klasifikasi_aplikasi d ON d.id_klasifikasi_app = a.klasifikasi_aplikasi 
LEFT JOIN kategori_aplikasi e ON e.id_kat_aplikasi = a.kategori_aplikasi 
LEFT JOIN tb_opd f ON f.idopd = a.unit_pengguna
LEFT JOIN detail_aplikasi g ON g.id_aplikasi = a.id_app
        WHERE id_app = '$id'";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);

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
                      <th>Sifat</th>
                      <td><?= $row['nama_klasifikasi_app']; ?></td>
                    </tr>
                    <tr>
                      <th>Kategori</th>
                      <td><?= $row['kat_aplikasi']; ?></td>
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
                            echo $row['link'];
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
                      <th>Integrasi</th>
                      <td><?php if ($row['integrasi'] == 'sudah') {
                            echo '<span class="badge badge-success">Sudah</span>';
                          } else {
                            echo '<span class="badge badge-danger">Belum</span>';
                          } ?></td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="tab-pane fade" id="infodetail" role="tabpanel" aria-labelledby="infodetail-tab">
                <h3 class="text-gray-900 border-bottom-info mt-3">Informasi Umum</h3>
                <table class="table table-striped table-hover">
                  <!-- <thead>
                    <tr>
                      <th></th>
                    </tr>
                  </thead> -->
                  <tbody>
                    <tr>
                      <th>Version</th>
                      <td><?php while ($a <= 10) {
                            # code...
                          }
                          ?></td>
                    </tr>
                    <tr>
                      <th>Tahun Pengembangan</th>
                      <td><?= $row['thn_pengembangan']; ?></td>
                    </tr>
                    <tr>
                      <th>Info Integrasi</th>
                      <td><?= $row['info_integrasi']; ?></td>
                    </tr>
                  </tbody>
                </table>

                <h3 class="text-gray-900 border-bottom-info">Informasi Software</h3>
                <table class="table table-striped table-hover">
                  <tbody>
                    <tr>
                      <th>Database</th>
                      <td><?php if (!empty($row['db'])) {
                            echo $row['db'];
                          } else {
                            echo "-";
                          } ?></td>
                    </tr>
                    <tr>
                      <th>Bahasa Pemrograman</th>
                      <td><?= $row['pemrograman']; ?></td>
                    </tr>
                  </tbody>
                </table>

                <h3 class="text-gray-900 border-bottom-info">Kebutuhan Server Fisik</h3>
                <table class="table table-striped table-hover">
                  <tbody>
                    <tr>
                      <th>CPU</th>
                      <td><?php if (!empty($row['cpu_server'])) {
                            echo $row['cpu_server'];
                          } else {
                            echo "-";
                          } ?></td>
                    </tr>
                    <tr>
                      <th>RAM</th>
                      <td><?= $row['ram_server']; ?></td>
                    </tr>
                    <tr>
                      <th>Hard Disk</th>
                      <td><?= $row['harddisk_server']; ?></td>
                    </tr>
                  </tbody>
                </table>

                <h3 class="text-gray-900 border-bottom-info">Kebutuhan Lingkungan Server</h3>
                <table class="table table-striped table-hover">
                  <tbody>
                    <tr>
                      <th>OS Server</th>
                      <td><?php if (!empty($row['os_server'])) {
                            echo $row['os_server'];
                          } else {
                            echo "-";
                          } ?></td>
                    </tr>
                    <tr>
                      <th>Bahasa Pemrograman Server</th>
                      <td><?= $row['bp_server']; ?></td>
                    </tr>
                    <tr>
                      <th>Web Server</th>
                      <td><?= $row['web_server']; ?></td>
                    </tr>
                    <tr>
                      <th>Database Server</th>
                      <td><?= $row['database_server']; ?></td>
                    </tr>
                    <tr>
                      <th>Bahasa Pendukung Lainnya</th>
                      <td><?= $row['bplain_server']; ?></td>
                    </tr>
                  </tbody>
                </table>

                <h3 class="text-gray-900 border-bottom-info">Informasi Surat Perintah Kerja</h3>
                <table class="table table-striped table-hover">
                  <tbody>
                    <tr>
                      <th>SPK</th>
                      <td><?php if (!empty($row['judul_spk'])) {
                            echo $row['judul_spk'];
                          } else {
                            echo "-";
                          } ?></td>
                    </tr>
                    <tr>
                      <th>Sumber Dana</th>
                      <td><?= $row['sumberdana_spk']; ?></td>
                    </tr>
                    <tr>
                      <th>Nilai SPK</th>
                      <td><?= $row['nilai_spk']; ?></td>
                    </tr>
                    <tr>
                      <th>Pengembang</th>
                      <td><?= $row['vendor']; ?></td>
                    </tr>
                    <tr>
                      <th>Kontak Pengembang</th>
                      <td><?= $row['kontak_vendor']; ?></td>
                    </tr>
                  </tbody>
                </table>
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