<div class="modal fade" id="modalHapus-<?= $id; ?>" tabindex="-1" role="dialog" aria-labelledby="modalHapusLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalHapusLabel">Apakah Yakin Ingin Menghapus?</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">Pilih "Hapus" jika memang ingin menghapus data <?php include 'template/title.php'; ?> <b><?= $row['judul']; ?></b> ini.</div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
        <a class="btn btn-danger" href="?page=app&act=hapus&id=<?= $id; ?>">Hapus</a>
      </div>
    </div>
  </div>
</div>