<div class="card shadow mb-4">
  <!-- Card Header -->
  <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
    <h6 class="m-0 font-weight-bold text-primary">Nilai Indeks</h6>
  </div>
  <!-- Card Body -->
  <div class="card-body">
    <div class="table-responsive">
      <caption>
        <h5 class="m-0 font-weight-bold text-center">Nilai Indeks SPBE <?= $thn_indeks; ?></h5>
        <br>
      </caption>
      <table class="table table-bordered table-hover">
        <thead>
          <tr class="btn-dark">
            <th>Nama Indeks</th>
            <th>Nilai</th>
          </tr>
        </thead>
        <tbody>
          <?php
          if (isset($_POST['cari'])) {
            $caritahun = $_POST['caritahun'];
            $sql = "SELECT * FROM tb_indeks a 
              LEFT JOIN tb_indeks_nilai b ON b.indeks = a.id_indeks
              LEFT JOIN tbl_user_katindex c ON c.user_katindex = a.nama_indeks 
              WHERE c.user_katindex = 'SPBE' && b.tahun_indeks LIKE '%$caritahun%'";
          } else {
            $sql = "SELECT * FROM tb_indeks a 
              LEFT JOIN tb_indeks_nilai b ON b.indeks = a.id_indeks
              LEFT JOIN tbl_user_katindex c ON c.user_katindex = a.nama_indeks 
              WHERE c.user_katindex = 'SPBE' && b.tahun_indeks = '$thnkmrn'";
          }

          $result = mysqli_query($conn, $sql);

          if (mysqli_num_rows($result) > 0) {
            // $no = 1;
            // output data of each row
            while ($row = mysqli_fetch_assoc($result)) {
              $id = $row['id_indeks'];
              $nama_indeks = $row['nama_indeks'];
              $nilai_indeks = $row['nilai_indeks'];
          ?>

              <tr>
                <td><?= $nama_indeks; ?></td>
                <td><?= number_format($nilai_indeks, 2, ",", "."); ?></td>
              </tr>
          <?php
            }
          }
          ?>
          <?php
          if (isset($_POST['cari'])) {
            $caritahun = $_POST['caritahun'];
            $sqlDomain = "SELECT * FROM tb_domain_nilai a
                          LEFT JOIN tb_indeks b ON b.id_indeks = a.indeks_nilai
                          LEFT JOIN tb_domain c ON c.id_domain = a.domain
                          LEFT JOIN tb_indeks_nilai d ON d.indeks = b.id_indeks
                          WHERE b.id_indeks = $id && d.tahun_indeks LIKE '%$caritahun%'";
          } else {
            $sqlDomain = "SELECT * FROM tb_domain_nilai a
                          LEFT JOIN tb_indeks b ON b.id_indeks = a.indeks_nilai
                          LEFT JOIN tb_domain c ON c.id_domain = a.domain
                          LEFT JOIN tb_indeks_nilai d ON d.indeks = b.id_indeks
                          WHERE b.id_indeks = $id && d.tahun_indeks = '$thnkmrn'";
          }

          // $sqlDomain = $sqlDomain . " ORDER BY c.urutan_domain ASC";

          $resDomain = mysqli_query($conn, $sqlDomain);

          if (mysqli_num_rows($resDomain) > 0) {
            // $no = 1;
            // output data of each row
            while ($rowDomain = mysqli_fetch_assoc($resDomain)) {
              $domain = $rowDomain['id_domain'];
              $nilai_domain = $rowDomain['nilai_domain'];
              $namadomain = $rowDomain['nama_domain'];
              // $tahun_domain = $rowDomain['tahun_indeks'];
          ?>

              <tr>
                <td>&nbsp;<i class="fas fa-angle-right"></i> <?= $namadomain; ?></td>
                <td><?= number_format($nilai_domain, 2, ",", "."); ?></td>
              </tr>

              <?php
              if (isset($_POST['cari'])) {
                $caritahun = $_POST['caritahun'];
                $sqlAspek = "SELECT * FROM tb_aspek_nilai a 
                            LEFT JOIN tb_domain b ON b.id_domain = a.domain
                            LEFT JOIN tb_aspek c ON c.id_aspek = a.aspek
                            WHERE a.domain = $domain && a.tahun_aspek LIKE '%$caritahun%'";
              } else {
                $sqlAspek = "SELECT * FROM tb_aspek_nilai a 
                            LEFT JOIN tb_domain b ON b.id_domain = a.domain
                            LEFT JOIN tb_aspek c ON c.id_aspek = a.aspek
                            WHERE a.domain = $domain && a.tahun_aspek = '$thnkmrn'";
              }

              $sqlAspek = $sqlAspek . " ORDER BY c.urutan_aspek ASC";
              $resAspek = mysqli_query($conn, $sqlAspek);

              if (mysqli_num_rows($resAspek) > 0) {
                while ($rowAspek = mysqli_fetch_assoc($resAspek)) {
                  $nilai_aspek = $rowAspek['nilai_aspek'];
                  $nama_aspek = $rowAspek['nama_aspek'];
                  $tahun_aspek = $rowAspek['tahun_aspek'];
              ?>

                  <tr>
                    <td>&nbsp;&nbsp;&nbsp;<i class="fas fa-angle-double-right"></i> <?= $nama_aspek; ?></td>
                    <td><?= number_format($nilai_aspek, 2, ",", "."); ?></td>
                  </tr>
          <?php
                }
              }
            }
          }
          ?>
        </tbody>
      </table>
    </div>
  </div>
</div>