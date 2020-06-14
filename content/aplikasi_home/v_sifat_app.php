<div class="col-xl-6 col-md-6">
  <div class="card shadow mb-4">
    <!-- Card Header - Accordion -->
    <a href="#collapseCardSifatAplikasi" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardSifatAplikasi">
      <h6 class="m-0 font-weight-bold text-primary">Sifat Aplikasi</h6>
    </a>
    <!-- Card Content - Collapse -->
    <div class="collapse show" id="collapseCardSifatAplikasi">
      <div class="card-body">
        <div id="sifatapp"></div>

        <?php
        // variabel kosong dengan array
        $KlasiAppGrf = array();
        $aplikasi = array();

        // deklarasi untuk nama
        $sqlKlasiAppGrf = "SELECT * FROM klasifikasi_aplikasi";
        $resultKlasiAppGrf = mysqli_query($conn, $sqlKlasiAppGrf);
        while ($rowKlasiAppGrf = mysqli_fetch_assoc($resultKlasiAppGrf)) {
          $idklasiapp = $rowKlasiAppGrf['id_klasifikasi_app'];
          $KlasiAppGrf[] = '"' . $rowKlasiAppGrf['nama_klasifikasi_app'] . '"';

          // deklarasi count
          $sqlAplikasi = "SELECT COUNT(klasifikasi_aplikasi) as klasiapp FROM aplikasi WHERE klasifikasi_aplikasi = '$idklasiapp'";
          $resultAplikasi = mysqli_query($conn, $sqlAplikasi);
          while ($rowAplikasi = mysqli_fetch_assoc($resultAplikasi)) {
            $aplikasi[] = $rowAplikasi['klasiapp'];
          }
        }

        ?>

        <script>
          Highcharts.chart('sifatapp', {
            chart: {
              type: 'column'
            },
            title: {
              text: 'Grafik Aplikasi Berdasarkan Klasifikasi'
            },
            subtitle: {
              text: ''
            },
            xAxis: {
              categories: [<?= join($KlasiAppGrf, ','); ?>]
            },
            yAxis: {
              min: 0,
              title: {
                text: 'Jumlah Aplikasi'
              }
            },
            legend: {
              enabled: false
            },
            tooltip: {
              pointFormat: 'Total: <b>{point.y:.0f}</b>'
            },
            series: [{
              colorByPoint: true,
              name: 'Platform',
              data: [<?= join($aplikasi, ','); ?>],
              dataLabels: {
                enabled: true,
                rotation: 0,
                color: '#FFFFFF',
                align: 'center',
                format: '{point.y:.0f}', // one decimal
                y: 1, // 10 pixels down from the top
                style: {
                  fontSize: '13px',
                  fontFamily: 'Verdana, sans-serif'
                }
              }
            }]
          });
        </script>
      </div>
    </div>
  </div>
</div>