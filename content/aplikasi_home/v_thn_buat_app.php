<div class="col-xl-12 col-lg-12">
  <div class="card shadow mb-4">
    <!-- Card Header - Accordion -->
    <a href="#collapseCardTahunBuatAplikasi" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardTahunBuatAplikasi">
      <h6 class="m-0 font-weight-bold text-primary">Grafik Tahun Pembuatan Aplikasi</h6>
    </a>
    <!-- Card Content - Collapse -->
    <div class="collapse show" id="collapseCardTahunBuatAplikasi">
      <div class="card-body">
        <div id="thnBuatApps"></div>

        <?php
        // variabel kosong dengan array
        $thnBuat = array();
        $aplikasi = array();

        // deklarasi untuk nama
        $sqlTahunBuat = "SELECT thn_pembuatan FROM aplikasi GROUP BY thn_pembuatan";
        $resultTahunBuat = mysqli_query($conn, $sqlTahunBuat);
        while ($rowTahunBuat = mysqli_fetch_assoc($resultTahunBuat)) {
          $idmedia = $rowTahunBuat['thn_pembuatan'];
          $thnBuat[] = '"' . $rowTahunBuat['thn_pembuatan'] . '"';

          // deklarasi count
          if ($_SESSION['opd'] == '0') {
            $sqlAplikasi = "SELECT COUNT(id_app) AS jmlh_aplikasi, thn_pembuatan FROM aplikasi 
            WHERE thn_pembuatan = '$idmedia'";
          } else {
            $sqlAplikasi = "SELECT COUNT(id_app) AS jmlh_aplikasi, thn_pembuatan FROM aplikasi 
            WHERE thn_pembuatan = '$idmedia' && unit = $_SESSION[opd]";
          }

          $resultAplikasi = mysqli_query($conn, $sqlAplikasi);
          while ($rowAplikasi = mysqli_fetch_assoc($resultAplikasi)) {
            $aplikasi[] = $rowAplikasi['jmlh_aplikasi'];
          }
        }

        ?>

        <script>
          Highcharts.chart('thnBuatApps', {
            chart: {
              type: 'line'
            },
            title: {
              text: 'Grafik Aplikasi Berdasarkan Tahun Pembuatan'
            },
            subtitle: {
              text: ''
            },
            xAxis: {
              categories: [<?= join($thnBuat, ','); ?>]
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