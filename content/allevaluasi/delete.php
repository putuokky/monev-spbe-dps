<?php

if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

$sql = "DELETE FROM tb_eksekutif_opd WHERE id_eksekutif_opd = $id";

if (mysqli_query($conn, $sql)) {
  echo '<script type="text/javascript">
  alert("Data Rekap Peningkatan Indeks Berhasil Dihapus");
  window.location.href="t.php?page=rekap-tingkat";
  </script>';
} else {
  echo "Error deleting record: " . mysqli_error($conn);
}

mysqli_close($conn);
