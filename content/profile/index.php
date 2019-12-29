<?php

// link ke file yang dituju melalui include
if (isset($_GET['act']) && $_GET['act'] == "gantipass") {
  include 'gantipassw.php';
} else {

  // query edit
  if (isset($_POST['update'])) {
    $nama       = $_POST['nama'];
    $email      = $_POST['email'];

    $res = true;

    if ($res) {
      $sql = "UPDATE tb_user 
        SET nama_user = '$nama',
        email = '$email'
        WHERE userid = '$_SESSION[userid]'";

      if (mysqli_query($conn, $sql)) {
        echo '<script type="text/javascript">
            alert("Data Profile Berhasil Diedit");
            window.location.href="t.php?page=profile";
            </script>';
      } else {
        echo '<script type="text/javascript">
            alert("Data Profile Gagal Diedit");
            window.location.href="t.php?page=profile";
            </script>';
      }
    }
  }

  // query menampilkan data dengan id
  $sqlUbah = "SELECT * FROM tb_user a 
              LEFT JOIN tb_opd b ON a.opd = b.idopd 
              LEFT JOIN tb_groupuser c ON a.groupuser = c.id_groupuser 
              WHERE userid = '$_SESSION[userid]'";
  $resUbah = mysqli_query($conn, $sqlUbah);
  $data = mysqli_fetch_assoc($resUbah);
  $id = $data['userid'];
  $nama = $data['nama_user'];

  ?>


  <!-- agar menu sidebar saat di klik active -->
  <script type="text/javascript">
    document.getElementById('profile').classList.add('active');
  </script>

  <!-- isi konten -->
  <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">

      <h1 class="h3 mb-0 text-gray-800"><?php include 'template/title.php'; ?></h1>

    </div>

    <div class="row">

      <div class="col-xl-3 col-lg-3">
        <div class="card shadow mb-4">
          <!-- Card Header - Dropdown -->
          <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">Data <?php include 'template/title.php'; ?></h6>
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item text-center"><img class="img-profile rounded-circle mx-auto" src="assets/img/user.png" width="80%"></li>
            <li class="list-group-item"><b>Username</b> : <?= $id; ?></li>
            <li class="list-group-item"><b>Nama</b> : <?= $nama; ?></li>
            <li class="list-group-item"><b>Email</b> : <?= $data['email']; ?></li>
            <li class="list-group-item"><b>OPD</b> : <?php if ($data['namaopd'] != '') {
                                                          echo $data['namaopd'];
                                                        } else {
                                                          echo "-";
                                                        } ?></li>
            <li class="list-group-item"><b>Grup User</b> : <?= $data['keterangan']; ?></li>
            <li class="list-group-item"><a class="btn btn-secondary" title="Ganti Password" href="" data-toggle="modal" data-target="#modalGantiPassword-<?= $id; ?>"><i class="fas fa-fw fa-key"></i> Ganti Password</a></li>

            <!-- Modal Ganti Password -->
            <?php include 'modal_gantipassw.php'; ?>
            <!-- Modal Ganti Password -->
          </ul>
        </div>
      </div>

      <div class="col-xl-9 col-lg-9">
        <div class="card shadow mb-4">
          <!-- Card Header - Dropdown -->
          <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">Penjelasan Data Pendukung Perangkat Daerah</h6>
          </div>
          <div class="card-body">
            <ul class="list-group list-group-flush">
              <?php
                $sqlFeedback = "SELECT * FROM tb_feedback a 
                                LEFT JOIN tb_penilaian b ON b.idpenilaian = a.idpenilaian
                                LEFT JOIN tb_indikator c ON c.idindikator = b.idindikator
                                LEFT JOIN tb_user d ON d.userid = a.userid_created
                                WHERE userid_created = '$_SESSION[userid]' 
                                ORDER BY date_created DESC 
                                LIMIT 10";
                $resulFeedback = mysqli_query($conn, $sqlFeedback);
                if (mysqli_num_rows($resulFeedback) > 0) {


                  while ($rowFeedback =  mysqli_fetch_assoc($resulFeedback)) { ?>
                  <li class="list-group-item"><b><?= "Indikator " . $rowFeedback['indikator'] . " " . $rowFeedback['namaindikator']; ?><br><?= "Tahun Penilaian : " . $rowFeedback['tahun_penilaian']; ?></b><br><?= $rowFeedback['ket_feedback'] . " - " . $rowFeedback['files_feedback']; ?><br><small><?= date('d F Y h:i', strtotime($rowFeedback['date_created'])); ?></small></li>
                <?php }
                  } else { ?>
                <li class="list-group-item"><b>Penjelasan Data Pendukung Perangkat Daerah Tidak Ada.</b></li>
              <?php } ?>
            </ul>
          </div>
        </div>
      </div>

      <div class="col-xl-3 col-lg-3">
        <div class="card shadow mb-4">
          <!-- Card Header - Dropdown -->
          <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">Edit Data <?php include 'template/title.php'; ?></h6>
          </div>
          <div class="card-body">
            <div>
              <form method="post">
                <div class="form-group">
                  <label for="nama">Nama</label>
                  <input type="text" class="form-control" name="nama" id="nama" value="<?= $data['nama_user']; ?>" placeholder="Enter Nama" autocomplete="off">
                </div>
                <div class="form-group">
                  <label for="email">Email address</label>
                  <input type="email" class="form-control" name="email" id="email" value="<?= $data['email']; ?>" placeholder="Enter Email" autocomplete="off">
                </div>
                <button type="submit" class="btn btn-primary" name="update">Simpan</button>
              </form>
            </div>
          </div>
        </div>
      </div>

    </div>

  </div>

<?php } ?>