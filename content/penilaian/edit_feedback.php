<?php
if (isset($_GET['id']) && $_GET['id'] != "") {
  $idfb = $_GET['id'];
} else {
  $idfb = "";
}

if (isset($_POST['simpanpendukung'])) {
  $ketfeedback = $_POST['ketfeedback'];

  // variabel untuk upload file
  $fileupload = $_FILES['filedukung']['name'];
  $ukuran_file = $_FILES['filedukung']['size'];
  $tipe_file = $_FILES['filedukung']['type'];
  $tmp_file = $_FILES['filedukung']['tmp_name'];

  // kapasitas size dalam byte
  $space = 26214400;

  // Set path folder tempat menyimpan file upload
  $path = "assets/file/feedback/" . $fileupload;

  $res = true;

  if ($res) {
    if (!empty($fileupload)) {
      // Cek apakah tipe file yang akan diupload
      if ($tipe_file == "application/pdf" || $tipe_file == "image/jpg" || $tipe_file == "image/jpeg" || $tipe_file == "image/png") {
        // Jika tipe file yang diupload seperti diatas, lakukan :
        if ($ukuran_file <= $space) {
          // Jika ukuran file kurang dari sama dengan kapasitas size, lakukan :
          if (move_uploaded_file($tmp_file, $path)) {

            // query menampilkan data dengan id
            $sqlGetId = "SELECT * FROM tb_feedback WHERE idfeedback = '$idfb'";
            $resGetId = mysqli_query($conn, $sqlGetId);
            $data = mysqli_fetch_assoc($resGetId);

            $idnilai = $data['idpenilaian'];

            $sql = "UPDATE tb_feedback 
            SET ket_feedback = '$ketfeedback',
            idpenilaian = '$idnilai',
            files_feedback = '$fileupload',
            date_created = '$datenow4'
            WHERE idfeedback = '$idfb'";

            if (!unlink($fileupload)) {
              echo ("Error deleting $fileupload");
            } else {
              if (mysqli_query($conn, $sql)) {
                echo '<script type="text/javascript">
                      alert("Penjelasan Data Pendukung Berhasil Diedit");
                      window.location.href="t.php?page=nilaikematangan&act=plusfeedbackopd&id=';
                echo $idnilai;
                echo '";</script>';
              } else {
                echo '<script type="text/javascript">
                      alert("Penjelasan Data Pendukung Gagal Diedit");
                      window.location.href="t.php?page=nilaikematangan&act=plusfeedbackopd&id=';
                echo $idnilai;
                echo '";</script>';
              }
            }
          } else {
            // Jika gambar gagal diupload, lakukan :
            echo '<script type="text/javascript">
                  alert("Maaf, File gagal untuk diupload.");
                  </script>';
          }
        } else {
          // Jika gagal diupload, lakukan :
          echo '<script type="text/javascript">
                alert("Maaf, Ukuran file yang diupload tidak boleh lebih dari 25MB");
                </script>';
        }
      } else {
        // Jika ukuran file tidak sesuai yang inginkan, lakukan :
        echo '<script type="text/javascript">
              alert("Maaf, tipe file yang diupload harus .PDF / .JPG .JPEG .PNG");
              </script>';
      }
    } else {

      // query menampilkan data dengan id
      $sqlGetId = "SELECT * FROM tb_feedback WHERE idfeedback = '$idfb'";
      $resGetId = mysqli_query($conn, $sqlGetId);
      $data = mysqli_fetch_assoc($resGetId);

      $idnilai = $data['idpenilaian'];

      $sql = "UPDATE tb_feedback 
            SET ket_feedback = '$ketfeedback',
            idpenilaian = '$idnilai',
            date_created = '$datenow4'
            WHERE idfeedback = '$idfb'";

      if (mysqli_query($conn, $sql)) {
        echo '<script type="text/javascript">
              alert("Penjelasan Data Pendukung Berhasil Diedit");
              window.location.href="t.php?page=nilaikematangan&act=plusfeedbackopd&id=';
        echo $idnilai;
        echo '";</script>';
      } else {
        echo '<script type="text/javascript">
              alert("Penjelasan Data Pendukung Gagal Diedit");
              window.location.href="t.php?page=nilaikematangan&act=plusfeedbackopd&id=';
        echo $idnilai;
        echo '";</script>';
      }
    }
  }
}
