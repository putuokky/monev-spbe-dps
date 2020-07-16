<div class="card shadow mb-4">
  <!-- Card Header - Accordion -->
  <a href="#collapseCardPencarian" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardPencarian">
    <h6 class="m-0 font-weight-bold text-primary">Pencarian <?php include 'template/title.php'; ?></h6>
  </a>
  <!-- Card Content - Collapse -->
  <div class="collapse show" id="collapseCardPencarian">
    <div class="card-body">
      <form method="post">
        <?php if ($_SESSION['grupindeks'] == 0) : ?>
          <div class="form-group row">
            <label for="nama_indeks" class="col-lg-2 col-form-label">Nama Indeks</label>
            <div class="col-lg-2">
              <select class="form-control" id="nama_indeks" name="nama_indeks" required>
                <option value="0">Pilih Indeks</option>
                <?php
                $sqlIndeks = "SELECT * FROM tb_indeks";
                $resIndeks = mysqli_query($conn, $sqlIndeks);
                while ($rowIndeks = mysqli_fetch_assoc($resIndeks)) { ?>
                  <option value="<?= $rowIndeks['id_indeks']; ?>"><?= $rowIndeks['nama_indeks']; ?></option>
                <?php }
                ?>
              </select>
            </div>
          </div>
        <?php endif ?>
        <div class="form-group row">
          <label for="thn_indeks" class="col-lg-2 col-form-label">Tahun</label>
          <div class="col-lg-2">
            <select class="form-control" id="thn_indeks" name="thn_indeks" required>
              <option value="">Pilih Tahun</option>
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