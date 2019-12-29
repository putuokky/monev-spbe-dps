<?php  

session_start();

session_destroy();

$page = "index.php";

header("location: $page");
