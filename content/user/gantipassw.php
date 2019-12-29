<?php

if (isset($_GET['id']) && $_GET['id'] != "") {
  $id = $_GET['id'];
} else {
  $id = "";
}

// deklarasi variabel dari form
$passw = md5($_POST['passw']);

// query
$sql = "UPDATE tb_user 
        SET password = '$passw'
        WHERE userid = '$id'";

if (mysqli_query($conn, $sql)) {
  echo '<script type="text/javascript">
        alert("Data User Berhasil Ubah Password");
        window.location.href="t.php?page=user";
        </script>';
} else {
  echo "Error deleting record: " . mysqli_error($conn);
}

mysqli_close($conn);
