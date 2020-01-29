<?php

// link ke file yang dituju melalui include
if (isset($_GET['act']) && $_GET['act'] == "hapus") {
  include 'delete.php';
} else if (isset($_GET['act']) && $_GET['act'] == "tambah") {
  include 'formtambah.php';
} else if (isset($_GET['act']) && $_GET['act'] == "ubah") {
  include 'formedit.php';
} else if (isset($_GET['act']) && $_GET['act'] == "addjelas") {
  include 'formjelas.php';
} else {
  ?>


  <!-- agar menu sidebar saat di klik active -->
  <script type="text/javascript">
    document.getElementById('indikatornilai').classList.add('active');
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

        <div class="card shadow mb-4">
          <!-- Card Header - Dropdown -->
          <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">Tabel <?php include 'template/title.php'; ?></h6>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered table-hover" id="" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>Domain/Aspek/Indikator</th>
                    <th>Deskripsi</th>
                    <th>Bobot (%)</th>
                    <th>Bobot Aspek (%)</th>
                    <th>TK Final Adj</th>
                    <th>Indeks Akhir</th>
                </thead>
                <tbody>
                <?php
                  $total_hasil_domain = 0;
                  $resultDomain = $model_domain->all();

                  if (mysqli_num_rows($resultDomain) > 0) {
                    // output data of each row
                    while ($rowDomain = mysqli_fetch_assoc($resultDomain)) {
                      $id_domain = $rowDomain['iddomain'];
                      $namadomain = $rowDomain['namadomain'];
                      $urutan_domain = $rowDomain['urutan_domain'];
                      ?>

                      <tr style="background-color:#79e5cb;">
                        <td><?= "Domain ".$urutan_domain; ?></td>
                        <td><?= $namadomain; ?></td>
                        <td>
                        <?php $total_hasil_domain += $model_indikator->jumlahBobotDomain($id_domain);
                        echo number_format($model_indikator->jumlahBobotDomain($id_domain),0, ",", "."). "%"; ?></td>
                        <td></td>
                        <td></td>
                        <td>Indeks Akhir utk domain</td>
                      </tr>
                      <?php
                      $resultAspek = $model_indikator->tampilDataAspek($id_domain);

                      if (mysqli_num_rows($resultAspek) > 0) {
                        // output data of each row
                        while ($rowAspek = mysqli_fetch_assoc($resultAspek)) {
                          $id_aspek = $rowAspek['idaspek'];
                          $nama_aspek = $rowAspek['nama_aspek'];
                          $urutan_aspek = $rowAspek['urutan_aspek'];
                          ?>

                          <tr style="background-color:#efefef;">
                            <td><?= "Aspek ".$urutan_aspek; ?></td>
                            <td><?= $nama_aspek; ?></td>
                            <td><?= number_format($model_indikator->jumlahBobotIndikator($id_aspek),1, ",", "."). "%";?>
                            </td>
                            <td><?= number_format($model_indikator->jumlahBobotIndikator($id_aspek)/$model_indikator->jumlahBobotDomain($id_domain)*100,2, ",", "."); ?>%</td>
                            <td>
                            <?php
                            if (isset($_POST['cari'])) {
                              echo $model_indikator->totalAdj($_POST['caritahun'], $id_aspek);
                            }
                            ?> </td>
                            <td>Indeks Akhir utk aspek</td>
                          </tr>
                          <?php
                            $result = $model_indikator->all($id_aspek);

                            if (mysqli_num_rows($result) > 0) {
                              // output data of each row
                              while ($row = mysqli_fetch_assoc($result)) {
                                $id = $row['idindikator'];
                                $namaindikator = $row['namaindikator'];
                                $indikator = $row['indikator'];
                                $penjelasanindikator = $row['penjelasanindikator'];
                                $bobot_indikator = $row['bobot_indikator'];
                                ?>

                              <tr>
                                <td><?= "Indikator ".$indikator; ?></td>
                                <td><?= $namaindikator; ?></td>
                                <td><?= number_format($bobot_indikator, 1, ",", ".")."%"; ?></td>
                                <td><?php 
                                    $bobot_aspek_for_indi = $bobot_indikator/($model_indikator->jumlahBobotIndikator($id_aspek))*100; 
                                    echo number_format(round($bobot_aspek_for_indi,1),1, ",",".")."%";
                                    ?></td>
                                <td>
                                  <?php
                                  if (isset($_POST['cari'])) {
                                    $adj = 0;

                                    $caritahun = $_POST['caritahun'];
                                    $sqlNilai = "SELECT * FROM tb_penilaian a 
                                                LEFT JOIN tb_indikator b ON b.idindikator = a.idindikator 
                                                LEFT JOIN tb_level c ON c.idlevel = a.penilaianmandiri
                                                WHERE a.idindikator = $id && a.tahun_penilaian  LIKE '%" . $caritahun . "%'";
                                    $resultNilai = mysqli_query($conn, $sqlNilai);
                                    if (mysqli_num_rows($resultNilai) > 0) {
                                      while ($rowNilai = mysqli_fetch_assoc($resultNilai)) {
                                        echo $adj = $rowNilai['nilaimadiri'];
                                      }
                                    } else {
                                      echo "-";
                                    }  
                                  } else {
                                    echo "-";
                                  }                                
                                  ?>
                                </td>
                                <td>
                                <?php
                                if (isset($_POST['cari'])) {
                                  $ba_for_indi_indeks = $bobot_indikator/($model_indikator->jumlahBobotIndikator($id_aspek));
                                  echo number_format($ba_for_indi_indeks*$adj,2,",", ".");
                                } else {
                                  echo "-";
                                }
                                ?>
                                
                                </td>
                              </tr>
                          <?php
                              }
                            }
                            // end indikator

                        }
                      }
                      // end aspek    
                                        
                    }
                  }
                  ?>
                </tbody>
                <tfoot>
                  <tr style="background-color:#efefef;">
                    <th>Indeks SPBE</th>
                    <th></th>
                    <th><?= $total_hasil_domain. "%"; ?></th>
                    <th></th>
                    <th></th>
                    <th>Nilai indeks spbe</th>
                  </tr>
                </tfoot>
              </table>
            </div>
          </div>
        </div>
      </div>

    </div>

  </div>

<?php } ?>