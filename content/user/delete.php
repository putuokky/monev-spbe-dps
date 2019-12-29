<?php

if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

$sql = "DELETE FROM tb_user WHERE userid = '$id'";

if (mysqli_query($conn, $sql)) {
  echo '<script type="text/javascript">
  alert("Data User Berhasil Dihapus");
  window.location.href="t.php?page=user";
  </script>';
} else {
  echo "Error deleting record: " . mysqli_error($conn);
}

mysqli_close($conn);
