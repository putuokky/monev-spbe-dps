<?php
// query tambah
if (isset($_POST['input'])) {
  $namatenant = $_POST['namatenant'];
  $katinbis = $_POST['katinbis'];
  $kontak = $_POST['kontak'];
  $ketinbis = $_POST['ketinbis'];

  $res = true;

  if ($res) {
    $sql = "INSERT INTO tb_tenant (nama_tenant,nm_inbis,contact,ket_tenant)
      VALUES ('$namatenant','$katinbis','$kontak','$ketinbis')";

    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
            alert("Data Start Up Digital Berhasil Ditambah");
            window.location.href="t.php?page=sudigi";
            </script>';
    } else {
      echo '<script type="text/javascript">
            alert("Data Start Up Digital Gagal Ditambah");
            window.location.href="t.php?page=sudigi&act=tambah";
            </script>';
    }
  }
}
?>

<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('sudigi').classList.add('active');
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
                <label for="namatenant" class="col-md-2 col-form-label">Nama Tenant</label>
                <div class="col-md-10">
                  <input type="text" class="form-control" name="namatenant" id="namatenant" placeholder="Enter Nama Tenant" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="katinbis" class="col-md-2 col-form-label">Kategori Inbis</label>
                <div class="col-md-10">
                  <select class="form-control" id="katinbis" name="katinbis">
                    <option value="0">-</option>
                    <?php
                    $sqlKatInbis = "SELECT * FROM tb_inbis";
                    $resKatInbis = mysqli_query($conn, $sqlKatInbis);
                    while ($rowKatInbis = mysqli_fetch_assoc($resKatInbis)) { ?>
                      <option value="<?= $rowKatInbis['id_inbis']; ?>"><?= $rowKatInbis['nama_inbis']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label for="kontak" class="col-md-2 col-form-label">Kontak</label>
                <div class="col-md-4">
                  <input type="text" class="form-control" name="kontak" id="kontak" placeholder="Enter Kontak" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="ketinbis" class="col-md-2 col-form-label">Keterangan</label>
                <div class="col-md-10">
                  <textarea class="form-control" id="ketinbis" name="ketinbis" rows="3" placeholder="Enter Keterangan"></textarea>
                </div>
              </div>
              <div class="form-group">
                <a class="btn btn-dark btn-icon-split" title="Kembali" href="?page=sudigi">
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