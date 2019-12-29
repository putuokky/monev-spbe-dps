<?php

if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

$sql = "UPDATE tb_user 
        SET is_active = '0'
        WHERE userid = '$id'";

if (mysqli_query($conn, $sql)) {
  echo '<script type="text/javascript">
  alert("Data User Berhasil Non Aktifkan");
  window.location.href="t.php?page=user";
  </script>';
} else {
  echo "Error deleting record: " . mysqli_error($conn);
}

mysqli_close($conn);
