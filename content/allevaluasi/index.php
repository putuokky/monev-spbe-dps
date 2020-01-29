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
    document.getElementById('alleva').classList.add('active');
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

        <?php if (isset($_POST['cari'])) { ?>
        <div class="card shadow mb-4">
          <!-- Card Header - Dropdown -->
          <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">Data <?php include 'template/title.php'; ?> <?= $_POST['thnevaluasi']; ?></h6>
          </div>
          <div class="card-body">
            <div class="accordion" id="accordionExample">
            <?php
              $var = 0;
              $sql = "SELECT a.id_eksekutif_opd, a.tahapan_yg_harus_dipenuhi_opd,a.telah_miliki, a.belum_miliki, b.tahun_penilaian, d.indikator, d.namaindikator, e.idopd, e.namaopd, e.nama_pendek_opd, f.nilaimadiri AS nilaikematanganpusat, g.nilaimadiri AS nilaipenmandiri, h.files_feedback
              FROM tb_eksekutif_opd a
              LEFT JOIN tb_penilaian b ON b.idpenilaian = a.idpenilaian  
              LEFT JOIN tb_opdterkait c ON c.idpenilaian = a.idpenilaian
              LEFT JOIN tb_indikator d ON d.idindikator = b.idindikator
              LEFT JOIN tb_opd e ON e.idopd = c.idopd
              LEFT JOIN tb_level f ON f.idlevel = b.nilaikematangan
              LEFT JOIN tb_level g ON g.idlevel = b.penilaianmandiri
              LEFT JOIN tb_feedback h ON h.idpenilaian = b.idpenilaian
                    WHERE e.idopd = $_SESSION[opd] && b.tahun_penilaian = $_POST[thnevaluasi]
              ORDER BY d.indikator ASC";
              $result = mysqli_query($conn, $sql);
              if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                  $id = $row['id_eksekutif_opd'];
                  $nilaikematanganpusat = $row['nilaikematanganpusat'];                  
                  $nilaipenmandiri = $row['nilaipenmandiri'];                  
                  $tahap_opd = explode(";", $row['tahapan_yg_harus_dipenuhi_opd']);
                  $telah_miliki = explode(";", $row['telah_miliki']);
                  $belum_miliki = $row['belum_miliki'];
                  $tahun_penilaian = $row['tahun_penilaian'];
                  $indikator = $row['indikator'];
                  $namaindikator = $row['namaindikator'];
                  $namaopd = $row['namaopd'];
                  $nama_pendek_opd = $row['nama_pendek_opd'];
                  $files_feedback = $row['files_feedback'];
                ?>
                <div class="card">
                  <div class="card-header" id="headingOne">
                    <h2 class="mb-0">
                      <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse<?= $var; ?>">
                        <?= "Indikator ". $indikator; ?>
                      </button>
                    </h2>
                  </div>

                  <div id="collapse<?= $var; ?>" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                    <div class="card-body">
                      <div class="table-responsive">
                        <table class="table table-bordered table-hover" id="" width="100%" cellspacing="0">
                          <tbody>
                            <tr>
                              <th>Indikator</th>
                              <td><?= "Indikator ".$indikator." - ".$namaindikator; ?></td>
                            </tr>
                            <tr>
                              <th>Nilai Pusat</th>
                              <td><?php if (!empty($nilaikematanganpusat)) {
                                echo $nilaikematanganpusat;
                              } else {
                                echo "-";
                              }
                              ?></td>
                            </tr>
                            <tr>
                              <th>Nilai Mandiri</th>
                              <td><?php if (!empty($nilaipenmandiri)) {
                                echo $nilaipenmandiri;
                              } else {
                                echo "-";
                              }
                              ?></td>
                            </tr>
                            <tr>
                              <th>Tahap Yang Harus dipenuhi OPD</th>
                              <td><ol>
                              <?php for ($i=0; $i < count($tahap_opd); $i++) { ?>
                                <li><?= $tahap_opd[$i]; ?></li>
                              <?php } ?>
                              </ol></td>
                            </tr>
                            <tr>
                              <th>Yang Telah dimiliki</th>
                              <td><ol>
                              <?php for ($j=0; $j < count($telah_miliki); $j++) { ?>
                                <li><?= $telah_miliki[$j]; ?></li>
                              <?php } ?>
                              </ol>
                              File Pendukung : <a href="assets/file/feedback/<?= $files_feedback; ?>" target="_blank"><?= $files_feedback; ?></a>
                              </td>
                            </tr>
                            <tr>
                              <th>Yang Belum dimiliki</th>
                              <td><?= $belum_miliki; ?></td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
            <?php $var++; } 
              } else { echo "<h5>Data Belum tersedia</h5>"; } ?>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>

    </div>

  </div>

<?php } ?>