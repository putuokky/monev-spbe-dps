<div class="modal fade" id="modalDetail-<?= $id; ?>" tabindex="-1" role="dialog" aria-labelledby="modalDetailLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalDetailLabel">Tabel Detail <?php include 'template/title.php'; ?></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="">
          <div class="form-group row">
            <label for="staticEmail" class="col-sm-4 col-form-label"><b>Tanggal Lapor</b></label>
            <label for="staticEmail" class="col-form-label"><b>:</b></label>
            <label for="staticEmail" class="col-sm-6 col-form-label"><?= date('d-m-Y, H:i:s', strtotime($row['dlu'])); ?></label>
          </div>
          <div class="form-group row">
            <label for="staticEmail" class="col-sm-4 col-form-label"><b>Jenis Lapor</b></label>
            <label for="staticEmail" class="col-form-label"><b>:</b></label>
            <label for="staticEmail" class="col-sm-6 col-form-label"><?= $row['nama_jenis_laporan']; ?></label>
          </div>
          <div class="form-group row">
            <label for="staticEmail" class="col-sm-4 col-form-label"><b>Aplikasi</b></label>
            <label for="staticEmail" class="col-form-label"><b>:</b></label>
            <label for="staticEmail" class="col-sm-6 col-form-label"><?= $row['judul']; ?></label>
          </div>
          <div class="form-group row">
            <label for="staticEmail" class="col-sm-4 col-form-label"><b>Permasalahan</b></label>
            <label for="staticEmail" class="col-form-label"><b>:</b></label>
            <label for="staticEmail" class="col-sm-6 col-form-label"><?= $row['permasalahan']; ?></label>
          </div>
          <div class="form-group row">
            <label for="staticEmail" class="col-sm-4 col-form-label"><b>Bukti Lapor</b></label>
            <label for="staticEmail" class="col-form-label"><b>:</b></label>
            <label for="staticEmail" class="col-sm-6 col-form-label"><?= $row['bukti_lapor']; ?></label>
          </div>
          <div class="form-group row">
            <label for="staticEmail" class="col-sm-4 col-form-label"><b>Pelapor</b></label>
            <label for="staticEmail" class="col-form-label"><b>:</b></label>
            <label for="staticEmail" class="col-sm-7 col-form-label"><?= $row['nama_user']; ?></label>
          </div>
          <div class="form-group row">
            <label for="staticEmail" class="col-sm-4 col-form-label"><b>Status</b></label>
            <label for="staticEmail" class="col-form-label"><b>:</b></label>
            <label for="staticEmail" class="col-sm-6 col-form-label"><?php if ($row['status_lapor'] == '1') {
                                                                        echo '<span class="badge badge-primary">Baru</span>';
                                                                      } else {
                                                                        echo '<span class="badge badge-success">Respon</span>';
                                                                      } ?></label>
          </div>
        </div>
        <div class="table-responsive">
          <table class="table" id="" width="100%" cellspacing="0">
            <thead>
              <tr class="btn-dark">
                <th>Kategori TL</th>
                <th>Respon</th>
                <th>Nama TL</th>
                <th>DLU</th>
            </thead>
            <tfoot>
              <tr class="btn-dark">
                <th>Kategori TL</th>
                <th>Respon</th>
                <th>Nama TL</th>
                <th>DLU</th>
              </tr>
            </tfoot>
            <tbody>
              <tr>
                <td><?php if ($row['kat_tl_lapor'] == 0) {
                      echo '<span class="badge badge-danger">Belum TL</span>';
                    } else {
                      if ($rowTL['kat_tl_respon'] == 1) {
                        echo '<span class="badge badge-warning">TL Awal</span>';
                      } else if ($rowTL['kat_tl_respon'] == 2) {
                        echo '<span class="badge badge-success">TL Selesai</span>';
                      }
                    } ?></td>
                <td>AAA</td>
                <td>AAA</td>
                <td>AAA</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>