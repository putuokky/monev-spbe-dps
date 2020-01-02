<?php

$pil = str_replace("--", '<br><i class="fas fa-fw fa-angle-double-right"></i>', $penjelasan_indikator_list);
$pilvl = str_replace(";", "<br>", $penjelasan_indikator_level);
$pit = str_replace(";;", "<br><br>", $penjelasan_indikator_tambahan);
?>

<div class="modal fade" id="modalDetail-<?= $id; ?>" tabindex="-1" role="dialog" aria-labelledby="modalDetailLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalDetailLabel">Detail <?php include 'template/title.php'; ?></h5>
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
                <?= $pil; ?>
                <?= $pilvl; ?>
                <?= $pit; ?>
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