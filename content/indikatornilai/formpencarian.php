<div class="card shadow mb-4">
  <!-- Card Header - Accordion -->
  <a href="#collapseCardNilaiIndek" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardNilaiIndek">
    <h6 class="m-0 font-weight-bold text-primary">Pencarian <?php include 'template/title.php'; ?></h6>
  </a>
  <!-- Card Content - Collapse -->
  <div class="collapse show" id="collapseCardNilaiIndek">
    <div class="card-body">
      <form method="post">
        <div class="form-group row">
          <label for="caritahun" class="col-lg-2 col-form-label">Tahun</label>
          <div class="col-lg-2">
            <select class="form-control" id="caritahun" name="caritahun">
              <option value="0">Pilih Tahun</option>
              <?php
              $thnskrg = date('Y');
              for ($i = 2018; $i <= $thnskrg; $i++) { ?>
                <option value="<?= $i; ?>"><?= $i; ?></option>
              <?php
              } ?>
            </select>
          </div>
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-primary" name="cari">cari</button>
        </div>
      </form>
    </div>
  </div>
</div>