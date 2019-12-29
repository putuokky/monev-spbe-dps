<?php

if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

$sql = "DELETE FROM tb_indikator WHERE idindikator = $id";
$sql2 = "DELETE FROM tb_detail_indikator WHERE idindikator_detail = $id";

if (mysqli_query($conn, $sql) && mysqli_query($conn, $sql2)) {
  echo '<script type="text/javascript">
  alert("Data Indikator Berhasil Dihapus");
  window.location.href="t.php?page=indikator";
  </script>';
} else {
  echo "Error deleting record: " . mysqli_error($conn);
}

mysqli_close($conn);
