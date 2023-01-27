-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2020 at 11:38 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `kategori` text NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama_barang`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Sepatu', 'Merk All Start', 'Pakaian Pria', 300000, 10, 'sepatu.jpg'),
(2, 'Kamera', 'Canon EOS 60D Lensa Kit 18-55mm IS 18 MP', 'Elektronik', 950000, 5, 'kamera.jpg'),
(3, 'Smartphone', 'Xiaomi Redmi Note 8 dibekali layar FHD+ 6.3 inci ditenagai prosesor Qualcomm Snapdragon 665 dipaduka', 'Elektronik', 1999000, 2, 'hp.jpg'),
(4, 'Laptop', 'Asus A507MA-BV001T Laptop Intel N4000 4GB DDR4', 'Elektronik', 5000000, 3, 'laptop.jpg'),
(5, 'Jam Tangan', 'Quick Silver', 'Pakaian Pria', 200000, 4, 'jam tangan.jpg'),
(6, 'Kemeja', 'Kameja panjang bahan cutton', 'Pakaian Pria', 90000, 5, 'kameja.jpg'),
(11, 'Tas Wanita', 'Balenciaga', 'Pakaian Wanita', 90000, 5, 'tas1.jpg'),
(13, 'Baju Bayi', 'Grosir baju bayi murah', 'Pakaian Anak', 40000, 7, 'baju_bayi.jpg'),
(14, 'Celana', 'Celana Jumbo - Jeans Premium Wanita - Jumbo - Pinggang Karet ', 'Pakaian Wanita', 60000, 20, 'celana_wanita.jpg'),
(15, 'Busana wanita', 'Azrina dress, UKURAN : ALL SIZE L+, BAHAN : wollycrepe, Sleting depan ( busui ), LD:108cm, PB:137cm,', 'Pakaian Wanita', 199999, 4, 'baju_wanita.jpg'),
(16, 'Kameja Pria', 'COWOK/KEMEJA LENGAN 7/8/KEMEJA SLIMFIT/KEMEJA CASUAL/KEMEJA HEM/PAKAIAN PRIA/', 'Pakaian Pria', 200000, 5, 'kameja.jpeg'),
(17, 'Baju Anak', 'Baju santai anak 1-5 tahun', 'Pakaian Anak', 35000, 10, 'baju_anak.jpg'),
(18, 'Baju Anak perempun', 'Dress anak perempuan', 'Pakaian Anak', 20000, 8, 'baju_anak_perempuan.jpg'),
(19, 'Baju Batik', 'Baju anak 5-10 tahun', 'Pakaian Anak', 50000, 20, 'baju_anak_laki.jpg'),
(20, 'Baju Koko', 'Busana muslim anak', 'Pakaian Anak', 30000, 5, 'baju_anak_laki2.jpg'),
(21, 'Sepatu', 'Sepatu Nike zoom imfort', 'Pakaian Pria', 500000, 15, 'sepatu1.jpg'),
(22, 'Sepatu Olahraga', 'sneakers olahraga wanita', 'Pakaian Wanita', 200000, 8, 'sneakers__sepatu_nike_wanita.jpg'),
(23, 'Jilbab', 'HIjab pashmina casuals', 'Pakaian Wanita', 20000, 15, 'JILBAB.jpg'),
(24, 'Baju Wanita', 'Baju Gamis wanita blouse tunik', 'Pakaian Wanita', 40000, 30, 'pakaian_wanita.jpg'),
(25, 'Power Bank', 'Power Bank Contact - Capacité: 8000 mAh - Batterie: Li-ion - Entrée Micro USB: 5V 2A - Sortie USB 1:', 'Elektronik', 100000, 5, 'power_bank.jpg'),
(26, 'Kipas Angin Miyako', 'Spesifikasi :, - Daya 30 Watt, - 2in1: Meja dan Dinding, - 2 pilihan kecepatan, - Motor Halus Tidak ', 'Elektronik', 120000, 10, 'kipas.jpg'),
(27, 'Magic Com', 'Jual Philips Magic Com Rice Cooker Hd 3128/33', 'Elektronik', 200000, 4, 'images.jpg'),
(28, 'Celana Jeans robek', 'Bahan : Stretch Jeans (stretch = karet), - Size : 29-34, - Model : Skinny FIt,', 'Pakaian Pria', 90000, 5, 'Celana_Jeans_Robek_Lutut_Pria_Skinny_Atau_Pensil_Denim_Sobek.jpg'),
(29, 'Celana Jeans robek', 'Shape Light wash extreme rip skinny jeans', 'Pakaian Wanita', 90000, 10, 'jeans.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Agus Muhamad', 'jl magelang', '2020-04-25 06:54:33', '2020-04-26 06:54:33'),
(2, 'babang tamvan', 'gang lele dumbo jl kebon agung, bedingin, sumberadi, mlati, sleman', '2020-04-25 07:25:34', '2020-04-26 07:25:34'),
(14, 'uwa cengkoads', 'jln kebon agung kontrakan pak satrio', '2020-04-26 19:29:54', '2020-04-27 19:29:54');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_barang`, `nama_barang`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'sepatu', 1, 300000, ''),
(2, 2, 2, 'Kamera', 1, 950000, ''),
(20, 14, 3, 'Smartphone', 1, 1999000, ''),
(21, 14, 5, 'Jam Tangan', 1, 200000, ''),
(22, 14, 6, 'Kemeja', 1, 90000, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`) VALUES
(1, 'Agus Muhamad', 'agus.ibad@student.uty.ac.id', 'default.jpg', '$2y$10$StpI8rd3l94jAsweDz36z.OrCBVJehroq6K4PNEtIiYUjYQ/ILEfC', 1, 1),
(9, 'sedul', 'gaostulibad@gmail.com', '5170411331.jpg', '$2y$10$D1v9BWk846Ck1h9.liOR2OCWZ9ll0CENk8iL5VynaqPedEn.dhhPS', 2, 1),
(10, 'bambang_admin', 'bambang@gmail.com', 'default.jpg', '$2y$10$gdRVZszUWzRb83qC/fAGQuwyWRMdtFNQiIlaBLMlye5qwv/2powpm', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(4, 2, 3),
(5, 2, 4),
(6, 1, 5),
(7, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'Home'),
(3, 'Kategori'),
(4, 'Pengaturan'),
(5, 'Barang'),
(6, 'Menu');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Dosen'),
(3, 'Reviewer');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `tittle` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `tittle`, `url`, `icon`, `is_active`) VALUES
(1, 2, 'Dashboard', 'user', 'fas fa-fw fa-tachometer-alt', 1),
(2, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(3, 3, 'Elektronik', 'user/elektronik', 'fas fa-fw fa-tv', 1),
(4, 4, 'My Profile', 'user/myProfile', 'fas fa-fw fa-user-alt', 1),
(5, 4, 'Edit Profile', 'user/editProfile', 'fas fa-fw fa-user-alt', 1),
(6, 3, 'Pakaian Anak', 'user/Pakaian_anak', 'fas fa-fw fa-child', 1),
(7, 6, 'Menu Management', 'menu', 'far fa-fw fa-folder-open', 1),
(8, 6, 'Submenu Management', 'menu/submenu', 'far fa-fw fa-folder', 1),
(9, 3, 'Pakaian Pria', 'user/Pakaian_Pria', 'fas fa-fw fa-male', 1),
(10, 3, 'Pakaian Wanita', 'user/Pakaian_Wanita', 'fas fa-fw fa-female', 1),
(11, 5, 'Data Barang', 'admin/data_barang', 'fas fa-fw fa-box', 1),
(19, 5, 'Invoice', 'admin/invoice', 'fas fa-fw fa-archive', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
