<?php

// query count aplikasi
if ($_SESSION['opd'] == '0') {
    $sqlApp = "SELECT COUNT(*) AS jml_aplikasi FROM aplikasi";
} else {
    $sqlApp = "SELECT COUNT(*) AS jml_aplikasi FROM aplikasi WHERE unit = $_SESSION[opd]";
}
$resultApp = mysqli_query($conn, $sqlApp);
$rowApp = mysqli_fetch_assoc($resultApp);
// end query count aplikasi

// query count aplikasi aktif
if ($_SESSION['opd'] == '0') {
    $sqlAppAktif = "SELECT COUNT(*) AS jml_aplikasi_aktif FROM aplikasi 
    WHERE sts_aktif = 'aktif'";
} else {
    $sqlAppAktif = "SELECT COUNT(*) AS jml_aplikasi_aktif FROM aplikasi 
    WHERE sts_aktif = 'aktif' && unit = $_SESSION[opd]";
}
$resultAppAktif = mysqli_query($conn, $sqlAppAktif);
$rowAppAktif = mysqli_fetch_assoc($resultAppAktif);
// end query count aplikasi aktif

// query count aplikasi non aktif
if ($_SESSION['opd'] == '0') {
    $sqlAppNonAktif = "SELECT COUNT(*) AS jml_aplikasi_nonaktif FROM aplikasi 
    WHERE sts_aktif = 'naktif'";
} else {
    $sqlAppNonAktif = "SELECT COUNT(*) AS jml_aplikasi_nonaktif FROM aplikasi 
    WHERE sts_aktif = 'naktif' && unit = $_SESSION[opd]";
}
$resultAppNonAktif = mysqli_query($conn, $sqlAppNonAktif);
$rowAppNonAktif = mysqli_fetch_assoc($resultAppNonAktif);
// end query count aplikasi non aktif

// query count aplikasi integrasi
if ($_SESSION['opd'] == '0') {
    $sqlAppIntegrasi = "SELECT COUNT(*) AS jml_aplikasi_intergrasi 
    FROM detail_aplikasi a 
    LEFT JOIN aplikasi b ON b.id_app = a.id_aplikasi 
    WHERE a.integrasi = 'sudah'";
} else {
    $sqlAppIntegrasi = "SELECT COUNT(*) AS jml_aplikasi_intergrasi 
    FROM detail_aplikasi a 
    LEFT JOIN aplikasi b ON b.id_app = a.id_aplikasi 
    WHERE a.integrasi = 'sudah' && b.unit = $_SESSION[opd]";
}
$resultAppIntegrasi = mysqli_query($conn, $sqlAppIntegrasi);
$rowAppIntegrasi = mysqli_fetch_assoc($resultAppIntegrasi);
// end query count aplikasi integrasi
