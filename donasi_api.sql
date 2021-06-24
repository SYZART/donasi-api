-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2021 at 05:25 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donasi_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama`, `email`, `password`) VALUES
(1, 'adminis', 'admin@gmail.com', '$2y$10$VdtQjYhqq25E/4E60C/qme6gSYO8Z8FNgleCTGBbwmc/kCUXwe/ry'),
(2, 'admin', 'a@mail.com', '$2y$10$rRe1tRmlMyBA7RLjisGQqu9HyUTXPxjuTma2S8eM.Mp.xDZkXD2gC'),
(3, 'asd', 'asd@mail.com', '$2y$10$xVBgFG5OY.nn7Mo8Nd0gNeMoBAy3TnkK4ogyjSSgRkzH1wiJo2Rua'),
(4, 'fga', 'fga@mail.com', '$2y$10$biRbrbMRfF.ZoaexBHn0nOmatm7IVdSJGB59uFMVekUkmoUReacQm'),
(5, 'ssss', 'ssss@mail.com', '$2y$10$zxuuabRbVjgVZ51uOAUMUOBohQNX0XJ3G5FAG5Urzl1eacUr.SRtK');

-- --------------------------------------------------------

--
-- Table structure for table `member_token`
--

CREATE TABLE `member_token` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `auth_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member_token`
--

INSERT INTO `member_token` (`id`, `member_id`, `auth_key`) VALUES
(1, 1, 'rPspT2pQ1AFgeC2RNPLCrfHwnVauEMdSS8fWvbvTsw6TwwNX6pKKZdfrrVylJvFwiWKp6XfdcUdxLutA3mZdJQZtnIsih9p4UIyA'),
(2, 2, 'hEsq2A7JIeC1at93FDskCybCZhxhzOOdsmKdMAdmENMmFBl5ddom5QsrBLsx8e6AdJbVHLjEJQKnygTsplta10indptlUBoTTPbR'),
(3, 3, 'eTod5d0yGjGn8esaMorxZzjpIKsuxWjTEhlpmLbpC0AFpjDJsx3JsD30LE0sT0Pjcei8dALekTSo8uF0dBvt1IUlnjlBMUF8xQvj'),
(4, 4, 'JxQQ7G2MSRY8wB1UpKyZWHidudYkHCd7HMustB3Uyb4PozCaH8dKsnjEMc70ElJM1n1AWKV5rqwsn6d7UFrqsOB9msWjEvwEGWF7'),
(18, 5, 'LGZfDs7r3FBNPA7CCtLs23U3gVB9YlmdKvthAlOhY15XstjcJ9f7Bidi8Q41FqVyA2omusPjmCJlhosqJDGRrOBoAK9FanH1KIqJ');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `judul_iklan` varchar(255) NOT NULL,
  `dana_need` int(128) NOT NULL,
  `dana_collected` int(128) NOT NULL,
  `url` varchar(512) NOT NULL,
  `cerita` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `judul_iklan`, `dana_need`, `dana_collected`, `url`, `cerita`) VALUES
(4, 'RS Apung Karam: Bangun Kembali Kapal RSA dr Lie II', 500000000, 3004560, 'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg', 'Musibah telah menimpa Rumah Sakit Apung (RSA) dr. Lie Dharmawan hingga karam di sekitar perairan Selat Sape, Nusa Tenggara Barat pada hari Rabu (16/6) kemarin.\r\nSetelah menyelesaikan pelayanan medis di Pulau Semau, Kupang, Nusa Tenggara Timur (14/6), kapal berlayar dari Pelabuhan Tenau, Kupang menuju Torano, Sumbawa Besar, Nusa Tenggara Barat, tempat pelayanan medis berikutnya. \r\n\r\nNamun sebelum sampai ke pelabuhan, kapal karam di sekitar perairan Selat Sape, Nusa Tenggara Barat pada pukul 14.00 WIT.'),
(5, 'Bantu Anak Palestina Lewati Musim Dingin Mematikan', 300000000, 2500000, 'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg', '51% warga Palestina menghadapi musim dingin, tanpa tempat tinggal yang memadai, dan persediaan makanan yang tak menentu mereka harus bisa bertahan hidup.\r\nMusim dingin kerap menjadi ancaman paling mematikan bagi penduduk di negara yang dirundung konflik. Pasalnya, penduduk di negara itu hidup dalam serba keterbatasan dalam menghadapi musim dingin, keterbatasan makanan, keterbatasan tempat tinggal, keterbatasan bahan bakar untuk pemanas ruangan atau pun selimut. '),
(6, 'Pusat Cahaya Islam di Adonara Barat Terancam Rubuh', 900000000, 45000000, 'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg', 'Banjir bandang dan longsor yang menerjang NTT awal bulan April 2021 lalu, telah menyisakan duka mendalam. Rumah, fasilitas umum, hingga rumah ibadah sebagian besar telah rata dengan tanah. Warga kehilangan keluarga hingga harta benda. Luapan air dan lahar dingin ini tak pandang bulu, termasuk pada pesantren satu-satunya di Adonara Barat, NTT. '),
(9, 'Sedekah Jariyah 10.000 Quran ke Penjuru Negeri', 40000000, 2000000, 'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg', '“Jika manusia mati, maka terputuslah amalnya kecuali tiga perkara: (1) sedekah jariyah, (2) ilmu yang diambil manfaatnya, (3) anak shalih yang selalu mendoakan orang tuanya.” (HR. Muslim, no. 1631)\r\n\r\nMelalui program Syiar Qur\'an, Rumah Zakat mengajak kalian untuk ikut menyalurkan 10,000 paket Al-Qur\'an dan Iqro ke wilayah korban bencana di seluruh Indonesia.\r\nQur\'an juga akan dibagikan untuk Desa Berdaya (binaan Rumah Zakat) dan atau pun Non Desa Berdaya.\r\n\r\nInsyaAllah Qur\'an ini dapat menjadi amal jariyah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_token`
--
ALTER TABLE `member_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `member_token`
--
ALTER TABLE `member_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member_token`
--
ALTER TABLE `member_token`
  ADD CONSTRAINT `member_token_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
