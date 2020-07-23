<div class="card shadow mb-4">
  <!-- Card Header -->
  <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
    <h6 class="m-0 font-weight-bold text-primary">Grafik Penilaian Mandiri dan Hasil Evaluasi KemenPANRB</h6>
  </div>
  <!-- Card Body -->
  <div class="card-body">
    <div id="grafikpenilaian"></div>
    <?php
    if ($_SESSION['groupuser'] == 2 || $_SESSION['groupuser'] == 3) {
      if (isset($_POST['cari'])) {
        $caritahun = $_POST['caritahun'];
        $sqlNilai = "SELECT a.tahun_penilaian, b.indikator,c.nilaimadiri AS nilaimandiri, f.nilaimadiri AS nilaipusat FROM tb_penilaian a 
        LEFT JOIN tb_indikator b ON b.idindikator = a.idindikator 
        LEFT JOIN tb_level c ON c.idlevel = a.penilaianmandiri 
        LEFT JOIN tb_opdterkait d ON d.idpenilaian = a.idpenilaian 
        LEFT JOIN tb_opd e ON e.idopd = d.idopd
        LEFT JOIN tb_level f ON f.idlevel = a.nilaikematangan
      WHERE a.tahun_penilaian LIKE '%$caritahun%' && d.idopd = '$_SESSION[opd]'";
      } else {
        $sqlNilai = "SELECT a.tahun_penilaian, b.indikator,c.nilaimadiri AS nilaimandiri, f.nilaimadiri AS nilaipusat FROM tb_penilaian a 
        LEFT JOIN tb_indikator b ON b.idindikator = a.idindikator 
        LEFT JOIN tb_level c ON c.idlevel = a.penilaianmandiri 
        LEFT JOIN tb_opdterkait d ON d.idpenilaian = a.idpenilaian 
        LEFT JOIN tb_opd e ON e.idopd = d.idopd
        LEFT JOIN tb_level f ON f.idlevel = a.nilaikematangan
      WHERE a.tahun_penilaian = $thnkmrn && d.idopd = '$_SESSION[opd]'";
      }
    } else {
      $sqlNilai = "SELECT a.tahun_penilaian, b.indikator,c.nilaimadiri AS nilaimandiri, f.nilaimadiri AS nilaipusat FROM tb_penilaian a 
        LEFT JOIN tb_indikator b ON b.idindikator = a.idindikator 
        LEFT JOIN tb_level c ON c.idlevel = a.penilaianmandiri 
        LEFT JOIN tb_opdterkait d ON d.idpenilaian = a.idpenilaian 
        LEFT JOIN tb_opd e ON e.idopd = d.idopd
        LEFT JOIN tb_level f ON f.idlevel = a.nilaikematangan
      WHERE a.tahun_penilaian = $thnkmrn";
    }

    $sqlNilai = $sqlNilai . " ORDER BY b.idindikator ASC";

    $resultNilai = mysqli_query($conn, $sqlNilai);
    while ($rowNilai = mysqli_fetch_assoc($resultNilai)) {
      $thnPenilaian = $rowNilai['tahun_penilaian'];
      $indikator[] = '"Indikator ' . $rowNilai['indikator'] . '"';
      if (!empty($rowNilai['nilaimandiri']) && !empty($rowNilai['nilaipusat'])) {
        $nilaimandiri[] = $rowNilai['nilaimandiri'];
        $nilaipusat[] = $rowNilai['nilaipusat'];
      } else {
        $nilaimandiri[] = 0;
        $nilaipusat[] = 0;
      }
    }

    ?>

    <script>
      Highcharts.chart('grafikpenilaian', {
        chart: {
          type: 'column'
        },
        title: {
          text: 'Grafik Penilaian Kematangan Tahun <?= $thnPenilaian; ?>'
        },
        subtitle: {
          text: ''
        },
        xAxis: {
          categories: [<?= join($indikator, ','); ?>]
        },
        yAxis: {
          title: {
            text: 'Penilaian Kematangan'
          }
        },
        plotOptions: {
          line: {
            dataLabels: {
              enabled: true
            },
            enableMouseTracking: false
          }
        },
        series: [{
          name: 'Nilai Pusat',
          data: [<?= join($nilaipusat, ','); ?>]
        }, {
          name: 'Nilai Mandiri',
          data: [<?= join($nilaimandiri, ','); ?>]
        }]
      });
    </script>
  </div>
</div>