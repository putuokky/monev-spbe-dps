<?php

// link ke file yang dituju melalui include
if (isset($_GET['act']) && $_GET['act'] == "hapus") {
  include 'delete.php';
} else if (isset($_GET['act']) && $_GET['act'] == "tambah") {
  include 'formtambah.php';
} else if (isset($_GET['act']) && $_GET['act'] == "ubah") {
  include 'formedit.php';
} else {
?>

  <!-- agar menu sidebar saat di klik active -->
  <script type="text/javascript">
    document.getElementById('monevapp').classList.add('active');
  </script>


  <!-- isi konten -->
  <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">

      <h1 class="h3 mb-0 text-gray-800"><?php include 'template/title.php'; ?></h1>

    </div>

    <div class="row">

      <div class="col-xl-12 col-lg-12">

        <a class="btn btn-primary btn-icon-split h3 mb-4" title="Tambah" href="?page=monevapp&act=tambah">
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
                    <th>Kategori Monev</th>
                    <th>Nama Aplikasi</th>
                    <th>Permasalahan</th>
                    <th>Solusi/Pengembangan</th>
                    <th>Status</th>
                    <th>User</th>
                </thead>
                <tfoot>
                  <tr>
                    <th>No</th>
                    <th>Action</th>
                    <th>Tanggal</th>
                    <th>Kategori Monev</th>
                    <th>Nama Aplikasi</th>
                    <th>Permasalahan</th>
                    <th>Solusi/Pengembangan</th>
                    <th>Status</th>
                    <th>User</th>
                  </tr>
                </tfoot>
                <tbody>
                  <?php
                  if ($_SESSION['groupuser'] == 1) {
                    $sql = "SELECT a.id_monev_app, a.masalah, a.bukti_dukung, a.solusi_pengembang, a.nama_team, a.status_monev, a.dlu_monev, a.respon_koor, a.nama_koor, a.dlu_respon_koor, b.nama_user, c.judul, d.nama_kategori_monev 
                    FROM tbl_monev_app a 
                    LEFT JOIN tb_user b ON b.userid = a.nama_team 
                    LEFT JOIN aplikasi c ON c.id_app = a.nama_app 
                    LEFT JOIN tbl_kategori_monev d ON d.id_kat_monev = a.kategori_monev 
                    LEFT JOIN tb_user e ON e.userid = a.nama_koor";
                  } else {
                    $sql = "SELECT a.id_monev_app, a.masalah, a.bukti_dukung, a.solusi_pengembang, a.nama_team, a.status_monev, a.dlu_monev, a.respon_koor, a.nama_koor, a.dlu_respon_koor, b.nama_user, c.judul, d.nama_kategori_monev 
                    FROM tbl_monev_app a 
                    LEFT JOIN tb_user b ON b.userid = a.nama_team 
                    LEFT JOIN aplikasi c ON c.id_app = a.nama_app 
                    LEFT JOIN tbl_kategori_monev d ON d.id_kat_monev = a.kategori_monev 
                    LEFT JOIN tb_user e ON e.userid = a.nama_koor";
                  }

                  $sql = $sql . " ORDER BY a.id_monev_app DESC";

                  $result = mysqli_query($conn, $sql);

                  if (mysqli_num_rows($result) > 0) {
                    $no = 1;
                    // output data of each row
                    while ($row = mysqli_fetch_assoc($result)) {
                  ?>
                      <tr>
                        <td><?= $no; ?></td>
                        <td>
                          <!-- <button type="button" class="btn btn-dark btn-sm" title="Detail" data-toggle="modal" data-target="#modalDetail-<?= $id; ?>"><i class="fas fa-fw fa-file"></i></button> -->
                          <a class="btn btn-warning btn-sm" title="Edit" href="?page=monevapp&act=ubah&id=<?= $id; ?>"><i class="fas fa-fw fa-edit"></i></a>
                          <a class="btn btn-danger btn-sm" title="Hapus" href="" data-toggle="modal" data-target="#modalHapus-<?= $id; ?>"><i class="fas fa-fw fa-trash-alt"></i></a>

                          <!-- Modal Hapus -->
                          <?php include 'modal_hapus.php'; ?>
                          <!-- Modal Hapus -->

                        </td>
                        <td><?= date('d-m-Y', strtotime($row['dlu_monev'])); ?></td>
                        <td><?= $row['nama_kategori_monev']; ?></td>
                        <td><?= $row['judul']; ?></td>
                        <td><?= $row['masalah']; ?></td>
                        <td><?= $row['solusi_pengembang']; ?></td>
                        <td><?php if ($row['status_monev'] == '1') {
                              echo '<span class="badge badge-primary">Baru</span>';
                            } else {
                              echo '<span class="badge badge-success">Respon</span>';
                            } ?>
                        </td>
                        <td><?= $row['nama_user']; ?></td>
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