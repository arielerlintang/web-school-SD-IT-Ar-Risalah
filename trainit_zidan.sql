-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2023 at 07:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trainit_zidan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email_admin` varchar(100) NOT NULL,
  `password_admin` varchar(100) NOT NULL,
  `nama_admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `email_admin`, `password_admin`, `nama_admin`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bayarspp`
--

CREATE TABLE `bayarspp` (
  `id_bayarspp` int(11) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `id_siswakelas` int(11) NOT NULL,
  `tanggal_bayarspp` date NOT NULL,
  `nominal_bayarspp` int(11) NOT NULL,
  `bulan_bayarspp` enum('januari','februari','maret','april','mei','juni','july','agustus','september','oktober','november','desember') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul_berita` varchar(100) NOT NULL,
  `tanggal_berita` date NOT NULL,
  `isi_berita` text NOT NULL,
  `foto_berita` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `judul_berita`, `tanggal_berita`, `isi_berita`, `foto_berita`) VALUES
(6, 1, 'penerimaan peserta didik baru tahun jaran 2023 - 2024', '2023-03-17', '<p>lorem eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>\r\n\r\n<p>eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>\r\n\r\n<p>eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>\r\n\r\n<p>eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>\r\n\r\n<p>eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>\r\n', '170323042114download.jpg'),
(7, 3, 'wisuda kelas 6 sd Ar risalah', '2023-03-17', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;peeeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>\r\n\r\n<p>eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>\r\n\r\n<p>eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>\r\n\r\n<p>eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>\r\n\r\n<p>eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>\r\n\r\n<p>eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>\r\n', '170323042328download.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `foto_galeri` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `foto_galeri`) VALUES
(5, '20230317052822berkuda-putra-.jpg'),
(7, '20230317052846berkuda-putri.jpg'),
(8, '20230317052856foto1.jpg'),
(9, '20230317052906foto2.jpg'),
(10, '20230317052917foto4.jpg'),
(12, '20230317052942foto11.jpg'),
(13, '20230317052952tahfidz-putra-.jpg'),
(14, '20230317053005team-futsal-.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `gambar_guru` varchar(255) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `nama_guru` varchar(100) NOT NULL,
  `telepon_guru` varchar(15) NOT NULL,
  `jk_guru` enum('laki laki','perempuan') NOT NULL,
  `alamat_guru` text NOT NULL,
  `email_guru` varchar(100) NOT NULL,
  `password_guru` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `gambar_guru`, `nip`, `nama_guru`, `telepon_guru`, `jk_guru`, `alamat_guru`, `email_guru`, `password_guru`) VALUES
(1, '20230317050612architect-90x901 (1).png', '3028580295435', 'aini nur lathifa', '084287687', 'perempuan', 'sneden', 'aini@gmail.com', 'aini'),
(2, '20230304090227hasil.jpg', '48509850953', 'buncit', '0868386472', 'perempuan', 'ngajen', 'buncit@gmail.com', 'buncit'),
(3, '20230304085026produk0.jpg', '1243424234', 'cahyadi nur wicaksono', '085794398643', 'perempuan', 'solo', 'cahya@gmail.com', 'cahya'),
(5, '20230317051043architect-90x901 (1).png', '55555', 'septi rohi nur indary', '03198739232', 'perempuan', 'sajen', 'septi@gmail.com', 'septi');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Pengumuman Penerimaan Peserta Didik Baru'),
(3, 'Wisuda SD Ar Risalah');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  `jenjang_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `ruang_kelas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `id_tahun`, `jenjang_kelas`, `nama_kelas`, `ruang_kelas`) VALUES
(1, 1, 1, 'kelas 1', 'kelas 1'),
(2, 2, 2, 'kelas 2', 'kelas 2');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode_mapel` char(15) NOT NULL,
  `nama_mapel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `kode_mapel`, `nama_mapel`) VALUES
(1, '001', 'matematika'),
(2, '003', 'IPA'),
(3, '30198309', 'ilmu pengetahuan sosial');

-- --------------------------------------------------------

--
-- Table structure for table `mengajar`
--

CREATE TABLE `mengajar` (
  `id_mengajar` int(11) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mengajar`
--

INSERT INTO `mengajar` (`id_mengajar`, `id_tahun`, `id_guru`, `id_mapel`, `id_kelas`) VALUES
(1, 1, 1, 2, 1),
(2, 1, 2, 1, 1),
(3, 1, 3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_mengajar` int(11) NOT NULL,
  `id_siswakelas` int(11) NOT NULL,
  `nilai_pengetahuan` int(11) NOT NULL,
  `nilai_keterampilan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_mengajar`, `id_siswakelas`, `nilai_pengetahuan`, `nilai_keterampilan`) VALUES
(1, 1, 1, 100, 100),
(2, 3, 1, 70, 70),
(3, 2, 1, 40, 78);

-- --------------------------------------------------------

--
-- Table structure for table `pendaftar`
--

