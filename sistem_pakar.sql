-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27 Nov 2017 pada 14.34
-- Versi Server: 10.1.22-MariaDB
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
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(12) NOT NULL,
  `confirmpassword` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`nama`, `email`, `username`, `password`, `confirmpassword`) VALUES
('', '', '', '', ''),
('Ghaitsa', 'ghaitsary@gmail.com', 'ghaitsary', 'ghary1307', 'ghary1307'),
('ghaitsaryherfa', 'ghaitsary@gmail.com', 'ghary1307', 'ghary13', 'ghary13'),
('halo', 'hehehe', 'haloga', 'hehe', 'hehe'),
('heheh', 'halo', 'hsdajdash', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` varchar(4) NOT NULL,
  `nama_gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
('G01', 'Anak mengalami demam'),
('G02', 'Demam >= 3 hari'),
('G03', 'Demam >= 7 hari'),
('G04', 'Demam >=10 hari'),
('G05', 'Suhu badan saat demam >= 37C'),
('G06', 'Suhu badan saat demam >= 38C'),
('G07', 'Suhu badan saat demam >=39C'),
('G08', 'Anak pernah menderita malaria'),
('G09', 'Waktu malaria sebulan yang lalu'),
('G10', 'Waktu malaria >= dua bulan lalu'),
('G11', 'Waktu malaria setahun lalu'),
('G12', 'Anak pernah menderita campak'),
('G13', 'Waktu campak sebulan yang lalu'),
('G14', 'Waktu campak >= dua bulan lalu'),
('G15', 'Waktu campak setahun lalu'),
('G16', 'Demam anak mendadak tinggi'),
('G17', 'Tubuh anak mendapatkan ruam kemerahan'),
('G18', 'Tubuh anak mendapatkan bintik-bintik merah'),
('G19', 'Mengalami pendarahan pada gusi dan hidung'),
('G20', 'Tubuh anak menggigil'),
('G21', 'Mengalami muntah'),
('G22', 'Muntah Sering'),
('G23', 'Muntah >= 2 kali sehari'),
('G24', 'Muntah >= 2x seminggu'),
('G25', 'Muntah >= 5x seminggu'),
('G26', 'Anak mengalami diare'),
('G27', 'Lama diare hanya sehari'),
('G28', 'Lama diare >= 2 hari'),
('G29', 'Anak mengalami sembelit'),
('G30', 'Tinja berwarna hitam pekat/Berdarah'),
('G31', 'Lama sembelit hanya sehari'),
('G32', 'lama sembelit >= 2 hari'),
('G33', 'Anak rewel/menangis terus menerus'),
('G34', 'Anak tidak mau menyusui'),
('G35', 'Tubuh merasa kesakitan saat di sentuh'),
('G36', 'Terdapat luka pada mulut (berbentuk cekungan yang dalam)'),
('G37', 'Terdapat nanah yang keluar dari mata (berair nanah)'),
('G38', 'Terdapat kekeruhan pada kornea mata'),
('G39', 'Anak mengalami kembung terus menerus'),
('G40', 'Terdapat benjolan di belakang telinga'),
('G41', 'Nafas anak meningkat dengan cepat'),
('G42', 'Cepatnya nafas >= 40x per menit'),
('G43', 'Cepatnya nafas >= 50x per menit'),
('G44', 'Cepatnya nafas >= 60x per menit'),
('G45', 'Terlihat adanya cekungan pada rongga dada anak saat bernapas'),
('G46', 'Nafas anak berbunyi'),
('G47', 'Terdapat cairan hidung yang berbau tidak sedap '),
('G48', 'Anak mengalami kejang-kejang'),
('G49', 'Anak mengalami batuk kering'),
('G50', 'Anak mengalami batuk berdahak'),
('G51', 'Dahak berwarna kuning'),
('G52', 'Dahak berwarna hijau'),
('G53', 'Dahak berwarna darah'),
('G54', 'Anak selalu menunduk hingga dagu menempel ke dada'),
('G55', 'Terdapat ruam menjadi bentol-bentol kecil yang gatal'),
('G56', 'Bentol berisi cairan yang gatal dan perih'),
('G57', 'Bentol menjadi luka setelah pecah'),
('G58', 'Kesulitan atau terdapat rasa sakit saat menelan'),
('G59', 'Anak mengeluh sakit dibagian telinga'),
('G60', 'Terdapat pembengkakan kelenjar getah bening di leher'),
('G61', 'Amandel berwarna kemerahan, bengkak dan/atau mengalami bintik-bintik putih'),
('G62', 'Napas bau'),
('G63', 'Perubahan pada suara atau suara hilang'),
('G64', 'Diare berwarna darah atau bau nanah/amis'),
('G65', 'Sakit saat buang air besar'),
('G66', 'Terlihat lemas dan letih'),
('G67', 'Tidak napsu makan'),
('G68', 'Demam terus-menerus'),
('G69', 'Cairan hidung berwarna kuning kehijauan'),
('G70', 'Nyeri pada wajah dan terasa sakit saat ditekan'),
('kode', 'nama_gejala');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` varchar(4) NOT NULL,
  `nama_penyakit` varchar(255) NOT NULL,
  `penanganan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `penanganan`) VALUES
