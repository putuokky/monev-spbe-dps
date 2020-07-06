<div class="row">
  <div class="col-xl-12 col-md-12 mb-4">
    <?php
    if (isset($_POST['cari'])) {
      $caritahun = $_POST['caritahun'];
      $sql = "SELECT * FROM tb_indeks a 
              LEFT JOIN tbl_user_katindex b ON b.user_katindex = a.nama_indeks 
              WHERE b.id_user_katindex = $_SESSION[grupindeks] && a.tahun_indeks LIKE '%$caritahun%'";
    } else {
      $sql = "SELECT * FROM tb_indeks a 
              LEFT JOIN tbl_user_katindex b ON b.user_katindex = a.nama_indeks 
              WHERE b.id_user_katindex = $_SESSION[grupindeks] && a.tahun_indeks = '$thnkmrn'";
    }

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