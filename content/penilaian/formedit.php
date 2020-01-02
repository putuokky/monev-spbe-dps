<?php

// inisiasi id
if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query edit
if (isset($_POST['update'])) {
  $tahun          = $_POST['tahun'];
  $nama_indikator = $_POST['nama_indikator'];
  $rekomen        = $_POST['rekomen'];
  $nilaimatang    = $_POST['nilaimatang'];
  $nilaimandiri   = $_POST['nilaimandiri'];
  $tindaklanjut   = $_POST['tindaklanjut'];
  $targetwkt      = $_POST['targetwkt'];
  $unit           = $_POST['unit'];

  $res = true;

  if ($res) {
    $sql = "UPDATE tb_penilaian 
        SET idindikator = '$nama_indikator',
        rekomendasi = '$rekomen',
        nilaikematangan = '$nilaimatang',
        penilaianmandiri = '$nilaimandiri',
        tindaklanjut = '$tindaklanjut',
        target_waktu = '$targetwkt',
        tahun_penilaian = '$tahun'
        WHERE idpenilaian = '$id'";
    mysqli_query($conn, $sql);

    $query2 = mysqli_query($conn, "SELECT idpenilaian FROM tb_penilaian 
                      WHERE idpenilaian = '$id' 
                      ORDER BY idpenilaian");
    $qdata = mysqli_fetch_assoc($query2);
    $idnilai = $qdata['idpenilaian'];
    $sql2 = "UPDATE tb_opdterkait 
            SET idopd = '$unit'
            WHERE idpenilaian = '$idnilai'";

    if (mysqli_query($conn, $sql2)) {
      echo '<script type="text/javascript">
            alert("Data Penilaian Kematangan Berhasil Diedit");
            window.location.href="t.php?page=nilaikematangan";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Penilaian Kematangan Gagal Diedit");
            window.location.href="t.php?page=nilaikematangan";
            </script>';
    }
  }
}

// query menampilkan data dengan id
$sqlUbah = "SELECT a.idpenilaian,a.idindikator,a.rekomendasi,a.nilaikematangan,a.penilaianmandiri,
        a.tindaklanjut,a.target_waktu,a.tahun_penilaian,b.idindikator,d.idopdterkait,d.idopd AS opd_terkait, d.idpenilaian,e.idopd,e.namaopd,e.nama_pendek_opd 
            FROM tb_penilaian a 
            LEFT JOIN tb_indikator b ON b.idindikator = a.idindikator 
            LEFT JOIN tb_opdterkait d ON d.idpenilaian = a.idpenilaian 
            LEFT JOIN tb_opd e ON e.idopd = d.idopd
            WHERE a.idpenilaian = '$id'";
$resUbah = mysqli_query($conn, $sqlUbah);
$data = mysqli_fetch_assoc($resUbah);

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
                    $thnnow = date('Y');
                    for ($i = 2015; $i <= $thnnow; $i++) {
                      if ($data['tahun_penilaian'] == $i) : ?>
                        <option value="<?= $i; ?>" selected><?= $i; ?></option>
                      <?php else : ?>
                        <option value="<?= $i; ?>"><?= $i; ?></option>
                      <?php endif; ?>
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
                    while ($rowIndikator = mysqli_fetch_assoc($resIndikator)) {
                      if ($data['idindikator'] == $rowIndikator['idindikator']) : ?>
                        <option value="<?= $rowIndikator['idindikator']; ?>" selected><?= "Indikator " . $rowIndikator['indikator'] . " : " . $rowIndikator['namaindikator']; ?></option>
                      <?php else : ?>
                        <option value="<?= $rowIndikator['idindikator']; ?>"><?= "Indikator " . $rowIndikator['indikator'] . " : " . $rowIndikator['namaindikator']; ?></option>
                      <?php endif; ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="rekomen" class="col-md-2 col-form-label">Rekomendasi</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="rekomen" name="rekomen" rows="4" placeholder="Enter Rekomendasi"><?= $data['rekomendasi']; ?></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="nilaimatang" class="col-md-2 col-form-label">Nilai Kematangan (Nilai Pusat)</label>
                <div class="col-md-3">
                  <select class="form-control" id="nilaimatang" name="nilaimatang">
                    <option value="-">-</option>
                    <?php
                    $sqlLevel = "SELECT * FROM tb_level a 
                                LEFT JOIN tb_pertanyaan b ON a.idpertanyaan = b.idpertanyaan
                                LEFT JOIN tb_indikator c ON b.idindikator = c.idindikator 
                                WHERE b.idindikator = '" . $data['idindikator'] . "'";
                    $resLevel = mysqli_query($conn, $sqlLevel);
                    while ($rowLevel = mysqli_fetch_assoc($resLevel)) {
                      if ($rowLevel['idlevel'] == $data['nilaikematangan']) { ?>
                        <option value="<?= $rowLevel['idlevel']; ?>" selected><?= $rowLevel['namalevel']; ?></option>
                      <?php } else { ?>
                        <option value="<?= $rowLevel['idlevel']; ?>"><?= $rowLevel['namalevel']; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="nilaimandiri" class="col-md-2 col-form-label">Penilaian Mandiri</label>
                <div class="col-md-3">
                  <select class="form-control" id="nilaimandiri" name="nilaimandiri">
                    <option value="-">-</option>
                    <?php
                    $sqlLevel = "SELECT * FROM tb_level a 
                    LEFT JOIN tb_pertanyaan b ON a.idpertanyaan = b.idpertanyaan
                    LEFT JOIN tb_indikator c ON b.idindikator = c.idindikator 
                    WHERE b.idindikator = '" . $data['idindikator'] . "'";
                    $resLevel = mysqli_query($conn, $sqlLevel);
                    while ($rowLevel = mysqli_fetch_assoc($resLevel)) {
                      if ($rowLevel['idlevel'] == $data['penilaianmandiri']) { ?>
                        <option value="<?= $rowLevel['idlevel']; ?>" selected><?= $rowLevel['namalevel']; ?></option>
                      <?php } else { ?>
                        <option value="<?= $rowLevel['idlevel']; ?>"><?= $rowLevel['namalevel']; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="tindaklanjut" class="col-md-2 col-form-label">Tindak Lanjut</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="tindaklanjut" name="tindaklanjut" rows="3" placeholder="Enter Tindak Lanjut"><?= $data['tindaklanjut']; ?></textarea>
                </div>
              </div>
              <div class="form-group row">
                <label for="targetwkt" class="col-md-2 col-form-label">Target Waktu</label>
                <div class="col-md-2">
                  <select class="form-control" id="targetwkt" name="targetwkt">
                    <option value="0">-</option>
                    <?php
                    $thnnow = date('Y');
                    for ($i = 2015; $i <= $thnnow + 1; $i++) {
                      if ($data['target_waktu'] == $i) : ?>
                        <option value="<?= $i; ?>" selected><?= $i; ?></option>
                      <?php else : ?>
                        <option value="<?= $i; ?>"><?= $i; ?></option>
                      <?php endif; ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="unit" class="col-md-2 col-form-label">Unit</label>
                <div class="col-md-10">
                  <select class="form-control" id="unit" name="unit">
                    <option value="0">-</option>
                    <?php
                    $sqlUnit = "SELECT * FROM tb_opd
                              WHERE LENGTH(idopd) = 6
                              ORDER BY namaopd ASC";

                    $resUnit = mysqli_query($conn, $sqlUnit);
                    while ($rowUnit = mysqli_fetch_assoc($resUnit)) {
                      if ($data['opd_terkait'] == $rowUnit['idopd']) : ?>
                        <option value="<?= $rowUnit['idopd']; ?>" selected><?= $rowUnit['namaopd']; ?></option>
                      <?php else : ?>
                        <option value="<?= $rowUnit['idopd']; ?>"><?= $rowUnit['namaopd']; ?></option>
                      <?php endif; ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=nilaikematangan">
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