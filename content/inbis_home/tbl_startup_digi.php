<div class="table-responsive">
  <table class="table table-bordered table-hover" id="" width="100%" cellspacing="0">
    <thead>
      <tr class="btn-dark">
        <th>No</th>
        <th>Nama Inkubator Bisnis</th>
        <th>Jumlah Start Up Digital</th>
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
      $sqlStartUpDigi = "SELECT COUNT(a.id_tenant) as jml_startup, nm_inbis
                          FROM tb_tenant a 
                          LEFT JOIN tb_inbis b ON b.id_inbis = a.nm_inbis 
                          GROUP BY a.nm_inbis";
      $sqlStartUpDigi = $sqlStartUpDigi . " ORDER BY COUNT(a.id_tenant) DESC";

      $resultStartUpDigi = mysqli_query($conn, $sqlStartUpDigi);
      if (mysqli_num_rows($resultStartUpDigi) > 0) {
        $no = 1;
        while ($rowStartUpDigi = mysqli_fetch_assoc($resultStartUpDigi)) {
          $kodeinbis = $rowStartUpDigi['nm_inbis'];
          $startUp = $rowStartUpDigi['jml_startup'];

          $sqlInbis = "SELECT * FROM tb_inbis WHERE id_inbis = $kodeinbis";
          $resInbis = mysqli_query($conn, $sqlInbis);
          while ($rowInbis = mysqli_fetch_assoc($resInbis)) {
            $inbis = $rowInbis['nama_inbis'];
            $ketinbis = $rowInbis['ket_inbis'];
      ?>
            <tr>
              <td><?= $no; ?></td>
              <td><?= $ketinbis; ?></td>
              <td><?= $startUp; ?></td>
            </tr>
        <?php
          }
          $no++;
        }
      } else { ?>
        <tr>
          <th colspan="3" class="text-center">Tidak Ada Start Up Digital</th>
        </tr>
      <?php }
      mysqli_close($conn);
      ?>
    </tbody>
  </table>
</div>