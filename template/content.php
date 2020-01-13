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
  case "domain":
    include 'content/domain/index.php';
    break;
  case "aspek":
    include 'content/aspek/index.php';
    break;
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
  case "indeks":
    include 'content/indeks/index.php';
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
}
