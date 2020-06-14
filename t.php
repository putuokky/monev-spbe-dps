<?php
session_start();

include 'autoload/autoload.php';
include 'config/config.php';
include 'model/model.php';

// manggil class
function __autoload($tagline)
{
  require_once 'template/' . $tagline . '.php';
}
$tagline = new tagline();
// end manggil class

if (empty($_SESSION['userid'])) {
  header('location: index.php');
} else {
?>

  <!-- header -->
  <?php include 'template/header.php'; ?>
  <!-- end header -->

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <?php include 'template/sidebar.php'; ?>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <?php include 'template/topbar.php'; ?>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <?php include 'template/content.php'; ?>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- footer -->
      <?php include 'template/footer.php'; ?>
      <!-- end footer -->

    <?php } ?>