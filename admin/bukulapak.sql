-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2018 at 08:07 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bukulapak`
--
CREATE DATABASE IF NOT EXISTS `bukulapak` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bukulapak`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kd_buku` char(10) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `judul_buku` varchar(150) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `stok` int(3) NOT NULL,
  `detail` text NOT NULL,
  `harga` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kd_buku`, `foto`, `judul_buku`, `pengarang`, `kategori`, `stok`, `detail`, `harga`) VALUES
('BK01', 'admin_jaringan_komputer.jpg', 'Administrasi Jaringan Komputer', 'Ahmaddul Hadi', 'Komputer', 100, 'Buku ini dikembangkan dari bahan-bahan dan materi dari perkuliahan yang penulis ajarkan pada Jurusan Teknik Elektronika FT UNP dan ke depannya buku ini dapat digunakan untuk perkuliahan maupun untuk keperluan praktis dalam memahami konsep jaringan komputer dan hingga mampu membangun berbagai keperluan configurasi dalam membangun komputer server untuk berbagai keperluan jaringan komputer', 59000),
('BK02', 'buku_pintar_agama_islam.jpg', 'Buku Pintar Agama Islam', 'Syamsul Rijal Hamid', 'Religi', 100, 'Buku Pintar Agama Islam edisi ini berisi kumpulan pengetahuan dalam agama Islam (tauhid, fiqh, akhlak, hadits, tarikh, dan lain-lain). Dalam Buku Pintar Agama Islam edisi ini, beberapa kutipan ayat-ayat Al-Qur\'an disertai juga dengan teks Arab-nya disetiap bab. Kiranya tidaklah berlebihan, jika dinyatakan sebagai Buku Pintar Agama Islam Edisi yang Disempurnakan. Penyajiannya juga tetap secara praktis, popular, dan komunikatif. Dengan begitu semua materinya mudah dipahami dalam sekali baca. Buku ini layak dijadikan bacaan dan referensi bagi setiap keluarga muslim, dengan membaca, memahami isi kandungannya..Insyaa Allah bermanfaat di dunia maupun akhirat', 165000),
('BK03', 'buku_pintar_agama_islam.jpg', 'Psikologi Pendidikan Agama Kristen', 'Junihot Simanjuntak', 'Pendidikan', 100, 'Buku ini membuka wawasan awal tentang studi psikologi dalam Pendidikan Agama Kristen. Selain itu, buku ini memberi pemahaman awal tentang konsep manusia menurut psikologi dan Alkitab, mengetengahkan seputar psikologi belajar, dan membahas tentang aspek psikologi dalam pembelajaran,Bagian terakhir merupakan bagian bab penutup yang merupakan risalah dari pentingnya memahami aspek-aspek psikologi dalam praktik Pendidikan Agama Kristen. Uraian buku ini juga diperkaya dengan pengalaman penulis sebagai gembala jemaat, dan sebagai guru dalam konteks Pendidikan Agama Kristen.', 55000),
('BK04', 'biologi.jpg', 'Biologi', 'Nunung Nurhayati', 'Pendidikan', 100, 'BIOLOGI SMA/MA KELAS X KURIKULUM-2013 EDISI REVISI Materi dalam buku ini penulis sajikan sejara sistematis,diserta dengan gambar-gambar yang relevan untuk membantu siswa lebih memahami materi yang sedang dipelajari.Berbagai Rubik Penulis sajikan dalam buku ini Info Biologi Dalam kehidupan sehari-hari', 105000);

-- --------------------------------------------------------

--
-- Table structure for table `chekout`
--

