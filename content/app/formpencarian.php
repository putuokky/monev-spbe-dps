<div class="card shadow mb-4">
  <!-- Card Header - Accordion -->
  <a href="#collapseCardPencarian" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardPencarian">
    <h6 class="m-0 font-weight-bold text-primary">Pencarian <?php include 'template/title.php'; ?></h6>
  </a>
  <!-- Card Content - Collapse -->
  <div class="collapse show" id="collapseCardPencarian">
    <div class="card-body">
      <form method="get" name="cari">
        <div class="form-group row">
          <div class="col-md-5">
            <input type="hidden" class="form-control" name="page" id="page" value="app" placeholder="Enter Page" autocomplete="off" readonly>
          </div>
        </div>
        <!-- <div class="form-group row">
          <label for="thnbuat" class="col-lg-2 col-form-label">Tahun Pembuatan</label>
          <div class="col-lg-2">
            <select class="form-control" id="thnbuat" name="thnbuat">
              <option value="">Pilih Tahun</option>
              <?php
              $thnskrg = date('Y');
              $sqlThnBuat = "SELECT thn_pembuatan FROM aplikasi WHERE thn_pembuatan != '-' 
              GROUP BY thn_pembuatan LIMIT 1";
              $resultThnBuat = mysqli_query($conn, $sqlThnBuat);
              $rowThnBuat = mysqli_fetch_assoc($resultThnBuat);
              $thnbuat = $rowThnBuat['thn_pembuatan'];

              for ($i = $thnbuat; $i <= $thnskrg; $i++) { ?>
                <option value="<?= $i; ?>"><?= $i; ?></option>
              <?php
              } ?>
            </select>
          </div>
        </div> -->
        <div class="form-group row">
          <label for="status" class="col-md-2 col-form-label">Status</label>
          <div class="col-md-2">
            <select class="form-control" id="status" name="status">
              <option>-</option>
              <option value="aktif">Aktif</option>
              <option value="naktif">Tidak Aktif</option>
            </select>
          </div>
        </div>
        <!-- <div class="form-group row">
          <label for="katakunci" class="col-md-2 col-form-label">Kata Kunci</label>
          <div class="col-md-5">
            <input type="text" class="form-control" name="katakunci" id="katakunci" placeholder="Enter Kata Kunci" autocomplete="off">
          </div>
        </div> -->
        <div class="form-group">
          <button type="submit" class="btn btn-primary" name="cari">cari</button>
        </div>
      </form>
    </div>
  </div>
</div>