<?php
include '../config/config.php';

$id = $_GET['id'];

$sql = "SELECT * FROM tb_opd 
        WHERE idopd LIKE '%$id%' && LENGTH(idopd) = 8";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
}
// echo '<pre>';
// print_r($data);
// echo '</pre>';
echo json_encode($data);
