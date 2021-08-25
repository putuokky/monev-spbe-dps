<?php

// link ke file yang dituju melalui include
if (isset($_GET['act']) && $_GET['act'] == "hapus") {
  include 'delete.php';
} else if (isset($_GET['act']) && $_GET['act'] == "tambah") {
  include 'formtambah.php';
} else if (isset($_GET['act']) && $_GET['act'] == "plusfeedbackopd") {
  include 'formtambahfeedbackopd.php';
} else if (isset($_GET['act']) && $_GET['act'] == "ubah") {
  include 'formedit.php';
} else if (isset($_GET['act']) && $_GET['act'] == "hapusfeedback") {
  include 'delete_feedback.php';
} else if (isset($_GET['act']) && $_GET['act'] == "editfeedback") {
  include 'edit_feedback.php';
} else {

?>

  <!-- agar menu sidebar saat di klik active -->
  <script type="text/javascript">
    document.getElementById('nilaikematangan').classList.add('active');
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

        <?php
        if ($_SESSION['groupuser'] == 1) { ?>
          <a class="btn btn-primary btn-icon-split h3 mb-4" title="Tambah" href="?page=nilaikematangan&act=tambah">
            <span class="icon">
              <i class="fas fa-fw fa-plus"></i>
            </span>
            <span class="text">Tambah</span>
          </a>
        <?php } ?>

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
                    <th>Rekomendasi</th>
                    <th>Nilai Kematangan (Nilai Pusat)</th>
                    <th>Penilaian Mandiri</th>
                    <th>Tindak Lanjut</th>
                    <th>Target Waktu</th>
                    <th>OPD</th>
                </thead>
                <tfoot>
                  <tr>
                    <th>No</th>
                    <th>Action</th>
                    <th>Tahun</th>
                    <th>Indikator</th>
                    <th>Rekomendasi</th>
                    <th>Nilai Kematangan (Nilai Pusat)</th>
                    <th>Penilaian Mandiri</th>
                    <th>Tindak Lanjut</th>
                    <th>Target Waktu</th>
                    <th>OPD</th>
                  </tr>
                </tfoot>
                <tbody>
                  <?php
                  // grup user admin OPD atau Operator OPD
                  if ($_SESSION['groupuser'] == 2 || $_SESSION['groupuser'] == 3) {
                    if (isset($_POST['cari'])) {
                      $caritahun = $_POST['caritahun'];
                      $sql = "SELECT * FROM tb_penilaian a 
                            LEFT JOIN tb_indikator b ON b.idindikator = a.idindikator 
                            LEFT JOIN tb_level c ON c.idlevel = a.penilaianmandiri 
                            LEFT JOIN tb_opdterkait d ON d.idpenilaian = a.idpenilaian 
                            LEFT JOIN tb_opd e ON e.idopd = d.idopd
                            WHERE d.idopd = '$_SESSION[opd]' && a.tahun_penilaian LIKE '%" . $caritahun . "%'";
                    } else {
                      $sql = "SELECT * FROM tb_penilaian a 
                            LEFT JOIN tb_indikator b ON b.idindikator = a.idindikator 
                            LEFT JOIN tb_level c ON c.idlevel = a.penilaianmandiri 
                            LEFT JOIN tb_opdterkait d ON d.idpenilaian = a.idpenilaian 
                            LEFT JOIN tb_opd e ON e.idopd = d.idopd
                            WHERE d.idopd = '$_SESSION[opd]'";
                    }
                  } else {
                    if (isset($_POST['cari'])) {
                      $caritahun = $_POST['caritahun'];
                      $sql = "SELECT * FROM tb_penilaian a 
                            LEFT JOIN tb_indikator b ON b.idindikator = a.idindikator 
                            LEFT JOIN tb_level c ON c.idlevel = a.penilaianmandiri 
                            LEFT JOIN tb_opdterkait d ON d.idpenilaian = a.idpenilaian 
                            LEFT JOIN tb_opd e ON e.idopd = d.idopd
                            WHERE a.tahun_penilaian LIKE '%" . $caritahun . "%'";
                    } else {
                      $sql = "SELECT * FROM tb_penilaian a 
                            LEFT JOIN tb_indikator b ON b.idindikator = a.idindikator 
                            LEFT JOIN tb_level c ON c.idlevel = a.penilaianmandiri 
                            LEFT JOIN tb_opdterkait d ON d.idpenilaian = a.idpenilaian 
                            LEFT JOIN tb_opd e ON e.idopd = d.idopd";
                    }
                  }
                  $sql = $sql . " ORDER BY a.tahun_penilaian DESC, a.idindikator ASC";
                  $result = mysqli_query($conn, $sql);

                  if (mysqli_num_rows($result) > 0) {
                    $no = 1;
                    // output data of each row
                    while ($row = mysqli_fetch_assoc($result)) {
                      $id = $row['idpenilaian'];
                      $tahun_penilaian = $row['tahun_penilaian'];
                      $nilaikematangan = $row['nilaikematangan'];
                      $penilaianmandiri = $row['penilaianmandiri'];
                      $tindaklanjut = $row['tindaklanjut'];
                      $target_waktu = $row['target_waktu'];
                      $indikator = $row['indikator'];
                      $namaindikator = $row['namaindikator'];
                      $rekomendasi = $row['rekomendasi'];
                      $namaopd = $row['namaopd'];
                      $nama_pendek_opd = $row['nama_pendek_opd'];
                      $nilaimadiri = $row['nilaimadiri'];
                  ?>

                      <tr>
                        <td><?= $no; ?></td>
                        <td>
                          <?php
                          if ($_SESSION['groupuser'] == 2 || $_SESSION['groupuser'] == 3) { ?>
                            <a class="btn btn-info" title="Feedback OPD" href="?page=nilaikematangan&act=plusfeedbackopd&id=<?= $id; ?>"><i class="fas fa-fw fa-comments"></i></a>
                          <?php
                          } else { ?>
                            <a class="btn btn-info" title="Penjelasan Pendukung" href="?page=nilaikematangan&act=plusfeedbackopd&id=<?= $id; ?>"><i class="fas fa-fw fa-comments"></i></a>
                            <a class="btn btn-warning" title="Edit" href="?page=nilaikematangan&act=ubah&id=<?= $id; ?>"><i class="fas fa-fw fa-edit"></i></a>
                            <a class="btn btn-danger" title="Hapus" href="" data-toggle="modal" data-target="#modalHapus-<?= $id; ?>"><i class="fas fa-fw fa-trash-alt"></i></a>
                          <?php }
                          ?>

                          <!-- Modal Hapus -->
                          <?php include 'modal_hapus.php'; ?>
                          <!-- Modal Hapus -->

                        </td>
                        <td><?= $tahun_penilaian; ?></td>
                        <td><?= "Indikator " . $indikator . " : " . $namaindikator; ?></td>
                        <td><?php if (!empty($rekomendasi)) {
                              echo $rekomendasi;
                            } else {
                              echo '-';
                            }
                            ?></td>
                        <td><?php
                            $sqlNilaiMatang = "SELECT * FROM tb_level
                                    WHERE idlevel = '$nilaikematangan'";
                            $resultNilaiMatang = mysqli_query($conn, $sqlNilaiMatang);
                            $rowNilaiMatang = mysqli_fetch_assoc($resultNilaiMatang);

                            if ($nilaikematangan != '-') {
                              echo $rowNilaiMatang['nilaimadiri'];
                            } else {
                              echo '-';
                            }
                            ?></td>
                        <td><?php if (!empty($nilaimadiri)) {
                              echo $nilaimadiri;
                            } else {
                              echo '-';
                            }
                            ?></td>
                        <td><?php if (!empty($tindaklanjut)) {
                              echo $tindaklanjut;
                            } else {
                              echo '-';
                            }
                            ?></td>
                        <td><?= $target_waktu; ?></td>
                        <td><?php if (!empty($nama_pendek_opd)) {
                              echo $nama_pendek_opd;
                            } else {
                              echo $namaopd;
                            } ?></td>
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