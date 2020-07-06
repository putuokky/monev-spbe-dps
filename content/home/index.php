<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('dashboard').classList.add('active');
</script>

<!-- isi konten -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">

    <h1 class="h3 mb-0 text-gray-800"><?php include 'template/title.php'; ?></h1>

  </div>

  <!-- Content Row -->
  <?php include_once 'formpencarian.php'; ?>

  <?php
  $thnkmrn = date('Y') - 2;
  ?>
  <?php include_once 'nilai_indeks.php'; ?>

  <!-- row -->
  <div class="row">
    <!-- Collapsable Card Example -->
    <div class="col-xs-12 col-lg-6">
      <?php include_once "grafik_indeks.php"; ?>
      <!-- Collapsable Card Example -->
    </div>

    <div class="col-xl-6 col-lg-6">
      <?php include_once "tabel_nilai.php"; ?>
    </div>

    <!-- end row -->
  </div>

  <div class="row">

    <div class="col-xl-12 col-lg-12">
      <?php include_once "grafik_penilaian.php"; ?>
    </div>

  </div>

  </>