<!-- agar menu sidebar saat di klik active -->
<script type="text/javascript">
  document.getElementById('dashboardinbis').classList.add('active');
</script>

<!-- isi konten -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">

    <h1 class="h3 mb-0 text-gray-800"><?php include 'template/title.php'; ?></h1>

  </div>

  <div class="row">
    <div class="col-xl-12 col-md-12 mb-4">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Total Start Up Digital</div>
              <div class="h5 mb-0 font-weight-bold text-gray-900">
                <?= $rowStartupDigital['jml_startUp']; ?>
              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-rocket fa-2x text-primary"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Content Row -->
  <div class="row">

    <?php include 'v_startup_digi.php'; ?>

    <div class="col-xl-12 col-lg-12">
      <div class="card shadow mb-4">
        <!-- Card Header - Accordion -->
        <a href="#collapseCardTopOpdAplikasi" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardTopOpdAplikasi">
          <h6 class="m-0 font-weight-bold text-primary">Tabel Start Up Digital</h6>
        </a>
        <!-- Card Content - Collapse -->
        <div class="collapse show" id="collapseCardTopOpdAplikasi">
          <div class="card-body">
            <?php include 'tbl_startup_digi.php'; ?>
          </div>
        </div>
      </div>
    </div>

    </>

  </div>