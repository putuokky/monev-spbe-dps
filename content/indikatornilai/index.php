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
    document.getElementById('indikator').classList.add('active');
  </script>


  <!-- isi konten -->
  <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">

      <h1 class="h3 mb-0 text-gray-800"><?php include 'template/title.php'; ?></h1>

    </div>

    <div class="row">

      <div class="col-xl-12 col-lg-12">

        <a class="btn btn-primary btn-icon-split h3 mb-4" title="Tambah" href="?page=indikator&act=tambah">
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
                <tfoot>
                  <tr>
                    <th>Domain/Aspek/Indikator</th>
                    <th>Deskripsi</th>
                    <th>Bobot (%)</th>
                    <th>Bobot Aspek (%)</th>
                    <th>TK Final Adj</th>
                    <th>Indeks Akhir</th>
                  </tr>
                </tfoot>
                <tbody>
                <?php
                  $sql = "SELECT * FROM tb_domain a 
                        LEFT JOIN tb_indeks b ON b.id_indeks = a.id_indeks 
                        WHERE b.nama_indeks = 'SPBE'
                        ORDER BY a.urutan_domain ASC";
                  $result = mysqli_query($conn, $sql);

                  if (mysqli_num_rows($result) > 0) {
                    $no = 1;
                    // output data of each row
                    while ($row = mysqli_fetch_assoc($result)) {
                      $id_domain = $row['iddomain'];
                      $nilai_indeks_domain = $row['nilai_indeks_domain'];
                      $namadomain = $row['namadomain'];
                      $bobot = $row['bobot'];
                      $tahun_domain = $row['tahun_domain'];
                      $nama_indeks = $row['nama_indeks'];
                      ?>

                      <tr>
                        <td><?= "Domain ".$no; ?></td>
                        <td><?= $namadomain; ?></td>
                        <td>Bobot utk domain</td>
                        <td>bobot aspek utk domain</td>
                        <td>TK Final Adj utk domain</td>
                        <td>Indeks Akhir utk domain</td>
                      </tr>
                      <?php
                      $no++;

                      
                    }
                  }
                  ?>

                  <!-- open indikator -->
                  <?php

                    $sql = "SELECT * FROM tb_indikator a 
                          LEFT JOIN tb_aspek b ON a.idaspek = b.idaspek 
                          LEFT JOIN tb_detail_indikator c ON a.idindikator = c.idindikator_detail
                          WHERE b.idaspek = '$id_aspek'";
                    $result = mysqli_query($conn, $sql);

                    if (mysqli_num_rows($result) > 0) {
                      $no = 1;
                      // output data of each row
                      while ($row = mysqli_fetch_assoc($result)) {
                        $id = $row['idindikator'];
                        $namaindikator = $row['namaindikator'];
                        $indikator = $row['indikator'];
                        $penjelasanindikator = $row['penjelasanindikator'];
                        $bobot_indikator = $row['bobot_indikator'];
                        $nama_aspek = $row['nama_aspek'];
                        $penjelasan_indikator_list = $row['penjelasan_indikator_list'];
                        $penjelasan_indikator_level = $row['penjelasan_indikator_level'];
                        $penjelasan_indikator_tambahan = $row['penjelasan_indikator_tambahan'];
                        ?>

                      <tr>
                        <td><?= "Indikator ".$indikator; ?></td>
                        <td><?= $namaindikator; ?></td>
                        <td><?= number_format($bobot_indikator, 1, ",", "."); ?></td>
                        <td>bobot aspek</td>
                        <td>final</td>
                        <td>indek akhir</td>
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

    </div>

  </div>

<?php } ?>