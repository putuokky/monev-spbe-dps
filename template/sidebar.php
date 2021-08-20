    <!-- Sidebar -->
    <ul class="navbar-nav bg-gray-900 sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="">
        <div class="sidebar-brand-icon">
          <i class="fas fa-tv"></i>
        </div>
        <div class="sidebar-brand-text mx-3"><?= $tagline->sidetitle(); ?></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <?php
      // SPBE
      if ($_SESSION['grupindeks'] == 1) { ?>
        <li class="nav-item" id="dashboard">
          <a class="nav-link" href="?page=home">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard SPBE</span></a>
        </li>
      <?php } else if ($_SESSION['grupindeks'] == 2) { ?>
        <li class="nav-item" id="dashboardikci">
          <a class="nav-link" href="?page=homeikci">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard IKCI</span></a>
        </li>
      <?php } else if ($_SESSION['grupindeks'] == 3) { ?>
        <li class="nav-item" id="dashboardapp">
          <a class="nav-link" href="?page=homeapp">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard Aplikasi</span></a>
        </li>
      <?php } else if ($_SESSION['grupindeks'] == 4) { ?>
        <li class="nav-item" id="dashboardinbis">
          <a class="nav-link" href="?page=homeinbis">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard Start Up Digital</span></a>
        </li>
      <?php } else { ?>
        <li class="nav-item" id="dashboard">
          <a class="nav-link" href="?page=home">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard SPBE</span></a>
        </li>
        <!-- <li class="nav-item" id="dashboardikci">
          <a class="nav-link" href="?page=homeikci">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard IKCI</span></a>
        </li> -->
        <li class="nav-item" id="dashboardapp">
          <a class="nav-link" href="?page=homeapp">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard Aplikasi</span></a>
        </li>
        <li class="nav-item" id="dashboardinbis">
          <a class="nav-link" href="?page=homeinbis">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard Start Up Digital</span></a>
        </li>
      <?php } ?>

      <?php
      // SPBE
      if ($_SESSION['grupindeks'] == 0 || $_SESSION['grupindeks'] == 1) { ?>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <?php if ($_SESSION['groupuser'] == 4) { ?>
          <li class="nav-item" id="alleva">
            <a class="nav-link" href="?page=all-evaluasi">
              <i class="fas fa-fw fa-clipboard-list"></i>
              <span>Evaluasi SPBE</span></a>
          </li>
        <?php } ?>

        <?php
        // SPBE
        if ($_SESSION['groupuser'] != 4) { ?>
          <!-- Heading -->
          <div class="sidebar-heading">
            Evaluasi SPBE
          </div>
          <!-- Nav Item -->
          <?php if ($_SESSION['groupuser'] == 1) { ?>
            <li class="nav-item pb-0" id="evaluasi">
              <a class="nav-link" href="?page=evaluasi">
                <i class="fas fa-fw fa-paste"></i>
                <span>Hasil Evaluasi</span></a>
            </li>
          <?php } ?>

          <!-- Nav Item -->
          <li class="nav-item pb-0" id="nilaikematangan">
            <a class="nav-link" href="?page=nilaikematangan">
              <i class="fas fa-fw fa-clipboard-list"></i>
              <span>Penilaian Kematangan</span></a>
          </li>

          <!-- Nav Item -->
          <!-- <li class="nav-item pb-0" id="indikatornilai">
            <a class="nav-link" href="?page=nilai-indikator">
              <i class="fas fa-fw fa-clipboard"></i>
              <span>Penilaian Indikator</span></a>
          </li> -->

          <!-- Nav Item -->
          <li class="nav-item pb-0" id="rekaptingkat">
            <a class="nav-link" href="?page=rekap-tingkat">
              <i class="fab fa-fw fa-flipboard"></i>
              <span>Rekap Peningkatan</span></a>
          </li>
      <?php }
      } ?>

      <!-- Aplikasi -->
      <?php if ($_SESSION['grupindeks'] == 0 || $_SESSION['grupindeks'] == 3 || $_SESSION['grupindeks'] == 5 || $_SESSION['grupindeks'] == 6) { ?>
        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
          Data Aplikasi
        </div>

        <!-- Nav Item -->
        <li class="nav-item pb-0" id="app">
          <a class="nav-link" href="?page=app">
            <i class="fas fa-fw fa-globe"></i>
            <span>Aplikasi</span></a>
        </li>
        <li class="nav-item pb-0" id="monevapp">
          <a class="nav-link" href="?page=monevapp">
            <i class="fas fa-fw fa-file-archive"></i>
            <span>Monitoring Aplikasi</span></a>
        </li>
        <li class="nav-item pb-0" id="lapormasalah">
          <a class="nav-link" href="?page=lapormasalah">
            <i class="fas fa-fw fa-file-signature"></i>
            <span>Lapor Permasalahan</span></a>
        </li>
      <?php } ?>
      <!-- <hr class="sidebar-divider"> -->
      <!-- Heading -->
      <!-- <div class="sidebar-heading">
        Data Inbis
      </div> -->
      <!-- Nav Item -->
      <!-- <li class="nav-item pb-0" id="sudigi">
        <a class="nav-link" href="?page=sudigi">
          <i class="fas fa-fw fa-rocket"></i>
          <span>Start Up Digital</span></a>
      </li> -->

      <?php
      // grupuser user admin
      if ($_SESSION['groupuser'] == 1) { ?>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
          Master
        </div>

        <?php if ($_SESSION['grupindeks'] == 1) { ?>
          <?php include_once "template/menu_master_spbe.php"; ?>
        <?php } else if ($_SESSION['grupindeks'] == 3) { ?>
          <?php include_once "template/menu_master_apps.php"; ?>
        <?php } else if ($_SESSION['grupindeks'] == 4) { ?>
          <?php include_once "template/menu_master_inbis.php"; ?>
        <?php } else { ?>
          <?php include_once "template/menu_master_spbe.php"; ?>
          <?php include_once "template/menu_master_apps.php"; ?>
          <?php include_once "template/menu_master_inbis.php"; ?>
        <?php } ?>

      <?php } else {
        echo '';
      }
      ?>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <?php
      if ($_SESSION['groupuser'] == 3 || $_SESSION['groupuser'] == 4) {
        echo '';
      } else {
      ?>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
          Add On
        </div>

        <?php if ($_SESSION['groupuser'] == 1 || $_SESSION['groupuser'] == 2) { ?>
          <!-- Nav Item -->
          <li class="nav-item pb-0" id="opd">
            <a class="nav-link" href="?page=opd">
              <i class="fas fa-fw fa-user-tie"></i>
              <span>Perangkat Daerah</span></a>
          </li>

          <?php if ($_SESSION['groupuser'] == 1) { ?>
            <!-- Nav Item -->
            <li class="nav-item pb-0" id="grupuser">
              <a class="nav-link" href="?page=grupuser">
                <i class="fas fa-fw fa-users"></i>
                <span>Group User</span></a>
            </li>
        <?php }
        } ?>

        <!-- Nav Item -->
        <li class="nav-item pb-0" id="user">
          <a class="nav-link" href="?page=user">
            <i class="fas fa-fw fa-user"></i>
            <span>User</span></a>
        </li>



      <?php } ?>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Nav Item -->
      <li class="nav-item mb-0">
        <a class="nav-link" href="logout.php">
          <i class="fas fa-fw fa-sign-out-alt"></i>
          <span>Log Out</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->