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
    document.getElementById('rekaptingkat').classList.add('active');
  </script>


  <!-- isi konten -->
  <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">

      <h1 class="h3 mb-0 text-gray-800"><?php include 'template/title.php'; ?></h1>

    </div>

    <div class="row">

      <div class="col-xl-12 col-lg-12">

        <a class="btn btn-primary btn-icon-split h3 mb-4" title="Tambah" href="?page=rekap-tingkat&act=tambah">
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
                    <th>Tahun</th>
                    <th>Indikator</th>
                    <th>Nilai Pusat</th>
                    <th>Nilai Mandiri</th>
                    <th>Tahapan yang harus dipenuhi OPD untuk menaikkan nilai SPBE</th>
                    <th>Data Dukung Telah dimiliki</th>
                    <th>Data Dukung Belum dimiliki</th>
                    <th>OPD Terkait</th>
                </thead>
                <tfoot>
                  <tr>
                    <th>No</th>
                    <th>Action</th>
                    <th>Tahun</th>
                    <th>Indikator</th>
                    <th>Nilai Pusat</th>
                    <th>Nilai Mandiri</th>
                    <th>Tahapan yang harus dipenuhi OPD untuk menaikkan nilai SPBE</th>
                    <th>Data Dukung Telah dimiliki</th>
                    <th>Data Dukung Belum dimiliki</th>
                    <th>OPD Terkait</th>
                  </tr>
                </tfoot>
                <tbody>
                  <?php
                  if ($_SESSION['groupuser'] == 1) {
                    $sql = "SELECT a.id_eksekutif_opd, a.tahapan_yg_harus_dipenuhi_opd,a.telah_miliki, a.belum_miliki, b.tahun_penilaian, d.indikator, d.namaindikator, e.idopd, e.namaopd, e.nama_pendek_opd, f.nilaimadiri AS nilaikematanganpusat, g.nilaimadiri AS nilaipenmandiri
                      FROM tb_eksekutif_opd a
                      LEFT JOIN tb_penilaian b ON b.idpenilaian = a.idpenilaian  
                      LEFT JOIN tb_opdterkait c ON c.idpenilaian = a.idpenilaian
                      LEFT JOIN tb_indikator d ON d.idindikator = b.idindikator
                      LEFT JOIN tb_opd e ON e.idopd = c.idopd
                      LEFT JOIN tb_level f ON f.idlevel = b.nilaikematangan
                      LEFT JOIN tb_level g ON g.idlevel = b.penilaianmandiri";
                  } else {
                    $sql = "SELECT a.id_eksekutif_opd, a.tahapan_yg_harus_dipenuhi_opd,a.telah_miliki, a.belum_miliki, b.tahun_penilaian, d.indikator, d.namaindikator, e.idopd, e.namaopd, e.nama_pendek_opd, f.nilaimadiri AS nilaikematanganpusat, g.nilaimadiri AS nilaipenmandiri
                      FROM tb_eksekutif_opd a
                      LEFT JOIN tb_penilaian b ON b.idpenilaian = a.idpenilaian  
                      LEFT JOIN tb_opdterkait c ON c.idpenilaian = a.idpenilaian
                      LEFT JOIN tb_indikator d ON d.idindikator = b.idindikator
                      LEFT JOIN tb_opd e ON e.idopd = c.idopd
                      LEFT JOIN tb_level f ON f.idlevel = b.nilaikematangan
                      LEFT JOIN tb_level g ON g.idlevel = b.penilaianmandiri
                      WHERE e.idopd = $_SESSION[opd]";
                  }
                  $sql = $sql . " ORDER BY b.tahun_penilaian DESC, d.indikator ASC";

                  $result = mysqli_query($conn, $sql);

                  if (mysqli_num_rows($result) > 0) {
                    $no = 1;
                    // output data of each row
                    while ($row = mysqli_fetch_assoc($result)) {
                      $id = $row['id_eksekutif_opd'];
                      $nilaikematanganpusat = $row['nilaikematanganpusat'];
                      $nilaipenmandiri = $row['nilaipenmandiri'];
                      $tahap_opd = $row['tahapan_yg_harus_dipenuhi_opd'];
                      $telah_miliki = $row['telah_miliki'];
                      $belum_miliki = $row['belum_miliki'];
                      $indikator = $row['indikator'];
                      $namaindikator = $row['namaindikator'];
                      $namaopd = $row['namaopd'];
                      $nama_pendek_opd = $row['nama_pendek_opd'];
                      $tahun_penilaian = $row['tahun_penilaian'];
                  ?>

                      <tr>
                        <td><?= $no; ?></td>
                        <td>
                          <!-- <button type="button" class="btn btn-dark" title="Detail" data-toggle="modal" data-target="#modalDetail-<?= $id; ?>"><i class="fas fa-fw fa-file"></i></button> -->
                          <a class="btn btn-warning" title="Edit" href="?page=rekap-tingkat&act=ubah&id=<?= $id; ?>"><i class="fas fa-fw fa-edit"></i></a>
                          <a class="btn btn-danger" title="Hapus" href="" data-toggle="modal" data-target="#modalHapus-<?= $id; ?>"><i class="fas fa-fw fa-trash-alt"></i></a>

                          <!-- Modal Hapus -->
                          <?php include 'modal_hapus.php'; ?>
                          <!-- Modal Hapus -->

                        </td>
                        <td><?= $tahun_penilaian; ?></td>
                        <td><?= "Indikator " . $indikator . " - " . $namaindikator; ?></td>
                        <td><?php if (!empty($nilaikematanganpusat)) {
                              echo $nilaikematanganpusat;
                            } else {
                              echo "-";
                            }
                            ?></td>
                        <td><?php if (!empty($nilaipenmandiri)) {
                              echo $nilaipenmandiri;
                            } else {
                              echo "-";
                            }
                            ?></td>
                        <td><?= $tahap_opd; ?></td>
                        <td><?= $telah_miliki; ?></td>
                        <td><?= $belum_miliki; ?></td>
                        <td><?php if (empty($nama_pendek_opd)) {
                              echo $namaopd;
                            } else {
                              echo $nama_pendek_opd;
                            }
                            ?></td>
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