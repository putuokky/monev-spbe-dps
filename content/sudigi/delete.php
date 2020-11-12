<?php

if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

$sql = "DELETE FROM tb_tenant WHERE id_tenant = $id";

if (mysqli_query($conn, $sql)) {
  echo '<script type="text/javascript">
  alert("Data Start Up Digital Berhasil Dihapus");
  window.location.href="t.php?page=sudigi";
  </script>';
} else {
  echo "Error deleting record: " . mysqli_error($conn);
}

mysqli_close($conn);
