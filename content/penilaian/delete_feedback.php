<?php
if (isset($_GET['id']) && $_GET['id'] != "") {
  $idfb = $_GET['id'];
} else {
  $idfb = "";
}

// query menampilkan data dengan id
$sqlGetId = "SELECT * FROM tb_feedback WHERE idfeedback = '$idfb'";
$resGetId = mysqli_query($conn, $sqlGetId);
$data = mysqli_fetch_assoc($resGetId);

$idnilai = $data['idpenilaian'];

$sql = "DELETE FROM tb_feedback WHERE idfeedback = $idfb";

$file = "assets/file/feedback/" . $data['files_feedback'];

if (!unlink($file)) {
  echo ("Error deleting $file");
} else {
  if (mysqli_query($conn, $sql)) {
    echo '<script type="text/javascript">
    alert("Data Penjelasan Data Pendukung Berhasil Dihapus");
    window.location.href="t.php?page=nilaikematangan&act=plusfeedbackopd&id=';
    echo $idnilai;
    echo '";</script>';
  } else {
    echo "Error deleting record: " . mysqli_error($conn);
  }
}

mysqli_close($conn);
