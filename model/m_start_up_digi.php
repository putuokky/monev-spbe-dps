<?php

// query count Start Up Digital
$sqlStartupDigital = "SELECT COUNT(*) AS jml_startUp FROM tb_tenant";
$resultStartupDigital = mysqli_query($conn, $sqlStartupDigital);
$rowStartupDigital = mysqli_fetch_assoc($resultStartupDigital);
// end query count Start Up Digital