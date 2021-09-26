<?php

// link ke file yang dituju melalui include
if (isset($_GET['act']) && $_GET['act'] == "hapus") {
  include 'delete.php';
} else if (isset($_GET['act']) && $_GET['act'] == "tambah") {
  include 'formtambah.php';
} else if (isset($_GET['act']) && $_GET['act'] == "ubah") {
  include 'formedit.php';
} else if (isset($_GET['act']) && $_GET['act'] == "upicon") {
  include 'upload_icon.php';
} else if (isset($_GET['act']) && $_GET['act'] == "upfile") {
  include 'upload_file.php';
} else if (isset($_GET['act']) && $_GET['act'] == "upinfoapp") {
  include 'upload_infoapp.php';
} else if (isset($_GET['act']) && $_GET['act'] == "detail") {
  include 'detail.php';
} else if (isset($_GET['act']) && $_GET['act'] == "info") {
  include 'info.php';
} else {
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
        <?php include 'formpencarian.php'; ?>

        <a class="btn btn-primary btn-icon-split h3 mb-4" title="Tambah" href="?page=app&act=tambah">
          <span class="icon">
            <i class="fas fa-fw fa-plus"></i>
          </span>
          <span class="text">Tambah</span>
        </a>

        <div class="card shadow mb-4">
          <!-- Card Header - Dropdown -->
          <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">Tabel <?php include 'template/title.php'; ?></h6>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr class="btn-dark">
                    <th>No</th>
                    <th>Action</th>
                    <th>Judul</th>
                    <th>Platform</th>
                    <th>Sifat</th>
                    <th>Kategori</th>
                    <th>Perangkat Daerah Pengelola</th>
                    <th>Perangkat Daerah Pengguna</th>
                    <th>Tahun Pembuatan</th>
                    <th>Status</th>
                    <th>Terintegrasi dgn Pusat Data</th>
                    <th>Terintegrasi dgn App Lainnya</th>
                    <th>User/DLU</th>
                </thead>
                <tfoot>
                  <tr class="btn-dark">
                    <th>No</th>
                    <th>Action</th>
                    <th>Judul</th>
                    <th>Platform</th>
                    <th>Sifat</th>
                    <th>Kategori</th>
                    <th>Perangkat Daerah Pengelola</th>
                    <th>Perangkat Daerah Pengguna</th>
                    <th>Tahun Pembuatan</th>
                    <th>Status</th>
                    <th>Terintegrasi dgn Pusat Data</th>
                    <th>Terintegrasi dgn App Lainnya</th>
                    <th>User/DLU</th>
                  </tr>
                </tfoot>
                <tbody>
                  <?php
                  // if (isset($_GET['cari'])) {
                  //   // $pdpengelola = $_GET['pdpengelola'];
                  //   // $status = $_GET['status'];
                  //   $judul = $_GET['judul'];

                  //   if ($_SESSION['groupuser'] == 1) {
                  //     $sql = "SELECT a.id_app,a.judul,a.klasifikasi_aplikasi,a.kategori_aplikasi,a.dasarhukum,a.media,a.link,a.pict,a.infoapp,a.unit,a.unit_pengguna,a.sts_aktif,a.thn_pembuatan,a.usr,a.dlu,b.nama_kat_media,c.namaopd,d.nama_klasifikasi_app, e.kat_aplikasi,f.namaopd as unitpengguna, g.integrasi
                  //     FROM aplikasi a 
                  //     LEFT JOIN kategori_media b ON b.id_media = a.media
                  //     LEFT JOIN tb_opd c ON c.idopd = a.unit 
                  //     LEFT JOIN klasifikasi_aplikasi d ON d.id_klasifikasi_app = a.klasifikasi_aplikasi 
                  //     LEFT JOIN kategori_aplikasi e ON e.id_kat_aplikasi = a.kategori_aplikasi 
                  //     LEFT JOIN tb_opd f ON f.idopd = a.unit_pengguna
                  //     LEFT JOIN detail_aplikasi g ON g.id_aplikasi = a.id_app
                  //     WHERE sts_aktif = '$status' OR c.namaopd = '$pdpengelola'";
                  //   } else {
                  //     $sql = "SELECT a.id_app,a.judul,a.klasifikasi_aplikasi,a.kategori_aplikasi,a.dasarhukum,a.media,a.link,a.pict,a.infoapp,a.unit,a.unit_pengguna,a.sts_aktif,a.thn_pembuatan,a.usr,a.dlu,b.nama_kat_media,c.namaopd,d.nama_klasifikasi_app, e.kat_aplikasi,f.namaopd as unitpengguna, g.integrasi
                  //     FROM aplikasi a 
                  //     LEFT JOIN kategori_media b ON b.id_media = a.media
                  //     LEFT JOIN tb_opd c ON c.idopd = a.unit 
                  //     LEFT JOIN klasifikasi_aplikasi d ON d.id_klasifikasi_app = a.klasifikasi_aplikasi 
                  //     LEFT JOIN kategori_aplikasi e ON e.id_kat_aplikasi = a.kategori_aplikasi 
                  //     LEFT JOIN tb_opd f ON f.idopd = a.unit_pengguna
                  //     LEFT JOIN detail_aplikasi g ON g.id_aplikasi = a.id_app 
                  //     WHERE c.idopd = $_SESSION[opd] && sts_aktif = '$status'";
                  //   }
                  // } else {
                  //   if ($_SESSION['groupuser'] == 1) {
                  //     $sql = "SELECT a.id_app,a.judul,a.klasifikasi_aplikasi,a.kategori_aplikasi,a.dasarhukum,a.media,a.link,a.pict,a.infoapp,a.unit,a.unit_pengguna,a.sts_aktif,a.thn_pembuatan,a.usr,a.dlu,b.nama_kat_media,c.namaopd,d.nama_klasifikasi_app, e.kat_aplikasi,f.namaopd as unitpengguna, g.integrasi
                  //     FROM aplikasi a 
                  //     LEFT JOIN kategori_media b ON b.id_media = a.media
                  //     LEFT JOIN tb_opd c ON c.idopd = a.unit 
                  //     LEFT JOIN klasifikasi_aplikasi d ON d.id_klasifikasi_app = a.klasifikasi_aplikasi 
                  //     LEFT JOIN kategori_aplikasi e ON e.id_kat_aplikasi = a.kategori_aplikasi 
                  //     LEFT JOIN tb_opd f ON f.idopd = a.unit_pengguna
                  //     LEFT JOIN detail_aplikasi g ON g.id_aplikasi = a.id_app";
                  //   } else {
                  //     $sql = "SELECT a.id_app,a.judul,a.klasifikasi_aplikasi,a.kategori_aplikasi,a.dasarhukum,a.media,a.link,a.pict,a.infoapp,a.unit,a.unit_pengguna,a.sts_aktif,a.thn_pembuatan,a.usr,a.dlu,b.nama_kat_media,c.namaopd,d.nama_klasifikasi_app, e.kat_aplikasi,f.namaopd as unitpengguna, g.integrasi
                  //     FROM aplikasi a 
                  //     LEFT JOIN kategori_media b ON b.id_media = a.media
                  //     LEFT JOIN tb_opd c ON c.idopd = a.unit 
                  //     LEFT JOIN klasifikasi_aplikasi d ON d.id_klasifikasi_app = a.klasifikasi_aplikasi 
                  //     LEFT JOIN kategori_aplikasi e ON e.id_kat_aplikasi = a.kategori_aplikasi 
                  //     LEFT JOIN tb_opd f ON f.idopd = a.unit_pengguna
                  //     LEFT JOIN detail_aplikasi g ON g.id_aplikasi = a.id_app 
                  //     WHERE c.idopd = $_SESSION[opd]";
                  //   }
                  // }



                  if (isset($_GET['katakunci'])) {
                    $pengelola = trim($_GET['pengelola']);
                    // $status = $_GET['status'];
                    $katakunci = trim($_GET['katakunci']);

                    $sql = "SELECT a.id_app,a.judul,a.klasifikasi_aplikasi,a.kategori_aplikasi,a.dasarhukum,a.media,a.link,a.pict,a.infoapp,a.unit,a.unit_pengguna,a.sts_aktif,a.thn_pembuatan,a.usr,a.dlu,b.nama_kat_media,c.namaopd,d.nama_klasifikasi_app, e.kat_aplikasi,f.namaopd as unitpengguna, g.integrasi
                      FROM aplikasi a 
                      LEFT JOIN kategori_media b ON b.id_media = a.media
                      LEFT JOIN tb_opd c ON c.idopd = a.unit 
                      LEFT JOIN klasifikasi_aplikasi d ON d.id_klasifikasi_app = a.klasifikasi_aplikasi 
                      LEFT JOIN kategori_aplikasi e ON e.id_kat_aplikasi = a.kategori_aplikasi 
                      LEFT JOIN tb_opd f ON f.idopd = a.unit_pengguna
                      LEFT JOIN detail_aplikasi g ON g.id_aplikasi = a.id_app
                      WHERE a.judul LIKE '%" . $katakunci . "%' OR a.unit = '$pengelola'";
                  } else {
                    $sql = "SELECT a.id_app,a.judul,a.klasifikasi_aplikasi,a.kategori_aplikasi,a.dasarhukum,a.media,a.link,a.pict,a.infoapp,a.unit,a.unit_pengguna,a.sts_aktif,a.thn_pembuatan,a.usr,a.dlu,b.nama_kat_media,c.namaopd,d.nama_klasifikasi_app, e.kat_aplikasi,f.namaopd as unitpengguna, g.integrasi
                      FROM aplikasi a 
                      LEFT JOIN kategori_media b ON b.id_media = a.media
                      LEFT JOIN tb_opd c ON c.idopd = a.unit 
                      LEFT JOIN klasifikasi_aplikasi d ON d.id_klasifikasi_app = a.klasifikasi_aplikasi 
                      LEFT JOIN kategori_aplikasi e ON e.id_kat_aplikasi = a.kategori_aplikasi 
                      LEFT JOIN tb_opd f ON f.idopd = a.unit_pengguna
                      LEFT JOIN detail_aplikasi g ON g.id_aplikasi = a.id_app";
                  }

                  $sql = $sql . " GROUP BY a.id_app ORDER BY a.id_app DESC";

                  $result = mysqli_query($conn, $sql);

                  if (mysqli_num_rows($result) > 0) {
                    $no = 1;
                    // output data of each row
                    while ($row = mysqli_fetch_assoc($result)) {
                      $id = $row['id_app'];
                  ?>

                      <tr>
                        <td><?= $no; ?></td>
                        <td>
                          <a class="btn btn-dark btn-sm" title="Info" href="?page=app&act=info&id=<?= $id; ?>"><i class="fas fa-fw fa-info"></i></a>
                          <a class="btn btn-primary btn-sm" title="Detail" href="?page=app&act=detail&id=<?= $id; ?>"><i class="fas fa-fw fa-file"></i></a>
                          <a class="btn btn-info btn-sm" title="Upload Gambar Icon" href="?page=app&act=upicon&id=<?= $id; ?>"><i class="fas fa-fw fa-file-upload"></i></a>
                          <a class="btn btn-success btn-sm" title="Upload Info Aplikasi" href="?page=app&act=upinfoapp&id=<?= $id; ?>"><i class="fas fa-fw fa-file-upload"></i></a>
                          <a class="btn btn-secondary btn-sm" title="Upload File Dasar Hukum" href="?page=app&act=upfile&id=<?= $id; ?>"><i class="fas fa-fw fa-file-upload"></i></a>
                          <a class="btn btn-warning btn-sm" title="Edit" href="?page=app&act=ubah&id=<?= $id; ?>"><i class="fas fa-fw fa-edit"></i></a>
                          <a class="btn btn-danger btn-sm" title="Hapus" href="" data-toggle="modal" data-target="#modalHapus-<?= $id; ?>"><i class="fas fa-fw fa-trash-alt"></i></a>

                          <!-- Modal Hapus -->
                          <?php include 'modal_hapus.php'; ?>
                          <!-- Modal Hapus -->

                        </td>
                        <td><?= $row['judul']; ?></td>
                        <td><?= $row['nama_kat_media']; ?></td>
                        <td><?= $row['nama_klasifikasi_app']; ?></td>
                        <td><?= $row['kat_aplikasi']; ?></td>
                        <td><?= $row['namaopd']; ?></td>
                        <td><?= $row['unitpengguna']; ?></td>
                        <td><?= $row['thn_pembuatan']; ?></td>
                        <td><?php if ($row['sts_aktif'] == 'aktif') {
                              echo '<span class="badge badge-success">Aktif</span>';
                            } else {
                              echo '<span class="badge badge-danger">Tidak Aktif</span>';
                            } ?>
                        </td>
                        <td><?php if ($row['integrasi'] == 'sudah') {
                              echo '<span class="badge badge-success">Sudah</span>';
                            } else {
                              echo '<span class="badge badge-danger">Belum</span>';
                            } ?>
                        </td>
                        <td>1</td>
                        <td><?= $row['usr']; ?><br><?= $row['dlu']; ?></td>
                      </tr>
                  <?php
                      $no++;
                    }
                  }
                  mysqli_close($conn);
                  ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

    </div>

  </div>

<?php } ?>