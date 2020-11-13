<div class="col-xl-12 col-lg-12">
  <div class="card shadow mb-4">
    <!-- Card Header - Accordion -->
    <a href="#collapseCardStartUpDigital" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardStartUpDigital">
      <h6 class="m-0 font-weight-bold text-primary">Grafik Start Up Digital</h6>
    </a>
    <!-- Card Content - Collapse -->
    <div class="collapse show" id="collapseCardStartUpDigital">
      <div class="card-body">
        <div id="startUp_Digital"></div>

        <?php
        // variabel kosong dengan array
        $inbis = array();
        $tenant = array();

        // deklarasi untuk nama
        $sqlInbis = "SELECT * FROM tb_inbis";
        $resultInbis = mysqli_query($conn, $sqlInbis);
        while ($rowInbis = mysqli_fetch_assoc($resultInbis)) {
          $idinbis = $rowInbis['id_inbis'];
          $inbis[] = '"' . $rowInbis['ket_inbis'] . '"';

          // deklarasi count
          $sqlTenant = "SELECT COUNT(id_tenant) AS jmlh_tenant, nm_inbis FROM tb_tenant 
            WHERE nm_inbis = '$idinbis'";

          $resultTenant = mysqli_query($conn, $sqlTenant);
          while ($rowTenant = mysqli_fetch_assoc($resultTenant)) {
            $tenant[] = $rowTenant['jmlh_tenant'];
          }
        }

        ?>

        <script>
          Highcharts.chart('startUp_Digital', {
            chart: {
              type: 'bar'
            },
            title: {
              text: 'Grafik Start Up Digital Berdasarkan Inkubator Bisnis'
            },
            subtitle: {
              text: ''
            },
            xAxis: {
              categories: [<?= join($inbis, ','); ?>]
            },
            yAxis: {
              min: 0,
              title: {
                text: 'Jumlah Tenant'
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
              data: [<?= join($tenant, ','); ?>],
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