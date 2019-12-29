<div class="modal fade" id="modalGantiPassword-<?= $id; ?>" tabindex="-1" role="dialog" aria-labelledby="modalGantiPasswordLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalGantiPasswordLabel">Form Ganti Password <?php include 'template/title.php'; ?></h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table table-striped">
          <!-- <thead>
            <tr>
              <th scope="col" colspan="2" class="align-middle">Username</th>
            </tr>
          </thead> -->
          <tbody>
            <tr>
              <th>Username</th>
              <td>:</td>
              <td><?= $id; ?></td>
            </tr>
            <tr>
              <th>Nama</th>
              <td>:</td>
              <td><?= $nama; ?></td>
            </tr>
          </tbody>
        </table>
        <form method="post" action="?page=user&act=gantipass&id=<?= $id; ?>">
          <div class="form-group">
            <label for="passw">Ganti Password</label>
            <input type="text" class="form-control" name="passw" id="passw" placeholder="Password" autocomplete="off">
          </div>
          <div class="form-group">
            <button type="submit" class="btn btn-primary" name="gantipassw">Simpan</button>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>