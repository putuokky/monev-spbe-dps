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
    document.getElementById('aspek').classList.add('active');
  </script>


  <!-- isi konten -->
  <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">

      <h1 class="h3 mb-0 text-gray-800"><?php include 'template/title.php'; ?></h1>

    </div>

    <div class="row">

      <div class="col-xl-12 col-lg-12">

        <a class="btn btn-primary btn-icon-split h3 mb-4" title="Tambah" href="?page=aspek&act=tambah">
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
                    <th>Nama Domain</th>
                    <th>Nama Aspek</th>
                    <th>Bobot (%)</th>
                    <th>Target</th>
                    <th>Nilai</th>
                    <th>Tahun Aspek</th>
                </thead>
                <tfoot>
                  <tr>
                    <th>No</th>
                    <th>Action</th>
                    <th>Nama Domain</th>
                    <th>Nama Aspek</th>
                    <th>Bobot (%)</th>
                    <th>Target</th>
                    <th>Nilai</th>
                    <th>Tahun Aspek</th>
                  </tr>
                </tfoot>
                <tbody>
                  <?php
                  // SPBE
                  if ($_SESSION['grupindeks'] == 1) {
                    $sql = "SELECT * FROM tb_aspek a 
                          LEFT JOIN tb_domain b ON a.iddomain = b.iddomain 
                          WHERE b.id_indeks = $_SESSION[grupindeks]";
                    $result = mysqli_query($conn, $sql);
                  // IKCI
                  } else if($_SESSION['grupindeks'] == 2) {
                    $sql = "SELECT * FROM tb_aspek a 
                          LEFT JOIN tb_domain b ON a.iddomain = b.iddomain 
                          WHERE b.id_indeks = $_SESSION[grupindeks]";
                    $result = mysqli_query($conn, $sql);
                  } else {
                    $sql = "SELECT * FROM tb_aspek a 
                          LEFT JOIN tb_domain b ON a.iddomain = b.iddomain";
                    $result = mysqli_query($conn, $sql);
                  }

                  if (mysqli_num_rows($result) > 0) {
                    $no = 1;
                    // output data of each row
                    while ($row = mysqli_fetch_assoc($result)) {
                      $id = $row['idaspek'];
                      $nilai_indeks_aspek = $row['nilai_indeks_aspek'];
                      $nama_aspek = $row['nama_aspek'];
                      $bobot_aspek = $row['bobot_aspek'];
                      $target = $row['target'];
                      $tahun_aspek = $row['tahun_aspek'];
                      $namadomain = $row['namadomain'];
                      ?>

                      <tr>
                        <td><?= $no; ?></td>
                        <td>
                          <!-- <button type="button" class="btn btn-dark" title="Detail" data-toggle="modal" data-target="#modalDetail-<?= $id; ?>"><i class="fas fa-fw fa-file"></i></button> -->
                          <a class="btn btn-warning" title="Edit" href="?page=aspek&act=ubah&id=<?= $id; ?>"><i class="fas fa-fw fa-edit"></i></a>
                          <a class="btn btn-danger" title="Hapus" href="" data-toggle="modal" data-target="#modalHapus-<?= $id; ?>"><i class="fas fa-fw fa-trash-alt"></i></a>

                          <!-- Modal Hapus -->
                          <?php include 'modal_hapus.php'; ?>
                          <!-- Modal Hapus -->

                        </td>
                        <td><?= $namadomain; ?></td>
                        <td><?= $nama_aspek; ?></td>
                        <td><?= number_format($bobot_aspek, 2, ",", "."); ?></td>
                        <td><?= $target; ?></td>
                        <td><?= number_format($nilai_indeks_aspek, 2, ",", "."); ?></td>
                        <td><?= $tahun_aspek; ?></td>
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