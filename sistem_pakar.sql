-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2018 at 01:00 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_pakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`nama`, `email`, `username`, `password`) VALUES
('Ghaitsa', 'getsa', 'ghaitsary', 'ghary1307'),
('Rizky', 'repot@macet.bil', 'repot', 'dcde47d0e913');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` varchar(4) NOT NULL,
  `nama_gejala` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
('G01', 'Demam <=3 hari'),
('G02', 'Demam <= 7 hari'),
('G03', 'Suhu badan saat demam <= 39 C'),
('G04', 'Suhu badan saat demam >= 39 C'),
('G05', '1-5 bulan lalu'),
('G06', 'Setahun lalu'),
('G07', '1-5 bulan lalu'),
('G08', 'Setahun lalu'),
('G09', 'Demam anak mendadak tinggi'),
('G10', 'Tubuh anak mendapatkan ruam kemerahan'),
('G11', 'Tubuh anak mendapatkan bintik-bintik merah'),
('G12', 'Mengalami perdarahan pada gusi dan hidung'),
('G13', 'Tubuh anak menggigil'),
('G14', 'Muntah sehari >= 2 kali'),
('G15', 'Muntah seminggu <= 5 kali'),
('G16', 'Diare 1x sehari'),
('G17', 'Diare >= 2x sehari'),
('G18', 'Mengalami sembelit'),
('G19', 'Tinja berwarna hitam pekat/Berdarah'),
('G20', 'Anak rewel/menangis terus menerus'),
('G21', 'Anak tidak mau menyusu'),
('G22', 'Tubuh merasa kesakitan saat di sentuh'),
('G23', 'Terdapat luka pada mulut (berbentuk cekungan yang dalam)'),
('G24', 'Terdapat nanah yang keluar dari mata (berair nanah)'),
('G25', 'Terdapat kekeruhan pada kornea mata'),
('G26', 'Anak mengalami kembung terus menerus'),
('G27', 'Terdapat benjolan di belakang telinga'),
('G28', 'Cepatnya nafas 40x-50x per menit'),
('G29', 'Cepatnya nafas >= 60x per menit'),
('G30', 'Terdapat cekungan pada dada saat bernapas'),
('G31', 'Nafas anak berbunyi'),
('G32', 'Terdapat cairan hidung yang berbau tidak sedap'),
('G33', 'Anak mengalami kejang-kejang '),
('G34', 'Anak mengalami batuk kering'),
('G35', 'Dahak berwarna kuning kehijauan'),
('G36', 'Dahak berwarna darah'),
('G37', 'Anak selalu menunduk hingga dagu menempel ke dada'),
('G38', 'Terdapat ruam menjadi bentol-bentol kecil yang gatal'),
('G39', 'Bentol berisi cairan yang gatal dan perih'),
('G40', 'Bentol menjadi luka setelah pecah'),
('G41', 'Kesulitan atau terdapat rasa sakit saat menelan'),
('G42', 'Anak mengeluh sakit dibagian telinga'),
('G43', 'Terdapat pembengkakan kelenjar getah bening di leher'),
('G44', 'Amandel berwarna kemerahan, bengkak dan/atau mengalami bintik-bintik putih'),
('G45', 'Napas bau'),
('G46', 'Diare berwarna darah atau bau nanah/amis'),
('G47', 'Sakit saat buang air besar'),
('G48', 'Terlihat lemas dan letih'),
('G49', 'Tidak napsu makan'),
('G50', 'Cairan hidung berwarna kuning kehijauan'),
('G51', 'Anak mengeluh kesakitan pada bagian wajah saat ditekan'),
('G52', 'Tatapan anak kosong '),
('G53', 'Anak sensitif terhadap cahaya\r\n'),
('G54', 'Terdapat pembengkakan pada hidung dan dahi');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` varchar(4) NOT NULL,
  `nama_penyakit` varchar(255) NOT NULL,
  `penanganan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `penanganan`) VALUES
('P01', 'Demam', 'Beri dosis pertama antibiotik yang sesuai. </br>Berikan satu dosis paracetamol untuk demam <= 39C.'),
('P02', 'Malaria ', 'Beri obat anti malaria oral pilihan pertama. </br>\r\nBeri satu dosis paracetalom untuk demam <= 38C. </br>\r\nKunjungi dokter untuk penangan yang memadai dalam pengobatan malaria.'),
('P03', 'Malaria Berat', 'Kunjungi dokter untuk penangan yang memadai dalam pengobatan malaria. </br>\r\nSegera rujuk ke rumah sakit!'),
('P04', 'Campak dengan komplikasi berat', 'Beri vitamin A dosis pengobatan.</br>\r\nBeri dosis pertama antibiotik yang sesuai.</br>\r\nJika ada kekeruhan pada korne atau nanah pada mata berikan salep mata tetrasiklin.</br>\r\nBeri satu dosis paracetamol untuk demam >= 39 C.'),
('P05', 'Kemungkinan Campak', 'Beri vitamin A dosis pengobatan.</br>\r\nBeri dosis pertama antibiotik yang sesuai.</br>\r\nJika ada kekeruhan pada korne atau nanah pada mata berikan salep mata tetrasiklin.</br>\r\nBeri satu dosis paracetamol untuk demam.</br>\r\nLakukan suntik Vaksin Campak'),
('P06', 'Demam Berdarah Dengue (DBD)', 'Beri dosis pertama paracetamol untuk demam >=39C (tidak boleh golongan salisilat dan ibuprofen.</br>\r\nBerikan oralit atau cairan sebanyak-banyaknya. Berikan jus jambu merah untuk meredakan panas.</br>\r\nRUJUK SEGERA!'),
('P07', 'Mungkin DBD', 'Beri dosis pertama paracetamol untuk demam >=39 C (tidak boleh golongan salisilat dan ibuprofen).</br>\r\nBerikan oralit atau cairan sebanyak-banyaknya.'),
('P08', 'Tifus', 'Beri dosis pertama paracetamol untuk demam <=38C.</br>\r\nBeri dosis pertama antibiotik yang sesuai, berikan minum air putih agar tidak kekurangan cairan.</br>\r\nIstirahatkan anak jangan biarkan banyak bergerak.</br>\r\nJika panas tidak turun, RUJUK SEGERA!'),
('P09', 'Meningitis', 'Beri dosis pertama paracetamol untuk demam <=37C.</br>\r\nBeri dosis pertama antibiotik yang sesuai.</br>\r\nBeri obat pereda rasa sakit untuk sakit kepala dan obat anti mual untuk mencegah muntah yang terus-menerus.</br>\r\nJika keadaan tidak membaik RUJUK SEGERA!!!'),
('P10', 'Pneumonia', 'Beri dosis pertama antibiotik yang sesuai (KOTRIMOKSASOL 4mg/kgBB atau AMOKSISILIN 25mg/kgBB 2 kali sehari selama 3 hari.</br>\r\nBerikan satu dosis paracetamol untuk demam <=38C.</br>\r\nJika tejadi percepatan napas jangan dibiarkan tertidur, sandarkan anak ke 2 tumpukan bantal.'),
('P11', 'Demam dengan komplikasi berat', 'Beri dosis pertama paracetamol untuk demam >=37C.</br>\r\nBaringkan anak dilantai dengan memiringkan posisi tubuh agar tidak menyumbat saluran pernapasannya.</br>\r\nJika mengalami kejang yang serius RUJUK SEGERA!!!'),
('P12', 'Cacar Air', 'Beri dosis pertama antibiotik yang sesuai.</br>\r\nBerikan satu dosis paracetamol untuk demam <=37C.</br>\r\nJangan biarkan anak menggaruk bintik cacar.</br>\r\nBeri obat antivirus seperti acyclovir (oleskan pada cacar).'),
('P13', 'Sinusistis', 'Beri dosis pertama paracetamol jika mengalami demam.</br>\r\nSemprot hidung dengan semprotan hidung saline beberapa kali dalam sehari atau bisa menggunakan dekongestan sesuai aturan/petunjuk.</br>\r\nBeri dosis pertama antibiotik yang sesuai untuk pereda rasa sakit.'),
('P14', 'Tonsilitis/Radang Amandel', 'Beri dosis pertama antibiotik yang sesuai.</br>\r\nBerikan satu dosis paracetamol untuk demam >=37C. </br>\r\nRUJUK SEGERA untuk melakukan pengangkatan amandel.'),
('P15', 'Disentri/Infeksi Usus', 'Beri dosis pertama antibiotik yang sesuai ,berikan satu dosis paracetamol untuk demam >=37C, beri cairan oralit jika anak mengalami dehidrasi.');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `kode` varchar(4) NOT NULL,
  `pertanyaan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`kode`, `pertanyaan`) VALUES
