-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2022 at 10:43 AM
-- Server version: 5.7.27
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indeksdp_db_indeks`
--

-- --------------------------------------------------------

--
-- Table structure for table `aplikasi`
--

CREATE TABLE `aplikasi` (
  `id_app` int(11) NOT NULL,
  `judul` varchar(500) NOT NULL,
  `klasifikasi_aplikasi` int(2) NOT NULL,
  `kategori_aplikasi` int(2) NOT NULL,
  `infofungsi` text,
  `dasarhukum` text,
  `media` int(2) NOT NULL,
  `link` text NOT NULL,
  `pict` text,
  `infoapp` text,
  `unit_pengembang` varchar(20) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `unit_pengguna` varchar(20) NOT NULL,
  `sts_aktif` varchar(10) NOT NULL,
  `thn_pembuatan` varchar(6) NOT NULL,
  `usr` text NOT NULL,
  `dlu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aplikasi`
--

INSERT INTO `aplikasi` (`id_app`, `judul`, `klasifikasi_aplikasi`, `kategori_aplikasi`, `infofungsi`, `dasarhukum`, `media`, `link`, `pict`, `infoapp`, `unit_pengembang`, `unit`, `unit_pengguna`, `sts_aktif`, `thn_pembuatan`, `usr`, `dlu`) VALUES
(1, 'Arcview GIS 3.2', 2, 2, 'Memberikan informasi terkait data perikanan ', '', 1, '', '1.', '0', '', '031101', '031101', 'aktif', '-', 'adm', '2019-04-29 11:00:07'),
(2, 'ATCS DENPASAR', 2, 2, 'Untuk memberikan info terkait arus lalu lintas di Kota Denpasar', '', 1, '', '1.', '0', '', '030701', '030701', 'naktif', '-', 'adm', '2019-04-29 10:56:20'),
(3, 'ATCS_CLIENT', 1, 2, 'Untuk pengaturan traffic light kota denpasar', '', 1, '', '1.', '0', '', '030701', '030701', 'naktif', '-', 'adm', '2019-04-29 10:56:42'),
(4, 'Penilaian Kesehatan Koperasi Online', 1, 2, 'Melakukan penilaian kesehatan usaha koperasi secara online (intranet).', '', 1, '', '1.', '0', '', '031501', '031501', 'aktif', '-', 'adm', '2019-04-29 10:50:05'),
(5, 'Bank Data', 2, 2, 'Meningkatkan kecepatan proses perubahan data dan informasi yang dinamis, meningkatkan volume data informasi yang dapat diakses dan meningkatkan kualitas dan kuantitas pengolahan informasi. Meningkatkan pelayanan kepada masyarakat/publik secara lebih professional dan modern. Pemeliharaan dokumen, data dan informasi yang berkaitan dengan perbankan secara memadai, media komunikasi, interaksi dan informasi dengan masyarakat/publik dengan dua arah agar bisa mendengar dan berbicara secara efektif. memberikan informasi resmi dan terbaru tentang aktifitas dari Pemerintah Kota Denpasar, baik mengenai informasi layanan perizinan, pengaduan masyarakat, transparansi anggaran, informasi publik, informasi layanan publik dan informasi kepada publik.', '', 1, 'https://bankdata.denpasarkota.go.id/', '1.', 'WhatsApp Image 2020-07-21 at 20.45.30 (2).jpeg', '', '030801', '000000', 'aktif', '2016', 'DKIS', '2020-07-21 10:25:19'),
(6, 'Prodeskel', 1, 1, 'Memantau Profil Potensi dan perkembangan Desa/ Kelurahan.', '', 1, 'prodeskel.binapemdes.kemendagri.go.id', '1.', 'Aplikasi  Prodeskel.jpg', '', '040501', '040501', 'aktif', '-', 'adm', '2019-03-28 14:03:17'),
(7, 'Basis data terpadu / SLRT', 1, 1, 'Sistem informasi basis data terpadu pendataan PMKS dan PSKS Kota Denpasar', '', 1, 'jendela.denpasarkota.go.id/bdt', '1.', '0', '', '300004', '300004', 'naktif', '-', 'adm', '2019-04-29 11:04:44'),
(8, 'Rajakol (Rekomendasi Jasa Konstruksi Online)', 1, 2, 'Pelayanan publik pengajuan dan penerbitan rekomendasi teknis (IUJK) Ijin Usaha Jasa Konstruksi online.', '', 1, 'damamandala.denpasarkota.go.id', '1.', 'Aplikasi RAJAKOL (Rekomendasi Jasa Konstruksi Online).jpg', '', '030301', '030301', 'aktif', '-', 'adm', '2019-04-29 10:51:59'),
(9, 'RFID Bus Sekolah', 1, 2, 'Digunakan untuk Tap Penumpang saat siswa akan naik bus.', '', 2, '', '1.', '0', '', '030701', '030701', 'aktif', '-', 'adm', '2019-04-29 10:57:13'),
(10, 'RPKAM ', 1, 1, 'Monitoring e-rpkam.', '', 1, 'www.kesling.kesmas.kemkes.go.id', '1.', '0', '', '030201', '030201', 'aktif', '-', 'adm', '2019-03-28 14:15:23'),
(11, 'Rujukan Online', 1, 2, 'Menerima, mengolah dan menyimpan rujukan dari faskes pertama.', '', 1, 'rujukanonline.denpasarkota.go.id', '1.', '0', '', '041001', '041001', 'aktif', '-', 'adm', '2019-04-29 11:14:10'),
(12, 'Rumah Belanja Denpasar', 1, 2, 'Membantu IKM dalam mempromosikan produknya melalui media digital (website Kota Denpasar).', '', 1, 'balidenpasartrading.com', '1.', 'Aplikasi Rumah Belanja  Denpasar.jpg', '', '031401', '031401', 'aktif', '-', 'adm', '2019-04-29 11:01:22'),
(13, 'SI BUSED', 2, 2, 'Aplikasi pendukung layanan Bus Sekolah Denpasar yang digunakan untuk memantau posisi bus terkini dan memudahkan orang tua untuk memonitoring anak saat di dalam kendaraan.', '', 2, '', '1.', '0', '', '030701', '030701', 'aktif', '-', 'adm', '2019-04-29 10:57:30'),
(14, 'SIDAB (Sistem Informasi Distribusi Air Bersih)', 2, 2, 'Membantu pelayanan informasi kepada pelanggan terait dengan sistem jaringan perpipaan dan data pelanggan.', '', 1, '', '1.', '0', '', '300001', '300001', 'aktif', '-', 'adm', '2019-04-29 11:08:33'),
(15, 'Sidandaniti (Sistem Informasi Peraturan Perundnag-undangan)', 1, 2, 'Sebagai bentuk layanan internal kepada OPD di Lingkungan Pemerintah Kota Denpasar dalam Pembuatan Produk Hukum (khususnya SK) .', '', 1, 'http://sidandaniti.denpasarkota.go.id', '1.', 'Aplikasi  Sidandaniti (Sistem Informasi Peraturan Perundang- undangan).jpg', '', '011201', '011201', 'aktif', '-', 'adm', '2019-04-29 10:35:18'),
(16, 'SIDASI (Sistem Informasi Drainase dan Irigasi)', 1, 2, 'Tersedianya peta dan database drainase dan irigasi di kta denpasar.', '', 1, 'damamandala.denpasarkota.go.idsidasi', '1.', '0', '', '030301', '030301', 'aktif', '-', 'adm', '2019-04-29 10:52:34'),
(17, 'SIDI', 1, 2, 'Mendata persebaran industri di Kota Denpasar', '', 1, 'sidi.denpasarkota.go.id', '1.', '0', '', '031401', '031401', 'aktif', '-', 'adm', '2019-04-29 11:01:36'),
(18, 'SIFA/Fixed Asset (Sistem Informasi Fixed Asset)', 1, 2, 'Membantu mebuat proyeksi dan perhitungan penyusutan aset.', '', 4, '', '1.', '0', '', '300001', '300001', 'aktif', '-', 'adm', '2019-04-29 11:10:02'),
(19, 'SIGAPE (Sistem Informasi Gaji dan Pegawai)', 1, 2, 'Membantu pengelolaan data administrasi pegawai dan gaji.', '', 4, '', '1.', '0', '', '300001', '300001', 'aktif', '-', 'adm', '2019-04-29 11:10:30'),
(20, 'SIHA (sistem informasi HIV dan AIDS)', 1, 1, 'Untuk mendapatkan analisa dan validasi data program HIV/AIDS dan PIMS.', '', 1, 'www.siha.depkes.go.id', '1.', '0', '', '030201', '030201', 'aktif', '-', 'adm', '2019-03-28 14:42:51'),
(21, 'SIJALAK (Sistem Informasi Jalan Kota)', 1, 2, 'Tersedianya peta dan database jalan di Kota Denpasar.', '', 1, 'damamandala.denpasarkota.go.id', '1.', '0', '', '030301', '030301', 'aktif', '-', 'adm', '2019-04-29 10:53:06'),
(22, 'SIKDA Generik', 1, 1, 'Melaporkan data kesehatan ke kemkes RI.', '', 1, '', '1.', '0', '', '030201', '030201', 'aktif', '-', 'adm', '2019-03-28 14:47:35'),
(23, 'SIKEKAL (Sistem Informasi Desa Kesiman Kertalangu)', 1, 1, 'Mengolah data, mencatat dan melayani', '', 1, 'http://kertalangu.simade.co.id', '1.', '0', '', '170001', '170001', 'aktif', '-', 'adm', '2019-03-28 14:49:02'),
(24, 'SIKS-ng', 1, 1, 'Sistemuntuk pengumpulan, pengolahan, penyajian, dan penyimpanan data kesejahteraan sosial yang dilaksanakan secara berjenjang dan berkesinambungan.', '', 1, 'siks.kemsos.go.id', '1.', '0', '', '300004', '300004', 'aktif', '-', 'adm', '2019-03-28 14:50:26'),
(25, 'SIM HP (sistem Informasi Manajemen Hasil Pemeriksa)', 1, 2, 'Mengolah, menyimpan dan menginventarisir temuan pemeriksaan', '', 3, '', '1.', '0', '', '040101', '040101', 'aktif', '-', 'adm', '2019-04-29 11:05:23'),
(26, 'SIM PBB', 1, 2, 'Mengelola data wajib pajak bumi dan bangunan', '', 3, '', '1.', '0', '', '031601', '031601', 'aktif', '-', 'adm', '2019-04-29 10:29:04'),
(27, 'SIM Perijinan', 1, 2, 'Mengelola proses pelayanan perijinan secara elektronik.', '', 1, 'https://pelayanan.denpasarkota.go.id/portal/', '1.', 'Aplikasi  SIM Perijinan.jpg', '-', '140018', '140018', 'aktif', '-', 'adminapps', '2020-09-04 09:44:59'),
(28, 'SIMADE (Sistem Informasi Kelurahan Dangin Puri)', 1, 2, 'Mengolah data, mencatat dan melayani', '', 1, 'http://dangri.simade.co.id/', '1.', '0', '', '170001', '170001', 'aktif', '-', 'adm', '2019-04-29 11:05:40'),
(29, 'SIMADE (Sistem Informasi Kelurahan Sumerta)', 1, 2, 'Mengolah data, mencatat dan melayani.', '', 1, 'http://sumerta.simade.co.id/', '1.', '0', '', '170001', '170001', 'aktif', '-', 'adm', '2019-04-29 11:05:55'),
(30, 'SIMADE (Sistem Pemantauan Krama Bendega)', 1, 2, 'Memberikan informasi kepada pihak terkait untuk meningkatkan tingkat keselamatan nelayan saat pergi melaut.', '', 1, 'smartcity.denpasarkota.go.id/nelayan', '1.', '0', '', '031101', '031101', 'aktif', '-', 'adm', '2019-04-29 11:00:42'),
(31, 'SIMADU (Sistem Kesiman Terpadu)', 1, 2, 'Mengolah data, mencatat dan melayani.', '', 1, 'http://kesiman.simade.co.id/', '1.', '0', '', '170001', '170001', 'aktif', '-', 'adm', '2019-04-29 11:06:17'),
(32, 'SIMDA Barang', 1, 1, 'Pengelolaan data aset pemerintah daerah.', '', 3, '', '1.', '0', '', '300005', '000000', 'aktif', '-', 'adm', '2019-03-29 08:19:30'),
(33, 'SIMFONI PPA (Sistem Informasi Online Perlindungan Perempuan dan Anak)', 1, 1, 'Mencatat, mengolah, menyimpan, dan mengirim laporan kasus kekerasan perempuan dan anak langsung ke Kementrian PPPA.', '', 1, 'www.kekerasan.kemempan.go.id', '1.', '0', '', '040901', '040901', 'aktif', '-', 'adm', '2019-03-29 08:21:02'),
(34, 'SIMPADA PARKIR', 1, 2, 'Mengelola data wajib pajak parkir.', '', 3, '', '1.', '0', '', '031601', '031601', 'aktif', '-', 'adm', '2019-04-29 10:29:20'),
(35, 'SIMPADA PHR', 1, 2, 'Mengelola data wajib pajak hotel, restoran dan hiburan.', '', 3, '', '1.', '0', '', '031601', '031601', 'aktif', '-', 'adm', '2019-04-29 10:29:36'),
(36, 'SIMPADA Reklame', 1, 2, 'Mengelola data wajib pajak reklame.', '', 3, '', '1.', '0', '', '031601', '031601', 'aktif', '-', 'adm', '2019-04-29 10:30:01'),
(37, 'SIMPATI (Sistem informasi Denpasar Timur)', 1, 2, 'Mengolah data, mencatat dan melayani.', '', 1, 'http://dentim.simade.co.id/', '1.', '0', '', '170001', '170001', 'aktif', '-', 'adm', '2019-04-29 11:06:39'),
(38, 'Simpeg PTT', 1, 1, 'Administrasi PTT kemkes untuk perpanjangan penempatan dan pengangkatan kembali', '', 1, 'https://simpeg.kemkes.go.id/', 'simpeg.png', '1', '', '030201', '030201', 'aktif', '-', 'adm', '2019-05-16 09:07:41'),
(39, 'SIMPEL (Sistem Informasi Pelayanan Pelanggan)', 1, 2, 'Membantu pengelolaan data pengaduan pelanggan serta tindak lanjut penangananya.', '', 4, '', '1.', '0', '', '300001', '300001', 'aktif', '-', 'adm', '2019-04-29 11:10:49'),
(40, 'Simponi', 1, 1, 'Membuat kode jenis setoran billing non anggaran menjadi billing penerimaan negara lainnya.', '', 1, 'simponi.kemenkeu.go.id', '1.', '0', '', '300004', '300004', 'aktif', '-', 'adm', '2019-03-29 08:32:46'),
(41, 'Simponi Denpasar', 2, 2, 'Monitoring (pengawasan) dan evaluasi Koperasi Simpan Pinjam, Usaha Kecil dan Menengah Seluruh Kota Denpasar', '', 1, 'http://simponi.denpasarkota.go.id', '1.', '0', '', '031501', '031501', 'aktif', '-', 'adm', '2019-10-14 14:57:21'),
(42, 'SINGGAN (Sistem Informasi Pelanggan)', 1, 2, 'Membantu melaksanakan kegiatan admistrasi yang berakitan degan data calon pelanggan dan pelanggan.', '', 4, '', '1.', '0', '', '300001', '300001', 'aktif', '-', 'adm', '2019-04-29 11:11:15'),
(43, 'SINGGAR (Sistem Informasi Anggaran)', 1, 2, 'Membantu pengelolaan anggaran dan realisasinya.', '', 4, '', '1.', '0', '', '300001', '300001', 'aktif', '-', 'adm', '2019-04-29 11:11:29'),
(44, 'SINTORY (Sistem Informasi Inventory)', 1, 2, 'Membantu administrasi barang inventory gudang dan inventarisasi aset.', '', 4, '', '1.', '0', '', '300001', '300001', 'aktif', '-', 'adm', '2019-04-29 11:11:45'),
(45, 'SIPD (Sistem Informasi Pembangunan Daerah)', 1, 1, 'Penyediaan data dan informasi.', '', 1, 'sipd.kemendagri.go.id', '1.', '0', '', '040201', '000000', 'aktif', '-', 'adm', '2019-03-29 08:40:29'),
(46, 'SIPENA (Sistem Informasi Penatih)', 1, 2, 'Mengolah data, mencatat dan melayani.', '', 1, 'http://penatih.simade.co.id/', '1.', '0', '', '170001', '170001', 'aktif', '-', 'adm', '2019-04-29 11:06:54'),
(47, 'SIPKD Keuangan', 1, 1, 'Mengolah, mencatat, dan menyimpan data keuangan OPD.', '', 1, '', '1.', '0', '', '300005', '000000', 'aktif', '-', 'adm', '2019-03-29 08:43:48'),
(48, 'SIRAB (Sistem informasi rencana anggaran biaya)', 1, 2, 'Membantu melaksanakan kegiatan administrasi RAB Sambungan Rumah (SR)', '', 4, '', '1.', '0', '', '300001', '300001', 'aktif', '-', 'adm', '2019-04-29 11:12:01'),
(49, 'SIRAWAT (Sistem Informasi Perawatan)', 1, 2, 'Membantu melaksanakan kegiatan administrasi yang berkaitan dengan pelaksanaan pemasangan SR, Penyambungan kembali, rekonstruksi, pemindahan lokasi WM, Perubahan inci WM, Pergantian WM, Segel, Pencabutan dan pembaruan WM', '', 4, '', '1.', '0', '', '300001', '300001', 'aktif', '-', 'adm', '2019-04-29 11:12:20'),
(50, 'SIREKON (Sistem Rekomendasi Online)', 1, 2, 'SIREKON berfungsi untuk mempermudah pelayanan dalam mengurus surat rekomendasi ijin penelitian kepada masyarakat kota Denpasar secara online.', '', 1, 'sirekon.denpasarkota.go.id', '1.', '0', '-', '040601', '040601', 'aktif', '-', 'adminapps', '2020-11-09 09:44:07'),
(51, 'SIRUP', 1, 1, 'Sarana/ alat untuk mengumumkan rencana umum pengadaan.', '', 1, 'http://sirup.lkpp.go.id/sirup', '1.', 'Aplikasi  SIRUP.jpg', '', '012001', '000000', 'aktif', '-', 'adm', '2019-03-29 08:54:43'),
(52, 'SISKA (Sistem Informasi Keuangan)', 1, 2, 'Membantu operasional pelayanan pembayaran rekening air dan non air serta membuat laporan laporan guna kepentingan manajemen', '', 4, '', '1.', '0', '', '300001', '300001', 'aktif', '-', 'adm', '2019-04-29 11:12:37'),
(53, 'Bed Management', 1, 2, 'Mencatat dan memonitoring status ketersediaan dan penggunaan tempat tidur di RSUD Wangaya', '', 1, 'www.wangayahospital.com', '1.', '0', '', '041001', '041001', 'aktif', '-', 'adm', '2019-04-29 11:14:25'),
(54, 'BILLING (Sistem Informasi Billing)', 1, 2, 'Membantu operasional pembacaan meter air sampai dengan rekening air tersebut bisa dibayar serta membuat laporan laporan guna kepentingan manajemen', '', 1, '', '1.', '0', '', '300001', '300001', 'aktif', '-', 'adm', '2019-04-29 11:12:55'),
(55, 'Bima Sakti', 1, 2, 'Membaca, menghitung pemakaian air tanah', '', 1, '', '1.', '0', '', '031601', '031601', 'aktif', '-', 'adm', '2019-04-29 10:30:19'),
(56, 'Bursa Kerja Online', 1, 2, 'BKO secara umum difungsikan sebagai fasilitas untuk lebih mendekatkan fungsi layanan ketenagakerjaan kepada masyarakat agar diperuntukan sebagai sarana/penyediaan ruang atau fasilitator bagi masyarakat pencari kerja dengan perusahaan penyedia kerja dalam hal berinteraksi, berkomunikasi dan memperoleh informasi yang terkait dengan informasi pasar kerja dan kegiatan ketenagakerjaan.', '', 1, 'http://bursakerja.denpasarkota.go.id/', '1.', '0', '-', '030901', '030901', 'aktif', '-', 'adminapps', '2020-11-09 09:42:26'),
(57, 'siskohatkes (sistem informasi dan komputerisasi haji)', 1, 1, 'mendata calon jemaah haji\r\n', '', 1, 'http://siskohatkes.kemkes.go.id', '1.', '0', '-', '030201', '030201', 'aktif', '-', 'adminapps', '2021-06-09 11:28:49'),
(58, 'Sismadak', 1, 2, 'Sebagai sarana untuk menyimpan dan mencari kembali dokumen berdasarkan elemen penilaian yang berhubungan dengan akreditasi rumah sakit\r\n', '', 1, '', '1.', '0', '', '041001', '041001', 'aktif', '-', 'adm', '2019-04-29 11:14:40'),
(59, 'Sistem Denda Piutang', 1, 2, 'Mengelola piutang dan denda retribusi\r\n', '', 1, 'perijinan.denpasarkota.go.id/dendapiutang', '1.', '0', '', '140018', '140018', 'aktif', '-', 'adm', '2019-04-29 10:53:44'),
(60, 'Sistem Informasi Coorporate Social Responsibilities (CSR)', 1, 2, 'Mengelola informasi data CSR\r\n', '', 1, 'http://csrkotadenpasar.com/', '1.', '0', '', '013401', '013401', 'aktif', '-', 'adm', '2019-04-29 10:36:24'),
(61, 'Sistem Informasi Graha Sewaka Dharma (Dashboard Internal Denpasar) / SIMPARSA', 1, 2, 'Sebagai media informasi untuk permohonan peminjaman Gedung atau ruang rapat yang ada di Kota Denpasar, Peminjaman sound system, Peminjaman Videotron yang dimiliki oleh pemerintah Kota Denpasar.', 'Belum ada', 1, 'https://sipoint.denpasarkota.go.id/simparsa/', 'group-icon.png', 'dashboard internal.jpg', '', '030801', '030801', 'aktif', '2015', 'DKIS', '2020-07-20 13:21:08'),
(62, 'Sistem Informasi Manajemen Gaji (SIMGAJI)', 1, 2, 'Untuk menyajikan informasi gaji PNSD dan untuk mengolah mencatat dan menyimpan data PNSD.\r\n', '', 1, '192.100.100.93', '1.', '0', '', '300005', '300005', 'aktif', '-', 'adm', '2019-04-29 10:33:41'),
(63, 'SISTEM INFORMASI TAGIHAN REKENING AIR MINUM', 2, 2, 'Membantu mendapatkan infomasi mengenai tagihan rekening air minum\r\n', '', 4, '', '1.', '0', '', '300001', '300001', 'aktif', '-', 'adm', '2019-04-29 11:13:20'),
(64, 'Sistem Manajemen Informasi Program Keluarga Harapan (PHK) Online', 1, 1, 'Pemutakhiran Data Keluarga Penerima Manfaat (KPM) Program Keluarga Harapan (PKH) meliputi perubahaan komponen dari ibu hamil ke nifas, anak balita ke prasekolah, anak sd ke smp, kemudian sma/smk, lansia dan disabilitas berat yang menentukan masih berhak atau tidak KPM tersebut mendapatkan bantuan PKH, Perubahan status KPM, Perubahan data KPM seperti data KYC (knowing your customer), penginputan data pendidikan dan fasilitas kesehatan yang digunakan masing masing anggota rumah tangga setiap KPM dalam hadir disekolah dan rutin periksa ke fasilitas kesehatan\r\n', '', 4, '192.168.100.225', '1.', '0', '', '300004', '300004', 'aktif', '-', 'adm', '2019-03-31 10:25:44'),
(65, 'Sistem Monitoring Pengendalian Pelaksanaan Penanaman Modal', 1, 2, 'Pengelolaan Data pelaku Usaha PMDN dan PMA\r\n', '', 1, 'pelayanan.denpasarkota.go.id/dalak', '1.', '0', '', '140018', '140018', 'aktif', '-', 'adm', '2019-04-29 10:54:11'),
(66, 'Sistem Pencatatan Transaksi', 1, 2, 'Mengelola transaksi pembayaran berbasis Acrual\r\n', '', 1, 'perijinan.denpasarkota.go.id/piutang', '1.', '0', '', '140018', '140018', 'aktif', '-', 'adm', '2019-04-29 10:54:28'),
(67, 'Sistem Pengelolaan Barang Habis Pakai', 1, 2, '-', '', 4, '', '1.', '0', '', '030801', '030801', 'naktif', '2015', 'DKIS', '2020-07-20 13:22:24'),
(68, 'Sistem Pengukur Ketinggian Air', 1, 2, 'Memberi informasi ketinggian air sungai\r\n', '', 1, 'localhost/deteksi.banjir/index.php', '1.', '0', '', '040801', '040801', 'aktif', '-', 'adm', '2019-04-29 10:28:31'),
(69, 'SITT (sistem informasi tubercolosis terpadu)', 1, 1, 'Untuk merekap penerimaan kasus baru, konversi, kesembuhan, DO, meninggal, pindah, gagal pasien TB dan PX TB -HIV\r\n', '', 1, 'sitt.kemkes.go.id', '1.', '0', '', '030201', '030201', 'aktif', '-', 'adm', '2019-03-31 10:33:47'),
(70, 'SLRT', 1, 1, 'Membantu mengidentifikasi kebutuhan masyarakat miskin dan rentan miskin, kemudian menghubungkan mereka dengan program dan layanan yang dikelola oleh pemerintah (Pusat, Provinsi dan Kabupaten/Kota) dan non Pemerintah sesuai dengan kebutuhan mereka. SLRT juga membantu mengidentifikasi keluhan masyarakat miskin dan rentan miskin, melakukan rujukan, dan memantau penanganan keluhan untuk memastikan keluhan-keluhan tsb ditangani dengan baik.\r\n', '', 1, 'http://slrt.kemsos.go.id/v2/webslrt/login', '1.', '0', '', '300004', '300004', 'naktif', '-', 'adm', '2019-03-31 10:34:56'),
(71, 'Aplikasi Kegawatdaruratan 112', 1, 2, 'Aplikasi Kegawatdaruratan 112 berfungsi sebagai layanan panggilan kegawatdaruratan', '', 1, 'http://182.253.196.220/com/dashboard/auth', 'gambar 1121.jpg', 'aplikasi call 112.jpg', '', '030801', '040801', 'aktif', '2018', 'adm', '2019-09-26 08:54:07'),
(72, 'Damakesmas', 1, 2, 'Aplikasi Pelayanan Kesehatan terhadap pasien dan masyarakat khususnya di Kota Denpasar.\r\nMelayani tindak kegawat daruratan dan jadwal pelayanan puskesmas Gratis.', 'SK Kebijakan Damakesmas.pdf', 1, 'https://damakesmas.denpasarkota.go.id/', '1.', 'WhatsApp Image 2020-07-21 at 20.45.30 (1).jpeg', '-', '030801', '030201', 'aktif', '2017', 'adminapps', '2020-11-09 09:26:40'),
(73, 'e-Kinerja', 2, 2, 'Sebuah aplikasi untuk mendukung kegiatan harian pegawai dilingkungan Pemerintah Kota Denpasar seperti dalam hal absensi, menginput sasaran kegiatan pegawai, menginput kegiatan harian, melihat informasi tunjangan kinerja pewagai dan lain-lainnya.', '', 1, 'https://ekinerja.denpasarkota.go.id/', '1.', 'ekinerja.jpeg', '', '030801', '000000', 'aktif', '2016', 'veriandriawan', '2020-08-10 12:15:28'),
(74, 'TNDE (Tata Naskah Dinas Elektronik)', 1, 2, 'TNDE merupakan aplikasi yang memudahkan dalam memanage segeala surat-surat, baik surat masuk maupun surat keluar.', '', 1, 'https://tnde.denpasarkota.go.id/', 'tnde.png', 'tnde.jpeg', '', '030801', '030801', 'aktif', '2020', 'veriandriawan', '2020-08-10 12:22:58'),
(75, 'SIPENJAR', 1, 2, 'Aplikasi yang dibuat untuk media pengaduan jaringan di lingkungan pemeritah Kota Denpasar.', '', 1, 'http://infrastruktur.denpasarkota.go.id/index.php/', '1.', 'sipenjar.jpg', '', '030801', '030801', 'aktif', '2017', 'veriandriawan', '2020-08-06 14:07:05'),
(76, 'PPID', 2, 2, 'Website PPID berfungsi sebagai media untuk memperluas akses bagi masyarakat dalam mendapatkan informasi terkait pembangunan dan segala informasi tentang Kota Denpasar.', 'perwali_denpasar_ppid.pdf', 1, 'https://ppid.denpasarkota.go.id/', '1.', 'WhatsApp Image 2020-07-21 at 20.45.28 (2).jpeg', '030801', '030801', '000000', 'aktif', '2017', 'adminapps', '2020-11-09 09:27:48'),
(77, 'Simonev (Karma Simanis)', 2, 2, 'Karma SiManis ( Sewaka Dharma Sistem Monitoring Administrasi Pembangunan )\r\ndigunakan untuk memonitor realisasi pelaksanaan pembangunan sesuai dengan terget baik realisasi fisik dan keuangan serta didukung data bukti dokumentasi\r\n', '', 1, 'https://simonev.denpasarkota.go.id/', '1.', '0', '', '030801', '000000', 'aktif', '2018', 'anggita', '2020-08-13 09:13:18'),
(78, 'Portal Disabilitas (Diaspora)', 1, 2, 'Dalam rangka analisis, perancangan dan pengembangan portal disabilitas dalam bentuk website, yang diperuntukan terutama bagi kelompok masyarakat penyandang cacat (disabilitas), dalam hal mengakses informasi publik terutama yang berhubungan dengan disabilitas, lokasi ramah disabilitas, relawan dan bantuan kepada disabilitas serta menjadi satu informasi dan komunikasi peluang kerja dengan masyarakat pengguna jasa keahlian penyandang cacat, perusahaan serta pemerintah.', '', 1, 'http://diaspora.denpasarkota.go.id/', '1.', 'WhatsApp Image 2020-07-21 at 20.45.30.jpeg', '', '030801', '300004', 'aktif', '2018', 'veriandriawan', '2020-06-23 10:41:09'),
(79, 'Website Disdikpora Kota Denpasar', 1, 2, 'Memberikan informasi kegiatan pendidikan kepada masyarakat\r\n', '', 1, 'http://www.pendidikan.denpasarkota.go.id', '1.', '0', '', '030101', '030101', 'aktif', '-', 'adm', '2019-04-29 10:55:23'),
(80, 'Website Bus Sekolah', 2, 2, 'Digunakan untuk memantau posisi bus dan rute bus sekolah\r\n', '', 3, '', '1.', '0', '', '030701', '030701', 'aktif', '-', 'adm', '2019-04-29 10:57:49'),
(81, 'web PPTM ', 1, 1, 'penyebar luasan informasi PTM\r\n', '', 1, 'www.p2ptm.kemkes.go.id', '1.', '0', '', '030201', '030201', 'aktif', '-', 'adm', '2019-03-31 10:49:50'),
(82, 'WEB GIS', 1, 2, 'Mengelola, mencatat, menyimpan dan laporan tanah\r\n', '', 4, '', '1.', '0', '', '300005', '300005', 'naktif', '-', 'adm', '2019-04-29 10:34:01'),
(83, 'Smart Arsip', 2, 2, 'Mengolah, mencatat, mendistribusikan, dan menyimpan data arsip surat\r\n', '', 1, 'smartarsip.denpasarkota.go.id', '1.', '0', '', '040701', '040701', 'aktif', '-', 'adminapps', '2020-08-13 10:40:09'),
(84, 'Smart Parkir (Sistem Parkir Berbasis IT Dan Keuangan Terintegrasi)', 1, 2, 'Meningkatkan layanan  parkir,serta memberikan/ menampilkan laporan keuangan yang transparan dan akuntabel\r\n', '', 4, '', '1.', '0', '', '300002', '300002', 'aktif', '-', 'adm', '2019-04-29 11:07:42'),
(85, 'SMS Gateway', 1, 2, 'Memberikan informasi terkait pajak hotel, restoran dan hiburan\r\n', '', 1, '', '1.', '0', '', '031601', '031601', 'aktif', '-', 'adm', '2019-04-29 10:31:06'),
(86, 'SMS Gateway', 1, 2, 'Automasi pengiriman info perijinan via sms\r\n', '', 4, '', '1.', '0', '', '140018', '140018', 'aktif', '-', 'adm', '2019-04-29 10:54:53'),
(87, 'SMS Gateway', 1, 2, 'Mencatat dan meneruskan pesan teks pada pendaftaran pasien dan permintaan informasi biaya perawatan pasien via sms\r\n', '', 4, '', '1.', '0', '', '041001', '041001', 'aktif', '-', 'adm', '2019-04-29 11:15:03'),
(88, 'software imuniasasi', 1, 1, 'Untuk memudahkan dan mengetahui cakupan dengan cepat disertai grafik\r\n', '', 4, '', '1.', '0', '', '030201', '030201', 'naktif', '-', 'adm', '2019-03-31 10:58:26'),
(89, 'SPSE (Sistem Pengadaan Secara Elektronik)', 1, 1, 'Untuk melakukan proses pelelangan pengadaan barang/ jasa\r\n', '', 4, 'www.eproc.denpasarkota.go.id', '1.', '0', '', '013301', '000000', 'aktif', '-', 'adminapps', '2020-08-03 12:50:41'),
(90, 'Sse Pajak', 1, 1, 'Membuat kode e-billing dalam keperluan pembayaran pajak\r\n', '', 4, 'https://sse3.pajak.go.id/', '1.', '0', '', '300004', '300004', 'aktif', '-', 'adm', '2019-03-31 11:00:44'),
(91, 'Telkom SIAP PPDB Online', 1, 1, 'Mengolah penerimaan peserta didik baru\r\n', '', 4, 'www.siap-ppdb.com', '1.', '0', '', '030101', '030101', 'aktif', '-', 'adm', '2019-03-31 11:01:51'),
(92, 'TEPRA', 1, 1, 'Untuk menginformasikan kemajuan fisik dan keuangan pelaksanaan APBD setiap bulannya\r\n', '', 4, 'monev.lkpp.go.id', '1.', '0', '', '012001', '012001', 'aktif', '-', 'adm', '2019-03-31 11:03:19'),
(93, 'UKM Binaan Dinas Koperasi Kota Denpasar', 1, 2, 'Mencatat data UMKM by name by address\r\n', '', 1, 'http://ukmdiskop.denpasarkota.go.id/', '1.', '0', '', '031501', '031501', 'aktif', '-', 'adm', '2019-04-29 10:50:55'),
(94, 'VMS APP', 1, 2, 'Untuk mengupload informasi multi media berbentuk text dan gambar/logo di VMS\r\n', '', 3, '', '1.', '0', '', '030701', '030701', 'aktif', '-', 'adm', '2019-04-29 10:58:07'),
(95, 'Warning Receiver System BMKG', 1, 1, 'Memberikan informasi gempa bumi BMKG\r\n', '', 1, 'url:file://D/Data/Wrsdient, psn/web/inatews/indet.html', '1.', '0', '', '040801', '040801', 'naktif', '-', 'adm', '2019-03-31 11:07:19'),
(96, 'Cyberschool Kota Denpasar', 1, 2, 'Memberikan informasi pendidikan kepada masyarakat, menampilkan vidio Edukasi', '', 1, 'http://www.cyberschooldps.net', '1.', '0', '', '030101', '030101', 'aktif', '-', 'adm', '2019-04-29 10:55:50'),
(97, 'Data Perijinan dan Rekomendasi Medis', 1, 1, 'SIM Perijinan bertandatangan digital, pengelolaan pelayanan perijian bertandatangan digital khusus tenaga praktek kesehatan', '', 1, 'pelayanan.denpasarkota.go.id', '1.', '0', '', '140018', '140018', 'aktif', '-', 'adm', '2019-04-22 08:58:04'),
(98, 'Data Pokok Pendidikan Anak Usia Dini dan Pendidikan Masyarakat', 1, 1, 'Untuk pemetaan data seluruh lembaga pendidikan PAUD dan PM, Untuk megeluarkan NISN, Untuk alokasi bantuan sarana dan prasarana bagi sekolah yang fasilitasnya belum memadai', '', 1, 'http://www.dapo.paud-dikmas.kemdikbud.go.id', '1.', '0', '', '030101', '030101', 'aktif', '-', 'adm', '2019-04-01 08:05:13'),
(99, 'Data Pokok Pendidikan Dasar dan Menengah', 1, 1, 'Untuk pemetaan data seluruh lembaga pendidikan SD dan SMP, Untuk mengeluarkan NISN, Untuk alokasi bantuan sarana dan prasarana bagi sekolah yang fasilitasnya belum memadai', '', 1, 'www.dapo.dikdasmen.kemdikbud.go.id', '1.', '0', '', '030101', '030101', 'aktif', '-', 'adm', '2019-04-01 08:06:14'),
(100, 'Denpasar Plan', 1, 2, 'Penyedia Data Pembangunan Kota Denpasar', '', 1, 'http://32.32.32.4', '1.', '0', '', '031601', '000000', 'aktif', '-', 'adm', '2019-04-29 10:31:31'),
(101, 'DETEKTOR STATISTIK', 1, 2, 'Untuk menampilkan volume kendaraan di persimpangan', '', 1, '', '1.', '0', '', '030701', '030701', 'aktif', '-', 'adm', '2019-04-29 10:58:27'),
(102, 'DIGITAL WALLDISPLAY', 1, 2, 'Untuk menampilkan video arus lalin di persimpangan', '', 1, '', '1.', '0', '', '030701', '030701', 'aktif', '-', 'adm', '2019-04-29 10:58:50'),
(103, 'DIGITAL WALLMAP', 1, 2, 'Untuk Menampilkan Peta Traffic Light dan Kondisi perangkat di lapangan', '', 1, '', '1.', '0', '', '030701', '030701', 'aktif', '-', 'adm', '2019-04-29 10:59:15'),
(104, 'e monev stbm (sanitasi total berbasis masyarakat)', 1, 1, 'monitoring hasil monev yang diinput oleh puskesmas', '', 1, 'stbm.org.indonesia.go.id', '1.', '0', '', '030201', '030201', 'naktif', '-', 'adm', '2019-04-01 08:11:53'),
(105, 'e-BPHTB', 1, 2, 'Mengelola data wajib pajak PBPHTP', '', 1, 'e-pajak.denpasarkota.go.id', '1.', '0', '', '031601', '031601', 'aktif', '-', 'adm', '2019-04-29 10:31:59'),
(106, 'eCommerce', 1, 2, 'Membantu IKM dalam mempromosikan produknya melalui media digital (website Kota Denpasar)', '', 1, 'balidenpasartrading.com', '1.', '0', '', '031401', '031401', 'aktif', '-', 'adm', '2019-04-29 11:01:54'),
(107, 'E-Form Hortikultura', 1, 1, 'Menginput data Horti Bulanan, Triwulan', '', 1, '', '1.', '0', '', '031001', '031001', 'aktif', '-', 'adm', '2019-04-29 11:03:57'),
(108, 'EMR', 1, 2, 'Mengintegrasikan data dari berbagai sumber, mengumpulkan data pada titik pelayanan, mencatat histori rekam medis pasien, mendukung pemberi pelayanan dalam pengambilan keputusan', '', 1, '', '1.', '0', '', '041001', '041001', 'aktif', '-', 'adm', '2019-04-29 11:15:18'),
(109, 'E-Renggar', 1, 1, 'Perencanaan dan Informasi Kinerja Anggaran untuk DAK fisik dan non fisik', '', 1, 'http://e-renggar.kemkes.go.id/index.php/', '1.', '0', '', '030201', '030201', 'aktif', '-', 'adm', '2019-04-01 08:19:20'),
(110, 'e-RTLH (ertlh.denpasarkota.go.id)', 2, 2, 'Mempermudah informasi bantuan social bagi masyarakat kurang mampu di Kota Denpasar terkait bedah rumah.', '', 1, 'https://ertlh.denpasarkota.go.id/', '1.', '0', '-', '030401', '030401', 'aktif', '2017', 'adminapps', '2020-11-09 09:29:51'),
(111, 'e-SAKIP REVIEW (Sistem Akuntabilitas Kinerja Instansi Pemerintah)', 1, 1, 'e-SAKIP REVIU adalah sistem aplikasi yang dibangun oleh Kementerian Pendayagunaan Aparatur Negara dan Reformasi Birokrasi sebagai upaya peningkatan kualitas pelaksanaan akuntabilitas kinerja di lingkungan instansi pemerintah untuk meningkatkan efektivitas dan efisiensi penggunaan anggaran.\r\nSistem ini bertujuan sebagai sarana pembinaan interaktif pelaksanaan Akuntabilitas kerja instansi pemerintah dan sarana penyampaian laporan kinerja secara online.', '', 1, 'www.esr.menpan.go.id', '1.', '0', '', '040201', '000000', 'aktif', '-', 'adm', '2019-04-22 15:17:46'),
(112, 'Website e-Sewaka Dharma', 1, 2, 'Mempermudah manajemen data administrasi Desa/Kelurahan, mempercepat pelayanan kepada masyararakat yang membutuhkan administrasi Desa/Kelurahan, serta memudahkan pelaporan untuk mengetahui kondisi terkini dari data administrasi Desa/Kelurahan..\r\n\r\nAplikasi e-Sewaka Dharma bertujuan untuk mendekatkan pelayanan Desa/Kelurahan serta mengoptimalkan peran Kepala Lingkungan/Kepala Dusun dalam melayani masyarakat.', '', 1, 'https://esewakadharma.denpasarkota.go.id/', 'logo-sewaka-dharma.png', 'WhatsApp Image 2020-07-21 at 20.45.15.jpeg', '', '030801', '100000', 'aktif', '2017', 'veriandriawan', '2020-07-29 08:46:15'),
(113, 'e-SPTPD', 1, 2, 'Pelaporan pajak hotel , restoran dan hiburan secara online', '', 1, 'e-pajak.denpasarkota.go.id/esptpd', '1.', '0', '', '031601', '031601', 'aktif', '-', 'adm', '2019-04-29 10:32:31'),
(114, 'Ewars', 1, 1, 'Untuk laporan mingguan kewaspadaan dini penyakit', '', 1, 'http://skdr.surveilans.org', '1.', '0', '-', '030201', '030201', 'aktif', '-', 'adminapps', '2021-06-09 11:21:45'),
(115, 'G Sinjab', 1, 1, 'Menginput data Analisis Jabatan dan Analisis beban keja dari perangkat daerah/ unit', '', 1, '', '1.', '0', '', '011301', '000000', 'aktif', '-', 'adm', '2019-04-29 10:37:15'),
(116, 'Geo Portal', 1, 2, 'Sebagai sarana berbagi pakai data/informasi geo spasial', '', 1, 'geoportal.denpasarkota.go.id', '1.', '0', '', '031601', '000000', 'aktif', '-', 'adm', '2019-04-01 08:40:32'),
(117, 'GL (General Ledger)', 1, 2, 'Membantu pengelolaan data akutansi dan keuangan', '', 1, '', '1.', '0', '', '300001', '300001', 'aktif', '-', 'adm', '2019-04-29 11:13:42'),
(118, 'Harga Pasar', 1, 2, 'Memberikan informasi harga terkait kebutuhan pokok pada pasar-pasar di Kota Denpasar', '', 1, 'hargapasar.denpasarkota.go.id', '1.', 'Aplikasi  Harga Pasar.jpg', '', '031401', '031401', 'aktif', '-', 'adm', '2019-04-29 11:03:17'),
(119, 'infopasar.Denpasarkota.go.id', 1, 2, 'Memberikan informasi harga kebutuhan bahan pokok makanan kepada masyarakat', '', 1, '', '1.', '0', '', '300003', '300003', 'aktif', '-', 'adm', '2019-04-29 11:08:05'),
(120, 'InventorX', 1, 1, 'Penatausahaan barang persediaan ', '', 1, 'http://192.166.172.2', '1.', '0', '', '300005', '000000', 'naktif', '-', 'adm', '2019-04-01 08:44:36'),
(121, 'Jaringan Dokumentasi Informasi Hukum (JDIH)', 1, 1, 'sebagai bentuk layanan penyediaan Informasi Hukum khususnya kepada masyarakat kota Denpasar dan seluruh rakyat Indonesia pada umumnya.', '', 1, 'http://jdih.denpasarkota.go.id/', '1.', 'Aplikasi  JDIH.jpg', '', '011201', '011201', 'aktif', '-', 'adm', '2019-04-29 10:35:54'),
(122, 'Komdat Siknas online', 1, 1, 'melaporkan sarana prasarana di puskesmas, data bulanan penyakit, KIA, gizi, imunisasi, data triwulan TB dan kesling, data tahunan (farmasi, imunisasi, penyakit, kesling, SDM kes, promkes, yankes RS, Sapras), laporan standar pelayanan minimal (SPM)', '', 1, 'www.komdat.kemkes.go.id', '1.', '0', '', '030201', '030201', 'aktif', '-', 'adm', '2019-04-01 08:46:41'),
(123, 'KRISNA (Kolaborasi Perencanaan dan Informasi Kinerja Anggaran)', 1, 1, 'Sebagai pengusulan Dana Alokasi Khusus (DAK)', '', 1, '', '1.', '0', '', '031601', '031601', 'aktif', '-', 'adm', '2019-04-01 08:47:43'),
(124, 'Lapor KDRT PA', 1, 1, 'Menerima, mencatat, mengolah, menyimpan, dan menindaklanjuti laporan kasus kekerasan perempuan dan anak', '', 1, 'https://kekerasan.kemenpppa.go.id/', '1.', '0', '-', '040901', '040901', 'aktif', '-', 'adminapps', '2021-07-06 09:37:37'),
(125, 'LIVE STREAMING ATCS', 2, 2, 'Untuk memantau arus lalin di persimpangan secara real - time', '', 1, 'atcs.denpasarkota.go.id', '1.', '0', '', '030701', '030701', 'aktif', '-', 'adm', '2019-04-29 10:59:34'),
(126, 'My Hospital X', 1, 2, 'Mencatat, mengolah, dan menyimpan serta mengintegrasikan data-data yang digunakan untuk kebutuhan accounting, HRD, Farmasi, Billing keperawatan, Aset. Inventory, sistem rekam medis', '', 1, '', '1.', '0', '', '041001', '041001', 'aktif', '-', 'adm', '2019-04-29 11:15:34'),
(138, 'Simonev (Narkoba)', 1, 2, 'Sat gas narkoba', '', 4, '', '1.', '0', '', '041101', '041101', 'naktif', '-', 'adminapps', '2020-08-03 13:06:38'),
(139, 'Sistem Antrian', 1, 2, 'Pengelolaan antrian pelayanan permohonan perijinan', '', 3, '', '1.', '0', '', '140018', '140018', 'aktif', '-', 'adm', '2019-04-18 08:08:31'),
(128, 'NOTIFIKASI', 1, 2, 'Untuk pemberitahuan informasi terkini', '', 1, '', '1.', '0', '', '030701', '030701', 'naktif', '-', 'adm', '2019-04-29 10:59:51'),
(129, 'NTPD 112 Denpasar', 1, 1, 'Menerima panggilan darurat', '', 1, 'https://202.146.132.go/index.php', '1.', '0', '', '040801', '040801', 'naktif', '-', 'adm', '2019-04-01 08:53:27'),
(130, 'Pelaporan e-monev katalog', 1, 1, 'untuk mengetahui kebutuhan obat semua faskes yang bekerja sama dengan bpas', '', 1, 'monevkatalogobat.kemkes.go.id', '1.', 'aplikasi Pelaporan e-monev katalog.jpg', '', '030201', '030201', 'aktif', '-', 'adm', '2019-04-01 08:54:14'),
(131, 'pelaporan e-monev kesling', 1, 1, 'untuk memonotoring laporane-monev', '', 1, 'www.kesling.kesmas.kemkes.go.id', '1.', '0', '', '030201', '030201', 'aktif', '-', 'adm', '2019-04-01 08:55:25'),
(132, 'Pelaporan Realisasi Pajak Daerah', 1, 2, 'Mengetahui realisasi pajak daerah secara realtime', '', 1, '', '1.', '0', '', '031601', '031601', 'aktif', '-', 'adm', '2019-04-29 10:33:15'),
(133, 'Pelaporan sipnap (sistem informasi narkotika dan psikotropika)', 1, 1, 'aplikasi yang digunakan untuk pengguna fasyankes untuk melaporkan pemakaian psiko dan narkotika', '', 1, 'http://sipnap.kemkes.go.id/', '1.', 'Aolikasi Pelaporan sipnap (sistem informasi narkotika dan psikotropika).jpg', '', '030201', '030201', 'aktif', '-', 'adm', '2019-04-18 10:20:17'),
(134, 'Sistem Distribusi Obat UPT Farmasi', 1, 2, '-', '', 4, '', '1.', '0', '', '030201', '030201', 'aktif', '-', 'adm', '2019-04-29 10:37:56'),
(135, 'Sistem Implementasi Terintegrasi versi 1,0 DLHK Kota Denpasar', 1, 2, 'Sistem pembuat dan pendataan tenaga kontrak di DLHK\r\n', '', 4, '', '1.', '0', '', '030501', '030501', 'naktif', '-', 'adm', '2019-04-29 11:35:10'),
(136, 'Siskeudes', 1, 1, 'Mengolah, mencatat, dan menyimpan data keuangan desa\r\n', '', 3, '', '1.', '0', '-', '040501', '100000', 'aktif', '-', 'adminapps', '2021-05-18 09:51:38'),
(137, 'NIK Koperasi', 1, 1, 'Untuk mendaftarkan koperasi binaan Kota Denpasar memperoleh sertifikat NIK Koperasi', '', 1, '', '1.', '0', '', '031501', '031501', 'aktif', '-', 'adm', '2019-04-16 09:44:13'),
(140, 'Website Subdomain (web OPD)', 2, 2, '-', '', 4, '', '1.', '0', '', '030801', '000000', 'aktif', '2012', 'veriandriawan', '2020-08-10 14:34:10'),
(141, 'Antrian Online MPP', 2, 2, 'Antrian online MPP berfungsi memudahkan masyarakat untuk melakukan antrian  terkait pengurusan SIM secara online', '', 4, 'http://antrianmpp.denpasarkota.go.id', '1.', '0', '', '030801', '000000', 'naktif', '2018', 'anggita', '2020-08-13 09:34:59'),
(142, 'Safe City', 2, 2, 'Safe City berfungsi sebagai sumber informasi mengenai  tingkat kerawanan, baik rawan bencana, kriminal, maupun kecelakaan suatu wilayah di Kota Denpasar.', '', 1, 'safecity.denpasarkota.go.id', '1.', 'WhatsApp Image 2020-07-21 at 20.45.26 (1).jpeg', '', '030801', '000000', 'aktif', '2017', 'anggita', '2020-08-13 09:45:04'),
(143, 'Simyandu', 2, 2, '-', '', 4, '', '1.', '0', '', '030801', '000000', 'naktif', '2015', 'veriandriawan', '2020-08-10 12:25:42'),
(144, 'Website Aksara Bali', 1, 2, 'Website Aksara Bali merupakan aplikasi website yang memuat konten informasi berita menggunakan Aksara Latin berbahasa Bali dan atau Aksara Bali. Aplikasi website ini mampu melakukan translasi Berita dari Aksara Latin berbahasa Bali menjadi Aksara bali dengan menggunakan standar font Bali Simbar. Terdapat juga fitur Multimedia yang memungkinkan pengguna aplikasi untuk belajar Mekidung dan Megending serta fitur untuk belajar menulis Aksara Bali dan Kamus. Aplikasi ini memberikan kemudahan kepada pengguna untuk membaca konten berita dalam bentuk tulisan Aksara Bali.', '', 1, 'https://aksarabali.denpasarkota.go.id', '1.', 'website aksara bali.jpg', '', '030801', '030801', 'aktif', '2015', 'veriandriawan', '2020-08-10 12:30:52'),
(145, 'PRO Denpasar Mobile Android', 2, 2, 'PRO Denpasar berfungsi sebagai alat bantu untuk melakukan monitoring dan verifikasi program pembangunan, serta pengaduan masyarakat di Kota Denpasar.', '', 2, 'https://play.google.com/store/apps/details?id=com.djinggamedia.denpasarsightseeing', 'logo-prodenpasar.png', 'WhatsApp Image 2020-07-21 at 20.45.28 (1).jpeg', '', '030801', '000000', 'aktif', '2016', 'adminapps', '2020-08-11 14:34:18'),
(146, 'SIDOK', 2, 2, 'Sistem Informasi Dokumen Kota Denpasar (Sidok) adalah aplikasi berbasis website yang digunakan untuk mengelola dokumen seperti presentasi, gambar, video dan surat-surat lainnya di seluruh Perangkat Daerah.', '', 1, 'https://sidok.denpasarkota.go.id/', '1.', 'WhatsApp Image 2020-07-21 at 20.45.26.jpeg', '', '030801', '000000', 'aktif', '2017', 'agungpriambada', '2020-08-14 09:31:28'),
(147, 'Software Aplikasi buku elektronik (e-Book Perpustakaan Kominfo)', 1, 2, 'Menyediakan informasi buku di Perpustakaan', '', 1, 'http://widyasastra.denpasarkota.go.id/', '1.', 'WhatsApp Image 2020-07-21 at 20.45.21.jpeg', '', '030801', '030801', 'aktif', '2016', 'anggita', '2020-08-13 10:34:16'),
(148, 'Rujukan Online (Dinas Kominfo)', 1, 2, '-', '', 1, 'http://rujukanonline.denpasarkota.go.id/', '1.', 'WhatsApp Image 2020-07-21 at 20.45.26 (2).jpeg', '', '030801', '030201', 'aktif', '2015', 'adminapps', '2020-07-22 13:12:39'),
(149, 'GPS Tracking', 1, 2, 'Aplikasi yang digunakan untuk memantau pergerakan dan memaksimalkan kinerja armada/kendaraan operasional Pemerintah Kota Denpasar.', '', 1, '', 'map-icon-silicon-beach-la-map-icon-1.png', '1', '', '030801', '030801', 'aktif', '2016', 'agungpriambada', '2020-08-14 09:39:21'),
(150, 'GIS Berbasis Android', 1, 2, '-', '', 2, '', '1.', '0', '', '030801', '030801', 'naktif', '2016', 'adm', '2019-05-17 11:44:48'),
(151, 'Software Monitoring ATCS', 1, 2, 'Software Monitoring ATCS berfungsi sebagai monitoring pengendalian lalu lintas berbasis teknologi informasi pada suatu kawasan yang bertujuan untuk mengoptimalkan kinerja jaringan jalan.', '', 1, '', '1.', '0', '', '030801', '030801', 'aktif', '2017', 'DKIS', '2020-07-20 14:16:06'),
(154, 'Pusat Data Kota Denpasar', 1, 2, 'Aplikasi yang digunakan untuk mengintegrasikan beberapa sistem informasi dalam pemanfaatan satu data sebagai salah satu bahan pertimbangan untuk pengambilan keputusan.', '', 1, 'https://pusatdata.denpasarkota.go.id/', '1.', 'WhatsApp Image 2020-07-21 at 20.45.28.jpeg', '', '030801', '030801', 'aktif', '2016', 'agungpriambada', '2020-08-14 09:54:46'),
(155, 'Smart City', 1, 2, 'Sistem Informasi Geografis (SIG) Kota Denpasar. Berisi informasi berupa titik lokasi fasilitas dan layanan yang ada di Kota Denpasar.', '', 1, 'http://smartcity.denpasarkota.go.id/', '1.', '0', '', '030801', '030801', 'aktif', '2015', 'agungpriambada', '2020-08-14 10:14:32'),
(156, 'Web Portal Kota Denpasar', 2, 2, 'Web Portal Kota Denpasar berfungsi sebagai pelayanan pemberian informasi secara cepat kepada masyarakat. Merupakan portal utama dan berisi semua data baik perangkat daerah yang ada di Kota Denpasar dan juga semua informasi publik yang menyangkut kota denpasar.', '', 1, 'http://denpasarkota.go.id', '1.', 'WhatsApp Image 2020-07-21 at 20.45.29 (1).jpeg', '', '030801', '000000', 'aktif', '2012', 'agungpriambada', '2020-08-14 10:18:08'),
(158, 'PRO Denpasar Website', 2, 2, 'Website Pro Denpasar sebagai penyedia informasi berkaitan dengan aplikasi pro denpasar. Di sini juga tersedia fitur login dan registrasi untuk memudahkan pengguna yang tidak menggunakan paltform mobile Android dan IOS.  Selain itu web ini menyedia cara mendaftar, brosur dan lainnya.', '', 1, 'https://pengaduan.denpasarkota.go.id/', 'logo-prodenpasar1.png', 'WhatsApp Image 2020-07-21 at 20.45.25.jpeg', '', '030801', '000000', 'aktif', '2013', 'agungpriambada', '2020-08-14 10:26:32'),
(159, 'E-Project Planing', 1, 2, '-', '', 4, '', '1.', '0', '', '030801', '030801', 'aktif', '2013', 'DKIS', '2020-07-20 14:14:42'),
(160, 'Sistem Antrian Terpadu (PATEN)', 2, 2, 'Sistem Antrian berbasis dekstop', '', 3, '', '1.', '0', '', '030801', '000000', 'aktif', '2015', 'agungpriambada', '2020-08-14 10:37:05'),
(161, 'SSPK', 1, 2, '-', '', 4, '', '1.', '0', '-', '030801', '030801', 'aktif', '2014', 'adminapps', '2021-08-02 11:27:44'),
(162, 'SME', 1, 2, '-', '', 4, '', '1.', '0', '-', '030801', '030801', 'aktif', '2014', 'adminapps', '2021-08-02 11:27:30'),
(163, 'Pro Denpasar IOS', 2, 2, 'Aplikasi layanan pengaduan berbasis mobile untuk platform IOS', '', 2, '', '1.', '0', '', '030801', '000000', 'naktif', '2018', 'agungpriambada', '2020-08-14 10:43:15'),
(164, 'emonalisa (Hibah Elektronik)', 1, 2, '-', '', 1, '', '1.', '0', '', '012301', '012301', 'aktif', '-', 'adm', '2019-05-21 14:20:13'),
(165, 'Antrian Online (Akuwaras)', 1, 2, 'Antrian online di Dinas Kependudukan Dan Pencatatan Sipil', '', 1, '', '1.', 'Aolikasi Antrian Online Akuwaras.jpg', '', '030601', '030601', 'aktif', '-', 'adm', '2019-05-21 14:22:04'),
(166, 'Sistem Informasi Administrasi Kependudukan (SIAK)', 1, 2, '-', '', 4, '', '1.', '0', '', '030601', '030601', 'aktif', '-', 'adm', '2019-05-21 14:24:42'),
(167, 'Simyandes', 1, 2, 'Aplikasi untuk mendounload formulir pelayanan', '', 4, '', '1.', '0', '', '030601', '030601', 'aktif', '-', 'adm', '2020-03-10 08:37:52'),
(168, 'Bali Denpasar Tourism', 1, 2, '-', '', 4, '', '1.', '0', '', '031301', '031301', 'aktif', '-', 'adm', '2020-03-09 15:49:21'),
(169, 'Web Denpasar Tourism', 1, 2, '-', '', 1, '', '1.', '0', '', '031301', '031301', 'aktif', '-', 'adm', '2019-05-21 14:28:43'),
(170, 'Web Bekraf', 1, 2, '-', 'laporan-dengan-crystal-report.pdf', 1, '', '1.', '0', '', '031301', '031301', 'aktif', '-', 'adm', '2019-05-21 14:29:32'),
(171, 'Sidarling', 1, 2, 'sdsbjdjabdja<br />\r\n<br />\r\nsdknakldnaslkndlkasnd', 'SURAT PERNYATAAN.pdf', 1, 'https://sidarling.denpasarkota.go.id/', '1.', 'Aplikasi Sidarling.jpg', '', '030501', '030501', 'aktif', '2019', 'adm', '2019-10-14 14:58:20'),
(172, 'SIMAK DIHATI', 2, 2, '-', '-', 1, 'https://simpeg.denpasarkota.go.id', '', 'Aplikasi Simak Dihati.jpg', '', '040301', '000000', 'aktif', '2019', 'adm', '2019-10-14 15:04:10'),
(173, 'Kota Tangguh Sosial', 2, 2, '-', '-', 1, 'https://kotatangguh.denpasarkota.go.id/', '', '0', '', '300004', '000000', 'aktif', '2019', 'adm', '2019-10-14 15:08:51'),
(174, 'Pemantauan Kualitas Udara', 2, 1, 'Aplikasi utk pemantauan kualitas udara', '-', 1, 'http://202.73.26.177/bar/stasiun2.php?id=denpasar#', '', '0', '', '030501', '000000', 'aktif', '-', 'adm', '2019-10-24 14:56:56'),
(175, 'Mobile e-Sewaka Dharma', 2, 2, 'Aplikasi e-Sewaka Dharma Mobile merupakan aplikasi mobile yang merupakan turunan dari Sistem Informasi Administrasi Desa dan Kelurahan di seluruh wilayah Kota Denpasar. Aplikasi ini merupakan aplikasi layanan publik bagi seluruh masyarakat dalam melakukan administrasi kependudukan, seperti permohonan surat keterangan dan surat santunan kematian, dilakukan secara online dan terhubung langsung dengan aplikasi E-Sewaka Dharma yang ada di Desa/Kelurahan di seluruh wilayah Kota Denpasar, Bali.\r\n\r\nAplikasi ini akan terus dikembangkan untuk memberikan akses kemudahan bagi masyarakat Kota Denpasar, dan aplikasi ini dipersembahkan oleh :\r\n\r\nDinas Komunikasi, Informatika dan Statistik Pemerintah Kota Denpasar', '-', 2, 'https://play.google.com/store/apps/details?id=com.esewakadharma&hl=in', '', 'WhatsApp Image 2020-07-21 at 20.45.31.jpeg', '', '030801', '100000', 'aktif', '2020', 'veriandriawan', '2020-08-06 14:18:38'),
(176, 'Buku tamu damamaya', 1, 2, 'Sebagai aplikasi pencatatan tamu yang hadir ke ruang damamaya.', '-', 1, '', '', '0', '', '030801', '030801', 'aktif', '2019', 'DKIS', '2020-07-20 13:40:07'),
(178, 'Sipoint', 2, 2, 'Sebagai dashboard internal aplikasi yang ada di Kota Denpasar, yang mana didalamnya terdapat aplikasi SIMPARSA, EParuman dan lain-lain.', '-', 1, 'https://sipoint.denpasarkota.go.id/', '', 'WhatsApp Image 2020-07-21 at 20.45.27 (1).jpeg', '', '030801', '-', 'aktif', '2019', 'DKIS', '2020-07-21 10:37:52'),
(179, 'Sijuna', 2, 2, 'Sebuah aplikasi untuk pendaftaran kunjungan ke OPD yang ada di Kota Denpasar.', '', 1, 'http://sijuna.denpasarkota.go.id/', '', '0', '', '030801', '000000', 'aktif', '2020', 'adminapps', '2020-08-03 12:51:53'),
(181, 'Divos', 2, 2, 'Denpasarâ€™s Integrated Virtual Office System (DIVOS), khusus untuk pegawai Pemkot Denpasar. Divos merupakan aplikasi ruang kerja di dunia maya. Pegawai hingga pimpinan di lingkungan Pemkot Denpasar dapat bekerja darimana saja menggunakan teknologi seperti PC, laptop, ponsel dan akses internet.', '-', 1, 'https://divos.denpasarkota.go.id/', '', 'WhatsApp Image 2020-07-21 at 20.45.31 (2).jpeg', '-', '030801', '000000', 'aktif', '2020', 'adminapps', '2021-07-29 12:07:31'),
(182, 'Cekas', 1, 2, '-', '-', 1, 'http://rkas.denpasarkota.go.id/index.php/login', '', '0', '', '030101', '030101', 'aktif', '2020', 'adm', '2020-03-10 15:38:44'),
(183, 'midep', 1, 2, '-', '-', 1, 'http://midep.denpasarkota.go.id/admin/login', '', '0', '', '030101', '030101', 'aktif', '2020', 'adm', '2020-03-10 15:40:26'),
(184, 'Dapodik', 1, 1, '-', '-', 1, 'http://simdik.denpasarkota.go.id/index.php/home', '', 'Aplikasi Dapodik.jpg', '', '030101', '030101', 'aktif', '2020', 'adminapps', '2020-07-22 08:08:04'),
(185, 'Sinkrondapodik', 1, 2, '-', '-', 1, 'http://sinkrondapodik.denpasarkota.go.id/', '', '0', '', '030101', '030101', 'aktif', '2020', 'adm', '2020-03-10 15:44:04'),
(186, 'e cheking', 1, 2, '-', '-', 1, '', '', '0', '', '031501', '031501', 'aktif', '2020', 'adm', '2020-03-10 15:46:04'),
(187, 'Sicantik Cloud', 1, 1, '-', '-', 1, '', '', 'Aplikasi Sicantik Cloud.jpg', '', '140018', '140018', 'aktif', '2020', 'adm', '2020-06-12 10:33:31'),
(188, 'CS2', 1, 2, '-', '-', 1, '', '', '0', '', '013401', '013401', 'aktif', '2020', 'adm', '2020-03-10 15:49:18'),
(193, 'Sistem Pengujian Kendaraan Bermotor (KIR)', 1, 2, 'Sistem informasi untuk menguji kendaraan bermotor', NULL, 4, '', NULL, NULL, '', '030701', '030701', 'aktif', '-', 'adminapps', '2020-07-23 09:58:12'),
(192, 'Jendela Kota Denpasar (Pusat Data berbasis GIS)', 1, 2, '-', NULL, 4, 'http://jendela.denpasarkota.go.id/rtmy/index.php', NULL, NULL, '-', '030801', '040501', 'naktif', '2015', 'adminapps', '2021-07-06 09:43:24'),
(194, 'Taringdukcapil (Pendaftaran Daring Dukcapil Kota Denpasar)', 1, 2, 'Aplikasi layanan untuk masyarakat berbasis website yang memuat layanan seperti pembuatan : paket akte kelahiran, paket akte perkawinan, paket akte perceraian, paket akte kematian, kartu keluarga KTP elektronik, surat pindah domisili, Kartu Identitas Anak, serta surat lainnya', NULL, 1, 'https://taringdukcapil.denpasarkota.go.id', NULL, 'Aolikasi taringdukcapil.jpg', '-', '030601', '030601', 'aktif', '2020', 'adminapps', '2020-11-09 09:45:23'),
(195, 'Jagabaya', 2, 2, 'Aplikasi JAGA BAYA merupakan aplikasi yang dikembangkan oleh Pemerintah Kota Denpasar sebagai ruang partisipasi masyarakat, pelaku usaha dan penyedia jasa untuk memberikan rasa aman dalam situasi pandemi COVID-19 di Kota Denpasar saat ini.\r\n\r\nAplikasi JAGABAYA digunakan untuk melakukan check in saat warga berkunjung ke tempat makan, bar, restoran, tempat wisata, mal pelayanan publik, kantor desa kelurahan dan tempat menarik lainnya.', NULL, 1, 'https://jagabaya.denpasarkota.go.id', NULL, NULL, '', '030801', '000000', 'aktif', '2020', 'adminapps', '2020-08-06 11:55:26'),
(196, 'Portal SPBE (Sistem Pemerintahan Berbasis Elektronik)', 1, 2, 'Sebagai media apliakasi penilaian sistem informasi berbasis elektronik (SPBE) dan juga sebagai pencatatan aplikasi.', NULL, 1, 'https://spbe.denpasarkota.go.id', NULL, NULL, '', '030801', '030801', 'aktif', '2020', 'adminapps', '2020-08-10 14:47:34'),
(197, 'Siapel Rutilahu  (Sistem Aplikasi Rumah Tidak Layak Huni)', 1, 2, 'Memberikan Informasi tentang data Rumah Tidak Layak Huni dan Lokasi Kumuh Di Kota Denpasar.', NULL, 4, '', NULL, NULL, '030401', '030401', '030401', 'aktif', '-', 'adminapps', '2020-11-09 09:35:26'),
(198, 'ABK', 1, 1, 'Untuk mengetahui kebutuhan SDM berdasarkan beban kerja, capaian kegiatan SDM\r\n', NULL, 1, 'renbut.Kemkes.go.id ', NULL, NULL, '030201', '030201', '030201', 'aktif', '-', 'adminapps', '2021-06-09 11:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `detail_aplikasi`
--

CREATE TABLE `detail_aplikasi` (
  `id_detail_aplikasi` int(11) NOT NULL,
  `id_aplikasi` int(11) NOT NULL,
  `input` text NOT NULL,
  `output` text NOT NULL,
  `version` varchar(50) NOT NULL,
  `db` int(11) NOT NULL,
  `pemrograman` varchar(255) NOT NULL,
  `integrasi` varchar(10) NOT NULL,
  `info_integrasi` text NOT NULL,
  `inte_app_lain` varchar(11) NOT NULL,
  `info_inte_app_lain` text NOT NULL,
  `thn_pengembangan` varchar(6) NOT NULL,
  `cpu_server` varchar(100) NOT NULL,
  `ram_server` varchar(100) NOT NULL,
  `harddisk_server` varchar(100) NOT NULL,
  `os_server` varchar(100) NOT NULL,
  `bp_server` varchar(100) NOT NULL,
  `web_server` varchar(100) NOT NULL,
  `database_server` varchar(100) NOT NULL,
  `bplain_server` varchar(100) NOT NULL,
  `loka_server` int(11) NOT NULL,
  `judul_spk` text NOT NULL,
  `nilai_spk` int(11) NOT NULL,
  `sumberdana_spk` varchar(200) NOT NULL,
  `vendor` varchar(100) NOT NULL,
  `kontak_vendor` varchar(100) NOT NULL,
  `usr` text NOT NULL,
  `dlu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detail_aplikasi`
--

INSERT INTO `detail_aplikasi` (`id_detail_aplikasi`, `id_aplikasi`, `input`, `output`, `version`, `db`, `pemrograman`, `integrasi`, `info_integrasi`, `inte_app_lain`, `info_inte_app_lain`, `thn_pengembangan`, `cpu_server`, `ram_server`, `harddisk_server`, `os_server`, `bp_server`, `web_server`, `database_server`, `bplain_server`, `loka_server`, `judul_spk`, `nilai_spk`, `sumberdana_spk`, `vendor`, `kontak_vendor`, `usr`, `dlu`) VALUES
(2, 112, 'Data kependudukan, Surat menyurat, profil dan perkembangan desa dan kelurahan', 'Laporan data kependudukan, laporan surat menyurat, laporan profildan laporan perkembangan desa dan kelurahan', 'Versi 2.0', 1, 'PHP', 'sudah', 'Diintegrasikan dengan aplikasi pusat data. Terdapat pengembangan sistem pada data kependudukan, Surat menyurat, profil dan perkembangan desa dan kelurahan', '-', '', '2017', 'Dual Xeon Processor Silver 4110 (8 Core)', '32GB', '4TB', 'Linux CenOS 7', 'PHP 5.6 dan PHP 7', 'Apache', 'Mysql', 'Javascript', 3, 'Belanja modal aplikasi berupa perancangan sistem informasi manajemen kependudukan', 37300000, 'APBD', 'PT Bamesti Jaya', '0361418565', 'veriandriawan', '2020-08-12 12:40:43'),
(43, 110, '-', '-', 'v1.1', 1, '-', 'sudah', 'Aplikasi ini merupakan aplikasi yang digunakan untuk mendata Rumah Tidak Layak Huni oleh Dinas Perumahan Permukiman dan Pertanahan di Kota Denpasar dalam rangka pemberian Bantuan Bedah Rumah serta keterkaitan program-program yang telah diterima oleh pemilik rumah tidak layak huni dimaksud.', '-', '', '2019', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', 'PT. Lintas Daya Manunggal', '-', 'adminapps', '2020-11-09 09:30:38'),
(5, 61, 'Data permohonan peminjaman gedung dan ruang rapat\r\nData permohonan peminjaman sound system\r\nData permohonan peminjaman videotron', 'Jadwal Peminjaman Gedung , Sound system, videotron\r\nLaporan peminjaman gedung dan ruang rapat\r\nLaporan peminjaman sound system\r\nLaporan peminjaman videotron', '1.0', 1, 'PHP', 'belum', 'Sebagai layanan peminjaman sarana prasarana di lingkungan Pemerintah Kota Denpasar', '-', 'Belum terintegrasi', '2017', 'Intel(R) Xeon(R) CPU E5606  @ 2.13GHz (4 Core)', '8GB', '1TB', 'Linux 11.10', 'PHP 5.6', 'Apache', 'Mysql', 'javascript', 1, 'Belanja jasa non pegawai jasa pembuatan sistem informasi pengelolaan Graha Sewaka Dharma', 40000000, 'APBD', 'Kaizen', '085238022322', 'veriandriawan', '2020-09-29 08:58:27'),
(6, 73, '- Absensi berdasarkan lokasi pegawai (absensi GPS)\r\n- SKP (Sasaran Kegiatan Pegawai) : terdiri dari detail kegiatan, penilaian unsur dan ppengukuran\r\n- Kegiatan harian yang terdiri dari kategori kegiatan, kelompok SKP, penjelasan kegiatan dan bukti hasil kegiatan', '- Rekapitulasi absensi berdasarkan waktu kehadiran dan pemetaan lokasi pegawai\r\n- Daftar  SKP pegawai tiap tahun\r\n- Rekapitulasi kegiatan harian pegawai\r\n- Tunjangan kinerja', 'Versi 3.0', 1, 'PHP', 'belum', 'Belum terintegrasi dengan Pusat data, pengembangan pada aplikasi ini yakni absensi dengan GPS, dan terdapat perubahan formula kinerja', '', '', '2020', 'Dual Intel(R) Xeon(R) CPU E5-2660v4 @ 2.00GHz (14 Core)', '32GB', '1,7TB', 'Linux CenOs 6', 'PHP 5.6', 'Apache', 'Mysql', 'javascript', 0, '-', 0, 'APBD', '-', '-', 'veriandriawan', '2020-08-11 09:07:03'),
(7, 74, '- Jenis surat\r\n- Sifat surat\r\n- Surat masuk\r\n- Surat keluar', '- Informasi jenis surat\r\n- Informasi sifat surat\r\n- Informasi surat masuk\r\n- Informasi surat keluar', '1.0', 1, 'PHP', 'belum', '-', '-', '', '2020', 'Dual XeonÂ® Processor Silver 4110(8 Core)', '32GB', '4TB', 'Linux CenOs 7', 'PHP 5.6 dan PHP 7', 'Apache', 'Mysql', 'javascript', 3, '-', 0, '-', '-', '-', 'veriandriawan', '2020-08-12 12:12:11'),
(8, 75, '- Pengaduan masalah jaringan dari OPD\r\n- Data peralatan jaringan', '- Laporan Progres pengaduan\r\n- Laporan Peralatan jaringan', 'v1.0', 1, 'PHP', 'belum', 'Belum terintegrasi.', '-', '', '2017', 'Intel(R) Xeon(R) CPU E5-2660 v3 (8 Core)', '8GB', '1,2TB', 'Linux CenOs 7', 'PHP 5.6 dan PHP 7', 'Apache', 'Mysql', 'javascript', 1, '-', 43000000, '-', 'Bakti Meening', '-', 'veriandriawan', '2020-08-12 12:12:59'),
(9, 78, '- Penyedia pekerjaan\r\n- Lowongan pekerjaan disabilitas\r\n- Penyandang cacat\r\n- Lokasi wisata dan tempat ramah difabel\r\n- Donasi difabel\r\n- Relawan untuk disabilitas\r\n- Kegiatan disabilitas\r\n- Beasiswa penyandang cacat\r\n- Prestasi penyancang cacat\r\n- Galeri kegiatan\r\n- Layanan keahlian penyandang disabilitas', '- Rekapitulasi Penyedia kerja\r\n- Informasi lowongan kerja atau bursa kerja disabilitas\r\n- Informasi relawan\r\n- Informasi donasi\r\n- Informasi lokasi wisata dan tempat ramah difabel\r\n- Informasi kegiatan disabilitas\r\n- Informasi beasiswa penyandang cacat\r\n- Informasi prestasi penyandang cacat\r\n- Informasi layanan keahlian penyandang disabilitas\r\n- Informasi galeri kegiatan', 'v1.0', 1, 'PHP', 'belum', 'Belum terintegrasi.', '-', '', '2018', 'Celeron', '4GB', '500GB', 'Linux CenOs 7', 'PHP 5.6 dan PHP 7', 'Apache', 'Mysql', 'javascript', 4, 'Pembuatan Portal Disabilitas', 42350000, 'APBD', 'PT. Djingga Media Teknokreatif', '0813-3744-9384', 'veriandriawan', '2020-08-26 12:55:17'),
(10, 144, '- Peribahasa bahas bali terdiri dari : cecimpedan, sesonggan, raos ngempelin, sesenggakan, dan lain-lain\r\n- Input berita bahasa bali\r\n- Input pencarian berita\r\n- Input konversi tulisan latin ke tulisan bali\r\n- Kamus bahasa bali\r\n- Audio kidung\r\n- Opini\r\n- Karaoke lagu bali\r\n- Objek wisata\r\n- Cerita bahasa bali', '- Informasi peribahasa bahas bali terdiri dari : cecimpedan, sesonggan, raos ngempelin, sesenggakan, dan lain-lain\r\n- Informasi  berita bahasa bali\r\n- Informasi  pencarian berita\r\n- Informasi konversi tulisan latin ke tulisan bali\r\n- Informasi Kamus bahasa bali\r\n- Informasi  audio kidung\r\n- Informasi opini\r\n- Informasi karaoke lagu bali\r\n- Informasi  objek wisata\r\n- Informasi  cerita bahasa bali', 'Versi 1.0', 1, 'PHP', 'belum', 'Belum terintegrasi', '-', '', '2015', 'Intel(R) Xeon(R) CPU E5-2430 @2.220GHz (6 Core)', '4GB', '250GB', 'LinuxCenOS 7', 'PHP 5.6 dan PHP 7', 'Litespeed', 'Mariadb', 'Javascript', 2, '-', 148000000, 'APBD', 'Universitas Udayana Jurusan Teknik Teknologi informasi', '-', 'veriandriawan', '2020-08-12 12:20:22'),
(11, 72, '- Layanan kesehatan kategori pasien home care/ terjadwal, kegawat daruratan, ODGJ , dll. \r\n- penginputan layanan kesehatan berdasarkan lokasi faskes\r\n- penginputan layanan kesehatan berdasarkan lokasi Desa Kelurahan\r\n- penginputan jadwal kunjungan pasien', '- Layanan kesehatan kategori pasien home care/ terjadwal, kegawat daruratan, ODGJ , dll. \r\n- penginputan layanan kesehatan berdasarkan lokasi faskes\r\n- penginputan layanan kesehatan berdasarkan lokasi Desa Kelurahan\r\n- penginputan jadwal kunjungan pasien\r\n- laporan jadwal pasien berdasarkan desa kelurahan', '1.0', 1, 'PHP ', 'sudah', 'Sudah Terintegrasi dengan Data Center di Dinas Komunikasi, Informatika dan Statistik Pemerintah Kota Denpasar', '-', '', '2018', 'Coleron', '4GB', '500GB', 'Linux CenOS7', 'PHP 5.6 dan PHP 7', 'Apache', 'Mysql', 'Javascript', 0, 'BELANJA MODAL APLIKASI SISTEM INFORMASI LAYANAN KESEHATAN MASYARAKAT BERBASIS WEB & MOBILE KEGIATAN PENYELENGGARAN SISTEM E-GOVERNMENT TAHUN ANGGARAN PERUBAHAN 2017', 43345000, 'DPA TAHUN ANGGARAN PERUBAHAN 2017 PADA DINAS KOMUNIKASI, INFORMATIKA DAN STATISTIK KOTA DENPASAR', 'PT. BAMESTI PREMA JAYA', '( 0361 ) 418565', 'krisna', '2020-08-13 08:19:51'),
(12, 76, '- inputan data berdasarkan jenis informasi :\r\nBerkala, Setiap Saat, Serta Merta, Dikecualikan\r\n-Klasifikasi Data : Utama atau pembantu\r\n- Bentuk informasi: cetak, online, rekam\r\n- inputan meta data\r\n- inputan masyarakat berupa permohonan informasi publik\r\n- Cek Status Permohonan Informasi Publik', '-laporan berdasarkan jenis informasi: Berkala, Setiap Saat, Serta Merta, Dikecualikan\r\n- laporan berdasarkan Klasifikasi Data : Utama atau pembantu\r\n- laporan berdasarkan bentuk informasi: cetak, online, rekam\r\n- laporan permohonan informasi publik\r\n- laporan hasil Cek Status Permohonan Informasi Publik\r\n-laporan Statistik Layanan Informasi Publik\r\n-informasi peta \r\n- laporan daftar infromasi publik ', 'Versi 1.0', 1, 'PHP', 'belum', '-', 'noada', '-', '2017', 'Dual XeonÂ® Processor Silver 4110(8 Core)', '32GB', '4TB', 'Linux CenOs 7', 'PHP 5.6 dan PHP 7', 'Apache', 'Mysql', 'javascript', 0, 'Belanja Modal Aplikasi Berupa Pembuatan WEB PPID', 47492500, '-', '-', '-', 'krisna', '2020-09-21 09:40:20'),
(13, 77, '- menginputkan pejabat pengadaan (Pejaban penatausahaan keuangan, pejabat pembuat komitmen, PPTK)\r\n- manage kegiatan berdasarkan jenis kegiatan ( fisik dan non fisik) dan target kegiatan dalam setahun\r\n- menginputkan persentase progres realisasi fisik kegiatan perbulan di lengkapi dengan bukti pendukung\r\n- menginputkan data tender', ' -Ranking OPD berdasarkan Realisasi Keuangan\r\n -Ranking OPD berdasarkan Realisasi Fisik\r\n- Rekapitulasi DPA Seluruh OPD\r\n- Laporan Keaktifan OPD\r\n -Jumlah Kegiatan Per OPD\r\n -Laporan Anggaran Per OPD\r\n- Laporan Realisasi Program/Kegiatan\r\n -Laporan Detail Pagu dan Realisasi', 'Versi 1.0', 1, 'PHP', 'belum', 'Sudah Terintegrasi dengan Data Center di Dinas Komunikasi, Informatika dan Statistik Pemerintah Kota Denpasar', 'ada', 'Terintegrasi dengan SIRUP LKPP ', '2018', 'Celeron', '4GB', '500GB', 'Linux CenOs 7', 'PHP 5.6 dan PHP 7', 'Apache', 'Mysql', 'javascript', 4, '-', 0, '-', '-', '-', 'krisna', '2020-09-21 09:50:18'),
(14, 142, 'Menginputkan data kejadian baik rawan bencana, kriminal, maupun kecelakaan suatu wilayah di Kota Denpasar.', '- Laporan Kejadian Per Desa/Kelurahan\r\n- Laporan Kejadian per Kategori\r\n -Laporan Kejadian per Periode\r\n -Laporan Kejadian per Hari\r\n -Laporan Rekap Kejadian Per Kelurahan', 'Versi 1.0', 1, 'PHP', 'sudah', 'Sudah Terintegrasi dengan Data Center di Dinas Komunikasi, Informatika dan Statistik Pemerintah Kota Denpasar', '-', '', '2017', 'Dual XeonÂ® Processor Silver 4110(8 Core)', '32GB', '4TB', 'Linux CenOs 7', 'PHP 5.6 dan PHP 7', 'Apache', 'Mysql', 'javascript', 4, '-', 0, '-', '-', '-', 'krisna', '2020-09-21 10:03:32'),
(15, 147, '-menginputkan buku yang dilengkapi dengan informasi seperti pengerang, penerbit, judul, jumlah halaman dan lokasi rak buku.\r\n-menginputkan ebook ', '-informasi buku\r\n- informasi ebook', 'Versi 1.0', 1, 'PHP', 'belum', '-', 'noada', '', '2016', 'Intel(R) Xeon (R) CPU E5-649 @ 2.53 GHz (8 Core)', '4GB', '146GB', 'Linux CenOs 6', 'PHP 5.6', 'Apache', 'Mysql', 'javascript', 0, 'Software Aplikasi Buku Elektronik', 19635000, 'APBD', 'Sinergi Inovasi', 'Pak Ketut Ginarsa / 08124665133', 'krisna', '2020-09-21 11:19:10'),
(16, 140, 'Input data agenda\r\nInput data berita terbaru\r\nInput data keuangan\r\nInput foto dan video\r\nInput pelayanan\r\nInput Tupoksi\r\nInput Struktur Organisasi\r\nInput Pengumuman', 'Data agenda\r\nData berita terbaru\r\nData keuangan\r\nData video dan foto\r\nData pelayanan\r\nData Tupoksi\r\nData Struktur Organisasi\r\nData pengumuman', 'Versi 1.0', 1, 'PHP', 'belum', '-', '-', '', '2019', 'Intel(R) Xeon(R) CPU E5-630 @ 2.53GHz (8 Core)', '4GB', '60GB', 'Linux CenOs 7', 'PHP 7', 'Apache', 'Mysql', 'javascript', 0, '-', 0, '-', '-', '-', 'krisna', '2020-09-21 09:53:33'),
(17, 141, 'Menginput identitas lengkap terkait pengurusan sim', 'Dapat melihat no antrian yang telah di dapatkan ', 'Versi 1.0', 1, 'PHP', 'belum', '-', 'noada', '', '2018', 'Dual Intel(R) Xeon(R) CPU E5-2620v3 @ 2.40GHz (6 Core)', '16GB', '200GB', 'Windows Server 2012', 'PHP 5.6', 'Apache', 'Mysql', 'javascript', 0, '-', 0, '-', '-', '-', 'krisna', '2020-09-21 10:00:45'),
(18, 166, '-', '-', '-', 1, '-', 'sudah', '-', '', '', '2015', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'veriandriawan', '2020-07-21 08:15:50'),
(20, 56, '-', '-', '-', 1, 'PHP', 'sudah', '-', '-', '', '2015', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', 'PT. Bamesti Prema Jaya', '-', 'adminapps', '2020-11-09 09:43:09'),
(21, 56, '-', '-', '-', 1, 'PHP', 'sudah', '-', '-', '', '2015', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', 'PT. Bamesti Prema Jaya', '-', 'adminapps', '2020-11-09 09:42:59'),
(22, 148, '-', '-', 'Versi 1.0', 1, '-', 'sudah', '-', '-', '', '2015', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'krisna', '2020-09-21 10:07:07'),
(23, 192, '-', '-', '-', 1, '-', 'sudah', '-', '', '', '2015', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'adminapps', '2020-07-22 13:50:06'),
(24, 106, '-', '-', 'v.1.1', 1, 'PHP', 'sudah', '-', '', '', '2016', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'adminapps', '2020-07-23 08:21:17'),
(42, 172, '', '', 'v1.2', 1, '-', 'sudah', 'Aplikasi ini merupakan pengembangan dari Aplikasi Simpeg. SIMPEG (Sistem Informasi Manajemen Pegawai) didefinisikan sebagai Sistem Informasi terpadu, yang meliputi pendataan pegawai, pengolahan data, prosedur, tata kerja, sumber daya manusia dan teknologi informasi untuk menghasilkan informasi yang cepat, lengkap dan akurat dalam rangka mendukung administrasi kepegawaian.     ', '', '', '2019', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'adminapps', '2020-07-23 11:20:18'),
(26, 184, '-', '-', 'v1.1', 1, 'PHP', 'sudah', 'Integrasi dengan pusat data', '', '', '2016', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'adminapps', '2020-07-23 08:30:46'),
(27, 172, '-', '-', 'v1.1', 1, 'PHP', 'sudah', '-', '', '', '2016', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'adminapps', '2020-07-23 08:37:34'),
(28, 27, '-', '-', 'v1.1', 1, 'PHP', 'sudah', '-', '', '', '2016', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'adminapps', '2020-07-23 08:39:41'),
(29, 118, '-', '-', 'V1.1', 1, 'PHP', 'sudah', '-', '', '', '2017', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'adminapps', '2020-07-23 08:41:35'),
(30, 112, '- Surat menyurat\r\n- Data kependudukan', '- Informasi surat menyurat\r\n- Informasi data kependudukan', 'Versi 1.0', 1, 'PHP', 'belum', 'Aplikasi awalnya bernama Simak Desa dengan fitur surat menyurat dan data kependudukan', '', '', '2015', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, 'APBD', '-', '-', 'veriandriawan', '2020-08-11 08:53:30'),
(31, 134, '-', '-', 'v1.1', 1, '-', 'sudah', '-', '', '', '2017', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'adminapps', '2020-07-23 09:55:29'),
(32, 193, '-', '-', 'v1.1', 1, '-', 'sudah', '-', '', '', '2017', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'adminapps', '2020-07-23 09:58:49'),
(33, 158, 'Komentar/kritik/saran berupa text, data pendaftar seperti nama, alamat (text, gambar).', 'Data informasi user, riwayat pengaduan, laporan pengaduan. Grafik hasil pembagian dari beberapa kategori pengaduan dan jumlah data pengaduan berdasarkan hari dan tanggal', '1.0', 1, 'PHP', '-', '', '-', '', '2016', 'IntelÂ® XeonÂ® Processor Silver 4110 (8 Cores, 2.10 GHz)', '32GB', '5,5TB', 'Linux CenOs 7.5', 'PHP 5.6 & 7', 'Apache', 'MySQL', 'Javascript', 3, '-', 0, '-', 'PT. Djingga Media Teknokreatif', '081337449384', 'agungpriambada', '2020-08-13 13:26:36'),
(34, 121, '-', '-', 'v1.1', 1, '-', 'sudah', '-', '', '', '2018', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'adminapps', '2020-07-23 10:01:02'),
(35, 50, '-', '-', 'v1.1', 1, '-', 'sudah', '-', '-', '', '2018', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', 'Rumah Media', '-', 'adminapps', '2020-11-09 09:44:29'),
(36, 47, '-', '-', 'v1.1', 1, '-', 'sudah', '-', '', '', '2018', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'adminapps', '2020-07-23 10:03:03'),
(37, 146, 'Dokumen dan berkas berupa file (.docx,xlsx, dll)', 'Laporan riwayat berkas/dokumen', 'v1.0', 1, 'PHP', 'belum', 'Awal pengembangan aplikasi tanggal 12/04/2017', '-', '', '2017', 'IntelÂ® XeonÂ® Processor Silver 4110 (8 Cores, 2.10 GHz)', '32GB', '5,5TB', 'Linux CenOs 7.5', 'PHP 5.6 & 7', 'Apache', 'MySQL', 'Javascript', 3, 'Belanja Modal Aplikasi Berupa Sistem Informasi Dokumen', 28600000, '-', 'CV. Avatar Solution', '', 'agungpriambada', '2020-10-12 08:18:24'),
(38, 97, '-', '-', 'v1.1', 1, '-', 'sudah', '-', '', '', '2018', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'adminapps', '2020-07-23 10:07:07'),
(39, 17, '-', '-', 'v1.1', 1, '-', 'sudah', '-', '', '', '2018', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'adminapps', '2020-07-23 10:08:35'),
(40, 124, '-', '-', 'v1.1', 1, '-', 'sudah', '-', '', '', '2018', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'adminapps', '2020-07-23 10:09:28'),
(41, 35, '-', '-', 'v1.1', 1, '-', 'sudah', '-', '', '', '2017', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', '-', '-', 'adminapps', '2020-07-23 10:11:09'),
(44, 171, '-', '-', 'v1.1', 1, 'PHP', 'sudah', 'Portal DLHK yang dikenal dengan si Darling (sistem informasi sadar dan peduli lingkungan). Aplikasi ini dimanfaatkan untuk pengelolaan Bank Sampah di Kota Denpasar ', '', '', '2019', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', 'DJINGGA MEDIA', '-', 'adminapps', '2020-07-24 08:02:31'),
(45, 173, '-', '-', 'v1.1', 1, 'PHP', 'sudah', 'Aplikasi yang digunakan untuk pendataan PMKS di Kota Denpasar yang terntegrasi dengan layanan Perangkat Daerah\r\n', '', '', '2019', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', 'DJINGGA MEDIA', '-', 'adminapps', '2020-07-24 08:05:24'),
(46, 41, '-', '-', 'V1.1', 1, 'PHP', 'sudah', 'Aplikasi ini merupakan aplikasi yang digunakan oleh Dinas Koperasi UKM untuk mendata keberadaan Koperasi-koperasi yang ada di Kota Denpasar. \r\n', '', '', '2019', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, '-', 'DJINGGA MEDIA', '-', 'adminapps', '2020-07-24 08:07:29'),
(47, 145, 'Komentar/kritik/saran berupa text, data pendaftar seperti nama, alamat (text, gambar).', 'Data pengaduan dari masyarakat. Informasi berita mengenai opd dan kota denpasar.', '3.3', 1, 'Java', '-', '-', '-', '', '2020', 'IntelÂ® XeonÂ® Processor Silver 4110 (8 Cores, 2.10 GHz)', ' 32GB', ' 5,5TB', 'Linux CenOs 7.5', 'PHP 5.6 & 7', 'Apache', 'MySQL', 'Java', 3, ' ', 0, ' ', 'CV. Avatar Solutions', '0361415036', 'agungpriambada', '2020-08-14 08:43:08'),
(50, 71, 'Memonitoring pengaduan masuk, melihat history panggilan', 'Menambahkan user, menambah tiket pengaduan ', 'Versi 1.0', 1, '-', 'belum', 'Belum integrasi', '-', '', '2018', '-', '-', '-', '-', '-', '-', '-', '-', 0, 'Belanja pengadaan software berupa call centre system 112', 197100000, 'DPA perubahan tahun 2018 dinas komunikasi informatika dan statistik kota denpasar', 'PT Softindo Computech', '02286002883', 'veriandriawan', '2020-08-14 08:24:30'),
(51, 175, 'Pengajuan surat surat permohonan, pengajuang surat kematian.', 'Surat keterangan', 'Versi 1.0', 1, '-', 'belum', 'Nik sudah terintegrasi. Terdapat fitur surat menyurat, berita dan informasi layanan publik.', '-', '', '2019', '-', '-', '-', '-', '-', '-', '-', '-', 3, '-', 0, 'APBD', 'PT. Djingga Media Teknokreatif', '0813-3744-9384', 'veriandriawan', '2020-08-12 12:14:40'),
(52, 175, 'Pengajuan surat surat permohonan, pengajuang surat kematian.', 'Surat keterangan', 'Versi 2.0', 1, '-', 'belum', 'Nik Sudah Terintegrasi dengan Dinas Kependudukan dan Pencatatan Sipil Kota Denpasar. Pada versi ini terdapat perbaikan bug pada surat keterangan kematian yang terdapat pada versi sebelumnya.\r\nYANG BARU\r\nFitur\r\nUntuk Masyarakat :\r\n- Pengajuan Surat Permohonan\r\n- Pengajuan Surat Santunan Kematian\r\n- Informasi Penting\r\n- Cek Status Santunan Kematian\r\n- Download File Berkas\r\n- Berita\r\nUntuk Kepala Dusun :\r\n- Verifikasi Surat Permohonan\r\n- Verifikasi Surat Santunan Kematian\r\n- Hunian Penduduk\r\n- Penduduk Pendatang\r\n- Berita\r\n- Download File Berkas', '-', '', '2020', '-', '-', '-', '-', '-', '-', '-', '-', 3, '-', 0, 'APBD', 'PT. Djingga Media Teknokreatif', '0813-3744-9384', 'veriandriawan', '2020-08-12 12:58:38'),
(49, 5, '', '', 'Versi 1.0', 1, 'PHP', 'belum', 'Sebagai layanan antar muka bagi masyarakat untuk mendapatkan data-data terkait di Pemerintah Kota Denpasar', 'ada', '-', '2016', 'Dual XeonÂ® Processor Silver 4110(8 Core)', '32GB', '4TB', 'Linux CenOs 7', 'PHP 5.6 dan PHP 7', 'Apache', 'Mysql', 'javascript', 3, 'Sistem pengembangan bank data', 47135000, 'APBD', 'CV Avatar Solution', '0361415036 info@avatarsolution.com', 'veriandriawan', '2020-09-29 08:56:08'),
(53, 196, 'Penilaian SPBE dan informasi aplikasi', 'Penilaian SPBE dan informasi aplikasi', 'Versi 1.0', 1, 'PHP 5.6', 'belum', 'Belum integrasi', '-', '-', '2020', '-', '-', '-', '-', '-', '-', '-', '-', 1, '-', 0, '-', '-', '-', 'krisna', '2020-08-12 18:07:24'),
(54, 154, 'Berkas data, informasi dan file berekstensi dokumen, JSON, CSV.', 'Berkas data, informasi dan file berekstensi dokumen, JSON, CSV. Dan pemetaan dari dokumen tersebut berdasarkan kategorinya. Riwayat dokumen dan laporan dokumen berdasarkan tanggal. Grafik garis dan batang yang dapat diexport menjadi gambar JPG dan PNG.', '2.0', 1, 'PHP', 'sudah', 'Pengembangan kedua', 'ada', '', '2016', 'IntelÂ® XeonÂ® Processor Silver 4110 (8 Cores, 2.10 GHz)', '32GB', '5,5TB', 'Linux CenOs 7.5', 'PHP 5.6 dan PHP 7', 'Apache', 'MySQL', 'Javascript', 3, '-', 48675000, '-', 'CV. Avatar Solutions', '-', 'agungpriambada', '2020-10-12 08:05:41'),
(55, 155, 'Informasi lokasi, titik kordinat dan deskripsi dari lokasi tersebut. ', 'Berupa Peta Interaktif yang terdapat beberapa point of interest dari lokasi yang telah ada pada database sistem. Informasi detail dari titik poin tersebut.', '1.0', 1, 'PHP', '-', '', 'ada', 'Integrasi dengan aplikasi pengaduan (Pro Denpasar) berupa informasi dan titik kordinat lokasi dari pengaduan.', '2015', 'Intel Celeron', '4GB', '500GB', 'Linux CenOs 7', 'PHP 5.6 & 7', 'Apache', 'MySQL', 'Javascript', 4, '-', 0, '-', '-', '-', 'agungpriambada', '2020-08-13 13:12:51'),
(56, 156, 'Informasi Data berupa text, gambar dan lainnya.\r\n- Informasi Artikel, berita, pengumuman\r\n- Jadwal Agenda, File (.doc,xls,dll)\r\n- Jejak Pendapat', 'Informasi Data berupa text, gambar dan lainnya.\r\n- Agenda, Pengumuman, \r\n- File Download', 'v1.0', 1, 'PHP', '-', 'Awal pengembangan aplikasi.', 'ada', 'Terintegrasi dengan web subdomain denpasarkota.go.id seperti web OPD, Desa dan Kecamatan di Kota Denpasar. Juga terintegrasi dengan 2 aplikasi yaitu Pusat Data Kota Denpasar dan Pengaduan (Pro Denpasar). Integrasi di sini hanya berupa informasi masing-masing aplikasi yang ditayangkan pada halaman beranda web utama.', '2012', 'Intel(R) Xeon(R) CPU E5-630 @ 2.53GHz (8 Core)', '4GB', '60GB', 'Linux CenOs 7.5', 'PHP 5.6 & 7', 'Apache', 'MySQL', 'Javascript', 0, '-', 0, '-', 'CV. Rumah Media', ' 0361426623', 'agungpriambada', '2020-10-12 08:38:06'),
(57, 158, 'Komentar/kritik/saran berupa text, data pendaftar seperti nama, alamat (text, gambar).', 'Info pengaduan masyarakat. Grafik hasil pembagian dari beberapa kategori pengaduan dan jumlah data pengaduan berdasarkan hari dan tanggal', '2.0', 1, 'PHP', '-', '', '-', '', '2018', 'IntelÂ® XeonÂ® Processor Silver 4110 (8 Cores, 2.10 GHz)', '32GB', '5,5TB', 'Linux CenOs 7.5', 'PHP 5.6 & 7', 'Apache', 'MySQL', 'Javascript', 3, '-', 0, '-', 'PT. Djingga Media Teknokreatif', '081337449384', 'agungpriambada', '2020-08-13 13:25:51'),
(58, 163, 'Komentar/kritik/saran berupa text, data pendaftar seperti nama, alamat (text, gambar).', 'Informasi pengaduan dari masyarakat dan informasi serta berita mengenai OPD dan info mengenai kota Denpasar', '1.0', 1, 'Swift', '-', 'Awal versi', '-', '', '2016', 'IntelÂ® XeonÂ® Processor Silver 4110 (8 Cores, 2.10 GHz)', '32GB', '5,5TB', 'Linux CenOs 7.5', 'PHP 5.6 & 7', 'Apache', 'MySQL', 'PHP, Javascript', 3, 'Belanja Modal Aplikasi Berupa Pengembangan Aplikasi Pengaduan Rakyat Online (PRO) Denpasar Berbasis IOS', 43560000, '-', 'CV. Avatar Solutions', '0361415036', 'agungpriambada', '2020-10-12 08:12:28'),
(59, 160, 'Informasi data pengunjung', 'Informasi antrian pengunjung', '1.0', 4, 'Delphi', '-', 'Awal pengembangan aplikasi tanggal 12/31/2015', '-', '', '2015', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 33720000, '-', '-', '-', 'agungpriambada', '2020-10-12 08:15:12'),
(60, 73, 'Terdapat fitur untuk menginput kinerja pegawai', 'Informasi kinerja pegawai', 'Versi 1.0', 1, 'PHP', 'belum', 'Belum terintegrasi dengan Pusat data, terdapat fitur untuk menginput kinerja pegawai', '', '', '2016', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, 'APBD', '-', '-', 'veriandriawan', '2020-08-11 08:48:05'),
(61, 149, '-', '-', '1.0', 2, '-', '-', 'Awal pengembangan aplikasi tanggal 12/01/2016', '-', '', '2015', '-', '-', '-', '-', '-', '-', '-', '-', 0, 'Belanja Modal Software Berupa Perancangan dan pembangunan Sistem Pengawasan Armada (GPS TRACKING)', 47520000, '-', '-', '-', 'agungpriambada', '2020-10-12 08:16:59'),
(62, 73, 'Terdapat pengembangan pada aplikasi yakni adanya fitur bobot kerja pegawai, nilai rupiah dan SKP', 'Informasi bobot kerja pegawai, nilai rupiah dan SKP', 'Versi 2.0', 1, 'PHP', 'belum', 'Belum terintegrasi dengan pusat data, Terdapat pengembangan pada aplikasi yakni adanya fitur bobot kerja pegawai, nilai rupiah dan SKP', '', '', '2017', '-', '-', '-', '-', '-', '-', '-', '-', 0, '-', 0, 'APBD', '-', '-', 'veriandriawan', '2020-08-11 09:06:51'),
(63, 145, 'Komentar/kritik/saran berupa text, data pendaftar seperti nama, alamat (text, gambar).', 'Data pengaduan dari masyarakat. Informasi berita mengenai opd dan kota denpasar.', '1.0', 1, 'Java', '-', 'Versi awal pengembangan', '-', '', '2016', 'IntelÂ® XeonÂ® Processor Silver 4110 (8 Cores, 2.10 GHz)', '32GB', '5,5TB', 'Linux CenOs 7.5', 'PHP 5.6 & 7', 'Apache', 'MySQL', 'Javascript', 3, '-', 0, '-', 'CV. Avatar Solutions', '0361415036', 'agungpriambada', '2020-08-13 13:33:38'),
(64, 112, 'Data kependudukan, Surat menyurat, profil dan perkembangan desa dan kelurahan', 'Laporan data kependudukan, laporan surat menyurat, laporan profildan laporan perkembangan desa dan kelurahan', 'Versi 3.0', 1, 'PHP', 'sudah', 'Sudah terintegrasi dengan pusat data. Pengembangan aplikasi ini terdapat pada Fitur data tunggal dampak covid 19.', '-', '', '2020', 'Dual Xeon Processor Silver 4110 (8 Core)', '32GB', '4TB', 'Linux CenOS 7', 'PHP 5.6 dan PHP 7', 'Apache', 'Mysql', 'Javascript', 3, 'Kebutuhan belanja (dana BTT) pengembangan aplikasi untuk mendukung percepatan covid 19 di Kota Denpasar. Jasa pihak ketiga berupa kerjasama pengembangan aplikasi / sistem informasi.', 150000000, 'BTT', 'Universitas Udayana', 'gusdedwidasmara (081934345685)', 'veriandriawan', '2020-08-12 12:52:25'),
(65, 143, '-', '-', 'Versi 1.0', 1, '-', 'belum', '-', 'noada', '-', '2015', '-', '-', '-', '-', '-', '-', '-', '-', 2, '-', 63000000, 'APBD', '-', '-', 'veriandriawan', '2020-08-12 12:19:46'),
(66, 142, '-Pembaharuan modul manajemen kejadian untuk kepentingan Covid-19\r\n-Pengembangan peta sebaran Covid-19', '-Peta sebaran Covid-19\r\n-Laporan Covid-19', 'Versi 1.1', 1, 'PHP ', 'sudah', 'Penambahan fitur untuk perkembangan kasus Covid-19', 'ada', 'Terintegarsi dengan Data Kependudukan E-Sewaka Dharma \r\nTerintegrasi dengan Data Kejadian DAMAKESMAS ', '2020', 'Dual XeonÂ® Processor Silver 4110(8 Core)', '32GB', '4TB', 'Linux CenOs 7', 'PHP 5.6 dan PHP 7', 'Apache', 'Mysql', 'javascript', 3, '-', 0, '-', '-', '-', 'anggita', '2020-08-13 09:58:52'),
(67, 154, 'Berkas data, informasi dan file berekstensi dokumen, JSON, CSV.', 'Berkas data, informasi dan file berekstensi dokumen, JSON, CSV. Dan pemetaan dari dokumen tersebut berdasarkan kategorinya. Riwayat dokumen dan laporan dokumen berdasarkan tanggal. Grafik garis dan batang yang dapat diexport menjadi gambar JPG dan PNG.', 'v1.0', 1, 'PHP', 'belum', 'Awal versi', 'noada', '', '2015', 'IntelÂ® XeonÂ® Processor Silver 4110 (8 Cores, 2.10 GHz)', '32GB', '5,5TB', 'Linux CenOs 7.5', 'PHP 5.6 dan PHP 7', 'Apache', 'MySQL', 'Javascript', 3, '-', 80000000, '-', 'Universitas Udayana', '', 'agungpriambada', '2020-10-12 08:07:50'),
(68, 156, 'Informasi Data berupa text, gambar dan lainnya.\r\n- Informasi Artikel, berita, pengumuman\r\n- Jadwal Agenda, File (.doc,xls,dll)\r\n- Jejak Pendapat', 'Informasi Data berupa text, gambar dan lainnya.\r\n- Agenda, Pengumuman, \r\n- File Download', 'v2.0', 1, 'PHP', '-', 'Perubahan tampilan aplikasi agar dinamis dan responsive supaya user friendly dengan perangkat mobile. Pengembangan dilakukan tanggal 11/29/2016', 'ada', 'Terintegrasi dengan web subdomain denpasarkota.go.id seperti web OPD, Desa dan Kecamatan di Kota Denpasar. Juga terintegrasi dengan 2 aplikasi yaitu Pusat Data Kota Denpasar dan Pengaduan (Pro Denpasar). Integrasi di sini hanya berupa informasi masing-masing aplikasi yang ditayangkan pada halaman beranda web utama.', '2016', 'Intel(R) Xeon(R) CPU E5-630 @ 2.53GHz (8 Core)', '4GB', '60GB', 'Linux CenOs 7.5', 'PHP 5.6 & 7', 'Apache', 'MySQL', 'Javascript', 1, '-', 48730000, '-', 'CV. Rumah Media', ' 0361426623', 'agungpriambada', '2020-10-12 08:38:46');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_aplikasi`
--

CREATE TABLE `kategori_aplikasi` (
  `id_kat_aplikasi` int(11) NOT NULL,
  `kat_aplikasi` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_aplikasi`
--

INSERT INTO `kategori_aplikasi` (`id_kat_aplikasi`, `kat_aplikasi`) VALUES
(1, 'Pusat'),
(2, 'Lokal');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_database`
--

CREATE TABLE `kategori_database` (
  `id_kat_database` int(11) NOT NULL,
  `nama_kat_database` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_database`
--

INSERT INTO `kategori_database` (`id_kat_database`, `nama_kat_database`) VALUES
(1, 'MySQL'),
(2, 'SQL Server'),
(3, 'Oracle'),
(4, 'Access');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_lok_server`
--

CREATE TABLE `kategori_lok_server` (
  `id_lok_server` int(11) NOT NULL,
  `nama_lok_server` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_lok_server`
--

INSERT INTO `kategori_lok_server` (`id_lok_server`, `nama_lok_server`) VALUES
(1, 'CLOUD SERVER'),
(2, 'SERVER PORTAL DI GSD'),
(3, 'SERVER PENGADUAN GSD'),
(4, 'SERVER CLOUD PAK GUSDE');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_media`
--

CREATE TABLE `kategori_media` (
  `id_media` int(11) NOT NULL,
  `nama_kat_media` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_media`
--

INSERT INTO `kategori_media` (`id_media`, `nama_kat_media`) VALUES
(1, 'Website'),
(2, 'Mobile'),
(3, 'Dekstop'),
(4, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `klasifikasi_aplikasi`
--

CREATE TABLE `klasifikasi_aplikasi` (
  `id_klasifikasi_app` int(11) NOT NULL,
  `nama_klasifikasi_app` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `klasifikasi_aplikasi`
--

INSERT INTO `klasifikasi_aplikasi` (`id_klasifikasi_app`, `nama_klasifikasi_app`) VALUES
(1, 'Khusus'),
(2, 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_laporan`
--

CREATE TABLE `tbl_jenis_laporan` (
  `id_jenis_laporan` int(11) NOT NULL,
  `nama_jenis_laporan` varchar(100) NOT NULL,
  `bidang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jenis_laporan`
--

INSERT INTO `tbl_jenis_laporan` (`id_jenis_laporan`, `nama_jenis_laporan`, `bidang`) VALUES
(1, 'Server', '03080104'),
(2, 'Aplikasi', '03080103'),
(3, 'Jaringan', '03080104'),
(4, 'Data', '03080102'),
(5, 'Informasi', '03080105');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_monev`
--

CREATE TABLE `tbl_kategori_monev` (
  `id_kat_monev` int(11) NOT NULL,
  `nama_kategori_monev` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori_monev`
--

INSERT INTO `tbl_kategori_monev` (`id_kat_monev`, `nama_kategori_monev`) VALUES
(1, 'Database'),
(2, 'Jaringan'),
(3, 'Server'),
(4, 'Desain'),
(5, 'Fitur'),
(6, 'Lain - Lain');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lapormasalah`
--

CREATE TABLE `tbl_lapormasalah` (
  `id_lapormasalah` int(11) NOT NULL,
  `jns_laporan` int(11) NOT NULL,
  `nama_app` int(11) NOT NULL,
  `permasalahan` text NOT NULL,
  `bukti_lapor` text NOT NULL,
  `nama_input` varchar(100) NOT NULL,
  `status_lapor` int(11) NOT NULL,
  `kat_tl_lapor` int(11) NOT NULL,
  `dlu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_lapormasalah`
--

INSERT INTO `tbl_lapormasalah` (`id_lapormasalah`, `jns_laporan`, `nama_app`, `permasalahan`, `bukti_lapor`, `nama_input`, `status_lapor`, `kat_tl_lapor`, `dlu`) VALUES
(3, 1, 5, 'hhhhh', 'Panduan Penggunaan Sistem esewakadharma Rev1.pdf', 'putuokky', 2, 1, '2020-06-17 10:54:21'),
(4, 3, 6, 'gak isi filee', '', 'putuokky', 2, 1, '2020-06-17 00:06:55'),
(5, 2, 181, 'gggggg', 'bali.pdf', 'putuokky', 1, 0, '2020-06-17 11:27:21'),
(6, 5, 181, 'yyyyyy', 'kuisioner.pdf', 'opkominfo', 1, 0, '2020-06-26 12:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monev_app`
--

CREATE TABLE `tbl_monev_app` (
  `id_monev_app` int(11) NOT NULL,
  `nama_app` int(11) NOT NULL,
  `kategori_monev` int(11) NOT NULL,
  `masalah` mediumtext NOT NULL,
  `bukti_dukung` mediumtext NOT NULL,
  `solusi_pengembang` mediumtext NOT NULL,
  `nama_team` varchar(50) NOT NULL,
  `status_monev` int(11) NOT NULL,
  `dlu_monev` datetime NOT NULL,
  `respon_koor` mediumtext,
  `nama_koor` varchar(50) DEFAULT NULL,
  `dlu_respon_koor` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_monev_app`
--

INSERT INTO `tbl_monev_app` (`id_monev_app`, `nama_app`, `kategori_monev`, `masalah`, `bukti_dukung`, `solusi_pengembang`, `nama_team`, `status_monev`, `dlu_monev`, `respon_koor`, `nama_koor`, `dlu_respon_koor`) VALUES
(5, 5, 1, 'mau donk', 'tte-000020-SRT-062020.pdf', 'harus bisa ', 'putuokky', 2, '2020-06-06 17:49:15', 'Tes', '198404062009031006', '2020-06-06 18:16:06'),
(6, 73, 2, 'Eror koneksi', 'Eksport_Rekap_Surat_Request_.pdf', 'Tes', 'veriandriawan', 2, '2020-06-06 18:07:44', 'Kembangkan aplikasi', '198404062009031006', '2020-06-06 18:14:34'),
(7, 75, 3, 'T', '', 'Yyy', 'veriandriawan', 1, '2020-06-06 18:26:49', NULL, NULL, NULL),
(8, 72, 1, 'Ttt', 'laporan pekerja informal 31 mei 2020.pdf', 'Ttjvxxcv', 'veriandriawan', 1, '2020-06-06 18:29:25', NULL, NULL, NULL),
(9, 145, 5, 'ha ahahahaha', 'jadwal FGD SC.pdf', 'wkwkwkwkwk', 'putuokky', 1, '2020-06-06 18:32:52', NULL, NULL, NULL),
(10, 73, 5, 'Lapar', '', 'Makan', 'agungpriambada', 1, '2020-06-06 20:31:31', NULL, NULL, NULL),
(11, 163, 5, 'Tampilan kurang responsif', 'Buku Panduan - SIM Kependudukan (tanpa KAK).pdf', 'Bangun baru', 'putuokky', 2, '2020-06-08 09:52:35', 'ok lanjutkan', 'veriandriawan', '2020-06-18 14:29:44'),
(12, 143, 2, 'tes', 'shiff SC bulan juli-Agustus.pdf', 'tes coba', 'veriandriawan', 1, '2020-07-27 10:26:29', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_respon_tl`
--

CREATE TABLE `tbl_respon_tl` (
  `id_respon_tl` int(11) NOT NULL,
  `id_lapormasalah` int(11) NOT NULL,
  `kat_tl_respon` int(11) NOT NULL,
  `respon_tl` text NOT NULL,
  `user_tl` varchar(100) NOT NULL,
  `dlu_tl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_respon_tl`
--

INSERT INTO `tbl_respon_tl` (`id_respon_tl`, `id_lapormasalah`, `kat_tl_respon`, `respon_tl`, `user_tl`, `dlu_tl`) VALUES
(1, 3, 1, 'aaaa', 'putuokky', '2020-06-26 11:56:07'),
(2, 3, 2, 'sssss', 'putuokky', '2020-06-26 12:15:07'),
(3, 4, 1, 'sssss', 'putuokky', '2020-06-26 12:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_katindex`
--

CREATE TABLE `tbl_user_katindex` (
  `id_user_katindex` int(11) NOT NULL,
  `user_katindex` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_katindex`
--

INSERT INTO `tbl_user_katindex` (`id_user_katindex`, `user_katindex`) VALUES
(1, 'SPBE'),
(2, 'IKCI'),
(3, 'Aplikasi'),
(4, 'Start Up Digital');

-- --------------------------------------------------------

--
-- Table structure for table `tb_aspek`
--

CREATE TABLE `tb_aspek` (
  `id_aspek` int(11) NOT NULL,
  `domain` int(11) NOT NULL,
  `nama_aspek` varchar(100) NOT NULL,
  `bobot_aspek` decimal(10,2) NOT NULL,
  `target_aspek` int(11) NOT NULL,
  `urutan_aspek` int(11) NOT NULL,
  `user_katindex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_aspek`
--

INSERT INTO `tb_aspek` (`id_aspek`, `domain`, `nama_aspek`, `bobot_aspek`, `target_aspek`, `urutan_aspek`, `user_katindex`) VALUES
(1, 1, 'Kebijakan Internal Terkait Tata Kelola SPBE', '7.00', 3, 1, 1),
(2, 2, 'Perencanaan Strategis SPBE', '10.00', 3, 2, 1),
(3, 2, 'Teknologi Informasi dan Komunikasi', '8.00', 3, 3, 1),
(4, 2, 'Penyelenggara SPBE', '8.00', 3, 4, 1),
(5, 14, 'Penerapan Manajemen SPBE', '12.00', 3, 5, 1),
(6, 3, 'Layanan Administrasi Pemerintah Berbasis Elektronik', '35.00', 3, 6, 1),
(7, 3, 'Layanan Publik Berbasis Elektronik', '20.00', 3, 7, 1),
(8, 4, 'Bangunan Cerdas Cerdas', '0.08', 0, 1, 0),
(9, 4, 'Manajemen Sumber Daya', '0.29', 0, 2, 0),
(10, 4, 'Perencanaan Berkelanjutan', '0.63', 0, 3, 0),
(11, 5, 'Transportasi yang Efisien', '0.36', 0, 1, 0),
(12, 5, 'Akses Multi Moda', '0.40', 0, 2, 0),
(13, 5, 'Infrastruktur Teknologi', '0.25', 0, 3, 0),
(14, 6, 'Layanan Daring', '0.32', 0, 1, 0),
(15, 6, 'Infrastruktur Pendukung Sistem', '0.28', 0, 2, 0),
(16, 6, 'Keterbukaan Data Pemerintahan', '0.39', 0, 3, 0),
(17, 7, 'Kewirausahaan dan Inovasi', '0.37', 0, 1, 0),
(18, 7, 'Produktivitas', '0.27', 0, 2, 0),
(19, 7, 'Jaringan Bisnis Dalam dan Luar Negeri', '0.36', 0, 3, 0),
(20, 8, 'Inklusivitas Sosial', '0.25', 0, 1, 0),
(21, 8, 'Pendidikan', '0.20', 0, 2, 0),
(22, 8, 'Kreativitas', '0.55', 0, 3, 0),
(23, 9, 'Budaya dan Kesejahteraan', '0.30', 0, 1, 0),
(24, 9, 'Keamanan', '0.24', 0, 2, 0),
(25, 9, 'Kesehatan', '0.46', 0, 3, 0),
(27, 14, 'Audit TIK', '10.00', 3, 6, 1),
(28, 15, 'Layanan Administrasi Pemerintahan Berbasis Elektronik', '10.00', 3, 7, 1),
(29, 15, 'Layanan Publik Berbasis Elektronik', '10.00', 3, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_aspek_nilai`
--

CREATE TABLE `tb_aspek_nilai` (
  `id_aspek_nilai` int(11) NOT NULL,
  `aspek` int(11) NOT NULL,
  `nilai_aspek` decimal(10,2) NOT NULL,
  `domain` int(11) NOT NULL,
  `indeks_nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_aspek_nilai`
--

INSERT INTO `tb_aspek_nilai` (`id_aspek_nilai`, `aspek`, `nilai_aspek`, `domain`, `indeks_nilai`) VALUES
(1, 1, '2.00', 1, 1),
(2, 2, '2.10', 1, 1),
(3, 3, '2.00', 2, 1),
(4, 4, '2.50', 2, 1),
(5, 5, '2.33', 2, 1),
(6, 6, '3.29', 3, 1),
(7, 7, '2.50', 3, 1),
(8, 8, '0.83', 4, 2),
(9, 9, '2.88', 4, 2),
(10, 10, '6.29', 4, 2),
(11, 11, '2.67', 5, 2),
(12, 12, '2.99', 5, 2),
(13, 13, '1.84', 5, 2),
(14, 14, '2.91', 6, 2),
(15, 15, '2.57', 6, 2),
(16, 16, '3.57', 6, 2),
(17, 17, '2.56', 7, 2),
(18, 18, '1.84', 7, 2),
(19, 19, '2.49', 7, 2),
(20, 20, '2.58', 8, 2),
(21, 21, '2.13', 8, 2),
(22, 22, '5.79', 8, 2),
(23, 23, '3.17', 9, 2),
(24, 24, '2.51', 9, 2),
(25, 25, '4.77', 9, 2),
(26, 1, '3.00', 1, 3),
(27, 2, '3.00', 1, 3),
(28, 3, '3.50', 2, 3),
(29, 4, '3.00', 2, 3),
(30, 5, '2.67', 2, 3),
(31, 6, '3.57', 3, 3),
(32, 7, '3.67', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_datapendukung`
--

CREATE TABLE `tb_datapendukung` (
  `iddata` int(11) NOT NULL,
  `idevaluasi` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_datapendukung`
--

INSERT INTO `tb_datapendukung` (`iddata`, `idevaluasi`, `keterangan`) VALUES
(1, 1, ''),
(2, 2, ''),
(3, 3, ''),
(4, 4, ''),
(5, 5, ''),
(6, 6, ''),
(7, 7, ''),
(8, 8, ''),
(9, 9, ''),
(10, 10, ''),
(11, 11, ''),
(12, 12, ''),
(13, 13, ''),
(14, 14, ''),
(15, 15, ''),
(16, 16, ''),
(17, 17, ''),
(18, 18, ''),
(19, 19, ''),
(20, 20, ''),
(21, 21, ''),
(22, 22, ''),
(23, 23, ''),
(24, 24, ''),
(25, 25, ''),
(26, 26, ''),
(27, 27, ''),
(28, 28, ''),
(29, 29, ''),
(30, 30, ''),
(31, 31, ''),
(32, 32, ''),
(33, 33, ''),
(34, 34, ''),
(35, 35, ''),
(36, 36, ''),
(37, 37, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_indikator`
--

CREATE TABLE `tb_detail_indikator` (
  `id_detail_indikator` int(11) NOT NULL,
  `idindikator_detail` int(11) NOT NULL,
  `penjelasan_indikator_list` text NOT NULL,
  `penjelasan_indikator_level` text NOT NULL,
  `penjelasan_indikator_tambahan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_detail_indikator`
--

INSERT INTO `tb_detail_indikator` (`id_detail_indikator`, `idindikator_detail`, `penjelasan_indikator_list`, `penjelasan_indikator_level`, `penjelasan_indikator_tambahan`) VALUES
(1, 1, '-- Tim Pengarah SPBE adalah para pejabat dalam tim yang diberi tugas untuk mengendalikan, mengarahkan, dan evaluasi SPBE, termasuk perumusan kebijakan dan penerapan  SPBE di Instansi Pusat dan Pemerintah Daerah masing-masing.\r\n-- Tim Pengarah SPBE adalah para pejabat dalam tim yang diberi tugas untuk mengendalikan, mengarahkan, dan evaluasi SPBE, termasuk perumusan kebijakan dan penerapan  SPBE di Instansi Pusat dan Pemerintah Daerah masing-masing.\r\n-- Penjelasan masing-masing tingkat kematangan:', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal untuk mendukung tugas dan fungsi Tim Pengarah SPBE dimaksud.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal (belum ditetapkan) untuk mendukung tugas dan fungsi Tim Pengarah SPBE dimaksud.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang ditetapkan dan mencakup tugas-tugas Tim Pengarah SPBE yang dapat diterapkan hanya pada sebagian unit kerja atau sebagian perangkat daerah.\r\n;Level 3 = Kebijakan internal mencakup pengaturan tugas-tugas Tim Pengarah SPBE yang dapat diterapkan di semua unit kerja atau semua perangkat daerah.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki arah koordinasi, kerja sama, atau integrasi penerapan SPBE dengan Instansi Pusat/Pemerintah Daerah lain, yang dituangkan pada  tugas-tugas Tim Pengarah SPBE dalam kebijakan internal.\r\n;Level 5 = Kebijakan internal terkait Tim Pengarah SPBE dievaluasi secara berkala terkait penerapan kebijakan internal tersebut. Hasil-hasil evaluasi digunakan untuk memperbaiki kebijakan  tersebut agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.', ';;Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator1a.pdf, indikator1b.pdf, indikator1c.pdf, dan seterusnya.'),
(2, 2, '-- Proses Bisnis (alur kerja) adalah sekumpulan kegiatan yang terstruktur dan saling terkait dalam pelaksanaan tugas dan fungsi Instansi Pusat dan/atau Pemerintah Daerah.\r\n-- Proses Bisnis dapat berupa proses bisnis makro, meso, ataupun mikro (SOP) yang mendeskripisikan tugas dan fungsi Instansi Pusat/Pemerintah Daerah.\r\n-- Inovasi Proses Bisnis Terintegrasi adalah terobosan atau pembaharuan integrasi proses bisnis yang di inisiasi oleh Instansi Pusat dan/atau Pemerintah Daerah.\r\n-- Standardisasi penyusunan proses bisnis merupakan penyusunan proses bisnis yang sesuai dengan pedoman yang telah ditetapkan.\r\n-- Integrasi proses bisnis merupakan penyesuaian dan penyatuan antar proses bisnis unit kerja/perangkat daerah tertentu sehingga mencapai satu kesatuan proses bisnis Instansi Pusat/Pemerintah Daerah dengan seluruh tugas dan fungsinya. Integrasi proses bisnis juga dapat dilakukan antar proses bisnis Instansi Pusat, antar Pemerintah Daerah, dan/atau antar Instansi Pusat dan Pemerintah Daerah dalam membangun hubungan alur kerja antar Instansi Pusat, antar Pemerintah Daerah, dan/atau antar Instansi Pusat dan Pemerintah Daerah. \r\n-- Penjelasan masing-masing tingkat kematangan:', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal untuk mendukung standardisasi penyusunan proses bisnis dimaksud.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal untuk mendukung standardisasi penyusunan proses bisnis dimaksud \r\natau dalam proses penetapan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang mendukung standardisasi penyusunan proses bisnis dimaksud.\r\n;Level 3 = Kebijakan internal mendukung integrasi proses bisnis dalam Instansi Pusat/Pemerintah Daerah.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki arah untuk melakukan integrasi proses bisnis antar Instansi Pusat, antar Pemerintah Daerah, dan/atau antar Instansi Pusat dan Pemerintah Daerah.\r\n;Level 5 = Kebijakan internal terkait inovasi proses bisnis SPBE dievaluasi secara berkala terkait penerapan kebijakan internal tersebut. Hasil-hasil evaluasi  digunakan untuk memperbaiki kebijakan tersebut agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.', ';;Data pendukung dapat berupa dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator2a.pdf, indikator2b.pdf, indikator2c.pdf, dan seterusnya.'),
(3, 3, '-- Rencana Induk SPBE adalah dokumen perencanaan SPBE yang mendukung pelaksanaan SPBE dan mencakup visi dan misi SPBE, arsitektur SPBE, dan peta jalan SPBE.\r\n-- Visi dan misi SPBE merupakan pernyataan yang selaras dan mendukung terlaksananya visi dan misi Instansi Pusat/Pemerintah Daerah masing-masing.\r\n-- Arsitektur SPBE merupakan kerangka dasar yang mendeskripsikan arsitektur bisnis, arsitektur data, arsitektur aplikasi, arsitektur teknologi, dan arsitektur keamanan.\r\n-- Peta jalan SPBE berisi tahapan pelaksanaan SPBE yang diuraikan melalui program kegiatan, target keluaran, tahun pelaksanaan, dan perkiraan baiaya.\r\n-- Rencana Induk SPBE dikenal pula dengan nama Rencana Induk TIK, Master Plan TIK, rencana pengembangan TIK, Bue Print Pengembangan TIK, dan sejenisnya.\r\n-- Penjelasan masing-masing tingkat kematangan:', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal terkait Rencana Induk SPBE.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal terkait Rencana Induk SPBE dimaksud atau masih dalam proses pengesahan. \r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang ditetapkan dan pengaturan Rencana Induk SPBE mencakup sebagian muatan dari visi dan misi SPBE, arsitektur SPBE, atau peta jalan SPBE, berlaku pula pada Pengaturan Arsitektur SPBE yang hanya memuat sebagian dari arsitektur bisnis, arsitektur data, arsitektur aplikasi, arsitektur teknologi, atau arsitektur keamanan.\r\n;Level 3 = Kebijakan internal mendukung pengaturan Rencana Induk SPBE yang mencakup  keseluruhan muatan visi dan misi SPBE, arsitektur SPBE, dan peta jalan SPBE.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki arah kebijakan internal untuk melakukan integrasi SPBE antar Instansi Pusat, antar Pemerintah Daerah, dan/atau antar Instansi Pusat dan Pemerintah Daerah. Arsitektur SPBE harus dapat menggambarkan integrasi SPBE dan direncanakan dalam peta jalan SPBE.\r\n;Level 5 = Kebijakan internal terkait rencana induk SPBE dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk memperbaiki kebijakan agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.', ';;Data pendukung dapat berupa dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator3a.pdf, indikator3b.pdf, indikator3c.pdf, dan seterusnya.'),
(4, 4, '--Penjelasan Indikator : \r\nPerencanaan dan Penganggaran TIK adalah proses perencana dan penganggaran untuk belanja Teknologi Informasi dan Komunikasi di Instansi Pusat/Pemerintah Daerah yang disusun sesuai dengan proses perencanaan dan penganggaran tahunan pemerintah berdasarkan ketentuan peraturan perundang-undangan.\r\n\r\nPenjelasan masing-masing tingkat kematangan:', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal terkait perencanaan dan penganggaran TIK.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal untuk mendukung perencanaan dan penganggaran TIK \r\n                 dimaksud atau masih dalam proses pengesahan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang ditetapkan dan pengaturan perencanaan dan penganggaran TIK  \r\n                yang menyelaraskan dengan sebagian arsitektur SPBE atau sebagian peta jalan SPBE. \r\n;Level 3 = Kebijakan internal mendukung pengaturan perencanaan dan penganggaran TIK yang menyelaraskan dengan seluruh muatan arsitektur \r\n                 SPBE dan peta jalan SPBE dari Rencana Induk SPBE.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki arah kebijakan internal yang mendukung perencanaan dan penganggaran TIK untuk \r\n                 integrasi SPBE antar Instansi Pusat, antar Pemerintah Daerah dan/atau antar Instansi Pusat dan Pemerintah Daerah. \r\n;Level 5 = Kebijakan internal terkait perencanaan dan penganggaran TIK dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk memperbaiki \r\n                kebijakan internal agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.', ';;Data pendukung dapat berupa dokumen kebijakan terkait, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator4a.pdf, indikator4b.pdf, indikator4c.pdf, dan seterusnya.'),
(5, 5, '--Penjelasan Indikator : \r\nPusat data atau data center adalah fasilitas yang digunakan untuk penempatan sistem elektronik dan komponen terkait lainnya untuk keperluan penempatan, penyimpanan dan pengolahan data serta pemulihan data.\r\nPusat data harus memenuhi persyaratan atau standar internasional ANSI/TIA 942 atau Uptime Institute.\r\nPengoperasian pusat data merupakan perencanaan, pembangunan, pengembangan, penyediaan, pemeliharaan, dan pemanfaataan infrastruktur Pusat Data serta Teknologi Informasi dan Komunikasi.\r\nPusat Data Nasional adalah sekumpulan pusat data yang digunakan secara bersama dan bagi pakai oleh Instansi Pusat dan Pemerintah Daerah, dan saling terhubung yang terdiri atas pusat data yang diselenggarakan oleh Instansi Pusat/Pemerintah Daerah dengan memenuhi persyaratan pusat data atau pusat data yang dibangun khusus untuk digunakan secara bersama dan bagi pakai oleh Instansi Pusat dan Pemerintah Daerah.\r\nPenjelasan masing-masing tingkat kematangan:', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal terkait pengoperasian pusat data.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal untuk mendukung pengoperasian pusat data dimaksud atau masih \r\n                dalam proses pengesahan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang ditetapkan dan pengaturan pengoperasian pusat data mendukung \r\n                 pemanfaatan untuk sebagian unit kerja/perangkat daerah.\r\n;Level 3 = Kebijakan internal mendukung pengaturan pengoperasian pusat data untuk dimanfaatkan bagi semua unit kerja/perangkat daerah.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki arah kebijakan internal yang mendukung integrasi pusat data dengan pusat data yang \r\n                 diselenggarakan oleh Instansi Pusat/Pemerintah Daerah lain sebagai pusat data nasional. Instansi Pusat/Pemerintah Daerah sudah memiliki \r\n                 arah kebijakan internal untuk transisi pemanfaatan pusat data nasional.\r\n;Level 5 = Kebijakan internal terkait pengoperasian pusat data dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk memperbaiki kebijakan \r\n                internal agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.', ';;Data pendukung dapat berupa dokumen kebijakan terkait, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator5a.pdf, indikator5b.pdf, indikator5c.pdf, dan seterusnya.'),
(6, 6, '--Penjelasan Indikator : \r\nSistem aplikasi adalah satu atau sekumpulan program komputer dan prosedur yang dirancang untuk melakukan tugas atau fungsi layanan SPBE;\r\nIntegrasi sistem aplikasi dapat dilakukan melalui integrasi layanan SPBE, integrasi middleware, maupun integrasi data. Sebagai contoh integrasi sistem aplikasi kepegawaian antara sistem aplikasi kepegawaian Instansi Pusat/Pemerintah Daerah dengan sistem kepegawaian di Badan Kepegawaian Negara (BKN) untuk melakukan manajemen PNS secara terpadu.\r\nKelengkapan pengaturan integrasi sistem aplikasi dapat diukur dengan melihat cakupan integrasi sistem aplikasi pada rencana induk SPBE atau dokumen perencanaan integrasi sistem aplikasi.\r\nPenjelasan masing-masing tingkat kematangan:', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal untuk mendukung integrasi sistem aplikasi.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal untuk mendukung integrasi sistem aplikasi dimaksud atau masih \r\n                 dalam proses pengesahan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang ditetapkan dan mendukung pengaturan integrasi sistem aplikasi \r\n                 pada sebagian sistem aplikasi.  Hal ini dapat dibandingkan antara ketentuan pada kebijakan internal dengan rencana induk SPBE atau dokumen \r\n                 perencanaan integrasi sistem aplikasi.\r\n;Level 3 = Kebijakan internal mendukung pengaturan integrasi sistem aplikasi pada semua sistem aplikasi. Hal ini dapat dibandingkan antara ketentuan pada \r\n                 kebijakan internal dengan rencana induk SPBE atau dokumen perencanaan integrasi sistem aplikasi.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki arah kebijakan internal yang mendukung integrasi sistem aplikasi antar Instansi Pusat, antar \r\n                 Pemerintah Daerah, dan/atau antar Instansi Pusat dan Pemerintah Daerah.  \r\n;Level 5 = Kebijakan internal terkait integrasi sistem aplikasi dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk memperbaiki kebijakan internal agar \r\n                sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.\r\n', ';;Data pendukung dapat berupa dokumen kebijakan terkait, dokumen rencana induk SPBE pada bagian arsitektur aplikasi atau dokumen perencanaan integrasi sistem aplikasi, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator6a.pdf, indikator6b.pdf, indikator6c.pdf, dan seterusnya.'),
(7, 7, '--Penjelasan Indikator : \r\nÂ \r\nAplikasi Umum Berbagi Pakai adalah aplikasi SPBE yang sama, standar, dan digunakan secara berbagi pakai oleh Instansi Pusat dan/atau Pemerintah Daerah, seperti aplikasi naskah dinas elektronik, aplikasi manajemen kepegawaian, aplikasi penganggaran berbasis kinerja, aplikasi pengaduan publik (e-Lapor), dan sebagainya.\r\nKelengkapan pengaturan penggunaan aplikasi umum berbagi pakai dapat diukur dengan melihat cakupan aplikasi umum berbagi pakai pada arsitektur aplikasi dari rencana induk SPBE atau dokumen perencanaan penggunaan aplikasi umum berbagi pakai.\r\nPenjelasan masing-masing tingkat kematangan:', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal terkait penggunaan aplikasi umum berbagi pakai.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal untuk mendukung aplikasi umum berbagi pakai dimaksud atau masih \r\n                 dalam proses pengesahan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang ditetapkan dan mendukung pengaturan penggunaan aplikasi umum berbagi \r\n                 pakai pada sebagian aplikasi umum berbagi pakai. Hal ini dapat dibandingkan antara ketentuan pada kebijakan internal dengan arsitektur aplikasi   \r\n                 pada rencana induk SPBE atau dokumen perencanaan penggunaan aplikasi umum berbagi pakai.\r\n;Level 3 = Kebijakan internal mendukung pengaturan penggunaan seluruh aplikasi umum berbagi pakai.\r\n                 Hal ini dapat dibandingkan antara ketentuan pada kebijakan internal dengan arsitektur aplikasi pada rencana induk SPBE atau dokumen perencanaan \r\n                 penggunaan aplikasi umum berbagi pakai.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki arah kebijakan internal yang mendukung pengaturan integrasi antara aplikasi umum berbagi pakai \r\n                dan sistem aplikasi di Instansi Pusat/Pemerintah Daerah.\r\n;Level 5 = Kebijakan internal terkait penggunaan aplikasi umum berbagi pakai dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk memperbaiki \r\n                kebijakan internal agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.\r\n', ';;Data pendukung dapat berupa dokumen kebijakan terkait, dokumen rencana induk SPBE pada bagian arsitektur aplikasi atau dokumen perencanaan integrasi sistem aplikasi, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator7a.pdf, indikator7b.pdf, indikator7c.pdf, dan seterusnya'),
(8, 8, '--Penjelasan Indikator : \r\nÂ \r\nNaskah Dinas adalah informasi tertulis sebagai alat komunikasi kedinasan yang dibuat dan diterima oleh pejabat yang berwenang di lingkungan Instansi Pusat/Pemerintah Daerah dalam rangka penyelenggaraan tugas pemerintahan dan pembangunan;\r\nLayanan Naskah Dinas merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan naskah dinas;\r\nSistem Naskah Dinas Elektronik adalah suatu sistem layanan naskah dinas berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal terkait sistem naskah dinas elektronik.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal untuk mendukung sistem naskah dinas elektronik dimaksud atau masih \r\n                 dalam proses pengesahan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang ditetapkan dan mendukung pengaturan sistem naskah dinas elektronik \r\n                 pada sebagian kebutuhan. Hal ini dapat dibandingkan antara ketentuan pada kebijakan internal dan ketentuan pada pedoman tata naskah dinas di \r\n                 Instansi Pusat/Pemerintah Daerah masing-masing.\r\n;Level 3 = Kebijakan internal mendukung pengaturan seluruh kebutuhan sistem naskah dinas elektronik.\r\n                 Hal ini mencakup semua ketentuan pada pedoman tata naskah dinas telah dapat didukung oleh sistem naskah dinas elektronik.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki arah kebijakan internal yang mendukung kebutuhan integrasi sistem naskah dinas  sejenis antar \r\n                 Instansi Pusat/Pemerintah Daerah atau integrasi dengan sistem aplikasi lain di dalam Instansi Pusat/Pemerintah Daerah.\r\n                 Hal ini dapat dilihat pada arsitektur aplikasi dari rencana induk SPBE atau dokumen perencanaan integrasi sistem aplikasi. \r\n;Level 5 = Kebijakan internal terkait sistem naskah dinas elektronik dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk memperbaiki kebijakan \r\n                 internal agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.\r\n', ';;Data pendukung dapat berupa dokumen kebijakan terkait, dokumen pedoman tata naskah dinas, arsitektur aplikasi atau dokumen perencanaan integrasi sistem aplikasi, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator8a.pdf, indikator8b.pdf, indikator8c.pdf, dan seterusnya.'),
(9, 9, '--Penjelasan Indikator : \r\nÂ \r\nManajemen Kepegawaian adalah serangkaian proses untuk menghasilkan pengelolaan kepegawaian/PNS yang efektif, efisien, dan berkesinambungan serta berkualitas.\r\nLayanan Manajemen Kepegawaian merupakan tugas atau fungsi yang memberikan manfaat dalam manajemen kepegawaian/PNS untuk Instansi Pusat/Pemerintah Daerah.\r\nSistem Manajemen Kepegawaian dimaksud adalah suatu layanan manajemen kepegawaian yang berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal terkait sistem manajemen kepegawaian.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal untuk mendukung sistem manajemen kepegawaian dimaksud atau masih                  \r\n                 dalam proses pengesahan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang ditetapkan dan mendukung pengaturan sistem manajemen kepegawaian \r\n                 pada sebagian kebutuhan. Hal ini dapat dibandingkan antara ketentuan pada kebijakan internal dan ketentuan pada kebijakan manajemen \r\n                kepegawaian di Instansi Pusat/Pemerintah Daerah masing-masing.\r\n;Level 3 = Kebijakan internal mendukung pengaturan seluruh kebutuhan sistem manajemen kepegawaian.\r\n                 Hal ini mencakup semua ketentuan pada kebijakan manajemen kepegawaian telah dapat didukung oleh sistem manajemen kepegawaian.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki arah kebijakan internal yang mendukung kebutuhan integrasi sistem manajemen kepegawaian \r\n                dengan sistem manajemen kepegawaian Badan Kepegawaian Negara atau integrasi dengan sistem aplikasi lain di dalam Instansi Pusat/Pemerintah \r\n                 Daerah. Hal ini dapat dilihat pada arsitektur aplikasi dari rencana induk SPBE atau dokumen perencanaan integrasi sistem aplikasi. \r\n;Level 5 = Kebijakan internal terkait sistem manajemen kepegawaian dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk memperbaiki kebijakan \r\n                internal agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.\r\n', ';;Data pendukung dapat berupa dokumen kebijakan terkait, dokumen manajemen kepegawaian, arsitektur aplikasi atau dokumen perencanaan integrasi sistem aplikasi, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator9a.pdf, indikator9b.pdf, indikator9c.pdf, dan seterusnya.\r\n'),
(10, 10, '--Penjelasan Indikator : \r\nÂ 	\r\nManajemen Perencanaan dan Penganggaran adalah serangkaian proses untuk menghasilkan pengelolaan perencanaan dan penganggaran yang efektif, efisien, dan akuntabel.\r\nLayanan Manajemen Perencanaan dan Penganggaran merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan perencanaan dan anggaran Instansi Pusat/Pemerintah Daerah.\r\nSistem Manajemen Perencanaan dan Penganggaran dimaksud adalah suatu layanan manajemen perencanaan dan penganggaran berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal terkait sistem manajemen perencanaan dan penganggaran.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal untuk mendukung sistem manajemen perencanaan dan penganggaran \r\n                 dimaksud atau masih dalam proses pengesahan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang ditetapkan dan mendukung pengaturan sistem manajemen perencanaan \r\n                dan penganggaran pada sebagian kebutuhan. Hal ini dapat dibandingkan antara ketentuan pada kebijakan internal dan ketentuan pada kebijakan \r\n                manajemen perencanaan dan penganggaran di Instansi Pusat/Pemerintah Daerah masing-masing.\r\n;Level 3 = Kebijakan internal mendukung pengaturan seluruh kebutuhan sistem manajemen perencanaan dan penganggaran.\r\n                Hal ini mencakup semua ketentuan pada kebijakan manajemen perencanaan dan penganggaran telah dapat didukung oleh sistem manajemen \r\n                 perencanaan dan penganggaran.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki arah kebijakan internal yang mendukung kebutuhan integrasi sistem manajemen perencanaan dan \r\n                 penganggaran dengan sistem aplikasi lain di dalam Instansi Pusat/Pemerintah Daerah. Hal ini dapat dilihat pada arsitektur aplikasi dari rencana induk \r\n                 SPBE atau dokumen perencanaan integrasi sistem aplikasi. \r\n;Level 5 = Kebijakan internal terkait sistem manajemen perencanaan dan penganggaran dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk \r\n                 memperbaiki kebijakan internal agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.\r\n', ';;Data pendukung dapat berupa dokumen kebijakan terkait, dokumen manajemen perencanaan dan penganggaran, arsitektur aplikasi atau dokumen perencanaan integrasi sistem aplikasi, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator10a.pdf, indikator10b.pdf, indikator10c.pdf, dan seterusnya\r\n'),
(11, 11, '--Penjelasan Indikator : \r\n	\r\nManajemen Keuangan adalah serangkaian proses untuk menghasilkan pengelolaan keuangan yang efektif, efisien, dan akuntabel.\r\nLayanan Manajemen Keuangan merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan keuangan Instansi Pusat/Pemerintah Daerah.\r\nSistem Manajemen Keuangan dimaksud adalah suatu layanan manajemen keuangan berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal terkait sistem manajemen keuangan.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal untuk mendukung sistem manajemen keuangan dimaksud atau masih dalam proses pengesahan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang ditetapkan dan mendukung pengaturan sistem manajemen keuangan pada sebagian kebutuhan. Hal ini dapat dibandingkan antara ketentuan pada kebijakan internal dan ketentuan pada kebijakan manajemen keuangan di Instansi Pusat/Pemerintah Daerah masing-masing.\r\n;Level 3 = Kebijakan internal mendukung pengaturan seluruh kebutuhan sistem manajemen keuangan.\r\nHal ini mencakup semua ketentuan pada kebijakan manajemen keuangan telah dapat didukung oleh sistem manajemen keuangan.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki arah kebijakan internal yang mendukung kebutuhan integrasi sistem manajemen keuangan dengan sistem aplikasi lain di dalam Instansi Pusat/Pemerintah Daerah.\r\nHal ini dapat dilihat pada arsitektur aplikasi dari rencana induk SPBE atau dokumen perencanaan integrasi sistem aplikasi. \r\n;Level 5 = Kebijakan internal terkait sistem manajemen keuangan dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk memperbaiki kebijakan internal agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.\r\n', ';;Data pendukung dapat berupa dokumen kebijakan terkait, dokumen manajemen keuangan, arsitektur aplikasi atau dokumen perencanaan integrasi sistem aplikasi, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator11a.pdf, indikator11b.pdf, indikator11c.pdf, dan seterusnya.\r\n'),
(12, 12, '--Penjelasan Indikator : 	\r\nManajemen Kinerja adalah serangkaian proses untuk memastikan bahwa sasaran organisasi telah dicapai secara konsisten dalam cara-cara yang efektif dan efisien.\r\nLayanan Manajemen Kinerja merupakan tugas atau fungsi yang memberikan manfaat dalam pencapaian sasaran kinerja Instansi Pusat/Pemerintah Daerah.\r\nSistem Manajemen Kinerja dimaksud adalah suatu layanan manajemen kinerja berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal terkait sistem manajemen kinerja.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal untuk mendukung sistem manajemen kinerja dimaksud atau masih dalam \r\n                 proses pengesahan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang ditetapkan dan mendukung pengaturan sistem manajemen kinerja pada \r\n                sebagian kebutuhan. Hal ini dapat dibandingkan antara ketentuan pada kebijakan internal dan ketentuan pada kebijakan manajemen kinerja di \r\n                 Instansi Pusat/Pemerintah Daerah masing-masing.\r\n;Level 3 = Kebijakan internal mendukung pengaturan seluruh kebutuhan sistem manajemen kinerja.\r\n                 Hal ini mencakup semua ketentuan pada kebijakan manajemen kinerja telah dapat didukung oleh sistem manajemen kinerja.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki arah kebijakan internal yang mendukung kebutuhan integrasi sistem manajemen kinerja dengan \r\n                sistem aplikasi lain di dalam Instansi Pusat/Pemerintah Daerah.\r\n                 Hal ini dapat dilihat pada arsitektur aplikasi dari rencana induk SPBE atau dokumen perencanaan integrasi sistem aplikasi. \r\n;Level 5 = Kebijakan internal terkait sistem manajemen kinerja dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk memperbaiki kebijakan internal \r\n                agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.\r\n', ';;Data pendukung dapat berupa dokumen kebijakan terkait, dokumen kebijakan internal manajemen kinerja, arsitektur aplikasi pada rencana induk SPBE atau dokumen perencanaan integrasi sistem aplikasi, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator12a.pdf, indikator12b.pdf, indikator12c.pdf, dan seterusnya\r\n'),
(13, 13, '--Penjelasan Indikator : 	\r\nPengadaan adalah serangkaian proses pemenuhan atau penyediaan kebutuhan dan pasokan barang atau jasa di bawah kontrak atau pembelian langsung untuk memenuhi kebutuhan Instansi Pusat/Pemerintah Daerah.\r\nLayanan Pengadaan merupakan tugas atau fungsi yang memberikan manfaat dalam pengadaan barang dan jasa Instansi Pusat/Pemerintah Daerah.\r\nSistem Pengadaan Secara Elektronik dimaksud adalah Layanan Pengadaan Secara Elektronik yang memenuhi prinsip pengadaan barang dan jasa pemerintah.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal terkait sistem pengadaan secara elektronik.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal untuk mendukung sistem pengadaan secara elektronik dimaksud atau \r\n                 masih dalam proses pengesahan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang ditetapkan dan mendukung pengaturan pengadaan secara elektronik pada \r\n                 sebagian kebutuhan. Hal ini dapat dibandingkan antara ketentuan pada kebijakan internal dan ketentuan pada kebijakan pengadaan barang dan jasa \r\n                 pemerintah.\r\n;Level 3 = Kebijakan internal mendukung pengaturan seluruh kebutuhan sistem pengadaan secara elektronik.\r\n                 Hal ini mencakup semua ketentuan pada kebijakan pengadaan barang dan jasa pemerintah telah dapat didukung oleh sistem pengadaan secara \r\n                 elektronik.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki arah kebijakan internal yang mendukung kebutuhan integrasi sistem pengadaan secara elektronik \r\n                dengan sistem aplikasi lain di dalam Instansi Pusat/Pemerintah Daerah. Hal ini dapat dilihat pada arsitektur aplikasi dari rencana induk SPBE atau \r\n                dokumen perencanaan integrasi sistem aplikasi. \r\n;Level 5 = Kebijakan internal terkait sistem pengadaan secara elektronik dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk memperbaiki kebijakan \r\n                 internal agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.\r\n', ';;Data pendukung dapat berupa dokumen kebijakan terkait, arsitektur aplikasi pada rencana induk SPBE atau dokumen perencanaan integrasi sistem aplikasi, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator13a.pdf, indikator13b.pdf, indikator13c.pdf, dan seterusnya.\r\n'),
(14, 14, '--Penjelasan Indikator : 	\r\nPengaduan Publik adalah penyampaian aspirasi atau laporan masyarakat terhadap kinerja dan pelayanan yang diberikan oleh Instansi Pusat/Pemerintah Daerah.\r\nLayanan Pengaduan Publik merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan pengaduan masyarakat kepada Instansi Pusat/Pemerintah Daerah.\r\nSistem Pengaduan Publik dimaksud adalah layanan pengaduan publik berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal terkait sistem pengaduan publik.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal untuk mendukung sistem pengaduan publik dimaksud atau masih dalam \r\n                 proses pengesahan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang ditetapkan dan mendukung pengaturan sistem pengaduan publik pada \r\n                sebagian kebutuhan. Hal ini dapat dibandingkan antara ketentuan pada kebijakan internal dan ketentuan pada kebijakan manajemen pengaduan        \r\n                 publik di Instansi Pusat/Pemerintah Daerah masing-masing.\r\n;Level 3 = Kebijakan internal mendukung pengaturan seluruh kebutuhan sistem pengaduan publik.\r\n                Hal ini mencakup semua ketentuan pada kebijakan manajemen pengaduan publik telah dapat didukung oleh sistem pengaduan publik.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki arah kebijakan internal yang mendukung kebutuhan integrasi sistem pengaduan publik dengan \r\n                sistem aplikasi lain di dalam Instansi Pusat/Pemerintah Daerah. Hal ini dapat dilihat pada arsitektur aplikasi dari rencana induk SPBE atau dokumen \r\n                perencanaan integrasi sistem aplikasi. \r\n;Level 5 = Kebijakan internal terkait sistem pengaduan publik dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk memperbaiki kebijakan internal \r\n                 agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.\r\n', ';;Data pendukung dapat berupa dokumen kebijakan terkait, dokumen kebijakan internal manajemen pengaduan publik, arsitektur aplikasi pada rencana induk SPBE atau dokumen perencanaan integrasi sistem aplikasi, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator14a.pdf, indikator14b.pdf, indikator14c.pdf, dan seterusnya\r\n'),
(15, 15, '--Penjelasan Indikator : 	\r\nDokumentasi dan Informasi Hukum adalah wadah pendayagunaan bersama peraturan perundang-undangan dan bahan dokumentasi hukum lainnya secara tertib, terpadu dan berkesinambungan serta merupakan sarana pemberian pelayanan informasi hukum secara mudah, cepat dan akurat.\r\nLayanan Dokumentasi dan Informasi Hukum merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan dokumentasi dan informasi hukum kepada Instansi Pusat/Pemerintah Daerah.\r\nSistem Jaringan Dokumentasi dan Informasi Hukum (JDIH) dimaksud adalah layanan dokumentasi dan informasi hukum berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal terkait Sistem Jaringan Dokumentasi dan Informasi Hukum (JDIH).\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal untuk mendukung Sistem Jaringan Dokumentasi dan Informasi Hukum \r\n                (JDIH) dimaksud atau masih dalam proses pengesahan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang ditetapkan dan mendukung pengaturan Sistem Jaringan Dokumentasi dan \r\n                 Informasi Hukum (JDIH) publik pada sebagian kebutuhan. Hal ini dapat dibandingkan antara ketentuan pada kebijakan internal dan ketentuan pada \r\n                 kebijakan manajemen Dokumentasi dan Informasi Hukum di Instansi Pusat/Pemerintah Daerah masing-masing.\r\n;Level 3 = Kebijakan internal mendukung pengaturan seluruh kebutuhan Sistem Jaringan Dokumentasi dan Informasi Hukum (JDIH).\r\n                Hal ini mencakup semua ketentuan pada kebijakan manajemen Dokumentasi dan Informasi Hukum (JDIH) telah dapat didukung oleh Sistem Jaringan \r\n                Dokumentasi dan Informasi Hukum (JDIH).\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki arah kebijakan internal yang mendukung kebutuhan integrasi Sistem Jaringan Dokumentasi dan \r\n                 Informasi Hukum (JDIH) dengan Instansi Pusat/Pemerintah Daerah lain. Hal ini dapat dilihat pada arsitektur aplikasi dari rencana induk SPBE atau \r\n                dokumen perencanaan integrasi sistem aplikasi. \r\n;Level 5 = Kebijakan internal terkait Sistem Jaringan Dokumentasi dan Informasi Hukum (JDIH) dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk \r\n                memperbaiki kebijakan internal agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.\r\n', ';;Data pendukung dapat berupa dokumen kebijakan terkait, dokumen kebijakan manajemen dokumentasi dan informasi hukum, arsitektur aplikasi pada rencana induk SPBE atau dokumen perencanaan integrasi sistem aplikasi, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator15a.pdf, indikator15b.pdf, indikator15c.pdf, dan seterusnya.\r\n'),
(16, 16, '--Penjelasan Indikator : 	\r\nWhistle Blowing System (WBS) adalah sistem untuk memproses pengaduan/pemberian informasi yang  disampaikan  baik  secara langsung    maupun    tidak    langsung    sehubungan dengan    adanya perbuatan   yang   melanggar   perundang-undangan, peraturan/standar, kode  etik,  dan  kebijakan,  serta  tindakan  lain  yang sejenis berupa ancaman langsung atas kepentingan umum, serta Korupsi, Kolusi, dan Nepotisme (KKN) yang terjadi.\r\nLayanan Whistle Blowing System (WBS) merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan Whistle Blowing System (WBS) kepada Instansi Pusat/Pemerintah Daerah.\r\nWhistle Blowing System (WBS) dimaksud adalah layanan Whistle Blowing System (WBS) berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal terkait WBS.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal untuk mendukung WBS dimaksud atau masih dalam proses pengesahan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang ditetapkan dan mendukung pengaturan WBS pada sebagian kebutuhan.\r\n                 Hal ini dapat dibandingkan antara ketentuan pada kebijakan internal dan ketentuan pada kebijakan manajemen WBS di Instansi Pusat/Pemerintah \r\n                 Daerah masing-masing.\r\n;Level 3 = Kebijakan internal mendukung pengaturan seluruh kebutuhan WBS.\r\n                 Hal ini mencakup semua ketentuan pada kebijakan manajemen WBS telah dapat didukung oleh WBS.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki arah kebijakan internal yang mendukung kebutuhan integrasi WBS dengan sistem aplikasi lain di \r\n                dalam Instansi Pusat/Pemerintah Daerah. Hal ini dapat dilihat pada arsitektur aplikasi dari rencana induk SPBE atau dokumen perencanaan integrasi \r\n                sistem aplikasi. \r\n;Level 5 = Kebijakan internal terkait WBS dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk memperbaiki kebijakan internal agar sesuai dengan \r\n                 kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.\r\n', ';;Data pendukung dapat berupa dokumen kebijakan terkait, dokumen kebijakan manajemen WBS, arsitektur aplikasi pada rencana induk SPBE atau dokumen perencanaan integrasi sistem aplikasi, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator16a.pdf, indikator16b.pdf, indikator16c.pdf, dan seterusnya.\r\n'),
(17, 17, '--Penjelasan Indikator : 	\r\nPelayanan Publik adalah kegiatan atau rangkaian kegiatan dalam rangka pemenuhan kebutuhan pelayanan sesuai dengan peraturan perundang-undangan bagi setiap warga negara dan penduduk atas jasa, barang, dan/atau pelayanan administratif yang disediakan oleh penyelenggara pelayanan publik, dalam hal ini yang disediakan oleh Instansi Pusat/Pemerintah Daerah.\r\nLayanan Publik Instansi Pemerintah merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan layanan publik bagi Instansi Pusat/Pemerintah Daerah.\r\nSistem Pelayanan Publik dimaksud adalah layanan pengaduan publik berbasis elektronik yang dimiliki oleh Instansi Pusat/Pemerintah Daerah.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal untuk mendukung sistem pelayanan publik.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal untuk mendukung sistem pelayanan publik dimaksud atau masih dalam \r\n                 proses pengesahan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang mendukung sebagian kebutuhan sistem pelayanan publik.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang telah mendukung seluruh kebutuhan sistem pelayanan publik. \r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang mendukung kebutuhan sistem pelayanan publik antar Instansi \r\n                Pusat/Pemerintah Daerah atau secara eksternal. \r\n;Level 5 = Kebijakan internal yang mendukung kebutuhan sistem pelayanan publik dimaksud dioptimalkan, dapat dipantau secara terus-menerus, kemudian \r\n                dilakukan evaluasi secara berkala untuk menghasilkan rekomendasi pemutakhiran kebijakan dalam mendukung perubahan lingkungan, teknologi, dan \r\n                kebutuhan instansi.\r\n', ';;Data pendukung dapat berupa dokumen kebijakan terkait, dokumen kebutuhan, arsitektur aplikasi pada rencana induk SPBE atau dokumen perencanaan integrasi sistem aplikasi, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator17a.pdf, indikator17b.pdf, indikator17c.pdf, dan seterusnya.\r\n'),
(18, 18, '--Penjelasan Indikator : \r\nTim Pengarah SPBE adalah para pejabat dalam tim yang diberi tugas untuk mengendalikan, mengarahkan, dan evaluasi SPBE, termasuk perumusan kebijakan dan penerapan  SPBE di Instansi Pusat dan Pemerintah Daerah masing-masing.\r\nTim Pengarah SPBE Instansi Pemerintah dapat disejajarkan dengan Tim Pengarah TIK, Komite Pengarah TIK, ataupun Steering Committee yang mempunyai tugas seperti dimaksud pada huruf a).\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki tim dimaksud.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki tim yang belum ditetapkan (definitif), melakukan tugas dan fungsi dimaksud secara \r\n                 sementara dan  sesuai kebutuhan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki tim dimaksud yang ditetapkan (definitif) dan melaksanakan sebagian tugas dan \r\n                 fungsinya yang telah  ditetapkan.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki tim dimaksud yang ditetapkan (definitif) dan telah menjalankan seluruh tugas dan \r\n                 fungsinya.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah dapat memantau, menilai dan mengevaluasi tugas dan fungsi tim dimaksud secara berkala.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah dapat meningkatkan efektivitas dan efisiensi pelaksanaan tugas dan fungsi dari tim dimaksud \r\n                dari hasil evaluasi berkala.\r\n', ';;Data pendukung dapat berupa surat keputusan pembentukan Tim Pengarah SPBE, bukti evaluasi tugas dan fungsi Tim Pengarah SPBE, bukti perbaikan pelaksanaan tugas dan fungsinya, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator18a.pdf, indikator18b.pdf, indikator18c.pdf, dan seterusnya.\r\n'),
(19, 19, '--Penjelasan Indikator : \r\nProses Bisnis (alur kerja) adalah sekumpulan kegiatan yang terstruktur dan saling terkait dalam pelaksanaan tugas dan fungsi Instansi Pusat dan/atau Pemerintah Daerah.\r\nProses Bisnis dapat berupa proses bisnis makro, meso, ataupun mikro (SOP) yang mendeskripisikan tugas dan fungsi Instansi Pusat/Pemerintah Daerah.\r\nInovasi Proses Bisnis Terintegrasi adalah terobosan atau pembaharuan integrasi proses bisnis yang di inisiasi oleh Instansi Pusat/Pemerintah Daerah.\r\nStandardisasi penyusunan proses bisnis merupakan penyusunan proses bisnis yang sesuai dengan pedoman yang telah ditetapkan.\r\nIntegrasi proses bisnis merupakan penyesuaian dan penyatuan antar proses bisnis unit kerja/perangkat daerah tertentu sehingga mencapai satu kesatuan proses bisnis Instansi Pusat/Pemerintah Daerah dengan seluruh tugas dan fungsinya. Integrasi proses bisnis juga dapat dilakukan antar proses bisnis Instansi Pusat, antar Pemerintah Daerah, dan/atau antar Instansi Pusat dan Pemerintah Daerah dalam membangun hubungan alur kerja antar Instansi Pusat, antar Pemerintah Daerah, dan/atau antar Instansi Pusat dan Pemerintah Daerah. \r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Apabila Instansi Pusat/Pemerintah Daerah belum memiliki dokumen standardisasi proses bisnis dimaksud.\r\n;Level 1 = Apabila Instansi Pusat/Pemerintah Daerah sudah memiliki dokumen proses bisnis yang parsial dan belum terstandardisasi.\r\n;Level 2 = Apabila Instansi Pusat/Pemerintah Daerah sudah memiliki dokumen terstandardisasi proses bisnis tersebut dan menerapkan pada sebagian Unit kerja/Perangkat Daerah.\r\n;Level 3 = Apabila Instansi Pusat/Pemerintah Daerah sudah memiliki dokumen terstandardisasi proses bisnis tersebut dan menerapkan secara menyeluruh pada semua Unit Kerja/Perangkat Daerah.\r\n;Level 4 = Apabila Instansi Pusat/Pemerintah Daerah sudah menerapkan integrasi proses bisnis secara menyeleuruh dengan sistem elektronik, kemudian dapat dipantau dan dievaluasi secara berkala.\r\n;Level 5 = Apabila Instansi Pusat/Pemerintah Daerah sudah dapat meningkatkan efektivitas dan efisiensi integrasi proses bisnis dengan sistem elektronik secara berkesinambungan sebagai tindak lanjut hasil pemantauan dan evaluasi.\r\n', ';;Data pendukung dapat berupa dokumen proses bisnis yang terintegrasi, bukti evaluasi proses bisnis yang terintegrasi, bukti perbaikan proses bisnis yang terintegrasi, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator19a.pdf, indikator19b.pdf, indikator19c.pdf, dan seterusnya.\r\n');
INSERT INTO `tb_detail_indikator` (`id_detail_indikator`, `idindikator_detail`, `penjelasan_indikator_list`, `penjelasan_indikator_level`, `penjelasan_indikator_tambahan`) VALUES
(20, 20, '--Penjelasan Indikator : \r\nRencana Induk SPBE adalah dokumen perencanaan SPBE yang mendukung pelaksanaan SPBE dan mencakup visi dan misi SPBE, arsitektur SPBE, dan peta jalan SPBE. \r\nVisi dan misi SPBE merupakan pernyataan yang selaras dan mendukung terlaksananya visi dan misi Instansi Pusat/Pemerintah Daerah masing-masing. \r\nArsitektur SPBE merupakan kerangka dasar yang mendeskripsikan arsitektur bisnis, arsitektur data, arsitektur aplikasi, arsitektur teknologi, dan arsitektur keamanan.\r\nPeta jalan SPBE berisi tahapan pelaksanaan SPBE yang diuraikan melalui program kegiatan, target keluaran, tahun pelaksanaan, dan perkiraan baiaya.\r\nRencana Induk SPBE dikenal pula dengan nama Rencana Induk TIK, Master Plan TIK, rencana pengembangan TIK, Bue Print Pengembangan TIK, dan sejenisnya. Penjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki dokumen rencana induk SPBE dimaksud.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki konsep dokumen rencana induk SPBE dimaksud.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki dokumen rencana induk SPBE yang mencakup sebagian muatan visi dan misi SPBE, \r\n                 arsitektur SPBE, dan peta jalan SPBE.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki dokumen rencana induk SPBE yang mencakup semua muatan visi dan misi SPBE, \r\n                 arsitektur SPBE, dan peta jalan SPBE.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah menerapkan peta jalan SPBE secara konsisten melalui rencana kerja 3 (tiga) tahun terakhir \r\n                 kemudian dipantau dan dievaluasi secara berkala.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah dapat melakukan pemutakhiran peta jalan SPBE pada rencana induk SPBE secara \r\n                berkesinambungan sebagai tindak lanjut hasil pemantauan dan evaluasi.\r\n', ';;Data pendukung dapat berupa dokumen rencana induk SPBE, bukti evaluasi rencana induk SPBE termasuk rencana kerja 3 (tiga) tahun terakhir, bukti pemutakhiran rencana induk SPBE, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator20a.pdf, indikator20b.pdf, indikator20c.pdf, dan seterusnya.\r\n'),
(21, 21, '--Penjelasan Indikator : \r\n\r\nPerencanaan dan Penganggaran TIK adalah proses perencana dan penganggaran untuk belanja Teknologi Informasi dan Komunikasi di Instansi Pusat/Pemerintah Daerah yang disusun sesuai dengan proses perencanaan dan penganggaran tahunan pemerintah berdasarkan ketentuan peraturan perundang-undangan.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki perencanaan dan penganggaran TIK untuk penerapan SPBE.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki perencanaan dan penganggaran TIK untuk penerapan SPBE yang tertuang dalam \r\n                  rencana kerja tahunan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki perencanaan dan penganggaran TIK yang tertuang dalam rencana kerja tahunan dan \r\n                 sebagian dikonsultasikan kepada unit pengelola TIK.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki perencanaan dan penganggaran TIK yang tertuang dalam rencana kerja tahunan dan \r\n                 seluruhnya dikonsultasikan kepada unit pengelola TIK.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah menerapkan seluruh perencanaan dan penganggaran TIK yang tertuang dalam rencana kerja \r\n                 tahunan terintegrasi dan dapat dikendalikan di unit pengelola TIK, dapat dipantau dan dievaluasi secara berkala.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah menerapkan seluruh perencanaan dan penganggaran TIK yang tertuang dalam rencana kerja \r\n                 tahunan terintegrasi di unit pengelola TIK yang dipantau dan dievaluasi secara berkala sebagai rekomendasi penyusunan anggaran tahun \r\n                berikutnya.\r\n', ';;Data pendukung dapat berupa dokumen perencanaan dan penganggaran TIK, dokumen proses bisnis untuk perencanaan dan pengganggaran TIK, bukti evaluasi perencanaan dan penganggaran TIK, bukti perbaikan proses perencanaan dan penganggaran TIK, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator21a.pdf, indikator21b.pdf, indikator21c.pdf, dan seterusnya.\r\n'),
(22, 22, '--Penjelasan Indikator : \r\nPusat data atau data center adalah fasilitas yang digunakan untuk penempatan sistem elektronik dan komponen terkait lainnya untuk keperluan penempatan, penyimpanan dan pengolahan data serta pemulihan data.\r\nPusat data harus memenuhi persyaratan atau standar internasional ANSI/TIA-942 atau Uptime Institute.\r\nPengoperasian pusat data merupakan perencanaan, pembangunan, pengembangan, penyediaan, pemeliharaan, dan pemanfaataan infrastruktur Pusat Data serta Teknologi Informasi dan Komunikasi.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki pusat data dimaksud.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah menggunakan pusat data dari penyedia jasa pusat data non-pemerintah/swasta. \r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah menggunakan satu atau beberapa pusat data yang diselenggarakan dan dikendalikan oleh \r\n                beberapa unit kerja/perangkat daerah. Setiap pusat data telah memiliki SOP layanan pusat data. Belum semua unit kerja/perangkat \r\n               daerah memanfaatkan pusat data yang tersedia untuk pelaksanaan SPBE.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah menggunakan satu atau beberapa pusat data yang diselenggarakan dan dikendalikan oleh \r\n                beberapa unit kerja/perangkat daerah. Setiap pusat data telah memiliki SOP layanan pusat data. Semua unit kerja/perangkat daerah \r\n                memanfaatkan pusat data yang tersedia untuk pelaksanaan SPBE.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah menggunakan satu atau beberapa pusat data yang diselenggarakan dan dikendalikan oleh satu \r\n                 unit kerja/perangkat daerah. Perencanaan kapasitas dilakukan berdasarkan pemantauan dan analisis rekaman aktivitas layanan pusat \r\n                 data.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah meningkatkan kinerja layanan pusat data berdasarkan hasil pemantauan dan analisis layanan pusat \r\n                data.\r\n', ';;Data pendukung dapat berupa dokumen rancangan pusat data, dokumen SOP layanan pusat data, bukti evaluasi kinerja dan perencanaan kapasitas pusat data, bukti perbaikan layanan pusat data, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator22a.pdf, indikator22b.pdf, indikator22c.pdf, dan seterusnya.\r\n'),
(23, 23, '--Penjelasan Indikator : \r\nSistem aplikasi adalah satu atau sekumpulan program komputer dan prosedur yang dirancang untuk melakukan tugas atau fungsi layanan SPBE;\r\nIntegrasi sistem aplikasi dapat dilakukan melalui integrasi layanan SPBE, integrasi middleware, maupun integrasi data. Sebagai contoh integrasi sistem aplikasi kepegawaian antara sistem aplikasi kepegawaian Instansi Pusat/Pemerintah Daerah dengan sistem kepegawaian di Badan Kepegawaian Negara (BKN) untuk melakukan manajemen PNS secara terpadu.\r\nKelengkapan integrasi sistem aplikasi dapat diukur dengan melihat cakupan integrasi sistem aplikasi pada rencana induk SPBE atau perencanaan integrasi sistem aplikasi.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki rencana integrasi sistem aplikasi.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki integrasi sistem aplikasi, belum berdasarkan rencana induk SPBE atau perencanaan \r\n                 integrasi sistem aplikasi.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki perencanaan integrasi sistem aplikasi yang diterapkan sebagian sistem aplikasi atau \r\n                 diterapkan pada sebagian Unit kerja/Perangkat Daerah.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah menerapkan integrasi sistem aplikasi secara keseluruhan sesuai dengan perencanaan sistem \r\n                 aplikasi atau rencana induk SPBE.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah mampu mengendalikan penerapan integrasi agar berkinerja baik, kemudian dapat menilai \r\n                 secara kuantitatif dan mengevaluasi secara berkala.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah dapat mengembangkan integrasi sistem aplikasi secara optimal untuk meningkatkan efektivitas  \r\n                 dan efisiensi  terhadap perubahan lingkungan, teknologi dan kebutuhan Instansi Pusat/Pemerintah Daerah.\r\n', ';;Data pendukung dapat berupa dokumen arsitektur aplikasi pada rencana induk SPBE atau dokumen perencanaan integrasi sistem aplikasi, daftar sistem aplikasi yang telah terintegrasi, bukti evaluasi kinerja integrasi sistem aplikasi, bukti perbaikan kinerja integrasi sistem aplikasi, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator23a.pdf, indikator23b.pdf, indikator23c.pdf, dan seterusnya.\r\n'),
(24, 24, '--Penjelasan Indikator : \r\n\r\nAplikasi Umum Berbagi Pakai adalah aplikasi SPBE yang sama, standar, dan digunakan secara berbagi pakai oleh Instansi Pusat dan/atau Pemerintah Daerah, seperti aplikasi naskah dinas elektronik, aplikasi manajemen kepegawaian, aplikasi penganggaran berbasis kinerja, aplikasi pengaduan publik (e-Lapor), dan sebagainya.\r\nKelengkapan penggunaan aplikasi umum berbagi pakai dapat diukur dengan melihat cakupan aplikasi umum berbagi pakai pada arsitektur aplikasi dari rencana induk SPBE atau dokumen perencanaan penggunaan aplikasi umum berbagi pakai.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki rencana penggunaan aplikasi umum berbagi pakai.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki aplikasi umum berbagi pakai secara parsial, belum berdasarkan rencana penggunaan \r\n                 aplikasi berbagi pakai.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki rencana penggunaan aplikasi berbagi pakai yang diterapkan pada sebagian Unit \r\n                  kerja/Perangkat Daerah.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah menerapkan penggunaan aplikasi berbagi pakai secara keseluruhan sesuai dengan rencana.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah mampu mengendalikan penerapan aplikasi umum berbagi pakai agar berkinerja baik, kemudian \r\n                 dapat menilai secara kuantitatif dan mengevaluasi secara berkala.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah dapat mengembangkan penggunaan aplikasi berbagi pakai secara optimal untuk meningkatkan \r\n                 efektivitas dan efisiensi terhadap perubahan lingkungan, teknologi dan kebutuhan Instansi Pusat/Pemerintah Daerah.\r\nÂ \r\n', ';;Data pendukung dapat berupa dokumen arsitektur aplikasi pada rencana induk SPBE atau dokumen perencanaan penggunaan aplikasi umum berbagi pakai, daftar aplikasi umum berbagi pakai yang telah digunakan, bukti evaluasi kinerja aplikasi umum berbagi pakai, bukti perbaikan kinerja aplikasi umum berbagi pakai, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator24a.pdf, indikator24b.pdf, indikator24c.pdf, dan seterusnya.\r\n'),
(25, 25, '--Penjelasan Indikator :\r\n\r\nNaskah Dinas adalah informasi tertulis sebagai alat komunikasi kedinasan yang dibuat dan diterima oleh pejabat yang berwenang di lingkungan Instansi Pusat dan/atau Pemerintah Daerah dalam rangka penyelenggaraan tugas pemerintahan dan pembangunan;\r\nLayanan Naskah Dinas merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan naskah dinas;\r\nSistem Naskah Dinas Elektronik dimaksud adalah suatu layanan naskah dinas berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki sistem naskah dinas.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem naskah dinas yang menyediakan layanan diseminasi informasi yang bersifat satu \r\n                 arah ke pengguna layanan misalnya informasi tentang surat undangan, surat disposisi, dan surat resmi. \r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem naskah dinas elektronik menyediakan layanan interaksi seperti pencarian \r\n                 informasi, pengiriman (unggah) e-dokumen, dan penerimaan (unduh) e-dokumen berupa surat undangan, surat disposisi, dan surat \r\n                 resmi.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah memiliki sistem naskah dinas elektronik yang menyediakan layanan transaksi dimana pengguna dapat \r\n                 mengunggah e-dokumen dan memasukkan data/informasi ke dalam sistem, dan sistem dapat merespon kepada pengguna seperti \r\n                 mekanisme persetujuan, penyematan tanda tangan digital dan pengiriman e-dokumen ke tujuan penerima di lingkungan internal.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah memiliki sistem naskah dinas elektronik yang menyediakan layanan kolaborasi dimana layanan  \r\n                 persuratan sudah dapat berkolaborasi dengan Instansi Pusat/Pemerintah Daerah lainnya.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem naskah dinas elektronik yang dapat ditingkatkan/dikembangkan menyesuaikan \r\n                terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.\r\n', ';;Data pendukung dapat berupa dokumen penggunaan aplikasi, screenshot layanan aplikasi, daftar layanan dan fitur aplikasi, arsitektur aplikasi, pengelolaan repositori API, unit kerja yang menangani manajemen layanan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator25a.pdf, indikator25b.pdf, indikator25c.pdf, dan seterusnya.\r\n'),
(26, 26, '--Penjelasan Indikator : \r\n	\r\nManajemen Kepegawaian adalah serangkaian proses untuk menghasilkan pengelolaan kepegawaian/PNS yang efektif, efisien, dan berkesinambungan serta berkualitas.\r\nLayanan Manajemen Kepegawaian merupakan tugas atau fungsi yang memberikan manfaat dalam manajemen kepegawaian/PNS untuk Instansi Pusat dan/atau Pemerintah Daerah .\r\nSistem Manajemen Kepegawaian dimaksud adalah suatu layanan manajemen kepegawaian yang berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 =  Instansi Pusat/Pemerintah Daerah belum memiliki sistem manajemen kepegawaian.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen kepegawaian yang menyediakan layanan diseminasi informasi yang \r\n                bersifat satu arah ke pengguna layanan seperti informasi nomor NIP pegawai, riwayat jabatan, riwayat pendidikan, dan sebagainya. \r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki Sistem Informasi Kepegawaian namun belum dapat mencatat kinerja pegawai. \r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki Sistem Informasi Kepegawaian yang dapat memberikan layanan transaksi seperti \r\n                 mekanisme persetujuan kenaikan pangkat, proses pengajuan cuti, dan sebagainya.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen kepegawaian yang menyediakan layanan kolaborasi dimana Sistem \r\n                 Informasi Kepegawaian sudah dapat berkolaborasi/terintegrasi dengan sistem keuangan, naskah dinas elektronik, dan sebagainya.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen kepegawaian yang dapat ditingkatkan/dikembangkan \r\n                 menyesuaikan terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.\r\n', ';;Data pendukung dapat berupa dokumen penggunaan aplikasi, screenshot layanan aplikasi, daftar layanan dan fitur aplikasi, arsitektur aplikasi, pengelolaan repositori API, unit kerja yang menangani manajemen layanan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator26a.pdf, indikator26b.pdf, indikator26c.pdf, dan seterusnya.\r\n'),
(27, 27, '--Penjelasan Indikator : \r\n	\r\nManajemen Perencanaan adalah serangkaian proses untuk menghasilkan pengelolaan perencanaan yang efektif, efisien, dan akuntabel.\r\nLayanan Manajemen Perencanaan merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan perencanaan Instansi Pusat dan/atau Pemerintah Daerah .\r\nSistem Manajemen Perencanaan dimaksud adalah suatu layanan manajemen perencanaan berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki sistem manajemen perencanaan.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen perencanaan yang menyediakan layanan diseminasi informasi yang \r\n                 bersifat satu arah kepada pengguna layanan seperti informasi jumlah perencanaan kegiatan yang tersedia.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen perencanaan yang menyediakan layanan interaksi seperti mencari \r\n                 informasi dan mengunduh e-dokumen terkait perencanaan kegiatan.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen perencanaan yang menyediakan layanan transaksi dimana \r\n                 pengguna dapat mengunduh atau mengunggah informasi penganggaran, dan sistem dapat merespon kepada pengguna seperti \r\n                 mekanisme persetujuan dan validasi perencanaan kegiatan.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah layanan perencanaan yang dapat berkolaborasi dengan aplikasi keuangan dan penilaian kinerja \r\n                 Instansi Pusat dan Pemerintah Daerah atau aplikasi e-performance based budgeting.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen perencanaan yang dapat ditingkatkan/dikembangkan \r\n                  menyesuaikan terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.\r\n', ';;Data pendukung dapat berupa dokumen penggunaan aplikasi, screenshot layanan aplikasi, daftar layanan dan fitur aplikasi, arsitektur aplikasi, pengelolaan repositori API, unit kerja yang menangani manajemen layanan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator27a.pdf, indikator27b.pdf, indikator27c.pdf, dan seterusnya.\r\n'),
(28, 28, '--Penjelasan Indikator : \r\n	\r\nManajemen Penganggaran adalah serangkaian proses untuk menghasilkan pengelolaan penganggaran yang efektif, efisien, dan akuntabel.\r\nLayanan Manajemen Penganggaran merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan anggaran Instansi Pusat dan/atau Pemerintah Daerah.\r\nSistem Manajemen Penganggaran dimaksud adalah suatu layanan manajemen penganggaran berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki sistem manajemen penganggaran.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen penganggaran yang menyediakan layanan diseminasi informasi \r\n                 yang bersifat satu arah kepada pengguna layanan seperti informasi jumlah anggaran yang tersedia.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen penganggaran yang menyediakan layanan interaksi seperti mencari \r\n                 informasi, mengunduh e-dokumen terkait penganggaran, dan memasukkan usulan anggaran. \r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen penganggaran yang menyediakan layanan transaksi dimana \r\n                 pengguna dapat mengunduh atau mengunggah informasi penganggaran, dan sistem dapat merespon kepada pengguna seperti \r\n                 mekanisme persetujuan dan validasi penganggaran, serta analisis anggaran.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki layanan penganggaran yang dapat berkolaborasi dengan, misalnya, aplikasi \r\n                perencanaan dan penilaian kinerja Instansi Pusat dan/atau Pemerintah Daerah.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen penganggaran yang dapat ditingkatkan/dikembangkan \r\n                 menyesuaikan terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.\r\n', ';;Data pendukung dapat berupa dokumen penggunaan aplikasi, screenshot layanan aplikasi, daftar layanan dan fitur aplikasi, arsitektur aplikasi, pengelolaan repositori API, unit kerja yang menangani manajemen layanan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator28a.pdf, indikator28b.pdf, indikator28c.pdf, dan seterusnya.\r\n'),
(29, 29, '--Penjelasan Indikator : 	\r\nManajemen Keuangan adalah serangkaian proses untuk menghasilkan pengelolaan keuangan yang efektif, efisien, dan akuntabel.\r\nLayanan Manajemen Keuangan merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan keuangan Instansi Pusat/Pemerintah Daerah.\r\nSistem Manajemen Keuangan dimaksud adalah suatu layanan manajemen keuangan berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki sistem manajemen keuangan.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen keuangan yang menyediakan layanan diseminasi informasi bersifat \r\n                 satu arah kepada pengguna layanan seperti informasi administrasi keuangan, laporan keuangan. \r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen keuangan yang menyediakan layanan interaksi seperti mencari \r\n                 informasi dan mengunduh e-dokumen terkait administrasi keuangan, memasukkan data keuangan, dan informasi dashboard. \r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen keuangan yang menyediakan layanan transaksi dimana pengguna \r\n                 dapat mengunduh atau mengunggah informasi keuangan, dan sistem dapat merespon kepada pengguna seperti mekanisme persetujuan \r\n                dan validasi keuangan, dan analisis keuangan.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki layanan keuangan yang dapat berkolaborasi dengan aplikasi layanan lain seperti \r\n                 layanan pengadaan barang/jasa atau aplikasi Barang Milik Negara.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen keuangan yang dapat ditingkatkan/dikembangkan menyesuaikan \r\n                 terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.\r\n', ';;Data pendukung dapat berupa dokumen penggunaan aplikasi, screenshot layanan aplikasi, daftar layanan dan fitur aplikasi, arsitektur aplikasi, pengelolaan repositori API, unit kerja yang menangani manajemen layanan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator29a.pdf, indikator29b.pdf, indikator29c.pdf, dan seterusnya.\r\n'),
(30, 30, '--Penjelasan Indikator : 	\r\nManajemen Kinerja adalah serangkaian proses untuk memastikan bahwa sasaran organisasi telah dicapai secara konsisten dalam cara-cara yang efektif dan efisien.\r\nLayanan Manajemen Kinerja merupakan tugas atau fungsi yang memberikan manfaat dalam pencapaian sasaran Instansi Pusat/Pemerintah Daerah.\r\nSistem Manajemen Kinerja dimaksud adalah suatu layanan manajemen kinerja berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki sistem manajemen kinerja.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen kinerja yang menyediakan layanan diseminasi informasi yang \r\n                 bersifat satu arah seperti indikator dan target kinerja organisasi.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen kinerja yang menyediakan layanan interaksi seperti mencari \r\n                 informasi dan mengunggah kemajuan kinerja, menampilkan rasio kemajuan kinerja, menampilkan dashboard kinerja. \r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen kinerja yang menyediakan layanan transaksi dimana pengguna \r\n                 dapat mengunduh atau mengunggah informasi terkait kinerja, dan sistem dapat merespon kepada pengguna seperti mekanisme \r\n                 persetujuan kinerja organisasi dari atasan  dan validasi kinerja. \r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki layanan kinerja yang dapat dapat berkolaborasi dengan layanan SPBE lain seperti \r\n                aplikasi perencanaan dan penganggaran Instansi Pusat dan Pemerintah Daerah.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem manajemen kinerja yang dapat ditingkatkan/dikembangkan menyesuaikan terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.\r\n', ';;Data pendukung dapat berupa dokumen penggunaan aplikasi, screenshot layanan aplikasi, daftar layanan dan fitur aplikasi, arsitektur aplikasi, pengelolaan repositori API, unit kerja yang menangani manajemen layanan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator30a.pdf, indikator30b.pdf, indikator30c.pdf, dan seterusnya.\r\n'),
(31, 31, '--Penjelasan Indikator : 	\r\nPengadaan adalah serangkaian proses pemenuhan atau penyediaan kebutuhan dan pasokan barang atau jasa di bawah kontrak atau pembelian langsung untuk memenuhi kebutuhan Kementerian/Lembaga/ Pemerintah Daerah.\r\nLayanan Pengadaan merupakan tugas atau fungsi yang memberikan manfaat dalam pengadaan barang dan jasa Instansi Pusat dan/atau Pemerintah Daerah.\r\nSistem Pengadaan Secara Elektronik dimaksud adalah Layanan Pengadaan Secara Elektronik (LPSE) yang memenuhi prinsip pengadaan barang dan jasa pemerintah.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki sistem pengadaan secara elektronik.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pengadaan secara elektronik yang menyediakan layanan \r\n                diseminasi/penyebaran satu arah informasi seperti informasi daftar lelang barang dan jasa yang dibutuhkan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pengadaan secara elektronik yang menyediakan layanan interaksi seperti \r\n                 mencari informasi, mengunduh dan mengunggah dokumen terkait pengadaan.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pengadaan secara elektronik yang menyediakan layanan transaksi dimana \r\n                pengguna dapat mengunduh atau mengunggah informasi terkait pengadaan, dan sistem dapat merespon kepada pengguna seperti \r\n                mekanisme persetujuan dan validasi pada alur proses pengadaan.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki layanan pengadaan sudah dapat diintegrasikan secara horizontal ke layanan SPBE \r\n                 lainnya  seperti layanan manajemen penganggaran atau diintegrasikan dengan layanan SPBE instansi pemerintah lainnya.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pengadaan secara elektronik yang dapat ditingkatkan/dikembangkan \r\n                menyesuaikan terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.\r\n', ';;Data pendukung dapat berupa dokumen penggunaan aplikasi, screenshot layanan aplikasi, daftar layanan dan fitur aplikasi, arsitektur aplikasi, pengelolaan repositori API, unit kerja yang menangani manajemen layanan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator31a.pdf, indikator31b.pdf, indikator31c.pdf, dan seterusnya.\r\n'),
(32, 32, '--Penjelasan Indikator : 	\r\nPengaduan Publik adalah penyampaian aspirasi atau laporan masyarakat terhadap kinerja dan pelayanan yang diberikan oleh Instansi Pusat/Pemerintah Daerah.\r\nLayanan Pengaduan Publik merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan pengaduan masyarakat kepada Instansi Pusat dan/atau Pemerintah Daerah.\r\nSistem Pengaduan Publik dimaksud adalah layanan pengaduan publik berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki sistem pengaduan publik.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pengaduan publik yang menyediakan layanan diseminasi/penyebaran satu arah \r\n                 informasi seperti waktu respon dan tata cara pengaduan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pengaduan publik yang menyediakan layanan interaksi seperti mencari \r\n                 informasi dan menyampaikan pengaduan.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pengaduan publik yang menyediakan layanan transaksi dimana pengguna dapat \r\n                 menyampaikan pengaduan, dan sistem dapat merespon kepada pengguna seperti kemajuan penyelesaian pengaduan dan resolusi \r\n                 pengaduan.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pengaduan publik yang menyediakan layanan kolaborasi dimana layanan \r\n                 pengaduan publik diintegrasikan dengan suatu layanan seperti layanan manajemen kinerja, atau diintegrasikan dengan layanan SPBE  \r\n                 instansi pemerintah lain seperti layanan identifikasi penduduk (administrasi kependudukan). \r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pengaduan publik yang dapat ditingkatkan/dikembangkan menyesuaikan \r\n                 terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.\r\n', ';;Data pendukung dapat berupa dokumen penggunaan aplikasi, screenshot layanan aplikasi, daftar layanan dan fitur aplikasi, arsitektur aplikasi, pengelolaan repositori API, unit kerja yang menangani manajemen layanan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator32a.pdf, indikator32b.pdf, indikator32c.pdf, dan seterusnya.\r\n'),
(33, 33, '--Penjelasan Indikator : 	\r\nDokumentasi dan Informasi Hukum adalah wadah pendayagunaan bersama peraturan perundang-undangan dan bahan dokumentasi hukum lainnya secara tertib, terpadu dan berkesinambungan serta merupakan sarana pemberian pelayanan informasi hukum secara mudah, cepat dan akurat.\r\nLayanan Dokumentasi dan Informasi Hukum merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan dokumentasi dan informasi hukum kepada Kementerian/Lembaga/Pemerintah Daerah.\r\nSistem Jaringan Dokumentasi dan Informasi Hukum (JDIH) dimaksud adalah layanan dokumentasi dan informasi hukum berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki sistem jaringan dokumentasi dan informasi hukum (JDIH).\r\n;Level 1 =  Instansi Pusat/Pemerintah Daerah sudah memiliki sistem jaringan dokumentasi dan informasi hukum (JDIH) yang menyediakan layanan \r\n                  diseminasi/ penyebaran satu arah informasi seperti informasi hukum, regulasi, dsb. \r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem jaringan dokumentasi dan informasi hukum (JDIH) yang menyediakan layanan \r\n                interaksi seperti mencari informasi dan mengunduh dokumen terkait hukum.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem jaringan dokumentasi dan informasi hukum (JDIH) yang menyediakan layanan \r\n                 transaksi dimana pengguna dapat mengunggah informasi terkait hukum, dan sistem dapat merespon kepada pengguna seperti validasi \r\n                 informasi dan dokumen digital produk hukum. \r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem jaringan dokumentasi dan informasi hukum (JDIH) yang menyediakan layanan \r\n                 kolaborasi dimana layanan jaringan dokumentasi dan informasi hukum (JDIH) diintegrasikan dengan layanan SPBE instansi pemerintah \r\n                 lain seperti Kementerian Hukum dan HAM.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem jaringan dokumentasi dan informasi hukum (JDIH) yang dapat \r\n                 ditingkatkan/dikembangkan menyesuaikan terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.\r\nÂ \r\n', ';;Data pendukung dapat berupa dokumen penggunaan aplikasi, screenshot layanan aplikasi, daftar layanan dan fitur aplikasi, arsitektur aplikasi, pengelolaan repositori API, unit kerja yang menangani manajemen layanan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator33a.pdf, indikator33b.pdf, indikator33c.pdf, dan seterusnya.\r\n'),
(34, 34, '--Penjelasan Indikator : 	\r\nWhistle Blowing System (WBS) adalah sistem untuk memproses pengaduan/pemberian informasi yang  disampaikan  baik  secara langsung    maupun    tidak    langsung    sehubungan dengan    adanya perbuatan   yang   melanggar   perundang-undangan, peraturan/standar, kode  etik,  dan  kebijakan,  serta  tindakan  lain  yang sejenis berupa ancaman langsung atas kepentingan umum, serta Korupsi, Kolusi, dan Nepotisme (KKN) yang terjadi.\r\nLayanan Whistle Blowing System (WBS) merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan Whistle Blowing System (WBS) kepada Instansi Pusat dan/atau Pemerintah Daerah.\r\nWhistle Blowing System (WBS) dimaksud adalah layanan Whistle Blowing System (WBS) berbasis elektronik.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki WBS.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah dapat menerima informasi pengaduan dari pelapor. \r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki WBS yang menyediakan layanan interaksi seperti mencari informasi dan \r\n                 menyampaikan laporan.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki WBS yang menyediakan layanan transaksi dimana pengguna dapat menyampaikan \r\n                 laporan dan sistem dapat merespon kepada pengguna seperti kemajuan penyelesaian laporan, resolusi laporan, perlindungan \r\n                 kerahasiaan pelapor, penerapan mekanisme nirsangkal.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki WBS yang menyediakan layanan kolaborasi dimana layanan WBS diintegrasikan \r\n                 dengan suatu layanan seperti layanan manajemen kinerja atau diintegrasikan dengan layanan SPBE instansi pemerintah lain.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah memiliki WBS yang dapat ditingkatkan/dikembangkan menyesuaikan terhadap perubahan \r\n                 lingkungan, teknologi dan kebutuhan instansi.\r\n', ';;Data pendukung dapat berupa dokumen penggunaan aplikasi, screenshot layanan aplikasi, daftar layanan dan fitur aplikasi, arsitektur aplikasi, pengelolaan repositori API, unit kerja yang menangani manajemen layanan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator34a.pdf, indikator34b.pdf, indikator34c.pdf, dan seterusnya.\r\n'),
(35, 35, '--Penjelasan Indikator : 	\r\nPelayanan Publik adalah kegiatan atau rangkaian kegiatan dalam rangka pemenuhan kebutuhan pelayanan sesuai dengan peraturan perundang-undangan bagi setiap warga negara dan penduduk atas jasa, barang, dan/atau pelayanan administratif yang disediakan oleh penyelenggara pelayanan publik, dalam hal ini yang disediakan oleh Instansi Pusat/Pemerintah Daerah.\r\nLayanan Publik Instansi Pemerintah merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan layanan publik bagi Instansi Pusat dan/atau Pemerintah Daerah.\r\nSistem Pelayanan Publik dimaksud adalah layanan pengaduan publik berbasis elektronik yang dimiliki oleh Instansi Pusat dan/atau Pemerintah Daerah.\r\nInstansi Pusat/Pemerintah Daerah memberikan informasi paling tidak 3 (tiga) Sistem pelayanan publik yang ada pada instansinya.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki sistem pelayanan publik.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang menyediakan layanan diseminasi/penyebaran satu arah \r\n                 informasi seperti informasi layanan yang diberikan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang menyediakan layanan interaksi seperti mencari informasi \r\n                 dan menyampaikan permohonan pelayanan.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang menyediakan layanan transaksi dimana pengguna dapat \r\n                 menyampaikan permohonan pelayanan dan sistem dapat merespon kepada pengguna seperti kemajuan proses permohonan pelayanan,  \r\n                 verifikasi dan validasi informasi.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang menyediakan layanan kolaborasi dimana layanan publik \r\n                 diintegrasikan dengan suatu layanan seperti layanan identifikasi penduduk (administrasi kependudukan) atau diintegrasikan dengan \r\n                layanan SPBE instansi pemerintah lain.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang dapat ditingkatkan/dikembangkan menyesuaikan \r\n                 terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.\r\n\r\n', ';;Penjelasan: Layanan Publik terbaik 1\r\nNama Aplikasi : Pelayanan Rakyat Online (PRO) Denpasar\r\nTujuan : Menyediakan layanan pengaduan online\r\nPengguna : Masyarakat\r\nInput dan output : Input Laporan pengaduan. Output tindak lanjut pengaduan, map/lokasi titik pengaduan dan jenis-jenis laporan \r\nPengembang aplikasi : CV. Avatar\r\nDeskripsi pemilihan tingkat kematangan : Level 5\r\n\r\nData pendukung dapat berupa dokumen penggunaan aplikasi, screenshot layanan aplikasi, daftar layanan dan fitur aplikasi, arsitektur aplikasi, pengelolaan repositori API, unit kerja yang menangani manajemen layanan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator35-1a.pdf, indikator35-1b.pdf, indikator35-1c.pdf, dan seterusnya.\r\nÂ \r\n'),
(36, 36, '--Penjelasan Indikator : 	\r\nPelayanan Publik adalah kegiatan atau rangkaian kegiatan dalam rangka pemenuhan kebutuhan pelayanan sesuai dengan peraturan perundang-undangan bagi setiap warga negara dan penduduk atas jasa, barang, dan/atau pelayanan administratif yang disediakan oleh penyelenggara pelayanan publik, dalam hal ini yang disediakan oleh Instansi Pusat/Pemerintah Daerah.\r\nLayanan Publik Instansi Pemerintah merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan layanan publik bagi Instansi Pusat dan/atau Pemerintah Daerah.\r\nSistem Pelayanan Publik dimaksud adalah layanan pengaduan publik berbasis elektronik yang dimiliki oleh Instansi Pusat dan/atau Pemerintah Daerah.\r\nInstansi Pusat/Pemerintah Daerah memberikan informasi paling tidak 3 (tiga) Sistem pelayanan publik yang ada pada instansinya.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki sistem pelayanan publik.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang menyediakan layanan diseminasi/penyebaran satu arah \r\n                 informasi seperti informasi layanan yang diberikan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang menyediakan layanan interaksi seperti mencari informasi \r\n                 dan menyampaikan permohonan pelayanan.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang menyediakan layanan transaksi dimana pengguna dapat \r\n                 menyampaikan permohonan pelayanan dan sistem dapat merespon kepada pengguna seperti kemajuan proses permohonan pelayanan,  \r\n                 verifikasi dan validasi informasi.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang menyediakan layanan kolaborasi dimana layanan publik \r\n                 diintegrasikan dengan suatu layanan seperti layanan identifikasi penduduk (administrasi kependudukan) atau diintegrasikan dengan \r\n                layanan SPBE instansi pemerintah lain.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang dapat ditingkatkan/dikembangkan menyesuaikan \r\n                 terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.\r\n', ';;Penjelasan: Layanan Publik terbaik 2\r\nNama Aplikasi : Bursa Kerja Online\r\nTujuan : Meningkatkan kualitas pelayanan di bidang ketenagakerjaan\r\nPengguna : Pencari Kerja dan Penyedia Kerja\r\nInput dan output : Input lowongan kerja dari Penyedia Kerja, Output informasi lowongan kerja untuk Pencari Kerja, serta jenis-jenis laporan ketenagakerjaan.\r\nPengembang aplikasi : PT. Bamesti Prema Jaya\r\nDeskripsi pemilihan tingkat kematangan : Level 5\r\n\r\nData pendukung dapat berupa dokumen penggunaan aplikasi, screenshot layanan aplikasi, daftar layanan dan fitur aplikasi, arsitektur aplikasi, pengelolaan repositori API, unit kerja yang menangani manajemen layanan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator35-2a.pdf, indikator35-2b.pdf, indikator35-2c.pdf, dan seterusnya.\r\n'),
(37, 37, '--Penjelasan Indikator : 	\r\nPelayanan Publik adalah kegiatan atau rangkaian kegiatan dalam rangka pemenuhan kebutuhan pelayanan sesuai dengan peraturan perundang-undangan bagi setiap warga negara dan penduduk atas jasa, barang, dan/atau pelayanan administratif yang disediakan oleh penyelenggara pelayanan publik, dalam hal ini yang disediakan oleh Instansi Pusat/Pemerintah Daerah.\r\nLayanan Publik Instansi Pemerintah merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan layanan publik bagi Instansi Pusat dan/atau Pemerintah Daerah.\r\nSistem Pelayanan Publik dimaksud adalah layanan pengaduan publik berbasis elektronik yang dimiliki oleh Instansi Pusat dan/atau Pemerintah Daerah.\r\nInstansi Pusat/Pemerintah Daerah memberikan informasi paling tidak 3 (tiga) Sistem pelayanan publik yang ada pada instansinya.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki sistem pelayanan publik.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang menyediakan layanan diseminasi/penyebaran satu arah \r\n                 informasi seperti informasi layanan yang diberikan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang menyediakan layanan interaksi seperti mencari informasi \r\n                 dan menyampaikan permohonan pelayanan.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang menyediakan layanan transaksi dimana pengguna dapat \r\n                 menyampaikan permohonan pelayanan dan sistem dapat merespon kepada pengguna seperti kemajuan proses permohonan pelayanan,  \r\n                 verifikasi dan validasi informasi.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang menyediakan layanan kolaborasi dimana layanan publik \r\n                 diintegrasikan dengan suatu layanan seperti layanan identifikasi penduduk (administrasi kependudukan) atau diintegrasikan dengan \r\n                layanan SPBE instansi pemerintah lain.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang dapat ditingkatkan/dikembangkan menyesuaikan \r\n                 terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.\r\n', ';;Penjelasan: Layanan Publik terbaik 3\r\nNama Aplikasi : Sistem Informasi Perijinan Online\r\nTujuan : Memberikan layanan informasi dan proses perijinan yang transparan\r\nPengguna : Masyarakat\r\nInput dan output : Input data-data perijinan, Output informasi perijinan, informasi simulasi perhitungan retribusi, laporan-laporan perijinan.\r\nPengembang aplikasi : UNUD\r\nDeskripsi pemilihan tingkat kematangan : Level 5 \r\n\r\nData pendukung dapat berupa dokumen penggunaan aplikasi, screenshot layanan aplikasi, daftar layanan dan fitur aplikasi, arsitektur aplikasi, pengelolaan repositori API, unit kerja yang menangani manajemen layanan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator35-3a.pdf, indikator35-3b.pdf, indikator35-3c.pdf, dan seterusnya.\r\n'),
(38, 40, 'Arsitektur SPBE adalah kerangka dasar yang mendeskripsikan integrasi proses bisnis, data dan informasi, infrastruktur SPBE, aplikasi SPBE, dan keamanan SPBE untuk menghasilkan layanan SPBE yang terintegrasi.\r\nKebijakan internal Arsitektur SPBE merupakan pengaturan mengenai Arsitektur SPBE di Instansi Pusat dan Pemerintah Daerah yang bertujuan untuk memberikan panduan dalam pelaksanaan integrasi Proses Bisnis, Data dan Informasi, Infrastruktur SPBE, Aplikasi SPBE, dan Keamanan SPBE untuk menghasilkan Layanan SPBE yang terpadu.\r\nReferensi Arsitektur dan Domain Arsitektur SPBE terdiri dari:\r\nDomain Arsitektur Proses Bisnis;\r\nDomain Arsitektur Data dan Informasi;\r\nDomain Arsitektur Layanan;\r\nDomain Arsitektur Aplikasi;\r\nDomain Arsitektur Infrastruktur SPBE; dan,\r\nDomain Arsitektur Keamanan SPBE.', 'Penjelasan indikator level :\r\nLevel 1 : Konsep kebijakan internal terkait Arsitektur SPBE Instansi Pusat/Pemerintah Daerah belum atau telah tersedia.\r\nLevel 2 : Kebijakan internal Arsitektur SPBE Instansi Pusat/Pemerintah Daerah telah ditetapkan. Kondisi: Kebijakan internal Arsitektur SPBE Instansi Pusat/Pemerintah Daerah tersebut belum memuat secara lengkap pengaturan mengenai referensi Arsitektur dan domain Arsitektur SPBE (Proses Bisnis, Data dan Informasi, Infrastruktur SPBE, Aplikasi SPBE, Keamanan SPBE, dan Layanan SPBE).\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan kebijakan internal Arsitektur SPBE Instansi Pusat/Pemerintah Daerah telah memuat secara lengkap pengaturan mengenai referensi Arsitektur dan domain Arsitektur SPBE (Proses Bisnis, Data dan Informasi, Infrastruktur SPBE, Aplikasi SPBE, Keamanan SPBE, dan Layanan SPBE).\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi, kebijakan internal Arsitektur SPBE Instansi Pusat/Pemerintah Daerah telah mengatur integrasi SPBE antar Instansi Pusat, antar Pemerintah Daerah, dan/atau antar Instansi Pusat dan Pemerintah Daerah, dan kebijakan internal Arsitektur SPBE Instansi Pusat/Pemerintah Daerah telah direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi kebijakan internal Arsitektur Instansi Pusat/Pemerintah Daerah SPBE telah ditindaklanjuti dengan kebijakan baru.', 'Data pendukung dapat berupa dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator1a.pdf, indikator1b.pdf, indikator1c.pdf, dan seterusnya.'),
(39, 41, 'Peta Rencana SPBE adalah dokumen yang mendeskripsikan arah dan langkah penyiapan dan pelaksanaan SPBE yang terintegrasi.\r\nKebijakan internal Peta Rencana SPBE merupakan pengaturan mengenai Peta Rencana SPBE di Instansi Pusat/Pemerintah Daerah yang bertujuan untuk memberikan panduan arah dan langkah dalam penyiapan dan pelaksanaan SPBE di Instansi Pusat/Pemerintah Daerah.\r\nPeta Rencana SPBE memuat:\r\nTata Kelola SPBE;\r\nManajemen SPBE;\r\nLayanan SPBE;\r\nInfrastruktur SPBE;\r\nAplikasi SPBE;\r\nKeamanan SPBE; dan,\r\nAudit TIK.', 'Penjelasan Level :\r\nLevel 1 : Konsep kebijakan internal terkait Peta Rencana SPBE Instansi Pusat/Pemerintah Daerah belum atau telah tersedia.\r\nLevel 2 : Kebijakan internal Peta Rencana SPBE Instansi Pusat/Pemerintah Daerah telah ditetapkan. Kondisi: Kebijakan internal Peta Rencana SPBE Instansi Pusat/Pemerintah Daerah tersebut belum mengatur muatan Peta Rencana SPBE secara lengkap (Tata Kelola SPBE, Manajemen SPBE, Layanan SPBE, Infrastruktur SPBE, Aplikasi SPBE, Keamanan SPBE, dan Audit TIK).\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan kebijakan internal Peta Rencana SPBE Instansi Pusat/Pemerintah Daerah telah mengatur seluruh muatan Peta Rencana SPBE secara lengkap (Tata Kelola SPBE, Manajemen SPBE, Layanan SPBE, Infrastruktur SPBE, Aplikasi SPBE, Keamanan SPBE, dan Audit TIK).\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi, kebijakan internal Peta Rencana SPBE Instansi Pusat/Pemerintah Daerah telah mengatur keselarasan antara Peta Rencana SPBE Instansi Pusat/Pemerintah Daerah dan Peta Rencana SPBE Nasional. Selain itu, Kebijakan internal Peta Rencana SPBE Instansi Pusat/Pemerintah Daerah telah direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi kebijakan internal Peta Rencana SPBE Instansi', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator2a.pdf, indikator2b.pdf, indikator2c.pdf, dan seterusnya.');
INSERT INTO `tb_detail_indikator` (`id_detail_indikator`, `idindikator_detail`, `penjelasan_indikator_list`, `penjelasan_indikator_level`, `penjelasan_indikator_tambahan`) VALUES
(40, 42, '1. Manajemen Data bertujuan untuk menjamin terwujudnya data yang akurat, mutakhir, terintegrasi, dan dapat diakses sebagai dasar perencanaan, pelaksanaan, evaluasi, dan pengendalian pembangunan nasional.\r\n2. Manajemen Data dilakukan melalui serangkaian proses pengelolaan Arsitektur Data, Data Induk, Data Referensi, Basis Data, Kualitas Data dan Interoperabilitas Data.\r\n3. Kebijakan Internal Manajemen Data merupakan pengaturan mengenai Manajemen Data di Instansi Pusat dan Pemerintah Daerah yang bertujuan untuk memberikan panduan arah dan langkah dalam pengelolaan data di Instansi Pusat dan Pemerintah Daerah.\r\n4. Instansi Pusat dan Pemerintah Daerah menyusun kebijakan internal Manajemen Data mengacu pada pedoman Manajemen Data SPBE.', 'Penjelasan Level :\r\nLevel 1 : Konsep kebijakan internal terkait Manajemen Data di Instansi Pusat/Pemerintah Daerah belum atau telah tersedia.\r\nLevel 2 : Kebijakan internal Manajemen Data di Instansi Pusat/Pemerintah Daerah telah ditetapkan.\r\nLevel 3 : Kondisi: Kebijakan internal Manajemen Data di Instansi Pusat/Pemerintah Daerah tersebut hanya mengatur sebagian dari rangkaian proses pengelolaan arsitektur data, data induk, data referensi, basis data, kualitas data dan interoperabilitas data.\r\nLevel 4 : Kriteria tingkat 2 telah terpenuhi dan kebijakan internal Manajemen Data di Instansi Pusat/Pemerintah Daerah telah mengatur seluruh rangkaian proses pengelolaan arsitektur data, data induk, data referensi, basis data, kualitas data dan interoperabilitas data.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi kebijakan internal Manajemen Data di Instansi Pusat/Pemerintah Daerah telah ditindaklanjuti dengan kebijakan baru.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator3a.pdf, indikator3b.pdf, indikator3c.pdf, dan seterusnya.'),
(41, 43, '1. Aplikasi SPBE adalah satu atau sekumpulan program komputer dan prosedur yang dirancang untuk melakukan tugas atau fungsi Layanan SPBE.\r\n2. Pembangunan Aplikasi SPBE merupakan suatu proses perancangan aplikasi melalui siklus pembangunan aplikasi.\r\n3. Kebijakan internal Aplikasi SPBE merupakan pengaturan mengenai Pembangunan Aplikasi SPBE di Instansi Pusat dan Pemerintah Daerah yang bertujuan untuk memberikan panduan dalam pelaksanaan pembangunan aplikasi SPBE untuk menghasilkan Layanan SPBE yang terpadu.\r\n4. Siklus Pembangunan Aplikasi terdiri dari:\r\nPerencanaan;\r\nAnalisis;\r\nDesain;\r\nImplementasi; dan,\r\nPemeliharaan.', 'Penjelasan Level :\r\nLevel 1 : Konsep kebijakan internal terkait siklus Pembangunan Aplikasi SPBE di Instansi Pusat/Pemerintah Daerah belum atau telah tersedia.\r\nLevel 2 : Kebijakan internal terkait siklus Pembangunan Aplikasi SPBE di Instansi Pusat/Pemerintah Daerah telah ditetapkan. Kondisi: Kebijakan internal terkait Pembangunan Aplikasi SPBE telah mengatur siklus pembangunan aplikasi.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Kebijakan internal terkait siklus Pembangunan Aplikasi SPBE telah mengatur proses konsultasi terkait siklus Pembangunan Aplikasi SPBE dengan unit kerja/perangkat daerah yang menjalankan fungsi pengelolaan TIK di Instansi Pusat/Pemerintah Daerah.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi, kebijakan internal terkait siklus Pembangunan Aplikasi SPBE di Instansi Pusat/Pemerintah Daerah telah mengatur keterpaduan dan pengendalian Pembangunan Aplikasi SPBE oleh unit kerja/perangkat daerah yang menjalankan fungsi pengelolaan TIK di Instansi Pusat/Pemerintah Daerah. Selain itu, kebijakan internal Pembangunan Aplikasi SPBE direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi kebijakan internal Pembangunan Aplikasi SPBE di Instansi Pusat/Pemerintah Daerah SPBE telah ditindaklanjuti dengan kebijakan baru.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator4a.pdf, indikator4b.pdf, indikator4c.pdf, dan seterusnya.'),
(42, 44, '1. Layanan Pusat Data adalah penyediaan penyimpanan aplikasi dan data.\r\n2. Layanan Pusat Data bertujuan untuk menjamin ketersediaan penyimpanan data bagi Instansi Pusat dan Pemerintah Daerah.\r\n3. Pusat Data Nasional adalah sekumpulan pusat data yang digunakan secara bersama dan bagi pakai oleh Instansi Pusat dan Pemerintah Daerah, dan saling terhubung yang terdiri atas pusat data yang diselenggarakan oleh Instansi Pusat/Pemerintah Daerah dengan memenuhi persyaratan pusat data atau pusat data yang dibangun khusus untuk digunakan secara bersama dan bagi pakai oleh Instansi Pusat dan Pemerintah Daerah.\r\n4. Kebijakan Layanan Pusat Data merupakan pengaturan mengenai layanan pusat data di Instansi Pusat dan Pemerintah Daerah yang bertujuan untuk memberikan panduan dalam pelaksanaan layanan pusat data untuk menghasilkan Layanan SPBE yang terpadu.\r\n5. Instansi Pusat dan Pemerintah Daerah menyusun kebijakan internal layanan pusat data mengacu pada pedoman layanan pusat data.', 'Penjelasan Level : \r\nLevel 1 : Konsep kebijakan internal terkait Layanan Pusat Data yang digunakan di Instansi Pusat/Pemerintah Daerah belum atau telah tersedia.\r\nLevel 2 : Kebijakan internal terkait Layanan Pusat Data yang digunakan di Instansi Pusat/Pemerintah Daerah telah ditetapkan. Kondisi: Kebijakan internal terkait Layanan Pusat Data telah mengatur penggunaan Layanan Pusat Data untuk sebagian unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan kebijakan internal terkait Layanan Pusat Data telah mengatur penggunaan Layanan Pusat Data untuk seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi, kebijakan internal terkait Layanan Pusat Data yang digunakan di Instansi Pusat/Pemerintah Daerah telah mengatur interkoneksi Layanan Pusat Data dengan Pusat Data Nasional dan/atau mengatur penggunaan Layanan Pusat Data Nasional. Selain itu, kebijakan internal terkait penggunaan Layanan Pusat Data di Instansi Pusat/Pemerintah Daerah telah direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi kebijakan internal terkait Layanan Pusat Data yang digunakan di Instansi Pusat/Pemerintah Daerah SPBE telah ditindaklanjuti dengan kebijakan baru.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator5a.pdf, indikator5b.pdf, indikator5c.pdf, dan seterusnya.'),
(43, 45, '1. Jaringan Intra adalah jaringan tertutup yang menghubungkan antar simpul jaringan dalam suatu organisasi.\r\n2. Jaringan Intra Instansi Pusat dan Pemerintah Daerah merupakan Jaringan Intra yang diselenggarakan oleh Instansi Pusat dan Pemerintah Daerah untuk menghubungkan antar simpul jaringan dalam Instansi Pusat/Pemerintah Daerah, dengan Jaringan Intra Pemerintah dan/atau Jaringan Intra Instansi Pusat/Pemerintah Daerah lain.\r\n3. Penggunaan Jaringan Intra Instansi Pusat dan Pemerintah Daerah bertujuan untuk menjaga keamanan dalam melakukan pengiriman data dan informasi antar simpul jaringan dalam Instansi Pusat/Pemerintah Daerah.\r\n4. Penyelenggaraan Jaringan Intra Instansi Pusat/Pemerintah Daerah sebagaimana dimaksud, dapat menggunakan jaringan fisik yang dibangun sendiri oleh Instansi Pusat/Pemerintah Daerah dan/atau yang dibangun oleh penyedia jasa layanan jaringan.\r\n5. Kebijakan internal dalam hal ini mengatur pengoperasian jaringan intra Instansi Pusat/Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Konsep kebijakan internal terkait Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah belum atau telah tersedia.\r\nLevel 2 : Kebijakan internal terkait Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah telah ditetapkan. Kondisi: Kebijakan internal terkait Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah telah mengatur Layanan Jaringan Intra untuk sebagian unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan kebijakan internal terkait Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah telah mengatur Layanan Jaringan Intra untuk seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan kebijakan internal terkait Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah telah mengatur interkoneksi Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah dengan Jaringan Intra Pemerintah dan/atau Jaringan Intra Instansi Pusat/Pemerintah Daerah lain. Selain itu, kebijakan internal terkait Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah telah direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi kebijakan internal terkait Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah telah ditindaklanjuti dengan kebijakan baru.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator6a.pdf, indikator6b.pdf, indikator6c.pdf, dan seterusnya.'),
(44, 46, '1. Sistem Penghubung Layanan adalah perangkat integrasi/penghubung untuk melakukan pertukaran Layanan SPBE.\r\n2. Penggunaan Sistem Penghubung Layanan Pemerintah bertujuan untuk memudahkan dalam melakukan integrasi antar Layanan SPBE.\r\n3. Syarat sebuah Sistem Penghubung Layanan:\r\nTersedia jalur/bus (sistem koneksi bukan point-to-point);\r\nTersedia metadata repository; dan\r\nTersedia service directory.\r\n4. Kebijakan internal dalam hal ini mengatur penerapan Sistem Penghubung Layanan Instansi Pusat/Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Konsep kebijakan internal terkait Penggunaan Sistem Penghubung Layanan Instansi Pusat/Pemerintah Daerah belum atau telah tersedia.\r\nLevel 2 : Kebijakan internal terkait Penggunaan Sistem Penghubung Layanan Instansi Pusat/Pemerintah Daerah telah ditetapkan. Kondisi: Kebijakan internal terkait Penggunaan Sistem Penghubung Layanan Instansi Pusat/Pemerintah Daerah telah mengatur penggunaan Sistem Penghubung Layanan Instansi Pusat/Pemerintah Daerah untuk sebagian unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan kebijakan internal terkait Penggunaan Sistem Penghubung Layanan Instansi Pusat/Pemerintah Daerah telah mengatur penggunaan Sistem Penghubung Layanan untuk seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi, kebijakan internal terkaitPenggunaan Sistem Penghubung Layanan Instansi Pusat/Pemerintah Daerah telah mengatur keterhubungan dengan Sistem Penghubung Layanan Pemerintah. Selain itu, kebijakan internal terkait Penggunaan Sistem Penghubung Layanan Instansi Pusat/Pemerintah Daerah telah direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi kebijakan internal terkait Penggunaan Sistem Penghubung Layanan Instansi Pusat/Pemerintah Daerah telah ditindaklanjuti dengan kebijakan baru.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator7a.pdf, indikator7b.pdf, indikator7c.pdf, dan seterusnya.'),
(45, 47, '1. Manajemen Keamanan Informasi dilakukan melalui serangkaian proses yang meliputi penetapan ruang lingkup, penetapan penanggung jawab, perencanaan, dukungan pengoperasian, evaluasi kinerja, dan perbaikan berkelanjutan terhadap keamanan informasi dalam SPBE.\r\n2. Manajemen Keamanan Informasi bertujuan untuk menjamin keberlangsungan SPBE dengan meminimalkan dampak risiko keamanan informasi.\r\n3. Kebijakan internal dalam hal ini mengatur terkait penerapan Manajemen Keamanan Informasi pada Instansi Pusat/Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Konsep kebijakan internal terkait Manajemen Keamanan Informasi belum atau telah tersedia.\r\nLevel 2 : Kebijakan internal terkait Manajemen Keamanan Informasi telah ditetapkan. Kondisi: Kebijakan internal terkait Manajemen Keamanan Informasi belum mengatur secara lengkap mengenai cakupan Manajemen Keamanan Informasi (penetapan ruang lingkup, penetapan penanggung jawab, perencanaan, dukungan pengoperasian, evaluasi kinerja, dan perbaikan berkelanjutan terhadap Keamanan Informasi).\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan kebijakan internal terkait Manajemen Keamanan Informasi mengatur seluruh cakupan Manajemen Keamanan Informasi secara lengkap (penetapan ruang lingkup, penetapan penanggung jawab, perencanaan, dukungan pengoperasian, evaluasi kinerja, dan perbaikan berkelanjutan terhadap Keamanan Informasi).\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi, dan kebijakan internal terkait Manajemen Keamanan Informasi telah mengatur penerapan untuk seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah. Selain itu, kebijakan internal terkait Manajemen Keamanan Informasi telah direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi kebijakan internal terkait Manajemen Keamanan Informasi telah ditindaklanjuti dengan kebijakan baru.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator8a.pdf, indikator8b.pdf, indikator8c.pdf, dan seterusnya.'),
(46, 48, '1. Audit Teknologi Informasi dan Komunikasi (TIK) adalah proses yang sistematis untuk memperoleh dan mengevaluasi bukti secara objektif terhadap aset teknologi informasi dan komunikasi dengan tujuan untuk menetapkan tingkat kesesuaian antara teknologi informasi dan komunikasi dengan kriteria dan/atau standar yang telah ditetapkan.\r\n2. Audit TIK terdiri atas:\r\nAudit Infrastruktur SPBE;\r\nAudit Aplikasi SPBE; dan,\r\nAudit Keamanan SPBE.\r\n3. Audit Teknologi Informasi dan Komunikasi meliputi pemeriksaan hal pokok teknis pada:\r\nPenerapan tata kelola dan manajemen teknologi informasi dan komunikasi;\r\nFungsionalitas teknologi informasi dan komunikasi;\r\nKinerja teknologi informasi dan komunikasi yang dihasilkan; dan,\r\nAspek teknologi informasi dan komunikasi lainnya.\r\n4. Kebijakan internal dalam hal ini mengatur terkait penerapan Audit TIK pada Instansi Pusat/Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Konsep kebijakan internal terkait Audit TIK belum atau telah tersedia.\r\nLevel 2 : Kebijakan internal Audit TIK telah ditetapkan. Kondisi: Kebijakan internal terkait Audit TIK hanya mengatur pelaksanaan sebagian Audit TIK (Audit Infrastruktur SPBE, Audit Aplikasi SPBE, dan Audit Keamanan SPBE).\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan kebijakan internal terkait Audit TIK telah mengatur pelaksanaan seluruh Audit TIK (Audit Infrastruktur SPBE Audit Aplikasi SPBE, dan Audit Keamanan SPBE).\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan kebijakan internal terkait Audit TIK telah direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi kebijakan internal terkait Audit TIK telah ditindaklanjuti dengan kebijakan baru.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator9a.pdf, indikator9b.pdf, indikator9c.pdf, dan seterusnya.'),
(47, 49, '1. Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah adalah para pejabat dalam tim yang diberi tugas untuk mengendalikan, mengarahkan, dan mengevaluasi SPBE, termasuk didalamnya melaksanakan perumusan kebijakan dan penerapan SPBE di Instansi Pusat dan Pemerintah Daerah masing-masing.\r\n2. Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah dapat disejajarkan dengan Tim Pengarah TIK, Komite Pengarah TIK, ataupun Steering Committee yang mempunyai tugas seperti dimaksud pada huruf a.\r\n3. Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah dipimpin oleh seorang koordinator yang ditetapkan oleh pimpinan Instansi Pusat/Kepala Daerah.\r\n4. Kebijakan internal dalam hal ini mengatur terkait tugas dan fungsi Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Konsep kebijakan internal terkait Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah belum atau telah tersedia.\r\nLevel 2 : Kebijakan internal Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah telah ditetapkan. Kondisi: Kebijakan internal terkait Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah telah mencakup pengaturan tugas-tugas Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah yang mendukung penerapan SPBE pada sebagian unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan kebijakan internal terkait Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah telah mencakup pengaturan tugas-tugas Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah yang mendukung penerapan SPBE pada seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi, kebijakan internal terkait Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah yang mendukung penerapan SPBE antar Instansi Pusat, antar Pemerintah Daerah, dan/atau antar Instansi Pusat dan Pemerintah Daerah, dan kebijakan internal terkait Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah telah direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi kebijakan internal terkait Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah telah ditindaklanjuti dengan kebijakan baru.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator10a.pdf, indikator10b.pdf, indikator10c.pdf, dan seterusnya.'),
(48, 50, '1. Arsitektur SPBE adalah kerangka dasar yang mendeskripsikan integrasi proses bisnis, data dan informasi, infrastruktur SPBE, aplikasi SPBE, dan keamanan SPBE untuk menghasilkan layanan SPBE yang terintegrasi.\r\n2. Arsitektur SPBE Instansi Pusat/Pemerintah Daerah merupakan Arsitektur SPBE yang diterapkan di Instansi Pusat/Pemerintah Daerah yang bertujuan untuk memberikan panduan dalam pelaksanaan integrasi Proses Bisnis, Data dan Informasi, Infrastruktur SPBE, Aplikasi SPBE, dan Keamanan SPBE untuk menghasilkan Layanan SPBE yang terpadu.\r\n3. Referensi Arsitektur dan Domain Arsitektur SPBE terdiri dari:\r\nDomain arsitektur Proses Bisnis;\r\nDomain arsitektur Data dan Informasi;\r\nDomain arsitektur Layanan;\r\nDomain arsitektur Aplikasi;\r\nDomain arsitektur Infrastruktur SPBE; dan,\r\nDomain arsitektur Keamanan SPBE.', 'Penjelasan Level :\r\nLevel 1 : Konsep dokumen Arsitektur SPBE belum atau telah tersedia.\r\nLevel 2 : Dokumen Arsitektur SPBE telah tersedia. Kondisi: Dokumen Arsitektur SPBE tidak/belum mencakup referensi dan domain Arsitektur SPBE Instansi Pusat/Pemerintah Daerah secara lengkap yaitu referensi dan domain arsitektur Proses Bisnis, Data dan Informasi, Infrastruktur SPBE, Aplikasi SPBE, Keamanan SPBE, dan Layanan SPBE.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan dokumen Arsitektur SPBE telah mencakup seluruh referensi dan domain Arsitektur SPBE Instansi Pusat/Pemerintah Daerah yaitu referensi dan domain arsitektur Proses Bisnis, Data dan Informasi, Infrastruktur SPBE, Aplikasi SPBE, Keamanan SPBE, dan Layanan SPBE.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan dokumen Arsitektur SPBE Instansi Pusat/Pemerintah Daerah telah berpedoman pada Arsitektur SPBE Nasional. Selain itu, dokumen Arsitektur SPBE Instansi Pusat/Pemerintah Daerah telah dilakukan reviu dan evaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan dokumen Arsitektur SPBE Instansi Pusat/Pemerintah Daerah telah dilakukan pemutakhiran sebagai tindak lanjut hasil reviu dan evaluasi.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator11a.pdf, indikator11b.pdf, indikator11c.pdf, dan seterusnya.'),
(49, 51, '1. Peta Rencana SPBE adalah dokumen yang mendeskripsikan arah dan langkah penyiapan dan pelaksanaan SPBE yang terintegrasi.\r\n2. Peta Rencana SPBE memuat:\r\nTata Kelola SPBE;\r\nManajemen SPBE;\r\nLayanan SPBE;\r\nInfrastruktur SPBE;\r\nAplikasi SPBE;\r\nKeamanan SPBE; dan\r\nAudit TIK.', 'Penjelasan Level :\r\nLevel 1 : Konsep dokumen Peta Rencana SPBE Instansi Pusat/Pemerintah Daerah belum atau telah tersedia.\r\nLevel 2 : Dokumen Peta Rencana SPBE telah tersedia. Kondisi: dokumen Peta Rencana SPBE tidak/belum mencakup muatan Peta Rencana SPBE Instansi Pusat/Pemerintah Daerah secara lengkap yaitu peta rencana Tata Kelola SPBE, Manajemen SPBE, Layanan SPBE, Infrastruktur SPBE, Aplikasi SPBE, Keamanan SPBE, Audit Teknologi SPBE dan Audit TIK.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan dokumen Peta Rencana SPBE telah mencakup seluruh muatan Peta Rencana SPBE Instansi Pusat/Pemerintah Daerah secara lengkap yaitu peta rencana Tata Kelola SPBE, Manajemen SPBE, Layanan SPBE, Infrastruktur SPBE, Aplikasi SPBE, Keamanan SPBE, Audit Teknologi SPBE dan Audit TIK.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan dokumen Peta Rencana SPBE Instansi Pusat/Pemerintah Daerah telah diterapkan secara konsisten melalui rencana kerja dan anggaran 3 (tiga) tahun terakhir. Selain itu, dokumen Peta Rencana SPBE Instansi Pusat/Pemerintah Daerah telah dilakukan reviu dan evaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan dokumen Peta Rencana SPBE Instansi Pusat/Pemerintah Daerah telah dilakukan pemutakhiran sebagai tindak lanjut hasil reviu dan evaluasi.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator12a.pdf, indikator12b.pdf, indikator12c.pdf, dan seterusnya.'),
(50, 52, '1. Rencana dan Anggaran SPBE adalah dokumen yang mendeskripsikan program, kegiatan dan pemanfaatan anggaran SPBE.\r\n2. Rencana dan Anggaran SPBE disusun sesuai dengan proses perencanaan dan penganggaran tahunan pemerintah.\r\n3. Rencana dan Anggaran SPBE Instansi Pusat/Pemerintah Daerah berpedoman pada Arsitektur SPBE Instansi Pusat/Pemerintah Daerah dan Peta Rencana SPBE Instansi Pusat/Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Rencana dan Anggaran SPBE belum atau telah tertuang dalam rencana kerja dan anggaran tahunan.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Rencana dan Anggaran SPBE pada unit kerja/perangkat daerah tidak seluruhnya dikonsultasikan kepada unit pengelola TIK di Instansi Pusat/Pemerintah Daerah.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan seluruh Rencana dan Anggaran SPBE unit kerja/perangkat daerah telah dikonsultasikan kepada unit pengelola TIK di Instansi Pusat/Pemerintah Daerah.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi. Seluruh Rencana dan Anggaran SPBE Instansi Pusat/Pemerintah Daerah telah terpadu dan dapat dikendalikan oleh unit kerja/lembaga daerah yang menjalankan fungsi perencanaan dan penganggaran. Selain itu, Rencana dan Anggaran SPBE telah direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta Rencana dan Anggaran SPBE telah dilakukan perbaikan untuk tahun anggaran berikutnya sebagai tindak lanjut hasil reviu dan evaluasi.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator13a.pdf, indikator13b.pdf, indikator13c.pdf, dan seterusnya.'),
(51, 53, '1. Proses Bisnis adalah dokumen yang mendeskripsikan hubungan kerja yang efektif dan efisien antar unit organisasi untuk menghasilkan kinerja sesuai dengan tujuan pendirian organisasi agar menghasikan keluaran yang bernilai tambah bagi pemangku kepentingan (PermenPANRB No 19 Tahun 2018).\r\n2. Penyusunan Proses Bisnis bertujuan untuk memberikan pedoman dalam penggunaan data dan informasi serta penerapan Aplikasi SPBE, Keamanan SPBE, dan Layanan SPBE.\r\n3. Instansi Pusat/Pemerintah Daerah menyusun Proses Bisnis yang selaras dengan Arsitektur SPBE Instansi Pusat/Pemerintah Daerah', 'Penjelasan Level :\r\nLevel 1 : Dokumen Proses Bisnis Instansi Pusat/Pemerintah belum atau telah tersedia. Kondisi: Dokumen Proses Bisnis Instansi Pusat/Pemeritah Daerah belum memenuhi standar.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan dokumen Proses Bisnis Instansi Pusat/Pemeritah Daerah telah memenuhi standar.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Proses Bisnis Instansi Pusat/Pemeritah Daerah telah dilakukan perbaikan sebagai bentuk inovasi Proses Bisnis untuk mewujudkan proses bisnis yang lebih efisien.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi, Inovasi Proses bisnis telah diterapkan ke dalam sistem elektronik/sistem aplikasi, serta telah dilakukan reviu dan evaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan melakukan perbaikan Inovasi Proses Bisnis yang diterapkan ke dalam sistem elektronik/ sistem aplikasi sebagai tindak lanjut hasil reviu dan evaluasi.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator14a.pdf, indikator14b.pdf, indikator14c.pdf, dan seterusnya.'),
(52, 54, '1. Aplikasi SPBE adalah satu atau sekumpulan program komputer dan prosedur yang dirancang untuk melakukan tugas atau fungsi Layanan SPBE.\r\n2. Pembangunan Aplikasi SPBE merupakan suatu proses perancangan aplikasi melalui siklus pembangunan aplikasi.\r\n3. Siklus Pembangunan Aplikasi terdiri dari:\r\nPerencanaan;\r\nAnalisis;\r\nDesain;\r\nImplementasi; dan,\r\nPemeliharaan.\r\nSiklus bisa menggunakan salah satu framework yang sudah ada seperti SDLC, RAD, Waterfall, Agile Development Cycle (SCRUM).', 'Penjelasan Level :\r\nLevel 1 : Proses pembangunan Aplikasi SPBE belum atau telah dilakukan secara adhoc (sewaktu-waktu, tidak terencana). Kondisi: Proses pembangunan Aplikasi SPBE belum memenuhi siklus pembangunan aplikasi.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan proses pembangunan Aplikasi SPBE telah dilakukan sesuai siklus pembangunan aplikasi.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan proses pembangunan aplikasi SPBE telah dikonsultasikan kepada unit kerja/perangkat daerah yang melaksanakan fungsi pengelolaan TIK di Instansi Pusat/Pemerintah Daerah.\r\nLevel 4: Kriteria tingkat 3 telah terpenuhi dan Pembangunan Aplikasi SPBE Instansi Pusat/Pemerintah Daerah telah terpadu dan dapat dikendalikan oleh unit kerja/lembaga daerah yang menjalankan fungsi pengelolaan TIK di Instansi Pusat/Pemerintah Daerah. selain itu, Pembangunan Aplikasi SPBE direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Aplikasi SPBE telah dikembangkan secara optimal untuk meningkatkan efektivitas dan efisiensi terhadap perubahan lingkungan, teknologi, dan kebutuhan Instansi Pusat/Pemerintah Daerah sebagai tindak lanjut hasil reviu dan evaluasi.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator15a.pdf, indikator15b.pdf, indikator15c.pdf, dan seterusnya.'),
(53, 55, '1. Pusat Data adalah fasilitas yang digunakan untuk penempatan sistem elektronik dan komponen terkait lainnya untuk keperluan penempatan, penyimpanan dan pengolahan data, dan pemulihan data baik yang dimiliki secara fisik dan non-fisik (cloud).\r\n2. Layanan Pusat Data adalah penyediaan penyimpanan aplikasi dan data.\r\n3. Layanan Pusat Data bertujuan untuk menjamin ketersediaan penyimpanan data bagi Instansi Pusat dan Pemerintah Daerah.\r\n4. Pusat Data Nasional adalah sekumpulan pusat data yang digunakan secara bersama dan bagi pakai oleh Instansi Pusat dan Pemerintah Daerah, dan saling terhubung yang terdiri atas pusat data yang diselenggarakan oleh Instansi Pusat/Pemerintah Daerah dengan memenuhi persyaratan pusat data atau pusat data yang dibangun khusus untuk digunakan secara bersama dan bagi pakai oleh Instansi Pusat dan Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Layanan Pusat Data belum atau telah tersedia digunakan oleh Instansi Pusat/Pemerintah Daerah.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi. Kondisi: Layanan Pusat Data tidak/belum digunakan oleh seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Pusat Data telah digunakan oleh seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah. Selain itu, terdapat prosedur pengoperasian baku Layanan Pusat Data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan terdapat interkoneksi Layanan Pusat Data dengan Pusat Data Nasional/Pusat Data Instansi Pusat/Pusat Data Pemerintah Daerah lain dan/atau penggunaan Layanan Pusat Data Nasional. Selain itu, penggunaan Layanan Pusat Data di Instansi Pusat/Pemerintah Daerah telah direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi penggunaan Layanan Pusat Data di Instansi Pusat/Pemerintah Daerah telah ditindaklanjuti dengan melakukan perbaikan terhadap Layanan Pusat Data.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator16a.pdf, indikator16b.pdf, indikator16c.pdf, dan seterusnya.'),
(54, 56, '1. Jaringan Intra adalah jaringan tertutup yang menghubungkan antar simpul jaringan dalam suatu organisasi.\r\n2. Jaringan Intra Instansi Pusat/Pemerintah Daerah merupakan Jaringan Intra yang diselenggarakan oleh Instansi Pusat/Pemerintah Daerah untuk menghubungkan antar simpul jaringan dalam Instansi Pusat/Pemerintah Daerah, dengan Jaringan Intra Pemerintah dan/atau Jaringan Intra Instansi Pusat/Pemerintah Daerah lain.\r\n3. Penggunaan Jaringan Intra Instansi Pusat/Pemerintah Daerah bertujuan untuk menjaga keamanan dalam melakukan pengiriman data dan informasi antar simpul jaringan dalam Instansi Pusat/Pemerintah Daerah.\r\n4. Penyelenggaraan Jaringan Intra Instansi Pusat/Pemerintah Daerah sebagaimana dimaksud, dapat menggunakan jaringan fisik yang dibangun sendiri oleh Instansi Pusat/Pemerintah Daerah dan/atau yang dibangun oleh penyedia jasa layanan jaringan.', 'Penjelasan Level :\r\nLevel 1 : Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah belum atau telah tersedia.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi. Kondisi: Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah tidak/belum diterapkan di seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah telah diterapkan di seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan terdapat interkoneksi Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah dengan Jaringan Intra Pemerintah dan/atau Jaringan Intra Instansi Pusat/Pemerintah Daerah lain. Selain itu, Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah telah direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah telah ditindaklanjuti dengan melakukan perbaikan terhadap Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator17a.pdf, indikator17b.pdf, indikator17c.pdf, dan seterusnya.'),
(60, 87, '1. Sistem Penghubung Layanan adalah perangkat integrasi/penghubung untuk melakukan pertukaran Layanan SPBE.\r\n2. Penggunaan Sistem Penghubung Layanan Pemerintah bertujuan untuk memudahkan dalam melakukan integrasi antar Layanan SPBE', 'Penjelasan Level :\r\nLevel 1 : Sistem penghubung layanan Instansi Pusat dan Pemerintah Daerah belum atau telah tersedia.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi. Kondisi: Sistem penghubung layanan Instansi Pusat dan Pemerintah Daerah tidak/belum diterapkan di seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan sistem penghubung layanan Instansi Pusat dan Pemerintah Daerah telah diterapkan di seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi, sistem penghubung layanan Instansi Pusat dan Pemerintah Daerah telah terintegrasi dengan sistem penghubungan layanan pemerintah dan/atau sistem penghubung layanan Instansi Pusat/Pemerintah Daerah lain. Selain itu, sistem penghubung layanan Instansi Pusat/Pemerintah Daerah telah direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi sistem penghubung layanan Instansi Pusat dan Pemerintah Daerah telah ditindaklanjuti dengan melakukan perbaikan.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator18a.pdf, indikator18b.pdf, indikator18c.pdf, dan seterusnya.'),
(61, 58, '1. Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah adalah para pejabat dalam tim yang diberi tugas untuk mengendalikan, mengarahkan, dan mengevaluasi SPBE, termasuk didalamnya melaksanakan perumusan kebijakan dan penerapan SPBE di Instansi Pusat dan Pemerintah Daerah masing-masing.\r\n2. Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah dapat disejajarkan dengan Tim Pengarah TIK, Komite Pengarah TIK, ataupun Steering Committee yang mempunyai tugas seperti dimaksud pada huruf a.\r\n3. Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah dipimpin oleh seorang koordinator yang ditetapkan oleh pimpinan Instansi Pusat/Kepala Daerah.', 'Penjelasan Level :\r\nLevel 1 : Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah belum atau telah terbentuk. Kondisi: Tugas/program kerja Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah dilaksanakan sewaktu-waktu atau tanpa perencanaan.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan tugas/program kerja Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah telah dilaksanakan sesuai perencanaan. Kondisi: tugas/program kerja Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah tidak/belum dilaksanakan seluruhnya.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan tugas/program kerja Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah telah dilaksanakan seluruhnya. Kondisi: program kerja Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah belum dikomunikasikan/dikoordinasikan kepada semua unit kerja/perangkat daerah terkait di Instansi Pusat/Pemerintah Daerah.\r\nLevel 4 :Kriteria tingkat 3 telah terpenuhi dan program kerja Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah telah dikomunikasikan/dikoordinasikan kepada semua unit kerja/perangkat daerah terkait di Instansi Pusat/Pemerintah Daerah. Selain itu, tugas/program kerja Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah telah dilakukan reviu dan evaluasi.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan hasil reviu dan evaluasi tugas/program kerja Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah telah ditindaklanjuti melalui perbaikan tugas/program kerja Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah dan pelaksanaannya.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator19a.pdf, indikator19b.pdf, indikator19c.pdf, dan seterusnya.'),
(62, 59, '1. Kolaborasi SPBE merupakan wadah informal untuk pertukaran informasi dan peningkatan kapasitas pelaksanaan SPBE bagi Instansi Pusat, Pemerintah Daerah, perguruan tinggi, lembaga penelitian, pelaku usaha, dan masyarakat.\r\n2. Kolaborasi SPBE dapat dimanfaatkan untuk antara lain:\r\npenyampaian ide/gagasan SPBE;\r\npengembangan infrastruktur dan Aplikasi SPBE dari kontribusi komunitas TIK;\r\npeningkatan kompetensi teknis;\r\nperbaikan kualitas Layanan SPBE;\r\npenelitian dan kajian pengembangan SPBE; dan\r\npenyelesaian masalah untuk kepentingan bersama.\r\n3. Kolaborasi SPBE dapat dilakukan dalam bentuk pertemuan informal dan pertemuan virtual.', 'Penjelasan Level :\r\nLevel 1 : Kolaborasi antar unit kerja/perangkat daerah di Instansi Pusat/Perangkat Daerah dalam penerapan SPBE belum atau telah dilaksanakan. Kondisi: Kolaborasi antar unit kerja/perangkat daerah di Instansi Pusat/Perangkat Daerah dalam penerapan SPBE dilaksanakan sewaktu-waktu atau tanpa perencanaan.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan kolaborasi antar unit kerja/perangkat daerah di Instansi Pusat/Perangkat Daerah dalam penerapan SPBE telah dilaksanakan sesuai perencanaan. Kondisi: Kolaborasi antar unit kerja/perangkat daerah di Instansi Pusat/Perangkat Daerah dalam penerapan SPBE tidak dibentuk secara formal.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan kolaborasi antar unit kerja/perangkat daerah di Instansi Pusat/Perangkat Daerah dalam penerapan SPBE telah dilaksanakan oleh tim yang dibentuk secara formal. Kondisi: Kolaborasi antar unit kerja/perangkat daerah dalam penerapan SPBE tidak/belum dilaksanakan pada seluruh unit kerja/perangkat daerah di Instansi Pusat/Perangkat Daerah (kolaborasi dibentuk berdasarkan adanya kegiatan bersama).\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan kolaborasi antar unit kerja/perangkat daerah dalam penerapan SPBE telah dilaksanakan secara terpadu pada seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah yang dikoordinasikan oleh menteri/kepala lembaga/kepala daerah atau sekretaris kementerian/lembaga/pemerintah daerah. Selain itu, kolaborasi dalam penerapan SPBE telah dilakukan reviu dan evaluasi.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan hasil reviu dan evaluasi kolaborasi dalam penerapan SPBE telah ditindaklanjuti melalui perbaikan pelaksanaan kolaborasi dalam penerapan SPBE.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator20a.pdf, indikator20b.pdf, indikator20c.pdf, dan seterusnya.'),
(63, 60, '1. Manajemen Risiko SPBE adalah pendekatan sistematis yang meliputi proses, pengukuran, struktur, dan budaya untuk menentukan tindakan terbaik terkait Risiko SPBE;\r\n2. Risiko SPBE adalah peluang terjadinya suatu peristiwa yang akan mempengaruhi keberhasilan terhadap pencapaian tujuan penerapan SPBE;\r\n3. Manajemen Risiko bertujuan untuk menjamin keberlangsungan SPBE dengan meminimalkan dampak risiko dalam SPBE;\r\n4. Instansi Pusat dan Pemerintah Daerah menerapkan manajemen risiko SPBE berdasarkan pedoman Manajemen Risiko SPBE.', 'Penjelasan Level :\r\nLevel 1 : Kegiatan Manajemen Risiko SPBE belum atau telah diterapkan. Kondisi: Kegiatan Manajemen Risiko SPBE diterapkan tanpa program kegiatan yang terarah dan terencana.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan kegiatan Manajemen Risiko SPBE diterapkan dengan program kegiatan yang terarah dan terencana. Kondisi: Penerapan Manajemen Risiko SPBE dilaksanakan tanpa mengacu pada pedoman manajemen risiko SPBE.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Manajemen Risiko SPBE telah dilaksanakan dengan mengacu pada pedoman manajemen risiko SPBE.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan kebijakann strategis Manajemen Risiko SPBE telah ditetapkan oleh Komite Manajemen Risiko SPBE atau Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah dan diterapkan ke seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah. Selain itu, penerapan Manajemen Risiko SPBE telah direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi Manajemen Risiko SPBE ditindaklanjuti melalui perbaikan penerapan Manajemen Risiko SPBE.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator21a.pdf, indikator21b.pdf, indikator21c.pdf, dan seterusnya.'),
(64, 61, '1. Manajemen Keamanan Informasi dilakukan melalui serangkaian proses yang meliputi penetapan ruang lingkup, penetapan penanggung jawab, perencanaan, dukungan pengoperasian, evaluasi kinerja, dan perbaikan berkelanjutan terhadap Keamanan Informasi dalam SPBE.\r\n2. Manajemen Keamanan Informasi bertujuan untuk menjamin keberlangsungan SPBE dengan meminimalkan dampak risiko Keamanan Informasi.\r\n3. Penerapan Keamanan Informasi berlandaskan penjaminan kerahasiaan, keutuhan, ketersediaan, keaslian, dan kenirsangkalan (non-repudiation) sumber daya terkait data dan informasi, Infrastruktur SPBE, dan aplikasi.', 'Penjelasan Level :\r\nLevel 1 : Pengendalian Keamanan Informasi belum atau telah tersedia dalam tahap pembangunan.\r\nLevel 2 : Pengendalian Keamanan Informasi telah tersedia. Kondisi: Pengendalian Keamanan Informasi telah dilaksanakan pada sebagian unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan pengendalian Keamanan Informasi telah dilaksanakan pada seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah dengan berdasarkan Risiko SPBE.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan pengendalian Keamanan Informasi dilakukan melalui strategi Keamanan Informasi yang ditetapkan oleh Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah. Selain itu, pengendalian Keamanan Informasi telah dilakukan reviu dan evaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi pengendalian Keamanan Informasi ditindaklanjuti melalui perbaikan penerapan proses pengendalian Keamanan Informasi.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator22a.pdf, indikator22b.pdf, indikator22c.pdf, dan seterusnya.'),
(65, 62, '1. Manajemen Data dilakukan melalui serangkaian proses pengelolaan arsitektur data, data induk, data referensi, basis data, kualitas data dan interoperabilitas data.\r\n2. Manajemen Data bertujuan untuk menjamin terwujudnya data yang akurat, mutakhir, terintegrasi, dan dapat diakses sebagai dasar perencanaan, pelaksanaan, evaluasi, dan pengendalian pembangunan nasional.', 'Penjelasan Level :\r\nLevel 1 : Kegiatan Manajemen Data belum atau telah diterapkan. Kondisi: Kegiatan Manajemen Data diterapkan tanpa program kegiatan yang terarah dan terencana.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan kegiatan Manajemen Data diterapkan dengan program kegiatan yang terarah dan terencana. Kondisi: Manajemen Data dilaksanakan tanpa mengacu pada pedoman Manajemen Data.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Manajemen Data telah dilaksanakan dengan mengacu pada pedoman Manajemen Data yang mencakup pengelolaan arsitektur data, data induk, data referensi, basis data, kualitas data, dan interoperabilitas data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Manajemen Data dilaksanakan melalui strategi pengelolaan data yang ditetapkan Forum Satu Data atau Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah dan diterapkan ke seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah. Selain itu, penerapan Manajemen Data telah direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi Manajemen Data ditindaklanjuti melalui perbaikan penerapan Manajemen Data.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator23a.pdf, indikator23b.pdf, indikator23c.pdf, dan seterusnya.'),
(66, 63, '1. Manajemen aset teknologi informasi dan komunikasi dilakukan melalui serangkaian proses perencanaan, pengadaan, pengelolaan, dan penghapusan perangkat keras dan perangkat lunak yang digunakan dalam SPBE.\r\n2. Manajemen aset teknologi informasi dan komunikasi bertujuan untuk menjamin ketersediaan dan optimalisasi pemanfaatan aset teknologi informasi dan komunikasi dalam SPBE.\r\n3. Aset TIK mencakup perangkat lunak, perangkat keras, data dan informasi, infrastruktur, SDM, lisensi, data, SOP, outsource services, dan IT asset register.', 'Penjelasan Level :\r\nLevel 1 : Kegiatan Manajemen Aset TIK belum atau telah diterapkan. Kondisi: Kegiatan Manajemen Aset TIK diterapkan tanpa program kegiatan yang terarah dan terencana.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan kegiatan Manajemen Aset TIK diterapkan dengan program kegiatan yang terarah dan terencana. Kondisi: Manajemen Aset TIK dilaksanakan tanpa mengacu pada pedoman Manajemen Aset TIK yang mencakup proses perencanaan, pengadaan, pemanfaatan/penggunaan, dan penghapusan aset TIK.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Manajemen Aset TIK telah dilaksanakan dengan mengacu pada pedoman Manajemen Aset TIK yang mencakup proses perencanaan, pengadaan, pemanfaatan/penggunaan, dan penghapusan aset TIK.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi, Manajemen Aset TIK dilaksanakan melalui strategi pengelolaan aset TIK oleh unit kerja/ perangkat daerah yang menjalankan fungsi pengelolaan TIK di Instansi Pusat/Pemerintah Daerah dan diterapkan ke seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah. Selain itu, penerapan Manajemen Aset TIK telah direviu dan dievaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi Manajemen Aset TIK ditindaklanjuti melalui perbaikan penerapan Manajemen Aset TIK.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator24a.pdf, indikator24b.pdf, indikator24c.pdf, dan seterusnya.');
INSERT INTO `tb_detail_indikator` (`id_detail_indikator`, `idindikator_detail`, `penjelasan_indikator_list`, `penjelasan_indikator_level`, `penjelasan_indikator_tambahan`) VALUES
(67, 64, '1. Manajemen Sumber Daya Manusia dilakukan melalui serangkaian proses perencanaan, pengembangan, pembinaan, dan pendayagunaan Sumber Daya Manusia dalam SPBE.\r\n2. Manajemen Sumber Daya Manusia bertujuan untuk menjamin keberlangsungan dan peningkatan mutu layanan dalam SPBE.\r\n3. Manajemen Sumber Daya Manusia (SDM) SPBE termasuk didalamnya kegiatan peningkatan kompetensi Sumber Daya Manusia SPBE dan promosi literasi SPBE.', 'Penjelasan Level :\r\nLevel 1 : Pemenuhan kompetensi Sumber Daya Manusia belum atau telah diupayakan. Kondisi: Pemenuhan kompetensi Sumber Daya Manusia SPBE dilakukan tanpa perencanaan Sumber Daya Manusia.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan pemenuhan kompetensi Sumber Daya Manusia SPBE dilakukan sesuai dengan perencanaan Sumber Daya Manusia. Kondisi: Kompetensi Sumber Daya Manusia SPBE tidak/belum terpenuhi seluruhnya yaitu kompetensi di bidang proses bisnis memerintahan, arsitektur SPBE, data dan informasi, keamanan SPBE, aplikasi SPBE, dan infrastruktur SPBE.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan kompetensi Sumber Daya Manusia SPBE telah terpenuhi seluruhnya yaitu kompetensi di bidang proses bisnis memerintahan, arsitektur SPBE, data dan informasi, keamanan SPBE, aplikasi SPBE, dan infrastruktur SPBE.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi, peningkatan dan penilaian kompetensi Sumber Daya Manusia SPBE telah dilakukan. Selain itu, pemenuhan kompetensi Sumber Daya Manusia SPBE telah dilakukan reviu dan evaluasi secara periodik.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi telah ditindaklanjuti melalui perbaikan perencanaan dan pemenuhan kompetensi Sumber Daya Manusia SPBE.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator25a.pdf, indikator25b.pdf, indikator25c.pdf, dan seterusnya.'),
(68, 65, 'Manajemen Pengetahuan adalah proses yang dilakukan untuk mendokumentasi pengalaman dan pengetahuan dalam perencanaan, implementasi, dan evaluasi SPBE guna meningkatkan kualitas Layanan SPBE dan mendukung proses pengambilan keputusan dalam SPBE.', 'Penjelasan Level :\r\nLevel 1 : Manajemen Pengetahuan SPBE belum atau telah diterapkan. Kondisi: Manajemen Pengetahuan SPBE diterapkan tanpa perencanaan.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan dilaksanakan dengan perencanaan. Kondisi: Manajemen Pengetahuan SPBE telah dilaksanakan tanpa pedoman di Instansi Pusat/Pemerintah Daerah.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi, Manajemen Pengetahuan SPBE dilaksanakan dengan mengacu pada pedoman di Instansi Pusat/Pemerintah Daerah dan Manajemen Pengetahuan SPBE diterapkan dengan menggunakan sistem aplikasi manajemen pengetahuan.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi, semua unit kerja/perangkat daerah telah menerapkan Manajemen Pengetahuan SPBE dengan menggunakan sistem aplikasi manajemen pengetahuan yang terintegrasi serta telah dilakukan reviu dan evaluasi terhadap penerapan Manajemen Pengetahuan SPBE.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi terhadap penerapan Manajemen Pengetahuan SPBE telah ditindaklanjuti melalui perbaikan Manajemen Pengetahuan SPBE.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator26a.pdf, indikator26b.pdf, indikator26c.pdf, dan seterusnya.'),
(69, 66, '1. Manajemen Perubahan dilakukan melalui serangkaian proses perencanaan, analisis, pengembangan, implementasi, pemantauan dan evaluasi terhadap perubahan SPBE.\r\n2. Manajemen Perubahan bertujuan untuk menjamin keberlangsungan dan meningkatkan kualitas Layanan SPBE melalui pengendalian perubahan yang terjadi dalam SPBE.\r\n3. Lingkup Manajemen Perubahan SPBE:\r\nPerubahan Aplikasi;\r\nPerubahan Perangkat Keras;\r\nPerubahan Perangkat Lunak;\r\nPerubahan Infrastruktur;\r\nPerubahan Proses Bisnis;\r\nPerubahan Lingkungan Organisasi;\r\nPerubahan Layanan;\r\nPerubahan Data;\r\nPerubahan Keamanan;\r\nPerubahan Arsitektur.', 'Penjelasan Level :\r\nLevel 1 : Kegiatan Manajemen Perubahan SPBE belum atau telah dilaksanakan. Kondisi: Kegiatan Manajemen Perubahan SPBE dilaksanakan tanpa perencanaan.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan kegiatan Manajemen Perubahan SPBE dilaksanakan dengan perencanaan. Kondisi: Kegiatan Manajemen Perubahan SPBE tidak/belum dilaksanakan oleh seluruh unit kerja/perangkat daerah terkait di Instansi Pusat/Pemerintah Daerah dengan caranya masing-masing.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan kegiatan Manajemen Perubahan SPBE dilaksanakan oleh seluruh unit kerja/perangkat daerah terkait di Instansi Pusat/Pemerintah Daerah sesuai pedoman Manajemen Perubahan.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan kegiatan Manajemen Perubahan SPBE telah dilakukan reviu dan evaluasi.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi telah ditindaklanjuti melalui perbaikan Manajemen Perubahan SPBE.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator27a.pdf, indikator27b.pdf, indikator27c.pdf, dan seterusnya.'),
(70, 67, '1. Manajemen Layanan merupakan serangkaian proses pelayanan kepada pengguna, pengoperasian layanan, dan pengelolaan Aplikasi SPBE agar Layanan SPBE dapat berjalan berkesinambungan dan berkualitas.\r\n2. Manajemen Layanan bertujuan untuk menjamin keberlangsungan dan meningkatkan kualitas Layanan SPBE kepada Pengguna SPBE.\r\n3. Penyelenggaraan Manajemen Layanan SPBE ditujukan untuk memberikan dukungan terhadap layanan publik berbasis elektronik dan layanan administrasi pemerintahan berbasis elektronik agar Layanan SPBE tersebut dapat berjalan secara berkesinambungan, berkualitas, responsif, dan adaptif.\r\n4. Penyelenggaraan Manajemen Layanan dapat diwujudkan dengan membangun portal pusat layanan untuk menjalankan proses:\r\npengelolaan keluhan, gangguan, masalah, permintaan, dan perubahan Layanan SPBE dari pengguna;\r\npendayagunaan dan pemeliharaan Infrastruktur SPBE dan Aplikasi SPBE; dan\r\npembangunan dan pengembangan aplikasi yang berpedoman pada metodologi pembangunan dan pengembangan aplikasi.', 'Penjelasan Level :\r\nLevel 1 : Manajemen Layanan SPBE belum atau telah dilaksanakan. Kondisi: Manajemen Layanan SPBE dilaksanakan tanpa perencanaan.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Manajemen Layanan SPBE dilaksanakan dengan perencanaan. Kondisi: Manajemen Layanan SPBE tidak/belum dilaksanakan pada seluruh proses Manajemen Layanan SPBE yaitu Pelayanan Pengguna SPBE dan Pengoperasian Layanan SPBE.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Manajemen Layanan SPBE dilaksanakan pada seluruh proses Manajemen Layanan SPBE yaitu Pelayanan Pengguna SPBE dan Pengoperasian Layanan SPBE.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi, Manajemen Layanan SPBE telah diterapkan dengan menggunakan sistem aplikasi manajemen layanan, dan kegiatan Manajemen Layanan SPBE telah dilakukan reviu dan evaluasi.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi serta hasil reviu dan evaluasi telah ditindaklanjuti melalui perbaikan Manajemen Layanan SPBE.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator28a.pdf, indikator28b.pdf, indikator28c.pdf, dan seterusnya.'),
(71, 68, '1. Audit Infrastruktur SPBE Instansi Pusat dan Pemerintah Daerah dilaksanakan berdasarkan standar dan tata cara pelaksanaan Audit Infrastruktur SPBE.\r\n2. Audit Infrastruktur SPBE meliputi pemeriksaan hal pokok teknis antara lain:\r\npenerapan tata kelola dan manajemen infrastruktur SPBE;\r\ninfrastruktur SPBE;\r\nkinerja infrastruktur SPBE yang dihasilkan; dan\r\naspek infrastruktur SPBE lainnya.', 'Penjelasan Level :\r\nLevel 1 : Kegiatan Audit Infrastruktur SPBE belum atau telah dilaksanakan. Kondisi: Kegiatan Audit Infrastruktur dilaksanakan tanpa perencanaan yang berkesinambungan.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan kegiatan Audit Infrastruktur dilaksanakan sesuai dengan perencanaan yang berkesinambungan. Kondisi: Kegiatan Audit Infrastruktur dilaksanakan tanpa pedoman Audit Infrastruktur.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan kegiatan Audit Infrastruktur dilaksanakan sesuai dengan pedoman Audit Infrastruktur. Kondisi: kegiatan Audit Infrastruktur dilaksanakan oleh auditor TIK/Sistem Informasi internal Instansi Pusat/Pemerintah Daerah.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan kegiatan Audit Infrastruktur dilaksanakan oleh auditor TIK/Sistem Informasi eksternal yang memiliki sertifikasi auditor TIK/Sistem Informasi.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan hasil audit Infrastruktur SPBE telah ditindaklanjuti melalui perbaikan penerapan Infrastruktur SPBE.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator29a.pdf, indikator29b.pdf, indikator29c.pdf, dan seterusnya.'),
(72, 69, '1. Audit Aplikasi SPBE Instansi Pusat dan Pemerintah Daerah dilaksanakan berdasarkan standar dan tata cara pelaksanaan Audit Aplikasi SPBE.\r\n2. Audit Aplikasi SPBE terdiri atas:\r\nAudit Aplikasi Umum\r\nAudit Aplikasi Khusus\r\n3. Standar/pedoman audit dapat berupa standar internal Instansi Pusat/Pemerintah Daerah, standar/pedoman nasional, atau standar/pedoman internasional.', 'Penjelasan Level :\r\nLevel 1 : Kegiatan Audit Aplikasi SPBE belum atau telah dilaksanakan. Kondisi: Kegiatan Audit Aplikasi dilaksanakan tanpa perencanaan yang berkesinambungan.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan kegiatan Audit Aplikasi dilaksanakan sesuai dengan perencanaan yang berkesinambungan. Kondisi: Kegiatan Audit Aplikasi dilaksanakan tanpa pedoman Audit Aplikasi SPBE.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan kegiatan Audit Aplikasi dilaksanakan sesuai dengan pedoman Audit Aplikasi SPBE. Kondisi: kegiatan Audit Aplikasi dilaksanakan oleh auditor TIK/Sistem Informasi internal Instansi Pusat/Pemerintah Daerah.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan kegiatan Audit Aplikasi dilaksanakan oleh auditor TIK/Sistem Informasi eksternal yang memiliki sertifikasi auditor TIK/Sistem Informasi.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan hasil audit Aplikasi SPBE telah ditindaklanjuti melalui perbaikan penerapan Aplikasi SPBE.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator30a.pdf, indikator30b.pdf, indikator30c.pdf, dan seterusnya.'),
(73, 70, '1. Audit Keamanan SPBE Instansi Pusat dan Pemerintah Daerah dilaksanakan berdasarkan standar dan tata cara pelaksanaan Audit Keamanan SPBE.\r\n2. Audit Keamanan SPBE terdiri atas:\r\nAudit Keamanan Aplikasi; dan\r\nAudit Keamanan Infrastruktur.\r\n3. Standar/pedoman audit dapat berupa standar internal Instansi Pusat/Pemerintah Daerah, standar/pedoman nasional, atau standar/pedoman internasional.', 'Penjelasan Level :\r\nLevel 1 : Kegiatan Audit Keamanan SPBE belum atau telah dilaksanakan. Kondisi: Kegiatan Audit Keamanan dilaksanakan tanpa perencanaan yang berkesinambungan.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan kegiatan Audit Keamanan dilaksanakan sesuai dengan perencanaan yang berkesinambungan. Kondisi: Kegiatan Audit Keamanan dilaksanakan tanpa pedoman Audit Keamanan.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan kegiatan Audit Keamanan dilaksanakan sesuai dengan pedoman Audit Keamanan. Kondisi: kegiatan Audit Keamanan dilaksanakan oleh auditor TIK/Sistem Keamanan Informasi internal Instansi Pusat/Pemerintah Daerah.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan kegiatan Audit Keamanan dilaksanakan oleh auditor TIK/Sistem Keamanan Informasi eksternal yang memiliki sertifikasi auditor TIK/Sistem Keamanan Informasi.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan hasil audit Keamanan SPBE telah ditindaklanjuti melalui perbaikan penerapan Keamanan SPBE.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator31a.pdf, indikator31b.pdf, indikator31c.pdf, dan seterusnya.'),
(74, 71, '1. Perencanaan adalah serangkaian proses untuk menghasilkan pengelolaan perencanaan yang efektif, efisien, dan akuntabel.\r\n2. Layanan Perencanaan Berbasis Elektronik yang dimaksud merupakan keluaran yang dihasilkan 1 (satu) atau lebih aplikasi yang memberikan nilai manfaat dalam pengelolaan perencanaan Instansi Pusat dan/atau Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Layanan Perencanan Berbasis Elektronik hanya memberikan layanan informasi terkait perencanaan kegiatan pemerintah.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Layanan Perencanan Berbasis Elektronik memberikan layanan interaksi terkait perencanaan kegiatan pemerintah seperti pencarian informasi, pengunggahan dan pengunduhan dokumen perencanaan.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Perencanaan Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait perencanaan kegiatan pemerintah seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Layanan Perencanaan Berbasis Elektronik memberikan layanan kolaborasi dengan layanan elektronik lain, misalnya layanan penganggaran berbasis elektronik, layanan keuangan berbasis elektronik, layanan pengadaan berbasis elektronik, layanan perencanaan berbasis elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Layanan Perencanaan Berbasis Elektronik telah dilakukan perbaikan berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundangundangan, teknologi atau kebutuhan Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator32a.pdf, indikator32b.pdf, indikator32c.pdf, dan seterusnya.'),
(75, 72, '1. Penganggaran adalah serangkaian proses untuk menghasilkan pengelolaan penganggaran yang efektif, efisien, dan akuntabel.\r\n2. Layanan Penganggaran Berbasis Elektronik yang dimaksud merupakan keluaran yang dihasilkan 1 (satu) atau lebih aplikasi yang memberikan nilai manfaat dalam pengelolaan penganggaran Instansi Pusat dan/atau Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Layanan Penganggaran Berbasis Elektronik hanya memberikan layanan informasi terkait penganggaran kegiatan pemerintah.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Layanan Penganggaran Berbasis Elektronik memberikan layanan interaksi terkait penganggaran kegiatan pemerintah seperti pencarian informasi, pengunggahan dan pengunduhan dokumen penganggaran.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Penganggaran Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait penganggaran kegiatan pemerintah seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Layanan Penganggaran Berbasis Elektronik memberikan layanan kolaborasi dengan layanan elektronik lain, misalnya layanan perencanaan berbasis elektronik, layanan keuangan berbasis elektronik, layanan pengadaan berbasis elektronik, layanan penganggaran berbasis elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Layanan Penganggaran Berbasis Elektronik telah dilakukan perbaikan berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundang-undangan, teknologi atau kebutuhan Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator33a.pdf, indikator33b.pdf, indikator33c.pdf, dan seterusnya.'),
(76, 73, '1. Keuangan adalah serangkaian proses untuk menghasilkan pengelolaan keuangan yang efektif, efisien, dan akuntabel.\r\n2. Layanan Keuangan Berbasis Elektronik yang dimaksud merupakan keluaran yang dihasilkan 1 (satu) atau lebih aplikasi yang memberikan nilai manfaat dalam pengelolaan keuangan Instansi Pusat dan/atau Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Layanan Keuangan Berbasis Elektronik hanya memberikan layanan informasi terkait keuangan di Instansi Pusat/Pemerintah.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Layanan Keuangan Berbasis Elektronik memberikan layanan interaksi terkait keuangan seperti pencarian informasi, pengunggahan dan pengunduhan dokumen.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Keuangan Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait keuangan seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Layanan Keuangan Berbasis Elektronik memberikan layanan kolaborasi dengan layanan elektronik lain, misalnya Layanan Penganggaran Berbasis Elektronik, Layanan Pengadaan Berbasis Elektronik, Layanan Perencanaan Berbasis Elektronik, Layanan Keuangan Berbasis Elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Layanan Keuangan Berbasis Elektronik telah dilakukan perbaikan berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundangundangan, teknologi atau kebutuhan Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator34a.pdf, indikator34b.pdf, indikator34c.pdf, dan seterusnya.'),
(77, 74, '1. Pengadaan Barang/Jasa adalah serangkaian proses untuk menghasilkan pengelolaan Pengadaan barang/jasa yang efektif, efisien, dan akuntabel.\r\n2. Layanan Pengadaan Barang/Jasa Berbasis Elektronik yang dimaksud merupakan keluaran yang dihasilkan 1 (satu) atau lebih aplikasi yang memberikan nilai manfaat dalam pengelolaan pengadaan barang/jasa Instansi Pusat dan/atau Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Layanan Pengadaan Barang dan Jasa Berbasis Elektronik hanya memberikan layanan informasi terkait pengadaan barang dan jasa di Instansi Pusat/Pemerintah.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Layanan Pengadaan Barang dan Jasa Berbasis Elektronik memberikan layanan interaksi terkait pengadaan barang dan jasa seperti pencarian informasi, pengunggahan dan pengunduhan dokumen.\r\nLevel 3 : Kriteria tingkat 2 telaaKriteria tingkat 2 telah terpenuhi dan Layanan Pengadaan Barang dan Jasa Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait pengadaan barang dan jasa seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.h terpenuhi dan Layanan Keuangan Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait keuangan seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Layanan Pengadaan Barang dan Jasa Berbasis Elektronik memberikan layanan kolaborasi dengan layanan elektronik lain, misalnya Layanan Penganggaran Berbasis Elektronik, Layanan Perencanaan Berbasis Elektronik, Layanan Keuangan Berbasis Elektronik, Layanan Pengadaan Barang dan Jasa Berbasis Elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Layanan Pengadaan Barang dan Jasa Berbasis Elektronik telah dilakukan perbaikan berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundang-undangan, teknologi atau kebutuhan Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator35a.pdf, indikator35.pdf, indikator35.pdf, dan seterusnya.'),
(78, 75, '1. Kepegawaian adalah serangkaian proses untuk menghasilkan pengelolaan kepegawaian yang efektif, efisien, dan akuntabel.\r\n2. Layanan Kepegawaian Berbasis Elektronik yang dimaksud merupakan keluaran yang dihasilkan 1 (satu) atau lebih aplikasi yang memberikan nilai manfaat dalam pengelolaan kepegawaian Instansi Pusat dan/atau Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Layanan Kepegawaian Berbasis Elektronik hanya memberikan layanan informasi terkait kepegawaian.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Layanan Kepegawaian Berbasis Elektronik memberikan layanan interaksi terkait kepegawaian seperti pencarian informasi, pengunggahan dan pengunduhan dokumen.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Kepegawaian Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait kepegawaian seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Layanan Kepegawaian Berbasis Elektronik memberikan layanan kolaborasi dengan layanan elektronik lain, misalnya Layanan Kinerja Berbasis Elektronik, Layanan Keuangan Berbasis Elektronik, Layanan Kepegawaian Berbasis Elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Layanan Kepegawaian Berbasis Elektronik telah dilakukan perbaikan berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundangundangan, teknologi atau kebutuhan Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator36a.pdf, indikator36b.pdf, indikator36c.pdf, dan seterusnya.'),
(79, 76, '1. Kearsipan adalah serangkaian proses untuk menghasilkan pengelolaan kearsipan yang efektif, efisien, dan akuntabel.\r\n2. Arsip terbagi 2, yaitu Arsip Dinamis dan Arsip Statis.\r\n3. Arsip dinamis merupakan dokumen/naskah dinas yang masih digunakan.\r\n4. Arsip statis merupakan dokumen/naskah dinas yang telah melewati masa retensinya.\r\n5. Layanan Kearsipan Berbasis Elektronik yang dimaksud merupakan keluaran yang dihasilkan 1 (satu) atau lebih aplikasi yang memberikan nilai manfaat dalam pengelolaan kearsipan Instansi Pusat dan/atau Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Layanan Kearsipan Dinamis Berbasis Elektronik hanya memberikan layanan informasi terkait kearsipan dinamis.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Layanan Kearsipan Dinamis Berbasis Elektronik memberikan layanan interaksi terkait kearsipan dinamis seperti pencarian informasi, pengunggahan dan pengunduhan dokumen.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Kearsipan Dinamis Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait kearsipan dinamis seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Layanan Kearsipan Dinamis Berbasis Elektronik memberikan layanan kolaborasi dengan layanan elektronik lain, misalnya Layanan Pengadaan Barang dan Jasa Berbasis Elektronik, Layanan Kepegawaian Berbasis Elektronik, Layanan Kearsipan Dinamis Berbasis Elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Layanan Kearsipan Dinamis Berbasis Elektronik telah dilakukan perbaikan berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundang-undangan, teknologi atau kebutuhan Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator37a.pdf, indikator37b.pdf, indikator37c.pdf, dan seterusnya.'),
(80, 77, '1. Pengelolaan Barang Milik Negara/Daerah (BMN/BMD) adalah serangkaian proses untuk menghasilkan pengelolaan BMN yang efektif, efisien, dan akuntabel.\r\n2. Layanan Pengelolaan BMN/BMD Berbasis Elektronik yang dimaksud merupakan keluaran yang dihasilkan 1 (satu) atau lebih aplikasi yang memberikan nilai manfaat dalam pengelolaan BMN Instansi Pusat dan/atau BMD Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Layanan Pengelolaan Barang Milik Negara/Daerah Berbasis Elektronik hanya memberikan layanan informasi terkait pengelolaan barang milik negara\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Layanan Pengelolaan Barang Milik Negara/Daerah Berbasis Elektronik memberikan layanan interaksi terkait pengelolaan barang milik negara/daerah seperti pencarian informasi, pengunggahan dan pengunduhan dokumen.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Pengelolaan Barang Milik Negara/Daerah Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait pengelolaan barang milik negara/daerah seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Layanan Pengelolaan Barang Milik Negara/Daerah Berbasis Elektronik memberikan layanan kolaborasi dengan layanan elektronik lain, misalnya Layanan Penganggaran Berbasis Elektronik, Layanan Pengadaan Barang dan Jasa Berbasis Elektronik, Layanan Keuangan Berbasis Elektronik, Layanan Pengelolaan Barang Milik Negara/Daerah Berbasis Elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Layanan Pengelolaan Barang Milik Negara/Daerah Berbasis Elektronik telah dilakukan perbaikan berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundang-undangan, teknologi atau kebutuhan Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator38a.pdf, indikator38b.pdf, indikator38c.pdf, dan seterusnya.'),
(81, 78, '1. Pengawasan Internal adalah serangkaian proses untuk menghasilkan pengelolaan pengawasan internal yang efektif, efisien, dan akuntabel.\r\n2. Layanan Pengawasan Internal Berbasis Elektronik yang dimaksud merupakan keluaran yang dihasilkan 1 (satu) atau lebih aplikasi yang memberikan nilai manfaat dalam pengelolaan Pengawasan Internal Instansi Pusat dan/atau Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Layanan Pengawasan Internal Pemerintah Berbasis Elektronik hanya memberikan layanan informasi terkait pengawasan internal pemerintah.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Layanan Pengawasan Internal Pemerintah Berbasis Elektronik memberikan layanan interaksi terkait pengawasan internal pemerintah seperti pencarian informasi, pengunggahan dan pengunduhan dokumen.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Pengawasan Internal Pemerintah Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait pengawasan internal pemerintah seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Layanan Pengawasan Internal Pemerintah Berbasis Elektronik memberikan layanan kolaborasi dengan layanan elektronik lain, misalnya Layanan Kepegawaian Berbasis Elektronik, Layanan Akuntabilitas Kinerja Berbasis Elektronik, Layanan Pengawasan Internal Pemerintah Berbasis Elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Layanan Pengawasan Internal Berbasis Elektronik telah dilakukan perbaikan berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundang-undangan, teknologi atau kebutuhan Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator39a.pdf, indikator39b.pdf, indikator39c.pdf, dan seterusnya.'),
(82, 79, '1. Akuntabilitas Kinerja Instansi Pusat/Pemerintah Daerah adalah serangkaian proses untuk menghasilkan pengelolaan Akuntabilitas Kinerja Instansi Pusat/Pemerintah Daerah yang efektif, efisien, dan akuntabel.\r\n2. Layanan Akuntabilitas Kinerja Instansi Pusat/Pemerintah Daerah Berbasis Elektronik yang dimaksud merupakan keluaran yang dihasilkan 1 (satu) atau lebih aplikasi yang memberikan nilai manfaat dalam pengelolaan Akuntabilitas Kinerja Instansi Pusat/Pemerintah Daerah Instansi Pusat dan/atau Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Layanan Akuntabilitas Kinerja Instansi Pusat/Pemerintah Daerah Berbasis Elektronik hanya memberikan layanan informasi terkait akuntabilitas kinerja Instansi Pusat/Pemerintah Daerah.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Layanan Akuntabilitas Kinerja Instansi Pusat/Pemerintah Daerah Berbasis Elektronik memberikan layanan interaksi terkait akuntabilitas kinerja Instansi Pusat/Pemerintah Daerah seperti pencarian informasi, pengunggahan dan pengunduhan dokumen.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Akuntabilitas Kinerja Instansi Pusat/Pemerintah Daerah Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait akuntabilitas kinerja Instansi Pusat/Pemerintah Daerah seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Layanan Akuntabilitas Kinerja Instansi Pusat/Pemerintah Daerah Berbasis Elektronik memberikan layanan kolaborasi dengan layanan elektronik lain, misalnya Layanan Penganggaran Berbasis Elektronik, Layanan Pengadaan Berbasis Elektronik, Layanan Perencanaan Berbasis Elektronik, Layanan Keuangan Berbasis Elektronik, Layanan Akuntabilitas Kinerja Instansi Pusat/Pemerintah Daerah Berbasis Elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Layanan Akuntabilitas Kinerja Instansi Pusat/Pemerintah Daerah Berbasis Elektronik telah dilakukan perbaikan berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundang-undangan, teknologi atau kebutuhan Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator40a.pdf, indikator40b.pdf, indikator40c.pdf, dan seterusnya.'),
(83, 85, '1. Layanan Publik Sektor adalah serangkaian proses untuk menghasilkan pengelolaan tugas dan fungsi sektoral Instansi Pusat/Pemerintah Daerah yang efektif, efisien, dan akuntabel.\r\n2. Layanan Publik Sektor Berbasis Elektronik yang dimaksud merupakan keluaran yang dihasilkan 1 (satu) atau lebih aplikasi yang memberikan nilai manfaat dalam pengelolaan Layanan Publik Sektoral Instansi Pusat/Pemerintah DaerahInstansi Pusat dan/atau Pemerintah Daerah.\r\n3. Layanan Publik Sektor yang dimaksud merupakan layanan sektoral selain pada indikator 32 â€“ 44.', 'Penjelasan Level : \r\nLevel 1 : Layanan Publik Sektoral Berbasis Elektronik hanya memberikan layanan informasi terkait Publik Sektoral kegiatan pemerintah.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Layanan Publik Sektoral Berbasis Elektronik memberikan layanan interaksi terkait Publik Sektoral kegiatan pemerintah seperti pencarian informasi, pengunggahan dan pengunduhan dokumen Layanan Publik Sektoral.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Publik Sektoral Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait Publik Sektoral kegiatan pemerintah seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Layanan Publik Sektoral Berbasis Elektronik memberikan layanan kolaborasi dengan layanan elektronik lain, misalnya Layanan Publik Sektoral Berbasis Elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Layanan Publik Sektoral Berbasis Elektronik telah dilakukan perbaikan berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundang-undangan, teknologi dan kebutuhan Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator46a.pdf, indikator46b.pdf, indikator46c.pdf, dan seterusnya.'),
(84, 80, '1. Kinerja Pegawai adalah serangkaian proses untuk menghasilkan pengelolaan kinerja pegawai Instansi Pusat/Pemerintah Daerah yang efektif, efisien, dan akuntabel.\r\n2. Layanan Kinerja Pegawai Instansi Pusat/Pemerintah Daerah Berbasis Elektronik yang dimaksud merupakan keluaran yang dihasilkan 1 (satu) atau lebih aplikasi yang memberikan nilai manfaat dalam pengelolaan kinerja pegawai di Instansi Pusat dan/atau Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Layanan Kinerja Pegawai Berbasis Elektronik hanya memberikan layanan informasi terkait kinerja pegawai.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Layanan Kinerja Pegawai Berbasis Elektronik memberikan layanan interaksi terkait kinerja pegawai seperti pencarian informasi, pengunggahan dan pengunduhan dokumen.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Kinerja Pegawai Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait kinerja pegawai seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Layanan Kinerja Pegawai Berbasis Elektronik memberikan layanan kolaborasi dengan layanan elektronik lain, misalnya Layanan Perencanaan Berbasis Elektronik, Layanan Akuntabilitas Berbasis Elektronik, Layanan Kinerja Pegawai Berbasis Elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Layanan Kinerja Pegawai Berbasis Elektronik telah dilakukan perbaikan berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundang-undangan, teknologi atau kebutuhan Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator41a.pdf, indikator41b.pdf, indikator41c.pdf, dan seterusnya.'),
(85, 81, '1. Pengaduan Pelayanan Publik adalah serangkaian proses untuk menghasilkan pengelolaan pengaduan pelayanan publik Instansi Pusat/Pemerintah Daerah yang efektif, efisien, dan akuntabel.\r\n2. Layanan Pengaduan Pelayanan Publik Berbasis Elektronik yang dimaksud merupakan keluaran yang dihasilkan 1 (satu) atau lebih aplikasi yang memberikan nilai manfaat dalam pengelolaan pengaduan pelayanan publik di Instansi Pusat dan/atau Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Layanan Pengaduan Pelayanan Publik Berbasis Elektronik hanya memberikan layanan informasi terkait pengaduan pelayanan publik.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Layanan Pengaduan Pelayanan Publik Berbasis Elektronik memberikan layanan interaksi terkait pengaduan pelayanan publik seperti pencarian informasi, pengunggahan dan pengunduhan dokumen.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Pengaduan Pelayanan Publik Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait pengaduan pelayanan publik seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Layanan Pengaduan Pelayanan Publik Berbasis Elektronik memberikan layanan kolaborasi dengan layanan elektronik lain, misalnya Layanan Kepegawaian Berbasis Elektronik, Layanan Pengaduan Pelayanan Publik Berbasis Elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Layanan Pengaduan Pelayanan Publik Berbasis Elektronik telah dilakukan perbaikan berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundang-undangan, teknologi atau kebutuhan Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator42a.pdf, indikator42b.pdf, indikator42c.pdf, dan seterusnya.'),
(86, 82, '1. Data Terbuka(Open Data) adalah serangkaian proses untuk menghasilkan pengelolaan data terbuka Instansi Pusat/Pemerintah Daerah yang efektif, efisien, dan akuntabel.\r\n2. Data Terbuka merupakan sekumpulan data yang dikelola oleh Instansi Pusat/Pemerintah Daerah yang dapat di bagi pakai oleh Instansi Pusat/Pemerintah Daerah lain.\r\n3. Layanan Data Terbuka Berbasis Elektronik yang dimaksud merupakan keluaran yang dihasilkan 1 (satu) atau lebih aplikasi yang memberikan nilai manfaat dalam pengelolaan data terbuka Instansi Pusat/Pemerintah Daerah Instansi Pusat dan/atau Pemerintah Daerah.', 'Penjelasan Level : \r\nLevel 1 :  Layanan Data Terbuka Berbasis Elektronik hanya memberikan layanan informasi terkait data terbuka.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Layanan Data Terbuka Berbasis Elektronik memberikan layanan interaksi terkait data terbuka seperti pencarian informasi, pengunggahan dan pengunduhan dokumen.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Data Terbuka Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait data terbuka seperti otomasi pertukaran data, otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Layanan Data Terbuka Berbasis Elektronik memberikan layanan kolaborasi dengan layanan elektronik lain, misalnya Layanan Data Terbuka Berbasis Elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Layanan Data Terbuka Berbasis Elektronik telah dilakukan perbaikan berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundangundangan, teknologi atau kebutuhan Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator43a.pdf, indikator43b.pdf, indikator43c.pdf, dan seterusnya.'),
(87, 83, '1. Jaringan Dokumentasi dan Informasi Hukum adalah serangkaian proses untuk menghasilkan pengelolaan jaringan dokumentasi dan informasi hukum Instansi Pusat/Pemerintah Daerah yang efektif, efisien, dan akuntabel.\r\n2. Layanan Jaringan Dokumentasi dan Informasi Hukum Berbasis Elektronik yang dimaksud merupakan keluaran yang dihasilkan 1 (satu) atau lebih aplikasi yang memberikan nilai manfaat dalam pengelolaan jaringan dokumentasi dan informasi hukum Instansi Pusat/Pemerintah Daerah Instansi Pusat dan/atau Pemerintah Daerah.', 'Penjelasan Level :\r\nLevel 1 : Layanan Jaringan Dokumentasi dan Informasi Hukum Berbasis Elektronik hanya memberikan layanan informasi terkait jaringan dokumentasi dan informasi hukum.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Layanan Jaringan Dokumentasi dan Informasi Hukum Berbasis Elektronik memberikan layanan interaksi terkait jaringan dokumentasi dan informasi hukum seperti pencarian informasi, pengunggahan dan pengunduhan dokumen.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Jaringan Dokumentasi dan Informasi Hukum Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait jaringan dokumentasi dan informasi hukum seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Layanan Jaringan Dokumentasi dan Informasi Hukum Berbasis Elektronik memberikan layanan kolaborasi dengan layanan elektronik lain, misalnya Layanan Jaringan Dokumentasi dan Informasi Hukum Berbasis Elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Layanan Jaringan Dokumentasi dan Informasi Hukum Berbasis Elektronik telah dilakukan perbaikan berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundang-undangan, teknologi atau kebutuhan Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator44a.pdf, indikator44b.pdf, indikator44c.pdf, dan seterusnya.'),
(88, 84, '1. Layanan Publik Sektor adalah serangkaian proses untuk menghasilkan pengelolaan tugas dan fungsi sektoral Instansi Pusat/Pemerintah Daerah yang efektif, efisien, dan akuntabel.\r\n2. Layanan Publik Sektor Berbasis Elektronik yang dimaksud merupakan keluaran yang dihasilkan 1 (satu) atau lebih aplikasi yang memberikan nilai manfaat dalam pengelolaan Layanan Publik Sektoral Instansi Pusat/Pemerintah DaerahInstansi Pusat dan/atau Pemerintah Daerah.\r\n3. Layanan Publik Sektor yang dimaksud merupakan layanan sektoral selain pada indikator 32 â€“ 44.', 'Penjelasan Level :\r\nLevel 1 : Layanan Publik Sektoral Berbasis Elektronik hanya memberikan layanan informasi terkait Publik Sektoral kegiatan pemerintah.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Layanan Publik Sektoral Berbasis Elektronik memberikan layanan interaksi terkait Publik Sektoral kegiatan pemerintah seperti pencarian informasi, pengunggahan dan pengunduhan dokumen Layanan Publik Sektoral.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Publik Sektoral Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait Publik Sektoral kegiatan pemerintah seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Layanan Publik Sektoral Berbasis Elektronik memberikan layanan kolaborasi dengan layanan elektronik lain, misalnya Layanan Publik Sektoral Berbasis Elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Layanan Publik Sektoral Berbasis Elektronik telah dilakukan perbaikan berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundang-undangan, teknologi dan kebutuhan Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator45a.pdf, indikator45b.pdf, indikator45c.pdf, dan seterusnya.'),
(89, 86, '1. Layanan Publik Sektor adalah serangkaian proses untuk menghasilkan pengelolaan tugas dan fungsi sektoral Instansi Pusat/Pemerintah Daerah yang efektif, efisien, dan akuntabel.\r\n2. Layanan Publik Sektor Berbasis Elektronik yang dimaksud merupakan keluaran yang dihasilkan 1 (satu) atau lebih aplikasi yang memberikan nilai manfaat dalam pengelolaan Layanan Publik Sektoral Instansi Pusat/Pemerintah DaerahInstansi Pusat dan/atau Pemerintah Daerah.\r\n3. Layanan Publik Sektor yang dimaksud merupakan layanan sektoral selain pada indikator 32 â€“ 44.', 'Penjelasan Level :\r\nLevel 1 : Layanan Publik Sektoral Berbasis Elektronik hanya memberikan layanan informasi terkait Publik Sektoral kegiatan pemerintah.\r\nLevel 2 : Kriteria tingkat 1 telah terpenuhi dan Layanan Publik Sektoral Berbasis Elektronik memberikan layanan interaksi terkait Publik Sektoral kegiatan pemerintah seperti pencarian informasi, pengunggahan dan pengunduhan dokumen Layanan Publik Sektoral.\r\nLevel 3 : Kriteria tingkat 2 telah terpenuhi dan Layanan Publik Sektoral Berbasis Elektronik memberikan layanan transaksi kepada pengguna terkait Publik Sektoral kegiatan pemerintah seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.\r\nLevel 4 : Kriteria tingkat 3 telah terpenuhi dan Layanan Publik Sektoral Berbasis Elektronik memberikan layanan kolaborasi dengan layanan elektronik lain, misalnya Layanan Publik Sektoral Berbasis Elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain.\r\nLevel 5 : Kriteria tingkat 4 telah terpenuhi dan Layanan Publik Sektoral Berbasis Elektronik telah dilakukan perbaikan berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundang-undangan, teknologi dan kebutuhan Instansi Pusat/Pemerintah Daerah.', 'Data pendukung dapat berupa dokumen kebijakan, bukti kegiatan telah melakukan tugas sebagaimana dimaksud pada dokumen kebijakan, bukti evaluasi kebijakan, bukti permintaan perubahan kebijakan, dan bukti lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator47a.pdf, indikator47b.pdf, indikator47c.pdf, dan seterusnya.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_domain`
--

CREATE TABLE `tb_domain` (
  `id_domain` int(11) NOT NULL,
  `indeks` int(11) NOT NULL,
  `nama_domain` varchar(100) NOT NULL,
  `bobot_domain` decimal(10,2) NOT NULL,
  `urutan_domain` int(11) NOT NULL,
  `user_katindex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_domain`
--

INSERT INTO `tb_domain` (`id_domain`, `indeks`, `nama_domain`, `bobot_domain`, `urutan_domain`, `user_katindex`) VALUES
(1, 1, 'Kebijakan SPBE', '17.00', 1, 1),
(2, 1, 'Tata Kelola SPBE', '28.00', 2, 1),
(4, 2, 'Dimensi Lingkungan (Smart Environment)', '0.16', 1, 2),
(5, 2, 'Dimensi Mobilitas (Smart Mobility)', '0.11', 2, 2),
(6, 2, 'Dimensi Pemerintahan (Smart Government)', '0.12', 3, 2),
(7, 2, 'Dimensi Ekonomi (Smart Economy)', '0.12', 4, 2),
(8, 2, 'Dimensi Masyarakat (Smart People)', '0.29', 5, 2),
(9, 2, 'Dimensi Kualitas Hidup (Smart Living)', '0.20', 6, 2),
(14, 1, 'Manajemen SPBE', '10.00', 3, 1),
(15, 1, 'Layanan SPBE', '55.00', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_domain_nilai`
--

CREATE TABLE `tb_domain_nilai` (
  `id_domain_nilai` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `nilai_domain` decimal(10,2) NOT NULL,
  `indeks_nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_domain_nilai`
--

INSERT INTO `tb_domain_nilai` (`id_domain_nilai`, `domain`, `nilai_domain`, `indeks_nilai`) VALUES
(1, '1', '2.06', 1),
(2, '2', '2.29', 1),
(3, '3', '3.00', 1),
(4, '4', '0.00', 2),
(5, '5', '0.00', 2),
(6, '6', '0.00', 2),
(7, '7', '0.00', 2),
(8, '8', '0.00', 2),
(9, '9', '0.00', 2),
(11, '1', '3.00', 1),
(12, '2', '3.00', 1),
(13, '3', '3.61', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_eksekutif_opd`
--

CREATE TABLE `tb_eksekutif_opd` (
  `id_eksekutif_opd` int(11) NOT NULL,
  `idpenilaian` int(11) NOT NULL,
  `tahapan_yg_harus_dipenuhi_opd` text NOT NULL,
  `telah_miliki` text NOT NULL,
  `belum_miliki` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_eksekutif_opd`
--

INSERT INTO `tb_eksekutif_opd` (`id_eksekutif_opd`, `idpenilaian`, `tahapan_yg_harus_dipenuhi_opd`, `telah_miliki`, `belum_miliki`) VALUES
(1, 42, 'Kebijakan Tim Pengarah SPBE  memuat pengaturan tugas-tugas yang mendukung penerapan SPBE  yang terpadu pada semua unit kerja.\r\n;Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala.', 'SK Walikota Denpasar No. 188.45/1195/HK/2019 tentang Tim Pengarah SPBE', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(2, 43, 'Kebijakan Proses Bisnis Integrasi  memuat pengaturan tersusunnya proses bisnis yang terintegrasi antar unit kerja.\r\n;Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'SK Walikota Denpasar Nomor 188.45/1689/HK/2019 tentang Peta Proses Bisnis Pemerintah Kota Denpasar', 'Hasil monitoring dan evaluasi terhadap kebijakan  yang dimiliki.'),
(3, 44, 'Kebijakan Rencana Induk Blue Print eGov,  dengan memuat pengaturan tersusunnya rencana induk yang mencakup secara lengkap visi, misi, strategi, sasaran, arsitektur, dan peta rencana SPBE.\r\n;Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'SK Walikota Denpasar Nomor 188.45 / 1612 / HK / 2019 tentang Rencana Induk Pengembangan Teknologi Informasi Komunikasi Terpadu (Cetak Biru eGovernment).', 'Hasil monitoring dan evaluasi terhadap kebijakan yang telah dibuat yang dimiliki.'),
(4, 45, 'Kebijakan Anggaran dan  Belanja TIK,  memuat pengaturan terkait penyelarasan dengan rencana induk SPBE, pengendalian rencana dan anggaran TIK yang terpadu di dalam Instansi Pusat/Pemerintah Daerah, dan mendukung penerapan SPBE yang terpadu.\r\n;Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'PERDA Kota Denpasar No 6 Tahun 2018 Tentang APBD Tahun Anggaran 2019', 'Hasil monitoring dan evaluasi terhadap kebijakan  yang dimiliki.'),
(5, 46, '1.  Kebijakan agar memuat pengaturan pengoperasian dan pemanfaatan pusat data bagi semua unit kerja. \r\n;2. Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Perwali No 35 Tahun 2014, Tentang Penyelenggaraan Sistem Elektronik (e-Government) di Lingkungan Pemerintah Kota Denpasar, Bab VI Pasal 20', 'Hasil monitoring dan evaluasi terhadap kebijakan  yang dimiliki.'),
(6, 47, '1. Kebijakan agar memuat pengaturan integrasi sistem aplikasi sesuai dengan Arsitektur SPBE. ;2. Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Perwali No 35 Tahun 2014, Tentang Penyelenggaraan Sistem Elektronik (e-Government) di Lingkungan Pemerintah Kota Denpasar, Pasal 14 ayat 6', 'Hasil monitoring dan evaluasi terhadap kebijakan  yang dimiliki.'),
(7, 48, '1. Kebijakan aplikasi monitoring dan evaluasi (Simonev) Karma Simanis,  memuat pengaturan integrasi dengan layanan SPBE lain yang telah tersedia. ;2. Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Surat Keputusan Walikota Denpasar No 188.45 /1279/HK/2019', 'Hasil monitoring dan evaluasi terhadap kebijakan  yang dimiliki.'),
(8, 49, '1. Kebijakan Layanan Naskah Dinas memuat pengaturan kebutuhan dan penggunaan layanan naskah dinas secara elektronik pada semua unit kerja. 2. Kebijakan nantinya harus dimonitoring pelaksanaannya dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Perwali Denpasar Nomor 23 Tahun 2011 tentang Pedoman Tata Naskah Dinas, SK Walikota No 188.45 / 1186 / HK / 2017.', 'Kebijakan Layanan Naskah Dinas Elektronik.\r\n\r\nHasil monitoring dan evaluasi terhadap kebijakan  yang dimiliki.\r\n'),
(9, 50, '1. Kebijakan Layanan Manajemen Kepegawaian (Simak di Hati),  memuat pengaturan kebutuhan dan penggunaan layanan manajemen pegawai secara elektronik pada semua unit kerja serta integrasi dengan SPBE lainnya. 2. Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'SK Walikota Denpasar, Nomor 188.45/1126/HK/2019, tentang Penetapan Sistem Informasi Manajemen Administrasi Kepegawaian Untuk Database yang Handal, Akurat, Tertib dan Informatif dalam Pelayanan Informasi Data Kepegawaian.', 'Hasil monitoring dan evaluasi terhadap kebijakan  yang dimiliki.'),
(10, 51, '1. Kebijakan memuat pengaturan kebutuhan dan penggunaan layanan manajemen perencanaan dan penganggaran secara elektronik pada semua unit kerja dan integrasi dengan SPBE lainnya. 2. Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'SK Walikota Denpasar Nomor 188.45 / 1589 / HK / 2019 tentang Penetapan Pelaksanaan Sistem Informasi Perencanaan Pembangunan Daerah Berbasis Elektronik / e-Planning di Kota Denpasar.', 'Hasil monitoring dan evaluasi terhadap kebijakan  yang dimiliki.'),
(11, 52, '1. Membuat Kebijakan Layanan Manajemen Keuangan, yang memuat pengaturan kebutuhan dan penggunaan layanan manajemen keuangan secara elektronik pada semua unit kerja dan integrasi dengan SPBE lainnya. 2. Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'SK Walikota Denpasar Nomor 188.45/1006/HK/2015, tentang Pembentukan Tim Koordinasi Percepatan Implementasi dan Pengembangan Sistem Informasi Pengelolaan Keuangan Daerah', 'Hasil monitoring dan evaluasi terhadap kebijakan  yang dimiliki.'),
(12, 53, '1. Kebijakan Layanan Manajemen Kinerja,  memuat pengaturan kebutuhan dan penggunaan layanan manajemen keuangan secara elektronik pada semua unit kerja serta dapat diintegrasikan dengan SPBE lainnya. 2. Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Peraturan Walikota Denpasar No 38 Tahun 2017, tentang Sistem Informasi Manajemen Kinerja', 'Hasil monitoring dan evaluasi terhadap kebijakan  yang dimiliki.'),
(13, 54, '1. Kebijakan Layanan Pengadaan dibuat tahun 2008, harus direvisi karena sudah 10 tahun lebih. Kebijakan juga memuat pengaturan integrasi dengan layanan SPBE lainnya. 2. Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Perwali No 2 Tahun 2008 Tentang Pedoman Pelaksanaan Pengadaan Barang/Jasa Secara Elektronik Di Pemerintah Kota Denpasar.', 'Hasil monitoring dan evaluasi terhadap kebijakan  yang dimiliki.'),
(14, 55, '1. Kebijakan Layanan Pengaduan Publik,  memuat pengaturan kebutuhan dan penggunaan layanan pengaduan secara elektronik pada semua unit kerja serta dapat diintegrasikan dengan SPBE lainnya. 2. Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Perwali No 45 Tahun 2013 tentang Pelayanan Penanganan Pengaduan Masyarakat di Lingkungan Pemerintah Kota Denpasar.', 'Hasil monitoring dan evaluasi terhadap kebijakan  yang dimiliki.'),
(15, 56, '1. Membuat Kebijakan Layanan JDIH,  dengan memuat pengaturan kebutuhan dan penggunaan layanan dokumentasi dan informasi hukum secara elektronik pada semua unit kerja serta dapat diintegrasi dengan SPBE lainnya. 2. Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'SK NO 826 TAHUN 2019 tentang Pembentukan Tim Pengelola Jaringan Dokumentasi dan Informasi Hukum', 'Hasil monitoring dan evaluasi terhadap kebijakan  yang dimiliki.'),
(16, 57, '1. Membuat atau Revisi Kebijakan Layanan WBS,  memuat pengaturan kebutuhan integrasi layanan WBS secara elektronik dengan layanan SPBE lain. 2. Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Perwali No 45 Tahun 2013 tentang Pelayanan Penanganan Pengaduan Masyarakat di Lingkungan Pemerintah Kota Denpasar', 'Hasil monitoring dan evaluasi terhadap kebijakan  yang dimiliki.'),
(17, 58, '1. Kebijakan Layanan Perijinan,  memuat pengaturan kebutuhan integrasi layanan publik secara elektronik dengan layanan SPBE lain. 2. Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Perwali No 39 Tahun 2019 tentang Penyelenggaraan Perizinan dan Non Perizinan.', 'Hasil monitoring dan evaluasi terhadap kebijakan  yang dimiliki.'),
(18, 59, '1. Tim Pengarah SPBE menjalankan tugas dan fungsinya secara menyeluruh sesuai dengan kebijakan internal yang telah ditetapkan. 2. Melakukan monitoring dan evaluasi terhadap tugas dan fungsi Tim pengarah SPBE sesuai Kebijakan, serta dibuatkan dokumentasi sebagai data pendukung.', 'SK Walikota Denpasar Nomor 188.45/1195/HK/2019 tentang Pembentukan Tim Pengarah Sistem Pemerintah Berbasis Elektronik.', 'Hasil monitoring dan evaluasi terhadap tugas dan fungsi Tim Pengarah SPBE.'),
(19, 60, '1. Penerapan proses bisnis yang terintegrasi dengan sistem elektronik. 2. Proses bisnis terintegrasi dapat diukur, dipantau, dan dievaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Pemerintah Kota Denpasar memiliki Peta Proses Bisnis yang diterapkan pada seluruh OPD dan dievaluasi secara berkala.', 'Hasil monitoring dan evaluasi terhadap pelaksanaan Proses Bisnis Terintegrasi'),
(20, 61, '1. Membuat Rencana Induk SPBE,  mencakup visi, misi, strategi, sasaran, arsitektur, dan peta rencana SPBE sesuai dengan kebijakan internal yang telah ditetapkan. 2. Dilakukan monitoring dan evaluasi secara berkala terhadap Rencana Induk yang dibuat, serta dibuatkan dokumentasi sebagai data pendukung.', 'Rencana Induk Pengembangan e-Government Pemerintah Kota Denpasar Tahun 2016-2020', 'Hasil monitoring dan evaluasi terhadap penerapan Rencana Induk SPBE'),
(21, 62, '1. Perencanaan dan penganggaran Anggaran dan Belanja TIK OPD tertuang dalam rencana kerja tahunan telah terintegrasi dan dapat dikendalikan di unit pengelola TIK. 2. Perencanaan dan penganggaran  Anggaran dan Belanja TIK dapat diukur, dipantau dan dievaluasi berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Perencanaan dan Penganggaran TIK  terdapat dalam APBD Belanja Langsung di masing-masing OPD.', 'Hasil evaluasi perencanaan dan penganggaran TIK  yang terintegrasi, ditindaklanjuti sebagai masukan perbaikan penyusunan anggaran tahun berikutnya.'),
(22, 63, '1. Pengembangan Data Center, pengendalian dan pemantauan layanan dari satu atau beberapa pusat data (data center) sebaiknya dapat dilakukan secara berkala dan terpusat. 2. Dilakukan monitoring dan evaluasi pengoperasian pusat data secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Pengembangan dilakukan secara bertahap. Monitoring rutin terhadap aktivitas Data Center. Dilakukan kajian untuk evaluasi pengembangan Data Center yang lebih baik.', 'Hasil monitoring dan evaluasi terhadap pengoperasian pusat data'),
(23, 64, '1. Integrasi sistem aplikasi sebaiknya diterapkan secara menyeluruh berdasarkan pada arsitektur dan peta rencana induk SPBE. 2. Dilakukan monitoring dan evaluasi secara berkala terhadap integrasi sistem aplikasi, serta dibuatkan dokumentasi sebagai data pendukung.', 'Integrasi sistem dari perencanaan, penganggaran, keuangan dan monitoring evaluasi (karma simanis)', 'Hasil monitoring dan evaluasi terhadap Integrasi sistem aplikasi Instansi'),
(24, 65, '1. Penerapan  eMonev yang terintegrasi dari perencanaan, penganggaran, hingga realisasi fisik serta keuangan dan kepegawaian. 2. Dilakukan monitoring dan evaluasi secara berkala terhadap aplikasi umum berbagi pakai, serta dibuatkan dokumentasi sebagai data pendukung.', 'Salah satu aplikasi umum berbagi pakai yang diterapkan di PemKot Denpasar adalah eMonev https://simonev.denpasarkota.go.id.', 'Hasil monitoring dan evaluasi terhadap penggunaan aplikasi umum berbagi pakai'),
(25, 66, '1. Optimalisasi Penerapan Layanan Naskah Dinas secara elektronik. 2. Dilakukan monitoring dan evaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Sistem Tata Naskah Dinas Elektronik (TNDE) website http://aplikasi.denpasarkota.go.id:8084/tnde', 'Hasil monitoring dan evaluasi terhadap layanan naskah dinas'),
(26, 67, '1. Optimalisasi  Penerapan dan Pengembangan Layanan manajemen kepegawaian dilaksanakan secara otomasi seperti transaksi persetujuan dan verifikasi terhadap transaksi kenaikan pangkat, pengajuan cuti, dan sebagainya. 2. Dilakukan monitoring dan evaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Aplikasi SIMPEG https://simpeg.denpasarkota.go.id', 'Hasil monitoring dan evaluasi terhadap layanan manajemen kepegawaian'),
(27, 68, '1. Penerapan Layanan Manajemen Perencanaan,  dapat melakukan pemenuhan permintaan perubahan layanan, penyesuaian terhadap perubahan-perubahan internal dan eksternal di Instansi Pusat. 2. Dilakukan monitoring dan evaluasi secara berkala', 'Pemerintah Kota Denpasar menggunakan sistem manajemen perencanaan yaitu e-Planning, yang digunakan oleh seluruh OPD. Pengembangan yang dilakukan adalah terintegrasinya e-Planning dengan SIPKD.', 'Hasil monitoring dan evaluasi terhadap layanan manajemen perencanaan'),
(28, 69, '1. Penerapan Layanan Manajemen Penganggaran,  dapat melakukan pemenuhan permintaan perubahan layanan, penyesuaian terhadap perubahan-perubahan internal dan eksternal di Instansi Pusat. 2. Dilakukan monitoring dan evaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Pemerintah Kota Denpasar menggunakan aplikasi e-Planning dan SIPKD untuk sistem manajemen penganggaran, penatausahaan dan pertanggung jawaban.', 'Hasil monitoring dan evaluasi terhadap layanan manajemen penganggaran'),
(29, 70, '1. Penerapan Layanan Manajemen Keuangan,  dapat melakukan pemenuhan permintaan perubahan layanan, penyesuaian terhadap perubahan-perubahan internal dan eksternal di Instansi Pusat. 2. Dilakukan monitoring dan evaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Pemerintah Kota Denpasar menggunakan aplikasi SIPKD untuk sistem manajemen penganggaran, penatausahaan dan pertanggung jawaban.', 'Hasil monitoring dan evaluasi terhadap layanan manajemen keuangan'),
(30, 71, '1. Penerapan dan Pengembangan Layanan Manajemen Kinerja,  ditingkatkan menjadi layanan kolaborasi dimana layanan tersebut diintegrasikan dengan layanan SPBE lain. 2. Dilakukan monitoring dan evaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Pemerintah Kota Denpasar memiliki sistem manajemen kinerja (e-Kinerja) yang digunakan oleh seluruh pegawai', 'Hasil monitoring dan evaluasi terhadap layanan manajemen kinerja'),
(31, 72, '1. Penerapan Layanan Pengadaan,  ditingkatkan menjadi layanan kolaborasi dimana layanan tersebut diintegrasikan dengan layanan SPBE lain. 2. Dilakukan monitoring dan evaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Pemerintah Kota Denpasar menggunakan SPSE dari LKPP dengan alamat website http://eproc.denpasarkota.go.id dan terintegrasi dari SIRUP ke EPROC.', 'Hasil monitoring dan evaluasi terhadap layanan pengadaan'),
(32, 73, '1. Penerapan dan Pengembangan Layanan Pengaduan Publik,  ditingkatkan menjadi layanan kolaborasi dimana layanan tersebut diintegrasikan dengan layanan SPBE lain. 2. Dilakukan monitoring dan evaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Sistem layanan pengaduan publik yaitu PRO Denpasar dengan website http://pengaduan.denpasarkota.go.id', 'Hasil monitoring dan evaluasi terhadap layanan pengaduan publik'),
(33, 74, '1. Penerapan dan Pengembangan Layanan JDIH dengan melakukan Integrasi JDIH dengan Sidandaniti serta layanan SPBE lainnya. 2. Dilakukan monitoring dan evaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Sistem jaringan dan informasi hukum (JDIH) , https://jdih.denpasarkota.go.id.          Sistem informasi perundang-undanganhttps://sidandaniti.denpasarkota.go.id', 'Hasil monitoring dan evaluasi terhadap layanan JDIH'),
(34, 75, '1. Optimalisasi  Penerapan dan Pengembangan Layanan WBS, apakah Layanan WBS tetap berada di dalam PRO Denpasar atau berdiri sendiri? Dan dapat diintegrasikan dengan SPBE lainnya. 2. Dilakukan monitoring dan evaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Whistle Blowing System di Pemerintah Kota Denpasar, saat ini termasuk di dalam sistem layanan pengaduan publik yaitu PRO Denpasar dengan website http://pengaduan.denpasarkota.go.id', 'Hasil monitoring dan evaluasi terhadap layanan WBS'),
(35, 76, '1. Optimalisasi  Layanan Perpajakan dengan mengkolaborasikan dalam satu dashboard dan dapat diintegrasikan dengan layanan SPBE lain. 2. Membuat Kebijakan Internal Layanan Perpajakan serta memuat pengaturan terintegrasi dengan SPBE lainnya. 3. Dilakukan monitoring dan evaluasi secara berkala untuk Layanan dan Kebijakannya, serta dibuatkan dokumentasi sebagai data pendukung.', 'Sistem integrasi PHR dengan Perijinan. Sistem integrasi PBB dengan Perijinan. Sistem integrasi BPHTB denganKantor BPN tujuannya (Perwali No 17 Tahun 2016). E-SPTPD  Sistem pelaporan pajak secara online (Perwali No. 16 Tahun 2016). I-PBB (informasi pelayanan Pajak Bumi dan Bangunan). Aplikasi integrasi Kasda online Penerimaan PAD Kota Denpasar', 'Hasil monitoring dan evaluasi terhadap layanan pajak'),
(36, 77, '1. Optimalisasi Penerapan dan Pengembangan Layanan Bursa Kerja,  diintegrasikan dengan layanan SPBE lain. ;2. Revisi Kebijakan Internal Layanan Bursa Kerja Online karena dibuat tahun 2011, serta dapat terintegrasi dengan SPBE lainnya. ;3. Dilakukan monitoring dan evaluasi secara berkala untuk Layanan dan Kebijakannya, serta dibuatkan dokumentasi sebagai data pendukung.', 'Perwali Denpasar No 31/2011 Tentang Tata Cara dan Persyaratan Pelaksanaan Bursa Kerja Online Kota Denpasar. ;Sudah terintegrasi dengan data kependudukan saat melakukan registrasi dengan mengekitkan NIK Kota Denpasar, otomatis data akan muncul.', 'Hasil monitoring dan evaluasi terhadap layanan bursa kerja online'),
(37, 78, '1. Optimalisasi Penerapan dan Pengembangan Layanan Perijinan,  diintegrasikan dengan layanan SPBE lain. 2. Dilakukan monitoring dan evaluasi secara berkala untuk Layanan dan Kebijakannya, serta dibuatkan dokumentasi sebagai data pendukung.', 'Sistem Informasi Perijinan Online http://perijinan.denpasarkota.go.id. ;Proses integrasi dengan OSS (BKPM) dan Sicantik Cloud (Kemenkominfo). ;Berkolaborasi dengan BSSN menggunakan tanda tangan digital. Perwali No 39 Tahun 2019 tentang Penyelenggaraan Perizinan dan Non Perizinan', 'Hasil monitoring dan evaluasi terhadap layanan perijinan online'),
(39, 1, '-	Kebijakan Tim Pengarah SPBE  memuat pengaturan tugas-tugas yang mendukung penerapan SPBE  yang terpadu pada semua unit kerja;\r\n-	Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala', 'SK Walikota Denpasar No. 188.45/1195/HK tentang Tim Pengarah SPBE', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(40, 2, '-	Kebijakan Proses Bisnis Integrasi  memuat pengaturan tersusunnya proses bisnis yang terintegrasi antar unit kerja;\r\n-	Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala kan', 'SK Walikota Denpasar Nomor 188.45/1689/HK/2019 tentang Peta Proses Bisnis Pemerintah Kota Denpasar', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(43, 3, '- Kebijakan Rencana Induk Blue Print eGov,  dengan memuat pengaturan tersusunnya rencana induk yang mencakup secara lengkap visi, misi, strategi, sasaran, arsitektur, dan peta rencana SPBE\r\n- Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala', 'SK Walikota Denpasar Nomor 188.45 / 1612 / HK / 2019 tentang Rencana Induk Pengembangan Teknologi Informasi Komunikasi Terpadu (Cetak biru eGovernment).', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(44, 4, '- Kebijakan Anggaran dan  Belanja TIK,  memuat pengaturan terkait penyelarasan dengan rencana induk SPBE, pengendalian rencana dan anggaran TIK yang terpadu di dalam Instansi Pusat/Pemerintah Daerah, dan mendukung penerapan SPBE yang terpadu\r\n- Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala', 'PERDA Kota Denpasar No 6 Tahun 2018 Tentang APBD Tahun Anggaran 2019', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(45, 5, '- Revisi Perwali eGov  atau Rencana Induk SPBE,  memuat pengaturan pengoperasian dan pemanfaatan pusat data bagi semua unit kerja\r\n- Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala', 'Perwali No 35 Tahun 2014, Tentang Penyelenggaraan Sistem Elektronik (e-Government) di Lingkungan Pemerintah Kota Denpasar, Bab VI Pasal 20', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(46, 6, '- Revisi Perwali eGov  atau Rencana Induk  SPBE,  memuat pengaturan integrasi sistem aplikasi\r\n- Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala', 'Perwali No 35 Tahun 2014, Tentang Penyelenggaraan Sistem Elektronik (e-Government) di Lingkungan Pemerintah Kota Denpasar, Pasal 14 ayat 6', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(47, 7, '- Kebijakan aplikasi monitoring dan evaluasi (Simonev) Karma Simanis,  memuat pengaturan integrasi dengan layanan SPBE lain yang telah tersedia\r\n- Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala', 'Surat Keputusan Walikota Denpasar No 188.45 /1279/HK/2019', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(48, 8, '- Membuat Kebijakan Layanan Naskah Dinas   memuat pengaturan kebutuhan dan penggunaan layanan naskah dinas secara elektronik pada semua unit kerja\r\n- Kebijakan nantinya harus dimonitoring pelaksanaannya dan dievaluasi secara berkala', 'Perwali Denpasar Nomor 23 Tahun 2011 tentang Pedoman Tata Naskah Dinas, SK Walikota No 188.45 / 1186 / HK / 2017', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(49, 9, '- Membuat Kebijakan Layanan Naskah Dinas   memuat pengaturan kebutuhan dan penggunaan layanan naskah dinas secara elektronik pada semua unit kerja\r\n- Kebijakan nantinya harus dimonitoring pelaksanaannya dan dievaluasi secara berkala', 'Perwali Denpasar Nomor 23 Tahun 2011 tentang Pedoman Tata Naskah Dinas, SK Walikota No 188.45 / 1186 / HK / 2017.', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(50, 10, '- Kebijakan memuat pengaturan kebutuhan dan penggunaan layanan manajemen perencanaan dan penganggaran secara elektronik pada semua unit kerja dan integrasi dengan SPBE lainnya\r\n- Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala', 'SK Walikota Denpasar Nomor 188.45 / 1589 / HK / 2019 tentang Penetapan Pelaksanaan Sistem Informasi Perencanaan Pembangunan Daerah Berbasis Elektronik / e-Planning di Kota Denpasar.', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(51, 11, '- Membuat Kebijakan Layanan Manajemen Keuangan, yang memuat pengaturan kebutuhan dan penggunaan layanan manajemen keuangan secara elektronik pada semua unit kerja dan integrasi dengan SPBE lainnya\r\n- Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala', 'SK Walikota Denpasar Nomor 188.45/1006/HK/2015, tentang Pembentukan Tim Koordinasi Percepatan Implementasi dan Pengembangan Sistem Informasi Pengelolaan Keuangan Daerah', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(52, 12, '- Kebijakan Layanan Manajemen Kinerja,  memuat pengaturan kebutuhan dan penggunaan layanan manajemen keuangan secara elektronik pada semua unit kerja\r\n- Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala\r\n', 'Peraturan Walikota Denpasar No 38 Tahun 2017, tentang Sistem Informasi Manajemen Kinerja', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(53, 13, '- Revisi Kebijakan (Integrasi dengan Layanan SPBE lainnya)\r\n- Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala', 'Perwali No 2 Tahun 2008 Tentang Pedoman Pelaksanaan Pengadaan Barang/Jasa Secara Elektronik Di Pemerintah Kota Denpasar. ', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(54, 15, '- Revisi Kebijakan untuk memuat  Integrasi dengan Layanan SPBE lainnya\r\n- Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala', 'Perwali No 45 Tahun 2013 tentang Pelayanan Penanganan Pengaduan Masyarakat di Lingkungan Pemerintah Kota Denpasar.', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(55, 16, '- Membuat Kebijakan Layanan JDIH,  dengan memuat pengaturan kebutuhan dan penggunaan layanan dokumentasi dan informasi hukum secara elektronik pada semua unit kerja serta Integrasi dengan SPBE lainnya\r\n- Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala', 'SK NO 826 TAHUN 2019 tentang Pembentukan Tim Pengelola Jaringan Dokumentasi dan Informasi Hukum', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(56, 128, '- Membuat atau Revisi Kebijakan Layanan WBS,  memuat pengaturan kebutuhan integrasi layanan WBS secara elektronik dengan layanan SPBE lain\r\n- Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala', 'Perwali No 45 Tahun 2013 tentang Pelayanan Penanganan Pengaduan Masyarakat di Lingkungan Pemerintah Kota Denpasar', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki.'),
(57, 128, '- Membuat atau Revisi Kebijakan Layanan WBS,  memuat pengaturan kebutuhan integrasi layanan WBS secara elektronik dengan layanan SPBE lain\r\n- Kebijakan yang telah dibuat, dimonitoring pelaksanaannya dan dievaluasi secara berkala', 'Perwali No 45 Tahun 2013 tentang Pelayanan Penanganan Pengaduan Masyarakat di Lingkungan Pemerintah Kota Denpasar', ''),
(58, 128, 'aa', 'aa', 'aa'),
(59, 137, '', 'SK Walikota Denpasar Nomor 188.45/1076/HK/2019 Tentang Pembentukan TIM Integrasi Pelayanan Informasi Data Kepegawaian Melalui Pemanfaatan SIMAK DIHATI;  	SK Walikota Denpasar Nomor 188.45/1126/HK/2019 Tentang Penetapan Sistem Informasi Manajemen Administrasi Kepegawaian Untuk Database yang Handal,Akurat,Tertib, dan Informatif Dalam Pelayanan Informasi Data Kepegawaian.', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki'),
(60, 140, '', 'Peraturan Walikota Denpasar Nomor 21 Tahun 2020 tentang Tambahan Penghasilan Kepada Pegawai Aparatur Sipil Negara', 'Hasil monitoring dan evaluasi terhadap kebijakan yang dimiliki'),
(61, 154, '', 'Pemerintah Kota Denpasar memiliki aplikasi SIMAK DIHATI yang dapat diakses PNS untuk informasi data kepegawaian ( https://simpeg.denpasarkota.go.id )', 'Hasil monitoring dan evaluasi terhadap layanan manajemen kepegawaian'),
(62, 158, '', 'Pemerintah Kota Denpasar memiliki sistem manajemen kinerja (e-Kinerja) yang digunakan oleh PNS', 'Hasil monitoring dan evaluasi terhadap layanan manajemen kinerja'),
(63, 56, 'perencanaan \r\nanggaran\r\npelaksanaan', '', ''),
(64, 163, '', '', ''),
(65, 163, '', '', ''),
(66, 163, '', '', ''),
(67, 163, '-', '-', '-'),
(68, 163, '-', '-', '-'),
(69, 163, '1. Penerapan Layanan Pengadaan,  ditingkatkan menjadi layanan kolaborasi dimana layanan tersebut diintegrasikan dengan layanan SPBE lain. \r\n2. Dilakukan monitoring dan evaluasi secara berkala, serta dibuatkan dokumentasi sebagai data pendukung.', 'Pemerintah Kota Denpasar menggunakan SPSE dari LKPP dengan alamat website http://eproc.denpasarkota.go.id dan terintegrasi dari SIRUP ke EPROC.', 'Hasil monitoring dan evaluasi terhadap layanan pengadaan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_evaluasi`
--

CREATE TABLE `tb_evaluasi` (
  `idevaluasi` int(11) NOT NULL,
  `tahun_evaluasi` varchar(5) NOT NULL,
  `idlevel` int(11) NOT NULL,
  `idindikator` int(11) NOT NULL,
  `idpertanyaan` int(11) NOT NULL,
  `penjelasan_evaluasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_evaluasi`
--

INSERT INTO `tb_evaluasi` (`idevaluasi`, `tahun_evaluasi`, `idlevel`, `idindikator`, `idpertanyaan`, `penjelasan_evaluasi`) VALUES
(1, '2018', 2, 1, 1, 'Kebijakan internal terkait Tim Pengarah kebijakan e-Government, tertuang pada Draft SK Walikota Tentang Pengelolaan Tim TIK Kota Denpasar'),
(2, '2018', 10, 2, 2, 'SOP Seluruh OPD, Kebijakan tertuang dalam Perwali 13 Tahun 2018, Tentang SOP Administrasi Pemerintahan Di Lingkungan Pemerintah Kota Denpasar.'),
(3, '2018', 14, 3, 3, 'Blue Print Rencana Induk Pengembangan e-Government Diskominfo Pemerintah Kota Denpasar 2016-2020, didukung Draft Perwali tentang Rencana Induk Pengembangan Teknologi Informasi Komunikasi Terpadu (Cetak Biru e-Government)			'),
(4, '2018', 22, 4, 4, 'Pengaturan perencanaan dan penganggaran TIK  yang menyelaraskan seluruh muatan dari rencana induk SPBE seluruh Pemerintah Kota Denpasar terdapat dalam APBD Belanja Langsung di masing-masing OPD terkait. Kebijakannya tertuang dalam PERDA Kota Denpasar No 4 Tahun 2017 Tentang APBD Tahun Anggaran 2017, dan berkelanjutan di tahun berikutnya.			'),
(5, '2018', 28, 5, 5, 'Perwali No 35 Tahun 2014, Tentang Penyelenggaraan Sistem Elektronik (e-Government) di Lingkungan Pemerintah Kota Denpasar, Bab VI			'),
(6, '2018', 34, 6, 6, 'Perwali No 35 Tahun 2014, Tentang Penyelenggaraan Sistem Elektronik (e-Government) di Lingkungan Pemerintah Kota Denpasar, Pasal 14 ayat 6			'),
(7, '2018', 42, 7, 7, 'Ada banyak aplikasi umum berbagi pakai yang dimiliki Pemerintah Kota Denpasar, salah satunya adalah aplikasi PRO Denpasar yang merupakan aplikasi pelayanan penanganan pengaduan masyarakat di Lingkungan Pemerintah Kota Denpasar. Aplikasi ini digunakan oleh masyarakat dan juga seluruh OPD yang terkait dengan layanan pengaduan masyarakat. Kebijakannya tertuang pada Peraturan Walikota No 45 Tahun 2014.'),
(8, '2018', 46, 8, 8, 'Menggunakan aplikasi Smart Arsip, dengan kebijakan dari Perka ANRI No 15 Tahun 2012 Tentang Petunjuk Pelaksanaan Pengelolaan Surat Elektronik Di Pencipta Arsip, Perda No 14 Tahun 2015 Tentang Penyelenggaraan Kearsipan. SK Walikota No 188.45 / 1186 / HK / 2017. Telah dilakukan monitoring dan evaluasi secara berkala.	'),
(9, '2018', 49, 9, 9, 'Sudah menggunakan Sistem Informasi Managemen Kepegawaian, dengan kebijakan Keputusan Menteri Dalam Negeri Nomor 17 Tahun 2000'),
(10, '2018', 55, 10, 10, 'Menggunakan SIPKD, dengan kebijakan dari Surat Edaran dari Kemendagri SE.900/122/BAKD			'),
(11, '2018', 61, 11, 11, 'Menggunakan SIPKD, dengan kebijakan dari Surat Edaran dari Kemendagri SE.900/122/BAKD			'),
(12, '2018', 70, 12, 12, 'Sistem Informasi Manajemen Kinerja, dengan kebijakan Peraturan Walikota Denpasar No 38 Tahun 2017			'),
(13, '2018', 78, 13, 13, 'Menggunakan SPSE, dengan kebijakan Perwali No 2 Tahun 2008 Tentang Pedoman Pelaksanaan Pengadaan Barang/Jasa Secara Elektronik Di Pemerintah Kota Denpasar.  Website http://eproc.denpasarkota.go.id dikembangkan oleh LKPP Pusat dan dilakukan monev dari pusat secara berkala 			'),
(14, '2018', 84, 14, 14, 'Kebijakan internal terkait sistem pengaduan publik yaitu Perwali No 45 Tahun 2013 tentang Pelayanan Penanganan Pengaduan Masyarakat di Lingkungan Pemerintah Kota Denpasar. Monitoring evaluasi dilakukan secara berkala.			'),
(15, '2018', 85, 15, 15, 'Menggunakan Sistem JDIH, dengan  kebijakan Perpres No 33 Tahun 2012			'),
(16, '2018', 96, 16, 16, 'Perwali No 45 Tahun 2013 tentang Pelayanan Penanganan Pengaduan Masyarakat di Lingkungan Pemerintah Kota Denpasar 			'),
(17, '2018', 102, 17, 17, 'Kebijakan Internal Keputusan Walikota Denpasar No 188.45/283/HK/2016 tentang Pelaksanaan Pelayanan Sistem Informasi Perijinan Online Pada Badan Pelayanan Perijinan Terpadu Satu Pintu dan Penanaman Modal Kota Denpasar. Monitoring dilakukan secara berkala.			'),
(18, '2018', 104, 18, 18, 'Terdapat Tim pengarah SPBE, tetapi belum dilegalisasi.			'),
(19, '2018', 114, 19, 19, 'Proses bisnis tertuang dalam dokumen standar spesifikasi pembuatan sistem informasi. SOP Permohonan Spesifikasi Sistem Informasi dan Prosedur Pengumpulan Data Terintegrasi Pada Pusat Data. Salah satu penerapan proses bisnis yang terintegrasi dengan sistem elektronik yaitu Sistem Informasi e-Sewaka Dharma. http://esewakadharma.denpasarkota.go.id			'),
(20, '2018', 118, 20, 20, 'Rencana Induk Pengembangan e-Government Pemerintah Kota Denpasar, Bab VI Perencanaan Strategis			'),
(21, '2018', 124, 21, 21, 'Perencanaan dan penganggaran TIK untuk penerapan SPBE dirancang oleh masing-masing OPD dikonsultasikan ke Dinas Komunikasi, Informatika dan Statistik kemudian melalui proses pengajuan ke Tim Anggaran yang nantinya disetujui menjadi PERDA APBD.			'),
(22, '2018', 130, 22, 22, 'Pemerintah Kota Denpasar memiliki Data Center yang terletak di Gedung Sewaka Dharma dan Cloud di Telkom yang dikelola oleh Dinas Kominfo. Ada juga beberapa OPD memiliki Server untuk SPBE masing-masing. OPD yang tidak memiliki Server dapat menitipkan SPBEnya pada Data Center atau OPD yang memiliki Server namun lokasinya tidak memungkinkan menempatkan Server di OPD bisa dititipkan (Co-location) di Data Center. Monitoring dilakukan secara rutin terhadap aktivitas Data Center. Dilakukan kajian untuk evaluasi pengembangan Data Center yang lebih baik.			'),
(23, '2018', 138, 23, 23, 'Sistem Informasi Integrasi Data, Denpasar Satu Data Satu Peta. Dengan adanya integrasi data, terdapat peningkatan dan efisiensi terhadap perubahan lingkungan, teknologi dan kebutuhan OPD. Perubahan dari pengumpulan data secara manual melalui kertas kini diinputkan langsung melalui Sistem Informasi Bank Data. http://pusatdata.denpasarkota.go.id			'),
(24, '2018', 144, 24, 24, 'Salah satu aplikasi umum berbagi pakai yang diterapkan di Pemerintah Kota Denpasar adalah SIPKD, digunakan oleh seluruh OPD serta dipantau dan dievaluasi secara berkesinambungan, dilakukan perubahan dari awalnya SIPKD berbasis kas diupdate menjadi SIPKD berbasis akrual.			'),
(25, '2018', 147, 25, 25, 'Sistem Tata Naskah Dinas Elektronik (TNDE) website http://aplikasi.denpasarkota.go.id:8084/tnde/index.php			'),
(26, '2018', 152, 26, 26, 'Menggunakan Sistem Informasi Kepegawaian			'),
(27, '2018', 162, 27, 27, 'Pemerintah Kota Denpasar menggunakan sistem manajemen perencanaan yaitu e-Planning, yang digunakan oleh seluruh OPD. Pengembangan yang dilakukan adalah terintegrasinya e-Planning dengan SIPKD.			'),
(28, '2018', 168, 28, 28, 'Pemerintah Kota Denpasar menggunakan aplikasi SIPKD untuk sistem manajemen penganggaran, penatausahaan dan pertanggungjawaban. SIPKD digunakan oleh seluruh OPD serta dipantau dan dievaluasi secara berkesinambungan. Dilakukan perubahan dari awalnya SIPKD berbasis kas diupdate menjadi SIPKD berbasis akrual dan SIPKD terintegrasi dengan e-Planning.			'),
(29, '2018', 174, 29, 29, 'Pemerintah Kota Denpasar menggunakan aplikasi SIPKD untuk sistem manajemen penganggaran, penatausahaan dan pertanggungjawaban. SIPKD digunakan oleh seluruh OPD serta dipantau dan dievaluasi secara berkesinambungan. Dilakukan perubahan dari awalnya SIPKD berbasis kas diupdate menjadi SIPKD berbasis akrual dan SIPKD terintegrasi dengan e-Planning. Serta dilakukan pelatihan terhadap operator SIPKD setiap tahunnya.			'),
(30, '2018', 178, 30, 30, 'Pemerintah Kota Denpasar memiliki sistem manajemen kinerja (e-Kinerja) yang digunakan oleh seluruh pegawai. Sistem dapat merespon pengguna seperti mekanisme validasi kinerja dan persetujuan dari atasan.			'),
(31, '2018', 186, 31, 31, 'Pemerintah Kota Denpasar menggunakan SPSE dari LKPP dengan alamat website http://eproc.denpasarkota.go.id dan terintegrasi dari SIRUP ke EPROC. Sudah menyesuaian perubahan terhadap update sistem dari SPSE3 dan SPSE4.			'),
(32, '2018', 192, 32, 32, 'Sistem layanan pengaduan publik yaitu PRO Denpasar dengan website http://pengaduan.denpasarkota.go.id, menyediakan layanan transaksi dimana pengguna dapat menyampaikan pengaduan dan sistem dapat menindaklanjuti ke OPD terkait serta merespon kembali ke pengguna. PRO terintegrasi dengan website http://www.denpasarkota.go.id dan website subdomain instansi yang terkait pengaduannya langsung. Bekerjasama juga dengan PT. Telkom terkait pengaduan ke telkom. Adanya pengembangan (PRO Denpasar + ) berbasis mobile bisa didownload pada Android dan Ios.			'),
(33, '2018', 195, 33, 33, 'http://jdih.denpasarkota.go.id			'),
(34, '2018', 204, 34, 34, 'Whistle Blowing System di Pemerintah Kota Denpasar, termasuk di dalam sistem layanan pengaduan publik yaitu PRO Denpasar dengan website http://pengaduan.denpasarkota.go.id, menu Whitle Blowing, menyediakan layanan transaksi dimana pengguna dapat menyampaikan pengaduan dan sistem dapat menindaklanjuti ke Inspektorat serta merespon kembali ke pengguna. PRO terintegrasi dengan website http://www.denpasarkota.go.id dan website subdomain inspektorat. Adanya pengembangan (PRO Denpasar + ) berbasis mobile bisa didownload pada Android dan Ios.			'),
(35, '2018', 210, 35, 35, 'Sistem Pelayanan Rakyat Online PRO Denpasar dengan website http://pengaduan.denpasarkota.go.id, menyediakan layanan transaksi pengaduan dimana pengguna dapat menyampaikan pengaduan dan sistem dapat menindaklanjuti ke OPD terkait, serta merespon kembali ke pengguna. 	PRO terintegrasi dengan website http://www.denpasarkota.go.id dan website subdomain OPD yang terkait dengan pengaduannya langsung. Berkolaborasi juga dengan PT. Telkom terkait pengaduan mengenai Telkom. Pengaduan yang masuk akan divalidasi oleh admin dan diteruskan ke OPD terkait.			Optimalisasi pengembangan (PRO Denpasar + ) berbasis mobile bisa didownload pada Android dan Ios. Menu PRO Denpasar + Mobile : 1. Pengaduan Online, 2. Panggilan Darurat, 3. Portal Denpasar, 4. Live CCTV, 5. Bursa Kerja, 6. Harga Pasar, 7. Pembayaran Online, 8. Perijinan, 9. Pusat Data, 10. Safe City, 11. Tanggap Bencana, dll.			Penilaian pada Level 5, karena layanan sistem pelayanan publik PRO Denpasar menyediakan layanan interaksi, transaksi, kolaborasi dan optimalisasi.					'),
(36, '2018', 216, 36, 36, 'Sistem Bursa Kerja Online (http:bursakerja.denpasarkota.go.id) dikelola oleh Dinas Tenaga Kerja dan Sertifikasi Kompetensi Pemerintah Kota Denpasar guna mendukung mewujudkan Denpasar Smart City. Tujuan dari layanan ini sebagai upaya untuk meningkatkan kualitas pelayanan di bidang ketenagakerjaan.			Sistem ini dibangun mulai tahun 2011 dan terus diperbaharui dengan dasar hukum Perwali Denpasar No 31/2011 Tentang Tata Cara dan Persyaratan Pelaksanaan Bursa Kerja Online Kota Denpasar.			Pencari Kerja dan Penyedia Kerja dapat mendaftarkan diri langsung pada sistem, setelah terdaftar dan terverifikasi dapat melakukan transaksi menginput informasi pekerjaan bagi Penyedia Kerja dan menginput lamaran pekerjaan bagi Pencari Kerja.			Kolaborasi Pemerintah Kota Denpasar dengan Penyedia Kerja untuk memberikan informasi lowongan pekerjaan kepada Pencari Kerja.  Optimalisasi Bursa Kerja Online juga sudah masuk ke dalam menu PRO Denpasar (Mobile). 			Penilaian pada Level 5, karena layanan sistem pelayanan publik Bursa Kerja Online menyediakan layanan interaksi, transaksi, kolaborasi dan optimalisasi.			'),
(37, '2018', 222, 37, 37, 'Sistem Informasi Perijinan Online http://perijinan.denpasarkota.go.id dikelola oleh Dinas Penanaman Modal Dan Pelayanan Terpadu Satu Pintu. Tujuan dari layanan ini agar masyarakat mendapatkan informasi dan transparansi proses layanan perijinan.		Masyarakat dapat mencari informasi, mendownload syarat dan formulir perijinan. Masyarakat juga dapat melakukan simulasi retribusi perijinan untuk mengetahui perkiraan biaya retribusi. Serta dapat melakukan perpanjangan ijin secara online.			Layanan kolaborasi dan optimalisasi dengan fasilitas SMS Gateway dan juga terdapat pada menu PRO Denpasar+ (Mobile)			Penilaian pada Level 5, karena layanan sistem pelayanan publik Perijinan Denpasar menyediakan layanan interaksi, transaksi, kolaborasi dan optimalisasi.				');

-- --------------------------------------------------------

--
-- Table structure for table `tb_feedback`
--

CREATE TABLE `tb_feedback` (
  `idfeedback` int(11) NOT NULL,
  `idpenilaian` int(11) NOT NULL,
  `ket_feedback` text NOT NULL,
  `files_feedback` text,
  `userid_created` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_feedback`
--

INSERT INTO `tb_feedback` (`idfeedback`, `idpenilaian`, `ket_feedback`, `files_feedback`, `userid_created`, `date_created`) VALUES
(3, 42, 'SK Walikota Denpasar Nomor 188.45/1195/HK/2019 Tentang Pembentukan Tim Pengarah Sistem Pemerintahan Berbasis Elektronik', 'indikator1.pdf', 'DKIS', '2019-12-26 14:35:00'),
(4, 44, 'SK Walikota Denpasar Nomor 188.45/1612/HK/2019 Tentang Rencana Induk Pengembangan Teknologi Informasi Komunikasi Terpadu (Cetak Biru E-Government)', 'indikator3.pdf', 'DKIS', '2019-12-26 14:45:00'),
(5, 45, 'Perda Kota Denpasar Nomor 6 Tahun 2018 Tentang Anggaran Pendapatan dan Belanja Daerah Kota Denpasar Tahun Anggaran 2019', 'indikator4a.pdf', 'DKIS', '2019-12-26 15:24:00'),
(6, 45, 'Ringkasan APBD Menurut Organisasi dan Urusan Pemerintah Daerah Tahun Anggaran 2019', 'indikator4b.pdf', 'DKIS', '2019-12-26 15:25:00'),
(7, 46, 'Perwali Kota Denpasar Nomor 35 Tahun 2014 Tentang Penyelenggaraan Sistem Elektronik (E-Government) di Lingkungan Pemerintah Kota Denpasar', 'indikator5.pdf', 'DKIS', '2019-12-26 15:28:00'),
(8, 55, 'Perwali Kota Denpasar Nomor 45 Tahun 2013 Tentang Pelayanan Penanganan Pengaduan Masyarakat di Lingkungan Pemerintah Kota Denpasar', 'indikator14a.pdf', 'DKIS', '2019-12-31 13:55:00'),
(9, 55, 'SK Walikota Denpasar Nomor 188.45/206/HK/2013 Tentang Penunjukan Dinas Komunikasi dan Informatika Kota Denpasar Sebagai Pelaksana Penanganan Pengaduan Masyarakat di Kota Denpasar', 'indikator14b.pdf', 'DKIS', '2019-12-31 13:58:00'),
(10, 59, 'Monev Peningkatan Indeks SPBE 2019', 'indikator18b.pdf', 'DKIS', '2020-01-02 08:45:00'),
(11, 60, 'Peta Proses Bisnis Pemerintah Kota Denpasar', 'indikator19.pdf', 'DKIS', '2020-01-02 08:49:00'),
(12, 63, 'SOP Penetapan Tata Cara Layanan Data Center', 'indikator22a.pdf', 'DKIS', '2020-01-02 10:13:00'),
(13, 63, 'Laporan Akhir Kajian Physical Security Kota Denpasar', 'indikator22c.pdf', 'DKIS', '2020-01-02 11:11:00'),
(14, 63, 'Gambar Penambahan Perangkat Pada Ruangan Server', 'indikator22d.pdf', 'DKIS', '2020-01-02 11:12:00'),
(15, 73, 'Tampilan Daftar user yang memenuhi persyaratan pendaftaran lengkap dengan NIK KTP', 'indikator32c.pdf', 'DKIS', '2020-01-02 13:55:00'),
(16, 76, 'Tampilan View Data BPN', 'indikator35-1a.pdf', 'DKIS', '2020-01-02 14:12:00'),
(17, 76, 'Tampilan Aplikasi Validasi Piutang Pajak dan Integrasi Data Perijinan Antara Bapenda Dengan DPMPTSP', 'indikator35-1b.pdf', 'DKIS', '2020-01-02 14:13:00'),
(18, 76, 'Perwali Kota Denpasar Nomor 16 Tahun 2016 Tentang Tata Cara Penerbitan dan Pengisian Surat Pemberitahuan Pajak Hotel, Pajak Restoran dan Pajak Hiburan Secara Online', 'indikator35-1c.pdf', 'DKIS', '2020-01-02 14:20:00'),
(19, 76, 'Tampilan Arsitektur Sistem Online', 'indikator35-1d.pdf', 'DKIS', '2020-01-02 14:21:00'),
(20, 76, 'Panduan Aplikasi Informasi Pelayanan PBB (I-PBB)', 'indikator35-1e.pdf', 'DKIS', '2020-01-02 14:22:00'),
(23, 43, 'SK Walikota Denpasar Nomor 188.45/1689/HK/2019 Tentang Peta Proses Bisnis Pemerintah Kota Denpasar', 'indikator2a.pdf', 'DKIS', '2019-12-26 14:41:00'),
(24, 43, 'Lampiran Peta Proses Bisnis Pemerintah Kota Denpasar', 'indikator2b.pdf', 'DKIS', '2019-12-26 14:42:00'),
(25, 61, 'Bab I Pendahuluan', 'indikator20a.pdf', 'DKIS', '2020-01-02 09:59:00'),
(26, 61, 'Bab II Gambaran Umum Kota Denpasar', 'indikator20b.pdf', 'DKIS', '2020-01-02 09:58:00'),
(27, 61, 'Bab III Smart City', 'indikator20c.pdf', 'DKIS', '2020-01-02 09:59:00'),
(28, 61, 'Bab IV E-Government Kota Denpasar', 'indikator20d.pdf', 'DKIS', '2020-01-02 10:01:00'),
(29, 61, 'Bab V Analisa Kondisi E-Government di Kota Denpasar', 'indikator20e.pdf', 'DKIS', '2020-01-02 10:02:00'),
(30, 61, 'Bab VI Perencanaan Strategis', 'indikator20f.pdf', 'DKIS', '2020-01-02 10:03:00'),
(31, 61, 'Bab VII Cetak Biru Pengembangan E-Government', 'indikator20g.pdf', 'DKIS', '2020-01-02 10:04:00'),
(32, 61, 'Bab VIII Penutup', 'indikator20h.pdf', 'DKIS', '2020-01-02 10:05:00'),
(33, 65, 'Spesifikasi Software dan Petunjuk Teknis', 'indikator24.pdf', 'DKIS', '2020-01-02 11:17:00'),
(34, 59, 'Lampiran Menindaklanjuti Indikator Sesuai Rekomendasi Kemenpan R&B', 'indikator18a.jpg', 'DKIS', '2020-01-02 08:43:00'),
(35, 63, 'Penataan Ruangan Server', 'indikator22b.jpg', 'DKIS', '2020-01-02 11:09:00'),
(36, 63, 'Data Replay IP Pada Setiap Server', 'indikator22e.jpg', 'DKIS', '2020-01-02 11:13:00'),
(37, 64, 'Planning-Budgeting-Monitoring-Integrated System', 'indikator23.jpg', 'DKIS', '2020-01-02 11:15:00'),
(38, 73, 'Tampilan Website Pro Denpasar', 'indikator32a.jpg', 'DKIS', '2020-01-02 13:53:00'),
(39, 73, 'Tampilan Registrasi Pada Website Pro Denpasar', 'indikator32b.jpg', 'DKIS', '2020-01-02 13:54:00'),
(40, 75, 'Tampilan Website Pro Denpasar', 'indikator34.jpg', 'DKIS', '2020-01-02 14:09:00'),
(46, 57, 'Perwali Kota Denpasar Nomor 45 Tahun 2013 Tentang Pelayanan Penanganan Pengaduan Masyarakat di Lingkungan Pemerintah Kota Denpasar', 'indikator16a.pdf', 'DKIS', '2020-01-02 08:18:00'),
(48, 51, 'SK Walikota Denpasar Nomor 188.45/1589/HK/2019 Tentang Penetapan Pelaksanaan Sistem Informasi Perencanaan Pembangunan Daerah Berbasis Elektronik / E-Planning di Kota Denpasar', 'indikator10.pdf', 'adminbappeda', '2019-12-31 13:35:00'),
(49, 62, 'Ringkasan APBD Menurut Organisasi dan Urusan Pemerintah Daerah Tahun Anggaran 2019', 'indikator21.pdf', 'adminbappeda', '2020-01-02 10:07:00'),
(50, 68, 'Tampilan Website Denpasar Plan', 'indikator27.jpg', 'adminbappeda', '2020-01-02 11:42:00'),
(51, 69, 'Modul Penggunaan Website Sistem Informasi Pengelola Keuangan dan Aset Daerah (SIPKD)', 'indikator28.pdf', 'adminbappeda', '2020-01-02 11:44:00'),
(52, 47, 'Perwali Kota Denpasar Nomer 35 Tahun 2014 Tentang Penyelenggaraan Sistem Elektronik (E-Government) di Lingkungan Pemerintah Kota Denpasar', 'indikator6.pdf', 'bagianorganisasi', '2019-12-31 12:51:00'),
(53, 66, 'Draft Surat Masuk Pada TNDE Kota Denpasar', 'indikator25.jpg', 'bagianorganisasi', '2020-01-02 11:19:00'),
(54, 49, 'SK Walikota Denpasar Nomor 188.45/1186/HK/2017 Tentang Pembentukan Panitia Penyelenggara, Penunjukan Instruktur, dan Penetapan Petugas Pada Organisasi Perangkat Daerah (OPD) Pengembangan Sistem Informasi Kearsipan (Smart Arsip) Kota Denpasar Tahun 2017', 'indikator8c.pdf', 'bagianorganisasi', '2019-12-31 13:20:00'),
(55, 48, 'Perwali Kota Denpasar Nomor 188.45/1279/HK/2019 Tentang Pembentukan Tim Sewaka Dharma Sistem Monitoring Administrasi Pembangunan (Karma Simanis) Kota Denpasar', 'indikator7.pdf', 'DKIS', '2019-12-31 13:11:00'),
(56, 50, 'SK Walikota Denpasar Nomor 188.45/1126/HK/2019 Tentang Penetapan Sistem Informasi Manajemen Administrasi Kepegawaian Untuk Database yang Handal,Akurat,Tertib, dan Informatif Dalam Pelayanan Informasi Data Kepegawaian.', 'indikator9.PDF', 'bkpsdm', '2019-12-31 13:30:00'),
(57, 53, 'Perwali Kota Denpasar Nomor 38 Tahun 2017 Tentang Kriteria dan Besaran Tambahan Penghasilan Berdasarkan Prestasi Kerja Kepada Pegawai Negeri Sipil ', 'indikator12.pdf', 'bkpsdm', '2019-12-31 13:40:00'),
(58, 67, 'Modul Penggunaan Aplikasi Simak Di Hati', 'indikator26a.pdf', 'bkpsdm', '2020-01-02 11:38:00'),
(59, 67, 'SOP Prosedur Verifikasi Data ASN Pada Aplikasi Simpeg', 'indikator26b.PDF', 'bkpsdm', '2020-01-02 11:39:00'),
(60, 71, 'Tampilan pada proses inputan kegiatan harian', 'indikator30a.jpg', 'bkpsdm', '2020-01-02 11:51:00'),
(61, 71, 'Tampilan pada tunjangan kinerja', 'indikator30b.jpg', 'bkpsdm', '2020-01-02 11:51:00'),
(62, 71, 'Tampilan pada histori absen dan rekap absen', 'indikator30c.jpg', 'bkpsdm', '2020-01-02 11:52:00'),
(63, 71, 'Tampilan pada realisasi rencana kegiatan', 'indikator30d.jpg', 'bkpsdm', '2020-01-02 11:53:00'),
(64, 71, 'SOP Perbaikan Data Pada Aplikasi E-Kinerja', 'indikator30e.pdf', 'bkpsdm', '2020-01-02 11:54:00'),
(65, 52, 'SK Walikota Denpasar Nomor 188.45/1006/HK/2015 Tentang Pembentukan Tim Koordinasi Percepatan Implementasi dan Pengembangan Sistem Informasi Pengelolaan Keuangan Daerah', 'indikator11.pdf', 'bpkad', '2019-12-31 13:38:00'),
(66, 70, 'Modul Penggunaan Website Sistem Informasi Pengelola Keuangan dan Aset Daerah (SIPKD)', 'indikator29.pdf', 'bpkad', '2020-01-02 11:46:00'),
(67, 72, 'Tampilan Website LPSE (Layanan Pengadaan Secara Elektronik) Kota Denpasar', 'indikator31.jpg', 'pengadaanbarangdanjasa', '2020-01-02 13:50:00'),
(68, 56, 'SK Walikota Denpasar Nomor 188.45/826/HK/2019 Tentang Pembentukan Tim Pengelola Jaringan Dokumentasi dan Informasi Hukum', 'indikator15.pdf', 'bagianhukum', '2019-12-31 14:00:00'),
(69, 74, 'Tampilan Website JDIH (Jaringan Dokumentasi Informasi Hukum) Kota Denpasar', 'indikator33a.jpg', 'bagianhukum', '2020-01-02 13:56:00'),
(70, 74, 'Tampilan Pada Input Peraturan Baru', 'indikator33b.jpg', 'bagianhukum', '2020-01-02 13:58:00'),
(71, 58, 'SK Walikota Denpasar Nomor 188.45/283/HK/2016 Tentang Pelaksanaan Pelayanan Sistem Informasi Perijinan Online Pada Badan Pelayanan Perijinan Terpadu Satu Pintu dan Penanaman Modal Kota Denpasar', 'indikator17b.pdf', 'perijinan', '2020-01-02 08:29:00'),
(72, 78, 'Tampilan Website Kantor Perijinan', 'indikator35-3a.jpg', 'perijinan', '2020-01-02 14:50:00'),
(73, 78, 'Tampilan Tanda Tangan Digital', 'indikator35-3b.jpg', 'perijinan', '2020-01-02 14:51:00'),
(74, 78, 'Tampilan Website Single Filing', 'indikator35-3c.jpg', 'perijinan', '2020-01-02 14:52:00'),
(75, 77, 'Tampilan Website Bursa Kerja Online', 'indikator35-2a.jpg', 'disnaker', '2020-01-02 14:42:00'),
(76, 77, 'Perwali Kota Denpasar Nomor 31 Tahun 2011 Tentang Tata Cara dan Persyaratan Pelayanan Bursa Kerja Online di Kota Denpasar', 'indikator35-2b.pdf', 'disnaker', '2020-01-02 14:44:00'),
(77, 77, 'SOP Bidang Penempatan Tenaga Kerja', 'indikator35-2c.pdf', 'disnaker', '2020-01-02 14:45:00'),
(78, 77, 'Tampilan pada Registrasi Pencari Kerja ', 'indikator35-2d.jpg', 'disnaker', '2020-01-02 14:46:00'),
(79, 58, 'Perwali Kota Denpasar Nomor 39 Tahun 2019 Tentang Penyelenggaraan Pelayanan Perizinan dan Non Perizinan', 'indikator17a.pdf', 'perijinan', '2020-01-02 08:24:00'),
(80, 54, 'Perwali Kota Denpasar Nomor 2 Tahun 2008 Tentang Pedoman Pelaksanaan Pengadaan Barang/Jasa Secara Elektronik Di Pemerintah Kota Denpasar', 'indikator13.pdf', 'pengadaanbarangdanjasa', '2019-12-31 13:50:00'),
(81, 49, 'Perwali Kota Denpasar Nomor 23 Tahun 2011 Tentang Pedoman Tata Naskah Dinas di Lingkungan Pemerintah Kota Denpasar', 'indikator8a.pdf', 'bagianorganisasi', '2019-12-31 13:14:00'),
(82, 49, 'Perda Kota Denpasar Nomor 14 Tahun 2015 Tentang Penyelenggaraan Kearsipan', 'indikator8b.pdf', 'bagianorganisasi', '2019-12-31 13:16:00'),
(83, 1, 'SK Walikota Denpasar Tahun 2017 Tentang Pembentukan Tim Tata Kelola Teknologi Informasi dan Komunikasi di Lingkungan Pemerintah Kota Denpasar', 'indikator1.pdf', 'adminspbe', '2020-01-06 08:13:00'),
(84, 2, 'Perwali Kota Denpasar Nomor 13 Tahun 2018 Tentang Standar Operasional Prosedur Administrasi Pemerintahan di Lingkungan Pemerintah Kota Denpasar', 'indikator2.pdf', 'adminspbe', '2020-01-06 08:29:00'),
(85, 3, 'Perwali Kota Denpasar Tentang Rencana Induk Pengembangan Teknologi Informasi Komunikasi Terpadu (Cetak Biru E-Government)', 'indikator3.pdf', 'adminspbe', '2020-01-06 08:38:00'),
(86, 4, 'Perda Kota Denpasar Nomor 4 Tahun 2017 Tentang Perubahan Atas Peraturan Daerah Kota Denpasar Nomor 9 Tahun 2016 Tentang Anggaran Pendapatan dan Belanja Daerah Kota Denpasar Tahun Anggaran 2017', 'indikator4.pdf', 'adminspbe', '2020-01-07 09:39:00'),
(87, 5, 'Perwali Kota Denpasar Nomor 35 Tahun 2014 Tentang Penyelenggaraan Sistem Elektronik (E-Goverment) di Lingkungan Pemerintah Kota Denpasar', 'indikator5.pdf', 'adminspbe', '2020-01-07 09:45:00'),
(88, 6, 'Perwali Kota Denpasar Nomor 35 Tahun 2014 Tentang Penyelenggaraan Sistem Elektronik (E-Government) di Lingkungan Pemerintah Kota Denpasar', 'indikator6.pdf', 'adminspbe', '2020-01-07 09:52:00'),
(89, 7, 'Perwali Kota Denpasar Nomor 45 Tahun 2013 Tentang Pelayanan Penanganan Pengaduan Masyarakat di Lingkungan Pemerintah Kota Denpasar', 'indikator7.pdf', 'adminspbe', '2020-01-08 08:25:00'),
(90, 8, 'Arsip Nasional Republik Indonesia Nomor 15 Tahun 2012 Tentang Petunjuk Pelaksanaan Pengelolaan Surat Elektronik  di Pencipta Arsip', 'indikator8a.pdf', 'adminspbe', '2020-01-08 08:28:00'),
(91, 8, 'Perda Kota Denpasar Nomor 14 Tahun 2015 Tentang Penyelenggaraan Kearsipan', 'indikator8b.pdf', 'adminspbe', '2020-01-08 08:51:00'),
(92, 8, 'SK Walikota Denpasar Nomor 188.45 / 1186 / HK / 2017 Tentang Pembentukan Panitia Penyelenggara, Penunjukan Instruktur, dan Penetapan Petugas Pada Organisasi Perangkat Daerah (OPD) Pengembangan Sistem Informasi Kearsipan. (SMART ARSIP) Kota Denpasar Tahun 2017', 'indikator8c.pdf', 'adminspbe', '2020-01-08 09:01:00'),
(93, 8, 'Review Hasil Monitoring dan Evaluasi Pengelolaan Kearsipan Kota Denpasar Tahun 2018', 'indikator8d.pdf', 'adminspbe', '2020-01-08 09:53:00'),
(94, 9, 'Tampilan Website Sistem Informasi Manajemen Kepegawaian Pemerintah Kota Denpasar', 'indikator9a.jpg', 'adminspbe', '2020-01-08 09:57:00'),
(95, 9, 'Keputusan Menteri Dalam Negeri Nomor 17 Tahun 2000 Tentang Sistem Informasi Manajemen Kepegawaian Departemen Dalam Negeri dan Pemerintah Daerah ', 'indikator9b.pdf', 'adminspbe', '2020-01-08 10:00:00'),
(96, 10, '', 'indikator10.pdf', 'adminspbe', '2019-12-24 14:06:00'),
(97, 11, '', 'indikator11.pdf', 'adminspbe', '2019-12-24 14:06:00'),
(98, 12, '', 'indikator12.pdf', 'adminspbe', '2019-12-24 14:07:00'),
(99, 13, '', 'indikator13a.pdf', 'adminspbe', '2019-12-24 14:07:00'),
(100, 13, '', 'indikator13b.jpg', 'adminspbe', '2019-12-24 14:07:00'),
(101, 13, '', 'indikator13c.jpg', 'adminspbe', '2019-12-24 14:08:00'),
(102, 13, '', 'indikator13d.jpg', 'adminspbe', '2019-12-24 14:08:00'),
(103, 13, '', 'indikator13e.jpg', 'adminspbe', '2019-12-24 14:08:00'),
(104, 13, '', 'indikator13f.jpg', 'adminspbe', '2019-12-24 14:08:00'),
(105, 13, '', 'indikator13g.jpg', 'adminspbe', '2019-12-24 14:08:00'),
(106, 13, '', 'indikator13h.jpg', 'adminspbe', '2019-12-24 14:09:00'),
(107, 13, '', 'indikator13i.jpg', 'adminspbe', '2019-12-24 14:09:00'),
(108, 13, '', 'indikator13j.jpg', 'adminspbe', '2019-12-24 14:09:00'),
(109, 13, '', 'indikator13k.jpg', 'adminspbe', '2019-12-24 14:09:00'),
(110, 13, '', 'indikator13l.jpg', 'adminspbe', '2019-12-24 14:09:00'),
(111, 13, '', 'indikator13m.jpg', 'adminspbe', '2019-12-24 14:10:00'),
(112, 15, '', 'indikator14a.pdf', 'adminspbe', '2019-12-24 14:17:00'),
(113, 15, '', 'indikator14b.pdf', 'adminspbe', '2019-12-24 14:17:00'),
(114, 16, '', 'indikator15.pdf', 'adminspbe', '2019-12-24 14:19:00'),
(115, 18, '', 'indikator17a.pdf', 'adminspbe', '2019-12-24 14:20:00'),
(116, 18, '', 'indikator17b.jpg', 'adminspbe', '2019-12-24 14:20:00'),
(117, 19, '', 'indikator18.pdf', 'adminspbe', '2019-12-24 14:20:00'),
(118, 20, '', 'indikator19a.pdf', 'adminspbe', '2019-12-24 14:21:00'),
(119, 20, '', 'indikator19b.pdf', 'adminspbe', '2019-12-24 14:21:00'),
(120, 20, '', 'indikator19c.pdf', 'adminspbe', '2019-12-24 14:21:00'),
(121, 20, '', 'indikator19d.pdf', 'adminspbe', '2019-12-24 14:21:00'),
(122, 20, '', 'indikator19e.jpg', 'adminspbe', '2019-12-24 14:22:00'),
(123, 20, '', 'indikator19f.pdf', 'adminspbe', '2019-12-24 14:22:00'),
(124, 21, '', 'indikator20.pdf', 'adminspbe', '2019-12-24 14:22:00'),
(125, 128, '', 'indikator16.pdf', 'adminspbe', '2019-12-24 14:25:00'),
(126, 22, '', 'indikator21.pdf', 'adminspbe', '2019-12-24 14:26:00'),
(127, 23, '', 'indikator22a.pdf', 'adminspbe', '2019-12-24 14:28:00'),
(128, 23, '', 'indikator22b.jpg', 'adminspbe', '2019-12-24 14:29:00'),
(129, 23, '', 'indikator22c.jpg', 'adminspbe', '2019-12-24 14:29:00'),
(130, 23, '', 'indikator22d.pdf', 'adminspbe', '2019-12-24 14:30:00'),
(131, 23, '', 'indikator22e.pdf', 'adminspbe', '2019-12-24 14:30:00'),
(132, 24, '', 'indikator23.jpg', 'adminspbe', '2019-12-24 14:30:00'),
(133, 24, '', 'indikator23b.pdf', 'adminspbe', '2019-12-24 14:30:00'),
(134, 25, '', 'indikator24.jpg', 'adminspbe', '2019-12-24 14:31:00'),
(135, 26, '', 'indikator25.jpg', 'adminspbe', '2019-12-24 14:31:00'),
(136, 27, '', 'indikator26.jpg', 'adminspbe', '2019-12-24 14:32:00'),
(137, 28, '', 'indikator27.jpg.jpg', 'adminspbe', '2019-12-24 14:32:00'),
(138, 29, '', 'indikator28.jpg', 'adminspbe', '2019-12-24 14:33:00'),
(139, 30, '', 'indikator29.jpg', 'adminspbe', '2019-12-24 14:33:00'),
(140, 31, '', 'indikator30.jpg', 'adminspbe', '2019-12-24 14:34:00'),
(141, 33, '', 'indikator31.jpg', 'adminspbe', '2019-12-24 14:34:00'),
(142, 34, '', 'indikator32.jpg', 'adminspbe', '2019-12-24 14:35:00'),
(143, 34, '', 'indikator32.pdf', 'adminspbe', '2019-12-24 14:35:00'),
(144, 35, '', 'indikator33.jpg', 'adminspbe', '2019-12-24 14:35:00'),
(145, 36, '', 'indikator34.jpg', 'adminspbe', '2019-12-24 14:36:00'),
(146, 37, '', 'indikator35-1a.jpg', 'adminspbe', '2019-12-24 14:36:00'),
(147, 37, '', 'indikator35-1b.pdf', 'adminspbe', '2019-12-24 14:36:00'),
(148, 37, '', 'indikator35-1c.pdf', 'adminspbe', '2019-12-24 14:36:00'),
(149, 38, '', 'indikator35-2a.jpg', 'adminspbe', '2019-12-24 14:37:00'),
(150, 38, '', 'indikator35-2b.pdf', 'adminspbe', '2019-12-24 14:37:00'),
(151, 38, '', 'indikator35-2c.pdf', 'adminspbe', '2019-12-24 14:37:00'),
(152, 39, '', 'indikator35-3a.jpg', 'adminspbe', '2019-12-24 14:38:00'),
(153, 39, '', 'indikator35-3b.pdf', 'adminspbe', '2019-12-24 14:38:00'),
(154, 39, '', 'indikator35-3c.pdf', 'adminspbe', '2019-12-24 14:38:00'),
(155, 42, 'SK Walikota Denpasar Nomor 188.45/1586/HK/2019 Tentang Perubahan Atas Keputusan Walikota Nomor 188.45/1195/HK/2019 Tentang Pembentukan TIM Pengarah Sistem Pemerintahan Berbasis Elektronik', 'SK PERUBAHAN SPBE.pdf', 'adminspbe', '2020-01-07 15:43:00'),
(156, 1, 'SK Walikota Denpasar Nomor 188.45/1586/HK/2019 Tentang Perubahan Atas Keputusan Walikota Nomor 188.45/1195/HK/2019 Tentang Pembentukan TIM Pengarah Sistem Pemerintahan Berbasis Elektronik', 'SK PERUBAHAN SPBE.pdf', 'adminspbe', '2020-01-07 15:43:00'),
(157, 135, '- Kebijakan aplikasi sistem monitoring dan evaluasi (simonev) Karma Simanis. Keputusan Walikota Denpasar Nomor : 188.45/1279/HK/2019', 'Surat Keputusan Walikota Tentang Simonev KARMASIMANIS001.pdf', 'Adbang', '2020-08-04 10:56:00'),
(158, 159, '', 'monev.png', 'bagianpengadaan', '2020-08-26 11:22:00'),
(159, 141, '', '2019pw5109062.pdf', 'bagianpengadaan', '2020-08-26 11:33:00'),
(160, 130, 'Penyusunan Peta Proses Bisnis Pemerintah Kota Denpasar di tetapkan dengan Keputusan Walikota Denpasar Nomor 188.45/1689/HK/2019 tentang Penetapan Peta Proses Bisnis Pemerintah Kota Denpasar. Penyusunan Peta Proses Bisnis Pemerintah Kota Denpasar mengacu pada Peraturan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Nomor 19 Tahun 2018 tentang Penyusunan Peta Proses Bisnis Instansi Pemerintah.', 'SK Peta Proses Bisnis Kota Dps.pdf', 'bagianorganisasi', '2020-08-28 10:12:00'),
(161, 130, 'Terdapat evaluasi terhadap efisiensi dan efektivitas peta proses bisnis dan SOP secara berkala dan seluruh hasilnya telah ditindak lanjuti sesuai dengan Surat Evaluasi Probis dan SOP. \r\nUntuk Tahun 2019 SOP yang dimiliki masih sesuai dengan Peraturan Walikota Denpasar Nomor 13 Tahun 2018 Tentang Standar Operasional Prosedur Administrasi Pemerintahan Di Lingkungan Pemerintah Kota Denpasar\r\nUntuk Tahun 2020 telah menyurati seluruh Perangkat Daerah sesuai dengan Surat Nomor 061/441/Org. Tanggal 4 Juni 2020 Hal : Evaluasi Peta Proses Bisnis dan Standar Operasional Prosedur (SOP) ', 'Surat Evaluasi Probis dan SOP.pdf', 'bagianorganisasi', '2020-08-28 10:11:00'),
(162, 136, 'Pedoman Tata Naskah Dinas Di Lingkungan Pemerintah Kota Denpasar ditetapkan dengan Peraturan Walikota Denpasar Nomor 23 Tahun 2011.\r\n\r\nProses evaluasi terkait Pedoman Tata Naskah Dinas menunggu diterbitkannya Peraturan Menteri Dalam Negeri terbaru terkait Pedoman Tata Naskah Dinas Di Lingkungan Pemerintah Daerah.', 'PERWALI 23 2011 TND.pdf', 'bagianorganisasi', '2020-08-28 10:21:00'),
(163, 153, 'Pedoman Tata Naskah Dinas Di Lingkungan Pemerintah Kota Denpasar ditetapkan dengan Peraturan Walikota Denpasar Nomor 23 Tahun 2011.\r\n\r\nProses evaluasi terkait Pedoman Tata Naskah Dinas menunggu diterbitkannya Peraturan Menteri Dalam Negeri terbaru terkait Pedoman Tata Naskah Dinas Di Lingkungan Pemerintah Daerah.', 'PERWALI 23 2011 TND.pdf', 'bagianorganisasi', '2020-08-28 10:21:00'),
(165, 139, 'SK Walikota Denpasar Nomor 188.45/1006/HK/2015 Tentang Pembentukan Tim Koordinasi Percepatan Implementasi dan Pengembangan Sistem Informasi Pengelolaan Keuangan Daerah', 'sk no 1006 tahun 2015.pdf', 'bpkad', '2020-10-20 14:54:00'),
(166, 157, 'Manual Valid PENATAUSAHAAN SIPKD R6', 'ManualValidPENATAUSAHAANSIPKDR6.pdf', 'bpkad', '2020-10-20 14:59:00'),
(167, 157, 'Manual Valid ANGGARAN SIPKD R6', 'ManualValidANGGARANSIPKDR6.pdf', 'bpkad', '2020-10-20 15:00:00'),
(168, 157, 'Manual Valid PERTANGGUNGJAWABAN SIPKD R6', 'ManualValidPERTANGGUNGJAWABANSIPKDR6.pdf', 'bpkad', '2020-10-20 15:00:00'),
(169, 153, 'Draft Surat Masuk Pada TNDE Kota Denpasar', 'Draft Surat Masuk Pada TNDE Kota Denpasar.jpg', 'bagianorganisasi', '2020-10-21 08:49:00'),
(170, 141, 'Perwali Kota Denpasar Nomor 2 Tahun 2008 Tentang Pedoman Pelaksanaan Pengadaan Barang/Jasa Secara Elektronik Di Pemerintah Kota Denpasar', 'indikator13.pdf', 'bagianpengadaan', '2020-10-21 08:58:00'),
(171, 158, 'Tampilan kelas jabatan untuk perhitungan TPP', 'kelas jabatan.png', 'bkpsdm', '2020-10-21 09:15:00'),
(172, 158, 'Tampilan untuk data LHKPN / LHKASN', 'data lhkp.png', 'bkpsdm', '2020-10-21 09:17:00'),
(173, 158, 'Tampilan titik 0 lokasi untuk absen online', 'lokasi titik nol absensi.png', 'bkpsdm', '2020-10-21 09:29:00'),
(174, 158, 'Tampilan hukuman disiplin untuk PNS ', 'prc hukdis.png', 'bkpsdm', '2020-10-21 09:31:00'),
(175, 140, 'Peraturan Walikota Denpasar Nomor 21 Tahun 2020 tentang Tambahan Penghasilan Kepada Pegawai Aparatur Sipil Negara ', 'perwali 21.pdf', 'bkpsdm', '2020-10-21 09:36:00'),
(176, 154, 'Tampilan menu untuk kenaikan pangkat', 'Kenaikan Pangkat.png', 'bkpsdm', '2020-10-21 09:46:00'),
(177, 137, 'SK Walikota Denpasar Nomor 188.45/1126/HK/2019 Tentang Penetapan Sistem Informasi Manajemen Administrasi Kepegawaian Untuk Database yang Handal,Akurat,Tertib, dan Informatif Dalam Pelayanan Informasi Data Kepegawaian.', 'SK Penetapan SIMAK DI HATI.pdf', 'bkpsdm', '2020-10-21 13:48:00'),
(178, 137, 'SK Walikota Denpasar Nomor 188.45/1076/HK/2019 Tentang Pembentukan TIM Integrasi Pelayanan Informasi Data Kepegawaian Melalui Pemanfaatan SIMAK DIHATI', 'SK Tim Integrasi SIMAK DIHATI.pdf', 'bkpsdm', '2020-10-21 13:51:00'),
(179, 143, 'Membuat Surat Keputusan Nomor: 188.45/50/HK/2019 tentang Penunjukan Tenaga Administrator Siitem Jaringan Dokumentasi dan Informasi Hukum dan Hak Asasi manusia Sekretariat Daerah Kota Denpasar', 'sk no 50 tahun 2019004.pdf', 'bagianhukum', '2020-10-21 14:22:00'),
(181, 165, 'penggunaan aplikasi tanda tangan digital', '17. DPMPTSP_TandaTanganDigital_SKOPD.pdf', 'perijinan', '2020-10-21 14:31:00'),
(182, 145, 'pengendalian intern pemerintahan', 'PP60Tahun2008_SPIP.pdf', 'perijinan', '2020-10-21 14:44:00'),
(183, 145, 'undang undang tentang pelayanan publik', 'UU-NOMOR-25-TAHUN-2009.pdf', 'perijinan', '2020-10-21 14:46:00'),
(184, 145, 'pedoman standar pelayanan', 'permenpan-15-2014.pdf', 'perijinan', '2020-10-21 14:46:00'),
(185, 145, 'pelayanan perizinan berusaha terintegrasi secara elektronik', 'pp24-2018bt.pdf', 'perijinan', '2020-10-21 14:48:00'),
(186, 145, 'penyelenggaraan pelayanan terpadu satu pintu', 'bn1956-2017.pdf', 'perijinan', '2020-10-21 14:49:00'),
(187, 145, 'perwalikota denpasar tentang mal pelayanan publik', 'perwali_5_2018.pdf', 'perijinan', '2020-10-21 14:51:00'),
(188, 129, 'SK Walikota Denpasar Nomor 188.45/1586/HK/2019 Tentang Perubahan Atas Keputusan Walikota Nomor 188.45/1195/HK/2019 Tentang Pembentukan TIM Pengarah Sistem Pemerintahan Berbasis Elektronik', 'SK PERUBAHAN SPBE.pdf', 'DKIS', '2020-10-22 10:43:00'),
(189, 131, ' SK Walikota Denpasar Nomor 188.45/1612/HK/2019 Tentang Rencana Induk Pengembangan Teknologi Informasi Komunikasi Terpadu (Cetak Biru E-Government)', 'indikator3.pdf', 'DKIS', '2020-10-22 10:50:00'),
(190, 133, 'Perwali Kota Denpasar Nomor 35 Tahun 2014 Tentang Penyelenggaraan Sistem Elektronik (E-Government) di Lingkungan Pemerintah Kota Denpasar', 'indikator5.pdf', 'DKIS', '2020-10-22 11:25:00'),
(191, 134, 'Perwali Kota Denpasar Nomer 35 Tahun 2014 Tentang Penyelenggaraan Sistem Elektronik (E-Government) di Lingkungan Pemerintah Kota Denpasar', 'indikator6.pdf', 'DKIS', '2020-10-22 11:28:00'),
(192, 142, ' SK Walikota Denpasar Nomor 188.45/206/HK/2013 Tentang Penunjukan Dinas Komunikasi dan Informatika Kota Denpasar Sebagai Pelaksana Penanganan Pengaduan Masyarakat di Kota Denpasar', 'indikator14b.pdf', 'DKIS', '2020-10-22 11:29:00'),
(193, 142, 'Perwali Kota Denpasar Nomor 45 Tahun 2013 Tentang Pelayanan Penanganan Pengaduan Masyarakat di Lingkungan Pemerintah Kota Denpasar', 'indikator14a.pdf', 'DKIS', '2020-10-22 11:30:00'),
(194, 147, 'Peta Proses Bisnis Pemerintah Kota Denpasar', 'indikator19.pdf', 'DKIS', '2020-10-22 11:35:00'),
(195, 148, 'Bab VIII Penutup', 'indikator20h.pdf', 'DKIS', '2020-10-22 11:36:00'),
(196, 148, 'Bab VII Cetak Biru Pengembangan E-Government', 'indikator20g.pdf', 'DKIS', '2020-10-22 11:38:00'),
(197, 148, 'Bab VI Perencanaan Strategis', 'indikator20f.pdf', 'DKIS', '2020-10-22 11:39:00'),
(198, 148, 'Bab V Analisa Kondisi E-Government di Kota Denpasar', 'indikator20e.pdf', 'DKIS', '2020-10-22 11:40:00'),
(199, 148, 'Bab IV E-Government Kota Denpasar', 'indikator20d.pdf', 'DKIS', '2020-10-22 11:41:00'),
(200, 148, 'Bab III Smart City', 'indikator20c.pdf', 'DKIS', '2020-10-22 11:41:00'),
(201, 148, 'Bab II Gambaran Umum Kota Denpasar', 'indikator20b.pdf', 'DKIS', '2020-10-22 11:42:00'),
(202, 148, 'Bab I Pendahuluan', 'indikator20a.pdf', 'DKIS', '2020-10-22 11:43:00'),
(203, 150, 'Data Replay IP Pada Setiap Server', 'indikator22e.jpg', 'DKIS', '2020-10-22 11:48:00'),
(204, 150, 'Gambar Penambahan Perangkat Pada Ruangan Server', 'indikator22d.pdf', 'DKIS', '2020-10-22 11:49:00'),
(205, 164, 'Perolehan ISO 9001:2015 untuk AK.I, AK.II, AK.III, AK.IV dan AK.V tahun 2019', 'iso BKO.jpg', 'disnaker', '2020-10-22 11:57:00'),
(206, 150, 'Laporan Akhir Kajian Physical Security Kota Denpasar', 'indikator22c.pdf', 'DKIS', '2020-10-22 13:10:00'),
(207, 150, 'Penataan Ruangan Server', 'indikator22b.jpg', 'DKIS', '2020-10-22 13:12:00'),
(208, 150, 'SOP Penetapan Tata Cara Layanan Data Center', 'indikator22a.pdf', 'DKIS', '2020-10-22 13:12:00'),
(209, 151, 'Planning-Budgeting-Monitoring-Integrated System', 'indikator23.jpg', 'DKIS', '2020-10-22 13:14:00'),
(210, 152, 'Spesifikasi Software dan Petunjuk Teknis', 'indikator24.pdf', 'DKIS', '2020-10-22 13:15:00'),
(211, 160, 'Tampilan Daftar user yang memenuhi persyaratan pendaftaran lengkap dengan NIK KTP', 'indikator32c.pdf', 'DKIS', '2020-10-22 13:18:00'),
(212, 160, 'Tampilan Registrasi Pada Website Pro Denpasar', 'indikator32b.jpg', 'DKIS', '2020-10-22 13:19:00'),
(213, 160, 'Tampilan Website Pro Denpasar', 'indikator32a.jpg', 'DKIS', '2020-10-22 13:19:00'),
(214, 164, 'Tampilan pada Registrasi Pencari Kerja ', '1.jpg', 'disnaker', '2020-10-22 13:52:00'),
(215, 164, 'SOP Bidang Penempatan Tenaga Kerja ', 'indikator35-2c.pdf', 'disnaker', '2020-10-22 13:53:00'),
(216, 164, 'Perwali Kota Denpasar Nomor 31 Tahun 2011 Tentang Tata Cara dan Persyaratan Pelayanan Bursa Kerja Online di Kota Denpasar ', 'indikator35-2b.pdf', 'disnaker', '2020-10-22 13:53:00'),
(217, 164, 'Tampilan Website Bursa Kerja Online ', 'bko.jpg', 'disnaker', '2020-10-22 13:56:00'),
(219, 37, 'PERJANJIAN KERJASAMA ANTARA BADAN PENDAPATAN DAERAH KOTA DENPASAR DENGAN DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU KOTA DENPASAR NOMOR : 415.4/2743/BPDKD DAN 415.4/361/DPMPTSP TENTANG KERJASAMA INTEGRASI DATA PAJAK DAERAH PADA BADAN PENDAPATAN DAERAH KOTA DENPASAR DENGAN DATA PERIJINAN PADA DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU KOTA DENPASAR', 'PKS BAPENDA DPMPTSP.pdf', 'Bapenda', '2020-10-23 10:15:00'),
(220, 37, 'PERJANJIAN KERJASAMA ANTARA BADAN PENDAPATAN DAERAH KOTA DENPASAR DENGAN KANTOR PERTANAHAN KOTA DENPASAR NOMOR : 415.4/1547/BPDKD/2018 DAN NOMOR :1427/2-51.71/VII/2018 TENTANG KERJASAMA INTEGRASI DATA PBB P2 DAN BPHTB PADA BADAN PENDAPATAN DAERAH KOTA DENPASAR DENGAN DATA SUBYEK DAN OBYEK BIDANG TANAH TERDAFTAR PADA KANTOR PERTANAHAN KOTA DENPASA', 'PKS BAPENDA DG BPN 2018.pdf', 'Bapenda', '2020-10-23 10:16:00'),
(221, 162, '', 'indikator34.jpg', 'Inspektorat', '2020-10-23 18:09:00'),
(222, 144, '', 'indikator16a.pdf', 'Inspektorat', '2020-10-23 18:10:00'),
(223, 163, 'RUP-Spesifikasi Persyaratan Software Sistem Informasi Pelayanan Pajak Terpadu 2020', '03.  RUP-Spesifikasi Persyaratan Software Sistem Informasi Pelayanan Pajak Terpadu 2020.docx.pdf', 'Bapenda', '2020-11-02 12:48:00'),
(224, 163, 'KAK Aplikasi Pemetaan dan Pengembangan Sistem Informasi Pendapatan Daerah Terpadu ', '02.  KAK Aplikasi Pemetaan dan Pengembangan Sistem Informasi Pendapatan Daerah Terpadu.pdf', 'Bapenda', '2020-11-02 12:55:00'),
(225, 37, 'Peraturan Walikota Denpasar Nomor 17 Tahun 2016 tentang Tata Cara Pelaksanaan Pembayaran dan Pelaporan Bea Perolehan Hak Atas Tanah Dan Bangunan (BPHTB) Secara Online', 'BPHTB ONLINE.pdf', 'Bapenda', '2020-11-02 12:59:00'),
(226, 37, 'Peraturan Walikota Denpasar Nomor 16 Tahun 2016 tentang Tata Cara Dan Pengisian Surat Pemberitahuan Pajak Hotel, Pajak Restoran dan Pajak Hiburan Secara Online', 'PERWALI SPTPD ONLINE.pdf', 'Bapenda', '2020-11-02 13:03:00'),
(227, 76, 'Modul Penggunaan Aplikasi BPHTB Online', 'MODUL PENGGUNAAN APLIKASI BPHTB ONLINE.pdf', 'Bapenda', '2020-11-02 13:08:00'),
(228, 76, 'Modul penggunaan Aplikasi SPTPD Online', 'MODUL SPTPD ONLINE.pdf', 'Bapenda', '2020-11-02 13:12:00'),
(229, 76, 'Modul Penggunaan Aplikasi BPHTB Online', 'MODUL PENGGUNAAN APLIKASI BPHTB ONLINE.pdf', 'Bapenda', '2020-11-02 13:13:00'),
(230, 132, 'Ringkasan APBD Menurut Organisasi dan Urusan Pemerintah Daerah Tahun Anggaran 2019', 'indikator4b.pdf', 'bappeda', '2020-11-03 14:30:00'),
(231, 132, 'Perda Kota Denpasar Nomor 6 Tahun 2018 Tentang Anggaran Pendapatan dan Belanja Daerah Kota Denpasar Tahun Anggaran 2019', 'indikator4a.pdf', 'bappeda', '2020-11-03 14:34:00'),
(232, 138, 'SK Walikota Denpasar Nomor 188.45/1589/HK/2019 Tentang Penetapan Pelaksanaan Sistem Informasi Perencanaan Pembangunan Daerah Berbasis Elektronik / E-Planning di Kota Denpasar', 'indikator10.pdf', 'bappeda', '2020-11-03 14:37:00'),
(233, 149, 'Ringkasan APBD Menurut Organisasi dan Urusan Pemerintah Daerah Tahun Anggaran 2019', 'indikator21.pdf', 'bappeda', '2020-11-03 14:38:00'),
(234, 155, 'Tampilan Website Denpasar Plan', 'indikator27.jpg', 'bappeda', '2020-11-03 14:40:00'),
(235, 156, 'Modul Penggunaan Website Sistem Informasi Pengelola Keuangan dan Aset Daerah (SIPKD)', 'indikator28.pdf', 'bappeda', '2020-11-03 14:42:00'),
(236, 161, 'Tampilan Pada Input Peraturan Baru', 'indikator33b.jpg', 'bagianhukum', '2020-11-17 08:55:00'),
(237, 161, 'Tampilan Website JDIH (Jaringan Dokumentasi Informasi Hukum) Kota Denpasar', 'indikator33a.jpg', 'bagianhukum', '2020-11-17 08:55:00'),
(246, 166, 'Perwali No 35 Th 2014 Penyelenggaraan Sistem Elektronik', 'Indikator1aPerwaliNo35Th2014PenyelenggaraanSistemElepdf.pdf', 'adminspbe', '2021-08-22 17:36:00'),
(247, 166, 'Notulen Rapat Perwali SPBE', 'Indikator1bNotulenRapatPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 17:40:00'),
(248, 166, 'Rapat Pembahasan Perwali SPBE', 'Indikator1cRapatPembahasanPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 17:41:00'),
(249, 166, 'Telahaan Staf Perwali SPBE', 'Indikator1dTelahaanStafPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 17:42:00'),
(250, 166, 'Draft Revisi Perwali SPBE', 'Indikator1eDraftRevisiPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 17:43:00'),
(251, 167, 'Perwali No 35 Th 2014 Penyelenggaraan Sistem Elektronik', 'Indikator2aPerwaliNo35Th2014PenyelenggaraanSistemElepdf.pdf', 'adminspbe', '2021-08-22 17:44:00'),
(252, 167, 'Notulen Rapat Perwali SPBE', 'Indikator2bNotulenRapatPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 17:45:00'),
(253, 167, 'Rapat Pembahasan Perwali SPBE', 'Indikator2cRapatPembahasanPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 17:46:00'),
(254, 167, 'Telahaan Staf Perwali SPBE', 'Indikator2dTelahaanStafPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 17:47:00'),
(255, 167, 'Draft Revisi Perwali SPBE', 'Indikator2eDraftRevisiPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 17:47:00'),
(256, 168, 'Perwali No 35 Th 2014 Penyelenggaraan Sistem Elektronik', 'Indikator3aPerwaliNo35Th2014PenyelenggaraanSistemElepdf.pdf', 'adminspbe', '2021-08-22 17:48:00'),
(257, 168, 'Notulen Rapat Perwali SPBE', 'Indikator3bNotulenRapatPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 17:49:00'),
(258, 168, 'Rapat Pembahasan Perwali SPBE', 'Indikator3cRapatPembahasanPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 17:50:00'),
(259, 168, 'Telahaan Staf Perwali SPBE', 'Indikator3dTelahaanStafPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 17:50:00'),
(260, 168, 'Draft Revisi Perwali SPBE', 'Indikator3eDraftRevisiPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 17:51:00'),
(261, 169, 'Perwali No 35 Th 2014 Penyelenggaraan Sistem Elektronik', 'Indikator4aPerwaliNo35Th2014PenyelenggaraanSistemElepdf.pdf', 'adminspbe', '2021-08-22 22:27:00'),
(262, 169, 'Notulen Rapat Perwali SPBE', 'Indikator4bNotulenRapatPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:28:00'),
(263, 169, 'Rapat Pembahasan Perwali SPBE', 'Indikator4cRapatPembahasanPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:30:00'),
(264, 169, 'Telahaan Staf Perwali SPBE', 'Indikator4dTelahaanStafPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:30:00'),
(265, 169, 'Draft Revisi Perwali SPBE', 'Indikator4eDraftRevisiPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:31:00'),
(266, 170, 'Perwali No 35 Th 2014 Penyelenggaraan Sistem Elektronik', 'Indikator5aPerwaliNo35Th2014PenyelenggaraanSistemElepdf.pdf', 'adminspbe', '2021-08-22 22:33:00'),
(267, 170, 'Notulen Rapat Perwali SPBE', 'Indikator5bNotulenRapatPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:34:00'),
(268, 170, 'Rapat Pembahasan Perwali SPBE', 'Indikator5cRapatPembahasanPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:34:00'),
(269, 170, 'Telahaan Staf Perwali SPBE', 'Indikator5dTelahaanStafPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:35:00'),
(270, 170, 'Draft Revisi Perwali SPBE', 'Indikator5eDraftRevisiPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:36:00'),
(271, 171, 'Perwali No 35 Th 2014 Penyelenggaraan Sistem Elektronik', 'Indikator5aPerwaliNo35Th2014PenyelenggaraanSistemElepdf.pdf', 'adminspbe', '2021-08-22 22:37:00'),
(272, 171, 'Notulen Rapat Perwali SPBE', 'Indikator5bNotulenRapatPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:41:00'),
(273, 171, 'Rapat Pembahasan Perwali SPBE', 'Indikator5cRapatPembahasanPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:42:00'),
(274, 171, 'Telahaan Staf Perwali SPBE', 'Indikator5dTelahaanStafPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:43:00'),
(275, 171, 'Draft Revisi Perwali SPBE', 'Indikator5eDraftRevisiPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:43:00'),
(276, 172, 'Perwali No 35 Th 2014 Penyelenggaraan Sistem Elektronik', 'Indikator7aPerwaliNo35Th2014PenyelenggaraanSistemElepdf.pdf', 'adminspbe', '2021-08-22 22:45:00'),
(277, 172, 'Notulen Rapat Perwali SPBE', 'Indikator7bNotulenRapatPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:47:00'),
(278, 172, 'Rapat Pembahasan Perwali SPBE', 'Indikator7cRapatPembahasanPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:48:00'),
(279, 172, 'Telahaan Staf Perwali SPBE', 'Indikator7dTelahaanStafPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:49:00'),
(280, 172, 'Draft Revisi Perwali SPBE', 'Indikator7eDraftRevisiPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:50:00'),
(281, 173, 'Perwali No 35 Th 2014 Penyelenggaraan Sistem Elektronik', 'Indikator8aPerwaliNo35Th2014PenyelenggaraanSistemElepdf.pdf', 'adminspbe', '2021-08-22 22:51:00'),
(282, 173, 'Notulen Rapat Perwali SPBE', 'Indikator8bNotulenRapatPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:52:00'),
(283, 173, 'Rapat Pembahasan Perwali SPBE', 'Indikator8cRapatPembahasanPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:53:00'),
(284, 173, 'Telahaan Staf Perwali SPBE', 'Indikator8dTelahaanStafPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:54:00'),
(285, 173, 'Draft Revisi Perwali SPBE', 'Indikator8eDraftRevisiPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:54:00'),
(286, 174, 'Perwali No 35 Th 2014 Penyelenggaraan Sistem Elektronik', 'Indikator9aPerwaliNo35Th2014PenyelenggaraanSistemElepdf.pdf', 'adminspbe', '2021-08-22 22:57:00'),
(287, 174, 'Notulen Rapat Perwali SPBE', 'Indikator9bNotulenRapatPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:58:00'),
(288, 174, 'Rapat Pembahasan Perwali SPBE', 'Indikator9cRapatPembahasanPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 22:59:00'),
(289, 174, 'Telahaan Staf Perwali SPBE', 'Indikator9dTelahaanStafPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 23:00:00'),
(290, 174, 'Draft Revisi Perwali SPBE', 'Indikator9eDraftRevisiPerwaliSPBEpdf.pdf', 'adminspbe', '2021-08-22 23:00:00'),
(291, 174, 'Draft SK Tim Audit SPBE 2021', 'Indikator9fDraftSKTimAuditSPBE2021pdf.pdf', 'adminspbe', '2021-08-22 23:01:00'),
(292, 175, 'SK Tim Evaluator SPBE 2018', 'Indikator10aSKTimEvaluatorSPBE2018pdf.pdf', 'adminspbe', '2021-08-22 23:02:00'),
(293, 175, 'SK Tim Pengarah SPBE 2019', 'Indikator10bSKTimPengarahSPBE2019pdf.pdf', 'adminspbe', '2021-08-22 23:03:00'),
(294, 175, 'Draft SK Tim Asesor SPBE 2021', 'Indikator10cDraftSKTimAsesorSPBE2021pdf.pdf', 'adminspbe', '2021-08-22 23:03:00'),
(295, 175, 'Surat Pengantar', 'Indikator10dSuratPengantarpdf.pdf', 'adminspbe', '2021-08-22 23:04:00'),
(296, 176, 'Blueprint eGovernment Kota Denpasar', 'Indikator11aBlueprinteGovernmentKotaDenpasarpdf.pdf', 'adminspbe', '2021-08-22 23:05:00'),
(297, 176, 'SK Blueprint', 'Indikator11bSKBlueprintpdf.pdf', 'adminspbe', '2021-08-22 23:06:00'),
(298, 176, 'Draft Arsitektur SPBE Kota Denpasar 2021', 'Indikator11cDraftArsitekturSPBEKotaDenpasar2021pdf.pdf', 'adminspbe', '2021-08-22 23:08:00'),
(300, 177, 'Blueprint eGovernment Kota Denpasar', 'Indikator12aBlueprinteGovernmentKotaDenpasarpdf.pdf', 'adminspbe', '2021-08-22 23:12:00'),
(301, 177, 'SK Blueprint', 'Indikator12bSKBlueprintpdf.pdf', 'adminspbe', '2021-08-22 23:12:00'),
(302, 177, 'Draft Arsitektur SPBE Kota Denpasar', 'Indikator12cHalaman21DraftArsitekturSPBEKotaDenpasarpdf.pdf', 'adminspbe', '2021-08-22 23:13:00'),
(303, 179, 'Rapat Geoportal', 'Indikator13aRapatGeoportalpdf.pdf', 'adminspbe', '2021-08-22 23:15:00'),
(304, 179, 'Draft SK Tim Koordinasi Forum Satu Data', 'Indikator13bDraftSKTimKoordinasiForumSatuDatapdf.pdf', 'adminspbe', '2021-08-22 23:16:00'),
(305, 180, 'Rapat Geoportal', 'Indikator13aRapatGeoportalpdf.pdf', 'adminspbe', '2021-08-22 23:17:00'),
(306, 180, 'Draft SK Tim Koordinasi Forum Satu Data', 'Indikator13bDraftSKTimKoordinasiForumSatuDatapdf.pdf', 'adminspbe', '2021-08-22 23:18:00'),
(307, 181, 'SK Peta Proses Bisnis', 'Indikator14aSKPetaProsesBisnispdf.pdf', 'adminspbe', '2021-08-22 23:19:00'),
(308, 181, 'Draft Arsitektur SPBE ', 'Indikator14bHal49DraftArsitekturSPBEpdf.pdf', 'adminspbe', '2021-08-22 23:21:00'),
(309, 181, 'PETA PROSES BISNIS DAN EVALUASI INOVASI SIDAR', 'Inidkator14cPETAPROSESBISNISDANEVALUASIINOVASISIDARpdf.pdf', 'adminspbe', '2021-08-22 23:22:00'),
(310, 182, 'SK Peta Proses Bisnis', 'Indikator14aSKPetaProsesBisnispdf.pdf', 'adminspbe', '2021-08-22 23:23:00'),
(311, 182, 'Draft Arsitektur SPBE', 'Indikator14bHal49DraftArsitekturSPBEpdf.pdf', 'adminspbe', '2021-08-22 23:24:00'),
(312, 182, 'PETA PROSES BISNIS DAN EVALUASI INOVASI SIDAR', 'Inidkator14cPETAPROSESBISNISDANEVALUASIINOVASISIDARpdf.pdf', 'adminspbe', '2021-08-22 23:24:00'),
(313, 183, 'SK Peta Proses Bisnis', 'Indikator14aSKPetaProsesBisnispdf.pdf', 'adminspbe', '2021-08-22 23:25:00'),
(314, 183, 'Draft Arsitektur SPBE', 'Indikator14bHal49DraftArsitekturSPBEpdf.pdf', 'adminspbe', '2021-08-22 23:26:00'),
(315, 183, 'PETA PROSES BISNIS DAN EVALUASI INOVASI SIDAR', 'Inidkator14cPETAPROSESBISNISDANEVALUASIINOVASISIDARpdf.pdf', 'adminspbe', '2021-08-22 23:27:00'),
(316, 184, 'Perwali No 35 Th 2014 Penyelenggaraan Sistem Elektronik', 'Indikator15aPerwaliNo35Th2014PenyelenggaraanSistemElpdf.pdf', 'adminspbe', '2021-08-22 23:29:00'),
(317, 184, 'Standarisasi Pembangunan Sistem Informasi', 'Indikator15bStandarisasiPembangunanSistemInformasipdf.pdf', 'adminspbe', '2021-08-22 23:30:00'),
(318, 184, 'SOP Pembangunan Sistem Informasi', 'Indikator15cSOPPembangunanSistemInformasipdf.pdf', 'adminspbe', '2021-08-22 23:31:00'),
(319, 184, 'Contoh Spesifikasi Sistem Informasi', 'Indikator15dContohSpesifikasiSistemInformasipdf.pdf', 'adminspbe', '2021-08-22 23:32:00'),
(320, 185, 'SOP Layanan Data Center', 'Indikator16aSOPLayananDataCenterpdf.pdf', 'adminspbe', '2021-08-22 23:34:00'),
(321, 185, 'Permohonan Layanan VPS Ke Kemen Kominfo', 'Indikator16bPermohonanLayananVPSKeKemenKominfopdf.pdf', 'adminspbe', '2021-08-22 23:35:00'),
(322, 185, 'Dokumen Kredensial dari Kemen Kominfo', 'Indikator16cDokumenKredensialdariKemenKominfopdf.pdf', 'adminspbe', '2021-08-22 23:36:00'),
(323, 185, 'Evaluasi Unud 2017', 'Indikator16dEvaluasiUnud2017pdf.pdf', 'adminspbe', '2021-08-22 23:36:00'),
(324, 185, 'Evaluasi Telkom 2020', 'Indikator16eEvaluasiTelkom2020pdf.pdf', 'adminspbe', '2021-08-22 23:37:00'),
(325, 186, 'Topologi Jaringan', 'Indikator17aTopologiJaringanpdf.pdf', 'adminspbe', '2021-08-22 23:38:00'),
(326, 186, 'Laporan Link VPN', 'Indikator17bLaporanLinkVPNpdf.pdf', 'adminspbe', '2021-08-22 23:38:00'),
(327, 186, 'Laporan Monitoring Evaluasi Infrastruktur Jaringan', 'Indikator17cLaporanMonitoringEvaluasiInfrastrukturJarinpdf.pdf', 'adminspbe', '2021-08-22 23:39:00'),
(328, 187, 'DPA Sistem Penghubung Layanan Pemerintah', 'Indikator18aDPASistemPenghubungLayananPemerintahpdf.pdf', 'adminspbe', '2021-08-22 23:40:00'),
(329, 187, 'Laporan Integrasi Sistem Infromasi', 'Indikator18bLaporanIntegrasiSistemInfromasipdf.pdf', 'adminspbe', '2021-08-22 23:41:00'),
(330, 188, 'SK Tim Evaluator SPBE 2018', 'Indikator19aSKTimEvaluatorSPBE2018pdf.pdf', 'adminspbe', '2021-08-22 23:43:00'),
(331, 188, 'SK Tim Pengarah SPBE 2019', 'Indikator19bSKTimPengarahSPBE2019pdf.pdf', 'adminspbe', '2021-08-22 23:45:00'),
(332, 188, 'Draft SK Tim Asesor SPBE 2021', 'Indikator19cDraftSKTimAsesorSPBE2021pdf.pdf', 'adminspbe', '2021-08-22 23:45:00'),
(333, 189, 'Surat Keputusan ESewaka Dharma', 'Indikator20aSuratKeputusanESewakaDharmapdf.pdf', 'adminspbe', '2021-08-22 23:46:00'),
(334, 189, 'Surat Edaran Pemanfaatan Aplikasi eSewakadarma', 'Indikator20bSuratEdaranPemanfaanAplikasieSewakadarmattpdf.pdf', 'adminspbe', '2021-08-22 23:48:00'),
(335, 189, 'Notulen Rapat Pengembangan Aplikasi', 'Indikator20cNotulenRapatPengembanganAplikasipdf.pdf', 'adminspbe', '2021-08-22 23:48:00'),
(336, 189, 'Notulen Sosialisasi eSewaka Dharma', 'Indikator20dNotulenSosialisasieSewakaDharmapdf.pdf', 'adminspbe', '2021-08-22 23:49:00'),
(338, 190, 'Blueprint eGovernment Kota Denpasar', 'Indikator21bBlueprinteGovernmentKotaDenpasarpdf.pdf', 'adminspbe', '2021-08-23 00:41:00'),
(339, 190, 'SK Walikota Petunjuk Penyelengaraan SPIP', 'Indikator21aSKWalikotaPetunjukPenyelengaraanSPIPpdf.pdf', 'adminspbe', '2021-08-23 00:42:00'),
(340, 190, 'Alur DC Saat Aplikasi Tidak Dapat Akses', 'Indikator21cAlurDCSaatAplikasiTidakDapatAksespdf.pdf', 'adminspbe', '2021-08-23 00:42:00'),
(341, 190, 'Alur DC Saat Listrik Padam', 'Indikator21dAlurDCSaatListrikPadampdf.pdf', 'adminspbe', '2021-08-23 00:43:00'),
(342, 191, 'SK Walikota Petunjuk Penyelengaraan SPIP', 'Indikator21aSKWalikotaPetunjukPenyelengaraanSPIPpdf.pdf', 'adminspbe', '2021-08-23 00:44:00'),
(343, 191, 'Blueprint eGovernment Kota Denpasar', 'Indikator21bBlueprinteGovernmentKotaDenpasarpdf.pdf', 'adminspbe', '2021-08-23 00:45:00'),
(344, 191, 'Alur DC Saat Aplikasi Tidak Dapat Akses', 'Indikator21cAlurDCSaatAplikasiTidakDapatAksespdf.pdf', 'adminspbe', '2021-08-23 00:45:00'),
(345, 191, 'Alur DC Saat Listrik Padam', 'Indikator21dAlurDCSaatListrikPadampdf.pdf', 'adminspbe', '2021-08-23 00:46:00'),
(346, 192, 'Buku Standar Keamanan Informasi', 'Indikator22aBukuStandarKeamananInformasipdf.pdf', 'adminspbe', '2021-08-23 00:47:00'),
(347, 193, 'Perwali Kota Denpasar No 73 Th 2019', 'Indikator23aPerwaliKotaDenpasarNo73Th2019TentangSatpdf.pdf', 'adminspbe', '2021-08-23 00:49:00'),
(348, 193, 'Draft SK Tim Koordinasi Forum Satu Data', 'Indikator23bDraftSKTimKoordinasiForumSatuDatapdf.pdf', 'adminspbe', '2021-08-23 00:50:00'),
(349, 193, 'Undangan Rapat Satu Data', 'Indikator23cUndanganRapatSatuDatapdf.pdf', 'adminspbe', '2021-08-23 00:51:00'),
(350, 193, 'Notulen Rapat Satu Data', 'Indikator23dNotulenRapatSatuDatapdf.pdf', 'adminspbe', '2021-08-23 00:51:00'),
(351, 194, 'Tingkat 1 Laporan Kegiatan BIMTEK SIMDA BMD', 'Indikator24aTingkat1LaporanKegiatanBIMTEKSIMDABMDpdf.pdf', 'adminspbe', '2021-08-23 00:53:00'),
(352, 194, 'Tingkat 2 RENJA BPKAD Tahun 2021', 'Indikator24bTingkat2RENJABPKADTahun2021pdf.pdf', 'adminspbe', '2021-08-23 00:54:00'),
(353, 194, 'Tingkat 3 Screenshot Aplikasi SIMDA BMD', 'Indikator24cTingkat3ScreenshotAplikasiSIMDABMDpdf.pdf', 'adminspbe', '2021-08-23 00:58:00'),
(354, 194, 'Tingkat 3 Manual Aplikasi SIPKD', 'Indikator24dTingkat3ManualAplikasiSIPKDPersediaanOperapdf.pdf', 'adminspbe', '2021-08-23 01:00:00'),
(355, 194, 'Tingkat 4 Flowchat Integrasi SIPKD ASET', 'Indikator24eTingkat4FlowchatIntegrasiSIPKDASETpdf.pdf', 'adminspbe', '2021-08-23 01:00:00'),
(356, 195, 'Analisis Kebutuhan Diklat', 'Indikator25aAnalisisKebutuhanDiklatpdf.pdf', 'adminspbe', '2021-08-23 01:04:00'),
(357, 196, 'Buku Panduan Sistem Informasi Dokumentasi', 'Inidkator26BukuPanduanSistemInformasiDokumentasipdf.pdf', 'adminspbe', '2021-08-23 01:05:00'),
(358, 197, 'Aplikasi Manajemen Perubahan', 'Indikator27AplikasiManajemenPerubahanpdf.pdf', 'adminspbe', '2021-08-23 01:06:00'),
(359, 197, 'Perwali Budaya Kerja', 'Indikator27bPerwaliBudayaKerjapdf.pdf', 'adminspbe', '2021-08-23 01:07:00'),
(360, 197, 'SK Penetapan Sang Sewakadarma Agen Perubahan', 'Indikator27cSKPenetapanSangSewakadarmaAgenPerubahanpdf.pdf', 'adminspbe', '2021-08-23 01:08:00'),
(361, 198, 'SK TIM SIDARLING', 'Indikator28a-SK TIM SIDARLING.pdf', 'adminspbe', '2021-08-23 01:09:00'),
(362, 198, 'Notulen Rapat Aplikasi Bank Sampah - Sidarling', 'Indikator28c-Notulen Rapat Aplikasi Bank Sampah - Sidarling.pdf', 'adminspbe', '2021-08-23 01:10:00'),
(363, 198, 'Notulen rapat evaluasi sidarling integrasi dengan LPD', 'Indikator28d-Notulen rapat evaluasi sidarling integrasi dengan LPD.pdf', 'adminspbe', '2021-08-23 01:11:00'),
(364, 198, 'Notulen Rapat Sidarling', 'Indikator28e-Notulen Rapat Sidarling.pdf', 'adminspbe', '2021-08-23 01:11:00'),
(365, 198, 'INOVASI SIDARLING', 'Inidkator28b-INOVASI SIDARLING.pdf', 'adminspbe', '2021-08-23 01:12:00'),
(366, 199, 'Buku Standar Keamanan Informasi', 'Indikator29aBukuStandarKeamananInformasipdf.pdf', 'adminspbe', '2021-08-23 01:13:00'),
(367, 199, 'Laporan Audit TIK 2019', 'Indikator29bLaporanAuditTIK2019pdf.pdf', 'adminspbe', '2021-08-23 01:14:00'),
(368, 199, 'Laporan Audit TIK 2020', 'Indikator29cLaporanAuditTIK2020pdf.pdf', 'adminspbe', '2021-08-23 01:15:00'),
(369, 199, 'Draft SK Tim Auditor SPBE 2021', 'Indikator29dDraftSKTimAuditorSPBE2021pdf.pdf', 'adminspbe', '2021-08-23 01:15:00'),
(370, 200, 'Buku Standar Keamanan Informasi', 'Indikator29aBukuStandarKeamananInformasipdf.pdf', 'adminspbe', '2021-08-23 01:16:00'),
(371, 200, 'Laporan Audit TIK 2019', 'Indikator29bLaporanAuditTIK2019pdf.pdf', 'adminspbe', '2021-08-23 01:17:00'),
(372, 200, 'Laporan Audit TIK 2020', 'Indikator29cLaporanAuditTIK2020pdf.pdf', 'adminspbe', '2021-08-23 01:18:00'),
(373, 200, 'Draft SK Tim Auditor SPBE 2021', 'Indikator29dDraftSKTimAuditorSPBE2021pdf.pdf', 'adminspbe', '2021-08-23 01:18:00'),
(374, 201, 'Buku Standar Keamanan Informasi', 'Indikator30aBukuStandarKeamananInformasipdf.pdf', 'adminspbe', '2021-08-23 01:20:00'),
(375, 201, 'Laporan Audit TIK 2019', 'Indikator30bLaporanAuditTIK2019pdf.pdf', 'adminspbe', '2021-08-23 01:20:00'),
(376, 201, 'Laporan Audit TIK 2020', 'Indikator30cLaporanAuditTIK2020pdf.pdf', 'adminspbe', '2021-08-23 01:21:00'),
(377, 201, 'Draft SK Tim Auditor SPBE 2021', 'Indikator30dDraftSKTimAuditorSPBE2021pdf.pdf', 'adminspbe', '2021-08-23 01:22:00'),
(378, 201, 'Audit Aplikasi SPSE', 'Indikator30eAuditAplikasiSPSEpdf.pdf', 'adminspbe', '2021-08-23 01:23:00'),
(379, 202, 'Buku Standar Keamanan Informasi', 'Indikator30aBukuStandarKeamananInformasipdf.pdf', 'adminspbe', '2021-08-23 01:24:00'),
(380, 202, 'Laporan Audit TIK 2019', 'Indikator30bLaporanAuditTIK2019pdf.pdf', 'adminspbe', '2021-08-23 01:25:00'),
(381, 202, 'Laporan Audit TIK 2020', 'Indikator30cLaporanAuditTIK2020pdf.pdf', 'adminspbe', '2021-08-23 01:26:00'),
(382, 202, 'Draft SK Tim Auditor SPBE 2021', 'Indikator30dDraftSKTimAuditorSPBE2021pdf.pdf', 'adminspbe', '2021-08-23 01:26:00'),
(383, 202, 'Audit Aplikasi SPSE', 'Indikator30eAuditAplikasiSPSEpdf.pdf', 'adminspbe', '2021-08-23 01:28:00'),
(384, 203, 'Buku Standar Keamanan Informasi', 'Indikator31aBukuStandarKeamananInformasipdf.pdf', 'adminspbe', '2021-08-23 01:29:00'),
(385, 203, 'Laporan Audit TIK 2019', 'Indikator31bLaporanAuditTIK2019pdf.pdf', 'adminspbe', '2021-08-23 01:30:00'),
(386, 203, 'Laporan Audit TIK 2020', 'Indikator31cLaporanAuditTIK2020pdf.pdf', 'adminspbe', '2021-08-23 01:31:00'),
(387, 203, 'Draft SK Tim Auditor SPBE 2021', 'Indikator31dDraftSKTimAuditorSPBE2021pdf.pdf', 'adminspbe', '2021-08-23 01:31:00'),
(388, 204, 'Buku Standar Keamanan Informasi', 'Indikator31aBukuStandarKeamananInformasipdf.pdf', 'adminspbe', '2021-08-23 01:33:00'),
(389, 204, 'Laporan Audit TIK 2019', 'Indikator31bLaporanAuditTIK2019pdf.pdf', 'adminspbe', '2021-08-23 01:35:00'),
(390, 204, 'Laporan Audit TIK 2020', 'Indikator31cLaporanAuditTIK2020pdf.pdf', 'adminspbe', '2021-08-23 01:36:00'),
(391, 204, 'Draft SK Tim Auditor SPBE 2021', 'Indikator31dDraftSKTimAuditorSPBE2021pdf.pdf', 'adminspbe', '2021-08-23 01:37:00'),
(392, 205, 'Penjelasan Level', 'Indikator32aPenjelasanLevelpdf.pdf', 'adminspbe', '2021-08-23 01:38:00'),
(393, 205, 'bukti dukung', 'Indikator32bbuktidukungpdf.pdf', 'adminspbe', '2021-08-23 01:38:00'),
(394, 206, 'Tingkat 1 alur sipd', 'Indikator33aTingkat1alursipdpdf.pdf', 'adminspbe', '2021-08-23 01:40:00'),
(395, 207, 'Tingkat 1 LAYANAN MANAJEMEN KEUANGAN', 'Indikator34aTingkat1LAYANANMANAJEMENKEUANGANpdf.pdf', 'adminspbe', '2021-08-23 01:44:00'),
(396, 207, 'Tingkat 2 Manual Valid ANGGARAN SIPKD', 'Indikator34bTingkat2ManualValidANGGARANSIPKDR6pdf.pdf', 'adminspbe', '2021-08-23 01:45:00');
INSERT INTO `tb_feedback` (`idfeedback`, `idpenilaian`, `ket_feedback`, `files_feedback`, `userid_created`, `date_created`) VALUES
(397, 207, 'Tingkat 2 Manual Valid DATA MASTER SIPKD', 'Indikator34cTingkat2ManualValidDATAMASTERSIPKDR6pdf.pdf', 'adminspbe', '2021-08-23 01:47:00'),
(398, 207, 'Tingkat 3 Manual Valid PENATA USAHAAN SIPKD', 'Indikator34dTingkat3ManualValidPENATAUSAHAANSIPKDR6pdf.pdf', 'adminspbe', '2021-08-23 01:48:00'),
(399, 207, 'Tingkat 3 Manual Valid PERTANGGUNG JAWABAN SIPKD', 'Indikator34eTingkat3ManualValidPERTANGGUNGJAWABANSIPKDR6pdf.pdf', 'adminspbe', '2021-08-23 01:49:00'),
(400, 208, 'Penjelasan Bukti Dukung SPBE Bagian BPBJ', 'Indikator35aPenjelasanBuktiDukungSPBEBagianBPBJpdf.pdf', 'adminspbe', '2021-08-23 01:51:00'),
(401, 208, 'Bukti dukung Level 1', 'Bukti dukung Level 1.jpg', 'adminspbe', '2021-08-23 01:51:00'),
(402, 208, 'Bukti dukung Level 2', 'Bukti dukung Level 2.jpg', 'adminspbe', '2021-08-23 01:52:00'),
(403, 208, 'Bukti dukung Level 3', 'Bukti dukung Level 3.jpg', 'adminspbe', '2021-08-23 01:52:00'),
(404, 208, 'Bukti dukung Level 4a', 'Bukti dukung Level 4a.jpg', 'adminspbe', '2021-08-23 01:52:00'),
(405, 208, 'Bukti dukung Level 4b', 'Bukti dukung Level 4b.jpg', 'adminspbe', '2021-08-23 01:53:00'),
(406, 208, 'Bukti dukung Level 5a', 'Bukti dukung Level 5a.jpg', 'adminspbe', '2021-08-23 01:53:00'),
(407, 208, 'Bukti dukung Level 5b', 'Bukti dukung Level 5b.jpg', 'adminspbe', '2021-08-23 01:53:00'),
(408, 209, 'Manual Book SIMAK DI HATI', 'Indikator36a-ManualBookSIMAKDIHATI.pdf', 'adminspbe', '2021-08-23 01:55:00'),
(409, 209, 'SK Penetapan SIMAK DI HATI', 'Indikator36b-SKPenetapanSIMAKDIHATI.pdf', 'adminspbe', '2021-08-23 01:56:00'),
(410, 209, 'SK Tim Efektif SIMAK DI HATI', 'Indikator36c-SKTimEfektifSIMAKDIHATI.pdf', 'adminspbe', '2021-08-23 01:57:00'),
(411, 209, 'SK Tim Integrasi SIMAK DI HATI', 'Indikator36d-SKTimIntegrasiSIMAK DIHATI.pdf', 'adminspbe', '2021-08-23 01:58:00'),
(412, 209, 'API', 'Indikator36f-API.pdf', 'adminspbe', '2021-08-23 01:58:00'),
(413, 209, 'Undangan Rapat', 'Indikator36g-Undangan Rapat.pdf', 'adminspbe', '2021-08-23 01:58:00'),
(414, 209, 'Notulen Rapat', 'Indikator36h-Notulen Rapat.pdf', 'adminspbe', '2021-08-23 01:59:00'),
(415, 210, 'Aplikasi Surat Menyurat dan Arsip', 'Indikator37AplikasiSuratMenyuratdanArsippdf.pdf', 'adminspbe', '2021-08-23 02:00:00'),
(416, 211, 'Tingkat 1 Screenshot Aplikasi SIMDA BMD', 'Indikator38aTingkat1ScreenshotAplikasiSIMDABMDpdf.pdf', 'adminspbe', '2021-08-23 02:01:00'),
(417, 211, 'Tingkat 2 dan Tingkat 3 Manual Aplikasi SIPKD', 'Indikator38bTingkat2danTingkat3ManualAplikasiSIPKDPerpdf.pdf', 'adminspbe', '2021-08-23 02:03:00'),
(418, 212, 'Aplikasi WBS', 'Indikator39bAplikasiWBSpdf.pdf', 'adminspbe', '2021-08-23 02:07:00'),
(419, 213, 'Penjelasan Level', 'Indikator40aPenjelasanLevelpdf.pdf', 'adminspbe', '2021-08-23 02:08:00'),
(420, 213, 'bukti dukung', 'Indikator40bbuktidukungpdf.pdf', 'adminspbe', '2021-08-23 02:09:00'),
(421, 214, 'MANUAL BOOK APLIKASI E-KINERJA', 'Indikator41a-MANUALBOOKAPLIKASI E-KINERJA.pdf', 'adminspbe', '2021-08-23 09:54:00'),
(422, 214, 'Screen shot Berjenjang Ekinerja', 'Indikator41c-ScreenshotBerjenjangEkinerja.pdf', 'adminspbe', '2021-08-23 09:56:00'),
(423, 214, 'PERWALI No 21 Tahun 2020 tentang TPP', 'Indikator41d-PERWALINo21Tahun2020tentangTPP.pdf', 'adminspbe', '2021-08-23 09:57:00'),
(424, 214, 'SK Tim TPP', 'Indikator41e-SKTimTPP.pdf', 'adminspbe', '2021-08-23 09:58:00'),
(425, 214, 'SURAT UNDANGAN RAPAT TPP BERBASIS KINERJA', 'Indikator41f-SURAT UNDANGAN RAPAT TPP BERBASIS KINERJA.pdf', 'adminspbe', '2021-08-23 09:58:00'),
(426, 214, 'NOTULEN RAPAT RENCANA TPP PEGAWAI', 'Indikator41g-NOTULEN RAPAT RENCANA TPP PEGAWAI.pdf', 'adminspbe', '2021-08-23 09:59:00'),
(427, 214, 'Foto Kegiatan Rapat', 'Indikator41h-Foto Kegiatan Rapat.pdf', 'adminspbe', '2021-08-23 09:59:00'),
(428, 215, 'SOP Pengaduan', 'Indikator42aSOPPengaduanpdf.pdf', 'adminspbe', '2021-08-23 10:00:00'),
(429, 215, 'SK Walikota Pembentukan Tim Pengelolaan Pengaduan', 'Indikator42bSKWalikotaPembentukanTimPengelolaanPengadupdf.pdf', 'adminspbe', '2021-08-23 10:01:00'),
(430, 215, 'Perwali Pengaduan', 'Indikator42cPerwaliPengaduanpdf.pdf', 'adminspbe', '2021-08-23 10:01:00'),
(431, 215, 'screen shot layanan pengaduan', 'Indikator42dscreenshotlayananpengaduanpdf.pdf', 'adminspbe', '2021-08-23 10:02:00'),
(432, 215, 'INTEGRASI BERBAGAI MEDIA PENGADUAN', 'Indikator42eINTEGRASIBERBAGAIMEDIAPENGADUANDANSP4NLAPpdf.pdf', 'adminspbe', '2021-08-23 10:13:00'),
(433, 215, 'LAPORAN PRO DENPASAR 2020', 'Indikator42fLAPORANPRODENPASAR2020pdf.pdf', 'adminspbe', '2021-08-23 10:13:00'),
(434, 215, 'LAPORAN PRO DENPASAR', 'Indikator42gLAPORANPRODENPASARtw1pdf.pdf', 'adminspbe', '2021-08-23 10:14:00'),
(435, 216, 'SOP Pengaduan', 'Indikator42aSOPPengaduanpdf.pdf', 'adminspbe', '2021-08-23 10:15:00'),
(436, 216, 'SK Walikota Pembentukan Tim Pengelolaan Pengaduan', 'Indikator42bSKWalikotaPembentukanTimPengelolaanPengadupdf.pdf', 'adminspbe', '2021-08-23 10:16:00'),
(437, 216, 'Perwali Pengaduan', 'Indikator42cPerwaliPengaduanpdf.pdf', 'adminspbe', '2021-08-23 10:16:00'),
(438, 216, 'screen shot layanan pengaduan', 'Indikator42dscreenshotlayananpengaduanpdf.pdf', 'adminspbe', '2021-08-23 10:17:00'),
(439, 216, 'INTEGRASI BERBAGAI MEDIA PENGADUAN', 'Indikator42eINTEGRASIBERBAGAIMEDIAPENGADUANDANSP4NLAPpdf.pdf', 'adminspbe', '2021-08-23 10:17:00'),
(440, 216, 'LAPORAN PRO DENPASAR 2020', 'Indikator42fLAPORANPRODENPASAR2020pdf.pdf', 'adminspbe', '2021-08-23 10:18:00'),
(441, 216, 'LAPORAN PRO DENPASAR', 'Indikator42gLAPORANPRODENPASARtw1pdf.pdf', 'adminspbe', '2021-08-23 10:18:00'),
(442, 217, 'SKP PID', 'Indikator43aSKPPIDpdf.pdf', 'adminspbe', '2021-08-23 10:19:00'),
(443, 217, 'Perwali PPID', 'Indikator43bPerwaliPPIDpdf.pdf', 'adminspbe', '2021-08-23 10:20:00'),
(444, 217, 'Website PPID', 'Indikator43cWebsitePPIDpdf.pdf', 'adminspbe', '2021-08-23 10:20:00'),
(445, 217, 'SOP Fasilitasi Sengketa Informasi Publik', 'Indikator43-SOP Fasilitasi Sengketa Informasi Publik.pdf', 'adminspbe', '2021-08-23 10:20:00'),
(446, 217, 'SOP Pelayanan Permohonan IP', 'Indikator43-SOP Pelayanan Permohonan IP.pdf', 'adminspbe', '2021-08-23 10:21:00'),
(447, 217, 'SOP Pengajuan Keberatan Informasi Publik', 'Indikator43-SOP Pengajuan Keberatan Informasi Publik.pdf', 'adminspbe', '2021-08-23 10:21:00'),
(448, 217, 'SOP Pengelolaan Website', 'Indikator43-SOP Pengelolaan Website.pdf', 'adminspbe', '2021-08-23 10:22:00'),
(449, 217, 'SOP Penyusunan Daftar informasi Publik', 'Indikator43-SOP Penyusunan Daftar informasi Publik.pdf', 'adminspbe', '2021-08-23 10:22:00'),
(450, 217, 'SOP PPID Utama dan PPID Pembantu', 'Indikator43-SOP PPID Utama dan PPID Pembantu.pdf', 'adminspbe', '2021-08-23 10:22:00'),
(451, 217, 'SOP uji Konsekuensi Informasi Publik', 'Indikator43-SOP uji Konsekuensi Informasi Publik.pdf', 'adminspbe', '2021-08-23 10:23:00'),
(452, 218, 'Form Login untuk Unduh', 'Form Login untuk Unduh.png', 'adminspbe', '2021-08-23 10:24:00'),
(453, 218, 'Tampilan Menu Unduh', 'Tampilan Menu Unduh.png', 'adminspbe', '2021-08-23 10:24:00'),
(454, 218, 'Dashboard', 'Dashboard.png', 'adminspbe', '2021-08-23 10:24:00'),
(455, 218, 'Dashbord Produk Hukum', 'Dashbord Produk Hukum.png', 'adminspbe', '2021-08-23 10:24:00'),
(456, 218, 'Form Unggah Tambah Peraturan', 'Form Unggah Tambah Peraturan.png', 'adminspbe', '2021-08-23 10:25:00'),
(457, 218, 'Login', 'Login.png', 'adminspbe', '2021-08-23 10:25:00'),
(458, 218, 'Beranda dan Fitur Pencarian JDIH', 'Beranda dan Fitur Pencarian JDIH.png', 'adminspbe', '2021-08-23 10:25:00'),
(459, 218, 'Fitur pilah berdasarkan Tie Produk Hukum', 'Fitur pilah berdasarkan Tie Produk Hukum.png', 'adminspbe', '2021-08-23 10:25:00'),
(460, 218, 'Hasil Pencarian', 'Hasil Pencarian.png', 'adminspbe', '2021-08-23 10:26:00'),
(461, 219, 'Proses Bisnis EBPHTB', 'Indikator45a-Proses Bisnis EBPHTB.pdf', 'adminspbe', '2021-08-23 10:27:00'),
(462, 219, 'Screenshot Aplikasi EBPHTB', 'Indikator45b-Screenshot Aplikasi EBPHTB.pdf', 'adminspbe', '2021-08-23 10:27:00'),
(463, 219, 'Regulasi Kebijakan', 'Indikator45c-Regulasi Kebijakan.pdf', 'adminspbe', '2021-08-23 10:27:00'),
(464, 219, 'Modul Penggunaan EBPHTB', 'Indikator45d-Modul Penggunaan EBPHTB.pdf', 'adminspbe', '2021-08-23 10:28:00'),
(465, 219, 'Dokumen API', 'Indikator45e-Dokumen API.pdf', 'adminspbe', '2021-08-23 10:28:00'),
(466, 219, 'Kolaborasi Integrasi BPHTB BPN', 'Indikator45f-Kolaborasi Integrasi BPHTB BPN.pdf', 'adminspbe', '2021-08-23 10:28:00'),
(467, 219, 'Contoh Rekap Laporan Integrasi', 'Indikator45g-Contoh Rekap Laporan Integrasi.pdf', 'adminspbe', '2021-08-23 10:29:00'),
(468, 219, 'PKS BAPENDA DG BPN 2018', 'Indikator45i-PKS BAPENDA DG BPN 2018.pdf', 'adminspbe', '2021-08-23 10:29:00'),
(469, 220, 'Buku Panduan SI Bursa Kerja dan AK 1 Disnaker', 'Indikator46aBukuPanduanSIBursaKerjadanAK1DisnakerDepdf.pdf', 'adminspbe', '2021-08-23 10:31:00'),
(470, 220, 'Buku Panduan Pengembangan Aplikasi Rekom Paspor', 'Indikator46bBukuPanduanPengembanganAplikasiRekomPasporpdf.pdf', 'adminspbe', '2021-08-23 10:31:00'),
(471, 220, 'Buku Panduan Aplikasi Bursa Kerja Khusus', 'Indikator46cBukuPanduanAplikasiBursaKerjaKhususpdf.pdf', 'adminspbe', '2021-08-23 10:32:00'),
(472, 220, 'Pembaharuan Sistem BKO Berbasis Mobile phone', 'Indikator46dPembaharuanSistemBKOBerbasisMobilephonepdf.pdf', 'adminspbe', '2021-08-23 10:32:00'),
(473, 220, 'Rapat Pemanfaatan Akses Data Kependudukan', 'Indikator46eRapatPemanfaatanAksesDataKependudukanpdf.pdf', 'adminspbe', '2021-08-23 10:33:00'),
(474, 220, 'Perjanjian Kerjasama Pemanfaatan NIK', 'Indikator46gPerjanjianKerjasamaPemanfaatanNIKpdf.pdf', 'adminspbe', '2021-08-23 10:43:00'),
(475, 221, 'Checklist Server Harian', 'Checklist Server Harian.jpg', 'adminspbe', '2021-08-23 10:44:00'),
(476, 221, 'Evaluasi implementasi OSS', 'Evaluasi implementasi OSS.pdf', 'adminspbe', '2021-08-23 10:44:00'),
(477, 221, 'JDIH DPMPTSP', 'JDIH DPMPTSP.jpg', 'adminspbe', '2021-08-23 10:45:00'),
(478, 221, 'OSS', 'OSS.jpg', 'adminspbe', '2021-08-23 10:45:00'),
(479, 221, 'Pengaduan DPMPTSP lewat Prodenpasar', 'Pengaduan DPMPTSP lewat Prodenpasar.jpg', 'adminspbe', '2021-08-23 10:45:00'),
(480, 221, 'Sicantik', 'Sicantik.jpg', 'adminspbe', '2021-08-23 10:45:00'),
(481, 221, 'SIMBG', 'SIMBG.jpg', 'adminspbe', '2021-08-23 10:46:00'),
(482, 221, 'SIMPANAS', 'SIMPANAS.jpg', 'adminspbe', '2021-08-23 10:46:00'),
(483, 221, 'SIMTTD', 'SIMTTD.jpg', 'adminspbe', '2021-08-23 10:46:00'),
(484, 221, 'SIPON', 'SIPON.jpg', 'adminspbe', '2021-08-23 10:47:00'),
(485, 221, 'SK SPBE', 'SK SPBE.pdf', 'adminspbe', '2021-08-23 10:47:00'),
(486, 166, 'Indikator1f-Perwali_SPBE_No_28_Tahun_2021_(Pasal_8).pdf', 'Indikator1fPerwaliSPBENo28Tahun2021Pasal8pdf.pdf', 'adminspbe', '2021-09-27 15:14:00'),
(487, 167, 'Indikator2f-Perwali_SPBE_No_28_Tahun_2021_(Pasal_9).pdf', 'Indikator2fPerwaliSPBENo28Tahun2021Pasal9pdf.pdf', 'adminspbe', '2021-09-27 15:15:00'),
(488, 168, 'Indikator3f-Perwali_SPBE_No_28_Tahun_2021_(Pasal_25).pdf', 'Indikator3fPerwaliSPBENo28Tahun2021Pasal25pdf.pdf', 'adminspbe', '2021-09-27 15:17:00'),
(489, 168, 'Indikator3g-Perwali_Kota_Denpasar_No_73_Th_2019_Satu_Data.pdf', 'Indikator3gPerwaliKotaDenpasarNo73Th2019SatuDatapdf.pdf', 'adminspbe', '2021-09-27 15:17:00'),
(490, 169, 'Indikator4g-Surat_Konsultasi_Aplikasi.pdf', 'Indikator4gSuratKonsultasiAplikasipdf.pdf', 'adminspbe', '2021-09-27 15:19:00'),
(491, 169, 'Indikator4f-Perwali_SPBE_No_28_Tahun_2021_(Bagian_Keenam).pdf', 'Indikator4fPerwaliSPBENo28Tahun2021BagianKeenampdf.pdf', 'adminspbe', '2021-09-27 15:19:00'),
(492, 170, 'Indikator5f-Perwali_SPBE_No_28_Tahun_2021_(Pasal_14).pdf', 'Indikator5fPerwaliSPBENo28Tahun2021Pasal14pdf.pdf', 'adminspbe', '2021-09-27 15:20:00'),
(493, 170, 'Indikator5g-SOP_Layanan_Data_Center.pdf', 'Indikator5gSOPLayananDataCenterpdf.pdf', 'adminspbe', '2021-09-27 15:21:00'),
(494, 171, 'indikator6f-Perwali_SPBE_No_28_Tahun_2021-(Pasal_17).pdf', 'indikator6fPerwaliSPBENo28Tahun2021Pasal17pdf.pdf', 'adminspbe', '2021-09-27 15:22:00'),
(495, 172, 'Indikator7f-Perwali_SPBE_No_28_Tahun_2021_(Pasal_19).pdf', 'Indikator7fPerwaliSPBENo28Tahun2021Pasal19pdf.pdf', 'adminspbe', '2021-09-27 15:24:00'),
(496, 173, 'Indikator8f-Perwali_SPBE_No_28_Tahun_2021_(Pasal_23-24).pdf', 'Indikator8fPerwaliSPBENo28Tahun2021Pasal2324pdf.pdf', 'adminspbe', '2021-09-27 15:25:00'),
(497, 173, 'Indikator8g-Perwali_Pemanfaatan_Sertifikat_Elektronik_29_201.pdf', 'Indikator8gPerwaliPemanfaatanSertifikatElektronik29201pdf.pdf', 'adminspbe', '2021-09-27 15:26:00'),
(498, 174, 'Indikator9g-Perwali_SPBE_No_28_Tahun_2021_(Pasal_32).pdf', 'Indikator9gPerwaliSPBENo28Tahun2021Pasal32pdf.pdf', 'adminspbe', '2021-09-27 15:27:00'),
(499, 174, 'Indikator9h-SK_Tentang_Pembentukan_Tim_Asesor_Internal_dan_T.pdf\r\n', 'Indikator9hSKTentangPembentukanTimAsesorInternaldanTpdf.pdf', 'adminspbe', '2021-09-27 15:28:00'),
(500, 175, 'Indikator10e-Perwali_SPBE_No_28_Tahun_2021_(Pasal20).pdf', 'Indikator10ePerwaliSPBENo28Tahun2021Pasal20pdf.pdf', 'adminspbe', '2021-09-27 15:29:00'),
(501, 175, 'Indikator10f-SK_Tentang_Pembentukan_Tim_Asesor_Internal_dan_.pdf', 'Indikator10fSKTentangPembentukanTimAsesorInternaldanpdf.pdf', 'adminspbe', '2021-09-27 15:30:00'),
(502, 176, 'Indikator11d-Surat_Permohonan_Pendampingan_Penyusunan.pdf ', 'Indikator11dSuratPermohonanPendampinganPenyusunanpdf.pdf', 'adminspbe', '2021-09-30 09:30:00'),
(503, 177, 'Indikator12d-Surat_Permohonan_Pendampingan_Penyusunan.pdf', 'Indikator12dSuratPermohonanPendampinganPenyusunanpdf.pdf', 'adminspbe', '2021-09-30 09:34:00'),
(504, 179, 'Indikator13c-Bukti_dukung_indikator.pdf', 'Indikator13cBuktidukungindikatorpdf.pdf', 'adminspbe', '2021-09-30 09:36:00'),
(505, 179, 'Indikator13d-Bukti_dukung_indikator.pdf', 'Indikator13dBuktidukungindikatorpdf.pdf', 'adminspbe', '2021-09-30 09:37:00'),
(506, 179, 'Indikator13e-Penjelasan_Bukti_Dukung.pdf', 'Indikator13ePenjelasanBuktiDukungpdf.pdf', 'adminspbe', '2021-09-30 09:38:00'),
(507, 179, 'Indikator13f-Perwali_SPBE_No_28_Tahun_2021_(Pasal_10).pdf', 'Indikator13fPerwaliSPBENo28Tahun2021Pasal10pdf.pdf', 'adminspbe', '2021-09-30 09:39:00'),
(508, 179, 'Indikator13g-Surat_Konsultasi_Aplikasi.pdf', 'Indikator13gSuratKonsultasiAplikasipdf.pdf', 'adminspbe', '2021-09-30 09:40:00'),
(509, 180, 'Indikator14d-CATATAN_SPBE_INDIKATOR_14.pdf', 'Indikator14dCATATANSPBEINDIKATOR14pdf.pdf', 'adminspbe', '2021-09-30 09:41:00'),
(510, 180, 'Indikator14e-Laporan_Hasil_Sosialisasi_Pelayanan_Publik_tahu.pdf', 'Indikator14eLaporanHasilSosialisasiPelayananPubliktahupdf.pdf', 'adminspbe', '2021-09-30 09:41:00'),
(511, 180, 'Indikator14f-SK_Peta_Proses_Bisnis_Kota_Dps.pdf', 'Indikator14fSKPetaProsesBisnisKotaDpspdf.pdf', 'adminspbe', '2021-09-30 09:42:00'),
(512, 180, 'Indikator14g-Surat_Evaluasi_Probis_dan_SOP.pdf', 'Indikator14gSuratEvaluasiProbisdanSOPpdf.pdf', 'adminspbe', '2021-09-30 09:42:00'),
(513, 184, 'Indikator15f-Perwali_SPBE_No_28_Tahun_2021_(Bagian_Keenam).pdf', 'Indikator15fPerwaliSPBENo28Tahun2021BagianKeenampdf.pdf', 'adminspbe', '2021-09-30 09:44:00'),
(514, 184, 'Indikator15g-SPEK_SOFTWARE.pdf', 'Indikator15gSPEKSOFTWAREpdf.pdf', 'adminspbe', '2021-09-30 09:44:00'),
(515, 184, 'Indikator15h-Surat_Konsultasi_Aplikasi.pdf', 'Indikator15hSuratKonsultasiAplikasipdf.pdf', 'adminspbe', '2021-09-30 09:45:00'),
(516, 185, 'Indikator16f-Salah_Satu_Permohonan_Hosting_Domain.pdf', 'Indikator16fSalahSatuPermohonanHostingDomainpdf.pdf', 'adminspbe', '2021-09-30 09:53:00'),
(517, 186, 'Indikator17d-Laporan_Tindaklanjut_Evaluasi_Jaringan.pdf', 'Indikator17dLaporanTindaklanjutEvaluasiJaringanpdf.pdf', 'adminspbe', '2021-09-30 09:56:00'),
(518, 186, 'Indikator17e-Laporan_Monitoring_Evaluasi_Infrastruktur_Jarin.pdf', 'Indikator17eLaporanMonitoringEvaluasiInfrastrukturJarinpdf.pdf', 'adminspbe', '2021-09-30 10:01:00'),
(519, 188, 'Indikator19d-Perwali_SPBE_No_28_Tahun_2021_(Pasal20).pdf', 'Indikator19dPerwaliSPBENo28Tahun2021Pasal20pdf.pdf', 'adminspbe', '2021-09-30 10:03:00'),
(520, 188, 'Indikator19e-SK_Tentang_Pembentukan_Tim_Asesor_Internal_dan_.pdf', 'Indikator19eSKTentangPembentukanTimAsesorInternaldanpdf.pdf', 'adminspbe', '2021-09-30 10:07:00'),
(521, 188, 'Indikator19f-Hasil_Evaluasi_Mandiri_Asesor_Internal_SPBE_201.pdf', 'Indikator19fHasilEvaluasiMandiriAsesorInternalSPBE201pdf.pdf', 'adminspbe', '2021-09-30 10:08:00'),
(522, 188, 'Indikator19g-Hasil_Evaluasi_SPBE_2019.pdf', 'Indikator19gHasilEvaluasiSPBE2019pdf.pdf', 'adminspbe', '2021-09-30 10:08:00'),
(523, 188, 'Indikator19h-Evaluasi_Mandiri_Asesor_Internal_SPBE_2021.pdf', 'Indikator19hEvaluasiMandiriAsesorInternalSPBE2021pdf.pdf', 'adminspbe', '2021-09-30 10:09:00'),
(524, 188, 'Indikator19i-Salah_satu_kegiatan_evaluasi_SPBE_2020.pdf', 'Indikator19iSalahsatukegiatanevaluasiSPBE2020pdf.pdf', 'adminspbe', '2021-09-30 10:10:00'),
(525, 188, 'Indikator19j-Notulen_Rapat_Persiapan_Interviu_SPBE_2021.pdf', 'Indikator19jNotulenRapatPersiapanInterviuSPBE2021pdf.pdf', 'adminspbe', '2021-09-30 10:11:00'),
(526, 189, 'Indikator20e-Tindaklanjut_Pengembangan_Aplikasi_eSewaka.pdf', 'Indikator20eTindaklanjutPengembanganAplikasieSewakapdf.pdf', 'adminspbe', '2021-09-30 10:11:00'),
(527, 189, 'Indikator20f-Buku_Panduan_Pengembangan_Aplikasi_eSewaka.pdf', 'Indikator20fBukuPanduanPengembanganAplikasieSewakapdf.pdf', 'adminspbe', '2021-09-30 10:14:00'),
(528, 193, 'Indikator23e-Review_dan_Tindak_lanjut_pengembangan_sistem_Ba.pdf', 'Indikator23eReviewdanTindaklanjutpengembangansistemBapdf.pdf', 'adminspbe', '2021-09-30 10:35:00'),
(529, 198, 'Indikator28-Penjelasan_Data_Dukung_Tambahan_Indikator_28.pdf', 'Indikator28PenjelasanDataDukungTambahanIndikator28pdf.pdf', 'adminspbe', '2021-09-30 10:44:00'),
(530, 199, 'Indikator29e-SK_Tentang_Pembentukan_Tim_Audit_Internal.pdf', 'Indikator29eSKTentangPembentukanTimAuditInternalpdf.pdf', 'adminspbe', '2021-09-30 10:57:00'),
(531, 201, 'Indikator30f-SK_Tentang_Pembentukan_Tim_Audit_Internal.pdf', 'Indikator30fSKTentangPembentukanTimAuditInternalpdf.pdf', 'adminspbe', '2021-09-30 10:59:00'),
(532, 203, 'Indikator31e-SK_Tentang_Pembentukan_Tim_Audit_Internal.pdf', 'Indikator31eSKTentangPembentukanTimAuditInternalpdf.pdf', 'adminspbe', '2021-09-30 12:46:00'),
(533, 205, 'Indikator_32c-SIPD.pdf', 'Indikator32cSIPDpdf.pdf', 'adminspbe', '2021-09-30 12:47:00'),
(534, 208, 'Indikator35c-Bukti_dukung_Level_5.pdf', 'Indikator35cBuktidukungLevel5pdf.pdf', 'adminspbe', '2021-09-30 12:48:00'),
(535, 209, 'Indikator36b-Evaluasi_dan_KAK_Simpeg.pdf', 'Indikator36bEvaluasidanKAKSimpegpdf.pdf', 'adminspbe', '2021-09-30 12:54:00'),
(536, 209, 'Indikator36c-Laporan_Perubahan_Simpeg.pdf', 'Indikator36cLaporanPerubahanSimpegpdf.pdf', 'adminspbe', '2021-09-30 12:59:00'),
(537, 210, 'Indikator37b-Notulen_Rapat_Aplikasi_Pengelolaan_Surat.pdf', 'Indikator37bNotulenRapatAplikasiPengelolaanSuratpdf.pdf', 'adminspbe', '2021-09-30 13:09:00'),
(538, 213, 'Indikator_40c-eSAKIP.pdf', 'Indikator40ceSAKIPpdf.pdf', 'adminspbe', '2021-09-30 13:14:00'),
(539, 215, 'Indikator42h-SURAT_PERMOHONAN_INTEGRASI_SP4N_LAPOR.pdf', 'Indikator42hSURATPERMOHONANINTEGRASISP4NLAPORpdf.pdf', 'adminspbe', '2021-09-30 13:20:00'),
(540, 220, 'Indikator46h-Penjelasan_Data_Dukung_Tambahan.pdf', 'Indikator46hPenjelasanDataDukungTambahanpdf.pdf', 'adminspbe', '2021-09-30 13:22:00'),
(541, 220, 'Indikator46i-Hasil_evaluasi_berupa_ISO_9001_Tahun_2020.pdf', 'Indikator46iHasilevaluasiberupaISO9001Tahun2020pdf.pdf', 'adminspbe', '2021-09-30 13:22:00'),
(542, 220, 'Indikator46j-Surat_audit_2021_menunggu_hasil_ISO_2021.pdf', 'Indikator46jSurataudit2021menungguhasilISO2021pdf.pdf', 'adminspbe', '2021-09-30 13:23:00'),
(543, 223, 'Indikator47-Reviu_dan_Tindaklanjut_Aplikasi_Pusat.pdf', 'Indikator47ReviudanTindaklanjutAplikasiPusatpdf.pdf', 'adminspbe', '2021-09-30 13:24:00'),
(544, 214, 'Indikator41-Tindaklanjut_Pengembangan_Integrasi.pdf', 'Indikator41TindaklanjutPengembanganIntegrasipdf.pdf', 'adminspbe', '2021-09-30 13:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_groupuser`
--

CREATE TABLE `tb_groupuser` (
  `id_groupuser` int(11) NOT NULL,
  `nama_groupuser` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_groupuser`
--

INSERT INTO `tb_groupuser` (`id_groupuser`, `nama_groupuser`, `keterangan`) VALUES
(1, 'sadmin', 'Super Admin'),
(2, 'adminopd', 'Administrator OPD'),
(3, 'operator', 'Operator'),
(4, 'eksekutifopd', 'Eksekutif OPD');

-- --------------------------------------------------------

--
-- Table structure for table `tb_inbis`
--

CREATE TABLE `tb_inbis` (
  `id_inbis` int(11) NOT NULL,
  `nama_inbis` text NOT NULL,
  `ket_inbis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_inbis`
--

INSERT INTO `tb_inbis` (`id_inbis`, `nama_inbis`, `ket_inbis`) VALUES
(1, 'BCIC', 'Bali Creative Industry Center'),
(2, 'Inbis Primakara', 'STIMIK Primakara'),
(3, 'Inbis Stiki', 'STMIK Sekolah Tinggi Ilmu Komputer INDONESIA (STIKI)'),
(4, 'Inbis Stikom Bali', 'Institut Teknologi Dan Bisnis STIKOM Bali');

-- --------------------------------------------------------

--
-- Table structure for table `tb_indeks`
--

CREATE TABLE `tb_indeks` (
  `id_indeks` int(11) NOT NULL,
  `nama_indeks` varchar(100) NOT NULL,
  `urutan_indeks` int(11) NOT NULL,
  `user_katindex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_indeks`
--

INSERT INTO `tb_indeks` (`id_indeks`, `nama_indeks`, `urutan_indeks`, `user_katindex`) VALUES
(1, 'SPBE', 1, 1),
(2, 'IKCI', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_indeks_nilai`
--

CREATE TABLE `tb_indeks_nilai` (
  `id_indeks_nilai` int(11) NOT NULL,
  `indeks` int(11) NOT NULL,
  `nilai_indeks` decimal(10,2) NOT NULL,
  `tahun_indeks` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_indeks_nilai`
--

INSERT INTO `tb_indeks_nilai` (`id_indeks_nilai`, `indeks`, `nilai_indeks`, `tahun_indeks`) VALUES
(1, 1, '2.64', '2018'),
(2, 2, '61.70', '2018'),
(3, 1, '3.33', '2019'),
(4, 1, '0.00', '2021');

-- --------------------------------------------------------

--
-- Table structure for table `tb_indikator`
--

CREATE TABLE `tb_indikator` (
  `idindikator` int(11) NOT NULL,
  `idaspek` int(11) NOT NULL,
  `namaindikator` varchar(100) NOT NULL,
  `indikator` varchar(11) NOT NULL,
  `penjelasanindikator` int(11) DEFAULT NULL,
  `bobot_indikator` decimal(10,1) NOT NULL,
  `tahun_indikator` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_indikator`
--

INSERT INTO `tb_indikator` (`idindikator`, `idaspek`, `namaindikator`, `indikator`, `penjelasanindikator`, `bobot_indikator`, `tahun_indikator`) VALUES
(1, 1, 'Kebijakan Internal Tim Pengarah SPBE Instansi Pemerintah', '1', 1, '1.0', '2018'),
(2, 1, 'Kebijakan Internal Inovasi Proses Bisnis Terintegrasi', '2', 1, '1.0', '2018'),
(3, 1, 'Kebijakan Internal Rencana Induk SPBE Instansi Pemerintah', '3', 1, '1.0', '2018'),
(4, 1, 'Kebijakan Internal Anggaran dan Belanja TIK', '4', 1, '1.0', '2018'),
(5, 1, 'Kebijakan Internal Pengoperasian Pusat Data', '5', 1, '1.0', '2018'),
(6, 1, 'Kebijakan Internal Integrasi Sistem Aplikasi', '6', 1, '1.0', '2018'),
(7, 1, 'Kebijakan Internal Penggunaan Aplikasi Umum Berbagi Pakai', '7', 1, '1.0', '2018'),
(8, 2, 'Kebijakan Internal Layanan Naskah Dinas', '8', 1, '1.0', '2018'),
(9, 2, 'Kebijakan Internal Layanan Manajemen Kepegawaian', '9', 1, '1.0', '2018'),
(10, 2, 'Kebijakan Internal Layanan Manajemen Perencanaaan dan Penganggaran', '10', 1, '1.0', '2018'),
(11, 2, 'Kebijakan Internal Layanan Manajemen Keuangan', '11', 1, '1.0', '2018'),
(12, 2, 'Kebijakan Internal Layanan Manajemen Kinerja', '12', 1, '1.0', '2018'),
(13, 2, 'Kebijakan Internal Layanan Pengadaan', '13', 1, '1.0', '2018'),
(14, 2, 'Kebijakan Internal Layanan Pengaduan Publik', '14', 1, '1.0', '2018'),
(15, 2, 'Kebijakan Internal Layanan Dokumentasi dan Informasi Hukum', '15', 1, '1.0', '2018'),
(16, 2, 'Kebijakan Internal Layanan Whistle Blowing System (WBS)', '16', 1, '1.0', '2018'),
(17, 2, 'Kebijakan Internal Layanan publik Instansi Pemerintah', '17', 1, '1.0', '2018'),
(18, 3, 'Tim Pengarah SPBE Instansi Pemerintah', '18', 1, '4.0', '2018'),
(19, 3, 'Inovasi Proses Bisnis Terintegrasi', '19', 1, '4.0', '2018'),
(20, 4, 'Rencana  Induk   SPBE   Instansi Pemerintah', '20', 1, '4.0', '2018'),
(21, 4, 'Anggaran dan Belanja TIK', '21', 1, '4.0', '2018'),
(22, 5, 'Pengoperasian Pusat Data', '22', 1, '4.0', '2018'),
(23, 5, 'Integrasi Sistem Aplikasi', '23', 1, '4.0', '2018'),
(24, 5, 'Penggunaan Aplikasi Umum Berbagi Pakai', '24', 1, '4.0', '2018'),
(25, 6, 'Layanan Naskah Dinas', '25', 1, '5.0', '2018'),
(26, 6, 'Layanan Manajemen Kepegawaian', '26', 1, '5.0', '2018'),
(27, 6, 'Layanan Manajemen Perencanaan', '27', 1, '5.0', '2018'),
(28, 6, 'Layanan Manajemen Penganggaran', '28', 1, '5.0', '2018'),
(29, 6, 'Layanan Manajemen Keuangan', '29', 1, '5.0', '2018'),
(30, 6, 'Layanan Manajemen Kinerja', '30', 1, '5.0', '2018'),
(31, 6, 'Layanan Pengadaan', '31', 1, '5.0', '2018'),
(32, 7, 'Layanan Pengaduan Publik', '32', 1, '3.3', '2018'),
(33, 7, 'Layanan Dokumentasi dan Informasi Hukum', '33', 1, '3.3', '2018'),
(34, 7, 'Layanan Whistle-Blowing System', '34', 1, '3.3', '2018'),
(35, 7, 'Layanan Publik Instansi Pemerintah', '35', 1, '3.3', '2018'),
(36, 7, 'Layanan Publik Instansi Pemerintah', '35-2', 1, '3.3', '2018'),
(37, 7, 'Layanan Publik Instansi Pemerintah', '35-3', 1, '3.3', '2018'),
(40, 1, 'Kebijakan Internal Arsitektur SPBE Instansi Pusat/Pemerintah Daerah', '1', 1, '1.0', '2021'),
(41, 1, 'Kebijakan Internal Peta Rencana SPBE Instansi Pusat/Pemerintah Daerah', '2', 1, '1.0', '2021'),
(42, 1, 'Kebijakan Internal Manajemen Data', '3', 1, '1.0', '2021'),
(43, 1, 'Kebijakan Internal Pembangunan Aplikasi SPBE', '4', 1, '1.0', '2021'),
(44, 1, 'Kebijakan Internal Layanan Pusat Data', '5', 1, '1.0', '2021'),
(45, 1, 'Kebijakan Internal Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah', '6', 1, '1.0', '2021'),
(46, 1, 'Kebijakan Internal Penggunaan Sistem Penghubung Layanan Instansi Pusat/Pemerintah Daerah', '7', 1, '1.0', '2021'),
(47, 1, 'Kebijakan Internal Manajemen Keamanan Informasi', '8', 1, '1.0', '2021'),
(48, 1, 'Kebijakan Internal Audit TIK', '9', 1, '1.0', '2021'),
(49, 1, 'Kebijakan Internal Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah', '10', 1, '1.0', '2021'),
(50, 2, 'Arsitektur SPBE Instansi Pusat/Pemerintah Daerah', '11', 1, '1.0', '2021'),
(51, 2, 'Peta Rencana SPBE Instansi Pusat/Pemerintah Daerah', '12', 1, '1.0', '2021'),
(52, 2, 'Rencana dan Anggaran SPBE', '13', 1, '1.0', '2021'),
(53, 2, 'Inovasi Proses Bisnis SPBE', '14', 1, '1.0', '2021'),
(54, 3, 'Pembangunan Aplikasi SPBE', '15', 1, '1.0', '2021'),
(55, 3, 'Layanan Pusat Data', '16', 1, '1.0', '2021'),
(56, 3, 'Layanan Jaringan Intra Instansi Pusat/Pemerintah Daerah', '17', 1, '1.0', '2021'),
(58, 4, 'Tim Koordinasi SPBE Instansi Pusat/Pemerintah Daerah', '19', 1, '1.0', '2021'),
(59, 4, 'Kolaborasi Penerapan SPBE', '20', 1, '1.0', '2021'),
(60, 5, 'Penerapan Manajemen Risiko SPBE', '21', 1, '1.0', '2021'),
(61, 5, 'Penerapan Manajemen Keamanan Informasi', '22', 1, '1.0', '2021'),
(62, 5, 'Penerapan Manajemen Data', '23', 1, '1.0', '2021'),
(63, 5, 'Penerapan Manajemen Aset TIK', '24', 1, '1.0', '2021'),
(64, 5, 'Penerapan Kompetensi Sumber Daya Manusia', '25', 1, '1.0', '2021'),
(65, 5, 'Penerapan Manajemen Pengetahuan', '26', 1, '1.0', '2021'),
(66, 5, 'Penerapan Manajemen Perubahan', '27', 1, '1.0', '2021'),
(67, 5, 'Penerapan Manajemen Layanan SPBE', '28', 1, '1.0', '2021'),
(68, 27, 'Pelaksanaan Audit Infrastruktur SPBE', '29', 1, '1.0', '2021'),
(69, 27, 'Pelaksanaan Audit Aplikasi SPBE', '30', 1, '1.0', '2021'),
(70, 27, 'Pelaksanaan Audit Keamanan SPBE', '31', 1, '1.0', '2021'),
(71, 28, 'Layanan Perencanaan', '32', 1, '1.0', '2021'),
(72, 28, 'Layanan Penganggaran', '33', 1, '1.0', '2021'),
(73, 28, 'Layanan Keuangan', '34', 1, '1.0', '2021'),
(74, 28, 'Layanan Pengadaan Barang dan Jasa', '35', 1, '1.0', '2021'),
(75, 28, 'Layanan Kepegawaian', '36', 1, '1.0', '2021'),
(76, 28, 'Layanan Kearsipan Dinamis', '37', 1, '1.0', '2021'),
(77, 28, 'Layanan Pengelolaan Barang Milik Negara / Daerah', '38', 1, '1.0', '2021'),
(78, 28, 'Layanan Pengawasan Internal Pemerintah', '39', 1, '1.0', '2021'),
(79, 28, 'Layanan Akuntabilitas Kinerja Organisasi', '40', 1, '1.0', '2021'),
(80, 28, 'Layanan Kinerja Pegawai', '41', 1, '1.0', '2021'),
(81, 29, 'Layanan Pengaduan Pelayanan Publik', '42', 1, '1.0', '2021'),
(82, 29, 'Layanan Data Terbuka', '43', 1, '1.0', '2021'),
(83, 29, 'Layanan Jaringan Dokumentasi dan Informasi Hukum (JDIH)', '44', 1, '1.0', '2021'),
(84, 29, 'Layanan Publik Sektor 1', '45', 1, '1.0', '2021'),
(85, 29, 'Layanan Publik Sektor 2', '46', 1, '1.0', '2021'),
(86, 29, 'Layanan Publik Sektor 3', '47', 1, '1.0', '2021'),
(87, 3, 'Penggunaan Sistem Penghubung Layanan Instansi Pusat/Pemerintah Daerah', '18', 1, '1.0', '2021');

-- --------------------------------------------------------

--
-- Table structure for table `tb_level`
--

CREATE TABLE `tb_level` (
  `idlevel` int(11) NOT NULL,
  `idpertanyaan` int(11) NOT NULL,
  `namalevel` varchar(100) NOT NULL,
  `nilaimadiri` int(11) NOT NULL,
  `penjelasan_level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_level`
--

INSERT INTO `tb_level` (`idlevel`, `idpertanyaan`, `namalevel`, `nilaimadiri`, `penjelasan_level`) VALUES
(1, 1, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait Tim Pengarah SPBE.		\r\n'),
(2, 1, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait Tim Pengarah SPBE.		\r\n'),
(3, 1, 'level 2', 2, 'Kebijakan internal telah ditetapkan dan mencakup pengaturan tugas-tugas Tim Pengarah SPBE yang mendukung penerapan SPBE  pada sebagian unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.		\r\n'),
(4, 1, 'level 3', 3, 'Kebijakan internal mencakup pengaturan tugas-tugas Tim Pengarah SPBE yang mendukung penerapan SPBE pada semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.		\r\n'),
(5, 1, 'level 4', 4, 'Kebijakan internal mencakup pengaturan tugas-tugas Tim Pengarah SPBE yang mendukung penerapan SPBE antar Instansi Pusat, antar Pemerintah Daerah, atau antar Instansi Pusat dan Pemerintah Daerah.		'),
(6, 1, 'level 5', 5, 'Kebijakan internal dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan instansi.		'),
(7, 2, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait standardisasi proses bisnis.		\r\n'),
(8, 2, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait standardisasi penyusunan proses bisnis.		\r\n\r\n'),
(9, 2, 'level 2', 2, 'Kebijakan internal telah ditetapkan dan mendukung standardisasi penyusunan proses bisnis.		'),
(10, 2, 'level 3', 3, 'Kebijakan internal telah mendukung integrasi proses bisnis di dalam Instansi Pusat/Pemerintah Daerah Saudara.		'),
(11, 2, 'level 4', 4, 'Kebijakan telah mendukung integrasi proses bisnis antar Instansi Pusat, antar Pemerintah Daerah, dan/atau antar Instansi Pusat dan Pemerintah Daerah.		'),
(12, 2, 'level 5', 5, 'Kebijakan internal dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan instansi.		\r\n'),
(13, 3, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait rencana induk SPBE. 		\r\n\r\n'),
(14, 3, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait rencana induk SPBE.		\r\n'),
(15, 3, 'level 2', 2, 'Kebijakan internal telah ditetapkan dan mendukung pengaturan rencana induk SPBE  yang mencakup hanya sebagian dari muatan rencana induk SPBE yaitu visi dan misi SPBE, arsitektur SPBE, atau peta jalan SPBE.		'),
(16, 3, 'level 3', 3, 'Kebijakan internal telah mendukung pengaturan rencana induk SPBE yang mencakup seluruh  muatan rencana induk SPBE yaitu visi dan misi SPBE, arsitektur SPBE, dan peta jalan SPBE.		\r\n\r\n'),
(17, 3, 'level 4', 4, 'Kebijakan internal telah mendukung pengaturan rencana induk SPBE yang mencakup integrasi SPBE antar Instansi Pusat, antar Pemerintah Daerah, dan/atau antar Instansi Pusat dan Pemerintah Daerah.		\r\n'),
(18, 3, 'level 5', 5, 'Kebijakan internal dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan Instansi Pusat/Pemerintah Daerah.	\r\n'),
(19, 4, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait perencanaan dan penganggaran TIK di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(20, 4, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait perencanaan dan penganggaran TIK di Instansi Pusat/Pemerintah Daerah Saudara.	\r\n\r\n'),
(21, 4, 'level 2', 2, 'Kebijakan internal telah ditetapkan dan mendukung pengaturan perencanaan dan penganggaran TIK  yang menyelaraskan dengan sebagian muatan dari rencana induk SPBE.		\r\n'),
(22, 4, 'level 3', 3, 'Kebijakan internal telah mendukung pengaturan perencanaan dan penganggaran TIK yang menyelaraskan dengan seluruh muatan dari rencana induk SPBE.		\r\n'),
(23, 4, 'level 4', 4, 'Kebijakan internal telah mendukung pengaturan perencanaan dan penganggaran TIK yang mencakup integrasi SPBE antar Instansi Pusat, antar Pemerintah Daerah, dan/atau antar Instansi Pusat dan Pemerintah Daerah.		\r\n'),
(24, 4, 'level 5', 5, 'Kebijakan internal dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan Instansi Pusat/Pemerintah Daerah.		\r\n'),
(25, 5, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait pengoperasian pusat data di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n\r\n'),
(26, 5, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait pengoperasian pusat data di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(27, 5, 'level 2', 2, 'Kebijakan internal telah ditetapkan dan mendukung pengaturan pengoperasian pusat data bagi sebagian unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(28, 5, 'level 3', 3, 'Kebijakan internal mendukung pengaturan pengoperasian pusat data bagi semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n\r\n'),
(29, 5, 'level 4', 4, 'Kebijakan  internal mendukung pengaturan pengoperasian pusat data untuk melaksanakan  integrasi  pusat  data dengan pusat data milik Instansi Pusat/Pemerintah Daerah lain atau  untuk rencana  transisi penggunaan pusat data nasional.		\r\n\r\n'),
(30, 5, 'level 5', 5, 'Kebijakan internal dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan instansi.	\r\n'),
(31, 6, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait integrasi sistem aplikasi.	\r\n'),
(32, 6, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait integrasi sistem aplikasi.		\r\n'),
(33, 6, 'level 2', 2, 'Kebijakan internal telah ditetapkan dan mendukung pengaturan integrasi sistem aplikasi pada sebagian sistem aplikasi di Instansi Pusat/ Pemerintah Daerah Saudara.	'),
(34, 6, 'level 3', 3, 'Kebijakan internal mendukung pengaturan integrasi sistem aplikasi pada semua sistem aplikasi di Instansi Pusat/Pemerintah Daerah Saudara.		'),
(35, 6, 'level 4', 4, 'Kebijakan internal mendukung pengaturan integrasi sistem aplikasi antar Instansi Pusat, antar Pemerintah Daerah, dan/atau antar Instansi Pusat dan Pemerintah Daerah.		'),
(36, 6, 'level 5', 5, 'Kebijakan dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan instansi.		\r\n'),
(37, 7, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait penggunaan aplikasi umum berbagi pakai.		\r\n'),
(38, 7, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait penggunaan aplikasi umum berbagi pakai.		\r\n'),
(39, 7, 'level 2', 2, 'Kebijakan internal telah ditetapkan dan mendukung pengaturan penggunaan aplikasi umum berbagi pakai pada aplikasi umum berbagi pakai.	\r\n'),
(40, 7, 'level 3', 3, 'Kebijakan internal mendukung pengaturan penggunaan aplikasi umum berbagi pakai pada semua aplikasi umum berbagi pakai.	\r\n'),
(41, 7, 'level 4', 4, 'Kebijakan internal mendukung pengaturan penggunaan aplikasi umum berbagi pakai yang dapat diintegrasikan dengan sistem aplikasi di Instansi Pusat/Pemerintah Daerah Saudara.		'),
(42, 7, 'level 5', 5, 'Kebijakan dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan instansi.		\r\n'),
(43, 8, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait sistem naskah dinas elektronik.		\r\n'),
(44, 8, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait sistem naskah dinas elektronik.		\r\n\r\n'),
(45, 8, 'level 2', 2, 'Kebijakan internal telah ditetapkan dan mendukung pengaturan sistem naskah dinas elektronik pada sebagian kebutuhan Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(46, 8, 'level 3', 3, 'Kebijakan internal mendukung pengaturan seluruh kebutuhan dari sistem naskah dinas elektronik di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n\r\n'),
(47, 8, 'level 4', 4, 'Kebijakan internal mendukung kebutuhan integrasi sistem naskah dinas elektronik dengan sistem naskah dinas elektronik sejenis atau sistem aplikasi lain di dalam Instansi Pusat/Pemerintah Daerah Saudara ataupun antar Instansi Pusat/Pemerintah Daerah.		\r\n'),
(48, 8, 'level 5', 5, 'Kebijakan dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan instansi.		\r\n'),
(49, 9, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait sistem kepegawaian.		'),
(50, 9, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait sistem kepegawaian.		\r\n'),
(51, 9, 'level 2', 2, 'Kebijakan internal telah ditetapkan dan mendukung pengaturan sistem manajemen kepegawaian pada sebagian kebutuhan Instansi Pusat/Pemerintah Daerah Saudara.		\r\n\r\n'),
(52, 9, 'level 3', 3, 'Kebijakan internal mendukung pengaturan seluruh kebutuhan dari sistem manajemen kepegawaian di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(53, 9, 'level 4', 4, 'Kebijakan internal mendukung kebutuhan integrasi sistem manajemen kepegawaian dengan sistem manajemen kepegawaian Badan Kepegawaian Negara atau sistem aplikasi lain di dalam Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(54, 9, 'level 5', 5, 'Kebijakan dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan instansi.		\r\n'),
(55, 10, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait sistem manajemen perencanaan dan penganggaran.		\r\n'),
(56, 10, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait sistem manajemen perencanaan dan penganggaran.		\r\n'),
(57, 10, 'level 2', 2, 'Kebijakan internal telah ditetapkan dan mendukung pengaturan sistem manajemen perencanaan dan penganggaran pada sebagian kebutuhan Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(58, 10, 'level 3', 3, 'Kebijakan internal mendukung pengaturan seluruh kebutuhan dari sistem manajemen perencanaan dan penganggaran di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n\r\n'),
(59, 10, 'level 4', 4, 'Kebijakan internal mendukung kebutuhan integrasi sistem manajemen perencanaan dan penganggaran dengan sistem aplikasi lain di dalam Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(60, 10, 'level 5', 5, 'Kebijakan dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan instansi.		\r\n\r\n'),
(61, 11, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait sistem manajemen keuangan.		\r\n'),
(62, 11, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait sistem manajemen keuangan.		\r\n'),
(63, 11, 'level 2', 2, 'Kebijakan internal  telah ditetapkan dan  mendukung pengaturan sistem  manajemen  keuangan pada sebagian  kebutuhan Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(64, 11, 'level 3', 3, 'Kebijakan internal mendukung pengaturan seluruh kebutuhan dari sistem manajemen keuangan di Instansi Pusat/Pemerintah Daerah Saudara.		'),
(65, 11, 'level 4', 4, 'Kebijakan internal mendukung kebutuhan integrasi sistem manajemen keuangan dengan sistem aplikasi lain di dalam Instansi Pusat/ Pemerintah Daerah Saudara.		\r\n'),
(66, 11, 'level 5', 5, 'Kebijakan internal dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan instansi.		\r\n'),
(67, 12, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait sistem manajemen kinerja.		\r\n'),
(68, 12, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait sistem manajemen kinerja.		\r\n'),
(69, 12, 'level 2', 2, 'Kebijakan internal   telah ditetapkan dan   mendukung  pengaturan sistem   manajemen   kinerja pada sebagian   kebutuhan Instansi Pusat/Pemerintah Saudara.		\r\n\r\n'),
(70, 12, 'level 3', 3, 'Kebijakan internal telah mendukung pengaturan seluruh kebutuhan dari sistem manajemen kinerja di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(71, 12, 'level 4', 4, 'Kebijakan internal mendukung kebutuhan integrasi sistem manajemen kinerja dengan sistem aplikasi lain dalam Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(72, 12, 'level 5', 5, 'Kebijakan internal dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan instansi.		\r\n'),
(73, 13, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait sistem pengadaan secara elektronik.		\r\n'),
(74, 13, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait sistem pengadaan secara elektronik.		\r\n'),
(75, 13, 'level 2', 2, 'Kebijakan internal telah ditetapkan dan mendukung pengaturan sistem pengadaan secara elektronik pada sebagian kebutuhan Instansi Pusat/Pemerintah Daerah Saudara.		\r\n\r\n'),
(76, 13, 'level 3', 3, 'Kebijakan internal telah mendukung pengaturan seluruh kebutuhan dari sistem pengadaan secara elektronik di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n\r\n'),
(77, 13, 'level 4', 4, 'Kebijakan internal mendukung kebutuhan integrasi sistem pengadaan secara elektronik dengan sistem aplikasi lain dalam Instansi Pusat/Pemerintah Daerah.		\r\n\r\n'),
(78, 13, 'level 5', 5, 'Kebijakan internal dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan instansi.		\r\n'),
(79, 14, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait sistem pengaduan publik.		\r\n'),
(80, 14, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait sistem pengaduan publik.		\r\n'),
(81, 14, 'level 2', 2, 'Kebijakan internal telah ditetapkan dan mendukung pengaturan sistem pengaduan publik pada sebagian kebutuhan Instansi Pusat/Pemerintah Daerah Saudara.		\r\n\r\n'),
(82, 14, 'level 3', 3, 'Kebijakan internal telah mendukung seluruh kebutuhan dari sistem pengaduan publik di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(83, 14, 'level 4', 4, 'Kebijakan mendukung kebutuhan integrasi sistem pengaduan publik dengan sistem aplikasi lain di dalam Instansi Pusat/Pemerintah Daerah Saudara.		\r\n\r\n'),
(84, 14, 'level 5', 5, 'Kebijakan internal dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan instansi.		\r\n'),
(85, 15, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait sistem jaringan dokumentasi dan informasi hukum (JDIH).		\r\n'),
(86, 15, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait sistem jaringan dokumentasi dan informasi hukum (JDIH).		\r\n'),
(87, 15, 'level 2', 2, 'Kebijakan internal telah ditetapkan dan mendukung pengaturan sistem jaringan dokumentasi dan informasi hukum (JDIH) pada sebagian kebutuhan di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(88, 15, 'level 3', 3, 'Kebijakan internal telah ditetapkan dan mendukung seluruh kebutuhan dari sistem jaringan dokumentasi dan informasi hukum (JDIH) di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n\r\n'),
(89, 15, 'level 4', 4, 'Kebijakan internal mendukung kebutuhan integrasi sistem jaringan dokumentasi dan informasi hukum (JDIH) antar Instansi Pusat/Pemerintah Daerah.		\r\n'),
(90, 15, 'level 5', 5, 'Kebijakan internal dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan instansi.		\r\n'),
(91, 16, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait WBS. 		\r\n'),
(92, 16, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait WBS.		\r\n'),
(93, 16, 'level 2', 2, 'Kebijakan internal telah ditetapkan dan mendukung pengaturan WBS pada sebagian kebutuhan di  Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(94, 16, 'level 3', 3, 'Kebijakan internal telah ditetapkan dan mendukung seluruh kebutuhan WBS di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(95, 16, 'level 4', 4, 'Kebijakan internal mendukung kebutuhan integrasi WBS dengan sistem aplikasi lain di dalam Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(96, 16, 'level 5', 5, 'Kebijakan internal dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan instansi.		\r\n'),
(97, 17, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait sistem pelayanan publik pada Instansi Pusat/Pemerintah Daerah Saudara		\r\n'),
(98, 17, 'level 1', 1, 'Terdapat konsep kebijakan internal terkait sistem pelayanan publik pada Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(99, 17, 'level 2', 2, 'Kebijakan internal  telah ditetapkan dan  mendukung  sebagian  kebutuhan  dari  sistem pelayanan publik di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(100, 17, 'level 3', 3, 'Kebijakan internal telah mendukung seluruh kebutuhan dari sistem pelayanan publik di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(101, 17, 'level 4', 4, 'Kebijakan mendukung kebutuhan dari sistem pelayanan publik antar Instansi Pusat/Pemerintah Daerah Saudara.		\r\n\r\n'),
(102, 17, 'level 5', 5, 'Kebijakan internal dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan instansi.		\r\n'),
(103, 18, 'level 0', 0, 'Tidak terdapat Tim pengarah SPBE.		\r\n'),
(104, 18, 'level 1', 1, 'Terdapat Tim pengarah SPBE, tetapi belum dilegalisasi; Tugas dan fungsi Tim pengarah SPBE dilaksanakan secara sementara (ad-hoc).		\r\n'),
(105, 18, 'level 2', 2, 'Terdapat Tim pengarah SPBE, dan sudah dilegalisasi;  Tugas dan fungsi Tim pengarah SPBE telah melaksanakan sebagian tugas dan fungsinya.		\r\n'),
(106, 18, 'level 3', 3, 'Tim pengarah SPBE telah melaksanakan tugas dan fungsinya secara keseluruhan.		\r\n'),
(107, 18, 'level 4', 4, 'Tugas dan fungsi Tim pengarah SPBE dapat dipantau dan dievaluasi secara berkala.		\r\n'),
(108, 18, 'level 5', 5, 'Kinerja Tim pengarah SPBE ditingkatkan secara berkesinambungan sebagai tindak lanjut hasil pemantauan dan evaluasi.		\r\n'),
(109, 19, 'level 0', 0, 'Tidak terdapat dokumen proses bisnis pada Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(110, 19, 'level 1', 1, 'Terdapat dokumen proses bisnis yang disusun secara sementara (ad-hoc); Belum terdapat standardisasi proses bisnis.		\r\n'),
(111, 19, 'level 2', 2, 'Proses bisnis yang tertuang dalam dokumen yang terstandarkan, diterapkan pada sebagian unit kerja di Instansi Pusat/Pemerintah Daerah Saudara		\r\n'),
(112, 19, 'level 3', 3, 'Proses bisnis yang tertuang dalam dokumen yang terstandarkan, diterapkan pada seluruh unit kerja di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(113, 19, 'level 4', 4, 'Penerapan proses bisnis yang terintegrasi dengan sistem elektronik dan dapat dipantau serta dievaluasi secara berkala.		\r\n'),
(114, 19, 'level 5', 5, 'Penerapan proses bisnis yang terintegrasi diperbaiki secara berkesinambungan sebagai tindak lanjut hasil pemantauan dan evaluasi.		\r\n'),
(115, 20, 'level 0', 0, 'Tidak terdapat dokumen rencana induk SPBE.		\r\n'),
(116, 20, 'level 1', 1, 'Terdapat konsep dokumen rencana induk SPBE.		\r\n'),
(117, 20, 'level 2', 2, 'Terdapat dokumen rencana induk SPBE yang mencakup sebagian dari muatan visi dan misi SPBE, arsitektur SPBE (arsitektur bisnis, arsitektur data, arsitektur aplikasi, arsitektur teknologi dan arsitektur keamanan), dan peta jalan SPBE.		\r\n\r\n'),
(118, 20, 'level 3', 3, 'Terdapat dokumen rencana induk SPBE yang mencakup semua muatan visi dan misi SPBE, arsitektur SPBE (arsitektur bisnis, arsitektur data, arsitektur aplikasi, arsitektur teknologi, dan arsitektur keamanan), dan peta jalan SPBE.		\r\n'),
(119, 20, 'level 4', 4, 'Pelaksanaan peta jalan rencana induk SPBE diterapkan secara konsisten melalui rencana kerja 3 (tiga) tahun terakhir  dan dipantau serta dievaluasi secara berkala		\r\n\r\n'),
(120, 20, 'level 5', 5, 'Peta jalan rencana induk SPBE dilakukan pemutakhiran secara berkesinambungan sebagai tindak lanjut hasil pemantauan dan evaluasi.		\r\n'),
(121, 21, 'level 0', 0, 'Tidak terdapat perencanaan dan penganggaran TIK untuk penerapan SPBE.		\r\n'),
(122, 21, 'level 1', 1, 'Terdapat perencanaan dan penganggaran TIK  yang tertuang dalam rencana kerja tahunan untuk penerapan SPBE.		\r\n'),
(123, 21, 'level 2', 2, 'Terdapat perencanaan dan penganggaran TIK  yang tertuang dalam rencana kerja tahunan; sebagian perencanaan dan penganggaran TIK dikonsultasikan kepada unit pengelola TIK di Instansi Pusat/Pemerintah Daerah masing-masing.		\r\n'),
(124, 21, 'level 3', 3, 'Terdapat perencanaan dan penganggaran TIK  yang tertuang dalam rencana kerja tahunan; seluruh perencanaan dan penganggaran TIK dikonsultasikan kepada unit pengelola TIK.		\r\n'),
(125, 21, 'level 4', 4, 'Seluruh perencanaan dan penganggaran TIK yang tertuang dalam rencana kerja tahunan di Instansi Pusat/Pemerintah Daerah Saudara telah terintegrasi dan dapat dikendalikan di unit pengelola TIK, serta dapat dipantau dan dievaluasi secara berkala.		\r\n\r\n'),
(126, 21, 'level 5', 5, 'Hasil evaluasi seluruh perencanaan dan penganggaran TIK  yang terintegrasi di unit pengelola TIK ditindaklanjuti sebagai masukan perbaikan penyusunan anggaran tahun berikutnya.		\r\n\r\n'),
(127, 22, 'level 0', 0, 'Tidak terdapat layanan pusat data (data center).		\r\n\r\n'),
(128, 22, 'level 1', 1, 'Tersedia layanan pusat data (data center) yang disediakan oleh jasa layanan pusat data non pemerintah.		\r\n\r\n'),
(129, 22, 'level 2', 2, 'Tersedia satu atau lebih layanan pusat data (data center) yang dimiliki oleh instansi pemerintah; Terdapat prosedur pengoperasian baku layanan pusat data; Sudah dimanfaatkan oleh sebagian unit kerja/perangkat daerah; pengendalian layanan berada di beberapa unit kerja/perangkat daerah.		\r\n'),
(130, 22, 'level 3', 3, 'Prosedur pengoperasian baku pusat data (data center) telah diterapkan secara konsisten oleh seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n\r\n'),
(131, 22, 'level 4', 4, 'Pengendalian satu atau lebih layanan pusat data (data center) dilakukan secara terpusat; Monitoring dan perencanaan kapasitas dilakukan secara berkala berdasarkan hasil analisis rekaman aktivitas pusat data (data center).		\r\n\r\n'),
(132, 22, 'level 5', 5, 'Kinerja pengoperasian layanan pusat data (data center) ditingkatkan secara berkesinambungan sebagai tindak lanjut hasil pemantauan dan evaluasi.		\r\n\r\n'),
(133, 23, 'level 0', 0, 'Tidak terdapat rencana integrasi sistem aplikasi.		\r\n\r\n'),
(134, 23, 'level 1', 1, 'Terdapat integrasi sistem aplikasi secara sementara (ad-hoc).		\r\n'),
(135, 23, 'level 2', 2, 'Terdapat rencana integrasi sistem aplikasi tetapi diterapkan hanya sebagian dari rencana tersebut di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n\r\n'),
(136, 23, 'level 3', 3, 'Integrasi sistem aplikasi telah dilakukan secara keseluruhan sesuai rencana di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n\r\n'),
(137, 23, 'level 4', 4, 'Integrasi sistem aplikasi Instansi Pusat/Pemerintah Daerah dapat dikendalikan, dinilai secara kuantitatif dan dievaluasi secara berkala.		\r\n'),
(138, 23, 'level 5', 5, 'Integrasi sistem aplikasi dikembangkan secara optimal untuk meningkatkan efektivitas dan efisiensi terhadap perubahan lingkungan, teknologi, dan kebutuhan Instansi Pusat/Pemerintah Daerah.		\r\n'),
(139, 24, 'level 0', 0, 'Tidak terdapat rencana penggunaan aplikasi umum berbagi pakai.		\r\n'),
(140, 24, 'level 1', 1, 'Terdapat penggunaan aplikasi umum berbagi pakai secara sementara (ad-hoc); Belum terdapat rencana penggunaan aplikasi umum berbagi pakai		\r\n\r\n'),
(141, 24, 'level 2', 2, 'Terdapat  rencana  penggunaan  aplikasi  umum  berbagi  pakai  tetapi  diterapkan  hanya sebagian  dari  rencana tersebut di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(142, 24, 'level 3', 3, 'Penggunaan aplikasi umum berbagi pakai telah dilakukan secara keseluruhan sesuai rencana di Instansi Pusat/Pemerintah Daerah Saudara.		\r\n'),
(143, 24, 'level 4', 4, 'Penggunaan aplikasi umum berbagi pakai Instansi Pemerintah dapat dikendalikan, dinilai secara kuantitatif dan dievaluasi secara berkala.		\r\n'),
(144, 24, 'level 5', 5, 'Kinerja aplikasi umum berbagi pakai ditingkatkan secara berkesinambungan sebagai tindak lanjut hasil pemantauan dan evaluasi.		\r\n'),
(145, 25, 'level 0', 0, 'Tidak terdapat sistem naskah dinas.		\r\n'),
(146, 25, 'level 1', 1, 'Sistem naskah dinas elektronik hanya menyediakan diseminasi (penyebaran satu arah) informasi seperti surat undangan, surat disposisi, dan surat resmi.		\r\n'),
(147, 25, 'level 2', 2, 'Sistem naskah dinas elektronik menyediakan layanan interaksi seperti pencarian informasi, pengiriman (unggah) e-dokumen, dan penerimaan (unduh) e-dokumen seperti surat undangan, surat disposisi, dan surat resmi.		\r\n\r\n'),
(148, 25, 'level 3', 3, 'Sistem naskah dinas elektronik menyediakan layanan transaksi dimana pengguna dapat mengunggah e-dokumen dan memasukkan informasi ke dalam sistem, dan sistem dapat merespon kepada pengguna seperti mekanisme persetujuan, penyematan tanda tangan digital dan pengiriman e-dokumen ke tujuan penerima di internal Instansi Pusat/Pemerintah Daerah.		\r\n'),
(149, 25, 'level 4', 4, 'Sistem naskah dinas elektronik menyediakan layanan kolaborasi dimana layanan persuratan diintegrasikan dengan suatu layanan SPBE misalnya layanan manajemen kepegawaian atau diintegrasikan dengan layanan SPBE instansi pemerintah lain.		\r\n'),
(150, 25, 'level 5', 5, 'Sistem naskah dinas elektronik dapat terus ditingkatkan dengan menyesuaikan terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.		\r\n'),
(151, 26, 'level 0', 0, 'Tidak terdapat sistem manajemen kepegawaian.		\r\n'),
(152, 26, 'level 1', 1, 'Sistem manajemen kepegawaian menyediakan diseminasi (penyebaran satu arah) seperti informasi nomor ID pegawai, riwayat jabatan, riwayat pendidikan, dan lain sebagainya.		\r\n'),
(153, 26, 'level 2', 2, 'Sistem manajemen kepegawaian menyediakan layanan interaksi seperti mencari informasi kepegawaian dan mengunduh dokumen data diri pegawai.		\r\n'),
(154, 26, 'level 3', 3, 'Sistem manajemen kepegawaian menyediakan layanan transaksi dimana pengguna dapat mengunduh atau  mengunggah  informasi,  dan  sistem  dapat  merespon  kepada  pengguna  seperti  mekanisme persetujuan kenaikan pangkat, pengajuan cuti, dokumen pegawai, dan lain sebagainya.		\r\n'),
(155, 26, 'level 4', 4, 'Sistem manajemen kepegawaian menyediakan layanan kolaborasi dimana layanan kepegawaian diintegrasikan dengan suatu layanan SPBE lain seperti layanan  disposisi  dan korespondensi  atau diintegrasikan dengan layanan SPBE instansi pemerintah lain seperti Badan Kepegawaian Negara (BKN).		\r\n'),
(156, 26, 'level 5', 5, 'Sistem manajemen kepegawaian dapat terus ditingkatkan dengan menyesuaikan terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.		\r\n'),
(157, 27, 'level 0', 0, 'Tidak terdapat sistem manajemen perencanaan.		\r\n'),
(158, 27, 'level 1', 1, 'Sistem manajemen perencanaan menyediakan diseminasi (penyebaran satu arah) seperti informasi jumlah anggaran yang tersedia.		\r\n'),
(159, 27, 'level 2', 2, 'Sistem manajemen perencanaan menyediakan layanan interaksi seperti mencari informasi dan mengunduh dokumen terkait perencanaan kegiatan.		\r\n'),
(160, 27, 'level 3', 3, 'Sistem manajemen perencanaan menyediakan layanan transaksi dimana pengguna dapat mengunduh atau mengunggah informasi perencanaan kegiatan, dan sistem dapat merespon kepada pengguna seperti mekanisme persetujuan dan validasi perencanaan kegiatan di internal Instansi Pusat/Pemerintah Daerah.		\r\n'),
(161, 27, 'level 4', 4, 'Sistem manajemen perencanaan menyediakan layanan kolaborasi dimana layanan perencanaan diintegrasikan dengan suatu layanan seperti layanan manajemen pegawai, layanan manajemen keuangan dan  lain  sebagainya  atau  diintegrasikan  dengan  layanan  SPBE  instansi  pemerintah  lain.		\r\n'),
(162, 27, 'level 5', 5, 'Sistem manajemen perencanaan dapat terus ditingkatkan dengan menyesuaikan terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.		\r\n\r\n'),
(163, 28, 'level 0', 0, 'Tidak terdapat sistem manajemen penganggaran.		\r\n'),
(164, 28, 'level 1', 1, 'Sistem manajemen penganggaran menyediakan diseminasi (penyebaran satu arah) seperti informasi jumlah anggaran yang tersedia.		\r\n'),
(165, 28, 'level 2', 2, 'Sistem manajemen penganggaran menyediakan layanan interaksi seperti mencari informasi dan mengunduh dokumen terkait penganggaran.		\r\n'),
(166, 28, 'level 3', 3, 'Sistem manajemen penganggaran menyediakan layanan transaksi dimana pengguna dapat mengunduh atau mengunggah informasi penganggaran, dan sistem dapat merespon kepada pengguna seperti mekanisme persetujuan dan validasi penganggaran di internal Instansi Pemerintah.		\r\n'),
(167, 28, 'level 4', 4, 'Sistem manajemen penganggaran menyediakan layanan kolaborasi dimana layanan penganggaran diintegrasikan dengan suatu layanan seperti layanan manajemen pegawai, layanan manajemen keuangan dan  lain  sebagainya  atau  diintegrasikan  dengan  layanan  SPBE  instansi  pemerintah lain  seperti Kementerian Keuangan.		\r\n'),
(168, 28, 'level 5', 5, 'Sistem manajemen penganggaran dapat terus ditingkatkan dengan menyesuaikan terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.		\r\n'),
(169, 29, 'level 0', 0, 'Tidak terdapat sistem manajemen keuangan.		\r\n\r\n'),
(170, 29, 'level 1', 1, 'Sistem  manajemen  keuangan  menyediakan  diseminasi (penyebaran satu arah)  seperti  informasi  administrasi keuangan.		\r\n'),
(171, 29, 'level 2', 2, 'Sistem manajemen keuangan menyediakan layanan interaksi seperti mencari informasi, mengunduh dokumen terkait keuangan, dan memasukkan data keuangan.		\r\n'),
(172, 29, 'level 3', 3, 'Sistem manajemen keuangan menyediakan layanan transaksi dimana pengguna dapat mengunduh atau mengunggah  informasi  terkait  keuangan,  dan  sistem  dapat  merespon  kepada  pengguna  seperti mekanisme persetujuan dari atasan dan validasi keuangan di internal Instansi Pusat/Pemerintah Daerah.		\r\n'),
(173, 29, 'level 4', 4, 'Sistem manajemen keuangan menyediakan layanan kolaborasi dimana layanan keuangan diintegrasikan dengan suatu layanan seperti layanan manajemen kepegawaian, layanan manajemen penganggaran dan layanan kinerja elektronik atau diintegrasikan dengan layanan SPBE instansi pemerintah lain seperti Kementerian Keuangan.		\r\n'),
(174, 29, 'level 5', 5, 'Sistem  manajemen  keuangan  dapat  terus  ditingkatkan  dengan  menyesuaikan  terhadap  perubahan lingkungan, teknologi dan kebutuhan instansi.		\r\n'),
(175, 30, 'level 0', 0, 'Tidak terdapat sistem manajemen kinerja.		\r\n'),
(176, 30, 'level 1', 1, 'Sistem manajemen kinerja menyediakan diseminasi (penyebaran satu arah) seperti indikator dan target kinerja.		\r\n'),
(177, 30, 'level 2', 2, 'Sistem  manajemen  kinerja  menyediakan  layanan  interaksi  seperti  mencari  informasi  dan  mengunggah kemajuan kinerja dan menampilkan rasio (persentase) kemajuan kinerja.		\r\n'),
(178, 30, 'level 3', 3, 'Sistem manajemen kinerja menyediakan layanan transaksi dimana pengguna dapat mengunduh atau mengunggah informasi terkait kinerja, dan sistem dapat merespon kepada pengguna seperti mekanisme persetujuan kinerja unit organisasi dari atasan dan validasi kinerja di internal Instansi Pusat/Pemerintah Daerah.		\r\n'),
(179, 30, 'level 4', 4, 'Sistem manajemen kinerja menyediakan layanan kolaborasi yang diintegrasikan dengan layanan SPBE lainnya seperti layanan manajemen penganggaran, layanan Monev, RKPD, e-Musrembang, dan sebagainya.		\r\n'),
(180, 30, 'level 5', 5, 'Sistem   manajemen   kinerja   dapat   terus   ditingkatkan   dengan   menyesuaikan   terhadap   perubahan lingkungan, teknologi dan kebutuhan instansi.		\r\n'),
(181, 31, 'level 0', 0, 'Tidak terdapat sistem pengadaan secara elektronik.		\r\n'),
(182, 31, 'level 1', 1, 'Sistem pengadaan secara elektronik menyediakan diseminasi (penyebaran satu arah) seperti informasi daftar lelang barang dan jasa yang dibutuhkan oleh instansi.		\r\n'),
(183, 31, 'level 2', 2, 'Sistem pengadaan secara elektronik menyediakan layanan interaksi seperti mencari informasi, mengunduh dan mengunggah dokumen, dan memasukkan data terkait pengadaan.		\r\n'),
(184, 31, 'level 3', 3, 'Sistem pengadaan secara elektronik menyediakan layanan transaksi dimana pengguna dapat mengunduh atau mengunggah informasi terkait pengadaan, dan sistem dapat merespon kepada pengguna seperti mekanisme persetujuan dan validasi pada alur proses pengadaan, verifikasi penyedia.		\r\n'),
(185, 31, 'level 4', 4, 'Sistem pengadaan secara elektronik menyediakan layanan kolaborasi dimana layanan pengadaan secara elektronik diintegrasikan dengan suatu layanan seperti layanan manajemen penganggaran dan layanan keuangan atau diintegrasikan dengan layanan SPBE instansi pemerintah lainnya.		\r\n'),
(186, 31, 'level 5', 5, 'Sistem pengadaan secara elektronik dapat terus ditingkatkan dengan menyesuaikan terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.		\r\n'),
(187, 32, 'level 0', 0, 'Tidak terdapat sistem pengaduan publik		\r\n'),
(188, 32, 'level 1', 1, 'Sistem  pengaduan  publik  menyediakan  diseminasi (penyebaran satu arah)  seperti  waktu  respon  dan  tata  cara pengaduan.		\r\n'),
(189, 32, 'level 2', 2, 'Sistem  pengaduan  publik  menyediakan  layanan  interaksi  seperti  mencari  informasi  dan  menyampaikan pengaduan.		\r\n'),
(190, 32, 'level 3', 3, 'Sistem pengaduan publik menyediakan layanan transaksi dimana pengguna dapat menyampaikan pengaduan, dan sistem dapat merespon kepada pengguna seperti kemajuan penyelesaian pengaduan dan resolusi pengaduan.		\r\n'),
(191, 32, 'level 4', 4, 'Sistem   pengaduan   publik   menyediakan   layanan   kolaborasi dimana layanan   pengaduan   publik diintegrasikan dengan suatu  layanan  seperti  layanan  manajemen  kinerja,  atau  diintegrasikan  dengan layanan SPBE instansi pemerintah lain seperti layanan identifikasi penduduk (administrasi kependudukan).		\r\n'),
(192, 32, 'level 5', 5, 'Sistem pengaduan publik dapat terus ditingkatkan dengan menyesuaikan terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.		\r\n'),
(193, 33, 'level 0', 0, 'Tidak terdapat sistem jaringan dokumentasi dan informasi hukum (JDIH).		\r\n'),
(194, 33, 'level 1', 1, 'Sistem jaringan dokumentasi dan informasi hukum (JDIH) menyediakan diseminasi (penyebaran satu arah) seperti informasi hukum, regulasi, dan lain sebagainya.		\r\n'),
(195, 33, 'level 2', 2, 'Sistem jaringan dokumentasi dan informasi hukum (JDIH) menyediakan layanan interaksi seperti mencari informasi dan mengunduh dokumen terkait hukum.		\r\n'),
(196, 33, 'level 3', 3, 'Sistem  jaringan  dokumentasi  dan  informasi  hukum  (JDIH)   menyediakan  layanan  transaksi  dimana pengguna dapat mengunggah informasi terkait hukum, dan sistem dapat merespon kepada pengguna seperti validasi informasi produk hukum dan validasi dokumen digital produk hukum.		\r\n'),
(197, 33, 'level 4', 4, 'Sistem  jaringan  dokumentasi  dan  informasi  hukum  (JDIH)  menyediakan  layanan  kolaborasi  dimana layanan jaringan dokumentasi dan informasi hukum (JDIH) diintegrasikan dengan layanan SPBE instansi pemerintah lain seperti Kementerian Hukum dan HAM.		\r\n'),
(198, 33, 'level 5', 5, 'Sistem jaringan dokumentasi dan informasi hukum (JDIH) dapat terus ditingkatkan dengan menyesuaikan terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.		\r\n'),
(199, 34, 'level 0', 0, 'Tidak terdapat WBS		\r\n'),
(200, 34, 'level 1', 1, 'WBS menerima informasi pengaduan dari pelapor.		\r\n'),
(201, 34, 'level 2', 2, 'WBS menyediakan layanan interaksi seperti mencari informasi dan menyampaikan laporan.		\r\n'),
(202, 34, 'level 3', 3, 'WBS menyediakan layanan transaksi dimana pengguna dapat menyampaikan laporan dan sistem dapat merespon kepada pengguna seperti kemajuan penyelesaian laporan dan resolusi laporan.		\r\n'),
(203, 34, 'level 4', 4, 'WBS menyediakan layanan kolaborasi dimana layanan WBS diintegrasikan dengan suatu layanan seperti layanan manajemen kinerja atau diintegrasikan dengan layanan SPBE instansi pemerintah lain.		\r\n'),
(204, 34, 'level 5', 5, 'WBS  dapat  terus  ditingkatkan  dengan  menyesuaikan  terhadap  perubahan  lingkungan,  teknologi  dan kebutuhan instansi.		\r\n'),
(205, 35, 'level 0', 0, 'Tidak terdapat sistem pelayanan publik.		\r\n'),
(206, 35, 'level 1', 1, 'Sistem pelayanan publik menyediakan diseminasi (penyebaran satu arah).		\r\n'),
(207, 35, 'level 2', 2, 'Sistem pelayanan publik menyediakan layanan interaksi.		\r\n'),
(208, 35, 'level 3', 3, 'Sistem pelayanan publik menyediakan layanan transaksi.		\r\n'),
(209, 35, 'level 4', 4, 'Sistem pelayanan publik menyediakan layanan kolaborasi.		\r\n'),
(210, 35, 'level 5', 5, 'Sistem pelayanan publik menyediakan layanan optimalisasi.		\r\n'),
(211, 36, 'level 0', 0, 'Tidak terdapat sistem pelayanan publik.		\r\n'),
(212, 36, 'level 1', 1, 'Sistem pelayanan publik menyediakan diseminasi (penyebaran satu arah).		\r\n'),
(213, 36, 'level 2', 2, 'Sistem pelayanan publik menyediakan layanan interaksi.		\r\n'),
(214, 36, 'level 3', 3, 'Sistem pelayanan publik menyediakan layanan transaksi.		\r\n'),
(215, 36, 'level 4', 4, 'Sistem pelayanan publik menyediakan layanan kolaborasi.		\r\n'),
(216, 36, 'level 5', 5, 'Sistem pelayanan publik menyediakan layanan optimalisasi.		\r\n'),
(217, 37, 'level 0', 0, 'Tidak terdapat sistem pelayanan publik.		\r\n'),
(218, 37, 'level 1', 1, 'Sistem pelayanan publik menyediakan diseminasi (penyebaran satu arah).		\r\n'),
(219, 37, 'level 2', 2, 'Sistem pelayanan publik menyediakan layanan interaksi.		\r\n'),
(220, 37, 'level 3', 3, 'Sistem pelayanan publik menyediakan layanan transaksi.		\r\n'),
(221, 37, 'level 4', 4, 'Sistem pelayanan publik menyediakan layanan kolaborasi.		\r\n'),
(222, 37, 'level 5', 5, 'Sistem pelayanan publik menyediakan layanan optimalisasi.		\r\n'),
(223, 40, 'level 0', 0, 'Tidak terdapat kebijakan internal terkait Tim Pengarah SPBE.		\r\n'),
(224, 40, 'level 1', 1, 'Konsep kebijakan internal terkait Arsitektur SPBE Instansi Pusat/Pemerintah Daerah belum atau telah tersedia.'),
(225, 40, 'level 2', 2, 'Kebijakan internal telah ditetapkan dan mencakup pengaturan tugas-tugas Tim Pengarah SPBE yang mendukung penerapan SPBE  pada sebagian unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.		\r\n'),
(226, 40, 'level 3', 3, 'Kebijakan internal mencakup pengaturan tugas-tugas Tim Pengarah SPBE yang mendukung penerapan SPBE pada semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.		\r\n'),
(227, 40, 'level 4', 4, 'Kebijakan internal mencakup pengaturan tugas-tugas Tim Pengarah SPBE yang mendukung penerapan SPBE antar Instansi Pusat, antar Pemerintah Daerah, atau antar Instansi Pusat dan Pemerintah Daerah.		'),
(228, 40, 'level 5', 5, 'Kebijakan internal dipantau, dinilai, dan dievaluasi secara berkala terhadap perubahan lingkungan, teknologi, dan kebutuhan instansi.		');

-- --------------------------------------------------------

--
-- Table structure for table `tb_opd`
--

CREATE TABLE `tb_opd` (
  `idopd` varchar(20) NOT NULL,
  `namaopd` varchar(100) NOT NULL,
  `nama_pendek_opd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_opd`
--

INSERT INTO `tb_opd` (`idopd`, `namaopd`, `nama_pendek_opd`) VALUES
('000000', 'Seluruh Perangkat Daerah', 'Seluruh PD'),
('000001', 'Walikota', ''),
('000002', 'Wakil Walikota', ''),
('010001', 'Sekretaris Daerah', 'SEKDA'),
('011001', 'Bagian Administrasi Pemerintahan (Asisten I)', ''),
('011101', 'Bagian Pemerintahan ', 'Bag. Pem.'),
('011201', 'Bagian Hukum Setda Kota Denpasar', 'Bag. Hukum'),
('011301', 'Bagian Organisasi', 'Bag. Organisasi'),
('011401', 'Bagian Hubungan Masyarakat dan Protokol', ''),
('012001', 'Bagian Administrasi Pembangunan (Asisten II)', ''),
('012101', 'Bagian Perekonomian', ''),
('012201', 'Bagian Program Pembangunan', ''),
('012301', 'Bagian Kesejahteraan Rakyat', 'Bag. Kesra'),
('013001', 'Bagian Administrasi Umum (Asisten III)', ''),
('013101', 'Bagian Keuangan', ''),
('013201', 'Bagian Umum', ''),
('013301', 'Bagian Pengadaan Barang dan Jasa', 'Bag. Pengadaan Barang dan Jasa'),
('013401', 'Bagian Kerjasama Setda Kota Denpasar', ''),
('014000', 'Staf Ahli ', ''),
('030101', 'Dinas Pendidikan, Pemuda dan Olahraga', ''),
('030201', 'Dinas Kesehatan ', ''),
('030301', 'Dinas Pekerjaan Umum dan Penataan Ruang', ''),
('030401', 'Dinas Perumahan, Kawasan Permukiman Dan Pertanahan', ''),
('030501', 'Dinas Lingkungan Hidup dan Kebersihan', 'DLHK'),
('030601', 'Dinas Kependudukan dan Pencatatan Sipil ', 'Dinas Dukcapil'),
('030701', 'Dinas Perhubungan', 'dishub'),
('03070101', 'UPT. Transportasi Darat', ''),
('030801', 'Dinas Komunikasi, Informatika dan Statistik', 'DKIS'),
('03080101', 'Sekretariat Dinas Komunikasi dan Informatika ', ''),
('0308010101', 'Sub Bagian Umum', ''),
('0308010102', 'Sub Bagian Kepegawaian', ''),
('0308010103', 'Sub Bagian Keuangan', ''),
('03080102', 'Bidang Statistik dan Persandian', ''),
('0308010201', 'Seksi Analisa Data Statistik', ''),
('0308010202', 'Seksi Pengelolaan Statistik Sektoral', ''),
('0308010203', 'Seksi Keamanan Informasi dan Persediaan', ''),
('03080103', 'Bidang Pengelolaan Smart City', ''),
('0308010301', 'Seksi Pengelolaan Ekosistem Smart City', ''),
('0308010302', 'Seksi Pengembangan dan Aplikasi', ''),
('0308010303', 'Seksi Pengelolaan Data dan Introperabilitas', ''),
('03080104', 'Bidang E-government', ''),
('0308010401', 'Seksi tata Kelola E-Goverment', ''),
('0308010402', 'Seksi Penyebaran Sistem Komunikasi', ''),
('0308010403', 'Seksi Layanan Infrastruktur dan Teknologi', ''),
('03080105', 'Bidang Komunikasi dan Informasi Publik', ''),
('0308010501', 'Seksi Kemitraan dan Komunikasi Informasi Publik', ''),
('0308010502', 'Seksi Layanan Komunikasi Informasi Publik', ''),
('0308010503', 'Seksi Pengelolaan Komunikasi Informasi Publik', ''),
('03080106', 'UPT. Pelayanan Teknis Penyiaran Publik Lokal', ''),
('0308010601', 'Subag Umum UPT. Pelayanan Teknis Penyiaran Publik Lokal', ''),
('03080107', 'UPT. Pelayanan Informasi Publik dan PPID', ''),
('0308010701', 'Subag Umum UPT. Pelayanan Informasi Publik dan PPID', ''),
('0308010702', 'Operator UPT. Pelayanan Informasi Publik dan PPID', ''),
('030901', 'Dinas Tenaga Kerja dan Sertifikasi Kompetensi', 'Dinas Tenaga Kerja'),
('031001', 'Dinas Pertanian', ''),
('031101', 'Dinas Perikanan dan Ketahanan Pangan', ''),
('031201', 'Dinas Kebudayaan ', 'Disbud'),
('031301', 'Dinas Pariwisata', ''),
('031401', 'Dinas Perindustrian dan Perdagangan ', ''),
('031501', 'Dinas Koperasi, Usaha Kecil dan Menengah ', ''),
('031601', 'Badan Pendapatan Daerah', ''),
('031701', 'Dinas Ketentraman Ketertiban dan Satuan Polisi Pamong Praja ', ''),
('040101', 'Inspektorat', ''),
('040201', 'Badan Perencanaan Pembangunan Daerah', 'Bappeda'),
('040301', 'Badan Kepegawaian dan Pengembangan Sumber Daya Manusia', 'BKPSDM'),
('040501', 'Dinas Pemberdayaan Masyarakat dan Desa Kota', ''),
('040601', 'Badan Kesatuan Bangsa, Politik dan Perlindungan Masyarakat', ''),
('040701', 'Dinas Perpustakaan dan Kearsipan', ''),
('040801', 'Badan Penanggulangan Bencana Daerah (BPBD)', 'BPBD'),
('040901', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak, Pengendalian Penduduk dan Keluarga Berencana', ''),
('041001', 'Rumah Sakit Umum Daerah Wangaya', 'RSUD Wangaya'),
('041101', 'Badan Penelitian Dan Pengembangan', ''),
('100000', 'Seluruh Desa/Kelurahan', ''),
('140018', 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 'Dinas PMPTSP'),
('14001801', 'Sekretariat Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', ''),
('1400180101', 'Sub Bagian Umum', ''),
('170001', 'Kecamatan Denpasar Timur', ''),
('170002', 'Kecamatan Denpasar Barat', ''),
('170003', 'Kecamatan Denpasar Selatan', ''),
('170004', 'Kecamatan Denpasar Utara', ''),
('200001', 'Kelurahan Dangin Puri', ''),
('200002', 'Kelurahan Kesiman', ''),
('200003', 'Kelurahan Penatih', ''),
('200004', 'Kelurahan Sumerta', ''),
('200005', 'Kelurahan Tonja', 'Kel. Tonja'),
('200006', 'Kelurahan Dauh Puri', ''),
('200007', 'Kelurahan Padangsambian', ''),
('200008', 'Kelurahan Peguyangan', ''),
('200009', 'Kelurahan Pemecutan', ''),
('20001', 'Sekretariat DPRD', ''),
('200010', 'Kelurahan Ubung', 'Kel. Ubung'),
('200011', 'Kelurahan Panjer', ''),
('200012', 'Kelurahan Pedungan', ''),
('200013', 'Kelurahan Renon', ''),
('200014', 'Kelurahan Sanur', ''),
('200015', 'Kelurahan Serangan', ''),
('200016', 'Kelurahan Sesetan', ''),
('300001', 'PDAM Kota Denpasar', 'PDAM'),
('300002', 'PD Parkir Kota Denpasar', 'PD Parkir'),
('300003', 'PD Pasar Kota Denpasar', 'PD Pasar'),
('300004', 'Dinas Sosial', ''),
('300005', 'Badan Pengelola Keuangan dan Aset Daerah', 'BPKAD');

-- --------------------------------------------------------

--
-- Table structure for table `tb_opdterkait`
--

CREATE TABLE `tb_opdterkait` (
  `idopdterkait` int(11) NOT NULL,
  `idopd` varchar(11) NOT NULL,
  `idpenilaian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_opdterkait`
--

INSERT INTO `tb_opdterkait` (`idopdterkait`, `idopd`, `idpenilaian`) VALUES
(1, '030801', 1),
(2, '011301', 2),
(3, '030801', 3),
(4, '040201', 4),
(5, '030801', 5),
(6, '030801', 6),
(7, '012001', 7),
(8, '011301', 8),
(9, '040301', 9),
(10, '040201', 10),
(11, '300005', 11),
(12, '040301', 12),
(13, '013301', 13),
(15, '030801', 15),
(16, '011201', 16),
(18, '030601', 17),
(19, '140018', 18),
(20, '030801', 19),
(21, '030801', 20),
(22, '030801', 21),
(23, '040201', 22),
(24, '030801', 23),
(25, '030801', 24),
(26, '030801', 25),
(27, '011301', 26),
(28, '040301', 27),
(29, '040201', 28),
(30, '040201', 29),
(31, '300005', 30),
(32, '040301', 31),
(33, '013301', 32),
(35, '030801', 34),
(36, '011201', 35),
(37, '040101', 36),
(38, '031601', 37),
(39, '030901', 38),
(40, '140018', 39),
(41, '030801', 40),
(42, '030801', 41),
(43, '030801', 42),
(44, '011301', 43),
(45, '030801', 44),
(46, '040201', 45),
(47, '030801', 46),
(48, '030801', 47),
(49, '012001', 48),
(50, '011301', 49),
(51, '040301', 50),
(52, '040201', 51),
(53, '300005', 52),
(54, '040301', 53),
(55, '013301', 54),
(56, '030801', 55),
(57, '011201', 56),
(58, '040101', 57),
(59, '140018', 58),
(60, '030801', 59),
(61, '030801', 60),
(62, '030801', 61),
(63, '040201', 62),
(64, '030801', 63),
(65, '030801', 64),
(66, '030801', 65),
(67, '011301', 66),
(68, '040301', 67),
(69, '040201', 68),
(70, '040201', 69),
(71, '300005', 70),
(72, '040301', 71),
(73, '013301', 72),
(74, '030801', 73),
(75, '011201', 74),
(76, '040101', 75),
(77, '031601', 76),
(78, '030901', 77),
(79, '140018', 78),
(80, '040101', 128),
(81, '030801', 129),
(82, '011301', 130),
(83, '030801', 131),
(84, '040201', 132),
(85, '030801', 133),
(86, '030801', 134),
(87, '012001', 135),
(88, '011301', 136),
(89, '040301', 137),
(90, '040201', 138),
(91, '300005', 139),
(92, '040301', 140),
(93, '013301', 141),
(94, '030801', 142),
(95, '011201', 143),
(96, '040101', 144),
(97, '140018', 145),
(98, '030801', 146),
(99, '030801', 147),
(100, '030801', 148),
(101, '040201', 149),
(102, '030801', 150),
(103, '030801', 151),
(104, '030801', 152),
(105, '011301', 153),
(106, '040301', 154),
(107, '040201', 155),
(108, '040201', 156),
(109, '300005', 157),
(110, '040301', 158),
(111, '013301', 159),
(112, '030801', 160),
(113, '011201', 161),
(114, '040101', 162),
(115, '031601', 163),
(116, '030901', 164),
(117, '140018', 165),
(118, '030801', 166),
(119, '030801', 167),
(120, '030801', 168),
(121, '030801', 169),
(122, '030801', 170),
(123, '030801', 171),
(124, '030801', 172),
(125, '030801', 173),
(126, '030801', 174),
(127, '030801', 175),
(128, '030801', 176),
(129, '030801', 177),
(131, '040201', 179),
(132, '300005', 180),
(133, '011301', 181),
(134, '040201', 182),
(135, '030801', 183),
(136, '030801', 184),
(137, '030801', 185),
(138, '030801', 186),
(139, '030801', 187),
(140, '030801', 188),
(141, '030801', 189),
(142, '040101', 190),
(143, '030801', 191),
(144, '030801', 192),
(145, '030801', 193),
(146, '300005', 194),
(147, '040301', 195),
(148, '030801', 196),
(149, '011301', 197),
(150, '030801', 198),
(151, '040101', 199),
(152, '030801', 200),
(153, '030801', 201),
(154, '040101', 202),
(155, '030801', 203),
(156, '040101', 204),
(157, '040201', 205),
(158, '040201', 206),
(159, '300005', 207),
(160, '013301', 208),
(161, '040301', 209),
(162, '040701', 210),
(163, '300005', 211),
(164, '040101', 212),
(165, '040201', 213),
(166, '040301', 214),
(167, '030801', 215),
(168, '040101', 216),
(169, '030801', 217),
(170, '011201', 218),
(171, '031601', 219),
(172, '030901', 220),
(175, '040301', 221),
(176, '040301', 221),
(177, '140018', 223);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penilaian`
--

CREATE TABLE `tb_penilaian` (
  `idpenilaian` int(11) NOT NULL,
  `idindikator` int(11) NOT NULL,
  `rekomendasi` text,
  `nilaikematangan` varchar(5) DEFAULT NULL,
  `penilaianmandiri` varchar(5) NOT NULL,
  `tindaklanjut` text,
  `target_waktu` varchar(5) NOT NULL,
  `tahun_penilaian` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penilaian`
--

INSERT INTO `tb_penilaian` (`idpenilaian`, `idindikator`, `rekomendasi`, `nilaikematangan`, `penilaianmandiri`, `tindaklanjut`, `target_waktu`, `tahun_penilaian`) VALUES
(1, 1, 'Kebijakan internal Tim Pengarah SPBE atau Tim Pengarah TIK atau sejenisnya sebaiknya ditetapkan dan memuat pengaturan tugas-tugas yang mendukung penerapan SPBE yang terpadu pada semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah', '2', '2', 'Membuat Kebijakan Tim Pengarah SPBE', '2019', '2018'),
(2, 2, 'Kebijakan internal proses bisnis sebaiknya ditetapkan dengan memuat pengaturan tersusunnya proses bisnis yang terintegrasi antar unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah', '8', '10', '- Revisi Perwali eGov atau Arsitektur SPBE (Proses Bisnis Integrasi). \r\n- SOP OPD terintegrasi', '2019', '2018'),
(3, 3, 'Kebijakan internal rencana induk SPBE sebaiknya ditetapkan dengan memuat pengaturan tersusunnya rencana induk yang mencakup secara lengkap visi, misi, strategi, sasaran, arsitektur, dan peta rencana SPBE', '14', '14', 'Membuat Kebijakan Rencana Induk SPBE', '2019', '2018'),
(4, 4, 'Kebijakan internal rencana dan anggaran TIK sebaiknya dilengkapi dengan memuat pengaturan terkait penyelarasan dengan rencana induk SPBE, pengendalian rencana dan anggaran TIK yang terpadu di dalam Instansi Pusat/Pemerintah Daerah, dan mendukung penerapan SPBE yang terpadu tidak hanya di dalam Instansi Pusat/Pemerintah Daerah, tetapi juga antar Instansi Pusat/Pemerintah Daerah dan/atau antar Instansi Pusat dengan Pemerintah Daerah', '22', '22', 'Membuat Kebijakan Anggaran dan  Belanja TIK', '2019', '2018'),
(5, 5, 'Kebijakan internal pengoperasian pusat data sebaiknya dilengkapi dengan memuat pengaturan pengoperasian dan pernanfaatan pusat data bagi semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah', '27', '28', 'Revisi Perwali eGov  atau Arsitektur SPBE (Pusat Data)', '2019', '2018'),
(6, 6, 'Kebijakan internal integrasi sistem aplikasi sebaiknya dilengkapi dengan memuat pengaturan integrasi sistem aplikasi antar Instansi Pusat/Pemerintah Daerah yang didasarkan pada integrasi proses bisnis antar Instansi Pusat/Pemerintah Daerah', '34', '34', 'Revisi Perwali eGov  atau Arsitektur SPBE (Integrasi Sistem)', '2019', '2018'),
(7, 7, 'Kebijakan internal penggunaan aplikasi umum berbagi pakai sebaiknya dilengkapi dengan memuat pengaturan integrasi dengan layanan SPBE lain yang telah tersedia di Instansi Pusat/Pemerintah Daerah', '40', '40', 'Revisi Perwali eGov  atau Arsitektur SPBE (Aplikasi Umum Berbagi Pakai)', '2019', '2018'),
(8, 8, 'Kebijakan internal layanan naskah dinas sebaiknya dilengkapi dengan memuat pengaturan kebutuhan dan penggunaan layanan naskah dinas secara elektronik pada semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah', '45', '46', 'Membuat Kebijakan Layanan Naskah Dinas', '2019', '2018'),
(9, 9, 'Kebijakan Internal Layanan Manajemen Kepegawaian sebaiknya ditetapkan dengan memuat pengaturan kebutuhan dan penggunaan layanan manajemen pegawai secara elektronik pada semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah', '50', '50', 'Membuat Kebijakan Layanan Manajemen Kepegawaian', '2019', '2018'),
(10, 10, 'Kebijakan Internal Layanan Manajemen Perencanaaan dan Penganggaran sebaiknya ditetapkan dengan memuat pengaturan kebutuhan dan penggunaan layanan manajemen perencanaan dan penganggaran secara elektronik pada semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah', '56', '56', 'Membuat Kebijakan  Layanan Manajemen Perencanaaan dan Penganggaran', '2019', '2018'),
(11, 11, 'Kebijakan Internal Layanan Manajemen Keuangan sebaiknya ditetapkan dengan memuat pengaturan kebutuhan dan penggunaan layanan manajemen keuangan secara elektronik pada semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah', '62', '62', 'Membuat Kebijakan Layanan Manajemen Keuangan', '2019', '2018'),
(12, 12, 'Kebijakan Internal Layanan Manajemen Kinerja sebaiknya dilengkapi dengan memuat pengaturan kebutuhan integrasi layanan layanan manajemen kinerja secara elektronik dengan layanan SPBE lain yang sudah tersedia di Instansi Pusat/Pemerintah Daerah atau integrasi layanan manajemen kinerja secara elektronik antar Instansi Pusat/Pemerintah Daerah dan/atau antar Instansi Pusat dengan Pemerintah Daerah', '70', '70', 'Kebijakan Layanan Manajemen Kinerja', '2019', '2018'),
(13, 13, 'Kebijakan Internal Layanan Pengadaan sebaiknya dilengkapi dengan memuat pengaturan kebutuhan integrasi layanan manajemen pengadaan secara elektronik dengan layanan SPBE lain yang sudah tersedia di Instansi Pusat/Pemerintah Daerah atau integrasi layanan pengadaan secara elektronik antar Instansi Pusat/Pemerintah Daerah dan/atau antar Instansi Pusat dengan Pemerintah Daerah', '76', '78', 'Revisi Perwali No 2 Tahun 2018 Tentang Layanan Pengadaan (Integrasi dengan Layanan SPBE lainnya)', '2019', '2018'),
(15, 14, 'Kebijakan Internal Layanan Pengaduan Publik sebaiknya dilengkapi dengan memuat pengaturan kebutuhan integrasi layanan pengaduan publik secara elektronik dengan layanan SPBE lain yang sudah tersedia di Instansi Pusat/Pemerintah Daerah atau integrasi layanan pengaduan publik secara elektronik antar Instansi Pusat/Pemerintah Daerah dan/atau antar Instansi Pusat dengan Pemerintah Daerah', '82', '84', 'Revisi Perwali No 45 Tahun 2014 Tentang Pengaduan Publik (Integrasi dengan Layanan SPBE lainnya)', '2019', '2018'),
(16, 15, 'Kebijakan Internal Layanan Dokumentasi dan Informasi Hukum sebaiknya ditetapkan dengan memuat pengaturan kebutuhan dan penggunaan layanan dokumentasi dan informasi hukum secara elektronik pada semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah', '86', '86', 'Membuat Kebijakan Layanan JDIH', '2019', '2018'),
(18, 17, 'Kebijakan Internal Layanan Publik sebaiknya dilengkapi dengan memuat pengaturan kebutuhan integrasi layanan publik secara elektronik dengan layanan SPBE lain yang sudah tersedia di Instansi Pusat/Pemerintah Daerah atau integrasi layanan publik secara elektronik antar Instansi Pusat/Pemerintah Daerah dan/atau antar Instansi Pusat dengan Pemerintah Daerah', '100', '102', 'Setiap Layanan Publik dibuatkan Kebijakan (Integrasi dengan Layanan SPBE lainnya)', '2019', '2018'),
(19, 18, 'Kebijakan Internal Layanan Publik sebaiknya dilengkapi dengan memuat pengaturan kebutuhan integrasi layanan publik secara elektronik dengan layanan SPBE lain yang sudah tersedia di Instansi Pusat/Pemerintah Daerah atau integrasi layanan publik secara elektronik antar Instansi Pusat/Pemerintah Daerah dan/atau antar Instansi Pusat dengan Pemerintah Daerah', '104', '104', 'Membentuk Tim Pengarah SPBE', '2019', '2018'),
(20, 19, 'Tim Pengarah SPBE atau Tim Pengarah TIK atau sejenisnya sebaiknya ditetapkan, serta menjalankan tugas dan fungsinya secara menyeluruh sesuai dengan kebijakan internal yang telah ditetapkan', '112', '114', 'Membuat Arsitektur SPBE (Proses Bisnis Integrasi)', '2019', '2018'),
(21, 20, 'Penerapan proses bisnis yang terintegrasi dengan sistem elektronik sebaiknya dapat diukur, dipantau, dan dievaluasi secara berkala', '117', '118', 'Membuat Rencana Induk SPBE', '2019', '2018'),
(22, 21, 'Rencana induk SPBE sebaiknya dilengkapi dengan mencakup visi, misi, strategi, sasaran, arsitektur, dan peta rencana SPBE sesuai dengan kebijakan internal yang telah ditetapkan.', '124', '124', 'Anggaran Belanja TIK diukur, dipantau dan dievaluasi berkala', '2019', '2018'),
(23, 22, 'Perencanaan dan penganggaran TIK sebaiknya tertuang dalam rencana kerja anggaran tahunan secara terpadu sebaiknya dapat dikendalikan oleh unit kerja/perangkat daerah yang berfungsi sebagai pengelola TIK, dan dapat diukur, dipantau, dan dievaluasi secara berkala', '130', '130', 'Pengembangan Data Center', '2019', '2018'),
(24, 23, 'Perencanaan kapasitas, pengendalian, dan pemantauan layanan dari satu atau beberapa pusat data (data center) sebaiknya dapat dilakukan secara berkala dan terpusat (manajemen tunggal)', '135', '138', 'Integrasi sesuai arsitektur dari Rencana Induk SPBE', '2019', '2018'),
(25, 24, 'Integrasi sistem aplikasi sebaiknya diterapkan secara menyeluruh berdasarkan pada arsitektur dan peta rencana dari rencana induk SPBE', '141', '144', 'Aplikasi Umum sesuai arsitektur dari Rencana Induk SPBE', '2019', '2018'),
(26, 25, 'Aplikasi umum sebaiknya diterapkan dan digunakan oleh seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah berdasarkan arsitektur dan peta rencana dari rencana induk SPBE', '148', '147', 'Integrasi Layanan Naskah Dinas dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(27, 26, 'Layanan naskah dinas elektronik sebaiknya ditingkatkan menjadi layanan kolaborasi dimana layanan tersebut dikolaborasikan/diintegrasikan dengan layanan SPBE lain berdasarkan arsitektur SPBE dan integrasi proses bisnis di dalam maupun antar Instansi Pusat/Pemerintah Daerah', '152', '152', 'Layanan Manajemen Kepegawaian ditingkatkan menjadi transaski dua arah berbasis online dan terintegrasi dengan SPBE lainnya', '2019', '2018'),
(28, 27, 'Layanan manajemen kepegawaian sebaiknya ditingkatkan menjadi layanan transaksi dimana proses-proses pada manajemen kepegawaian dilaksanakan secara otomasi seperti tindakan persetujuan dan verifikasi terhadap transaksi kenaikan pangkat, pengajuan cuti, dan sebagainya', '161', '162', 'Optimalisasi Layanan Manajemen Perencanaan dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(29, 28, 'Layanan manajemen perencanaan kegiatan yang terintegrasi sebaiknya ditingkatkan menjadi layanan optimalisasi dimana dapat melakukan pemenuhan permintaan perubahan layanan, penyesuaian terhadap perubahan-perubahan internal dan eksternal di Instansi Pusat/Pemerintah Daerah, dan penerapan manajemen perubahan', '167', '168', 'Optimalisasi Layanan Manajemen Penganggaran dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(30, 29, 'Layanan manajemen penganggaran yang terintegrasi sebaiknya ditingkatkan menjadi layanan optimalisasi dimana dapat melakukan pemenuhan permintaan perubahan layanan, penyesuaian terhadap perubahanperubahan internal dan eksternal di Instansi Pusat/Pemerintah Daerah, dan penerapan manajemen perubahan', '173', '174', 'Optimalisasi Layanan Manajemen Keuangan dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(31, 30, 'Layanan manajemen keuangan yang terintegrasi sebaiknya ditingkatkan menjadi layanan optimalisasi dir-nana dapat melakukan pemenuhan permintaan perubahan layanan, penyesuaian terhadap perubahanperubahan internal dan eksternal di Instansi Pusat/Pemerintah Daerah, dan penerapan manajemen perubahan', '178', '178', 'Optimalisasi Layanan Manajemen Kinerja dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(32, 31, 'Layanan manajemen kinerja sebaiknya ditingkatkan menjadi layanan kolaborasi dimana layanan tersebut dikolaborasikan/diintegrasikan dengan layanan SPBE lain berdasarkan arsitektur SPBE dan integrasi proses bisnis di dalam maupun antar Instansi Pusat/Pemerintah Daerah', '185', '186', 'Optimalisasi Layanan Pengadaan dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(34, 32, 'Layanan pengadaan yang terintegrasi sebaiknya ditingkatkan menjadi layanan optimalisasi dimana dapat melakukan pemenuhan permintaan perubahan layanan, penyesuaian terhadap perubahan-perubahan internal dan eksternal di Instansi Pusat/Pemerintah Daerah, dan penerapan manajemen perubahan', '190', '192', 'Optimalisasi Layanan Pengaduan Publik dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(35, 33, 'Layanan pengaduan publik ditingkatkan menjadi layanan kolaborasi dimana layanan tersebut dikolaborasikan/diintegrasikan dengan layanan SPBE lain berdasarkan arsitektur SPBE dan integrasi proses bisnis di dalam maupun antar Instansi Pusat/Pemerintah Daerah', '195', '195', 'Optimalisasi Layanan Dokumentasi dan Informasi Hukum agar proses layanan dari awal pengajuan hingga akhir berbasis  online ', '2019', '2018'),
(36, 34, 'Layanan jaringan dokumentasi dan informasi hukum (JDIH) sebaiknya ditingkatkan menjadi layanan transaksi dimana proses-proses pada layanan dokumendasi dan informasi hukum dilaksanakan secara otomasi seperti mengunduh atau mengunggah informasi terkait dokumentasi clan informasi hukum, melakukan pengajuan penambahan informasi dokumentasi hukum baru, proses validasi serta persetujuan dokumentasi informasi hukum baru yang diajukan, dan pencarian informasi hukum berbasis kecerdasan', '202', '204', 'Optimalisasi Layanan Whistle Blowing System dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(37, 35, '-	Optimalisasi  Layanan Perpajakan dengan mengkolaborasikan dalam satu dashboard dan dapat diintegrasikan dengan layanan SPBE lain.\r\n-	Membuat Kebijakan Internal Layanan Perpajakan yang dapat terintegrasi dengan SPBE lainnya\r\n-	Dilakukan monitoring dan evaluasi secara berkala untuk Layanan dan Kebijakannya', '206', '210', '-	Sistem integrasi PHR dengan Perijinan\r\n-	Sistem integrasi PBB dengan Perijinan\r\n-	Sistem integrasi BPHTB denganKantor BPN tujuannya (Perwali No 17 Tahun 2016)\r\n-	E-SPTPD  Sistem pelaporan pajak secara online (Perwali No. 16 Tahun 2016)\r\n-	I-PBB (informasi pelayanan Pajak Bumi dan Bangunan)\r\n-	Aplikasi integrasi Kasda online Penerimaan PAD Kota Denpasar', '2019', '2018'),
(38, 36, 'Layanan publik sebaiknya ditingkatkan menjadi layanan transaksi dimana pengguna dapat dengan mudah mendapatkan layanan dan sistem dapat menjalankan otomasi proses bisnis layanan dan menerapkan transaksi layanan ke dalam basis data secara daring (on-line)', '214', '216', 'Optimalisasi Layanan Bursa Kerja dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(39, 37, 'Layanan publik sebaiknya ditingkatkan menjadi layanan kolaborasi dimana layanan tersebut dikolaborasikan/diintegrasikan dengan layanan SPBE lain berdasarkan arsitektur SPBE dan integrasi proses bisnis di dalam maupun antar Instansi Pusat/Pemerintah Daerah', '220', '222', 'Optimalisasi Layanan Perijinan dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(42, 1, 'Masih Menunggu Hasil Kemenpan 2019', '4', '4', '-	Kebijakan Tim Pengarah SPBE \r\n-	Monev Kebijakan', '2020', '2019'),
(43, 2, 'Masih Menunggu Hasil Kemenpan 2019', '10', '10', '-	Kebijakan Proses Bisnis Integrasi\r\n-	Monev Kebijakan', '2020', '2019'),
(44, 3, 'Masih Menunggu Hasil Kemenpan 2019', '16', '16', '-	Kebijakan Rencana Induk Blue Print eGov\r\n-	Monev Kebijakan', '2020', '2019'),
(45, 4, 'Masih Menunggu Hasil Kemenpan 2019', '22', '22', '-	Kebijakan Anggaran dan  Belanja TIK\r\n-	Monev Kebijakan', '2020', '2019'),
(46, 5, 'Masih Menunggu Hasil Kemenpan 2019', '28', '28', '-	Revisi Perwali eGov  atau Rencana Induk SPBE (Pusat Data)\r\n-	Monev Kebijakan', '2020', '2019'),
(47, 6, 'Masih Menunggu Hasil Kemenpan 2019', '34', '34', '-	Revisi Perwali eGov  atau Rencana Induk  SPBE (Integrasi Sistem)\r\n-	Monev Kebijakan', '2020', '2019'),
(48, 7, 'Masih Menunggu Hasil Kemenpan 2019', '40', '40', '-	Kebijakan aplikasi monitoring dan evaluasi (Simonev) Karma Simanis\r\n-	Monev Kebijakan', '2020', '2019'),
(49, 8, 'Masih Menunggu Hasil Kemenpan 2019', '46', '46', '-	Kebijakan Layanan Naskah Dinas\r\n-	Monev Kebijakan', '2020', '2019'),
(50, 9, 'Masih Menunggu Hasil Kemenpan 2019', '52', '52', '-	Kebijakan Layanan Manajemen Kepegawaian (Simak di Hati)\r\n-	Monev Kebijakan', '2020', '2019'),
(51, 10, 'Masih Menunggu Hasil Kemenpan 2019', '58', '58', '-	Kebijakan Layanan Manajemen Perencanaaan dan Penganggaran\r\n-	Monev Kebijakan', '2020', '2019'),
(52, 11, 'Masih Menunggu Hasil Kemenpan 2019', '64', '64', '-	Membuat Kebijakan Layanan Manajemen Keuangan\r\n-	Monev Kebijakan', '2020', '2019'),
(53, 12, 'Masih Menunggu Hasil Kemenpan 2019', '70', '70', '-	Revisi Kebijakan Layanan Manajemen Kinerja\r\n-	Monev Kebijakan', '2020', '2019'),
(54, 13, 'Masih Menunggu Hasil Kemenpan 2019', '76', '76', '-	Revisi Perwali No 2 Tahun 2018 Tentang Layanan Pengadaan (Integrasi dengan Layanan SPBE lainnya)\r\n-	Monev Kebijakan', '2020', '2019'),
(55, 14, 'Masih Menunggu Hasil Kemenpan 2019', '82', '82', '-	Revisi Perwali No 45 Tahun 2014 Tentang Pengaduan Publik (Integrasi dengan Layanan SPBE lainnya)\r\n-	Monev Kebijakan', '2020', '2019'),
(56, 15, 'Masih Menunggu Hasil Kemenpan 2019', '88', '88', '-	Membuat Kebijakan Layanan JDIH\r\n-	Monev Kebijakan', '2020', '2019'),
(57, 16, 'Masih Menunggu Hasil Kemenpan 2019', '94', '94', '-	Membuat atau Revisi Kebijakan Layanan WBS\r\n-	Monev Kebijakan', '2020', '2019'),
(58, 17, 'Masih Menunggu Hasil Kemenpan 2019', '100', '100', '-	Kebijakan Layanan Perijinan\r\n-	Monev Kebijakan', '2020', '2019'),
(59, 18, 'Masih Menunggu Hasil Kemenpan 2019', '106', '106', '-	Membentuk Tim Pengarah SPBE\r\n-	Monev Berkala', '2020', '2019'),
(60, 19, 'Masih Menunggu Hasil Kemenpan 2019', '112', '112', '-	Menerapkan proses bisnis\r\n-	Monev Berkala', '2020', '2019'),
(61, 20, 'Masih Menunggu Hasil Kemenpan 2019', '118', '118', '-	Membuat Rencana Induk SPBE\r\n-	Monev Berkala', '2020', '2019'),
(62, 21, 'Masih Menunggu Hasil Kemenpan 2019', '124', '124', '-	Anggaran Belanja TIK OPD diukur, dipantau dan dievaluasi berkala', '2020', '2019'),
(63, 22, 'Masih Menunggu Hasil Kemenpan 2019', '130', '130', '-	Pengembangan Data Center\r\n-	Monev Berkala', '2020', '2019'),
(64, 23, 'Masih Menunggu Hasil Kemenpan 2019', '136', '136', '-	Integrasi sesuai arsitektur dari Rencana Induk SPBE\r\n-	Monev Berkala', '2020', '2019'),
(65, 24, 'Masih Menunggu Hasil Kemenpan 2019', '142', '142', '-	Optimalisasi Penerapan  eMonev yang terintegrasi dari perencanaan, penganggaran, hingga realisasi fisik serta keuangan dan kepegawaian.\r\n-	Monev Berkala', '2020', '2019'),
(66, 25, 'Masih Menunggu Hasil Kemenpan 2019', '148', '148', '-	Optimalisasi  Penerapan Layanan Naskah Dinas\r\n-	Monitoring Berkala', '2020', '2019'),
(67, 26, 'Masih Menunggu Hasil Kemenpan 2019', '154', '154', '-	Optimalisasi  Penerapan dan Pengembangan Layanan Kepegawaian\r\n-	Monitoring Berkala', '2020', '2019'),
(68, 27, 'Masih Menunggu Hasil Kemenpan 2019', '161', '161', '-	Optimalisasi  Penerapan Layanan Manajemen Perencanaan\r\n-	Monev Berkala', '2020', '2019'),
(69, 28, 'Masih Menunggu Hasil Kemenpan 2019', '167', '167', '-	Optimalisasi  Penerapan Layanan Manajemen Penganggaran\r\n-	Monev Berkala', '2020', '2019'),
(70, 29, 'Masih Menunggu Hasil Kemenpan 2019', '173', '173', '-	Optimalisasi  Penerapan Layanan Manajemen Keuangan\r\n-	Monev Berkala', '2020', '2019'),
(71, 30, 'Masih Menunggu Hasil Kemenpan 2019', '178', '178', '-	Optimalisasi  Penerapan dan Pengembangan Layanan Manajemen Kinerja\r\n-	Monev Berkala', '2020', '2019'),
(72, 31, 'Masih Menunggu Hasil Kemenpan 2019', '185', '185', '-	Optimalisasi  Penerapan Layanan Pengadaan\r\n-	Monev Berkala', '2020', '2019'),
(73, 32, 'Masih Menunggu Hasil Kemenpan 2019', '191', '190', '-	Optimalisasi  Penerapan dan Pengembangan Layanan Pengaduan Publik\r\n-	Monev Berkala', '2020', '2019'),
(74, 33, 'Masih Menunggu Hasil Kemenpan 2019', '196', '196', '-	Optimalisasi  Penerapan dan Pengembangan Layanan Dokumentasi dan Informasi Hukum\r\n-	Monev Berkala', '2020', '2019'),
(75, 34, 'Masih Menunggu Hasil Kemenpan 2019', '203', '202', '-	Optimalisasi  Penerapan dan Pengembangan Layanan WBS\r\n-	Monev Berkala', '2020', '2019'),
(76, 35, 'Masih Menunggu Hasil Kemenpan 2019', '208', '208', '-	Optimalisasi  Layanan Perpajakan dengan mengkolaborasikan dalam satu dashboard dan dapat diintegrasikan dengan layanan SPBE lain.\r\n-	Membuat Kebijakan Internal Layanan Perpajakan yang dapat terintegrasi dengan SPBE lainnya\r\n-	Monev Layanan dan Kebijakan secara Berkala', '2020', '2019'),
(77, 36, 'Masih Menunggu Hasil Kemenpan 2019', '215', '214', '-	Optimalisasi Penerapan dan Pengembangan Layanan Bursa Kerja \r\n-	Revisi Kebijakan Internal Layanan Bursa Kerja Online serta dapat terintegrasi dengan SPBE lainnya\r\n-	Monev Berkala', '2020', '2019'),
(78, 37, 'Masih Menunggu Hasil Kemenpan 2019', '221', '221', '-	Optimalisasi Penerpan dan Pengembangan Layanan Perijinan\r\n-	Monev Berkala', '2020', '2019'),
(128, 16, 'Kebijakan Internal Layanan Whistle Blowing System (WBS) sebaiknya dilengkapi dengan memuat pengaturan kebutuhan integrasi layanan WBS secara elektronik dengan layanan SPBE lain yang sudah tersedia cli Instansi Pusat/Pemerintah Daerah atau integrasi layanan WBS secara elektronik antar Instansi Pusat/Pemerintah Daerah dan/atau antar Instansi Pusat dengan Pemerintah Daerah.', '94', '96', 'Revisi Perwali No 45 Tahun 2014 Tentang Pengaduan Publik (Integrasi dengan Layanan SPBE lainnya).\r\nAtau membuat Kebijakan khusus WBS.\r\n', '2019', '2018'),
(129, 1, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Kebijakan Tim Pengarah SPBE \r\n- Monev Kebijakan', '2021', '2020'),
(130, 2, 'Masih Menunngu Rekomendasi dari Kemenpan', '-', '-', '- Kebijakan Proses Bisnis Integrasi \r\n- Monev Kebijakan', '2021', '2020'),
(131, 3, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Kebijakan Rencana Induk Blue Print eGov\r\n- Monev Kebijakan', '2021', '2020'),
(132, 4, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Kebijakan Anggaran dan Belanja TIK\r\n- Monev Kebijakan', '2021', '2020'),
(133, 5, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Revisi Perwali eGov atau Rencana Induk SPBE (Pusat Data)\r\n- Monev Kebijakan', '2021', '2020'),
(134, 6, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Revisi Perwali eGov atau Rencana Induk SPBE (Integrasi Sistem)\r\n- Monev Kebijakan', '2021', '2020'),
(135, 7, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Kebijakan aplikasi monitoring dan evaluasi (Simonev) Karma Simanis\r\n- Monev Kebijakan', '2021', '2020'),
(136, 8, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Kebijakan Layanan Naskah Dinas\r\n- Monev Kebijakan', '2021', '2020'),
(137, 9, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Kebijakan Layanan Manajemen Kepegawaian (Simak di Hati)\r\n- Monev Kebijakan', '2021', '2020'),
(138, 10, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Kebijakan Layanan Manajemen Perencanaaan dan Penganggaran\r\n- Monev Kebijakan', '2021', '2020'),
(139, 11, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Membuat Kebijakan Layanan Manajemen Keuangan\r\n- Monev Kebijakan', '2021', '2020'),
(140, 12, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Revisi Kebijakan Layanan Manajemen Kinerja\r\n- Monev Kebijakan', '2021', '2020'),
(141, 13, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Revisi Perwali No 2 Tahun 2018 Tentang Layanan Pengadaan (Integrasi dengan Layanan SPBE lainnya)\r\n- Monev Kebijakan', '2021', '2020'),
(142, 14, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Revisi Perwali No 45 Tahun 2014 Tentang Pengaduan Publik (Integrasi dengan Layanan SPBE lainnya)\r\n- Monev Kebijakan', '2021', '2020'),
(143, 15, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Membuat Kebijakan Layanan JDIH \r\n- Monev Kebijakan', '2021', '2020'),
(144, 16, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Membuat atau Revisi Kebijakan Layanan WBS\r\n- Monev Kebijakan', '2021', '2020'),
(145, 17, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Kebijakan Layanan Perijinan\r\n- Monev Kebijakan', '2021', '2020'),
(146, 18, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Membentuk Tim Pengarah SPBE\r\n- Monev Berkala', '2021', '2020'),
(147, 19, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Menerapkan proses bisnis\r\n- Monev Berkala', '2021', '2020'),
(148, 20, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Membuat Rencana Induk SPBE\r\n- Monev Berkala', '2021', '2020'),
(149, 21, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Anggaran Belanja TIK OPD diukur, dipantau dan dievaluasi berkala', '2021', '2020'),
(150, 22, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Pengembangan Data Center\r\n- Monev Berkala', '2021', '2020'),
(151, 23, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Integrasi sesuai arsitektur dari Rencana Induk SPBE\r\n- Monev Berkala', '2021', '2020'),
(152, 24, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Optimalisasi Penerapan eMonev yang terintegrasi dari perencanaan, penganggaran, hingga realisasi fisik serta keuangan dan kepegawaian.\r\n- Monev Berkala', '2021', '2020'),
(153, 25, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Optimalisasi Penerapan Layanan Naskah Dinas\r\n- Monitoring Berkala', '2021', '2020'),
(154, 26, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Optimalisasi Penerapan dan Pengembangan Layanan Kepegawaian\r\n- Monitoring Berkala', '2021', '2020'),
(155, 27, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Optimalisasi Penerapan Layanan Manajemen Perencanaan\r\n- Monev Berkala', '2021', '2020'),
(156, 28, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Optimalisasi Penerapan Layanan Manajemen Penganggaran\r\n- Monev Berkala', '2021', '2020'),
(157, 29, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Optimalisasi Penerapan Layanan Manajemen Keuangan\r\n- Monev Berkala', '2021', '2020'),
(158, 30, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Optimalisasi Penerapan dan Pengembangan Layanan Manajemen Kinerja\r\n- Monev Berkala', '2021', '2020'),
(159, 31, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Optimalisasi Penerapan Layanan Pengadaan\r\n- Monev Berkala', '2021', '2020'),
(160, 32, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Optimalisasi Penerapan dan Pengembangan Layanan Pengaduan Publik\r\n- Monev Berkala', '2021', '2020'),
(161, 33, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Optimalisasi Penerapan dan Pengembangan Layanan Dokumentasi dan Informasi Hukum\r\n- Monev Berkala', '2021', '2020'),
(162, 34, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Optimalisasi Penerapan dan Pengembangan Layanan WBS\r\n- Monev Berkala', '2021', '2020'),
(163, 35, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Optimalisasi Layanan Perpajakan dengan mengkolaborasikan dalam satu dashboard dan dapat diintegrasikan dengan layanan SPBE lain.\r\n- Membuat Kebijakan Internal Layanan Perpajakan yang dapat terintegrasi dengan SPBE lainnya\r\n- Monev Layanan dan Kebijakan secara Berkala', '2021', '2020'),
(164, 36, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Optimalisasi Penerapan dan Pengembangan Layanan Bursa Kerja\r\n- Revisi Kebijakan Internal Layanan Bursa Kerja Online serta dapat terintegrasi dengan SPBE lainnya\r\n- Monev Berkala', '2021', '2020'),
(165, 37, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', '- Optimalisasi Penerpan dan Pengembangan Layanan Perijinan\r\n- Monev Berkala', '2021', '2020'),
(166, 40, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 2\r\nNilai kematangan pusat level : 4\r\nKeterangan :\r\nKebijakan Internal Perwali Kota Denpasar No 35 Tahun 2014 Tentang Penyelenggaraan Sistem Elektronik di Lingkungan Pemerintah Kota Denpasar.\r\nPerwali No 35 Tahun 2014 telah dievaluasi dan direviu, saat ini dalam proses fasilitasi pada Biro Hukum Provinsi Bali.\r\nDraft Revisi Perwali Kota Denpasar tentang  Penyelenggaraan SPBE di Lingkungan Pemerintah Kota Denpasar.', '2022', '2021'),
(167, 41, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 2\r\nNilai kematangan pusat level : 1\r\nKeterangan :\r\nKebijakan Internal Perwali Kota Denpasar No 35 Tahun 2014 Tentang Penyelenggaraan Sistem Elektronik di Lingkungan Pemerintah Kota Denpasar.\r\nPerwali No 35 Tahun 2014 telah dievaluasi dan direviu, saat ini dalam proses fasilitasi pada Biro Hukum Provinsi Bali.\r\nDraft Revisi Perwali Kota Denpasar tentang  Penyelenggaraan SPBE di Lingkungan Pemerintah Kota Denpasar.', '2022', '2021'),
(168, 42, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 4\r\nNilai kematangan pusat level : 4\r\nKeterangan :\r\nKebijakan Internal Perwali Kota Denpasar No 35 Tahun 2014 Tentang Penyelenggaraan Sistem Elektronik di Lingkungan Pemerintah Kota Denpasar.\r\nPerwali No 35 Tahun 2014 telah dievaluasi dan direviu, saat ini dalam proses fasilitasi pada Biro Hukum Provinsi Bali.\r\nDraft Revisi Perwali Kota Denpasar tentang  Penyelenggaraan SPBE di Lingkungan Pemerintah Kota Denpasar.', '2022', '2021'),
(169, 43, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 4\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nKebijakan Internal Perwali Kota Denpasar No 35 Tahun 2014 Tentang Penyelenggaraan Sistem Elektronik di Lingkungan Pemerintah Kota Denpasar.\r\nPerwali No 35 Tahun 2014 telah dievaluasi dan direviu, saat ini dalam proses fasilitasi pada Biro Hukum Provinsi Bali.\r\nDraft Revisi Perwali Kota Denpasar tentang  Penyelenggaraan SPBE di Lingkungan Pemerintah Kota Denpasar.', '2022', '2021'),
(170, 44, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 4\r\nNilai kematangan pusat level : 3\r\nKebijakan Internal Perwali Kota Denpasar No 35 Tahun 2014 Tentang Penyelenggaraan Sistem Elektronik di Lingkungan Pemerintah Kota Denpasar.\r\nPerwali No 35 Tahun 2014 telah dievaluasi dan direviu, saat ini dalam proses fasilitasi pada Biro Hukum Provinsi Bali.\r\nDraft Revisi Perwali Kota Denpasar tentang  Penyelenggaraan SPBE di Lingkungan Pemerintah Kota Denpasar.', '2022', '2021'),
(171, 45, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 4\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nKebijakan Internal Perwali Kota Denpasar No 35 Tahun 2014 Tentang Penyelenggaraan Sistem Elektronik di Lingkungan Pemerintah Kota Denpasar.\r\nPerwali No 35 Tahun 2014 telah dievaluasi dan direviu, saat ini dalam proses fasilitasi pada Biro Hukum Provinsi Bali.\r\nDraft Revisi Perwali Kota Denpasar tentang  Penyelenggaraan SPBE di Lingkungan Pemerintah Kota Denpasar.', '2022', '2021'),
(172, 46, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 4\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nKebijakan Internal Perwali Kota Denpasar No 35 Tahun 2014 Tentang Penyelenggaraan Sistem Elektronik di Lingkungan Pemerintah Kota Denpasar.\r\nPerwali No 35 Tahun 2014 telah dievaluasi dan direviu, saat ini dalam proses fasilitasi pada Biro Hukum Provinsi Bali.\r\nDraft Revisi Perwali Kota Denpasar tentang  Penyelenggaraan SPBE di Lingkungan Pemerintah Kota Denpasar.', '2022', '2021'),
(173, 47, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 2\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nKebijakan Internal Perwali Kota Denpasar No 35 Tahun 2014 Tentang Penyelenggaraan Sistem Elektronik di Lingkungan Pemerintah Kota Denpasar.\r\nPerwali No 35 Tahun 2014 telah dievaluasi dan direviu, saat ini dalam proses fasilitasi pada Biro Hukum Provinsi Bali.\r\nDraft Revisi Perwali Kota Denpasar tentang  Penyelenggaraan SPBE di Lingkungan Pemerintah Kota Denpasar.', '2022', '2021'),
(174, 48, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 4\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nKebijakan Internal Perwali Kota Denpasar No 35 Tahun 2014 Tentang Penyelenggaraan Sistem Elektronik di Lingkungan Pemerintah Kota Denpasar.\r\nPerwali No 35 Tahun 2014 telah dievaluasi dan direviu, saat ini dalam proses fasilitasi pada Biro Hukum Provinsi Bali.\r\nDraft Revisi Perwali Kota Denpasar tentang  Penyelenggaraan SPBE di Lingkungan Pemerintah Kota Denpasar.', '2022', '2021'),
(175, 49, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 4\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nSK Walikota Nomor 188.45/621/HK/2018 tentang Tim Evaluator Internal SPBE di Lingkungan Pemkot Denpasar.\r\nDireviu dengan Kebijakan baru SK Walikota Nomor 188.45/ 1586 /HK/2019 tentang Perubahan Tim Pengarah SPBE.\r\nDireviu dengan Kebijakan Draft SK WALIKOTA tentang Tim Asesor Internal SPBE TAHUN 2021.', '2022', '2021'),
(176, 50, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 4\r\nNilai kematangan pusat level : 2\r\nKeterangan :\r\nPemerintah Kota Denpasar telah memiliki Dokumen Blueprint e-Government Kota Denpasar 2019-2023.\r\nDilakukan reviu dan evaluasi dengan menyusun Draft Arsitektur SPBE.', '2022', '2021'),
(177, 51, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 4\r\nNilai kematangan pusat level : 2\r\nKeterangan :\r\nPemerintah Kota Denpasar telah memiliki Dokumen Blueprint e-Government Kota Denpasar 2019-2023.\r\nDilakukan reviu dan evaluasi dengan menyusun Draft Peta Rencana SPBE.', '2022', '2021'),
(179, 52, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 2\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nRencana dan Anggaran SPBE PD belum seluruhnya dikonsultasikan ke Dinas Kominfos\r\nSalah satunya PD Badan Perencanaan Pembangunan Daerah mengkonsultasikan rencana anggaran layanan SPBE Geoportal Satu Data ke Dinas Kominfos.\r\nDraft SK Tim Koordinasi Forum Satu Data.', '2022', '2021'),
(180, 52, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 2\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nRencana dan Anggaran SPBE PD belum seluruhnya dikonsultasikan ke Dinas Kominfos\r\nSalah satunya PD Badan Perencanaan Pembangunan Daerah mengkonsultasikan rencana anggaran layanan SPBE Geoportal Satu Data ke Dinas Kominfos.\r\nDraft SK Tim Koordinasi Forum Satu Data.', '2022', '2021'),
(181, 53, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 4\r\nNilai kematangan pusat level : 4\r\nKeterangan :\r\nSK Peta Proses Bisnis Pemerintah Kota Denpasar.\r\nDraft Arsitektur SPBE tentang Proses Bisnis Halaman 49.\r\nSalah satu Proses Bisnis Layanan SPBE yaitu Layanan Sidarling SIDARLING - Sistem Informasi Sadar dan Peduli Lingkungan.', '2022', '2021'),
(182, 53, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 4\r\nNilai kematangan pusat level : 4\r\nKeterangan : \r\nSK Peta Proses Bisnis Pemerintah Kota Denpasar.\r\nDraft Arsitektur SPBE tentang Proses Bisnis Halaman 49.\r\nSalah satu Proses Bisnis Layanan SPBE yaitu Layanan Sidarling SIDARLING - Sistem Informasi Sadar dan Peduli Lingkungan.', '2022', '2021'),
(183, 53, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 4\r\nNilai kematangan pusat level : 4\r\nKeterangan :\r\nSK Peta Proses Bisnis Pemerintah Kota Denpasar.\r\nDraft Arsitektur SPBE tentang Proses Bisnis Halaman 49.\r\nSalah satu Proses Bisnis Layanan SPBE yaitu Layanan Sidarling SIDARLING - Sistem Informasi Sadar dan Peduli Lingkungan.', '2022', '2021'),
(184, 54, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 3\r\nNilai kematangan pusat level : 4\r\nKeterangan :\r\nPerangkat Daerah telah mengkonsultasikan pembangunan aplikasi SPBE ke Dinas Kominfo. Terdapat Perwali, SOP, Standarisasi dan Contoh Spesifikasi Sistem Informasi. ', '2022', '2021'),
(185, 55, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 4\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nLayanan Pusat Data telah digunakan oleh seluruh Perangkat Daerah.\r\nPemerintah Kota Denpasar memanfaatkan fasilitas Layanan Pusat Data Nasional dari Kementrian Kominfo.\r\nReviu dan evaluasi dilakukan secara berkala.', '2022', '2021'),
(186, 56, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 5\r\nNilai kematangan pusat level : 5\r\nKeterangan :\r\n1.	Seluruh perangkat daerah saat ini sudah terkoneksi dengan jaringan fiber optik milik Pemkot Denpasar sampai di tingkat desa dan kelurahan.\r\n2.	Jaringan fiber yang ada menggunakan 12 core dan dropcore.\r\n3.	Total link yang terkoneksi sejumlah 65 titik dengan rincian 50 titik perangakt daerah, 5 titik desa dan 10 kelurahan.\r\n4.	Selain milik sendiri, juga terdapat fiber optic milik penyedia swasta yang digunakan dengan sistem sewa dan CSR.\r\n5.	Jaringan infrastruktur kota denpasar juga terkoneksi ke kementrian dalam negeri dengan sistem jaringan tertutup.\r\n6.	Seluruh perangkat daerah dapat mengakses data melalui jaringan yang ada.\r\n7.	Jaringan fiber optik yang ada digunakan untuk akses internet, aplikasi, dan server.\r\n8.	Setiap tahun dilakukan evaluasi dan peningkatan kapasitas dan perbaikan perangkat yang mengalami kerusakan.\r\n9.	Pengelolaan infrastruktur dilaksanakan terpusat di Diskominfo Denpasar, dimana Perangkat Daerah lain hanya menggunakan layanan tersebut.\r\n10.	Infrastruktur yang ada juga digunakan untuk menyediakan akses internet publik secara gratis di beberapa area publik.', '2022', '2021'),
(187, 87, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 3\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nBeberapa sistem informasi layanan yang telah terintegrasi secara bertahap dan telah diterapkan di seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah.', '2022', '2021'),
(188, 58, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 4\r\nNilai kematangan pusat level : 4\r\nKeterangan :\r\nProgram kerja Tim Koordinasi SPBE Kota Denpasar telah dikoordinasikan ke semua perangkat daerah serta telah dilakukan reviu dan evaluasi.', '2022', '2021'),
(189, 59, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 5\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nTerdapat beberapa Layanan SPBE yang diterapkan dengan kolaborasi antar Perangkat Daerah, salah satunya eSewaka Dharma https://esewakadharma.denpasarkota.go.id/\r\nAplikasi e-Sewaka Dharma bertujuan untuk mendekatkan pelayanan Desa/Kelurahan serta mengoptimalkan peran Kepala Lingkungan/Kepala Dusun dalam melayani masyarakat sehingga diharapkan mampu meminimalisir keramaian sebagai penerapan Social dan Physical Distancing di Kota Denpasar.\r\nMempermudah manajemen data administrasi Desa/Kelurahan, mempercepat pelayanan kepada masyararakat yang membutuhkan administrasi Desa/Kelurahan, serta memudahkan pelaporan untuk mengetahui kondisi terkini dari data administrasi Desa/Kelurahan. ', '2022', '2021'),
(190, 60, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 2\r\nNilai kematangan pusat level : 2\r\nKeterangan :\r\nPenerapan managemen resiko dilaksanakan tanpa mengacu pada pedoman manajemen resiko SPBE.\r\nSK Walikota tentang Penyelenggaraan SPIP.\r\nBlueprint eGovernment terkait resiko pada halaman 13 resiko pada implementasi TIK, halaman 74 cctv kawasan rawan bencana, halaman 93 kebijakan untuk mereduksi resiko.\r\nSalah manajemen resiko SPBE yaitu pada pengelolaan Data Center.', '2022', '2021'),
(191, 60, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 2\r\nNilai kematangan pusat level : 2\r\nKeterangan :\r\nPenerapan managemen resiko dilaksanakan tanpa mengacu pada pedoman manajemen resiko SPBE.\r\nSK Walikota tentang Penyelenggaraan SPIP.\r\nBlueprint eGovernment terkait resiko pada halaman 13 resiko pada implementasi TIK, halaman 74 cctv kawasan rawan bencana, halaman 93 kebijakan untuk mereduksi resiko.\r\nSalah manajemen resiko SPBE yaitu pada pengelolaan Data Center.', '2022', '2021'),
(192, 61, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 2\r\nNilai kematangan pusat level : 2\r\nKeterangan :\r\nPengendalian Keamanan Informasi dilakukan pada seluruh perangkat daerah berpedoman pada Standar Keamanan Informasi e-Government Kota Denapsar berdasarkan ISO 27001.', '2022', '2021'),
(193, 62, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 4\r\nNilai kematangan pusat level : 2\r\nKeterangan :\r\nManajemen Data dilaksanakan melalui Forum Satu Data yang diterapkan ke seluruh perangkat daerah', '2022', '2021'),
(194, 63, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 2\r\nNilai kematangan pusat level : 2\r\nKeterangan :\r\nManajemen Aset TIK dilaksanakan tanpa mengacu pada pedoman Manajemen Aset TIK yang mencakup proses perencanaan, pengadaan, pemanfaatan/penggunaan, dan penghapusan aset TIK.', '2022', '2021'),
(195, 64, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 2\r\nNilai kematangan pusat level : 2\r\nKeterangan :\r\nPerencanaan Pengembangan kompetensi SPBE telah disusun untuk sebagian sumberdaya SPBE yang telah tertuang pada Analisis Kebutuhan Diklat yang disusun tahun 2019. Untuk penyempurnaan perencanaan pengembangan kompetensi sedang dalam proses dikarenakan ada beberapa peraturan-peratuan baru yang perlu disesuaikan. Kegiatan pengembangan kompetensi belum dapat direalisasi karena mengalami refocussing anggaran terkait penanganan cepat covid-19.\r\nKompetensi SDM SPBE terdapat dalam Uraian Jabatan Dinas Komunikasi Informatika dan Statistik.', '2022', '2021'),
(196, 65, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 3\r\nNilai kematangan pusat level : 2\r\nKeterangan :\r\nSistem Informasi Dokumen Kota Denpasar atau disebut Sidok merupakan website yang terintegrasikan dengan website Pusat Data Kota Denpasar, diperuntukan untuk memanajemen dokumen di seluruh PD di Lingkungan Pemerintahan Kota Denpasar.', '2022', '2021'),
(197, 66, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 3\r\nNilai kematangan pusat level : 2\r\nKeterangan :\r\nSaat Pandemi Covid19 melanda, terdapat beberapa layanan yang mengalami perubahan dengan transformasi digital penerapan SPBE pada beberapa layanan publik maupun administrasi pemerintahan, diantaranya surat menyurat elektronik, absensi online dengan GPS, tanda tangan elektronik dan lainnya yang diimplementasikan pada seluruh Perangkat Daerah di lingkungan Pemerintah Kota Denpasar.\r\nPerwali Budaya Kerja di Lingkungan Pemerintah Kota Denpasar.\r\nSK Penetapan Sang Sewaka - Agen Perubahan.', '2022', '2021'),
(198, 67, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 5\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nManajemen Layanan SPBE salah satunya pada Layanan Sidarling https://sidarling.denpasarkota.go.id/\r\n\r\nDinas Linkungan Hidup dan Kebersihan Kota Denpasar (DLHK Kota Denpasar) mengembangkan SIDARLING (Sistem Informasi Sadar dan Peduli Lingkungan), dimana sistem ini merupakan : Sistem Informasi atau Portal yang berhubungan dengan lingkungan hidup dan kebersihan Kota Denpasar, dan pemberian reward kepada masyarakat yang sadar dan peduli terhadap lingkungannya di Kota Denpasar. Portal yang menghubungkan antara pemerintah - dunia usaha (pengelolaan/daur ulang sampah) â€“ masyarakat peduli lingkungan. Portal yang mengintegrasikan seluruh aplikasi yang berhubungan dengan pengelolaan sampah dan yang terkait dengan hal tersebut.\r\n\r\nLayanan Sidarling direviu dan evaluasi secara berkala.', '2022', '2021'),
(199, 68, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 3\r\nNilai kematangan pusat level : 2\r\nKeterangan :\r\nKegiatan Audit Infrastruktur dilaksanakan sesuai pedoman ISO 27001\r\nKegiatan Audit TIK tahun 2019.\r\nKegiatan Audut TIK Tahun 2020.\r\nDraft SK Auditor Internal SPBE.', '2022', '2021'),
(200, 68, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 3\r\nNilai kematangan pusat level : 2\r\nKeterangan :\r\nKegiatan Audit Infrastruktur dilaksanakan sesuai pedoman ISO 27001\r\nKegiatan Audit TIK tahun 2019.\r\nKegiatan Audut TIK Tahun 2020.\r\nDraft SK Auditor Internal SPBE.', '2022', '2021'),
(201, 69, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 3\r\nNilai kematangan pusat level : 2\r\nKeterangan :\r\nKegiatan Audit Apliaksi dilaksanakan sesuai pedoman ISO 27001.\r\nKegiatan Audit TIK tahun 2019.\r\nKegiatan Audut TIK Tahun 2020.\r\nDraft SK Auditor Internal SPBE.\r\nKegiatan Audit TI Aplikasi SPSE.', '2022', '2021'),
(202, 69, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 3\r\nNilai kematangan pusat level : 2\r\nKeterangan :\r\nKegiatan Audit Apliaksi dilaksanakan sesuai pedoman ISO 27001.\r\nKegiatan Audit TIK tahun 2019.\r\nKegiatan Audut TIK Tahun 2020.\r\nDraft SK Auditor Internal SPBE.\r\nKegiatan Audit TI Aplikasi SPSE.', '2022', '2021'),
(203, 70, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 3\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nKegiatan Audit Keamanan Informasi dilaksanakan sesuai pedoman ISO 27001.\r\nKegiatan Audit TIK tahun 2019.\r\nKegiatan Audut TIK Tahun 2020.\r\nDraft SK Auditor Internal SPBE.', '2022', '2021'),
(204, 70, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 3\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nKegiatan Audit Keamanan Informasi dilaksanakan sesuai pedoman ISO 27001.\r\nKegiatan Audit TIK tahun 2019.\r\nKegiatan Audut TIK Tahun 2020.\r\nDraft SK Auditor Internal SPBE.', '2022', '2021'),
(205, 71, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 5\r\nNilai kematangan pusat level : 4\r\nKeterangan :\r\nAplikasi SIPD (Sistem Informasi Pemerintah Daerah) adalah jaringan yang mengumpulakan data secara terpadu di daerah dan pusat dengan menggunakan teknologi informasi sebagai dukungan dalam perencanaan dan evaluasi daerah.\r\nTelah direviu terhadap aplikasi e-planning untuk mengintegrasikan perencanaan pembagunan daerah di kota Denpasar. ', '2022', '2021'),
(206, 72, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 3\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nAplikasi SIPD adalah Aplikasi yang dikeluarkan oleh Kementrian Dalam Negeri yang sudah sesuai dengan Peremdagri 90 Tahun 2019 tentang klasifiksi, kodefikasi dan nomenklatur perencanaan Pembangunan dan Keuangan Daerah. https://denpasar.sipd.kemendagri.go.id\r\nUntuk mendapatkan informasi tentang Anggaran yang telah di input oleh masing - masing perangkat Daerah dapat di lihat pada menu Dokumen Anggaran / RKA.\r\nUntuk memvaliadasi data Penggaran di Aplikasi  SIPD hanya bisa menggunakan akun Kepala OPD. https://denpasar.sipd.kemendagri.go.id/', '2022', '2021'),
(207, 73, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 3\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nUntuk menunjang pelayanan keuangan berbasis elektronik yang sebelumnya menggunakan SIPKD sekarang menggunakan Apikasi SIPD dengan Menu Penatusahaan Pengeluaran yang nantinya dapat membantu OPD dalam proses penginputan SPP, SPM dan SP2D. https://denpasar.sipd.kemendagri.go.id/siap\r\nProses Pengunduhan dokumen hanya dilakukan oleh user bendahara pengeluaran SKPD.pengunduhan dokumen ini melampirkan data excel yang sudah ada di Aplikasi SIPD.\r\nMenu Penatausahaan pengeluaran terdapat menu validasi yang berfungsi untuk menvalidasi Sub kegiatan Belanja, Pendapatan dan Pembiayaan.', '2022', '2021'),
(208, 74, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 5\r\nNilai kematangan pusat level : 5\r\nKeterangan :\r\nLayanan pengadaan barang dan jasa memberikan layanan seperti transaksi basis data, validasi data, mekanisme  persetujuan, dan analitik data dapat di lihat pada https://eproc.denpasarkota.go.id/eproc4/ menu cari paket , lalu pilih paket yang diinginkan.\r\n\r\nKolaborasi dengan layanan elektronik lain, misalnya Layanan Penganggaran Berbasis Elektronik, Layanan Perencanaan Berbasis Elektronik, Layanan Keuangan Berbasis Elektronik, Layanan Pengadaan Barang dan Jasa Berbasis Elektronik Instansi Pusat/Pemerintah Daerah lain, dan/atau layanan SPBE Instansi Pusat/Pemerintah Daerah lain dapat dilihat pada https://eproc.denpasarkota.go.id/eproc4/ menu AMEL.\r\n\r\nperbaikan  berdasarkan hasil reviu dan evaluasi terhadap perubahan lingkungan, peraturan perundang-undangan, teknologi atau  kebutuhan Instansi Pusat/Pemerintah Daerah dapat dilihat pada perubahan Perpres 54/2010 Ke Perpres 16/2018', '2022', '2021'),
(209, 75, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 5\r\nNilai kematangan pusat level : 5\r\nKeterangan : Sistem Simak Di Hati telah memberikan Layanan informasi secara online, memberikan layanan interaksi pencarian informasi kepegawaian, mengunggah/mengunduh dokumen kepegawaian, transaksi melakukan pengajuan perubahan data dan Validasi pengajuan oleh admin, melakukan pengajuan kenaikan pangkat, karpeg/karis/karsu, dan laporan2 kepegawaian yang menunjang dalam pengambilan kebijakan serta sudah terintegrasi dengan beberapa SPBE yang lain seperti dengan DIVOS (Denpasar Integrated Virtual Office System) https://divos.denpasarkota.go.id dan Karma Simanis (Sewakadarma Sistem Monitoring Administrasi Pembangunan) https://simonev.denpasarkota.go.id/', '2022', '2021'),
(210, 76, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 4\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nLayanan Kearsipan Dinamis memberikan layanan surat menyurat dan arsip, berkolaborasi dengan data kepegawaian BKPSDM Kota Denpasar.', '2022', '2021'),
(211, 77, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 3\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nAplikasi SIMDA BMD adalah Aplikasi yang dikeluarkan oleh Badan Pengawasan Keuangan dan Pembangunan Perwakilan Provinsi Bali. Aplikasi Dekstop yang diharuskan menginstal instaler di Dekstop masing-masing OPD (Local Network).\r\nMenu data Entry hanya bisa diakses oleh pengurus barang dan Admin  SIMDA untuk proses pengadaan Barang setiap tahun anggaran , tidak ada mengunggah dokumen  apapun dalam proses ini. Tipe data yang di input dibagi menjadi Tanah (KIB A), Peralatan dan Mesin (KIB B), Gedung dan Bangunan (KIB C), Jalan Irigasi dan Jaringan (KIB D), Aset Tetap Lainnya (KIB E), Konstruksi Dalam Pengerjaan (KIB E) dan Aset Tak Berwujud (aplikasi / Software).', '2022', '2021');
INSERT INTO `tb_penilaian` (`idpenilaian`, `idindikator`, `rekomendasi`, `nilaikematangan`, `penilaianmandiri`, `tindaklanjut`, `target_waktu`, `tahun_penilaian`) VALUES
(212, 78, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 3\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nLayanan Pengawasan Internal Pemerintah Berbasis Elektronik yaitu PRO Denpasar menu WBS yang khusus ditangani oleh Inspektorat, memberikan layanan transaksi kepada pengguna terkait pengawasan internal pemerintah seperti otomasi alur kerja, transaksi basis data, validasi data, mekanisme persetujuan, dan analitik data.', '2022', '2021'),
(213, 79, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 5\r\nNilai kematangan pusat level : 3\r\nKeterangan :\r\nAplikasi e-sakip reviu merupakan aplikasi yang mengintegrasikan akuntabilitas kinerja seluruh perangkat daerah kota Denpasar dengan pusat.\r\nAplikasi e-sakip reviu merupakan aplikasi yang mengintegrasikan akuntabilitas kinerja seluruh perangkat daerah kota Denpasar dengan pusat. ', '2022', '2021'),
(214, 80, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 5\r\nNilai kematangan pusat level : 5\r\nKeterangan :\r\nAplikasi E-kinerja merupakan aplikasi pengelolaan manajemen ASN berbasis kinerja  yang terangkum pada satu wadah memiliki beberapa menu diantaranya Absen, Kegiatan Harian, SKP, Surat, Respon, Input Cuti.\r\nBerkolaborasi dengan aplikasi Perilaku 360 dari BKN.\r\nAplikasi E-kinerja dan Aplikasi Simpeg dalam tahap integrasi. E-Kinerja telah direviu dan evaluasi untuk pengembangan dan dioptimalisasikan fungsinya.', '2022', '2021'),
(215, 81, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 5\r\nNilai kematangan pusat level : 4\r\nKeterangan :\r\nPengaduan Rakyat Online Kota Denpasar (PRODENPASAR) https://pengaduan.denpasarkota.go.id/ adalah aplikasi berbasis website yang melibatkan partisipasi publik dan bersifat dua arah, yang digunakan sebagai alat bantu untuk melakukan monitoring dan verifikasi capaian program pembangunan maupun pengaduan masyarakat terkait pelaksanaan program pembangunan di Kota Denpasar. PRODENPASAR dikembangkan oleh Dinas Komunikasi dan Informatika Kota Denpasar. PRO Denpasar berkolaborasi dengan SPAN Lapor. Dilakukan reviu dan evaluasi secara berkala.', '2022', '2021'),
(216, 81, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 5\r\nNilai kematangan pusat level : 4\r\nKeterangan : Pengaduan Rakyat Online Kota Denpasar (PRODENPASAR) https://pengaduan.denpasarkota.go.id/ adalah aplikasi berbasis website yang melibatkan partisipasi publik dan bersifat dua arah, yang digunakan sebagai alat bantu untuk melakukan monitoring dan verifikasi capaian program pembangunan maupun pengaduan masyarakat terkait pelaksanaan program pembangunan di Kota Denpasar. PRODENPASAR dikembangkan oleh Dinas Komunikasi dan Informatika Kota Denpasar. PRO Denpasar berkolaborasi dengan SPAN Lapor. Dilakukan reviu dan evaluasi secara berkala.', '2022', '2021'),
(217, 82, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 3\r\nNilai kematangan pusat level : 2\r\nKeterangan :\r\nLahirnya Undang-Undang Nomor 14 Tahun 2008 tentang Keterbukaan Informasi Publik merupakan wujud dari proses demokratisasi yang berlangsung di Indonesia, serta tuntutan dari kehendak untuk mewujudkan tata kelola pemerintahan yang baik (good governance) melalui penerapan prinsip-prinsip akuntabilitas, transparansi dan supremasi hukum serta melibatkan partisipasi masyarakat dalam setiap proses kebijakan publik melalui website https://ppid.denpasarkota.go.id/', '2022', '2021'),
(218, 83, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 2\r\nNilai kematangan pusat level : 2\r\nKeterangan :\r\nUntuk saat ini Layanan JDIH https://jdih.denpasarkota.go.id/ memberikan layanan interaksi terkait jaringan dokumentasi dan informasi hukum seperti pencarian informasi, pengunggahan dan pengunduhan dokumen.\r\n\r\nSedangkan untuk Layanan kami lainnya yang memberikan fitur tracing, approval, dan validasi dari awal pembuatan kebijakan masih dalam tahap pengembangan.', '2022', '2021'),
(219, 84, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 5\r\nNilai kematangan pusat level : 4\r\nKeterangan :\r\ne-BPHTB (Elektronik Bea Perolehan Hak Atas Tanah Dan Bangunan) merupakan sistem pengelolaan BPHTB secara online yang berbasis web yang terintegrasi dengan aplikasi SIM PBB dan payment Bank, Notaris/PPAT dan Kantor BPN. Penggunaan e-BPHTB diharapkan membantu pelaksanaan dan meningkatkan kemudahan bagi wajib pajak dalam melakukan proses pendaftaran, pelaporan dan pembayaran BPHTB.', '2022', '2021'),
(220, 85, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 5\r\nNilai kematangan pusat level : 4\r\nKeterangan :\r\nWebsite Bursa Kerja Denpasar (https://bursakerja.denpasarkota.go.id) merupakan website portal yang digunakan oleh masyrakat pencari kerja dan pelaku dunia usaha, untuk mencari dan berbagi informasi lowongan pekerjaan dan informasi terkini dunia kerja di Kota Denpasar.\r\nBursa Kerja Online telah terintegrasi dengan Data Kependudukan, Data PMI terdampak Covid19 pada Aplikasi eSewaka Dharma.\r\nBursa Kerja Online telah direviu dan dievaluasi secara berkala.', '2022', '2021'),
(223, 86, 'Masih Menunggu Rekomendasi dari Kemenpan', '-', '-', 'Penilaian mandiri level : 5\r\nNilai kematangan pusat level : 4\r\nKeterangan  : ayanan Publik Perijinan di Kota Denpasar menggunakan Aplikasi Pusat dari BKPM https://oss.go.id.\r\n\r\nOSS / Sistem Pelayanan Perizinan Berusaha Terintegrasi Secara Elektronik. Kemudahan berusaha dalam berbagai skala turut didorong Pemerintah dengan reformasi struktural, termasuk dengan reformasi sistem perizinan. Penerapan Pelayanan Terpadu Satu Pintu (PTSP) dan Online Single Submission (OSS) diharapkan efektif mengurangi birokrasi dan mempermudah para pelaku usaha. Pemerintah sudah menjalankan Online Single Submission (OSS) sebagai sistem yang mengintegrasikan seluruh pelayanan perizinan berusaha yang menjadi kewenangan Menteri/Pimpinan Lembaga, Gubernur, atau Bupati/Walikota yang dilakukan secara elektronik. Melalui reformasi sistem perizinan, kita mendorong standardisasi menjadikan birokrasi perizinan di tingkat pusat dan daerah lebih mudah, lebih cepat, dan juga lebih terintegrasi.\r\n\r\nLayanan Publik Perijinan telah direviu dan evaluasi secara berkala.', '2022', '2021');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pertanyaan`
--

CREATE TABLE `tb_pertanyaan` (
  `idpertanyaan` int(11) NOT NULL,
  `idindikator` int(11) NOT NULL,
  `pertanyaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pertanyaan`
--

INSERT INTO `tb_pertanyaan` (`idpertanyaan`, `idindikator`, `pertanyaan`) VALUES
(1, 1, 'Apakah Instansi Saudara memiliki kebijakan internal terkait Tim Pengarah SPBE/TIK/?'),
(2, 2, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan internal terkait proses bisnis (alur kerja) terintegrasi?'),
(3, 3, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan internal terkait rencana induk SPBE?\r\n'),
(4, 4, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan internal terkait perencanaan dan penganggaran TIK?\r\n'),
(5, 5, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan internal terkait pengoperasian pusat data (data center)?\r\n'),
(6, 6, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan internal terkait integrasi sistem aplikasi?\r\n'),
(7, 7, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan internal terkait penggunaan aplikasi umum berbagi pakai?\r\n'),
(8, 8, 'Apakah  Instansi  Pusat/Pemerintah Daerah Saudara  memiliki  kebijakan internal  terkait  sistem  naskah dinas elektronik?\r\n'),
(9, 9, 'Apakah   Instansi Pusat/Pemerintah Daerah   Saudara  memiliki   kebijakan internal terkait sistem manajemen kepegawaian?\r\n'),
(10, 10, 'Apakah   Instansi Pusat/Pemerintah Daerah   Saudara   memiliki   kebijakan internal  terkait   sistem   manajemen perencanaan dan penganggaran?\r\n'),
(11, 11, 'Apakah   Instansi  Pusat/Pemerintah Daerah Saudara   memiliki   kebijakan internal   terkait   sistem   manajemen keuangan?\r\n'),
(12, 12, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan internal terkait sistem manajemen kinerja?\r\n'),
(13, 13, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan internal terkait sistem pengadaan secara elektronik?\r\n'),
(14, 14, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan internal terkait sistem pengaduan publik?\r\n'),
(15, 15, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan internal terkait sistem jaringan dokumentasi dan informasi hukum (JDIH)?\r\n'),
(16, 16, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan internal untuk WBS?\r\n'),
(17, 17, 'Apakah instansi Saudara memiliki  kebijakan internal terkait sistem pelayanan  publik yang mendukung tugas pokok Instansi Pusat/Pemerintah Daerah Saudara?\r\n'),
(18, 18, 'Apakah instansi Saudara memiliki  Tim Pengarah SPBE?\r\n'),
(19, 19, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki proses bisnis (alur kerja) yang terintegrasi?\r\n'),
(20, 20, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki dokumen rencana induk SPBE?\r\n'),
(21, 21, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki perencanaan dan penganggaran TIK untuk penerapan SPBE?\r\n'),
(22, 22, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki layanan pusat data (data center)?\r\n'),
(23, 23, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara telah melakukan integrasi sistem aplikasi?\r\n'),
(24, 24, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara menggunakan aplikasi umum berbagi pakai?\r\n'),
(25, 25, 'Apakah Instansi Pusat/Pemerintah Daerah  Saudara memiliki sistem naskah dinas elektronik?\r\n'),
(26, 26, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki sistem manajemen kepegawaian?\r\n'),
(27, 27, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki sistem manajemen perencanaan?\r\n'),
(28, 28, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki sistem penganggaran?\r\n'),
(29, 29, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki sistem manajemen keuangan terintegrasi?\r\n'),
(30, 30, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki sistem manajemen kinerja?\r\n'),
(31, 31, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki sistem pengadaan secara elektronik?\r\n'),
(32, 32, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki sistem layanan pengaduan publik?\r\n'),
(33, 33, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki sistem jaringan dokumentasi dan informasi hukum (JDIH)?\r\n'),
(34, 34, 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki Whistle-Blowing System (WBS)?\r\n'),
(35, 35, '1) Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki sistem pelayanan publik yang mendukung tugas pokok instansi?\r\n'),
(36, 36, '2) Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki sistem pelayanan publik yang mendukung tugas pokok instansi?\r\n'),
(37, 37, '3) Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki sistem pelayanan publik yang mendukung tugas pokok instansi?\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tenant`
--

CREATE TABLE `tb_tenant` (
  `id_tenant` int(11) NOT NULL,
  `nama_tenant` text NOT NULL,
  `nm_inbis` int(11) NOT NULL,
  `contact` text NOT NULL,
  `ket_tenant` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_tenant`
--

INSERT INTO `tb_tenant` (`id_tenant`, `nama_tenant`, `nm_inbis`, `contact`, `ket_tenant`) VALUES
(1, 'Asteroid', 2, '081529123648', ''),
(2, 'Alih Gae', 2, '081999015508', 'Sebuah aplikasi dengan platform website untuk memudahkan pencari kerja'),
(3, 'Teampal.co', 2, '082236666296', ''),
(4, 'Bisloka', 2, '081338270676', 'Merupakan startup yang menawarkan cara mudah booking bus pariwisata.'),
(5, 'Rapid Raid Games', 2, '083119610438', 'Merupakan startup dibidang game'),
(6, 'Griya MUA', 2, '082247555156', 'Merupakan e-marketplace jasa makeup artist (MUA) berbasis mobile apps yang memudahkan para customer untuk mencari MUA yang sesuai dengan kriteria dan budget customer.'),
(7, 'Bhinneka Coffe Been', 2, '081337575469', ''),
(8, 'Tripto', 2, '083129608329', ''),
(9, 'Pukucamper', 2, '081936236404', ''),
(10, 'Montir Keliling', 2, '081292654654', ''),
(11, 'Bali Organik Subak (BOS)', 2, '08113962727', 'Bali Organik Subak adalah wadah bagi teman-teman PETANI MUDA KEREN untuk memasarkan produk hasil pertaniannya'),
(12, 'Trolls', 4, '087762999652', 'Merupakan alat pengendali traktor melalui smartphone'),
(13, 'Pasupati', 4, '085739205671', ' Merupakan aplikasi portal para seniman dengan penikmat dan pengguna jasa kesenian tradisional'),
(14, 'Agrito', 4, '082340914446', 'Bergerak di bidang alat hidroponik terotomasi berbasis Internet of Things untuk membantu para petani'),
(15, 'Jemari Channel', 4, '082266551795', 'Merupakan Aplikasi penyewaan dan penjualan fashion endek Bali'),
(16, 'Bukaloka', 4, '082342045085', 'Merupakan aplikasi market place dan e-wallet pertama dan terbesar di Bali yang menyediakan beberapa paket tur, sewa mobil dan menjadi alat pembayaran SPP dan kebutuhan sehari-hari di lingkungan STIKOM Bali Grup.'),
(17, 'Amacall', 4, '081558855159', 'Merupakan aplikasi Baby & Moms care'),
(18, 'GustPro', 3, '', 'GustPro adalah salah satu tenant PPBT 2018 dengan inovasi berbasis teknologi. GuestPro merupakan sebuah perusahaan teknologi informasi berbasis di Ubud Bali, yang memberikan solusi sistem informasi bagi perusahaan-perusahaan tourism & hospitality Industry. '),
(19, 'Bali 3D Printer 2 in 1 ', 3, '', 'Bali 3D Printer 2 in 1 merupakan sebuah printer 3 Dimensi yang dapat mencetak dengan hasil 3D. Selain itu 3D Printer 2 In 1 mempunyai fitur tambahan Laser Engraver dengan metode swap (penggantian) toolhead secara mudah. Dengan laser dengan kemampuan 500mW blue Laser, dapat mengambar pada material plastik, kayu, cardboard, kulit dan rubber.'),
(20, 'Bumbung Hijau Farm', 3, '', 'Bumbung Hijau Farm merupakan salah tenant PPBT 2019 dalam bidang pangan dengan nama produk Benih Kentang Bersertifikat. Benih kentang yang diproduksi Bumbung Hijau Farm merupakan satau-satunya benih kentang yang bersertifikat di Nusa Tenggara Barat.'),
(21, 'In-Suit', 3, '', 'In-Suit adalah tenant CPPBT 2019 dengan judul In-Suit (Intelligent Suit and Assistive Technology) sebuah system yang menggabungkan teknologi wearable kecerdasan buatan, dan aplikasi awan yang dipergunakan untuk pasien lanjut usia guna mendeteksi insiden jatuh dan memanggil pertologan (ambulan/dokter) secara otomatis.'),
(22, 'Rezvac', 3, '', 'Rezvac adalah sebuah online booking & payment system yang siap membantu pemilik usaha tour & activities untuk mempermudah dalam mengembangkan bisnis tour & activities khususnya masalah manajemen reservasi dan pembayaran. Dengan menggunakan online payment method.'),
(23, 'Pandana', 3, '', 'Pandana merupakan perangkat lunak yang siap menyesuaikan dengan kebutuhan koperasi yang anda miliki (Staf Keuangan Virtual). Ada tiga fitur unggulan Pandana yaitu Aplikasi Mobile untuk Kolektor sehingga data tabungan baik setoran maupun penarikan oleh nasabah di lokasi dapat secara realtime terintegrasi dengan server dan dapat diakses langsung di kantor koperasi.'),
(24, 'Byte Dream', 1, 'Eka : 085737624399', ''),
(25, 'Ganesh Studio', 1, 'Doni : +62 812-3762-499', ''),
(26, 'Imajilogi', 1, 'Septian : 08989733118', ''),
(27, 'Kulkul.Id', 1, 'Angga : 085238361593', ''),
(28, 'Rare Production', 1, 'Ghany : 087761023749', ''),
(29, 'Sandatindo', 1, 'Ade : 081339106378', ''),
(30, 'SinTask', 1, 'Ridwan : 087861876181', ''),
(31, 'Studio 70', 1, 'Indra : +62 822-3633-3562', ''),
(32, 'Toel Studio', 1, 'Nonik : +62 896-0537-2192', ''),
(33, 'Bali Privat / Tutorina', 1, 'Yayan : 083119316932', ''),
(34, 'Maen Studio', 1, 'Dwi : +62 878-6108-4537', ''),
(35, 'Easy Resv', 1, 'Wahyu : 081916724298', ''),
(36, 'Fruit Punch', 1, 'Hasan : 083114011900', ''),
(37, 'Sewania', 1, 'Sunnu : 081514810147', ''),
(38, 'Taksu', 1, 'Nikki : 081237787141', ''),
(39, 'Share Trans', 1, 'Gus Purwania : 085738009350', ''),
(40, 'Ayago Studio', 1, 'Arik : 0895354991310', ''),
(41, 'Ecio Dev', 1, 'Mega : 083114723454', ''),
(42, 'Futnet', 1, 'Wahyu : 081238799322', ''),
(43, 'Heavy Team', 1, 'Suparsana : 081933068601', ''),
(44, 'IniDia Studio', 1, 'Santi : 089685608568', ''),
(45, 'INMAP', 1, 'Wiratma Jaya : 083119863191', ''),
(46, 'MarketHUb', 1, 'Dody : 085738120443', ''),
(47, 'SUSI', 1, 'Dadas : 08170705767', ''),
(48, 'SIMALU', 1, 'Aga : 081236776660', ''),
(49, 'Tiket Tari', 1, 'Agus : 085737013771', ''),
(50, 'Trash For Life', 1, 'Alfina : 085239155720', ''),
(51, 'Asuha', 1, 'Kresna : +62 898-3105-614', ''),
(52, 'Cokelat Panas Creative', 1, 'Jb Surya : +62 812-3971-5287', ''),
(53, 'Giftuto', 1, 'Deshiwa : +62 812-3969-5327', ''),
(54, 'MAI Studio', 1, 'Yudha : +62 815-2959-4415', ''),
(55, 'Pintar Saham', 1, 'Ngurah : +62 877-7757-8041', ''),
(56, 'Unicraft', 1, 'Darya : +62 818-0558-8326', ''),
(57, 'Xoxotees', 1, 'Bayu : +62 857-9243-6004', ''),
(58, 'Medicall', 1, 'dr Stephanie Patricia : 081237677355', ''),
(59, 'Digital Artisans', 1, 'I Gede Agus Mahasadhu :  08990151556', ''),
(60, 'Colony Labs', 1, 'I Wayan Dharmana : 085737592733', ''),
(61, 'OMITS', 1, 'Komang Gede Subhawa  : 085624012210', ''),
(62, 'Miracle Gates', 1, 'Orlando Nandito Nehemia : 087862293087', ''),
(63, 'Naya Project', 1, 'I Made Wahyuda Permana : 085974138519', ''),
(64, 'Bengkel Aplikasi', 1, 'Lupantui Wigun : 081343371917', ''),
(65, 'Parahita', 1, 'Muryansyah : 087860931583', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `userid` varchar(50) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `opd` varchar(11) DEFAULT NULL,
  `opdb` varchar(11) NOT NULL,
  `groupuser` int(11) NOT NULL,
  `grupindeks` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`userid`, `nama_user`, `password`, `email`, `opd`, `opdb`, `groupuser`, `grupindeks`, `is_active`) VALUES
('198311232012121004', 'I Nyoman Suardana', 'dc2f4ef676263fe9dde73a9ae6299258', '', '030801', '03080102', 3, 3, 1),
('198404062009031006', 'Dewa Ngakan Ketut Rama Sanjaya', 'dc2f4ef676263fe9dde73a9ae6299258', '', '030801', '03080103', 3, 3, 1),
('Adbang', 'Bagian Administrasi Pembangunan', 'e48c3b0ddced61f8d9fb9a4e7c5f0751', '', '012001', '', 2, 1, 1),
('adminapps', 'Admin Aplikasi', '21232f297a57a5a743894a0e4a801fc3', '', '0', '', 1, 3, 1),
('admininbis', 'Administrator Inbis', '21232f297a57a5a743894a0e4a801fc3', '', '0', '0', 1, 4, 1),
('adminspbe', 'Admin SPBE', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', '0', '', 1, 1, 1),
('agungpriambada', 'Agung Priambada', 'dc2f4ef676263fe9dde73a9ae6299258', '', '030801', '', 3, 3, 1),
('anggita', 'Ni Luh Made Anggita Damayanti', 'dc2f4ef676263fe9dde73a9ae6299258', '', '030801', '', 3, 3, 1),
('Arsip', 'Dinas Perpustakaan dan Kearsipan', '67967d398176bc99b9094689d1fe5062', '', '040701', '-', 2, 1, 1),
('bagianhukum', 'Bagian Hukum', 'd1ec53636aeea280330aa7e329b2becc', '', '011201', '', 2, 1, 1),
('bagianorganisasi', 'Bagian Organisasi', '76c113f6e2473bf70163708158b82fc8', '', '011301', '0', 2, 1, 1),
('bagianpengadaan', 'Bagian Pengadaan Barang dan Jasa', 'e4e86adfc9728e8135651a4fa1c2fbad', '', '013301', '', 2, 1, 1),
('Bapenda', 'Badan Pendapatan Daerah', 'ef7574f54684ae860d71040a6ba899ea', 'pendapatandenpasar@gmail.com', '031601', '', 2, 1, 1),
('bappeda', 'bappeda', 'cdb5073f441bd9969de925b630957e20', 'sekrebappedadps.08@gmail.com', '040201', '0', 2, 1, 1),
('bkpsdm', 'bkpsdm', '015def04364a92c60c568078f52bbabd', '', '040301', '0', 2, 1, 1),
('bpkad', 'BPKAD', '7957093083bb9408f77ffa031e9b230a', '', '300005', '', 2, 1, 1),
('disnaker', 'Dinas Tenaga Kerja dan Sertifikasi Kompetensi', 'dacf5c981232c96bd66a40120f42cffe', '', '030901', '', 2, 1, 1),
('DKIS', 'Dinas Komunikasi Informatika dan Statistik', '49b4d56538513749ef194c4783fb5e43', '', '030801', '0', 2, 1, 1),
('dpskota', 'Denpasar Kota', '305fa9f4e23c08dbda2094624cceab08', 'smartcitydenpasar@gmail.com', '0', '0', 1, 0, 1),
('dukcapil', 'Dinas Kependudukan dan Pencatatan Sipil', '82ff51b31791266a375e874eda11dc4e', '', '030601', '', 2, 1, 1),
('Inspektorat', 'Inspektorat', '515a1d422b848c53b406b6ec592be6a0', '', '040101', '', 2, 1, 1),
('krisna', 'Dewa Ayu Krisna', 'dc2f4ef676263fe9dde73a9ae6299258', '', '030801', '', 3, 3, 1),
('perijinan', 'Dinas PMPTSP', 'f1e84563b4bf455802c917147c7074bd', 'perijinan@denpasarkota.go.id', '140018', '', 2, 1, 1),
('Pimpinan_adbang', 'Bagian Administrasi Pembangunan (Asisten II)', 'b4ae4d8cf01a692897356c7167f10565', '', '012001', '', 4, 1, 1),
('Pimpinan_bapenda', 'Badan Pendapatan Daerah', '2a14fbccc46372e127492c153703ea31', '', '031601', '', 4, 1, 1),
('Pimpinan_bkpsdm', 'Badan Kepegawaian dan Pengembangan Sumber Daya Manusia', '0ccb609865eab19115534b2130eb2922', '', '040301', '', 4, 1, 1),
('Pimpinan_bpkad', 'Badan Pengelola Keuangan dan Aset Daerah', '8a7b37ac7e5d37ff06b1268ac9afffe4', '', '300005', '', 4, 1, 1),
('Pimpinan_disnaker', 'Dinas Tenaga Kerja dan Sertifikasi Kompetensi', 'afb9879105b166ef56d62cc9962307d5', '', '030901', '', 4, 1, 1),
('Pimpinan_DKIS', 'Dinas Komunikasi, Informatika dan Statistik', 'dc2f4ef676263fe9dde73a9ae6299258', '', '030801', '', 4, 1, 1),
('Pimpinan_hukum', 'Bagian Hukum Setda Kota Denpasar', '011d10ad3167248d207c5e5b77a8cd32', '', '011201', '', 4, 1, 1),
('Pimpinan_inspektorat', 'Inspektorat', 'dbfd35a0b4ec29080895ba9dd847decc', '', '040101', '', 4, 1, 1),
('Pimpinan_organisasi', 'Bagian Organisasi', '337557cf00dc968c47c2e84ce50b9830', '', '011301', '', 4, 1, 1),
('Pimpinan_pengadaan', 'Bagian Pengadaan Barang dan Jasa', '29d2da7ac11cb93b9332f2e0b8fb3cc4', '', '013301', '', 4, 1, 1),
('Pimpinan_perijinan', 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', '83db2b74ed0a1a4567c1532ebc01ebe0', '', '140018', '', 4, 1, 1),
('putuokky', 'Okky Maheswara', 'dc2f4ef676263fe9dde73a9ae6299258', 'okkymahes@gmail.com', '0', '', 1, 0, 1),
('veriandriawan', 'Dewa Very Andriawan', 'dc2f4ef676263fe9dde73a9ae6299258', '', '030801', '', 3, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aplikasi`
--
ALTER TABLE `aplikasi`
  ADD PRIMARY KEY (`id_app`);

--
-- Indexes for table `detail_aplikasi`
--
ALTER TABLE `detail_aplikasi`
  ADD PRIMARY KEY (`id_detail_aplikasi`);

--
-- Indexes for table `kategori_aplikasi`
--
ALTER TABLE `kategori_aplikasi`
  ADD PRIMARY KEY (`id_kat_aplikasi`);

--
-- Indexes for table `kategori_database`
--
ALTER TABLE `kategori_database`
  ADD PRIMARY KEY (`id_kat_database`);

--
-- Indexes for table `kategori_lok_server`
--
ALTER TABLE `kategori_lok_server`
  ADD PRIMARY KEY (`id_lok_server`);

--
-- Indexes for table `kategori_media`
--
ALTER TABLE `kategori_media`
  ADD PRIMARY KEY (`id_media`);

--
-- Indexes for table `klasifikasi_aplikasi`
--
ALTER TABLE `klasifikasi_aplikasi`
  ADD PRIMARY KEY (`id_klasifikasi_app`);

--
-- Indexes for table `tbl_jenis_laporan`
--
ALTER TABLE `tbl_jenis_laporan`
  ADD PRIMARY KEY (`id_jenis_laporan`);

--
-- Indexes for table `tbl_kategori_monev`
--
ALTER TABLE `tbl_kategori_monev`
  ADD PRIMARY KEY (`id_kat_monev`);

--
-- Indexes for table `tbl_lapormasalah`
--
ALTER TABLE `tbl_lapormasalah`
  ADD PRIMARY KEY (`id_lapormasalah`);

--
-- Indexes for table `tbl_monev_app`
--
ALTER TABLE `tbl_monev_app`
  ADD PRIMARY KEY (`id_monev_app`);

--
-- Indexes for table `tbl_respon_tl`
--
ALTER TABLE `tbl_respon_tl`
  ADD PRIMARY KEY (`id_respon_tl`);

--
-- Indexes for table `tbl_user_katindex`
--
ALTER TABLE `tbl_user_katindex`
  ADD PRIMARY KEY (`id_user_katindex`);

--
-- Indexes for table `tb_aspek`
--
ALTER TABLE `tb_aspek`
  ADD PRIMARY KEY (`id_aspek`);

--
-- Indexes for table `tb_aspek_nilai`
--
ALTER TABLE `tb_aspek_nilai`
  ADD PRIMARY KEY (`id_aspek_nilai`);

--
-- Indexes for table `tb_datapendukung`
--
ALTER TABLE `tb_datapendukung`
  ADD PRIMARY KEY (`iddata`);

--
-- Indexes for table `tb_detail_indikator`
--
ALTER TABLE `tb_detail_indikator`
  ADD PRIMARY KEY (`id_detail_indikator`);

--
-- Indexes for table `tb_domain`
--
ALTER TABLE `tb_domain`
  ADD PRIMARY KEY (`id_domain`);

--
-- Indexes for table `tb_domain_nilai`
--
ALTER TABLE `tb_domain_nilai`
  ADD PRIMARY KEY (`id_domain_nilai`);

--
-- Indexes for table `tb_eksekutif_opd`
--
ALTER TABLE `tb_eksekutif_opd`
  ADD PRIMARY KEY (`id_eksekutif_opd`);

--
-- Indexes for table `tb_evaluasi`
--
ALTER TABLE `tb_evaluasi`
  ADD PRIMARY KEY (`idevaluasi`);

--
-- Indexes for table `tb_feedback`
--
ALTER TABLE `tb_feedback`
  ADD PRIMARY KEY (`idfeedback`);

--
-- Indexes for table `tb_groupuser`
--
ALTER TABLE `tb_groupuser`
  ADD PRIMARY KEY (`id_groupuser`);

--
-- Indexes for table `tb_inbis`
--
ALTER TABLE `tb_inbis`
  ADD PRIMARY KEY (`id_inbis`);

--
-- Indexes for table `tb_indeks`
--
ALTER TABLE `tb_indeks`
  ADD PRIMARY KEY (`id_indeks`);

--
-- Indexes for table `tb_indeks_nilai`
--
ALTER TABLE `tb_indeks_nilai`
  ADD PRIMARY KEY (`id_indeks_nilai`);

--
-- Indexes for table `tb_indikator`
--
ALTER TABLE `tb_indikator`
  ADD PRIMARY KEY (`idindikator`);

--
-- Indexes for table `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`idlevel`);

--
-- Indexes for table `tb_opd`
--
ALTER TABLE `tb_opd`
  ADD PRIMARY KEY (`idopd`);

--
-- Indexes for table `tb_opdterkait`
--
ALTER TABLE `tb_opdterkait`
  ADD PRIMARY KEY (`idopdterkait`);

--
-- Indexes for table `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  ADD PRIMARY KEY (`idpenilaian`);

--
-- Indexes for table `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  ADD PRIMARY KEY (`idpertanyaan`);

--
-- Indexes for table `tb_tenant`
--
ALTER TABLE `tb_tenant`
  ADD PRIMARY KEY (`id_tenant`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aplikasi`
--
ALTER TABLE `aplikasi`
  MODIFY `id_app` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `detail_aplikasi`
--
ALTER TABLE `detail_aplikasi`
  MODIFY `id_detail_aplikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `kategori_aplikasi`
--
ALTER TABLE `kategori_aplikasi`
  MODIFY `id_kat_aplikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori_database`
--
ALTER TABLE `kategori_database`
  MODIFY `id_kat_database` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori_lok_server`
--
ALTER TABLE `kategori_lok_server`
  MODIFY `id_lok_server` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori_media`
--
ALTER TABLE `kategori_media`
  MODIFY `id_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `klasifikasi_aplikasi`
--
ALTER TABLE `klasifikasi_aplikasi`
  MODIFY `id_klasifikasi_app` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_jenis_laporan`
--
ALTER TABLE `tbl_jenis_laporan`
  MODIFY `id_jenis_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_kategori_monev`
--
ALTER TABLE `tbl_kategori_monev`
  MODIFY `id_kat_monev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_lapormasalah`
--
ALTER TABLE `tbl_lapormasalah`
  MODIFY `id_lapormasalah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_monev_app`
--
ALTER TABLE `tbl_monev_app`
  MODIFY `id_monev_app` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_respon_tl`
--
ALTER TABLE `tbl_respon_tl`
  MODIFY `id_respon_tl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user_katindex`
--
ALTER TABLE `tbl_user_katindex`
  MODIFY `id_user_katindex` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_aspek`
--
ALTER TABLE `tb_aspek`
  MODIFY `id_aspek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tb_aspek_nilai`
--
ALTER TABLE `tb_aspek_nilai`
  MODIFY `id_aspek_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_datapendukung`
--
ALTER TABLE `tb_datapendukung`
  MODIFY `iddata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_detail_indikator`
--
ALTER TABLE `tb_detail_indikator`
  MODIFY `id_detail_indikator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tb_domain`
--
ALTER TABLE `tb_domain`
  MODIFY `id_domain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_domain_nilai`
--
ALTER TABLE `tb_domain_nilai`
  MODIFY `id_domain_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_eksekutif_opd`
--
ALTER TABLE `tb_eksekutif_opd`
  MODIFY `id_eksekutif_opd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tb_evaluasi`
--
ALTER TABLE `tb_evaluasi`
  MODIFY `idevaluasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_feedback`
--
ALTER TABLE `tb_feedback`
  MODIFY `idfeedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=545;

--
-- AUTO_INCREMENT for table `tb_groupuser`
--
ALTER TABLE `tb_groupuser`
  MODIFY `id_groupuser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_inbis`
--
ALTER TABLE `tb_inbis`
  MODIFY `id_inbis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_indeks`
--
ALTER TABLE `tb_indeks`
  MODIFY `id_indeks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_indeks_nilai`
--
ALTER TABLE `tb_indeks_nilai`
  MODIFY `id_indeks_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_indikator`
--
ALTER TABLE `tb_indikator`
  MODIFY `idindikator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `idlevel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `tb_opdterkait`
--
ALTER TABLE `tb_opdterkait`
  MODIFY `idopdterkait` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  MODIFY `idpenilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  MODIFY `idpertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_tenant`
--
ALTER TABLE `tb_tenant`
  MODIFY `id_tenant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
