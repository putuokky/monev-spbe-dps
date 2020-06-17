<?php

if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query menampilkan data dengan id
$sqlGetId = "SELECT * FROM tbl_monev_app WHERE id_monev_app = '$id'";
$resGetId = mysqli_query($conn, $sqlGetId);
$data = mysqli_fetch_assoc($resGetId);

$sql = "DELETE FROM tbl_monev_app WHERE id_monev_app = $id";

$file = "assets/file/aplikasi/monev/" . $data['bukti_dukung'];

if (!unlink($file)) {
  if (mysqli_query($conn, $sql)) {
    echo '<script type="text/javascript">
          alert("Data Monitoring Aplikasi Berhasil Dihapus");
          window.location.href="t.php?page=monevapp";
          </script>';
  } else {
    echo "Error deleting record: " . mysqli_error($conn);
  }
} else {
  if (mysqli_query($conn, $sql)) {
    echo '<script type="text/javascript">
          alert("Data Monitoring Aplikasi Berhasil Dihapus");
          window.location.href="t.php?page=monevapp";
          </script>';
  } else {
    echo "Error deleting record: " . mysqli_error($conn);
  }
}

mysqli_close($conn);
