-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2019 at 08:21 AM
-- Server version: 5.7.27
-- PHP Version: 7.3.6

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
-- Table structure for table `tb_aspek`
--

CREATE TABLE `tb_aspek` (
  `idaspek` int(11) NOT NULL,
  `nilai_indeks_aspek` decimal(10,2) NOT NULL,
  `iddomain` int(11) NOT NULL,
  `nama_aspek` varchar(100) NOT NULL,
  `bobot_aspek` decimal(10,2) NOT NULL,
  `target` int(11) NOT NULL,
  `tahun_aspek` varchar(5) NOT NULL,
  `urutan_aspek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_aspek`
--

INSERT INTO `tb_aspek` (`idaspek`, `nilai_indeks_aspek`, `iddomain`, `nama_aspek`, `bobot_aspek`, `target`, `tahun_aspek`, `urutan_aspek`) VALUES
(1, 2.00, 1, 'Kebijakan Tata Kelola SPBE', 17.00, 3, '2018', 1),
(2, 2.10, 1, 'Kebijakan Layanan SPBE', 17.00, 3, '2018', 2),
(3, 2.00, 2, 'Kelembagaan', 28.00, 3, '2018', 3),
(4, 2.50, 2, 'Strategi dan Perencanaan', 28.00, 3, '2018', 4),
(5, 2.33, 2, 'Teknologi Informasi dan Komunikasi', 28.00, 3, '2018', 5),
(6, 3.29, 3, 'Layanan Administrasi Pemerintah Berbasis Elektronik', 55.00, 3, '2018', 6),
(7, 2.50, 3, 'Layanan Publik Berbasis Elektronik', 55.00, 3, '2018', 7),
(8, 0.83, 4, 'Bangunan Cerdas Cerdas', 0.08, 0, '2018', 1),
(9, 2.88, 4, 'Manajemen Sumber Daya', 0.29, 0, '2018', 2),
(10, 6.29, 4, 'Perencanaan Berkelanjutan', 0.63, 0, '2018', 3),
(11, 2.67, 5, 'Transportasi yang Efisien', 0.36, 0, '2018', 1),
(12, 2.99, 5, 'Akses Multi Moda', 0.40, 0, '2018', 2),
(13, 1.84, 5, 'Infrastruktur Teknologi', 0.25, 0, '2018', 3),
(14, 2.91, 6, 'Layanan Daring', 0.32, 0, '2018', 1),
(15, 2.57, 6, 'Infrastruktur Pendukung Sistem', 0.28, 0, '2018', 2),
(16, 3.57, 6, 'Keterbukaan Data Pemerintahan', 0.39, 0, '2018', 3),
(17, 2.56, 7, 'Kewirausahaan dan Inovasi', 0.37, 0, '2018', 1),
(18, 1.84, 7, 'Produktivitas', 0.27, 0, '2018', 2),
(19, 2.49, 7, 'Jaringan Bisnis Dalam dan Luar Negeri', 0.36, 0, '2018', 3),
(20, 2.58, 8, 'Inklusivitas Sosial', 0.25, 0, '2018', 1),
(21, 2.13, 8, 'Pendidikan', 0.20, 0, '2018', 2),
(22, 5.79, 8, 'Kreativitas', 0.55, 0, '2018', 3),
(23, 3.17, 9, 'Budaya dan Kesejahteraan', 0.30, 0, '2018', 1),
(24, 2.51, 9, 'Keamanan', 0.24, 0, '2018', 2),
(25, 4.77, 9, 'Kesehatan', 0.46, 0, '2018', 3);

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
(37, 37, '--Penjelasan Indikator : 	\r\nPelayanan Publik adalah kegiatan atau rangkaian kegiatan dalam rangka pemenuhan kebutuhan pelayanan sesuai dengan peraturan perundang-undangan bagi setiap warga negara dan penduduk atas jasa, barang, dan/atau pelayanan administratif yang disediakan oleh penyelenggara pelayanan publik, dalam hal ini yang disediakan oleh Instansi Pusat/Pemerintah Daerah.\r\nLayanan Publik Instansi Pemerintah merupakan tugas atau fungsi yang memberikan manfaat dalam pengelolaan layanan publik bagi Instansi Pusat dan/atau Pemerintah Daerah.\r\nSistem Pelayanan Publik dimaksud adalah layanan pengaduan publik berbasis elektronik yang dimiliki oleh Instansi Pusat dan/atau Pemerintah Daerah.\r\nInstansi Pusat/Pemerintah Daerah memberikan informasi paling tidak 3 (tiga) Sistem pelayanan publik yang ada pada instansinya.\r\nPenjelasan masing-masing tingkat kematangan:\r\n', ';Level 0 = Instansi Pusat/Pemerintah Daerah belum memiliki sistem pelayanan publik.\r\n;Level 1 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang menyediakan layanan diseminasi/penyebaran satu arah \r\n                 informasi seperti informasi layanan yang diberikan.\r\n;Level 2 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang menyediakan layanan interaksi seperti mencari informasi \r\n                 dan menyampaikan permohonan pelayanan.\r\n;Level 3 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang menyediakan layanan transaksi dimana pengguna dapat \r\n                 menyampaikan permohonan pelayanan dan sistem dapat merespon kepada pengguna seperti kemajuan proses permohonan pelayanan,  \r\n                 verifikasi dan validasi informasi.\r\n;Level 4 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang menyediakan layanan kolaborasi dimana layanan publik \r\n                 diintegrasikan dengan suatu layanan seperti layanan identifikasi penduduk (administrasi kependudukan) atau diintegrasikan dengan \r\n                layanan SPBE instansi pemerintah lain.\r\n;Level 5 = Instansi Pusat/Pemerintah Daerah sudah memiliki sistem pelayanan publik yang dapat ditingkatkan/dikembangkan menyesuaikan \r\n                 terhadap perubahan lingkungan, teknologi dan kebutuhan instansi.\r\n', ';;Penjelasan: Layanan Publik terbaik 3\r\nNama Aplikasi : Sistem Informasi Perijinan Online\r\nTujuan : Memberikan layanan informasi dan proses perijinan yang transparan\r\nPengguna : Masyarakat\r\nInput dan output : Input data-data perijinan, Output informasi perijinan, informasi simulasi perhitungan retribusi, laporan-laporan perijinan.\r\nPengembang aplikasi : UNUD\r\nDeskripsi pemilihan tingkat kematangan : Level 5 \r\n\r\nData pendukung dapat berupa dokumen penggunaan aplikasi, screenshot layanan aplikasi, daftar layanan dan fitur aplikasi, arsitektur aplikasi, pengelolaan repositori API, unit kerja yang menangani manajemen layanan, dan bukti terkait lainnya. Apabila lebih dari satu file, maka nama file ditambahkan huruf seperti indikator35-3a.pdf, indikator35-3b.pdf, indikator35-3c.pdf, dan seterusnya.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_domain`
--

CREATE TABLE `tb_domain` (
  `iddomain` int(11) NOT NULL,
  `id_indeks` int(11) NOT NULL,
  `nilai_indeks_domain` decimal(10,2) NOT NULL,
  `namadomain` varchar(100) NOT NULL,
  `bobot` decimal(10,2) NOT NULL,
  `tahun_domain` varchar(5) NOT NULL,
  `urutan_domain` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_domain`
--

INSERT INTO `tb_domain` (`iddomain`, `id_indeks`, `nilai_indeks_domain`, `namadomain`, `bobot`, `tahun_domain`, `urutan_domain`) VALUES
(1, 1, 2.06, 'Kebijakan SPBE', 17.00, '2018', 1),
(2, 1, 2.29, 'Tata Kelola SPBE', 28.00, '2018', 2),
(3, 1, 3.00, 'Layanan SPBE', 55.00, '2018', 3),
(4, 2, 0.00, 'Dimensi Lingkungan (Smart Environment)', 0.16, '2018', 1),
(5, 2, 0.00, 'Dimensi Mobilitas (Smart Mobility)', 0.11, '2018', 2),
(6, 2, 0.00, 'Dimensi Pemerintahan (Smart Government)', 0.12, '2018', 3),
(7, 2, 0.00, 'Dimensi Ekonomi (Smart Economy)', 0.12, '2018', 4),
(8, 2, 0.00, 'Dimensi Masyarakat (Smart People)', 0.29, '2018', 5),
(9, 2, 0.00, 'Dimensi Kualitas Hidup (Smart Living)', 0.20, '2018', 6);

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
(8, 55, '', 'indikator14a.pdf', 'DKIS', '2019-12-16 14:22:00'),
(9, 55, '', 'indikator14b.pdf', 'DKIS', '2019-12-16 14:23:00'),
(10, 59, '', 'indikator18b.pdf', 'DKIS', '2019-12-16 14:24:00'),
(11, 60, '', 'indikator19.pdf', 'DKIS', '2019-12-16 14:27:00'),
(12, 63, '', 'indikator22a.pdf', 'DKIS', '2019-12-16 14:29:00'),
(13, 63, '', 'indikator22c.pdf', 'DKIS', '2019-12-16 14:30:00'),
(14, 63, '', 'indikator22d.pdf', 'DKIS', '2019-12-16 14:34:00'),
(15, 73, '', 'indikator32c.pdf', 'DKIS', '2019-12-16 15:07:00'),
(16, 76, '', 'indikator35-1a.pdf', 'DKIS', '2019-12-16 15:09:00'),
(17, 76, '', 'indikator35-1b.pdf', 'DKIS', '2019-12-16 15:09:00'),
(18, 76, '', 'indikator35-1c.pdf', 'DKIS', '2019-12-16 15:09:00'),
(19, 76, '', 'indikator35-1d.pdf', 'DKIS', '2019-12-16 15:10:00'),
(20, 76, '', 'indikator35-1e.pdf', 'DKIS', '2019-12-16 15:10:00'),
(23, 43, 'SK Walikota Denpasar Nomor 188.45/1689/HK/2019 Tentang Peta Proses Bisnis Pemerintah Kota Denpasar', 'indikator2a.pdf', 'DKIS', '2019-12-26 14:41:00'),
(24, 43, 'Lampiran Peta Proses Bisnis Pemerintah Kota Denpasar', 'indikator2b.pdf', 'DKIS', '2019-12-26 14:42:00'),
(25, 61, '', 'indikator20a.pdf', 'DKIS', '2019-12-18 09:07:00'),
(26, 61, '', 'indikator20b.pdf', 'DKIS', '2019-12-18 09:07:00'),
(27, 61, '', 'indikator20c.pdf', 'DKIS', '2019-12-18 09:07:00'),
(28, 61, '', 'indikator20d.pdf', 'DKIS', '2019-12-18 09:07:00'),
(29, 61, '', 'indikator20e.pdf', 'DKIS', '2019-12-18 09:08:00'),
(30, 61, '', 'indikator20f.pdf', 'DKIS', '2019-12-18 09:08:00'),
(31, 61, '', 'indikator20g.pdf', 'DKIS', '2019-12-18 09:08:00'),
(32, 61, '', 'indikator20h.pdf', 'DKIS', '2019-12-18 09:08:00'),
(33, 65, '', 'indikator24.pdf', 'DKIS', '2019-12-18 09:09:00'),
(34, 59, '', 'indikator18a.jpg', 'DKIS', '2019-12-18 09:14:00'),
(35, 63, '', 'indikator22b.jpg', 'DKIS', '2019-12-18 09:15:00'),
(36, 63, '', 'indikator22e.jpg', 'DKIS', '2019-12-18 09:15:00'),
(37, 64, '', 'indikator23.jpg', 'DKIS', '2019-12-18 09:17:00'),
(38, 73, '', 'indikator32a.jpg', 'DKIS', '2019-12-18 09:17:00'),
(39, 73, '', 'indikator32b.jpg', 'DKIS', '2019-12-18 09:18:00'),
(40, 75, '', 'indikator34.jpg', 'DKIS', '2019-12-18 09:18:00'),
(46, 57, '', 'indikator16a.pdf', 'DKIS', '2019-12-18 09:50:00'),
(47, 57, '', 'indikator16b.pdf', 'DKIS', '2019-12-18 09:50:00'),
(48, 51, '', 'indikator10.pdf', 'adminbappeda', '2019-12-18 09:54:00'),
(49, 62, '', 'indikator21.pdf', 'adminbappeda', '2019-12-18 09:54:00'),
(50, 68, '', 'indikator27.jpg', 'adminbappeda', '2019-12-18 09:55:00'),
(51, 69, '', 'indikator28.pdf', 'adminbappeda', '2019-12-18 09:55:00'),
(52, 47, '', 'indikator6.pdf', 'bagianorganisasi', '2019-12-18 09:57:00'),
(53, 66, '', 'indikator25.jpg', 'bagianorganisasi', '2019-12-18 10:01:00'),
(54, 49, '', 'indikator8c.pdf', 'bagianorganisasi', '2019-12-18 10:02:00'),
(55, 48, '', 'indikator7.pdf', 'DKIS', '2019-12-18 10:07:00'),
(56, 50, '', 'indikator9.PDF', 'bkpsdm', '2019-12-18 10:10:00'),
(57, 53, '', 'indikator12.pdf', 'bkpsdm', '2019-12-18 10:11:00'),
(58, 67, '', 'indikator26a.pdf', 'bkpsdm', '2019-12-18 10:11:00'),
(59, 67, '', 'indikator26b.PDF', 'bkpsdm', '2019-12-18 10:12:00'),
(60, 71, '', 'indikator30a.jpg', 'bkpsdm', '2019-12-18 10:12:00'),
(61, 71, '', 'indikator30b.jpg', 'bkpsdm', '2019-12-18 10:12:00'),
(62, 71, '', 'indikator30c.jpg', 'bkpsdm', '2019-12-18 10:13:00'),
(63, 71, '', 'indikator30d.jpg', 'bkpsdm', '2019-12-18 10:13:00'),
(64, 71, '', 'indikator30e.pdf', 'bkpsdm', '2019-12-18 10:13:00'),
(65, 52, '', 'indikator11.pdf', 'bpkad', '2019-12-18 10:32:00'),
(66, 70, '', 'indikator29.pdf', 'bpkad', '2019-12-18 10:32:00'),
(67, 72, '', 'indikator31.jpg', 'pengadaanbarangdanjasa', '2019-12-18 10:35:00'),
(68, 56, '', 'indikator15.pdf', 'bagianhukum', '2019-12-18 10:37:00'),
(69, 74, '', 'indikator33a.jpg', 'bagianhukum', '2019-12-18 10:37:00'),
(70, 74, '', 'indikator33b.jpg', 'bagianhukum', '2019-12-18 10:38:00'),
(71, 58, '', 'indikator17b.pdf', 'perijinan', '2019-12-18 11:09:00'),
(72, 78, '', 'indikator35-3a.jpg', 'perijinan', '2019-12-18 11:14:00'),
(73, 78, '', 'indikator35-3b.jpg', 'perijinan', '2019-12-18 11:14:00'),
(74, 78, '', 'indikator35-3c.jpg', 'perijinan', '2019-12-18 11:14:00'),
(75, 77, '', 'indikator35-2a.jpg', 'disnaker', '2019-12-18 11:25:00'),
(76, 77, '', 'indikator35-2b.pdf', 'disnaker', '2019-12-18 11:25:00'),
(77, 77, '', 'indikator35-2c.pdf', 'disnaker', '2019-12-18 11:26:00'),
(78, 77, '', 'indikator35-2d.jpg', 'disnaker', '2019-12-18 11:26:00'),
(79, 58, '', 'indikator17a.pdf', 'perijinan', '2019-12-18 11:28:00'),
(80, 54, '', 'indikator13.pdf', 'pengadaanbarangdanjasa', '2019-12-18 11:30:00'),
(81, 49, '', 'indikator8a.pdf', 'bagianorganisasi', '2019-12-18 11:32:00'),
(82, 49, '', 'indikator8b.pdf', 'bagianorganisasi', '2019-12-18 11:33:00'),
(83, 1, '', 'indikator1.pdf', 'adminspbe', '2019-12-23 15:41:00'),
(84, 2, '', 'indikator2.pdf', 'adminspbe', '2019-12-23 15:45:00'),
(85, 3, '', 'indikator3.pdf', 'adminspbe', '2019-12-23 15:46:00'),
(86, 4, '', 'indikator4.pdf', 'adminspbe', '2019-12-23 15:47:00'),
(87, 5, '', 'indikator5.pdf', 'adminspbe', '2019-12-24 14:03:00'),
(88, 6, '', 'indikator6.pdf', 'adminspbe', '2019-12-24 14:03:00'),
(89, 7, '', 'indikator7.pdf', 'adminspbe', '2019-12-24 14:04:00'),
(90, 8, '', 'indikator8a.pdf', 'adminspbe', '2019-12-24 14:04:00'),
(91, 8, '', 'indikator8b.pdf', 'adminspbe', '2019-12-24 14:04:00'),
(92, 8, '', 'indikator8c.pdf', 'adminspbe', '2019-12-24 14:04:00'),
(93, 8, '', 'indikator8d.pdf', 'adminspbe', '2019-12-24 14:04:00'),
(94, 9, '', 'indikator9a.jpg', 'adminspbe', '2019-12-24 14:05:00'),
(95, 9, '', 'indikator9b.pdf', 'adminspbe', '2019-12-24 14:05:00'),
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
(154, 39, '', 'indikator35-3c.pdf', 'adminspbe', '2019-12-24 14:38:00');

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
(2, 'admin', 'Administrator OPD'),
(3, 'operator', 'Operator');

-- --------------------------------------------------------

--
-- Table structure for table `tb_indeks`
--

CREATE TABLE `tb_indeks` (
  `id_indeks` int(11) NOT NULL,
  `nama_indeks` varchar(100) NOT NULL,
  `nilai_indeks` decimal(10,2) NOT NULL,
  `tahun_indeks` varchar(5) NOT NULL,
  `urutan_indeks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_indeks`
--

INSERT INTO `tb_indeks` (`id_indeks`, `nama_indeks`, `nilai_indeks`, `tahun_indeks`, `urutan_indeks`) VALUES
(1, 'SPBE', 2.64, '2018', 1),
(2, 'IKCI', 61.70, '2018', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_indikator`
--

CREATE TABLE `tb_indikator` (
  `idindikator` int(11) NOT NULL,
  `idaspek` int(11) NOT NULL,
  `namaindikator` varchar(100) NOT NULL,
  `indikator` varchar(11) NOT NULL,
  `penjelasanindikator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_indikator`
--

INSERT INTO `tb_indikator` (`idindikator`, `idaspek`, `namaindikator`, `indikator`, `penjelasanindikator`) VALUES
(1, 1, 'Kebijakan Internal Tim Pengarah SPBE Instansi Pemerintah', '1', 1),
(2, 1, 'Kebijakan Internal Inovasi Proses Bisnis Terintegrasi', '2', 2),
(3, 1, 'Kebijakan Internal Rencana Induk SPBE Instansi Pemerintah', '3', 3),
(4, 1, 'Kebijakan Internal Anggaran dan Belanja TIK', '4', 4),
(5, 1, 'Kebijakan Internal Pengoperasian Pusat Data', '5', 5),
(6, 1, 'Kebijakan Internal Integrasi Sistem Aplikasi', '6', 6),
(7, 1, 'Kebijakan Internal Penggunaan Aplikasi Umum Berbagi Pakai', '7', 7),
(8, 2, 'Kebijakan Internal Layanan Naskah Dinas', '8', 8),
(9, 2, 'Kebijakan Internal Layanan Manajemen Kepegawaian', '9', 9),
(10, 2, 'Kebijakan Internal Layanan Manajemen Perencanaaan dan Penganggaran', '10', 10),
(11, 2, 'Kebijakan Internal Layanan Manajemen Keuangan', '11', 11),
(12, 2, 'Kebijakan Internal Layanan Manajemen Kinerja', '12', 12),
(13, 2, 'Kebijakan Internal Layanan Pengadaan', '13', 13),
(14, 2, 'Kebijakan Internal Layanan Pengaduan Publik', '14', 14),
(15, 2, 'Kebijakan Internal Layanan Dokumentasi dan Informasi Hukum', '15', 15),
(16, 2, 'Kebijakan Internal Layanan Whistle Blowing System (WBS)', '16', 16),
(17, 2, 'Kebijakan Internal Layanan publik Instansi Pemerintah', '17', 17),
(18, 3, 'Tim Pengarah SPBE Instansi Pemerintah', '18', 18),
(19, 3, 'Inovasi Proses Bisnis Terintegrasi', '19', 19),
(20, 4, 'Rencana  Induk   SPBE   Instansi Pemerintah', '20', 20),
(21, 4, 'Anggaran dan Belanja TIK', '21', 21),
(22, 5, 'Pengoperasian Pusat Data', '22', 22),
(23, 5, 'Integrasi Sistem Aplikasi', '23', 23),
(24, 5, 'Penggunaan Aplikasi Umum Berbagi Pakai', '24', 24),
(25, 6, 'Layanan Naskah Dinas', '25', 25),
(26, 6, 'Layanan Manajemen Kepegawaian', '26', 26),
(27, 6, 'Layanan Manajemen Perencanaan', '27', 27),
(28, 6, 'Layanan Manajemen Penganggaran', '28', 28),
(29, 6, 'Layanan Manajemen Keuangan', '29', 29),
(30, 6, 'Layanan Manajemen Kinerja', '30', 30),
(31, 6, 'Layanan Pengadaan', '31', 31),
(32, 7, 'Layanan Pengaduan Publik', '32', 32),
(33, 7, 'Layanan Dokumentasi dan Informasi Hukum', '33', 33),
(34, 7, 'Layanan Whistle-Blowing System', '34', 34),
(35, 7, 'Layanan Publik Instansi Pemerintah', '35', 35),
(36, 7, 'Layanan Publik Instansi Pemerintah', '35-2', 36),
(37, 7, 'Layanan Publik Instansi Pemerintah', '35-3', 37);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lemah_kuat`
--

CREATE TABLE `tb_lemah_kuat` (
  `id_lemah_kuat` int(11) NOT NULL,
  `idaspek` int(11) NOT NULL,
  `kelemahan` text NOT NULL,
  `kekuatan` text NOT NULL,
  `tahun_lemah_kuat` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(222, 37, 'level 5', 5, 'Sistem pelayanan publik menyediakan layanan optimalisasi.		\r\n');

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
('040401', 'Dinas Lingkungan Hidup dan Kebersihan', 'DLHK'),
('040501', 'Dinas Pemberdayaan Masyarakat dan Desa Kota', ''),
('040601', 'Badan Kesatuan Bangsa, Politik dan Perlindungan Masyarakat', ''),
('040701', 'Dinas Perpustakaan dan Kearsipan', ''),
('040801', 'Badan Penanggulangan Bencana Daerah (BPBD)', ''),
('040901', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak, Pengendalian Penduduk dan Keluarga Berencana', ''),
('041001', 'Rumah Sakit Umum Daerah Wangaya', 'RSUD Wangaya'),
('041101', 'Badan Penelitian Dan Pengembangan', ''),
('100000', 'Seluruh Desa', ''),
('140018', 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 'Dinas Perijinan'),
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
(7, '030801', 7),
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
(38, '030801', 37),
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
(49, '030801', 48),
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
(77, '030801', 76),
(78, '030901', 77),
(79, '140018', 78),
(80, '040101', 128);

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
(1, 1, 'Kebijakan internal Tim Pengarah SPBE atau Tim Pengarah TIK atau sejenisnya sebaiknya ditetapkan dan memuat pengaturan tugas-tugas yang mendukung penerapan SPBE yang terpadu pada semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah', '1', '1', 'Membuat Kebijakan Tim Pengarah SPBE', '2019', '2018'),
(2, 2, 'Kebijakan internal proses bisnis sebaiknya ditetapkan dengan memuat pengaturan tersusunnya proses bisnis yang terintegrasi antar unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah', '1', '3', '- Revisi Perwali eGov atau Arsitektur SPBE (Proses Bisnis Integrasi). \r\n- SOP OPD terintegrasi', '2019', '2018'),
(3, 3, 'Kebijakan internal rencana induk SPBE sebaiknya ditetapkan dengan memuat pengaturan tersusunnya rencana induk yang mencakup secara lengkap visi, misi, strategi, sasaran, arsitektur, dan peta rencana SPBE', '1', '1', 'Membuat Kebijakan Rencana Induk SPBE', '2019', '2018'),
(4, 4, 'Kebijakan internal rencana dan anggaran TIK sebaiknya dilengkapi dengan memuat pengaturan terkait penyelarasan dengan rencana induk SPBE, pengendalian rencana dan anggaran TIK yang terpadu di dalam Instansi Pusat/Pemerintah Daerah, dan mendukung penerapan SPBE yang terpadu tidak hanya di dalam Instansi Pusat/Pemerintah Daerah, tetapi juga antar Instansi Pusat/Pemerintah Daerah dan/atau antar Instansi Pusat dengan Pemerintah Daerah', '3', '3', 'Membuat Kebijakan Anggaran dan  Belanja TIK', '2019', '2018'),
(5, 5, 'Kebijakan internal pengoperasian pusat data sebaiknya dilengkapi dengan memuat pengaturan pengoperasian dan pernanfaatan pusat data bagi semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah', '2', '3', 'Revisi Perwali eGov  atau Arsitektur SPBE (Pusat Data)', '2019', '2018'),
(6, 6, 'Kebijakan internal integrasi sistem aplikasi sebaiknya dilengkapi dengan memuat pengaturan integrasi sistem aplikasi antar Instansi Pusat/Pemerintah Daerah yang didasarkan pada integrasi proses bisnis antar Instansi Pusat/Pemerintah Daerah', '3', '3', 'Revisi Perwali eGov  atau Arsitektur SPBE (Integrasi Sistem)', '2019', '2018'),
(7, 7, 'Kebijakan internal penggunaan aplikasi umum berbagi pakai sebaiknya dilengkapi dengan memuat pengaturan integrasi dengan layanan SPBE lain yang telah tersedia di Instansi Pusat/Pemerintah Daerah', '3', '3', 'Revisi Perwali eGov  atau Arsitektur SPBE (Aplikasi Umum Berbagi Pakai)', '2019', '2018'),
(8, 8, 'Kebijakan internal layanan naskah dinas sebaiknya dilengkapi dengan memuat pengaturan kebutuhan dan penggunaan layanan naskah dinas secara elektronik pada semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah', '2', '3', 'Membuat Kebijakan Layanan Naskah Dinas', '2019', '2018'),
(9, 9, 'Kebijakan Internal Layanan Manajemen Kepegawaian sebaiknya ditetapkan dengan memuat pengaturan kebutuhan dan penggunaan layanan manajemen pegawai secara elektronik pada semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah', '1', '0', 'Membuat Kebijakan Layanan Manajemen Kepegawaian', '2019', '2018'),
(10, 10, 'Kebijakan Internal Layanan Manajemen Perencanaaan dan Penganggaran sebaiknya ditetapkan dengan memuat pengaturan kebutuhan dan penggunaan layanan manajemen perencanaan dan penganggaran secara elektronik pada semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah', '1', '0', 'Membuat Kebijakan  Layanan Manajemen Perencanaaan dan Penganggaran', '2019', '2018'),
(11, 11, 'Kebijakan Internal Layanan Manajemen Keuangan sebaiknya ditetapkan dengan memuat pengaturan kebutuhan dan penggunaan layanan manajemen keuangan secara elektronik pada semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah', '1', '0', 'Membuat Kebijakan Layanan Manajemen Keuangan', '2019', '2018'),
(12, 12, 'Kebijakan Internal Layanan Manajemen Kinerja sebaiknya dilengkapi dengan memuat pengaturan kebutuhan integrasi layanan layanan manajemen kinerja secara elektronik dengan layanan SPBE lain yang sudah tersedia di Instansi Pusat/Pemerintah Daerah atau integrasi layanan manajemen kinerja secara elektronik antar Instansi Pusat/Pemerintah Daerah dan/atau antar Instansi Pusat dengan Pemerintah Daerah', '3', '3', 'Kebijakan Layanan Manajemen Kinerja', '2019', '2018'),
(13, 13, 'Kebijakan Internal Layanan Pengadaan sebaiknya dilengkapi dengan memuat pengaturan kebutuhan integrasi layanan manajemen pengadaan secara elektronik dengan layanan SPBE lain yang sudah tersedia di Instansi Pusat/Pemerintah Daerah atau integrasi layanan pengadaan secara elektronik antar Instansi Pusat/Pemerintah Daerah dan/atau antar Instansi Pusat dengan Pemerintah Daerah', '3', '5', 'Revisi Perwali No 2 Tahun 2018 Tentang Layanan Pengadaan (Integrasi dengan Layanan SPBE lainnya)', '2019', '2018'),
(15, 14, 'Kebijakan Internal Layanan Pengaduan Publik sebaiknya dilengkapi dengan memuat pengaturan kebutuhan integrasi layanan pengaduan publik secara elektronik dengan layanan SPBE lain yang sudah tersedia di Instansi Pusat/Pemerintah Daerah atau integrasi layanan pengaduan publik secara elektronik antar Instansi Pusat/Pemerintah Daerah dan/atau antar Instansi Pusat dengan Pemerintah Daerah', '3', '5', 'Revisi Perwali No 45 Tahun 2014 Tentang Pengaduan Publik (Integrasi dengan Layanan SPBE lainnya)', '2019', '2018'),
(16, 15, 'Kebijakan Internal Layanan Dokumentasi dan Informasi Hukum sebaiknya ditetapkan dengan memuat pengaturan kebutuhan dan penggunaan layanan dokumentasi dan informasi hukum secara elektronik pada semua unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah', '1', '0', 'Membuat Kebijakan Layanan JDIH', '2019', '2018'),
(18, 17, 'Kebijakan Internal Layanan Publik sebaiknya dilengkapi dengan memuat pengaturan kebutuhan integrasi layanan publik secara elektronik dengan layanan SPBE lain yang sudah tersedia di Instansi Pusat/Pemerintah Daerah atau integrasi layanan publik secara elektronik antar Instansi Pusat/Pemerintah Daerah dan/atau antar Instansi Pusat dengan Pemerintah Daerah', '3', '5', 'Setiap Layanan Publik dibuatkan Kebijakan (Integrasi dengan Layanan SPBE lainnya)', '2019', '2018'),
(19, 18, 'Kebijakan Internal Layanan Publik sebaiknya dilengkapi dengan memuat pengaturan kebutuhan integrasi layanan publik secara elektronik dengan layanan SPBE lain yang sudah tersedia di Instansi Pusat/Pemerintah Daerah atau integrasi layanan publik secara elektronik antar Instansi Pusat/Pemerintah Daerah dan/atau antar Instansi Pusat dengan Pemerintah Daerah', '1', '1', 'Membentuk Tim Pengarah SPBE', '2019', '2018'),
(20, 19, 'Tim Pengarah SPBE atau Tim Pengarah TIK atau sejenisnya sebaiknya ditetapkan, serta menjalankan tugas dan fungsinya secara menyeluruh sesuai dengan kebijakan internal yang telah ditetapkan', '3', '5', 'Membuat Arsitektur SPBE (Proses Bisnis Integrasi)', '2019', '2018'),
(21, 20, 'Penerapan proses bisnis yang terintegrasi dengan sistem elektronik sebaiknya dapat diukur, dipantau, dan dievaluasi secara berkala', '2', '3', 'Membuat Rencana Induk SPBE', '2019', '2018'),
(22, 21, 'Rencana induk SPBE sebaiknya dilengkapi dengan mencakup visi, misi, strategi, sasaran, arsitektur, dan peta rencana SPBE sesuai dengan kebijakan internal yang telah ditetapkan.', '3', '3', 'Anggaran Belanja TIK diukur, dipantau dan dievaluasi berkala', '2019', '2018'),
(23, 22, 'Perencanaan dan penganggaran TIK sebaiknya tertuang dalam rencana kerja anggaran tahunan secara terpadu sebaiknya dapat dikendalikan oleh unit kerja/perangkat daerah yang berfungsi sebagai pengelola TIK, dan dapat diukur, dipantau, dan dievaluasi secara berkala', '3', '3', 'Pengembangan Data Center', '2019', '2018'),
(24, 23, 'Perencanaan kapasitas, pengendalian, dan pemantauan layanan dari satu atau beberapa pusat data (data center) sebaiknya dapat dilakukan secara berkala dan terpusat (manajemen tunggal)', '2', '5', 'Integrasi sesuai arsitektur dari Rencana Induk SPBE', '2019', '2018'),
(25, 24, 'Integrasi sistem aplikasi sebaiknya diterapkan secara menyeluruh berdasarkan pada arsitektur dan peta rencana dari rencana induk SPBE', '2', '5', 'Aplikasi Umum sesuai arsitektur dari Rencana Induk SPBE', '2019', '2018'),
(26, 25, 'Aplikasi umum sebaiknya diterapkan dan digunakan oleh seluruh unit kerja/perangkat daerah di Instansi Pusat/Pemerintah Daerah berdasarkan arsitektur dan peta rencana dari rencana induk SPBE', '3', '2', 'Integrasi Layanan Naskah Dinas dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(27, 26, 'Layanan naskah dinas elektronik sebaiknya ditingkatkan menjadi layanan kolaborasi dimana layanan tersebut dikolaborasikan/diintegrasikan dengan layanan SPBE lain berdasarkan arsitektur SPBE dan integrasi proses bisnis di dalam maupun antar Instansi Pusat/Pemerintah Daerah', '1', '1', 'Layanan Manajemen Kepegawaian ditingkatkan menjadi transaski dua arah berbasis online dan terintegrasi dengan SPBE lainnya', '2019', '2018'),
(28, 27, 'Layanan manajemen kepegawaian sebaiknya ditingkatkan menjadi layanan transaksi dimana proses-proses pada manajemen kepegawaian dilaksanakan secara otomasi seperti tindakan persetujuan dan verifikasi terhadap transaksi kenaikan pangkat, pengajuan cuti, dan sebagainya', '4', '5', 'Optimalisasi Layanan Manajemen Perencanaan dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(29, 28, 'Layanan manajemen perencanaan kegiatan yang terintegrasi sebaiknya ditingkatkan menjadi layanan optimalisasi dimana dapat melakukan pemenuhan permintaan perubahan layanan, penyesuaian terhadap perubahan-perubahan internal dan eksternal di Instansi Pusat/Pemerintah Daerah, dan penerapan manajemen perubahan', '4', '5', 'Optimalisasi Layanan Manajemen Penganggaran dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(30, 29, 'Layanan manajemen penganggaran yang terintegrasi sebaiknya ditingkatkan menjadi layanan optimalisasi dimana dapat melakukan pemenuhan permintaan perubahan layanan, penyesuaian terhadap perubahanperubahan internal dan eksternal di Instansi Pusat/Pemerintah Daerah, dan penerapan manajemen perubahan', '4', '5', 'Optimalisasi Layanan Manajemen Keuangan dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(31, 30, 'Layanan manajemen keuangan yang terintegrasi sebaiknya ditingkatkan menjadi layanan optimalisasi dir-nana dapat melakukan pemenuhan permintaan perubahan layanan, penyesuaian terhadap perubahanperubahan internal dan eksternal di Instansi Pusat/Pemerintah Daerah, dan penerapan manajemen perubahan', '3', '3', 'Optimalisasi Layanan Manajemen Kinerja dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(32, 31, 'Layanan manajemen kinerja sebaiknya ditingkatkan menjadi layanan kolaborasi dimana layanan tersebut dikolaborasikan/diintegrasikan dengan layanan SPBE lain berdasarkan arsitektur SPBE dan integrasi proses bisnis di dalam maupun antar Instansi Pusat/Pemerintah Daerah', '4', '5', 'Optimalisasi Layanan Pengadaan dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(34, 32, 'Layanan pengadaan yang terintegrasi sebaiknya ditingkatkan menjadi layanan optimalisasi dimana dapat melakukan pemenuhan permintaan perubahan layanan, penyesuaian terhadap perubahan-perubahan internal dan eksternal di Instansi Pusat/Pemerintah Daerah, dan penerapan manajemen perubahan', '3', '5', 'Optimalisasi Layanan Pengaduan Publik dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(35, 33, 'Layanan pengaduan publik ditingkatkan menjadi layanan kolaborasi dimana layanan tersebut dikolaborasikan/diintegrasikan dengan layanan SPBE lain berdasarkan arsitektur SPBE dan integrasi proses bisnis di dalam maupun antar Instansi Pusat/Pemerintah Daerah', '2', '2', 'Optimalisasi Layanan Dokumentasi dan Informasi Hukum agar proses layanan dari awal pengajuan hingga akhir berbasis  online ', '2019', '2018'),
(36, 34, 'Layanan jaringan dokumentasi dan informasi hukum (JDIH) sebaiknya ditingkatkan menjadi layanan transaksi dimana proses-proses pada layanan dokumendasi dan informasi hukum dilaksanakan secara otomasi seperti mengunduh atau mengunggah informasi terkait dokumentasi clan informasi hukum, melakukan pengajuan penambahan informasi dokumentasi hukum baru, proses validasi serta persetujuan dokumentasi informasi hukum baru yang diajukan, dan pencarian informasi hukum berbasis kecerdasan', '3', '5', 'Optimalisasi Layanan Whistle Blowing System dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(37, 35, 'Layanan whistle blowing system (WBS) sebaiknya ditingkatkan menjadi layanan kolaborasi dimana layanan tersebut dikolaborasikan/diintegrasikan dengan layanan SPBE lain berdasarkan arsitektur SPBE dan integrasi proses bisnis di dalam maupun antar Instansi Pusat/Pemerintah Daerah', '1', '5', 'Yang diinputkan sebaiknya Layanan Publik yang belum dinilai pada indikator sebelumnya', '2019', '2018'),
(38, 36, 'Layanan publik sebaiknya ditingkatkan menjadi layanan transaksi dimana pengguna dapat dengan mudah mendapatkan layanan dan sistem dapat menjalankan otomasi proses bisnis layanan dan menerapkan transaksi layanan ke dalam basis data secara daring (on-line)', '3', '5', 'Optimalisasi Layanan Bursa Kerja dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(39, 37, 'Layanan publik sebaiknya ditingkatkan menjadi layanan kolaborasi dimana layanan tersebut dikolaborasikan/diintegrasikan dengan layanan SPBE lain berdasarkan arsitektur SPBE dan integrasi proses bisnis di dalam maupun antar Instansi Pusat/Pemerintah Daerah', '3', '5', 'Optimalisasi Layanan Perijinan dengan SPBE lainnya sesuai arsitektur SPBE', '2019', '2018'),
(42, 1, 'Masih Menunggu Hasil Kemenpan 2019', '-', '2', '-	Kebijakan Tim Pengarah SPBE \r\n-	Monev Kebijakan', '2020', '2019'),
(43, 2, 'Masih Menunggu Hasil Kemenpan 2019', '-', '2', '-	Kebijakan Proses Bisnis Integrasi\r\n-	Monev Kebijakan', '2020', '2019'),
(44, 3, 'Masih Menunggu Hasil Kemenpan 2019', '-', '2', '-	Kebijakan Rencana Induk Blue Print eGov\r\n-	Monev Kebijakan', '2020', '2019'),
(45, 4, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Kebijakan Anggaran dan  Belanja TIK\r\n-	Monev Kebijakan', '2020', '2019'),
(46, 5, 'Masih Menunggu Hasil Kemenpan 2019', '-', '2', '-	Revisi Perwali eGov  atau Rencana Induk SPBE (Pusat Data)\r\n-	Monev Kebijakan', '2020', '2019'),
(47, 6, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Revisi Perwali eGov  atau Rencana Induk  SPBE (Integrasi Sistem)\r\n-	Monev Kebijakan', '2020', '2019'),
(48, 7, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Kebijakan aplikasi monitoring dan evaluasi (Simonev) Karma Simanis\r\n-	Monev Kebijakan', '2020', '2019'),
(49, 8, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Kebijakan Layanan Naskah Dinas\r\n-	Monev Kebijakan', '2020', '2019'),
(50, 9, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Kebijakan Layanan Manajemen Kepegawaian (Simak di Hati)\r\n-	Monev Kebijakan', '2020', '2019'),
(51, 10, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Kebijakan Layanan Manajemen Perencanaaan dan Penganggaran\r\n-	Monev Kebijakan', '2020', '2019'),
(52, 11, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Membuat Kebijakan Layanan Manajemen Keuangan\r\n-	Monev Kebijakan', '2020', '2019'),
(53, 12, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Revisi Kebijakan Layanan Manajemen Kinerja\r\n-	Monev Kebijakan', '2020', '2019'),
(54, 13, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Revisi Perwali No 2 Tahun 2018 Tentang Layanan Pengadaan (Integrasi dengan Layanan SPBE lainnya)\r\n-	Monev Kebijakan', '2020', '2019'),
(55, 14, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Revisi Perwali No 45 Tahun 2014 Tentang Pengaduan Publik (Integrasi dengan Layanan SPBE lainnya)\r\n-	Monev Kebijakan', '2020', '2019'),
(56, 15, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Membuat Kebijakan Layanan JDIH\r\n-	Monev Kebijakan', '2020', '2019'),
(57, 16, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Membuat atau Revisi Kebijakan Layanan WBS\r\n-	Monev Kebijakan', '2020', '2019'),
(58, 17, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Kebijakan Layanan Perijinan\r\n-	Monev Kebijakan', '2020', '2019'),
(59, 18, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Membentuk Tim Pengarah SPBE\r\n-	Monev Berkala', '2020', '2019'),
(60, 19, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Menerapkan proses bisnis\r\n-	Monev Berkala', '2020', '2019'),
(61, 20, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Membuat Rencana Induk SPBE\r\n-	Monev Berkala', '2020', '2019'),
(62, 21, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Anggaran Belanja TIK OPD diukur, dipantau dan dievaluasi berkala', '2020', '2019'),
(63, 22, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Pengembangan Data Center\r\n-	Monev Berkala', '2020', '2019'),
(64, 23, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Integrasi sesuai arsitektur dari Rencana Induk SPBE\r\n-	Monev Berkala', '2020', '2019'),
(65, 24, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Optimalisasi Penerapan  eMonev yang terintegrasi dari perencanaan, penganggaran, hingga realisasi fisik serta keuangan dan kepegawaian.\r\n-	Monev Berkala', '2020', '2019'),
(66, 25, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Optimalisasi  Penerapan Layanan Naskah Dinas\r\n-	Monitoring Berkala', '2020', '2019'),
(67, 26, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Optimalisasi  Penerapan dan Pengembangan Layanan Kepegawaian\r\n-	Monitoring Berkala', '2020', '2019'),
(68, 27, 'Masih Menunggu Hasil Kemenpan 2019', '-', '4', '-	Optimalisasi  Penerapan Layanan Manajemen Perencanaan\r\n-	Monev Berkala', '2020', '2019'),
(69, 28, 'Masih Menunggu Hasil Kemenpan 2019', '-', '4', '-	Optimalisasi  Penerapan Layanan Manajemen Penganggaran\r\n-	Monev Berkala', '2020', '2019'),
(70, 29, 'Masih Menunggu Hasil Kemenpan 2019', '-', '4', '-	Optimalisasi  Penerapan Layanan Manajemen Keuangan\r\n-	Monev Berkala', '2020', '2019'),
(71, 30, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Optimalisasi  Penerapan dan Pengembangan Layanan Manajemen Kinerja\r\n-	Monev Berkala', '2020', '2019'),
(72, 31, 'Masih Menunggu Hasil Kemenpan 2019', '-', '4', '-	Optimalisasi  Penerapan Layanan Pengadaan\r\n-	Monev Berkala', '2020', '2019'),
(73, 32, 'Masih Menunggu Hasil Kemenpan 2019', '-', '4', '-	Optimalisasi  Penerapan dan Pengembangan Layanan Pengaduan Publik\r\n-	Monev Berkala', '2020', '2019'),
(74, 33, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Optimalisasi  Penerapan dan Pengembangan Layanan Dokumentasi dan Informasi Hukum\r\n-	Monev Berkala', '2020', '2019'),
(75, 34, 'Masih Menunggu Hasil Kemenpan 2019', '-', '3', '-	Optimalisasi  Penerapan dan Pengembangan Layanan WBS\r\n-	Monev Berkala', '2020', '2019'),
(76, 35, 'Masih Menunggu Hasil Kemenpan 2019', '-', '4', '-	Optimalisasi  Layanan Perpajakan dengan mengkolaborasikan dalam satu dashboard dan dapat diintegrasikan dengan layanan SPBE lain.\r\n-	Membuat Kebijakan Internal Layanan Perpajakan yang dapat terintegrasi dengan SPBE lainnya\r\n-	Monev Layanan dan Kebijakan secara Berkala', '2020', '2019'),
(77, 36, 'Masih Menunggu Hasil Kemenpan 2019', '-', '4', '-	Optimalisasi Penerapan dan Pengembangan Layanan Bursa Kerja \r\n-	Revisi Kebijakan Internal Layanan Bursa Kerja Online serta dapat terintegrasi dengan SPBE lainnya\r\n-	Monev Berkala', '2020', '2019'),
(78, 37, 'Masih Menunggu Hasil Kemenpan 2019', '-', '4', '-	Optimalisasi Penerpan dan Pengembangan Layanan Perijinan\r\n-	Monev Berkala', '2020', '2019'),
(128, 16, 'Kebijakan Internal Layanan Whistle Blowing System (WBS) sebaiknya dilengkapi dengan memuat pengaturan kebutuhan integrasi layanan WBS secara elektronik dengan layanan SPBE lain yang sudah tersedia cli Instansi Pusat/Pemerintah Daerah atau integrasi layanan WBS secara elektronik antar Instansi Pusat/Pemerintah Daerah dan/atau antar Instansi Pusat dengan Pemerintah Daerah.', '3', '5', 'Revisi Perwali No 45 Tahun 2014 Tentang Pengaduan Publik (Integrasi dengan Layanan SPBE lainnya).\r\nAtau membuat Kebijakan khusus WBS.\r\n', '2019', '2018');

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
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `userid` varchar(50) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `opd` varchar(11) DEFAULT NULL,
  `groupuser` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`userid`, `nama_user`, `password`, `email`, `opd`, `groupuser`, `is_active`) VALUES
('adminkominfo', 'Dinas Kominfo', 'dc2f4ef676263fe9dde73a9ae6299258', 'kominfo@denpasarkota.go.id', '030801', 2, 1),
('adminspbe', 'Super Admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', NULL, 1, 1),
('bagianhukum', 'Bagian Hukum', 'b843c6ea6077bd1eb27548e07d591c35', NULL, '011201', 2, 1),
('bagianorganisasi', 'Bagian Organisasi', '1efd3dee0c257f51ac4c75f168353ed5', NULL, '011301', 2, 1),
('bagianpengadaan', 'Bagian Pengadaan Barang dan Jasa', 'b7dd088116d13dfa902001bf49870105', NULL, '013301', 2, 1),
('bappeda', 'bappeda2019', 'e2e3d13348a5e908baa2a4b76fe83e89', '', '040201', 2, 1),
('bkpsdm', 'Admin BKPSDM', 'b87b2975180902190afb65d3bedfd7a0', NULL, '040301', 2, 1),
('bpkad', 'BPKAD', '6575228571e0e356f4f64f2f8f41f53d', NULL, '300005', 2, 1),
('denpasarkota', 'Denpasar Kota', 'a16ceb6d9cc146de1a264d4edac2f2e7', 'kominfo@denpasarkota.go.id', '000000', 1, 1),
('disnaker', 'Dinas Tenaga Kerja dan Sertifikasi Kompetensi', '61eefc16e73f03267a6e5fc48c14f59a', NULL, '030901', 2, 1),
('DKIS', 'Dinas Komunikasi Informatika dan Statistik', '2d62de33b8e7c8335ca02fff330e82ac', NULL, '030801', 2, 1),
('dukcapil', 'Dinas Kependudukan dan Pencatatan Sipil', '82ff51b31791266a375e874eda11dc4e', NULL, '030601', 2, 1),
('Inspektorat', 'Inspektorat', '6639d469acc63b64d15b6c97d17c904c', NULL, '040101', 2, 1),
('kominfo', 'Dinas Komunikasi Informatika dan Statistik', '2d62de33b8e7c8335ca02fff330e82ac', NULL, '030801', 2, 1),
('opkominfo', 'Operator Kominfo', 'f6fa6c72881573370a2f61f1e0e6c11b', 'opkominfo@kominfo.com', '030801', 3, 1),
('perijinan', 'Dinas Perijinan', 'df4ccea2ce576678c6382dfcc76a6b87', NULL, '140018', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_aspek`
--
ALTER TABLE `tb_aspek`
  ADD PRIMARY KEY (`idaspek`);

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
  ADD PRIMARY KEY (`iddomain`);

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
-- Indexes for table `tb_indeks`
--
ALTER TABLE `tb_indeks`
  ADD PRIMARY KEY (`id_indeks`);

--
-- Indexes for table `tb_indikator`
--
ALTER TABLE `tb_indikator`
  ADD PRIMARY KEY (`idindikator`);

--
-- Indexes for table `tb_lemah_kuat`
--
ALTER TABLE `tb_lemah_kuat`
  ADD PRIMARY KEY (`id_lemah_kuat`);

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
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_aspek`
--
ALTER TABLE `tb_aspek`
  MODIFY `idaspek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_datapendukung`
--
ALTER TABLE `tb_datapendukung`
  MODIFY `iddata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_detail_indikator`
--
ALTER TABLE `tb_detail_indikator`
  MODIFY `id_detail_indikator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_domain`
--
ALTER TABLE `tb_domain`
  MODIFY `iddomain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_evaluasi`
--
ALTER TABLE `tb_evaluasi`
  MODIFY `idevaluasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_feedback`
--
ALTER TABLE `tb_feedback`
  MODIFY `idfeedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `tb_groupuser`
--
ALTER TABLE `tb_groupuser`
  MODIFY `id_groupuser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_indeks`
--
ALTER TABLE `tb_indeks`
  MODIFY `id_indeks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_indikator`
--
ALTER TABLE `tb_indikator`
  MODIFY `idindikator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_lemah_kuat`
--
ALTER TABLE `tb_lemah_kuat`
  MODIFY `id_lemah_kuat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `idlevel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `tb_opdterkait`
--
ALTER TABLE `tb_opdterkait`
  MODIFY `idopdterkait` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  MODIFY `idpenilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  MODIFY `idpertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
