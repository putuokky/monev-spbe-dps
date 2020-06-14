<?php

// query count aplikasi
$sqlApp = "SELECT COUNT(*) AS jml_aplikasi FROM aplikasi";
$resultApp = mysqli_query($conn, $sqlApp);
$rowApp = mysqli_fetch_assoc($resultApp);

// query count aplikasi aktif
$sqlAppAktif = "SELECT COUNT(*) AS jml_aplikasi_aktif FROM aplikasi WHERE sts_aktif = 'aktif'";
$resultAppAktif = mysqli_query($conn, $sqlAppAktif);
$rowAppAktif = mysqli_fetch_assoc($resultAppAktif);

// query count aplikasi non aktif
$sqlAppNonAktif = "SELECT COUNT(*) AS jml_aplikasi_nonaktif FROM aplikasi WHERE sts_aktif = 'naktif'";
$resultAppNonAktif = mysqli_query($conn, $sqlAppNonAktif);
$rowAppNonAktif = mysqli_fetch_assoc($resultAppNonAktif);

// query count aplikasi integrasi
$sqlAppIntegrasi = "SELECT COUNT(*) AS jml_aplikasi_intergrasi FROM aplikasi WHERE integrasi = 'sudah'";
$resultAppIntegrasi = mysqli_query($conn, $sqlAppIntegrasi);
$rowAppIntegrasi = mysqli_fetch_assoc($resultAppIntegrasi);

// query count aplikasi non integrasi
$sqlAppNonIntegrasi = "SELECT COUNT(*) AS jml_app_non_intergrasi FROM aplikasi WHERE integrasi = 'belum'";
$resultAppNonIntegrasi = mysqli_query($conn, $sqlAppNonIntegrasi);
$rowAppNonIntegrasi = mysqli_fetch_assoc($resultAppNonIntegrasi);
