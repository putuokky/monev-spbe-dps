<div class="modal fade" id="modalHapusFeedback-<?= $idfb; ?>" tabindex="-1" role="dialog" aria-labelledby="modalHapusFeedbackLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalHapusFeedbackLabel">Apakah Yakin Ingin Menghapus?</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">Pilih "Hapus" jika memang ingin menghapus Penjelasan Data Pendukung dari data <?php include 'template/title.php'; ?>.</div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
        <a class="btn btn-danger" href="?page=nilaikematangan&act=hapusfeedback&id=<?= $idfb; ?>">Hapus</a>
      </div>
    </div>
  </div>
</div>