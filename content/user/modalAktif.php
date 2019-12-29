<div class="modal fade" id="modalAktif-<?= $id; ?>" tabindex="-1" role="dialog" aria-labelledby="modalAktifLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalAktifLabel">Apakah Yakin Ingin Menghapus?</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">Pilih "Aktif" jika memang ingin aktifkan data <?php include 'template/title.php'; ?> <b><?= $id; ?></b> dengan Nama <b><?= $nama; ?></b> ini.</div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
        <a class="btn btn-success" href="?page=user&act=aktif&id=<?= $id; ?>">Aktif</a>
      </div>
    </div>
  </div>
</div>