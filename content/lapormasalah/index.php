<?php

// link ke file yang dituju melalui include
if (isset($_GET['act']) && $_GET['act'] == "hapus") {
  include 'delete.php';
} else if (isset($_GET['act']) && $_GET['act'] == "tambah") {
  include 'formtambah.php';
} else if (isset($_GET['act']) && $_GET['act'] == "ubah") {
  include 'formedit.php';
} else if (isset($_GET['act']) && $_GET['act'] == "respontl") {
  include 'form_respontl.php';
} else if (isset($_GET['act']) && $_GET['act'] == "respontls") {
  include 'form_respontls.php';
} else {

?>

  <!-- agar menu sidebar saat di klik active -->
  <script type="text/javascript">
    document.getElementById('lapormasalah').classList.add('active');
  </script>

  <!-- isi konten -->
  <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">

      <h1 class="h3 mb-0 text-gray-800"><?php include 'template/title.php'; ?></h1>

    </div>

    <div class="row">

      <div class="col-xl-12 col-lg-12">

        <a class="btn btn-primary btn-icon-split h3 mb-4" title="Tambah" href="?page=lapormasalah&act=tambah">
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
                  <tr>
                    <th>No</th>
                    <th>Action</th>
                    <th>Tanggal</th>
                    <th>Jenis Lapor</th>
                    <th>Aplikasi</th>
                    <th>Permasalahan</th>
                    <th>Status</th>
                    <th>User</th>
                </thead>
                <tfoot>
                  <tr>
                    <th>No</th>
                    <th>Action</th>
                    <th>Tanggal</th>
                    <th>Jenis Lapor</th>
                    <th>Aplikasi</th>
                    <th>Permasalahan</th>
                    <th>Status</th>
                    <th>User</th>
                  </tr>
                </tfoot>
                <tbody>
                  <?php
                  if ($_SESSION['groupuser'] == 1) {
                    $sql = "SELECT a.id_lapormasalah,a.jns_laporan,a.nama_app,a.permasalahan,a.bukti_lapor,a.nama_input,a.status_lapor,a.kat_tl,a.respon_lapor,a.bukti_dukung_selesai,a.dlu,b.nama_jenis_laporan,c.judul 
                    FROM tbl_lapormasalah a 
                    LEFT JOIN tbl_jenis_laporan b ON b.id_jenis_laporan = a.jns_laporan 
                    LEFT JOIN aplikasi c ON c.id_app = a.nama_app";
                  } else {
                    $sql = "SELECT a.id_lapormasalah,a.jns_laporan,a.nama_app,a.permasalahan,a.bukti_lapor,a.nama_input,a.status_lapor,a.kat_tl,a.respon_lapor,a.bukti_dukung_selesai,a.dlu,b.nama_jenis_laporan,c.judul 
                    FROM tbl_lapormasalah a 
                    LEFT JOIN tbl_jenis_laporan b ON b.id_jenis_laporan = a.jns_laporan 
                    LEFT JOIN aplikasi c ON c.id_app = a.nama_app";
                  }

                  $sql = $sql . " ORDER BY a.id_lapormasalah DESC";

                  $result = mysqli_query($conn, $sql);

                  if (mysqli_num_rows($result) > 0) {
                    $no = 1;
                    // output data of each row
                    while ($row = mysqli_fetch_assoc($result)) {
                      $id = $row['id_lapormasalah'];
                  ?>

                      <tr>
                        <td><?= $no; ?></td>
                        <td>
                          <!-- <button type="button" class="btn btn-dark btn-sm" title="Detail" data-toggle="modal" data-target="#modalDetail-<?= $id; ?>"><i class="fas fa-fw fa-file"></i></button> -->
                          <?php if ($row['kat_tl'] == '1') { ?>
                            <a class="btn btn-info btn-sm" title="Respon TL Selesai" href="?page=lapormasalah&act=respontls&id=<?= $id; ?>"><i class="fas fa-fw fa-check-circle"></i></a>
                          <?php } else if ($row['kat_tl'] == '2') {
                            echo '';
                          } else { ?>
                            <a class="btn btn-secondary btn-sm" title="Respon TL Awal" href="?page=lapormasalah&act=respontl&id=<?= $id; ?>"><i class="fas fa-fw fa-check-circle"></i></a>
                          <?php } ?>
                          <a class="btn btn-warning btn-sm" title="Edit" href="?page=lapormasalah&act=ubah&id=<?= $id; ?>"><i class="fas fa-fw fa-edit"></i></a>
                          <a class="btn btn-danger btn-sm" title="Hapus" href="" data-toggle="modal" data-target="#modalHapus-<?= $id; ?>"><i class="fas fa-fw fa-trash-alt"></i></a>

                          <!-- Modal Detail -->
                          <?php include 'modal_detail.php'; ?>
                          <!-- End Modal Detail -->

                          <!-- Modal Hapus -->
                          <?php include 'modal_hapus.php'; ?>
                          <!-- Modal Hapus -->

                        </td>
                        <td><?= date('d-m-Y', strtotime($row['dlu'])); ?></td>
                        <td><?= $row['nama_jenis_laporan']; ?></td>
                        <td><?= $row['judul']; ?></td>
                        <td><?= $row['permasalahan']; ?></td>
                        <td><?php if ($row['status_lapor'] == '1') {
                              echo '<span class="badge badge-primary">Baru</span>';
                            } else {
                              echo '<span class="badge badge-success">Respon</span>';
                            } ?>
                          <br>
                          <?php if ($row['kat_tl'] == '1') {
                            echo '<span class="badge badge-warning">Tindak Lanjut Awal</span>';
                          } else if ($row['kat_tl'] == '2') {
                            echo '<span class="badge badge-success">Selesai</span>';
                          } else {
                            echo '';
                          } ?>
                        </td>
                        <td><?= $row['nama_input']; ?></td>
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