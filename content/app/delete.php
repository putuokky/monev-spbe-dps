<?php

if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query menampilkan data dengan id
$sqlGetId = "SELECT * FROM aplikasi WHERE id_app = '$id'";
$resGetId = mysqli_query($conn, $sqlGetId);
$data = mysqli_fetch_assoc($resGetId);

$sql = "DELETE FROM aplikasi WHERE id_app = $id";

$file = "assets/file/aplikasi/" . $data['dasarhukum'];
$gambar = "assets/img/aplikasi/" . $data['pict'];

if (!empty($file)) {
  if (!unlink($file)) {
    echo ("Error deleting $file dan $gambar");
  } else {
    if (mysqli_query($conn, $sql)) {
      echo '<script type="text/javascript">
      alert("Data Aplikasi Berhasil Dihapus");
      window.location.href="t.php?page=app";
      </script>';
    } else {
      echo "Error deleting record: " . mysqli_error($conn);
    }
  }
} else {
  if (mysqli_query($conn, $sql)) {
    echo '<script type="text/javascript">
    alert("Data Aplikasi Berhasil Dihapus aaa");
    window.location.href="t.php?page=app";
    </script>';
  } else {
    echo "Error deleting record: " . mysqli_error($conn);
  }
}

mysqli_close($conn);
