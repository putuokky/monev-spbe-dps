<div class="card shadow mb-4">
  <!-- Card Header - Accordion -->
  <a href="#collapseCardPencarian" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardPencarian">
    <h6 class="m-0 font-weight-bold text-primary">Pencarian <?php include 'template/title.php'; ?></h6>
  </a>
  <!-- Card Content - Collapse -->
  <div class="collapse show" id="collapseCardPencarian">
    <div class="card-body">
      <form method="get">
        <div class="form-group row">
          <label for="thnbuat" class="col-lg-2 col-form-label">Tahun Pembuatan</label>
          <div class="col-lg-2">
            <select class="form-control" id="thnbuat" name="thnbuat" required>
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
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-primary" name="cari">cari</button>
        </div>
      </form>
    </div>
  </div>
</div>