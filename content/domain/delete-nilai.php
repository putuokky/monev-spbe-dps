<?php

if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

$sql = "DELETE FROM tb_domain_nilai WHERE id_domain_nilai = $id";

if (mysqli_query($conn, $sql)) {
  echo '<script type="text/javascript">
  alert("Data Domain Nilai Berhasil Dihapus");
  window.history.go(-1);
  </script>';
} else {
  echo "Error deleting record: " . mysqli_error($conn);
}

mysqli_close($conn);
