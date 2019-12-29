<?php

if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

$sql = "DELETE FROM tb_penilaian WHERE idpenilaian = $id";

$query = "SELECT * FROM tb_opdterkait WHERE idpenilaian = $id";
$result = mysqli_query($conn, $query);
$data = mysqli_fetch_assoc($result);

$sql2 = "DELETE FROM tb_opdterkait WHERE idopdterkait = $data[idopdterkait]";

if (mysqli_query($conn, $sql) && mysqli_query($conn, $sql2)) {
  echo '<script type="text/javascript">
  alert("Data Penilaian Kematangan Berhasil Dihapus");
  window.location.href="t.php?page=nilaikematangan";
  </script>';
} else {
  echo "Error deleting record: " . mysqli_error($conn);
}

mysqli_close($conn);
