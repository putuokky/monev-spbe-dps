<?php

if ($_GET) {
  $page = $_GET['page'];
} else {
  $page = "";
}

switch ($page) {
  default:
    include 'content/404/index.php';
    break;
  case "home":
    include 'content/home/index.php';
    break;
  case "user":
    include 'content/user/index.php';
    break;
  case "opd":
    include 'content/opd/index.php';
    break;
  case "grupuser":
    include 'content/grupuser/index.php';
    break;
  case "indeks":
    include 'content/indeks/index.php';
    break;
  case "domain":
    include 'content/domain/index.php';
    break;
    // case "aspek":
    //   include 'content/aspek/index.php';
    //   break;
  case "indikator":
    include 'content/indikator/index.php';
    break;
  case "pertanyaan":
    include 'content/pertanyaan/index.php';
    break;
  case "level":
    include 'content/level/index.php';
    break;
  case "profile":
    include 'content/profile/index.php';
    break;
  case "feedbackopd":
    include 'content/feedbackopd/index.php';
    break;
  case "evaluasi":
    include 'content/evaluasi/index.php';
    break;
  case "nilaikematangan":
    include 'content/penilaian/index.php';
    break;
  case "homeikci":
    include 'content/homeikci/index.php';
    break;
  case "nilai-indikator":
    include 'content/indikatornilai/index.php';
    break;
  case "all-evaluasi":
    include 'content/allevaluasi/index.php';
    break;
  case "rekap-tingkat":
    include 'content/allevaluasi/rekap.php';
    break;
  case "app":
    include 'content/app/index.php';
    break;
  case "homeapp":
    include 'content/aplikasi_home/index.php';
    break;
  case "monevapp":
    include 'content/monevapp/index.php';
    break;
  case "lapormasalah":
    include 'content/lapormasalah/index.php';
    break;
  case "katapps":
    include 'content/katapps/index.php';
    break;
  case "katdb":
    include 'content/katdb/index.php';
    break;
  case "katmedia":
    include 'content/katmedia/index.php';
    break;
  case "sudigi":
    include 'content/sudigi/index.php';
    break;
  case "inbis":
    include 'content/inbis/index.php';
    break;
  case "homeinbis":
    include 'content/inbis_home/index.php';
    break;
}
