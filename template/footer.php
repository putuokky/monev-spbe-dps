<!-- Footer -->
<footer class="sticky-footer bg-gray-900">
  <div class="container my-auto">
    <div class="copyright text-center my-auto text-white">
      <span>Copyright &copy; <?php echo date('Y'); ?> | <?= $tagline->sidetitle(); ?>&nbsp;<?= $tagline->kota(); ?></span>
    </div>
    <div class="copyright text-center mt-1 text-white">
      <span><?= $tagline->develop(); ?></span>
    </div>
  </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
  <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
        <a class="btn btn-primary" href="logout.php">Logout</a>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="assets/vendor/jquery/jquery.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="assets/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<!-- <script src="assets/vendor/chart.js/Chart.min.js"></script> -->
<script src="assets/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<!-- <script src="assets/js/demo/chart-area-demo.js"></script>
<script src="assets/js/demo/chart-pie-demo.js"></script> -->
<script src="assets/js/demo/datatables-demo.js"></script>

<!-- datetime dari https://gijgo.com/ -->
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>


<script>
  $('#datepicker').datepicker({
    uiLibrary: 'bootstrap4',
    format: 'dd mmmm yyyy'
  });
</script>

<script>
  var timepicker = $('#timepicker').timepicker({
    uiLibrary: 'bootstrap4',
    format: 'HH:MM'
  });
</script>

<script>
  var timepicker = $('#timepicker2').timepicker({
    uiLibrary: 'bootstrap4',
    format: 'HH:MM'
  });
</script>

<script>
  $(function() {
    $('[data-toggle="tooltip"]').tooltip()
  })
</script>

<!-- untuk upload file dokumentasi / gambar -->
<script>
  $('.custom-file-input').on('change', function() {
    let fileName = $(this).val().split('\\').pop();
    $(this).next('.custom-file-label').addClass("selected").html(fileName);
  });
</script>
<!-- end untuk upload file dokumentasi / gambar -->

<script>
  $('select[id="nama_indikator"]').on('change', function() {
    var id = $('#nama_indikator').val();
    if (id == '') {
      id = '0';
    }

    $('#loader1').show();
    $("#nilaimatang").prop('disabled', true);
    if (id != null) {
      $.ajax({
        type: 'GET',
        url: 'api/data-indikator.php?id=' + id,
        data: '',
        success: function(result) {
          $('select[id="nilaimatang"]').empty();
          $('select[id="nilaimatang"]').append('<option value="-">-</option>');
          $.each(JSON.parse(result), function(i, val) {
            $('#nilaimatang').append($('<option></option>').attr('value', val.idlevel).text(val.namalevel));
          });
          $('select[id="nilaimandiri"]').empty();
          $('select[id="nilaimandiri"]').append('<option value="-">-</option>');
          $.each(JSON.parse(result), function(i, val) {
            $('#nilaimandiri').append($('<option></option>').attr('value', val.idlevel).text(val.namalevel));
          });

          $("#nilaimatang").prop('disabled', false);
          $("#nilaimandiri").prop('disabled', false);
          $('#loader1').hide();
        }
      });
    } else {
      $('#loader1').hide();
    }
  });
</script>

<!-- untuk menu hasil evaluasi -->
<script>
  $('select[id="nama_indikator"]').on('change', function() {
    var id = $('#nama_indikator').val();
    if (id == '') {
      id = '0';
    }

    $('#loader1').show();
    $("#nama_level").prop('disabled', true);
    if (id != null) {
      $.ajax({
        type: 'GET',
        url: 'api/data-indikator.php?id=' + id,
        data: '',
        success: function(result) {
          $('select[id="nama_level"]').empty();
          $('select[id="nama_level"]').append('<option value="-">-</option>');
          $.each(JSON.parse(result), function(i, val) {
            $('#nama_level').append($('<option></option>').attr('value', val.idlevel).text(val.namalevel));
          });

          $("#nama_level").prop('disabled', false);
          $('#loader1').hide();
        }
      });
    } else {
      $('#loader1').hide();
    }
  });

  // ------------------------------------------

  $('select[id="nama_level"]').on('change', function() {
    var id = $('#nama_level').val();
    if (id == '') {
      id = '0';
    }

    $('#loader2').show();
    $("#fpertanyaan").prop('disabled', true);
    if (id != null) {


      $.ajax({
        type: 'GET',
        url: 'api/data-pertanyaan.php?id=' + id,
        data: '',
        success: function(result) {
          $('select[id="fpertanyaan"]').empty();
          $('select[id="fpertanyaan"]').append('<option value="-">-</option>');
          $.each(JSON.parse(result), function(i, val) {
            $('#fpertanyaan').append($('<option></option>').attr('value', val.idpertanyaan).text(val.pertanyaan));
          });

          $("#fpertanyaan").prop('disabled', false);
          $('#loader2').hide();
        }
      });
    } else {
      $('#loader2').hide();
    }
  });
