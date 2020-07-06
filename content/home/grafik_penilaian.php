<div class="card shadow mb-4">
  <!-- Card Header -->
  <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
    <h6 class="m-0 font-weight-bold text-primary">Grafik Penilaian Mandiri dan Hasil Evaluasi KemenPANRB</h6>
  </div>
  <!-- Card Body -->
  <div class="card-body">
    <div id="grafikpenilaian"></div>

    <script>
      Highcharts.chart('grafikpenilaian', {
        chart: {
          type: 'line'
        },
        title: {
          text: 'Grafik Penilaian Kematangan Tahun 2018'
        },
        subtitle: {
          text: ''
        },
        xAxis: {
          categories: ['Indikator 1', 'Indikator 2', 'Indikator 3', 'Indikator 4', 'Indikator 5', 'Indikator 6', 'Indikator 7', 'Indikator 8', 'Indikator 9', 'Indikator 10', 'Indikator 11', 'Indikator 12']
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
          data: [1, 1, 2, 2, 2, 3, 0, 1, 0, 0, 0, 2]
        }, {
          name: 'Nilai Mandiri',
          data: [1, 3, 1, 3, 3, 3, 0, 2, 3, 3, 6, 2]
        }]
      });
    </script>
  </div>
</div>