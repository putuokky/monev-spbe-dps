  <!-- agar menu sidebar saat di klik active -->
  <script type="text/javascript">
    document.getElementById('lapormasalah').classList.add('active');
  </script>

  <!-- isi konten -->
  <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">

      <h1 class="h3 mb-0 text-gray-800"><?php include 'template/title.php'; ?></h1>

    </div>

    <div class="row">

      <div class="col-xl-12 col-lg-12">

        <a class="btn btn-dark btn-icon-split h3 mb-4" title="Kembali" href="?page=lapormasalah">
          <span class="text">Kembali</span>
        </a>

        <div class="card shadow mb-4">
          <!-- Card Header - Dropdown -->
          <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">Tabel Detail <?php include 'template/title.php'; ?></h6>
          </div>
          <?php
          // inisiasi id
          if (isset($_GET['id']) && $_GET['id'] != "") {
            $id = $_GET['id'];
          } else {
            $id = "";
          }

          // query menampilkan data dengan id
          $sql = "SELECT a.id_lapormasalah,a.jns_laporan,a.nama_app,a.permasalahan,a.bukti_lapor,a.nama_input,a.status_lapor,a.kat_tl_lapor,a.dlu,b.nama_jenis_laporan,b.bidang,c.judul,d.nama_user
            FROM tbl_lapormasalah a 
            LEFT JOIN tbl_jenis_laporan b ON b.id_jenis_laporan = a.jns_laporan 
            LEFT JOIN aplikasi c ON c.id_app = a.nama_app
            LEFT JOIN tb_user d ON d.userid = a.nama_input 
            WHERE id_lapormasalah  = '$id'";

          $res = mysqli_query($conn, $sql);

          $data = mysqli_fetch_assoc($res);
          ?>
          <div class="card-body">
            <div class="card text-white bg-secondary mb-3">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-1">Tanggal Lapor</div>
                  <div class="col-md-1">:</div>
                  <div class="col-md-5"><?= date('d-m-Y, H:i:s', strtotime($data['dlu'])); ?></div>
                </div>
                <div class="row">
                  <div class="col-md-1">Jenis Lapor</div>
                  <div class="col-md-1">:</div>
                  <div class="col-md-5"><?= $data['nama_jenis_laporan']; ?></div>
                </div>
                <div class="row">
                  <div class="col-md-1">Aplikasi</div>
                  <div class="col-md-1">:</div>
                  <div class="col-md-5"><?= $data['judul']; ?></div>
                </div>
                <div class="row">
                  <div class="col-md-1">Permasalahan</div>
                  <div class="col-md-1">:</div>
                  <div class="col-md-5"><?= $data['permasalahan']; ?></div>
                </div>
                <div class="row">
                  <div class="col-md-1">Bukti Lapor</div>
                  <div class="col-md-1">:</div>
                  <div class="col-md-5"><a href="assets/file/aplikasi/lapormasalah/<?= $data['bukti_lapor']; ?>" target="_blank" class="text-white"><?= $data['bukti_lapor']; ?></a></div>
                </div>
                <div class="row">
                  <div class="col-md-1">Pelapor</div>
                  <div class="col-md-1">:</div>
                  <div class="col-md-5"><?= $data['nama_user']; ?></div>
                </div>
                <div class="row">
                  <div class="col-md-1">Status</div>
                  <div class="col-md-1">:</div>
                  <div class="col-md-5"><?php if ($data['status_lapor'] == '1') {
                                          echo '<span class="badge badge-primary">Baru</span>';
                                        } else {
                                          echo '<span class="badge badge-success">Respon</span>';
                                        } ?></div>
                </div>
              </div>
            </div>
            <div class="table-responsive">
              <table class="table table-bordered table-hover" id="" width="100%" cellspacing="0">
                <thead>
                  <tr class="btn-dark">
                    <th>No</th>
                    <th>Tanggal Tindak Lanjut</th>
                    <th>Respon</th>
                    <th>Kategori Tindak Lanjut</th>
                    <th>Nama Tindak Lanjut</th>
                </thead>
                <!-- <tfoot>
                  <tr class="btn-dark">
                    <th>No</th>
                    <th>Action</th>
                    <th>Tanggal</th>
                    <th>Jenis Lapor</th>
                  </tr>
                </tfoot> -->
                <tbody>
                  <?php
                  $sqlTL = "SELECT * FROM tbl_respon_tl a 
                      LEFT JOIN tb_user b ON b.userid = a.user_tl
                      WHERE id_lapormasalah = $id
                      ORDER BY dlu_tl DESC";
                  $resultTL = mysqli_query($conn, $sqlTL);

                  if (mysqli_num_rows($resultTL) > 0) {
                    $no = 1;
                    while ($rowTL = mysqli_fetch_assoc($resultTL)) { ?>
                      <tr>
                        <td><?= $no; ?></td>
                        <td><?= date('d-m-Y, H:i:s', strtotime($rowTL['dlu_tl'])); ?></td>
                        <td><?= $rowTL['respon_tl']; ?></td>
                        <td><?php if ($rowTL['kat_tl_respon'] == 1) {
                              echo '<span class="badge badge-warning">Tindak Lanjut Awal</span>';
                            } else if ($rowTL['kat_tl_respon'] == 2) {
                              echo '<span class="badge badge-success">Tindak Lanjut Selesai</span>';
                            } ?></td>
                        <td><?= $rowTL['nama_user']; ?></td>
                      </tr>
                    <?php
                      $no++;
                    }
                  } else { ?>
                    <td colspan="5" class="text-center">Belum Ada Tindak Lanjut</td>
                  <?php } ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

    </div>

  </div>