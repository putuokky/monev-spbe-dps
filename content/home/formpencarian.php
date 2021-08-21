<div class="card shadow mb-4">
  <!-- Card Content - Collapse -->
  <div class="collapse show" id="collapseCardPencarian">
    <div class="card-body">
      <form method="post">
        <div class="form-group row">
          <label for="caritahun" class="col-lg-2 col-form-label">Tahun</label>
          <div class="col-lg-2">
            <select class="form-control" id="caritahun" name="caritahun" required>
              <option value="">Pilih Tahun</option>
              <?php

              if ($_SESSION['grupindeks'] == 1) {
                $sql = "SELECT * FROM tb_indeks a 
                  LEFT JOIN tbl_user_katindex b ON b.user_katindex = a.nama_indeks 
                  LEFT JOIN tb_indeks_nilai c ON c.indeks = a.id_indeks 
                  WHERE b.id_user_katindex = $_SESSION[grupindeks]";
                // IKCI
              } else if ($_SESSION['grupindeks'] == 2) {
                $sql = "SELECT * FROM tb_indeks a 
                  LEFT JOIN tbl_user_katindex b ON b.user_katindex = a.nama_indeks 
                  LEFT JOIN tb_indeks_nilai c ON c.indeks = a.id_indeks
                  WHERE b.id_user_katindex = $_SESSION[grupindeks]";
              } else {
                $sql = "SELECT * FROM tb_indeks a 
                  LEFT JOIN tbl_user_katindex b ON b.user_katindex = a.nama_indeks 
                  LEFT JOIN tb_indeks_nilai c ON c.indeks = a.id_indeks
                  WHERE b.user_katindex = 'SPBE'";
              }

              $sql = $sql . " ORDER BY c.tahun_indeks ASC";
              $result = mysqli_query($conn, $sql);

              if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                  $thnindeks = $row['tahun_indeks'];
              ?>
                  <option value="<?= $thnindeks; ?>"><?= $thnindeks; ?></option>
              <?php }
              } ?>
            </select>
          </div>
          <div class="col-lg-1">
            <button type="submit" class="btn btn-primary" name="cari">cari</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>