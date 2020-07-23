<?php
// query tambah
if (isset($_POST['input'])) {
  $tahun          = $_POST['tahun'];
  $nama_indikator = $_POST['nama_indikator'];
  $rekomen        = $_POST['rekomen'];
  // $nilaimatang    = $_POST['nilaimatang'];
  $nilaimandiri   = $_POST['nilaimandiri'];
  $tindaklanjut   = $_POST['tindaklanjut'];
  $targetwkt      = $_POST['targetwkt'];
  $unit           = $_POST['unit'];

  $res = true;

  if ($res) {
    $sql = "INSERT INTO tb_penilaian (idindikator, rekomendasi, penilaianmandiri,tindaklanjut,target_waktu,tahun_penilaian)
      VALUES ('$nama_indikator', '$rekomen','$nilaimandiri','$tindaklanjut','$targetwkt','$tahun')";
    mysqli_query($conn, $sql);

    $query2 = mysqli_query($conn, "SELECT idpenilaian FROM tb_penilaian ORDER BY idpenilaian DESC LIMIT 1");
    $qdata = mysqli_fetch_assoc($query2);
    $idnilai = $qdata['idpenilaian'];
    $sql2 = "INSERT INTO tb_opdterkait (idopd, idpenilaian)
              VALUES ('$unit', '$idnilai')";

    if (mysqli_query($conn, $sql2)) {
      echo '<script type="text/javascript">
            alert("Data Penilaian Kematangan Berhasil Ditambah");
            window.location.href="t.php?page=nilaikematangan";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Penilaian Kematangan Gagal Ditambah");
            window.location.href="t.php?page=nilaikematangan&act=tambah";
            </script>';
    }
  }
}
?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('nilaikematangan').classList.add('active');
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
                  <select class="form-control" id="tahun" name="tahun">
                    <option value="0">-</option>
                    <?php
                    $thnnow = date('Y');
                    for ($i = 2015; $i <= $thnnow; $i++) { ?>
                      <option value="<?= $i; ?>"><?= $i; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="nama_indikator" class="col-md-2 col-form-label">Nama Indikator</label>
                <div class="col-md-10">
                  <select class="form-control" id="nama_indikator" name="nama_indikator">
                    <option value="0">-</option>
                    <?php
                    $sqlIndikator = "SELECT * FROM tb_indikator";
                    $resIndikator = mysqli_query($conn, $sqlIndikator);
                    while ($rowIndikator = mysqli_fetch_assoc($resIndikator)) { ?>
                      <option value="<?= $rowIndikator['idindikator']; ?>"><?= "Indikator " . $rowIndikator['indikator'] . " : " . $rowIndikator['namaindikator']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="rekomen" class="col-md-2 col-form-label">Rekomendasi</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="rekomen" name="rekomen" rows="4" placeholder="Enter Rekomendasi"></textarea>
                </div>
              </div>
              <!-- <div class="form-group row">
                <label for="nilaimatang" class="col-md-2 col-form-label">Nilai Kematangan (Nilai Pusat)</label>
                <div class="col-md-3">
                  <select class="form-control" id="nilaimatang" name="nilaimatang" disabled>
                    <option value="0">-</option>
                  </select>
                </div>
              </div> -->
              <div class="form-group row">
                <label for="nilaimandiri" class="col-md-2 col-form-label">Penilaian Mandiri</label>
                <div class="col-md-3">
                  <select class="form-control" id="nilaimandiri" name="nilaimandiri" disabled>
                    <option value="0">-</option>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="tindaklanjut" class="col-md-2 col-form-label">Tindak Lanjut</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="tindaklanjut" name="tindaklanjut" rows="3" placeholder="Enter Tindak Lanjut"></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="targetwkt" class="col-md-2 col-form-label">Target Waktu</label>
                <div class="col-md-2">
                  <select class="form-control" id="targetwkt" name="targetwkt">
                    <option value="0">-</option>
                    <?php
                    $thnnow = date('Y');
                    for ($i = 2015; $i <= $thnnow + 1; $i++) { ?>
                      <option value="<?= $i; ?>"><?= $i; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="unit" class="col-md-2 col-form-label">Unit</label>
                <div class="col-md-8">
                  <select class="form-control" id="unit" name="unit">
                    <option value="0">-</option>
                    <?php
                    $sqlUnit = "SELECT * FROM tb_opd
                              WHERE LENGTH(idopd) = 6
                              ORDER BY namaopd ASC";

                    $resUnit = mysqli_query($conn, $sqlUnit);
                    while ($rowUnit = mysqli_fetch_assoc($resUnit)) { ?>
                      <option value="<?= $rowUnit['idopd']; ?>"><?= $rowUnit['namaopd']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=nilaikematangan">
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