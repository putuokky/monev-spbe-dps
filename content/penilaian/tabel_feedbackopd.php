<div class="table-responsive">
  <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
    <thead>
      <tr>
        <th>No</th>
        <th>Aksi</th>
        <th>Penjelasan Data Pendukung</th>
        <th>File Pendukung</th>
        <th>User / Date</th>
    </thead>
    <tfoot>
      <tr>
        <th>No</th>
        <th>Aksi</th>
        <th>Penjelasan Data Pendukung</th>
        <th>File Pendukung</th>
        <th>User / Date</th>
      </tr>
    </tfoot>
    <tbody>
      <?php
      $sqlFeedback = "SELECT * FROM tb_feedback a 
                      LEFT JOIN tb_penilaian b ON b.idpenilaian = a.idpenilaian
                      LEFT JOIN tb_indikator c ON c.idindikator = b.idindikator
                      LEFT JOIN tb_user d ON d.userid = a.userid_created
                      WHERE b.idpenilaian = '$id'
                      ORDER BY a.date_created DESC";

      $result = mysqli_query($conn, $sqlFeedback);

      if (mysqli_num_rows($result) > 0) {
        $no = 1;
        // output data of each row
        while ($row = mysqli_fetch_assoc($result)) {
          $idfb = $row['idfeedback'];
          $ket_feedback = $row['ket_feedback'];
          $userid_created = $row['userid_created'];
          $date_created = $row['date_created'];
          $idpenilaian = $row['idpenilaian'];
          $indikator = $row['indikator'];
          $namaindikator = $row['namaindikator'];
          $userid_created = $row['userid_created'];
          $date_created = $row['date_created'];
          $files_feedback = $row['files_feedback'];
          $nama_user = $row['nama_user'];
      ?>

          <tr>
            <td><?= $no; ?></td>
            <td>
              <?php if ($_SESSION['groupuser'] == '1' || $_SESSION['nama_user'] == $nama_user) { ?>
                <a class="btn btn-warning" title="Edit" href="" data-toggle="modal" data-target="#modalEditFeedback-<?= $idfb; ?>"><i class="fas fa-fw fa-edit"></i></a>
                <a class="btn btn-danger" title="Hapus" href="" data-toggle="modal" data-target="#modalHapusFeedback-<?= $idfb; ?>"><i class="fas fa-fw fa-trash-alt"></i></a>
              <?php } else {
                echo '';
              }
              ?>
              <!-- Modal Hapus Penjelasan Pendukung -->
              <?php include 'modal_hapus_feedback.php'; ?>
              <!-- Modal Hapus Penjelasan Pendukung -->

              <!-- Modal Edit Penjelasan Pendukung -->
              <?php include 'modal_edit_feedback.php'; ?>
              <!-- Modal Edit Penjelasan Pendukung -->
            </td>
            <td><?php if ($ket_feedback) {
                  echo $ket_feedback;
                } else {
                  echo "-";
                } ?>
            </td>
            <td>
              <a href="assets/file/feedback/<?= $files_feedback; ?>" target="_blank">
                <?= $files_feedback; ?>
              </a></td>
            <td><?= $nama_user . "<br>" . date("d-m-Y H:i", strtotime($date_created)); ?></td>
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