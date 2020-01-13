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
              $sql = "SELECT * FROM tb_indikator";
              $result = mysqli_query($conn, $sql);
              while ($row = mysqli_fetch_assoc($result)) {
            ?>
              <div class="card">
                <div class="card-header" id="headingOne">
                  <h2 class="mb-0">
                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse<?php echo $var; ?>">
                      <?= "Indikator ". $row['indikator']; ?>
                    </button>
                  </h2>
                </div>

                <div id="collapse<?php echo $var; ?>" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                        <thead align="center" >
                          <tr>
                            <th rowspan="2">No</th>
                            <th rowspan="2">Nilai Pusat</th>
                            <th rowspan="2">Tahapan Yang Harus dipenuhi OPD untuk menaikkan nilai SPBE</th>
                            <th rowspan="2">OPD Terkait</th>
                            <th colspan="2">Data Pendukung</th>
                          </tr>
                          <tr>
                            <th>Telah dimiliki</th>
                            <th>Belum dimiliki</th>
                          </tr>
                        </thead>
                        <tbody>
                          <?php
                            $sqlDua = "SELECT * FROM tb_penilaian a 
                            LEFT JOIN tb_indikator b ON b.idindikator = a.idindikator 
                            LEFT JOIN tb_level c ON c.idlevel = a.penilaianmandiri 
                            LEFT JOIN tb_opdterkait d ON d.idpenilaian = a.idpenilaian 
                            LEFT JOIN tb_opd e ON e.idopd = d.idopd
                            WHERE a.idindikator = $row[idindikator]";
                            $resultDua = mysqli_query($conn, $sqlDua);

                            if (mysqli_num_rows($resultDua) > 0) {
                              $no = 1;
                              // output data of each row
                              while ($rowDua = mysqli_fetch_assoc($resultDua)) {
                                $id = $rowDua['id_indeks'];
                                $nama_indeks = $rowDua['nama_indeks'];
                                $nilai_indeks = $rowDua['nilai_indeks'];
                                $tahun_indeks = $rowDua['tahun_indeks'];
                                ?>

                              <tr>
                                <td><?= $no; ?></td>
                                <td><?= $nama_indeks; ?></td>
                                <td><?= number_format($nilai_indeks, 2, ",", "."); ?></td>
                                <td><?= $tahun_indeks; ?></td>
                                <td><?= $tahun_indeks; ?></td>
                                <td><?= $tahun_indeks; ?></td>
                              </tr>
                          <?php
                                $no++;
                              }
                            }
                            ?>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            <?php $var++; } ?>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>

    </div>

  </div>

<?php } ?>