<div class="card shadow mb-4">
  <!-- Card Header - Accordion -->
  <a href="#collapseCardPencarian" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardPencarian">
    <h6 class="m-0 font-weight-bold text-primary">Pencarian <?php include 'template/title.php'; ?></h6>
  </a>
  <!-- Card Content - Collapse -->
  <div class="collapse show" id="collapseCardPencarian">
    <div class="card-body">
      <form method="GET" action="<?= $_SERVER["PHP_SELF"]; ?>">
        <div class="form-group row">
          <div class="col-md-5">
            <input type="hidden" class="form-control" name="page" id="page" value="app" placeholder="Enter Page" autocomplete="off" readonly>
          </div>
        </div>
        <div class="form-group row">
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
              while ($rowUnitPengelola = mysqli_fetch_assoc($resUnitPengelola)) {
                if ($pengelola) { ?>
                  <option value="<?= $rowUnitPengelola['idopd']; ?>" selected><?= $rowUnitPengelola['namaopd']; ?></option>
                <?php } else { ?>
                  <option value="<?= $rowUnitPengelola['idopd']; ?>"><?= $rowUnitPengelola['namaopd']; ?></option>
                <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
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
          <label for="katakunci" class="col-md-2 col-form-label">Kata Kunci</label>
          <?php
          $katakunci = "";
          if (isset($_GET['katakunci'])) {
            $katakunci = $_GET['katakunci'];
          }
          ?>
          <div class="col-md-5">
            <input type="text" class="form-control" value="<?= $katakunci; ?>" name="katakunci" id="katakunci" placeholder="Enter Kata Kunci" autocomplete="off">
          </div>
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-primary">Cari</button>
        </div>
      </form>
    </div>
  </div>
</div>