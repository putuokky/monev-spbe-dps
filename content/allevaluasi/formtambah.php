<?php
// query tambah
if (isset($_POST['input'])) {
  $id_nilai      = $_POST['id_nilai'];
  $tahapopd      = $_POST['tahapopd'];
  $telahdimiliki = $_POST['telahdimiliki'];
  $belumdimiliki = $_POST['belumdimiliki'];

  $res = true;

  if ($res) {
    $sql = "INSERT INTO tb_eksekutif_opd (idpenilaian, tahapan_yg_harus_dipenuhi_opd, telah_miliki, belum_miliki)
      VALUES ('$id_nilai', '$tahapopd', '$telahdimiliki', '$belumdimiliki')";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Rekap Peningkatan Indeks Berhasil Ditambah");
            window.location.href="t.php?page=rekap-tingkat";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Rekap Peningkatan Indeks Gagal Ditambah");
            window.location.href="t.php?page=rekap-tingkat&act=tambah";
            </script>';
    }
  }
}
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
          <h6 class="m-0 font-weight-bold text-primary">Form Tambah <?php include 'template/title.php'; ?></h6>
        </div>
        <div class="card-body">
          <div>
            <form method="post">
              <div class="form-group row">
                <label for="tahun" class="col-md-2 col-form-label">Tahun</label>
                <div class="col-md-2">
                  <select class="form-control" id="tahun-alleva" name="tahun">
                    <option value="0">-</option>
                    <?php
                    $sqlGroupNilai = "SELECT tahun_penilaian FROM tb_penilaian GROUP BY tahun_penilaian";
                    $resultGroupNilai = mysqli_query($conn, $sqlGroupNilai);
                    while ($rowGroupNilai = mysqli_fetch_assoc($resultGroupNilai)) { ?>
                      <option value="<?= $rowGroupNilai['tahun_penilaian']; ?>"><?= $rowGroupNilai['tahun_penilaian']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="id_nilai" class="col-md-2 col-form-label">Penilaian</label>
                <div class="col-md-10">
                  <select class="form-control" id="id_nilai" name="id_nilai" disabled>
                    <option value="0">-</option>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="tahapopd" class="col-md-2 col-form-label">Tahapan yang harus dipenuhi OPD untuk menaikkan nilai SPBE</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="tahapopd" name="tahapopd" rows="5" placeholder="Enter Tahapan yang harus dipenuhi OPD untuk menaikkan nilai SPBE"></textarea>
                  <label for="" class="col-md-10 col-form-label font-italic">*Gunakan simbol titik koma(;) untuk memisahkan kalimat lainnya</label>
                </div>
              </div>
              <div class="form-group row">
                <label for="telahdimiliki" class="col-md-2 col-form-label">Data Dukung Telah Dimiliki</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="telahdimiliki" name="telahdimiliki" rows="3" placeholder="Enter Data Dukung Telah Dimiliki"></textarea>
                  <label for="" class="col-md-10 col-form-label font-italic">*Gunakan simbol titik koma(;) untuk memisahkan kalimat lainnya</label>
                </div>
              </div>
              <div class="form-group row">
                <label for="belumdimiliki" class="col-md-2 col-form-label">Data Dukung Belum Dimiliki</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="belumdimiliki" name="belumdimiliki" rows="3" placeholder="Enter Data Dukung Belum Dimiliki"></textarea>
                  <label for="" class="col-md-10 col-form-label font-italic">*Gunakan simbol titik koma(;) untuk memisahkan kalimat lainnya</label>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=rekap-tingkat">
                  <span class="text">Kembali</span>
                </a>
                <button type="submit" class="btn btn-primary" name="input">Simpan</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

  </div>

</div>