('T01', 'Berapa lama demam anak yang dialami?'),
('T02', 'Berapa suhu badan saat demam berlangsung?'),
('T03', 'Apakah anak anda pernah berpergian ke tempat yang sedang mewabah malaria?'),
('T04', 'Apakah anak anda pernah mengalami campak?'),
('T05', 'Apakah demam anak mendadak tinggi dan terus menerus?'),
('T06', 'Apakah tubuh anak anda terdapat ruam kemerahan?'),
('T07', 'Apakah terdapat bintik-bintik merah pada tubuh anak?'),
('T08', 'Apakah mengalami perdarahan pada gusi dan hidung?'),
('T09', 'Apakah tubuh anak anda menggigil?'),
('T10', 'Apakah anak anda mengalami muntah?'),
('T11', 'Apakah anak anda mengalami diare?'),
('T12', 'Apakah anak anda mengalami sembelit?'),
('T13', 'Apakah tinja berwarna hitam pekat/berdarah?'),
('T14', 'Apakah anak anda rewel/menangis terus menerus?'),
('T15', 'Apakah anak anda tidak mau menyusu?'),
('T16', 'Apakah jika tubuh anak dipegang, anak merasakan kesakitan?'),
('T17', 'Apakah ada nanah yang keluar dari mata anak anda? (berair nanah)'),
('T18', 'Apakah ada luka di mulut anak anda? (berbentuk cekungan dalam)'),
('T19', 'Apakah ada kekeruhan pada kornea matanya?'),
('T20', 'Apakah anak anda mengalami kembung terus menerus?'),
('T21', 'Apakah terdapat benjolan di belakang telinga?'),
('T22', 'Apakah anak anda bernapas dengan cepat?'),
('T23', 'Apakah saat menarik napas mengalami cekungan pada rongga dada anak anda?'),
('T24', 'Apakah napasnya berbunyi?'),
('T25', 'Apakah terdapat cairan hidung yang berbau pada anak anda?'),
('T26', 'Apakah anak anda mengalami kejang-kejang?'),
('T27', 'Apakah anak anda batuk kering?'),
('T28', 'Apakah anak anda batuk berdahak?'),
('T29', 'Apakah anak anda selalu menunduk hingga dagu menempel ke dada?'),
('T30', 'Apakah terdapat ruam merah menjadi bentol kecil yang gatal?'),
('T31', 'Apakah bentol tersebut berisi cairan yang gatal dan anak merasa perih?'),
('T32', 'Apakah bentol menjadi luka setelah pecah?'),
('T33', 'Apakah anak anda selalu merasa kesaitan atau sulit untuk menelan?'),
('T34', 'Apakah anak anda mengeluh sakit dibagian telinga?'),
('T35', 'Apakah terdapat pembengkakan atau terdapat benjolan pada bagian leher?'),
('T36', 'Apakah amandel berwarna kemerahan, bengkak atau mengalami bintik-bintik putih?'),
('T37', 'Apakah saat bernapas, napas anak anda bau?'),
('T38', 'Apakah diare anak anda berwarna darah atau bau amis seperti darah?'),
('T39', 'Apakah anak mengeluh kesakitan saat buang air besar?'),
('T40', 'Apakah anak anda terlihat letih dan lemas?'),
('T41', 'Apakah anak anda tidak napsu makan?'),
('T42', 'Apakah anak anda mendapatkan cairan hidung berwarna kuning kehijauan?'),
('T43', 'Apakah anak anda suka mengeluh kesakitan atau nyeri pada bagian wajah, dan sakit saat ditekan?'),
('T44', 'Apakah anak terlihat memiliki tatapan kosong?'),
('T45', 'Apakah anak anda sensitif terhadap cahaya?'),
('T46', 'Apakah terlihat perubahan atau adanya pembengkakan di bagian hidung dan dahi?');

