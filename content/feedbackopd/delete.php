<?php

if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// query menampilkan data dengan id
$sqlGetId = "SELECT * FROM tb_feedback WHERE idfeedback = '$id'";
$resGetId = mysqli_query($conn, $sqlGetId);
$data = mysqli_fetch_assoc($resGetId);

$sql = "DELETE FROM tb_feedback WHERE idfeedback = $id";

$file = "assets/file/feedback/" . $data['files_feedback'];

if (!unlink($file)) {
  echo ("Error deleting $file");
} else {
  if (mysqli_query($conn, $sql)) {
    echo '<script type="text/javascript">
    alert("Data Feedback OPD Berhasil Dihapus");
    window.location.href="t.php?page=feedbackopd";
    </script>';
  } else {
    echo "Error deleting record: " . mysqli_error($conn);
  }
}

mysqli_close($conn);
