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
                  <tr class="btn-dark">
                    <th>No</th>
                    <th>Action</th>
                    <th>Tanggal</th>
                    <th>Jenis Lapor</th>
                    <th>Aplikasi</th>
                    <th>Status</th>
                    <th>Tidak Lanjut</th>
                </thead>
                <tfoot>
                  <tr class="btn-dark">
                    <th>No</th>
                    <th>Action</th>
                    <th>Tanggal</th>
                    <th>Jenis Lapor</th>
                    <th>Aplikasi</th>
                    <th>Status</th>
                    <th>Tidak Lanjut</th>
                  </tr>
                </tfoot>
                <tbody>
                  <?php
                  if ($_SESSION['groupuser'] == 1 || $_SESSION['groupuser'] == 2) {
                    $sql = "SELECT a.id_lapormasalah,a.jns_laporan,a.nama_app,a.permasalahan,a.bukti_lapor,a.nama_input,a.status_lapor,a.kat_tl_lapor,a.dlu,b.nama_jenis_laporan,b.bidang,c.judul,d.nama_user
                    FROM tbl_lapormasalah a 
                    LEFT JOIN tbl_jenis_laporan b ON b.id_jenis_laporan = a.jns_laporan 
                    LEFT JOIN aplikasi c ON c.id_app = a.nama_app
                    LEFT JOIN tb_user d ON d.userid = a.nama_input";
                  } else if ($_SESSION['opdb']) {
                    $sql = "SELECT a.id_lapormasalah,a.jns_laporan,a.nama_app,a.permasalahan,a.bukti_lapor,a.nama_input,a.status_lapor,a.kat_tl_lapor,a.dlu,b.nama_jenis_laporan,b.bidang,c.judul,d.nama_user
                    FROM tbl_lapormasalah a 
                    LEFT JOIN tbl_jenis_laporan b ON b.id_jenis_laporan = a.jns_laporan 
                    LEFT JOIN aplikasi c ON c.id_app = a.nama_app
                    LEFT JOIN tb_user d ON d.userid = a.nama_input
                    WHERE b.bidang = $_SESSION[opdb]";
                  } else {
                    $sql = "SELECT a.id_lapormasalah,a.jns_laporan,a.nama_app,a.permasalahan,a.bukti_lapor,a.nama_input,a.status_lapor,a.kat_tl_lapor,a.dlu,b.nama_jenis_laporan,b.bidang,c.judul,d.nama_user
                    FROM tbl_lapormasalah a 
                    LEFT JOIN tbl_jenis_laporan b ON b.id_jenis_laporan = a.jns_laporan 
                    LEFT JOIN aplikasi c ON c.id_app = a.nama_app
                    LEFT JOIN tb_user d ON d.userid = a.nama_input
                    WHERE a.nama_input = '$_SESSION[userid]'";
                  }

                  $sql = $sql . " ORDER BY a.status_lapor ASC, a.dlu DESC";

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
                          <button type="button" class="btn btn-dark btn-sm" title="Detail" data-toggle="modal" data-target="#modalDetail-<?= $id; ?>"><i class="fas fa-fw fa-file"></i></button>

                          <?php if ($_SESSION['opdb'] == $row['bidang']) : ?>
                            <a class="btn btn-info btn-sm" title="Respon Tindak Lanjut" href="?page=lapormasalah&act=respontl&id=<?= $id; ?>"><i class="fas fa-fw fa-check-circle"></i></a>
                          <?php endif ?>

                          <?php if ($_SESSION['groupuser'] == 1 || $_SESSION['groupuser'] == 2 || $row['nama_input'] == $_SESSION['userid'] && $row['status_lapor'] == 0) : ?>
                            <a class="btn btn-warning btn-sm" title="Edit" href="?page=lapormasalah&act=ubah&id=<?= $id; ?>"><i class="fas fa-fw fa-edit"></i></a>
                            <a class="btn btn-danger btn-sm" title="Hapus" href="" data-toggle="modal" data-target="#modalHapus-<?= $id; ?>"><i class="fas fa-fw fa-trash-alt"></i></a>
                          <?php endif ?>

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
                        <td><?php if ($row['status_lapor'] == '1') {
                              echo '<span class="badge badge-primary">Baru</span>';
                            } else {
                              echo '<span class="badge badge-success">Respon</span>';
                            } ?>
                        </td>
                        <td>
                          <?php
                          if ($row['kat_tl_lapor'] == 0) {
                            echo '<span class="badge badge-danger">Belum TL</span>';
                          } else {
                            $sqlTL = "SELECT * FROM tbl_respon_tl 
                                    WHERE id_lapormasalah = $id
                                    ORDER BY dlu_tl DESC
                                    LIMIT 1";
                            $resultTL = mysqli_query($conn, $sqlTL);
                            while ($rowTL = mysqli_fetch_assoc($resultTL)) {
                              if ($rowTL['kat_tl_respon'] == 1) {
                                echo '<span class="badge badge-warning">TL Awal</span>';
                              } else if ($rowTL['kat_tl_respon'] == 2) {
                                echo '<span class="badge badge-success">TL Selesai</span>';
                              }
                            }
                          }
                          ?>
                        </td>
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