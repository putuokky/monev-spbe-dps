<div class="col-xl-6 col-md-6">
  <div class="card shadow mb-4">
    <!-- Card Header - Accordion -->
    <a href="#collapseCardKategoriAplikasi" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardKategoriAplikasi">
      <h6 class="m-0 font-weight-bold text-primary">Grafik Kategori Aplikasi</h6>
    </a>
    <!-- Card Content - Collapse -->
    <div class="collapse show" id="collapseCardKategoriAplikasi">
      <div class="card-body">
        <div id="kategoriapp"></div>

        <?php
        // variabel kosong dengan array
        $KatAppGrf = array();
        $aplikasi = array();

        // deklarasi untuk nama
        $sqlKatAppGrf = "SELECT * FROM kategori_aplikasi";
        $resultKatAppGrf = mysqli_query($conn, $sqlKatAppGrf);
        while ($rowKatAppGrf = mysqli_fetch_assoc($resultKatAppGrf)) {
          $idkatapp = $rowKatAppGrf['id_kat_aplikasi'];
          $KatAppGrf[] = '"' . $rowKatAppGrf['kat_aplikasi'] . '"';

          // deklarasi count
          if ($_SESSION['opd'] == '0') {
            $sqlAplikasi = "SELECT COUNT(kategori_aplikasi) as katapp FROM aplikasi 
            WHERE kategori_aplikasi = '$idkatapp'";
          } else {
            $sqlAplikasi = "SELECT COUNT(kategori_aplikasi) as katapp FROM aplikasi 
            WHERE kategori_aplikasi = '$idkatapp' && unit = $_SESSION[opd]";
          }

          $resultAplikasi = mysqli_query($conn, $sqlAplikasi);
          while ($rowAplikasi = mysqli_fetch_assoc($resultAplikasi)) {
            $aplikasi[] = $rowAplikasi['katapp'];
          }
        }

        ?>

        <script>
          Highcharts.chart('kategoriapp', {
            chart: {
              type: 'column'
            },
            title: {
              text: 'Grafik Aplikasi Berdasarkan Kategori'
            },
            subtitle: {
              text: ''
            },
            xAxis: {
              categories: [<?= join($KatAppGrf, ','); ?>]
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