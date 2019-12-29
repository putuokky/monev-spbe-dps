<div class="card shadow mb-4">
  <!-- Card Header - Accordion -->
  <a href="#collapseCardNilaiIndek" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardNilaiIndek">
    <h6 class="m-0 font-weight-bold text-primary">Nilai Indeks</h6>
  </a>
  <!-- Card Content - Collapse -->
  <div class="collapse show" id="collapseCardNilaiIndek">
    <div class="card-body">
      <div class="table-responsive">
        <caption>
          <h5 class="m-0 font-weight-bold text-center">Nilai Indeks SPBE 2018</h5>
          <br>
        </caption>
        <table class="table table-bordered table-hover">
          <thead>
            <tr>
              <th>Nama Indeks</th>
              <th>Nilai</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $sql = "SELECT * FROM tb_indeks 
                  WHERE nama_indeks = 'SPBE'";
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
                  <td><?= $nilai_indeks; ?></td>
                </tr>
            <?php
              }
            }
            ?>
            <?php
            $sqlDomain = "SELECT * FROM tb_domain a
                          JOIN tb_indeks b ON a.id_indeks = b.id_indeks
                          WHERE a.id_indeks = $id && a.tahun_domain = '2018'
                          ORDER BY a.urutan_domain ASC";
            $resDomain = mysqli_query($conn, $sqlDomain);

            if (mysqli_num_rows($resDomain) > 0) {
              // $no = 1;
              // output data of each row
              while ($rowDomain = mysqli_fetch_assoc($resDomain)) {
                $domain = $rowDomain['iddomain'];
                $nilai_indeks_domain = $rowDomain['nilai_indeks_domain'];
                $namadomain = $rowDomain['namadomain'];
                $tahun_domain = $rowDomain['tahun_domain'];
            ?>

                <tr>
                  <td>&nbsp;<i class="fas fa-angle-right"></i> <?= $namadomain; ?></td>
                  <td><?= $nilai_indeks_domain; ?></td>
                </tr>

                <?php
                $sqlAspek = "SELECT * FROM tb_aspek a 
                            JOIN tb_domain b ON a.iddomain = b.iddomain 
                            WHERE a.iddomain = $domain && a.tahun_aspek = '2018'
                            ORDER BY a.urutan_aspek ASC";
                $resAspek = mysqli_query($conn, $sqlAspek);

                if (mysqli_num_rows($resAspek) > 0) {
                  while ($rowAspek = mysqli_fetch_assoc($resAspek)) {
                    $nilai_indeks_aspek = $rowAspek['nilai_indeks_aspek'];
                    $nama_aspek = $rowAspek['nama_aspek'];
                    $tahun_aspek = $rowAspek['tahun_aspek'];
                ?>

                    <tr>
                      <td>&nbsp;&nbsp;&nbsp;<i class="fas fa-angle-double-right"></i> <?= $nama_aspek; ?></td>
                      <td><?= $nilai_indeks_aspek; ?></td>
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
</div>