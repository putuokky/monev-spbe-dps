<?php

if ($_GET) {
  $page = $_GET['page'];
} else {
  $page = "";
}

switch ($page) {
  default:
    echo "404 Page Not Found";
    break;
  case "home":
    echo "Dashboard SPBE";
    break;
  case "user":
    echo "User";
    break;
  case "opd":
    echo "Perangkat Daerah";
    break;
  case "grupuser":
    echo "Group User";
    break;
  case "domain":
    echo "Domain";
    break;
  case "aspek":
    echo "Aspek";
    break;
  case "indikator":
    echo "Indikator";
    break;
  case "pertanyaan":
    echo "Pertanyaan";
    break;
  case "level":
    echo "Level";
    break;
  case "profile":
    echo "Profile";
    break;
  case "feedbackopd":
    echo "Feedback OPD";
    break;
  case "evaluasi":
    echo "Evaluasi";
    break;
  case "indeks":
    echo "Indeks";
    break;
  case "nilaikematangan":
    echo "Penilaian Kematangan";
    break;
  case "homeikci":
    echo "Dashboard IKCI";
    break;
  case "nilai-indikator":
    echo "Nilai Indikator";
    break;
  case "all-evaluasi":
    echo "All Evaluasi";
    break;
}
