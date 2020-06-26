<?php

// link ke file yang dituju melalui include
if (isset($_GET['act']) && $_GET['act'] == "hapus") {
  include 'delete.php';
} else if (isset($_GET['act']) && $_GET['act'] == "tambah") {
  include 'formtambah.php';
} else if (isset($_GET['act']) && $_GET['act'] == "ubah") {
  include 'formedit.php';
} else if (isset($_GET['act']) && $_GET['act'] == "gantipass") {
  include 'gantipassw.php';
} else if (isset($_GET['act']) && $_GET['act'] == "nonaktif") {
  include 'nonaktif.php';
} else if (isset($_GET['act']) && $_GET['act'] == "aktif") {
  include 'aktif.php';
} else {


?>


  <!-- agar menu sidebar saat di klik active -->
  <script type="text/javascript">
    document.getElementById('user').classList.add('active');
  </script>


  <!-- isi konten -->
  <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">

      <h1 class="h3 mb-0 text-gray-800"><?php include 'template/title.php'; ?></h1>

    </div>

    <div class="row">

      <div class="col-xl-12 col-lg-12">

        <a class="btn btn-primary btn-icon-split h3 mb-4" title="Tambah" href="?page=user&act=tambah">
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
                    <th>Username</th>
                    <th>Nama</th>
                    <th>Email</th>
                    <th>OPD</th>
                    <th>Groupuser</th>
                    <th>Grup Indeks</th>
                    <th>Aktif</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                    <th>No</th>
                    <th>Action</th>
                    <th>Username</th>
                    <th>Nama</th>
                    <th>Email</th>
                    <th>OPD</th>
                    <th>Groupuser</th>
                    <th>Grup Indeks</th>
                    <th>Aktif</th>
                  </tr>
                </tfoot>
                <tbody>
                  <?php
                  // grup user admin OPD atau Operator OPD
                  if ($_SESSION['groupuser'] == 2) {
                    $sql = "SELECT * FROM tb_user a 
                            LEFT JOIN tb_opd b ON a.opd = b.idopd 
                            LEFT JOIN tb_groupuser c ON a.groupuser = c.id_groupuser 
                            LEFT JOIN tbl_user_katindex d ON d.id_user_katindex = a.grupindeks
                            WHERE a.opd = '$_SESSION[opd]'";
                  } else {
                    $sql = "SELECT * FROM tb_user a 
                            LEFT JOIN tb_opd b ON a.opd = b.idopd 
                            LEFT JOIN tb_groupuser c ON a.groupuser = c.id_groupuser 
                            LEFT JOIN tbl_user_katindex d ON d.id_user_katindex = a.grupindeks";
                  }
                  $result = mysqli_query($conn, $sql);

                  if (mysqli_num_rows($result) > 0) {
                    $no = 1;
                    // output data of each row
                    while ($row = mysqli_fetch_assoc($result)) {
                      $id = $row['userid'];
                      $nama = $row['nama_user'];
                      $email = $row['email'];
                      $unit = $row['namaopd'];
                      $groupuser = $row['keterangan'];
                      $nama_indeks = $row['user_katindex'];
                      $is_active = $row['is_active'];
                  ?>

                      <tr>
                        <td><?= $no; ?></td>
                        <td>
                          <!-- <button type="button" class="btn btn-dark" title="Detail" data-toggle="modal" data-target="#modalDetail-<?= $id; ?>"><i class="fas fa-fw fa-file"></i></button> -->
                          <a class="btn btn-warning" title="Edit" href="?page=user&act=ubah&id=<?= $id; ?>"><i class="fas fa-fw fa-edit"></i></a>
                          <a class="btn btn-danger" title="Hapus" href="" data-toggle="modal" data-target="#modalHapus-<?= $id; ?>"><i class="fas fa-fw fa-trash-alt"></i></a>
                          <a class="btn btn-secondary" title="Ganti Password" href="" data-toggle="modal" data-target="#modalGantiPassword-<?= $id; ?>"><i class="fas fa-fw fa-key"></i></a>

                          <!-- untuk aktifan account -->
                          <?php
                          if ($_SESSION['groupuser'] == 1) {
                            if ($row['is_active'] == 1) { ?>
                              <a class="btn btn-danger" title="Non Aktif" href="" data-toggle="modal" data-target="#modalNonAktif-<?= $id; ?>"><i class="fas fa-fw fa-times"></i></a>
                            <?php  } else { ?>
                              <a class="btn btn-success" title="Aktif" href="" data-toggle="modal" data-target="#modalAktif-<?= $id; ?>"><i class="fas fa-fw fa-check"></i></a>
                          <?php }
                          } ?>
                          <!-- end untuk aktifan account -->

                          <!-- Modal Hapus -->
                          <?php include 'modal_hapus.php'; ?>
                          <!-- Modal Hapus -->

                          <!-- Modal Non Aktif -->
                          <?php include 'modal_nonaktif.php'; ?>
                          <!-- Modal Non Aktif -->

                          <!-- Modal Non Aktif -->
                          <?php include 'modalAktif.php'; ?>
                          <!-- Modal Non Aktif -->

                          <!-- Modal Non Aktif -->
                          <?php include 'modal_gantipassw.php'; ?>
                          <!-- Modal Non Aktif -->

                        </td>
                        <td><?= $id; ?></td>
                        <td><?= $nama; ?></td>
                        <td><?php if ($email != '') {
                              echo $email;
                            } else {
                              echo "-";
                            } ?></td>
                        <td><?php if ($unit != '') {
                              echo $unit;
                            } else {
                              echo "-";
                            } ?></td>
                        <td><?= $groupuser; ?></td>
                        <td><?php if ($nama_indeks) {
                              echo $nama_indeks;
                            } else {
                              echo "Semua Indeks";
                            } ?></td>
                        <td><?php if ($is_active == 1) {
                              echo '<span class="btn btn-success btn-sm">Ya</span>';
                            } else {
                              echo '<span class="btn btn-danger btn-sm">Tidak</span>';
                            } ?>
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