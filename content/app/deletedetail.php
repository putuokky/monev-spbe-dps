<?php

if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// inisiasi idx
if (isset($_GET['idx']) && $_GET['idx'] != "") {
  $idx = $_GET['idx'];
} else {
  $idx = "";
}

$sql = "DELETE FROM detail_aplikasi WHERE id_detail_aplikasi = $idx";

if (mysqli_query($conn, $sql)) {
  echo '<script type="text/javascript">
  alert("Data Detail Aplikasi Berhasil Dihapus");
  window.location.href="t.php?page=app&act=detail&id=' . $id . '";
  </script>';
} else {
  echo "Error deleting record: " . mysqli_error($conn);
}

mysqli_close($conn);