CREATE TABLE `chekout` (
  `kd_order` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `nama` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(3) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelamin` char(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `username`, `password`, `nama`, `kelamin`, `email`, `no_hp`, `alamat`) VALUES
(1, 'ghonijee', '123', 'Ahmad Yunus Afghoni', 'laki-laki', 'akughoni@gmail.com', '08155510612', 'Jl. Pendidikan No. 42'),
(2, 'ghoni', '$2y$10$EkFte1peaFN/7.l45noIn.VYMXarRCCaa5z6B9ohKd5F7LmQqWoQe', 'Ahmad Yunus Afghoni', 'Laki-laki', 'akughoni@gmail.com', '08155510612', 'Jl. Candi 3C Karang Basuki');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kd_kategori` varchar(10) NOT NULL,
  `kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `kd_order` varchar(20) NOT NULL,
  `id` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bukti` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `kd_order` varchar(10) NOT NULL,
  `id` varchar(20) NOT NULL,
  `kd_buku` int(10) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(12) NOT NULL,
  `subtotal` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`kd_order`, `id`, `kd_buku`, `jumlah`, `harga`, `subtotal`) VALUES
('', '', 1, 0, 0, 0),
('', '', 2, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kd_buku`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kd_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `dbmahasiswa`
--
CREATE DATABASE IF NOT EXISTS `dbmahasiswa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbmahasiswa`;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `nama` varchar(50) NOT NULL,
  `nim` char(12) NOT NULL,
  `prodi` varchar(20) NOT NULL,
  `fakultas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`nama`, `nim`, `prodi`, `fakultas`) VALUES
