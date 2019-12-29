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
        <table class="table table-striped">
          <!-- <thead>
            <tr>
              <th scope="col" colspan="2" class="align-middle">Username</th>
            </tr>
          </thead> -->
          <tbody>
            <tr>
              <th>Kode OPD</th>
              <td><?= $id; ?></td>
            </tr>
            <tr>
              <th>Nama OPD</th>
              <td><?= $namaopd; ?></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>