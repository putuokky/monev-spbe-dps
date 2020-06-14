<div class="table-responsive">
  <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
    <thead>
      <tr>
        <th>No</th>
        <th>Nama OPD</th>
        <th>Jumlah Aplikasi</th>
    </thead>
    <tfoot>
      <tr>
        <th>No</th>
        <th>Nama OPD</th>
        <th>Jumlah Aplikasi</th>
      </tr>
    </tfoot>
    <tbody>
      <?php
      $sqlAppTopApp = "SELECT b.nama_unit, COUNT(a.id) as jml_top_app 
                        FROM aplikasi a 
                        LEFT JOIN r_unit b ON b.KODE = a.unit 
                        GROUP BY a.unit 
                        ORDER BY COUNT(a.id) DESC
                        LIMIT 10";
      $resultAppTopApp = mysqli_query($conn, $sqlAppTopApp);
      if (mysqli_num_rows($result) > 0) {
        $no = 1;
        while ($rowAppTopApp = mysqli_fetch_assoc($resultAppTopApp)) {
          $namaunit = $rowAppTopApp['nama_unit'];
          $top_app = $rowAppTopApp['jml_top_app'];
          ?>
          <tr>
            <td><?= $no; ?></td>
            <td><?= $namaunit; ?></td>
            <td><?= $top_app; ?></td>
          </tr>
          <?php
          $no++;
        }
      }
      mysqli_close($conn);
      ?>
    </tbody>
  </table>
</div>