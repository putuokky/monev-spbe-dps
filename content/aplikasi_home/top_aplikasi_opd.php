<div class="table-responsive">
  <table class="table table-bordered table-hover" id="" width="100%" cellspacing="0">
    <thead>
      <tr class="btn-dark">
        <th>No</th>
        <th>Nama OPD</th>
        <th>Jumlah Aplikasi</th>
    </thead>
    <!-- <tfoot>
      <tr class="btn-dark">
        <th>No</th>
        <th>Nama OPD</th>
        <th>Jumlah Aplikasi</th>
      </tr>
    </tfoot> -->
    <tbody>
      <?php
      $sqlAppTopApp = "SELECT COUNT(a.id_app) as jml_top_app ,a.unit 
                      FROM aplikasi a 
                      LEFT JOIN tb_opd b ON b.idopd = a.unit 
                      GROUP BY a.unit 
                      ORDER BY COUNT(a.id_app) DESC 
                      LIMIT 10";
      $resultAppTopApp = mysqli_query($conn, $sqlAppTopApp);
      if (mysqli_num_rows($resultAppTopApp) > 0) {
        $no = 1;
        while ($rowAppTopApp = mysqli_fetch_assoc($resultAppTopApp)) {
          $kodeunit = $rowAppTopApp['unit'];
          $top_app = $rowAppTopApp['jml_top_app'];

          $sqlOpd = "SELECT * FROM tb_opd WHERE idopd = $kodeunit";
          $resOpd = mysqli_query($conn, $sqlOpd);
          while ($rowOpd = mysqli_fetch_assoc($resOpd)) {
            $opd = $rowOpd['namaopd'];
      ?>
            <tr>
              <td><?= $no; ?></td>
              <td><?= $opd; ?></td>
              <td><?= $top_app; ?></td>
            </tr>
      <?php
          }
          $no++;
        }
      }
      mysqli_close($conn);
      ?>
    </tbody>
  </table>
</div>