CREATE TABLE `pendaftar` (
  `id_pendaftar` int(11) NOT NULL,
  `nomor_pendaftar` char(15) NOT NULL,
  `nama_pendaftar` varchar(100) NOT NULL,
  `jk_pendaftar` enum('laki laki','perempuan') NOT NULL,
  `alamat_pendaftar` text NOT NULL,
  `telepon_pendaftar` varchar(15) NOT NULL,
  `ayah_pendaftar` varchar(100) NOT NULL,
  `ibu_pendaftar` varchar(100) NOT NULL,
  `jenis_pendaftar` enum('baru','pindahan') NOT NULL,
  `status_pendaftar` enum('registrasi','lulus','tidak lulus') NOT NULL,
  `tanggal_pendaftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendaftar`
--

INSERT INTO `pendaftar` (`id_pendaftar`, `nomor_pendaftar`, `nama_pendaftar`, `jk_pendaftar`, `alamat_pendaftar`, `telepon_pendaftar`, `ayah_pendaftar`, `ibu_pendaftar`, `jenis_pendaftar`, `status_pendaftar`, `tanggal_pendaftar`) VALUES
(1, '1', 'ariel erlintang', 'laki laki', 'klaten', '0863258763287', 'dono', 'mulyani', 'baru', 'lulus', '2023-03-18'),
(2, '2', 'bagus kuncoro', 'laki laki', 'ngembel', '0857329879832', 'dimas', 'maryati', 'pindahan', 'lulus', '2023-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(100) NOT NULL,
  `nisn` varchar(100) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `jk_siswa` enum('laki laki','perempuan') NOT NULL,
  `alamat_siswa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nisn`, `nama_siswa`, `jk_siswa`, `alamat_siswa`) VALUES
(1, '23876831768', '3198732187831', 'siswa a', 'laki laki', 'kulon progo'),
(2, '12222', '12222', 'siswa b', 'laki laki', 'banyumas'),
(4, '4280980984242', '830984034', 'siswa c', 'laki laki', 'senden'),
(5, '8490839', '4309849342', 'siswa d', 'perempuan', 'solo');

-- --------------------------------------------------------

--
-- Table structure for table `siswakelas`
--

CREATE TABLE `siswakelas` (
  `id_siswakelas` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswakelas`
--

INSERT INTO `siswakelas` (`id_siswakelas`, `id_kelas`, `id_siswa`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4),
(4, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_spp` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `tarif_spp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_spp`, `id_kelas`, `tarif_spp`) VALUES
(1, 1, 1000000),
(2, 2, 2000000),
(3, 3, 3000000);

-- --------------------------------------------------------

--
-- Table structure for table `tahun`
--

CREATE TABLE `tahun` (
  `id_tahun` int(11) NOT NULL,
  `nama_tahun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tahun`
--

INSERT INTO `tahun` (`id_tahun`, `nama_tahun`) VALUES
(1, 'tahun ajaran 2021-2022'),
(2, 'tahun ajaran 2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `wali`
--

CREATE TABLE `wali` (
  `id_wali` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `email_wali` varchar(100) NOT NULL,
  `password_wali` varchar(100) NOT NULL,
  `telepon_wali` varchar(15) NOT NULL,
  `alamat_wali` text NOT NULL,
  `nama_wali` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wali`
--

INSERT INTO `wali` (`id_wali`, `id_siswa`, `email_wali`, `password_wali`, `telepon_wali`, `alamat_wali`, `nama_wali`) VALUES
(1, 1, 'a@gmail.com', 'a', '08570348734', 'banyumas jawatengah', 'wali a'),
(2, 2, 'b@gmail.com', 'b', '085763250000', 'kebumen', 'wali b'),
(4, 4, 'c@gmail.com', 'c', '0848279842', 'senden\r\n', 'wali c'),
(5, 5, 'd@gmail.com', 'd', '04279879234', 'senden', 'wali d');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `bayarspp`
--
ALTER TABLE `bayarspp`
  ADD PRIMARY KEY (`id_bayarspp`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD PRIMARY KEY (`id_mengajar`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`id_pendaftar`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `siswakelas`
--
ALTER TABLE `siswakelas`
  ADD PRIMARY KEY (`id_siswakelas`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- Indexes for table `tahun`
--
ALTER TABLE `tahun`
  ADD PRIMARY KEY (`id_tahun`);

--
-- Indexes for table `wali`
--
ALTER TABLE `wali`
  ADD PRIMARY KEY (`id_wali`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bayarspp`
--
ALTER TABLE `bayarspp`
  MODIFY `id_bayarspp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mengajar`
--
ALTER TABLE `mengajar`
  MODIFY `id_mengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pendaftar`
--
ALTER TABLE `pendaftar`
  MODIFY `id_pendaftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `siswakelas`
--
ALTER TABLE `siswakelas`
  MODIFY `id_siswakelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tahun`
--
ALTER TABLE `tahun`
  MODIFY `id_tahun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wali`
--
ALTER TABLE `wali`
  MODIFY `id_wali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
