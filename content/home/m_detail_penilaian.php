<div class="modal fade" id="mdetnilai-<?= $id; ?>" tabindex="-1" role="dialog" aria-labelledby="mdetnilaiLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="mdetnilaiLabel">Detail Penilaian <?php include 'template/title.php'; ?></h5>
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
              <th>Penjelasan Indikator</th>
            </tr>
            <tr>
              <td>
                <?= $penjelasanindikator; ?>
              </td>
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