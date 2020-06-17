<?php

if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query menampilkan data dengan id
$sqlGetId = "SELECT * FROM tbl_lapormasalah WHERE id_lapormasalah = '$id'";
$resGetId = mysqli_query($conn, $sqlGetId);
$data = mysqli_fetch_assoc($resGetId);

$sql = "DELETE FROM tbl_lapormasalah WHERE id_lapormasalah = $id";

$file = "assets/file/aplikasi/lapormasalah/" . $data['bukti_lapor'];

if (!unlink($file)) {
  if (mysqli_query($conn, $sql)) {
    echo '<script type="text/javascript">
          alert("Data Lapor Permasalahan Berhasil Dihapus");
          window.location.href="t.php?page=lapormasalah";
          </script>';
  } else {
    echo "Error deleting record: " . mysqli_error($conn);
  }
} else {
  if (mysqli_query($conn, $sql)) {
    echo '<script type="text/javascript">
          alert("Data Lapor Permasalahan Berhasil Dihapus");
          window.location.href="t.php?page=lapormasalah";
          </script>';
  } else {
    echo "Error deleting record: " . mysqli_error($conn);
  }
}

mysqli_close($conn);
