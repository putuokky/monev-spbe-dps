<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query edit
if (isset($_POST['update'])) {
  $id_nilai        = $_POST['id_nilai'];
  $tahapopd   = $_POST['tahapopd'];
  $telahdimiliki = $_POST['telahdimiliki'];
  $belumdimiliki = $_POST['belumdimiliki'];
  
  $res = true;

  if ($res) {
    $sql = "UPDATE tb_eksekutif_opd 
        SET idpenilaian = '$id_nilai',
        tahapan_yg_harus_dipenuhi_opd = '$tahapopd',
        telah_miliki = '$telahdimiliki',
        belum_miliki = '$belumdimiliki'
        WHERE id_eksekutif_opd = '$id'";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Rekap Peningkatan Indeks Berhasil Diedit");
            window.location.href="t.php?page=rekap-tingkat";
            </script>';
    } else {
      echo '<script type="text/javascript">
      alert("Data Rekap Peningkatan Indeks Gagal Diedit");
            window.location.href="t.php?page=rekap-tingkat";
            </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT * FROM tb_eksekutif_opd a 
          LEFT JOIN tb_penilaian b ON b.idpenilaian = a.idpenilaian  
          LEFT JOIN tb_opdterkait c ON c.idpenilaian = a.idpenilaian
          LEFT JOIN tb_indikator d ON d.idindikator = b.idindikator
          LEFT JOIN tb_opd e ON e.idopd = c.idopd
          LEFT JOIN tb_level f ON f.idlevel = b.nilaikematangan
          WHERE a.id_eksekutif_opd = '$id'";
$resUbah = mysqli_query($conn, $sqlUbah);
$data = mysqli_fetch_assoc($resUbah);

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
      <div class="card shadow mb-4">
        <!-- Card Header - Dropdown -->
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
          <h6 class="m-0 font-weight-bold text-primary">Form Ubah <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
          <form method="post">
              <div class="form-group row">
                <label for="tahun" class="col-md-2 col-form-label">Tahun</label>
                <div class="col-md-2">
                  <select class="form-control" id="tahun" name="tahun">
                    <option value="0">-</option>
                    <?php
                      $sqlGroupNilai = "SELECT * FROM tb_penilaian GROUP BY tahun_penilaian";
                      $resultGroupNilai = mysqli_query($conn, $sqlGroupNilai);
                      while ($rowGroupNilai = mysqli_fetch_assoc($resultGroupNilai)) {
                        if ($data['tahun_penilaian'] == $rowGroupNilai['tahun_penilaian']) { ?>
                          <option value="<?= $rowGroupNilai['tahun_penilaian']; ?>" selected><?= $rowGroupNilai['tahun_penilaian']; ?></option>
                        <?php } else { ?>
                          <option value="<?= $rowGroupNilai['tahun_penilaian']; ?>"><?= $rowGroupNilai['tahun_penilaian']; ?></option>
                        <?php } ?>                        
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="id_nilai" class="col-md-2 col-form-label">Penilaian</label>
                <div class="col-md-10">
                  <select class="form-control" id="id_nilai" name="id_nilai"> 
                    <option value="0">-</option>
                    <?php
                      $sqlPenilaian = "SELECT * FROM tb_penilaian a 
                                      LEFT JOIN tb_indikator b ON b.idindikator = a.idindikator
                                      WHERE a.tahun_penilaian = $data[tahun_penilaian]
                                      ORDER BY a.idindikator ASC";
                      $resultPenilaian = mysqli_query($conn, $sqlPenilaian);
                      while ($rowPenilaian = mysqli_fetch_assoc($resultPenilaian)) {
                        if ($data['idpenilaian'] == $rowPenilaian['idpenilaian']) { ?>
                          <option value="<?= $rowPenilaian['idpenilaian']; ?>" selected><?= "Indikator ".$rowPenilaian['indikator']." - ".$rowPenilaian['namaindikator']; ?></option>
                        <?php } else { ?>
                          <option value="<?= $rowPenilaian['idpenilaian']; ?>"><?= "Indikator ".$rowPenilaian['indikator']." - ".$rowPenilaian['namaindikator']; ?></option>
                        <?php } ?>                        
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="tahapopd" class="col-md-2 col-form-label">Tahapan yang harus dipenuhi OPD untuk menaikkan nilai SPBE</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="tahapopd" name="tahapopd" rows="5" placeholder="Enter Tahapan yang harus dipenuhi OPD untuk menaikkan nilai SPBE"><?= $data['tahapan_yg_harus_dipenuhi_opd']; ?></textarea>
                  <label for="" class="col-md-10 col-form-label font-italic">*Gunakan simbol titik koma(;) untuk memisahkan kalimat lainnya</label>
                </div>
              </div>
              <div class="form-group row">
                <label for="telahdimiliki" class="col-md-2 col-form-label">Data Dukung Telah Dimiliki</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="telahdimiliki" name="telahdimiliki" rows="3" placeholder="Enter Data Dukung Telah Dimiliki"><?= $data['telah_miliki']; ?></textarea>
                  <label for="" class="col-md-10 col-form-label font-italic">*Gunakan simbol titik koma(;) untuk memisahkan kalimat lainnya</label>
                </div>
              </div>
              <div class="form-group row">
                <label for="belumdimiliki" class="col-md-2 col-form-label">Data Dukung Belum Dimiliki</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="belumdimiliki" name="belumdimiliki" rows="3" placeholder="Enter Data Dukung Belum Dimiliki"><?= $data['belum_miliki']; ?></textarea>
                  <label for="" class="col-md-10 col-form-label font-italic">*Gunakan simbol titik koma(;) untuk memisahkan kalimat lainnya</label>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=rekap-tingkat">
                  <span class="text">Kembali</span>
                </a>
                <button type="submit" class="btn btn-primary" name="update">Simpan</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

  </div>

</div>