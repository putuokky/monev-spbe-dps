<div class="col-xl-12 col-lg-12">
  <div class="card shadow mb-4">
    <!-- Card Header - Accordion -->
    <a href="#collapseCardDataJenisAplikasi" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardDataJenisAplikasi">
      <h6 class="m-0 font-weight-bold text-primary">Data Jenis Aplikasi</h6>
    </a>
    <!-- Card Content - Collapse -->
    <div class="collapse show" id="collapseCardDataJenisAplikasi">
      <div class="card-body">
        <div id="datajnsapp"></div>

        <?php
        // variabel kosong dengan array
        $platform = array();
        $aplikasi = array();

        // deklarasi untuk nama
        $sqlPlatform = "SELECT * FROM kategori_media";
        $resultPlatform = mysqli_query($conn, $sqlPlatform);
        while ($rowPlatform = mysqli_fetch_assoc($resultPlatform)) {
          $idmedia = $rowPlatform['id_media'];
          $platform[] = '"' . $rowPlatform['nama_kat_media'] . '"';

          // deklarasi count
          $sqlAplikasi = "SELECT COUNT(media) as media FROM aplikasi WHERE media = '$idmedia'";
          $resultAplikasi = mysqli_query($conn, $sqlAplikasi);
          while ($rowAplikasi = mysqli_fetch_assoc($resultAplikasi)) {
            $aplikasi[] = $rowAplikasi['media'];
          }
        }

        ?>

        <script>
          Highcharts.chart('datajnsapp', {
            chart: {
              type: 'column'
            },
            title: {
              text: 'Grafik Aplikasi Berdasarkan Platform'
            },
            subtitle: {
              text: ''
            },
            xAxis: {
              categories: [<?= join($platform, ','); ?>]
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