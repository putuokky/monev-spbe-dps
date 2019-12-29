<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('dashboard').classList.add('active');
</script>

<!-- isi konten -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">

    <h1 class="h3 mb-0 text-gray-800"><?php include 'template/title.php'; ?></h1>

  </div>

  <!-- Content Row -->
  <div class="row">

    <div class="col-xl-12 col-md-12 mb-4">
      <?php
      $sql = "SELECT * FROM tb_indeks WHERE nama_indeks LIKE '%spbe%'";
      // $sql = "SELECT * FROM tb_indeks WHERE nama_indeks LIKE '%spbe%' && tahun_indeks = 'date(Y)'";
      $result = mysqli_query($conn, $sql);
      $row = mysqli_fetch_assoc($result);

      $thn_indeks = $row['tahun_indeks'];
      ?>
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Indeks SPBE <?= $thn_indeks; ?></div>
              <div class="h5 mb-0 font-weight-bold text-gray-800">
                <?php
                $nilai_indeks = $row['nilai_indeks'];
                // $ket_indeks;

                if (($nilai_indeks >= '4,2') && ($nilai_indeks == '5,0')) {
                  $ket_indeks = "Memuaskan";
                } else if (($nilai_indeks >= '3,5') && ($nilai_indeks < '4,2')) {
                  $ket_indeks = "Sangat Baik";
                } else if (($nilai_indeks >= '2,6') && ($nilai_indeks < '3,5')) {
                  $ket_indeks = "Baik";
                } else if (($nilai_indeks >= '1,8') && ($nilai_indeks < '2,6')) {
                  $ket_indeks = "Cukup";
                } else if (($nilai_indeks >= '0,1') && ($nilai_indeks < '1,8')) {
                  $ket_indeks = "Kurang";
                } else {
                  $ket_indeks = "";
                }

                echo number_format($nilai_indeks, 2, ",", ".") . " (" . $ket_indeks . ")";

                ?>
              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-globe fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <!-- row -->
  <div class="row">
    <!-- Collapsable Card Example -->
    <div class="col-xs-12 col-lg-6">
      <?php include_once "grafik_indeks.php"; ?>
      <!-- Collapsable Card Example -->
    </div>

    <div class="col-xl-6 col-lg-6">
      <?php include_once "tabel_nilai.php"; ?>
    </div>

    <!-- end row -->
  </div>



</div>