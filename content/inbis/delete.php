<?php

if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

$sql = "DELETE FROM tb_inbis WHERE id_inbis = $id";

if (mysqli_query($conn, $sql)) {
  echo '<script type="text/javascript">
  alert("Data Kategori Inbis Berhasil Dihapus");
  window.location.href="t.php?page=inbis";
  </script>';
} else {
  echo "Error deleting record: " . mysqli_error($conn);
}

mysqli_close($conn);
