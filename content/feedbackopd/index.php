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
    document.getElementById('feedbackopd').classList.add('active');
  </script>


  <!-- isi konten -->
  <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">

      <h1 class="h3 mb-0 text-gray-800"><?php include 'template/title.php'; ?></h1>

    </div>

    <div class="row">

      <div class="col-xl-12 col-lg-12">

        <!-- <a class="btn btn-primary btn-icon-split h3 mb-4" title="Tambah" href="?page=feedbackopd&act=tambah">
          <span class="icon">
            <i class="fas fa-fw fa-plus"></i>
          </span>
          <span class="text">Tambah</span>
        </a> -->

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
                    <th>Tahun Penilaian</th>
                    <th>Indikator</th>
                    <th>Keterangan Feedback</th>
                    <th>Data Pendukung</th>
                    <th>User / Date</th>
                </thead>
                <tfoot>
                  <tr>
                    <th>No</th>
                    <th>Action</th>
                    <th>Tahun Penilaian</th>
                    <th>Indikator</th>
                    <th>Keterangan Feedback</th>
                    <th>Data Pendukung</th>
                    <th>User / Date</th>
                  </tr>
                </tfoot>
                <tbody>
                  <?php
                    // grup user admin OPD atau Operator OPD
                    if ($_SESSION['groupuser'] == 2 || $_SESSION['groupuser'] == 3) {
                      $sqlFeedback = "SELECT * FROM tb_feedback a 
                          LEFT JOIN tb_penilaian b ON b.idpenilaian = a.idpenilaian
                          LEFT JOIN tb_indikator c ON c.idindikator = b.idindikator
                          LEFT JOIN tb_user d ON d.userid = a.userid_created
                          WHERE d.opd = '$_SESSION[opd]'";
                    } else {
                      $sqlFeedback = "SELECT * FROM tb_feedback a 
                          LEFT JOIN tb_penilaian b ON b.idpenilaian = a.idpenilaian
                          LEFT JOIN tb_indikator c ON c.idindikator = b.idindikator
                          LEFT JOIN tb_user d ON d.userid = a.userid_created";
                    }
                    $sqlFeedback = $sqlFeedback. " ORDER BY b.tahun_penilaian DESC";

                    $result = mysqli_query($conn, $sqlFeedback);

                    if (mysqli_num_rows($result) > 0) {
                      $no = 1;
                      // output data of each row
                      while ($row = mysqli_fetch_assoc($result)) {
                        $id = $row['idfeedback'];
                        $idpenilaian = $row['idpenilaian'];
                        $ket_feedback = $row['ket_feedback'];
                        $files_feedback = $row['files_feedback'];
                        $userid_created = $row['userid_created'];
                        $date_created = $row['date_created'];
                        $indikator = $row['indikator'];
                        $namaindikator = $row['namaindikator'];
                        $nama_user = $row['nama_user'];
                        $tahun_penilaian = $row['tahun_penilaian'];
                        ?>

                      <tr>
                        <td><?= $no; ?></td>
                        <td>
                          <a class="btn btn-warning" title="Edit" href="?page=feedbackopd&act=ubah&id=<?= $id; ?>"><i class="fas fa-fw fa-edit"></i></a>
                          <a class="btn btn-danger" title="Hapus" href="" data-toggle="modal" data-target="#modalHapus-<?= $id; ?>"><i class="fas fa-fw fa-trash-alt"></i></a>

                          <!-- Modal Hapus -->
                          <?php include 'modal_hapus.php'; ?>
                          <!-- Modal Hapus -->

                        </td>
                        <td><?= $tahun_penilaian; ?></td>
                        <td><?= "Indikator " . $indikator . " : " . $namaindikator; ?></td>
                        <td><?php if (!empty($ket_feedback)) {
                          echo $ket_feedback;
                        } else {
                          echo "-";
                        }
                         ?></td>
                        <td>
                          <!-- Button trigger modal -->
                          <a href="" data-toggle="modal" data-target="#modalViewDataPendukung">
                            <?= $files_feedback; ?>
                          </a></td>
                        <td><?= $userid_created . "<br>" . date('d-m-Y H:i', strtotime($date_created)); ?></td>
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

  <!-- Modal -->
  <div class="modal fade" id="modalViewDataPendukung" tabindex="-1" role="dialog" aria-labelledby="modalViewDataPendukungLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">View Data Pendukung</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <embed class="embed-responsive-item" src="assets/file/feedback/<?= $files_feedback; ?>" type="application/pdf">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal -->
  <div class="modal fade" id="modalmodalViewPenilaian-<?= $id; ?>" tabindex="-1" role="dialog" aria-labelledby="modalmodalViewPenilaianLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">View Data Pendukung</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="table-responsive">
            <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Tahun</th>
                  <th>Indikator</th>
                  <th>Rekomendasi</th>
                  <th>Nilai Kematangan</th>
                  <th>Penilaian Mandiri</th>
                  <th>Tindak Lanjut</th>
                  <th>Target Waktu</th>
                  <th>OPD</th>
              </thead>
              <tfoot>
                <tr>
                  <th>No</th>
                  <th>Tahun</th>
                  <th>Indikator</th>
                  <th>Rekomendasi</th>
                  <th>Nilai Kematangan</th>
                  <th>Penilaian Mandiri</th>
                  <th>Tindak Lanjut</th>
                  <th>Target Waktu</th>
                  <th>OPD</th>
                </tr>
              </tfoot>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>2</td>
                  <td>3</td>
                  <td>4</td>
                  <td>5</td>
                  <td>6</td>
                  <td>7</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

<?php } ?>