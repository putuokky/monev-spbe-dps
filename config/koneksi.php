<?php

$servername = "localhost";
$username = "indeksdp_user_indeks";
$password = "!s7Jl3856+zM";
$dbname = "indeksdp_db_indeks";


// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
// echo "Connected successfully";