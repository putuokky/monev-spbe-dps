<?php

// link ke file yang dituju melalui include
// if (isset($_GET['act']) && $_GET['act'] == "tambahnilai") {
//   include 'tambah-nilai.php';
// } else {

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('domain').classList.add('active');
</script>

<!-- isi konten -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">

    <h1 class="h3 mb-0 text-gray-800"><?php include 'template/title.php'; ?></h1>

  </div>

  <div class="row">

    <div class="col-xl-12 col-lg-12">
      <div class="card shadow mb-4">
        <!-- Card Header - Dropdown -->
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
          <h6 class="m-0 font-weight-bold text-primary">Data Nilai <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <a class="btn btn-dark btn-icon-split mb-3" title="Kembali" href="?page=domain">
            <span class="text">Kembali</span>
          </a>
          <a class="btn btn-primary btn-icon-split h3 mb-3" title="Tambah" href="?page=domain&act=tambahnilai&id=<?= $id; ?>">
            <span class="icon">
              <i class="fas fa-fw fa-plus"></i>
            </span>
            <span class="text">Tambah</span>
          </a>
          <div class="table-responsive">
            <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Action</th>
                  <th>Indeks</th>
                  <th>Nama Domain</th>
                  <th>Bobot (%)</th>
                  <th>Nilai</th>
                  <th>Tahun Domain</th>
              </thead>
              <tfoot>
                <tr>
                  <th>No</th>
                  <th>Action</th>
                  <th>Indeks</th>
                  <th>Nama Domain</th>
                  <th>Bobot (%)</th>
                  <th>Nilai</th>
                  <th>Tahun Domain</th>
                </tr>
              </tfoot>
              <tbody>
                <?php
                // SPBE
                if ($_SESSION['grupindeks'] == 1) {
                  $sql = "SELECT * FROM tb_domain_nilai a 
                  LEFT JOIN tb_domain b ON b.id_domain = a.domain
                  LEFT JOIN tb_indeks c ON c.id_indeks = b.indeks
                  LEFT JOIN tb_indeks_nilai d ON d.id_indeks_nilai = a.indeks_nilai
                  WHERE a.domain = $id";

                  // IKCI
                  // } else if ($_SESSION['grupindeks'] == 2) {
                  //   $sql = "SELECT * FROM tb_domain a 
                  //   LEFT JOIN tb_indeks b ON b.id_indeks = a.indeks 
                  //   LEFT JOIN tbl_user_katindex c ON c.user_katindex = b.nama_indeks
                  //   LEFT JOIN tb_domain_nilai d ON d.domain= a.id_domain
                  //   WHERE a.user_katindex = $_SESSION[grupindeks]
                  //   GROUP BY a.id_domain";
                  // } else {
                  //   $sql = "SELECT * FROM tb_domain a 
                  //   LEFT JOIN tb_indeks b ON b.id_indeks = a.indeks 
                  //   LEFT JOIN tbl_user_katindex c ON c.user_katindex = b.nama_indeks
                  //   LEFT JOIN tb_domain_nilai d ON d.domain= a.id_domain
                  //   GROUP BY a.id_domain";
                  // }

                  $result = mysqli_query($conn, $sql);

                  if (mysqli_num_rows($result) > 0) {
                    $no = 1;
                    // output data of each row
                    while ($row = mysqli_fetch_assoc($result)) {
                      $id = $row['id_domain_nilai'];
                      $nilai_domain = $row['nilai_domain'];
                      $nama_domain = $row['nama_domain'];
                      $bobot_domain = $row['bobot_domain'];
                      $thn_domain = $row['tahun_indeks'];
                      $nama_indeks = $row['nama_indeks'];
                ?>

                      <tr>
                        <td><?= $no; ?></td>
                        <td>
                          <a class="btn btn-warning" title="Edit" href="?page=domain&act=ubahnilai&id=<?= $id; ?>"><i class="fas fa-fw fa-edit"></i></a>
                          <a class="btn btn-danger" title="Hapus" href="" data-toggle="modal" data-target="#modalHapus-<?= $id; ?>"><i class="fas fa-fw fa-trash-alt"></i></a>

                          <!-- Modal Hapus -->
                          <?php include 'modal_hapus-nilai.php'; ?>
                          <!-- Modal Hapus -->

                        </td>
                        <td><?= $nama_indeks; ?></td>
                        <td><?= $nama_domain; ?></td>
                        <td><?= number_format($bobot_domain, 2, ",", "."); ?></td>
                        <td><?= number_format($nilai_domain, 2, ",", "."); ?></td>
                        <td><?= $thn_domain; ?></td>
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

<?php
                }
                // }
?>