</script>

<script>
  $('select[id="tahun-alleva"]').on('change', function() {
    var id = $('#tahun-alleva').val();
    if (id == '') {
      id = '0';
    }

    $('#loader3').show();
    $("#id_nilai").prop('disabled', true);
    if (id != null) {
      $.ajax({
        type: 'GET',
        url: 'api/data-penilaian.php?id=' + id,
        data: '',
        success: function(result) {
          $('select[id="id_nilai"]').empty();
          $('select[id="id_nilai"]').append('<option value="-">-</option>');
          $.each(JSON.parse(result), function(i, val) {
            $('#id_nilai').append($('<option></option>').attr('value', val.idpenilaian).text('Indikator ' + val.indikator + ' - ' + val.namaindikator));
          });

          $("#id_nilai").prop('disabled', false);
          $('#loader3').hide();
        }
      });
    } else {
      $('#loader3').hide();
    }
  });
</script>

<script>
  $('select[id="unit"]').on('change', function() {
    var id = $('#unit').val();
    if (id == '') {
      id = '0';
    }

    $('#loader4').show();
    $("#unitbid").prop('disabled', true);
    if (id != null) {
      $.ajax({
        type: 'GET',
        url: 'api/data-opdbid.php?id=' + id,
        data: '',
        success: function(result) {
          $('select[id="unitbid"]').empty();
          $('select[id="unitbid"]').append('<option value="-">-</option>');
          $.each(JSON.parse(result), function(i, val) {
            $('#unitbid').append($('<option></option>').attr('value', val.idopd).text(val.namaopd));
          });

          $("#unitbid").prop('disabled', false);
          $('#loader4').hide();
        }
      });
    } else {
      $('#loader4').hide();
    }
  });
</script>

<script>
  $('select[id="tahun"]').on('change', function() {
    var id = $('#tahun').val();
    if (id == '') {
      id = '0';
    }

    $('#loader5').show();
    $("#namaindeks").prop('disabled', true);
    if (id != null) {
      $.ajax({
        type: 'GET',
        url: 'api/data-indeks.php?id=' + id,
        data: '',
        success: function(result) {
          $('select[id="namaindeks"]').empty();
          $('select[id="namaindeks"]').append('<option value="-">-</option>');
          $.each(JSON.parse(result), function(i, val) {
            $('#namaindeks').append($('<option></option>').attr('value', val.id_indeks).text(val.nama_indeks));
          });

          $("#namaindeks").prop('disabled', false);
          $('#loader5').hide();
        }
      });
    } else {
      $('#loader5').hide();
    }
  });
</script>

<script>
  $('select[id="katindeks"]').on('change', function() {
    var id = $('#katindeks').val();
    if (id == '') {
      id = '0';
    }

    $('#loader6').show();
    $("#namadomainforaspek").prop('disabled', true);
    if (id != null) {
      $.ajax({
        type: 'GET',
        url: 'api/data-domain.php?id=' + id,
        data: '',
        success: function(result) {
          $('select[id="namadomainforaspek"]').empty();
          $('select[id="namadomainforaspek"]').append('<option value="-">-</option>');
          $.each(JSON.parse(result), function(i, val) {
            $('#namadomainforaspek').append($('<option></option>').attr('value', val.id_domain).text(val.nama_domain));
          });

          $("#namadomainforaspek").prop('disabled', false);
          $('#loader6').hide();
        }
      });
    } else {
      $('#loader6').hide();
    }
  });
</script>

</body>

</html>