<div class="card shadow mb-4">
  <!-- Card Header - Accordion -->
  <a href="#collapseCardPencarian" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardPencarian">
    <h6 class="m-0 font-weight-bold text-primary">Pencarian <?php include 'template/title.php'; ?></h6>
  </a>
  <!-- Card Content - Collapse -->
  <div class="collapse show" id="collapseCardPencarian">
    <div class="card-body">
      <form method="GET" action="<?= $_SERVER["PHP_SELF"]; ?>">
        <input type="hidden" class="form-control" name="page" id="page" value="app" placeholder="Enter Page" autocomplete="off" readonly>
        <!-- <div class="form-group row">
          <label for="pengelola" class="col-lg-2 col-form-label">Perangkat Daerah Pengelola</label>
          <div class="col-lg-10">
            <select class="form-control" id="pengelola" name="pengelola">
              <option value="">-</option>
              <?php
              $pengelola = "";
              if (isset($_GET['pengelola'])) {
                $pengelola = $_GET['pengelola'];
              }

              $sqlUnitPengelola = "SELECT * FROM tb_opd WHERE LENGTH(idopd)=6 ORDER BY namaopd ASC";
              $resUnitPengelola = mysqli_query($conn, $sqlUnitPengelola);
              while ($rowUnitPengelola = mysqli_fetch_assoc($resUnitPengelola)) { ?>
                <option value="<?= $rowUnitPengelola['idopd']; ?>"><?= $rowUnitPengelola['namaopd']; ?></option>
              <?php } ?>
            </select>
          </div>
        </div> -->
        <!-- <div class="form-group row">
          <label for="status" class="col-md-2 col-form-label">Status</label>
          <div class="col-md-2">
            <select class="form-control" id="status" name="status">
              <option value="">-</option>
              <option value="aktif">Aktif</option>
              <option value="naktif">Tidak Aktif</option>
            </select>
          </div>
        </div> -->
        <div class="form-group row">
          <label for="judul" class="col-md-2 col-form-label">Judul</label>
          <?php
          $judul = "";
          if (isset($_GET['judul'])) {
            $judul = $_GET['judul'];
          }
          ?>
          <div class="col-md-5">
            <input type="text" class="form-control" value="<?= $judul; ?>" name="judul" id="judul" placeholder="Enter Judul" autocomplete="off">
          </div>
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-primary" name="cari">Cari</button>
        </div>
      </form>
    </div>
  </div>
</div>