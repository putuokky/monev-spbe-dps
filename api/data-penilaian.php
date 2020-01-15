<?php
include '../config/config.php';

$id = $_GET['id'];

$sql = "SELECT * FROM tb_penilaian a 
        LEFT JOIN tb_indikator b ON b.idindikator = a.idindikator 
        WHERE a.tahun_penilaian = $id
        ORDER BY a.idindikator";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
}
// echo '<pre>';
// print_r($data);
// echo '</pre>';
echo json_encode($data);