('P01', 'Demam', 'Beri dosis pertama antibiotik yang sesuai, berikan satu dosis paracetamol untuk demam >= 38C.'),
('P02', 'Malaria ', 'Beri obat anti malaria oral pilihan pertama, beri satu dosis paracetalom untuk demam >= 38C, kunjungi dokter untuk penangan yang memadai dalam pengobatan malaria.'),
('P03', 'Campak dengan komplikasi berat', 'Beri vitamin A dosis pengobatan, beri dosis pertama antibiotik yang sesuai, jika ada kekeruhan pada korne atau nanah pada mata berikan salep mata tetrasiklin, beri satu dosis paracetamol untuk demam >= 38C.'),
('P04', 'Campak dengan komplikasi pada mata dan/atau mulut', 'Beri vitamin A dosis pengobatan, jika terdapat nanah pada mata beri salep mata antibiotik, jika ada luka pada mulut oleskan antiseptik mulut.'),
('P05', 'Demam Berdarah Dengue (DBD)', 'Beri dosis pertama paracetamol untuk demam >=38C (tidak boleh golongan salisilat dan ibuprofen, berikan oralit atau cairan sebanyak-banyaknya, perdarahan di hidun dan gusi. RUJUK SEGERA!'),
('P06', 'Mungkin DBD', 'Beri dosis pertama paracetamol untuk demam >=38C (tidak boleh golongan salisilat dan ibuprofen), berikan oralit atau cairan sebanyak-banyaknya.'),
('P07', 'Tifus', 'Beri dosis pertama paracetamol untuk demam >=37C, beri dosis pertama antibiotik yang sesuai, berikan minum air putih agar tidak kekurangan cairan, istirahatkan anak jangan biarkan banyak bergerak.'),
('P08', 'Meningitis', 'Beri dosis pertama paracetamol untuk demam >=37C, beri dosis pertama antibiotik yang sesuai, beri obat pereda rasa sakit untuk sakit kepala dan obat anti mual untuk mencegah muntah yang terus-menerus. Jika keadaan tidak membaik RUJUK SEGERA!!!'),
('P09', 'Pneumonia Ringan', 'Beri dosis pertama antibiotik yang sesuai (KOTRIMOKSASOL 4mg/kgBB atau AMOKSISILIN 25mg/kgBB 2 kali sehari selama 3 hari, berikan satu dosis paracetamol untuk demam >= 38C.'),
('P10', 'Pneumonia Berat', 'RUJUK SEGERA KE RUMAH SAKIT!!!'),
('P11', 'Demam dengan komplikasi berat', 'Beri dosis pertama paracetamol untuk demam >=37C, baringkan anak dilantai dengan memiringkan posisi tubuh agar tidak menyumbat saluran pernapasannya. Jika mengalami kejang yang serius RUJUK SEGERA!!!'),
('P12', 'Cacar Air', 'Beri dosis pertama antibiotik yang sesuai, berikan satu dosis paracetamol untuk demam >=37C, jangan biarkan anak menggaruk bintik cacar, beri obat antivirus seperti acyclovir (oleskan pada cacar).'),
('P13', 'Sinusistis ', 'Beri dosis pertama paracetamol jika mengalami demam, semprot hidung dengan semprotan hidung saline beberapa kali dalam sehari atau bisa menggunakan dekongestan sesuai aturan/petunjuk, beri dosis pertama antibiotik yang sesuai untuk pereda rasa sakit.'),
('P14', 'Tonsilitis/Radang Amandel', 'Beri dosis pertama antibiotik yang sesuai, berikan satu dosis paracetamol untuk demam >=37C. RUJUK SEGERA untuk melakukan pengangkatan amandel.'),
('P15', 'Disentri/Infeksi Usus', 'Beri dosis pertama antibiotik yang sesuai ,berikan satu dosis paracetamol untuk demam >=37C, beri cairan oralit jika anak mengalami dehidrasi.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `relasi`
--

CREATE TABLE `relasi` (
  `kode_relasi` varchar(4) NOT NULL,
  `kode_penyakit` varchar(4) DEFAULT NULL,
  `kode_gejala` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `relasi`
--

INSERT INTO `relasi` (`kode_relasi`, `kode_penyakit`, `kode_gejala`) VALUES
('A01', 'P01', 'G01'),
('A02', 'P01', 'G02'),
('A03', 'P01', 'G05'),
('A04', 'P02', 'G01'),
('A05', 'P02', 'G02'),
('A06', 'P02', 'G06'),
('A07', 'P02', 'G08'),
('A08', 'P02', 'G09'),
('A09', 'P02', 'G10'),
('A10', 'P02', 'G11'),
('A100', 'P06', 'G34'),
('A101', 'P06', 'G66'),
('A102', 'P06', 'G67'),
('A103', 'P06', 'G68'),
('A104', 'P07', 'G01'),
('A105', 'P07', 'G02'),
('A106', 'P07', 'G03'),
('A107', 'P07', 'G04'),
('A108', 'P07', 'G05'),
('A109', 'P07', 'G06'),
('A11', 'P02', 'G20'),
('A110', 'P07', 'G07'),
('A111', 'P07', 'G16'),
('A112', 'P07', 'G18'),
('A113', 'P07', 'G26'),
('A114', 'P07', 'G27'),
('A115', 'P07', 'G28'),
('A116', 'P07', 'G33'),
('A117', 'P07', 'G34'),
('A118', 'P07', 'G39'),
('A119', 'P07', 'G49'),
('A12', 'P02', 'G21'),
('A120', 'P07', 'G66'),
('A121', 'P07', 'G67'),
('A122', 'P07', 'G68'),
('A123', 'P08', 'G01'),
('A124', 'P08', 'G02'),
('A125', 'P08', 'G03'),
('A126', 'P08', 'G04'),
('A127', 'P08', 'G05'),
('A128', 'P08', 'G06'),
('A129', 'P08', 'G07'),
('A13', 'P02', 'G22'),
('A130', 'P08', 'G16'),
('A131', 'P08', 'G17'),
('A132', 'P08', 'G20'),
('A133', 'P08', 'G21'),
('A134', 'P08', 'G22'),
('A135', 'P08', 'G23'),
('A136', 'P08', 'G24'),
('A137', 'P08', 'G25'),
('A138', 'P08', 'G26'),
('A139', 'P08', 'G27'),
('A14', 'P02', 'G23'),
('A140', 'P08', 'G28'),
('A141', 'P08', 'G33'),
('A142', 'P08', 'G34'),
('A143', 'P08', 'G40'),
('A144', 'P08', 'G41'),
('A145', 'P08', 'G42'),
('A146', 'P08', 'G43'),
('A147', 'P08', 'G44'),
('A148', 'P08', 'G54'),
('A149', 'P08', 'G66'),
('A15', 'P02', 'G24'),
('A150', 'P08', 'G67'),
('A151', 'P08', 'G48'),
('A152', 'P09', 'G01'),
('A153', 'P09', 'G02'),
('A154', 'P09', 'G03'),
('A155', 'P09', 'G04'),
('A156', 'P09', 'G05'),
('A157', 'P09', 'G06'),
('A158', 'P09', 'G07'),
('A159', 'P09', 'G20'),
('A16', 'P02', 'G25'),
('A160', 'P09', 'G21'),
('A161', 'P09', 'G22'),
('A162', 'P09', 'G23'),
('A163', 'P09', 'G24'),
('A164', 'P09', 'G25'),
('A165', 'P09', 'G26'),
('A166', 'P09', 'G27'),
('A167', 'P09', 'G28'),
('A168', 'P09', 'G49'),
('A169', 'P09', 'G50'),
('A17', 'P02', 'G26'),
('A170', 'P09', 'G51'),
('A171', 'P09', 'G52'),
('A172', 'P09', 'G53'),
('A173', 'P10', 'G01'),
('A174', 'P10', 'G02'),
('A175', 'P10', 'G03'),
('A176', 'P10', 'G04'),
('A177', 'P10', 'G05'),
('A178', 'P10', 'G06'),
('A179', 'P10', 'G07'),
('A18', 'P02', 'G27'),
('A180', 'P10', 'G20'),
('A181', 'P10', 'G21'),
('A182', 'P10', 'G22'),
('A183', 'P10', 'G23'),
('A184', 'P10', 'G24'),
('A185', 'P10', 'G25'),
('A186', 'P10', 'G26'),
('A187', 'P10', 'G27'),
('A188', 'P10', 'G28'),
('A189', 'P10', 'G41'),
('A19', 'P02', 'G28'),
('A190', 'P10', 'G42'),
('A191', 'P10', 'G43'),
('A192', 'P10', 'G44'),
('A193', 'P10', 'G45'),
('A194', 'P10', 'G46'),
('A195', 'P10', 'G49'),
('A196', 'P10', 'G50'),
('A197', 'P10', 'G51'),
('A198', 'P10', 'G52'),
('A199', 'P10', 'G53'),
('A20', 'P02', 'G30'),
('A200', 'P10', 'G54'),
('A201', 'P11', 'G01'),
('A202', 'P11', 'G02'),
('A203', 'P11', 'G03'),
('A204', 'P11', 'G04'),
('A205', 'P11', 'G05'),
('A206', 'P11', 'G06'),
('A207', 'P11', 'G07'),
('A208', 'P11', 'G21'),
('A209', 'P11', 'G22'),
('A21', 'P02', 'G48'),
('A210', 'P11', 'G23'),
('A211', 'P11', 'G24'),
('A212', 'P11', 'G25'),
('A213', 'P11', 'G26'),
('A214', 'P11', 'G27'),
('A215', 'P11', 'G28'),
('A216', 'P11', 'G29'),
('A217', 'P11', 'G30'),
('A218', 'P11', 'G31'),
('A219', 'P11', 'G32'),
('A22', 'P03', 'G01'),
('A220', 'P11', 'G33'),
('A221', 'P11', 'G34'),
('A222', 'P11', 'G39'),
('A223', 'P11', 'G40'),
('A224', 'P11', 'G48'),
('A225', 'P11', 'G49'),
('A226', 'P11', 'G50'),
('A227', 'P11', 'G51'),
('A228', 'P11', 'G52'),
('A229', 'P11', 'G53'),
('A23', 'P03', 'G12'),
('A230', 'P11', 'G54'),
('A231', 'P11', 'G66'),
('A232', 'P12', 'G01'),
('A233', 'P12', 'G02'),
('A234', 'P12', 'G03'),
('A235', 'P12', 'G04'),
('A236', 'P12', 'G05'),
('A237', 'P12', 'G06'),
('A238', 'P12', 'G07'),
('A239', 'P12', 'G18'),
('A24', 'P03', 'G13'),
('A240', 'P12', 'G55'),
('A241', 'P12', 'G56'),
('A242', 'P12', 'G57'),
('A243', 'P12', 'G66'),
('A244', 'P12', 'G67'),
('A245', 'P13', 'G01'),
('A246', 'P13', 'G02'),
('A247', 'P13', 'G03'),
('A248', 'P13', 'G04'),
('A249', 'P13', 'G05'),
('A25', 'P03', 'G14'),
('A250', 'P13', 'G06'),
('A251', 'P13', 'G07'),
('A252', 'P13', 'G47'),
('A253', 'P13', 'G69'),
('A254', 'P13', 'G70'),
('A255', 'P14', 'G01'),
('A256', 'P14', 'G02'),
('A257', 'P14', 'G03'),
('A258', 'P14', 'G04'),
('A259', 'P14', 'G05'),
('A26', 'P03', 'G15'),
('A260', 'P14', 'G06'),
('A261', 'P14', 'G07'),
('A262', 'P14', 'G33'),
('A263', 'P14', 'G34'),
('A264', 'P14', 'G40'),
('A265', 'P14', 'G58'),
('A266', 'P14', 'G59'),
('A267', 'P14', 'G60'),
('A268', 'P14', 'G61'),
('A269', 'P14', 'G62'),
('A27', 'P03', 'G16'),
('A270', 'P14', 'G63'),
('A271', 'P14', 'G64'),
('A272', 'P15', 'G01'),
('A273', 'P15', 'G02'),
('A274', 'P15', 'G03'),
('A275', 'P15', 'G04'),
('A276', 'P15', 'G05'),
('A277', 'P15', 'G06'),
('A278', 'P15', 'G07'),
('A279', 'P15', 'G20'),
('A28', 'P03', 'G17'),
('A280', 'P15', 'G21'),
('A281', 'P15', 'G22'),
('A282', 'P15', 'G23'),
('A283', 'P15', 'G24'),
('A284', 'P15', 'G25'),
('A285', 'P15', 'G26'),
('A286', 'P15', 'G27'),
('A287', 'P15', 'G28'),
('A288', 'P15', 'G64'),
('A289', 'P15', 'G65'),
('A29', 'P03', 'G21'),
('A290', 'P15', 'G66'),
('A291', 'P15', 'G67'),
('A30', 'P03', 'G22'),
('A31', 'P03', 'G23'),
('A32', 'P03', 'G24'),
('A33', 'P03', 'G25'),
('A34', 'P03', 'G33'),
('A35', 'P03', 'G34'),
('A36', 'P03', 'G35'),
('A37', 'P03', 'G36'),
('A38', 'P03', 'G37'),
('A39', 'P03', 'G38'),
('A40', 'P03', 'G26'),
('A41', 'P03', 'G27'),
('A42', 'P03', 'G28'),
('A43', 'P03', 'G49'),
('A44', 'P03', 'G66'),
('A45', 'P03', 'G67'),
('A46', 'P04', 'G01'),
('A47', 'P04', 'G12'),
('A48', 'P04', 'G13'),
('A49', 'P04', 'G14'),
('A50', 'P04', 'G15'),
('A51', 'P04', 'G16'),
('A52', 'P04', 'G17'),
('A53', 'P04', 'G21'),
('A54', 'P04', 'G22'),
('A55', 'P04', 'G23'),
('A56', 'P04', 'G24'),
('A57', 'P04', 'G25'),
('A58', 'P04', 'G33'),
('A59', 'P04', 'G34'),
('A60', 'P04', 'G35'),
('A61', 'P04', 'G36'),
('A62', 'P04', 'G37'),
('A63', 'P04', 'G26'),
('A64', 'P04', 'G27'),
('A65', 'P04', 'G28'),
('A66', 'P04', 'G49'),
('A67', 'P04', 'G66'),
('A68', 'P04', 'G67'),
('A69', 'P05', 'G01'),
('A70', 'P05', 'G02'),
('A71', 'P05', 'G03'),
('A72', 'P05', 'G04'),
('A73', 'P05', 'G05'),
('A74', 'P05', 'G06'),
('A75', 'P05', 'G07'),
('A76', 'P05', 'G16'),
('A77', 'P05', 'G18'),
('A78', 'P05', 'G19'),
('A79', 'P05', 'G20'),
('A80', 'P05', 'G21'),
('A81', 'P05', 'G22'),
('A82', 'P05', 'G23'),
('A83', 'P05', 'G24'),
('A84', 'P05', 'G25'),
('A85', 'P05', 'G30'),
('A86', 'P05', 'G33'),
('A87', 'P05', 'G34'),
('A88', 'P05', 'G66'),
('A89', 'P05', 'G67'),
('A90', 'P06', 'G01'),
('A91', 'P06', 'G02'),
('A92', 'P06', 'G03'),
('A93', 'P06', 'G04'),
('A94', 'P06', 'G05'),
('A95', 'P06', 'G06'),
('A96', 'P06', 'G07'),
('A97', 'P06', 'G18'),
('A98', 'P06', 'G30'),
('A99', 'P06', 'G33');

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
-- Indexes for table `relasi`
--
ALTER TABLE `relasi`
  ADD PRIMARY KEY (`kode_relasi`),
  ADD KEY `kode_penyakit` (`kode_penyakit`),
  ADD KEY `kode_gejala` (`kode_gejala`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `relasi`
--
ALTER TABLE `relasi`
  ADD CONSTRAINT `relasi_ibfk_1` FOREIGN KEY (`kode_penyakit`) REFERENCES `penyakit` (`kode_penyakit`),
  ADD CONSTRAINT `relasi_ibfk_2` FOREIGN KEY (`kode_gejala`) REFERENCES `gejala` (`kode_gejala`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
