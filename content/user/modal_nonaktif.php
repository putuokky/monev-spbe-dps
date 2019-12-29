<div class="modal fade" id="modalNonAktif-<?= $id; ?>" tabindex="-1" role="dialog" aria-labelledby="modalNonAktifLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalNonAktifLabel">Apakah Yakin Ingin Menghapus?</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">Pilih "Non Aktif" jika memang ingin non aktifkan data <?php include 'template/title.php'; ?> <b><?= $id; ?></b> dengan Nama <b><?= $nama; ?></b> ini.</div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
        <a class="btn btn-danger" href="?page=user&act=nonaktif&id=<?= $id; ?>">Non Aktif</a>
      </div>
    </div>
  </div>
</div>