<?php
include '../config/config.php';

$id = $_GET['id'];

$sql = "SELECT * FROM tb_level a 
        LEFT JOIN tb_pertanyaan b ON a.idpertanyaan = b.idpertanyaan
        LEFT JOIN tb_indikator c ON b.idindikator = c.idindikator 
        WHERE b.idindikator = $id";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
}
// echo '<pre>';
// print_r($data);
// echo '</pre>';
echo json_encode($data);