('Diyah Rochmawati', '160533611402', 'PLS', 'FIP'),
('Ahmad Yunus Afghoni', '160533611461', 'PTI', 'Teknik UM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`nim`);
--
-- Database: `khatamanonline`
--
CREATE DATABASE IF NOT EXISTS `khatamanonline` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `khatamanonline`;

-- --------------------------------------------------------

--
-- Table structure for table `ambil_juz`
--

CREATE TABLE `ambil_juz` (
  `ID` char(5) NOT NULL,
  `ID_KTM` char(5) NOT NULL,
  `ID_JUZ` char(5) NOT NULL,
  `ID_USER` char(12) NOT NULL,
  `Nama_Lengkap` varchar(30) NOT NULL,
  `Status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `ambil_juz`
--
DELIMITER $$
CREATE TRIGGER `Update statuss` AFTER INSERT ON `ambil_juz` FOR EACH ROW UPDATE juz SET Status="Diambil" WHERE juz.ID_JUZ=(SELECT ID_JUZ FROM ambil_juz )
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `juz`
--

CREATE TABLE `juz` (
  `ID_JUZ` char(5) NOT NULL,
  `Juz` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `juz`
--

INSERT INTO `juz` (`ID_JUZ`, `Juz`, `Status`) VALUES
('10JUZ', 'JUZ 10', 'tersedia'),
('11JUZ', 'JUZ 11', 'tersedia'),
('12JUZ', 'JUZ 12', 'tersedia'),
('13JUZ', 'JUZ 13', 'tersedia'),
('14JUZ', 'JUZ 14', 'tersedia'),
('15JUZ', 'JUZ 15', 'tersedia'),
('16JUZ', 'JUZ 16', 'tersedia'),
('17JUZ', 'JUZ 17', 'tersedia'),
('18JUZ', 'JUZ 18', 'tersedia'),
('19JUZ', 'JUZ 19', 'tersedia'),
('1JUZ', 'JUZ 1', 'tersedia'),
('20JUZ', 'JUZ 20', 'tersedia'),
('21JUZ', 'JUZ 21', 'tersedia'),
('22JUZ', 'JUZ 22', 'tersedia'),
('23JUZ', 'JUZ 23', 'tersedia'),
('24JUZ', 'JUZ 24', 'tersedia'),
('25JUZ', 'JUZ 25', 'tersedia'),
('26JUZ', 'JUZ 26', 'tersedia'),
('27JUZ', 'JUZ 27', 'tersedia'),
('28JUZ', 'JUZ 28', 'tersedia'),
('29JUZ', 'JUZ 29', 'tersedia'),
('2JUZ', 'JUZ 2', 'tersedia'),
('30JUZ', 'JUZ 30', 'tersedia'),
('3JUZ', 'JUZ 3', 'tersedia'),
('4JUZ', 'JUZ 4', 'tersedia'),
('5JUZ', 'JUZ 5', 'tersedia'),
('6JUZ', 'JUZ 6', 'tersedia'),
('7JUZ', 'JUZ 7', 'tersedia'),
('8JUZ', 'JUZ 8', 'tersedia'),
('9JUZ', 'JUZ 9', 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `khataman`
--

CREATE TABLE `khataman` (
  `ID_KTM` char(5) NOT NULL,
  `Nama Khataman` varchar(25) NOT NULL,
  `Tanggal_mulai` date NOT NULL,
  `Tanggal_akhir` date NOT NULL,
  `Status` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `khataman`
--

INSERT INTO `khataman` (`ID_KTM`, `Nama Khataman`, `Tanggal_mulai`, `Tanggal_akhir`, `Status`) VALUES
('KH1', 'Minggu Ke-2', '2018-09-10', '2018-09-15', 'Belum');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID_USER` char(12) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Nama_Lengkap` varchar(30) NOT NULL,
  `Fakultas` varchar(20) NOT NULL,
  `Angkatan` int(11) NOT NULL,
  `Nomer_HP` char(15) NOT NULL,
  `Status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambil_juz`
--
ALTER TABLE `ambil_juz`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_KTM` (`ID_KTM`),
  ADD KEY `ID_JUZ` (`ID_JUZ`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indexes for table `juz`
--
ALTER TABLE `juz`
  ADD PRIMARY KEY (`ID_JUZ`);

--
-- Indexes for table `khataman`
--
ALTER TABLE `khataman`
  ADD PRIMARY KEY (`ID_KTM`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ambil_juz`
--
ALTER TABLE `ambil_juz`
  ADD CONSTRAINT `ambil_juz_ibfk_1` FOREIGN KEY (`ID_JUZ`) REFERENCES `juz` (`ID_JUZ`),
  ADD CONSTRAINT `ambil_juz_ibfk_2` FOREIGN KEY (`ID_KTM`) REFERENCES `khataman` (`ID_KTM`),
  ADD CONSTRAINT `ambil_juz_ibfk_3` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`);
--
-- Database: `ksk`
--
CREATE DATABASE IF NOT EXISTS `ksk` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ksk`;

-- --------------------------------------------------------

--
-- Table structure for table `usesr`
--

CREATE TABLE `usesr` (
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password2` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usesr`
--

INSERT INTO `usesr` (`username`, `password`, `password2`, `email`, `nohp`, `alamat`) VALUES
('abas', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '6116afedcb0bc31083935c1c262ff4c9', 'abas@gmai.com', '012192', 'jl. oendudy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usesr`
--
ALTER TABLE `usesr`
  ADD PRIMARY KEY (`username`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

--
-- Dumping data for table `pma__column_info`
--

INSERT INTO `pma__column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`, `input_transformation`, `input_transformation_options`) VALUES
(1, 'bukulapak', 'konfirmasi', 'bukti', '', 'image_jpeg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bukulapak\",\"table\":\"konfirmasi\"},{\"db\":\"bukulapak\",\"table\":\"keranjang\"},{\"db\":\"bukulapak\",\"table\":\"chekout\"},{\"db\":\"bukulapak\",\"table\":\"buku\"},{\"db\":\"ksk\",\"table\":\"usesr\"},{\"db\":\"dbmahasiswa\",\"table\":\"data\"},{\"db\":\"bukulapak\",\"table\":\"customer\"},{\"db\":\"bukulapak\",\"table\":\"order\"},{\"db\":\"bukulapak\",\"table\":\"kategori\"},{\"db\":\"bukulapak\",\"table\":\"admin\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-11-07 02:22:37', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `qqq`
--

CREATE TABLE `qqq` (
  `aaaa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