-- --------------------------------------------------------

--
-- Table structure for table `relasi`
--

CREATE TABLE `relasi` (
  `kode_relasi` varchar(7) NOT NULL,
  `kode_penyakit` varchar(4) DEFAULT NULL,
  `kode_gejala` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relasi`
--

INSERT INTO `relasi` (`kode_relasi`, `kode_penyakit`, `kode_gejala`) VALUES
('A01', 'P01', 'G01'),
('A02', 'P01', 'G03'),
('A03', 'P01', 'G14'),
('A04', 'P02', 'G02'),
('A05', 'P02', 'G03'),
('A06', 'P02', 'G06'),
('A07', 'P02', 'G09'),
('A08', 'P02', 'G15'),
('A09', 'P02', 'G16'),
('A10', 'P02', 'G19'),
('A100', 'P10', 'G31'),
('A101', 'P10', 'G34'),
('A102', 'P10', 'G48'),
('A103', 'P10', 'G49'),
('A104', 'P11', 'G01'),
('A105', 'P11', 'G04'),
('A106', 'P11', 'G13'),
('A107', 'P11', 'G14'),
('A108', 'P11', 'G16'),
('A109', 'P11', 'G34'),
('A11', 'P03', 'G02'),
('A110', 'P11', 'G35'),
('A111', 'P11', 'G42'),
('A112', 'P11', 'G48'),
('A113', 'P11', 'G49'),
('A114', 'P12', 'G01'),
('A115', 'P12', 'G03'),
('A116', 'P12', 'G10'),
('A117', 'P12', 'G22'),
('A118', 'P12', 'G38'),
('A119', 'P12', 'G39'),
('A12', 'P03', 'G04'),
('A120', 'P12', 'G40'),
('A121', 'P12', 'G48'),
('A122', 'P13', 'G01'),
('A123', 'P13', 'G03'),
('A124', 'P13', 'G32'),
('A125', 'P13', 'G42'),
('A126', 'P13', 'G50'),
('A127', 'P13', 'G51'),
('A128', 'P13', 'G54'),
('A129', 'P14', 'G01'),
('A13', 'P03', 'G05'),
('A130', 'P14', 'G03'),
('A131', 'P14', 'G21'),
('A132', 'P14', 'G41'),
('A133', 'P14', 'G42'),
('A134', 'P14', 'G43'),
('A135', 'P14', 'G44'),
('A136', 'P14', 'G45'),
('A137', 'P14', 'G48'),
('A138', 'P14', 'G49'),
('A139', 'P15', 'G01'),
('A14', 'P03', 'G09'),
('A140', 'P15', 'G03'),
('A141', 'P15', 'G09'),
('A142', 'P15', 'G16'),
('A143', 'P15', 'G18'),
('A144', 'P15', 'G19'),
('A145', 'P15', 'G20'),
('A146', 'P15', 'G21'),
('A147', 'P15', 'G46'),
('A148', 'P15', 'G47'),
('A149', 'P15', 'G48'),
('A15', 'P03', 'G14'),
('A150', 'P15', 'G49'),
('A151', 'P15', 'G52'),
('A16', 'P03', 'G16'),
('A17', 'P03', 'G19'),
('A18', 'P04', 'G02'),
('A19', 'P04', 'G04'),
('A20', 'P04', 'G07'),
('A21', 'P04', 'G09'),
('A22', 'P04', 'G10'),
('A23', 'P04', 'G15'),
('A24', 'P04', 'G16'),
('A25', 'P04', 'G22'),
('A26', 'P04', 'G23'),
('A27', 'P04', 'G24'),
('A28', 'P04', 'G48'),
('A29', 'P04', 'G49'),
('A30', 'P04', 'G53'),
('A31', 'P05', 'G02'),
('A32', 'P05', 'G04'),
('A33', 'P05', 'G08'),
('A34', 'P05', 'G09'),
('A35', 'P05', 'G10'),
('A36', 'P05', 'G15'),
('A37', 'P05', 'G16'),
('A38', 'P05', 'G23'),
('A39', 'P05', 'G25'),
('A40', 'P05', 'G53'),
('A41', 'P06', 'G02'),
('A42', 'P06', 'G04'),
('A43', 'P06', 'G09'),
('A44', 'P06', 'G11'),
('A45', 'P06', 'G12'),
('A46', 'P06', 'G13'),
('A47', 'P06', 'G14'),
('A48', 'P06', 'G20'),
('A49', 'P06', 'G21'),
('A50', 'P06', 'G27'),
('A51', 'P06', 'G33'),
('A52', 'P06', 'G37'),
('A53', 'P06', 'G43'),
('A54', 'P06', 'G48'),
('A55', 'P06', 'G49'),
('A56', 'P07', 'G02'),
('A57', 'P07', 'G04'),
('A58', 'P07', 'G11'),
('A59', 'P07', 'G13'),
('A60', 'P07', 'G16'),
('A61', 'P07', 'G20'),
('A62', 'P07', 'G21'),
('A63', 'P07', 'G27'),
('A64', 'P07', 'G43'),
('A65', 'P07', 'G48'),
('A66', 'P07', 'G49'),
('A67', 'P08', 'G02'),
('A68', 'P08', 'G04'),
('A69', 'P08', 'G09'),
('A70', 'P08', 'G12'),
('A71', 'P08', 'G13'),
('A72', 'P08', 'G16'),
('A73', 'P08', 'G20'),
('A74', 'P08', 'G21'),
('A75', 'P08', 'G26'),
('A76', 'P08', 'G34'),
('A77', 'P08', 'G48'),
('A78', 'P08', 'G49'),
('A79', 'P08', 'G52'),
('A80', 'P09', 'G02'),
('A81', 'P09', 'G04'),
('A82', 'P09', 'G13'),
('A83', 'P09', 'G14'),
('A84', 'P09', 'G20'),
('A85', 'P09', 'G28'),
('A86', 'P09', 'G33'),
('A87', 'P09', 'G34'),
('A88', 'P09', 'G37'),
('A89', 'P09', 'G48'),
('A90', 'P09', 'G49'),
('A91', 'P09', 'G52'),
('A92', 'P09', 'G53'),
('A93', 'P10', 'G01'),
('A94', 'P10', 'G03'),
('A95', 'P10', 'G13'),
('A96', 'P10', 'G15'),
('A97', 'P10', 'G20'),
('A98', 'P10', 'G29'),
('A99', 'P10', 'G30');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `kode_gejala` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_gejala`
--

INSERT INTO `tmp_gejala` (`kode_gejala`) VALUES
('G01'),
('G03'),
('G05');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_hasil`
--

CREATE TABLE `tmp_hasil` (
  `kode_gejala` varchar(4) DEFAULT NULL,
  `P01` int(11) DEFAULT '0',
  `P02` int(11) DEFAULT '0',
  `P03` int(11) DEFAULT '0',
  `P04` int(11) DEFAULT '0',
  `P05` int(11) DEFAULT '0',
  `P06` int(11) DEFAULT '0',
  `P07` int(11) DEFAULT '0',
  `P08` int(11) DEFAULT '0',
  `P09` int(11) DEFAULT '0',
  `P10` int(11) DEFAULT '0',
  `P11` int(11) DEFAULT '0',
  `P12` int(11) DEFAULT '0',
  `P13` int(11) DEFAULT '0',
  `P14` int(11) DEFAULT '0',
  `P15` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_hasil`
--

INSERT INTO `tmp_hasil` (`kode_gejala`, `P01`, `P02`, `P03`, `P04`, `P05`, `P06`, `P07`, `P08`, `P09`, `P10`, `P11`, `P12`, `P13`, `P14`, `P15`) VALUES
('G01', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1),
('G03', 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1),
('G05', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `relasi`
--
ALTER TABLE `relasi`
  ADD PRIMARY KEY (`kode_relasi`),
  ADD KEY `kode_gejala` (`kode_gejala`),
  ADD KEY `kode_penyakit` (`kode_penyakit`);

--
-- Indexes for table `tmp_gejala`
--
ALTER TABLE `tmp_gejala`
  ADD KEY `kode_gejala` (`kode_gejala`);

--
-- Indexes for table `tmp_hasil`
--
ALTER TABLE `tmp_hasil`
  ADD KEY `kode_gejala` (`kode_gejala`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `relasi`
--
ALTER TABLE `relasi`
  ADD CONSTRAINT `relasi_ibfk_1` FOREIGN KEY (`kode_gejala`) REFERENCES `gejala` (`kode_gejala`),
  ADD CONSTRAINT `relasi_ibfk_2` FOREIGN KEY (`kode_penyakit`) REFERENCES `penyakit` (`kode_penyakit`);

--
-- Constraints for table `tmp_gejala`
--
ALTER TABLE `tmp_gejala`
  ADD CONSTRAINT `tmp_gejala_ibfk_1` FOREIGN KEY (`kode_gejala`) REFERENCES `gejala` (`kode_gejala`);

--
-- Constraints for table `tmp_hasil`
--
ALTER TABLE `tmp_hasil`
  ADD CONSTRAINT `tmp_hasil_ibfk_1` FOREIGN KEY (`kode_gejala`) REFERENCES `gejala` (`kode_gejala`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
