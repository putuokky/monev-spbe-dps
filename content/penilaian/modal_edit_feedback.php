<div class="modal fade" id="modalEditFeedback-<?= $idfb; ?>" tabindex="-1" role="dialog" aria-labelledby="modalEditFeedbackLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalEditFeedbackLabel">Form Edit <?php include 'template/title.php'; ?></h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="post" action="?page=nilaikematangan&act=editfeedback&id=<?= $idfb; ?>" enctype="multipart/form-data">
          <div class="form-group">
            <label for="ketfeedback">Penjelasan Data Pendukung</label>
            <textarea class="form-control" id="ketfeedback" name="ketfeedback" rows="3" placeholder="Enter Penjelasan Data Pendukung"></textarea>
          </div>
          <div class="form-group">
            <label for="filedukung" class="col-form-label">File Pendukung</label>
            <div class="custom-file">
              <!-- upload file dokumen/gambar cek footer -->
              <input type="file" class="custom-file-input" id="filedukung" name="filedukung">
              <label class="custom-file-label" for="filedukung">Choose file</label>
            </div>
          </div>
          <div class="form-group">
            <div class="col-md-10">
              Anda dapat mengupload format <b>.PDF / .JPG .JPEG .PNG</b> dengan maximum file size <b>25 MB</b>.
            </div>
          </div>
          <hr>
          <div class="form-group">
            <div class="col-md-10">
              File Sebelumnya yang anda upload :
              <a href="assets/file/feedback/<?= $files_feedback; ?>" target="_blank">
                <?= $files_feedback; ?>
              </a>
            </div>
          </div>
          <div class="form-group">
            <button type="submit" class="btn btn-primary" name="simpanpendukung">Simpan</button>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>