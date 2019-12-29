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
    document.getElementById('evaluasi').classList.add('active');
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

        <!-- khusus admin karna aplikasi masih kurang -->
        <?php
        if ($_SESSION['groupuser'] == 1) { ?>
          <a class="btn btn-primary btn-icon-split h3 mb-4" title="Tambah" href="?page=evaluasi&act=tambah">
            <span class="icon">
              <i class="fas fa-fw fa-plus"></i>
            </span>
            <span class="text">Tambah</span>
          </a>
        <?php } ?>
        <!-- end khusus admin karna aplikasi masih kurang -->

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
                    <th>Tahun</th>
                    <th>Indikator</th>
                    <th>Pertanyaan</th>
                    <th>Level</th>
                    <th>Penjelasan Evaluasi</th>
                </thead>
                <tfoot>
                  <tr>
                    <th>No</th>
                    <th>Action</th>
                    <th>Tahun</th>
                    <th>Indikator</th>
                    <th>Pertanyaan</th>
                    <th>Level</th>
                    <th>Penjelasan Evaluasi</th>
                  </tr>
                </tfoot>
                <tbody>
                  <?php
                  if (isset($_POST['cari'])) {
                    $thnevaluasi = $_POST['thnevaluasi'];
                    $sql = "SELECT * FROM tb_evaluasi a 
                        LEFT JOIN tb_level b ON b.idlevel = a.idlevel 
                        LEFT JOIN tb_indikator c ON c.idindikator = a.idindikator 
                        LEFT JOIN tb_pertanyaan d ON d.idpertanyaan = a.idpertanyaan
                        WHERE a.tahun_evaluasi LIKE '%" . $thnevaluasi . "%'";
                  } else {
                    $sql = "SELECT * FROM tb_evaluasi a 
                        LEFT JOIN tb_level b ON b.idlevel = a.idlevel 
                        LEFT JOIN tb_indikator c ON c.idindikator = a.idindikator 
                        LEFT JOIN tb_pertanyaan d ON d.idpertanyaan = a.idpertanyaan";
                  }

                  $result = mysqli_query($conn, $sql);

                  if (mysqli_num_rows($result) > 0) {
                    $no = 1;
                    // output data of each row
                    while ($row = mysqli_fetch_assoc($result)) {
                      $id = $row['idevaluasi'];
                      $tahun_evaluasi = $row['tahun_evaluasi'];
                      $penjelasan_evaluasi = $row['penjelasan_evaluasi'];
                      $indikator = $row['indikator'];
                      $namaindikator = $row['namaindikator'];
                      $namalevel = $row['namalevel'];
                      $penjelasan_level = $row['penjelasan_level'];
                      $pertanyaan = $row['pertanyaan'];
                  ?>

                      <tr>
                        <td><?= $no; ?></td>
                        <td>
                          <!-- khusus admin karna aplikasi masih kurang -->
                          <?php if ($_SESSION['groupuser'] == 1) : ?>
                            <a class="btn btn-warning" title="Edit" href="?page=evaluasi&act=ubah&id=<?= $id; ?>"><i class="fas fa-fw fa-edit"></i></a>
                            <a class="btn btn-danger" title="Hapus" href="" data-toggle="modal" data-target="#modalHapus-<?= $id; ?>"><i class="fas fa-fw fa-trash-alt"></i></a>
                          <?php endif ?>
                          <!-- end khusus admin karna aplikasi masih kurang -->

                          <!-- Modal Hapus -->
                          <?php include 'modal_hapus.php'; ?>
                          <!-- Modal Hapus -->
                        </td>
                        <td><?= $tahun_evaluasi; ?></td>
                        <td><?= "Indikator " . $indikator . " : " . $namaindikator; ?></td>
                        <td><?= $pertanyaan; ?></td>
                        <td><span data-toggle="tooltip" data-placement="top" title="<?= $penjelasan_level; ?>"><?= $namalevel; ?></span>
                        </td>
                        <td><?php
                            if ($penjelasan_evaluasi == '') {
                              echo "-";
                            } else { ?>
                            <button type="button" class="btn btn-dark" title="Penjelasan <?php include 'template/title.php'; ?>" data-toggle="modal" data-target="#modalDetailPenjelasan-<?= $id; ?>"><i class="fas fa-fw fa-copy"></i></button>
                          <?php } ?>

                          <!-- Modal Detail -->
                          <?php include 'modal_detail_penjelasan.php'; ?>
                          <!-- End Modal Detail -->
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