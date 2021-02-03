-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 03, 2020 at 12:21 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_rj_group`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl020_transaksi_jual_detail`
--

CREATE TABLE `tbl020_transaksi_jual_detail` (
  `kode_transaksi` varchar(50) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `jam_transaksi` time NOT NULL,
  `id_barang` int(11) NOT NULL,
  `barcode` varchar(100) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jumlah_beli` double NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `harga_beli` double NOT NULL,
  `diskon` double NOT NULL,
  `potongan` double NOT NULL,
  `harga_jual` double NOT NULL,
  `qty_inner` double NOT NULL,
  `point` int(20) NOT NULL,
  `kode_detail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl020_transaksi_jual_detail`
--

INSERT INTO `tbl020_transaksi_jual_detail` (`kode_transaksi`, `tanggal_transaksi`, `jam_transaksi`, `id_barang`, `barcode`, `nama_barang`, `jumlah_beli`, `satuan`, `harga_beli`, `diskon`, `potongan`, `harga_jual`, `qty_inner`, `point`, `kode_detail`) VALUES
('oj1', '2020-10-28', '08:56:42', 4, 'ss', 'a', 2, 'pcs', 1000, 0, 0, 11000, 0, 0, 'j1'),
('PJ101053001353', '2020-10-10', '00:15:10', 2, 'aa', 'AMBAL', 1, 'Pcs', 10000, 0, 0, 11000, 0, 0, 'PJD101014001514718'),
('PJ101053001353', '2020-10-10', '00:15:10', 3, 'bb', 'AMBAL', 1, 'Pcs', 10000, 0, 0, 11000, 0, 0, 'PJD101015001515622'),
('PJ101053001353', '2020-10-10', '00:15:10', 4, 'cc', 'AMBAL', 1, 'Pcs', 10000, 0, 0, 11000, 0, 0, 'PJD101016001516620');

-- --------------------------------------------------------

--
-- Table structure for table `tbl020_transaksi_jual_master`
--

CREATE TABLE `tbl020_transaksi_jual_master` (
  `kode_transaksi` varchar(50) NOT NULL,
  `id_toko` varchar(50) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `jam_transaksi` time NOT NULL,
  `total_transaksi` double NOT NULL,
  `master_diskon` double NOT NULL,
  `master_potongan` double NOT NULL,
  `grand_total` double NOT NULL,
  `total_bayar` double NOT NULL,
  `kembali` double NOT NULL,
  `kode_costumer` varchar(100) NOT NULL,
  `master_point` double NOT NULL,
  `jenis_transaksi` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `kode_transaksi_bank` varchar(100) NOT NULL,
  `kode_promo` varchar(100) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `id_shif` varchar(100) NOT NULL,
  `kode_kasir` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl020_transaksi_jual_master`
--

INSERT INTO `tbl020_transaksi_jual_master` (`kode_transaksi`, `id_toko`, `tanggal_transaksi`, `jam_transaksi`, `total_transaksi`, `master_diskon`, `master_potongan`, `grand_total`, `total_bayar`, `kembali`, `kode_costumer`, `master_point`, `jenis_transaksi`, `bank`, `kode_transaksi_bank`, `kode_promo`, `ket`, `id_shif`, `kode_kasir`) VALUES
('PJ101053001353', 'HW001', '2020-10-10', '00:15:22', 33000, 0, 0, 33000, 100000, 67000, 'Kodecostumer', 0, 'TUNAI', 'Nama-BANK', 'Kode_transaksi_bank', 'KODE-Promo', 'keterangan', 'SH001', 'K001');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_001_purchase_request`
--

CREATE TABLE `tbl_001_purchase_request` (
  `id_purchase_reques` varchar(255) NOT NULL,
  `id_toko` varchar(255) DEFAULT NULL,
  `tgl` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `no_pr` varchar(255) DEFAULT NULL,
  `stat_rev` tinyint(1) DEFAULT '0' COMMENT '0 = no revisi\n1 = revisi'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_001_purchase_request`
--

INSERT INTO `tbl_001_purchase_request` (`id_purchase_reques`, `id_toko`, `tgl`, `status`, `no_pr`, `stat_rev`) VALUES
('5f8407f4ebfb1', '901', '2020-10-12', 2, 'PR/10/20/0001', 0),
('5f8672997ce74', '901', '2020-10-14', 2, 'PR/10/20/0002', 0),
('5f8e8f44b5af0', '902', '2020-10-20', 2, 'PR/10/20/0003', 0),
('5f99e8b94a495', '901', '2020-10-29', 2, 'PR/10/20/0004', 0),
('5f9a1511b1089', '902', '2020-10-29', 2, 'PR/10/20/0005', 0),
('5f9a69f7aeb13', '902', '2020-10-29', 2, 'PR/10/20/0006', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_001_purchase_request_detail`
--

CREATE TABLE `tbl_001_purchase_request_detail` (
  `id_detail_pr` int(11) NOT NULL,
  `id_pr` varchar(255) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `status_pesan` int(11) DEFAULT '1',
  `status_po` tinyint(1) DEFAULT '0',
  `qty_rev` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_001_purchase_request_detail`
--

INSERT INTO `tbl_001_purchase_request_detail` (`id_detail_pr`, `id_pr`, `id_barang`, `qty`, `status_pesan`, `status_po`, `qty_rev`) VALUES
(16, '5f8407f4ebfb1', 841, 20, 1, 1, NULL),
(17, '5f8407f4ebfb1', 840, 40, 1, 1, NULL),
(18, '5f8672997ce74', 841, 4, 1, 1, NULL),
(19, '5f8e8f44b5af0', 840, 10, 1, 1, NULL),
(25, '5f99e8b94a495', 842, 2, 1, 1, 1),
(26, '5f99e8b94a495', 843, 3, 1, 1, NULL),
(27, '5f99e8b94a495', 844, 3, 1, 1, NULL),
(28, '5f99e8b94a495', 845, 2, 1, 1, NULL),
(29, '5f99e8b94a495', 846, 2, 1, 1, NULL),
(30, '5f99e8b94a495', 847, 2, 1, 1, NULL),
(31, '5f99e8b94a495', 848, 2, 1, 1, NULL),
(32, '5f9a1511b1089', 841, 3, 1, 1, NULL),
(33, '5f9a69f7aeb13', 841, 10, 1, 1, NULL),
(34, '5f9a1511b1089', 840, 30, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_001_purchase_request_detail_temp`
--

CREATE TABLE `tbl_001_purchase_request_detail_temp` (
  `id_detail_pr` int(11) NOT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_001_purchase_request_temp`
--

CREATE TABLE `tbl_001_purchase_request_temp` (
  `id_purchase_reques` int(11) NOT NULL,
  `id_toko` varchar(255) DEFAULT NULL,
  `tgl` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `no_pr` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_002_purchase_order`
--

CREATE TABLE `tbl_002_purchase_order` (
  `id_po` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tgl` date DEFAULT NULL,
  `no_po` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `id_pengirim_supplier` varchar(255) DEFAULT NULL,
  `id_penerima` varchar(255) DEFAULT NULL,
  `status_kirim` tinyint(1) DEFAULT '0' COMMENT '0 = blm sampe\n1 = sudah sampe'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_002_purchase_order`
--

INSERT INTO `tbl_002_purchase_order` (`id_po`, `tgl`, `no_po`, `status`, `id_pengirim_supplier`, `id_penerima`, `status_kirim`) VALUES
('5f8408a21ad4e', '2020-10-12', 'PO/10/20/0001', 2, 'sup-5f4c9b19ccdd1', '901', 1),
('5f8e8e7aa1e81', '2020-10-20', 'PO/10/20/0002', 2, 'sup-5f4c9b19ccdd1', '901', 1),
('5f99f5dc6a78c', '2020-10-29', 'PO/10/20/0003', 2, 'sup-5f4c9b19ccdd1', '901', 1),
('5f9a71b55624a', '2020-10-29', '100/10/20/0004', 2, 'sup-5f4c9b19ccdd1', '901', 1),
('5f9a85c826fb9', '2020-10-29', '100/10/20/0004', 1, 'sup-5f4c9b19ccdd1', '901', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_002_purchase_order_detail`
--

CREATE TABLE `tbl_002_purchase_order_detail` (
  `id_detail_po` int(11) NOT NULL,
  `id_po` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `id_request` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_002_purchase_order_detail`
--

INSERT INTO `tbl_002_purchase_order_detail` (`id_detail_po`, `id_po`, `id_barang`, `qty`, `id_request`) VALUES
(10, '5f8408a21ad4e', 840, 40, '5f8407f4ebfb1'),
(11, '5f8408a21ad4e', 841, 20, '5f8407f4ebfb1'),
(12, '5f8e8e7aa1e81', 841, 1, '5f8672997ce74'),
(14, '5f99f5dc6a78c', 843, 3, '5f99e8b94a495'),
(16, '5f99f5dc6a78c', 846, 2, '5f99e8b94a495'),
(17, '5f99f5dc6a78c', 847, 2, '5f99e8b94a495'),
(18, '5f99f5dc6a78c', 848, 2, '5f99e8b94a495'),
(19, '5f99f5dc6a78c', 844, 3, '5f99e8b94a495'),
(20, '5f8e8e7aa1e81', 840, 2, '5f8672997ce74'),
(21, '5f9a71b55624a', 840, 10, '5f8e8f44b5af0'),
(22, '5f9a71b55624a', 841, 3, '5f9a1511b1089'),
(23, '5f9a71b55624a', 840, 30, '5f9a1511b1089'),
(24, '5f99f5dc6a78c', 840, 10, '5f99e8b94a495'),
(25, '5f9a85c826fb9', 841, 10, '5f9a69f7aeb13'),
(26, '5f9a85c826fb9', 840, 90, '5f9a69f7aeb13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_003_purchase_order_detail_temp`
--

CREATE TABLE `tbl_003_purchase_order_detail_temp` (
  `id_detail_po` int(11) NOT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `id_request` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assets`
--

CREATE TABLE `tbl_assets` (
  `id_assets` int(11) NOT NULL,
  `no_assets` varchar(255) DEFAULT NULL,
  `id_toko` varchar(255) DEFAULT NULL,
  `nama_assets` varchar(255) DEFAULT NULL,
  `nilai_assets` int(11) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `tgl_update` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_assets`
--

INSERT INTO `tbl_assets` (`id_assets`, `no_assets`, `id_toko`, `nama_assets`, `nilai_assets`, `tgl_input`, `tgl_update`, `image`) VALUES
(7, 'AS/10/20/0001', NULL, 'Komputer Kasir', 10000000, '2020-10-19', '2020-10-19', 'AS10200001.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(255) DEFAULT NULL,
  `no_rek` varchar(255) DEFAULT NULL,
  `ket_bank` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang_detail`
--

CREATE TABLE `tbl_barang_detail` (
  `id_barang_detail` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `id_satuan` int(11) NOT NULL,
  `size` varchar(20) DEFAULT NULL,
  `qty_default` int(11) DEFAULT NULL,
  `volume` double(11,0) DEFAULT '0',
  `berat` double(11,0) DEFAULT '0',
  `sat_panjang` int(11) DEFAULT '1',
  `panjang_brg` double(11,0) DEFAULT '0',
  `lebar_brg` double(11,0) DEFAULT '0',
  `sat_volume` int(11) DEFAULT '1',
  `sat_berat` int(11) DEFAULT '1',
  `jenis` varchar(255) DEFAULT NULL,
  `warna` varchar(255) DEFAULT NULL,
  `tinggi_brg` double(11,0) DEFAULT '0',
  `id_supplier` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang_detail`
--

INSERT INTO `tbl_barang_detail` (`id_barang_detail`, `id_barang`, `sku`, `barcode`, `id_satuan`, `size`, `qty_default`, `volume`, `berat`, `sat_panjang`, `panjang_brg`, `lebar_brg`, `sat_volume`, `sat_berat`, `jenis`, `warna`, `tinggi_brg`, `id_supplier`) VALUES
(840, '5f6c9cb0beed8', '11000001', '0', 1, '0', 1, 0, 0, 1, 100, 150, 1, 1, NULL, NULL, 0, NULL),
(841, '5f6c9cb0beee3 ', '11000002', '0', 1, '0', 1, 0, 0, 1, 140, 200, 1, 1, NULL, NULL, 0, NULL),
(842, '5f6c9cb0beeec ', '11000003', '0', 1, '0', 1, 0, 0, 1, 120, 3000, 1, 1, NULL, NULL, 0, NULL),
(843, '5f6c9cb0beef3 ', '11000004', '0', 1, '0', 1, 0, 0, 1, 85, 500, 1, 1, NULL, NULL, 0, NULL),
(844, '5f6c9cb0beef9 ', '11000005', '0', 1, '0', 1, 0, 0, 2, 120, 1200, 1, 1, NULL, NULL, 0, NULL),
(845, '5f6c9cb0bef08', '11000006', '0', 1, '0', 1, 0, 0, 1, 150, 200, 1, 1, NULL, NULL, 0, NULL),
(846, '5f6c9cb0bef0e ', '11000007', '0', 1, '0', 1, 0, 0, 1, 105, 57, 1, 1, NULL, NULL, 0, NULL),
(847, '5f6c9cb0bef0e ', '11000008', '0', 1, '0', 1, 0, 0, 1, 160, 210, 1, 1, NULL, NULL, 0, NULL),
(848, '5f6c9cb0bef0e ', '11000009', '0', 1, '0', 1, 0, 0, 1, 230, 310, 1, 1, NULL, NULL, 0, NULL),
(849, '5f6c9cb0bef0e ', '11000010', '0', 1, '0', 1, 0, 0, 1, 250, 330, 1, 1, NULL, NULL, 0, NULL),
(850, '5f6c9cb0bef15 ', '11000011', '0', 1, '0', 1, 0, 0, 1, 40, 60, 1, 1, NULL, NULL, 0, NULL),
(851, '5f6c9cb0bef1c ', '11000012', '0', 1, '0', 1, 0, 0, 1, 122, 1800, 1, 1, NULL, NULL, 0, NULL),
(852, '5f6c9cb0bef22 ', '11000013', '0', 1, '0', 1, 0, 0, 1, 125, 160, 1, 1, NULL, NULL, 0, NULL),
(853, '5f6c9cb0bef22 ', '11000014', '0', 1, '0', 1, 0, 0, 1, 167, 225, 1, 1, NULL, NULL, 0, NULL),
(854, '5f6c9cb0bef29 ', '11000015', '0', 1, '0', 1, 0, 0, 1, 140, 180, 1, 1, NULL, NULL, 0, NULL),
(855, '5f6c9cb0bef2f ', '11000016', '0', 1, '0', 1, 0, 0, 1, 167, 225, 1, 1, NULL, NULL, 0, NULL),
(856, '5f6c9cb0bef2f ', '11000017', '0', 1, '0', 1, 0, 0, 1, 250, 325, 1, 1, NULL, NULL, 0, NULL),
(857, '5f6c9cb0bef36 ', '11000018', '0', 1, '0', 1, 0, 0, 1, 140, 190, 1, 1, NULL, NULL, 0, NULL),
(858, '5f6c9cb0bef36 ', '11000019', '0', 1, '0', 1, 0, 0, 1, 180, 230, 1, 1, NULL, NULL, 0, NULL),
(859, '5f6c9cb0bef3c ', '11000020', '0', 1, '0', 1, 0, 0, 1, 190, 230, 1, 1, NULL, NULL, 0, NULL),
(860, '5f6c9cb0bef3c ', '11000021', '0', 1, '0', 1, 0, 0, 1, 190, 270, 1, 1, NULL, NULL, 0, NULL),
(861, '5f6c9cb0bef43 ', '11000022', '0', 1, '0', 1, 0, 0, 1, 160, 200, 1, 1, NULL, NULL, 0, NULL),
(862, '5f6c9cb0bef49 ', '11000023', '0', 1, '0', 1, 0, 0, 1, 100, 0, 1, 1, NULL, NULL, 0, NULL),
(863, '5f6c9cb0bef49 ', '11000024', '0', 1, '0', 1, 0, 0, 1, 140, 0, 1, 1, NULL, NULL, 0, NULL),
(864, '5f6c9cb0bef49 ', '11000025', '0', 1, '0', 1, 0, 0, 1, 180, 0, 1, 1, NULL, NULL, 0, NULL),
(865, '5f6c9cb0bef50 ', '11000026', '0', 1, '0', 1, 0, 0, 1, 160, 200, 1, 1, NULL, NULL, 0, NULL),
(866, '5f6c9cb0bef56 ', '11000027', '0', 1, '0', 1, 0, 0, 1, 140, 190, 1, 1, NULL, NULL, 0, NULL),
(867, '5f6c9cb0bef56 ', '11000028', '0', 1, '0', 1, 0, 0, 1, 190, 230, 1, 1, NULL, NULL, 0, NULL),
(868, '5f6c9cb0bef5d ', '11000029', '0', 1, '0', 1, 0, 0, 1, 105, 570, 1, 1, NULL, NULL, 0, NULL),
(869, '5f6c9cb0bef82 ', '11000030', '0', 1, '0', 1, 0, 0, 1, 115, 155, 1, 1, NULL, NULL, 0, NULL),
(870, '5f6c9cb0bef82 ', '11000031', '0', 1, '0', 1, 0, 0, 1, 160, 210, 1, 1, NULL, NULL, 0, NULL),
(871, '5f6c9cb0bef82 ', '11000032', '0', 1, '0', 1, 0, 0, 1, 210, 310, 1, 1, NULL, NULL, 0, NULL),
(872, '5f6c9cb0bef9f ', '11000033', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, 'MERAH', 0, NULL),
(873, '5f6c9cb0befa6 ', '11000034', '0', 1, '0', 1, 0, 0, 1, 150, 200, 1, 1, NULL, NULL, 0, NULL),
(874, '5f6c9cb0befad ', '11000035', '0', 1, '0', 1, 0, 0, 1, 115, 155, 1, 1, NULL, NULL, 0, NULL),
(875, '5f6c9cb0befad ', '11000036', '0', 1, '0', 1, 0, 0, 1, 160, 210, 1, 1, NULL, NULL, 0, NULL),
(876, '5f6c9cb0befad ', '11000037', '0', 1, '0', 1, 0, 0, 1, 210, 310, 1, 1, NULL, NULL, 0, NULL),
(877, '5f6c9cb0befb3 ', '11000038', '0', 1, '0', 1, 0, 0, 1, 167, 225, 1, 1, NULL, NULL, 0, NULL),
(878, '5f6c9cb0befba ', '11000039', '0', 1, '0', 1, 0, 0, 1, 150, 200, 1, 1, NULL, NULL, 0, NULL),
(879, '5f6c9cb0befba ', '11000040', '0', 1, '0', 1, 0, 0, 1, 200, 290, 1, 1, NULL, NULL, 0, NULL),
(880, '5f6c9cb0befbf ', '11000041', '0', 1, '0', 1, 0, 0, 1, 80, 500, 1, 1, NULL, NULL, 0, NULL),
(881, '5f6c9cb0befc5 ', '11000042', '0', 1, '0', 1, 0, 0, 1, 140, 200, 1, 1, NULL, NULL, 0, NULL),
(882, '5f6c9cb0befcb ', '11000043', '0', 1, '0', 1, 0, 0, 1, 200, 280, 1, 1, NULL, NULL, 0, NULL),
(883, '5f6c9cb0befd2 ', '11000044', '0', 1, '0', 1, 0, 0, 1, 150, 200, 1, 1, NULL, NULL, 0, NULL),
(884, '5f6c9cb0befd2 ', '11000045', '0', 1, '0', 1, 0, 0, 1, 200, 280, 1, 1, NULL, NULL, 0, NULL),
(885, '5f6c9cb0befd8 ', '11000046', '0', 1, '0', 1, 0, 0, 1, 100, 150, 1, 1, NULL, NULL, 0, NULL),
(886, '5f6c9cb0befdf ', '11000047', '0', 1, '0', 1, 0, 0, 1, 140, 200, 1, 1, NULL, NULL, 0, NULL),
(887, '5f6c9cb0befe6 ', '11000048', '0', 1, '0', 1, 0, 0, 1, 30, 0, 1, 1, NULL, NULL, 0, NULL),
(888, '5f6c9cb0befec ', '11000049', '0', 1, '0', 1, 0, 0, 1, 190, 230, 1, 1, 'ARMANI', NULL, 0, NULL),
(889, '5f6c9cb0befec ', '11000050', '0', 1, '0', 1, 0, 0, 1, 140, 190, 1, 1, 'ULTIMATE', NULL, 0, NULL),
(890, '5f6c9cb0befec ', '11000051', '0', 1, '0', 1, 0, 0, 1, 190, 230, 1, 1, 'ULTIMATE', NULL, 0, NULL),
(891, '5f6c9cb0befec ', '11000052', '0', 1, '0', 1, 0, 0, 1, 190, 270, 1, 1, 'ULTIMATE', NULL, 0, NULL),
(892, '5f6c9cb0befec ', '11000053', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'ULTIMATE GAJAH', NULL, 0, NULL),
(893, '5f6c9cb0befec ', '11000054', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'ULTIMATE PLUS GAJAH', NULL, 0, NULL),
(894, '5f6c9cb0beff3 ', '11000055', '0', 1, '0', 1, 0, 0, 2, 2, 40, 1, 1, NULL, NULL, 0, NULL),
(895, '5f6c9cb0beff9 ', '11000056', '0', 1, '0', 1, 0, 0, 2, 30, 0, 1, 1, NULL, NULL, 0, NULL),
(896, '5f6c9cb0bf000 ', '11000057', '0', 1, '0', 1, 0, 0, 1, 190, 230, 1, 1, NULL, NULL, 0, NULL),
(897, '5f6c9cb0bf006 ', '11000058', '0', 1, '0', 1, 0, 0, 2, 25, 0, 1, 1, NULL, NULL, 0, NULL),
(898, '5f6c9cb0bf00d ', '11000059', '0', 1, '0', 1, 0, 0, 1, 150, 200, 1, 1, NULL, NULL, 0, NULL),
(899, '5f6c9cb0bf013 ', '11000060', '0', 1, '0', 1, 0, 0, 1, 180, 210, 1, 1, NULL, NULL, 0, NULL),
(900, '5f6c9cb0bf01a ', '11000061', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(901, '5f6c9cb0bf020 ', '11000062', '0', 1, '0', 1, 0, 0, 1, 140, 190, 1, 1, NULL, NULL, 0, NULL),
(902, '5f6c9cb0bf020 ', '11000063', '0', 1, '0', 1, 0, 0, 1, 190, 230, 1, 1, NULL, NULL, 0, NULL),
(903, '5f6c9cb0bf027 ', '11000064', '0', 1, '0', 1, 0, 0, 1, 200, 300, 1, 1, NULL, NULL, 0, NULL),
(904, '5f6c9cb0bf02d ', '11000065', '0', 1, '0', 1, 0, 0, 1, 4, 0, 1, 1, NULL, NULL, 0, NULL),
(905, '5f6c9cb0bf034 ', '11000066', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(906, '5f6c9cb0bf034 ', '11000067', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'MST MIX', NULL, 0, NULL),
(907, '5f6c9cb0bf03a ', '11000068', '0', 1, '0', 1, 0, 0, 1, 190, 220, 1, 1, NULL, NULL, 0, NULL),
(908, '5f6c9cb0bf041 ', '11100001', '0', 1, '0', 1, 0, 0, 1, 200, 180, 1, 1, NULL, NULL, 0, NULL),
(909, '5f6c9cb0bf047 ', '11100002', '0', 1, '0', 1, 0, 0, 1, 200, 180, 1, 1, NULL, NULL, 0, NULL),
(910, '5f6c9cb0bf047 ', '11100004', '0', 1, '0', 1, 0, 0, 1, 200, 120, 1, 1, NULL, NULL, 0, NULL),
(911, '5f6c9cb0bf047 ', '11100005', '0', 1, '0', 1, 0, 0, 1, 200, 160, 1, 1, NULL, NULL, 0, NULL),
(912, '5f6c9cb0bf04e ', '11100003', '0', 1, '0', 1, 0, 0, 1, 200, 160, 1, 1, NULL, NULL, 0, NULL),
(913, '5f6c9cb0bf04e ', '11100006', '0', 1, '0', 1, 0, 0, 1, 200, 180, 1, 1, NULL, NULL, 0, NULL),
(914, '5f6c9cb0bf054 ', '11100007', '0', 1, '0', 1, 0, 0, 1, 200, 160, 1, 1, NULL, NULL, 0, NULL),
(915, '5f6c9cb0bf054 ', '11100008', '0', 1, '0', 1, 0, 0, 1, 200, 180, 1, 1, NULL, NULL, 0, NULL),
(916, '5f6c9cb0bf05b ', '11100009', '0', 1, '0', 1, 0, 0, 1, 200, 160, 1, 1, NULL, NULL, 0, NULL),
(917, '5f6c9cb0bf062 ', '11100010', '0', 1, '0', 1, 0, 0, 1, 120, 0, 1, 1, NULL, NULL, 0, NULL),
(918, '5f6c9cb0bf068 ', '11100011', '0', 1, '0', 1, 0, 0, 1, 120, 170, 1, 1, NULL, NULL, 0, NULL),
(919, '5f6c9cb0bf068 ', '11100012', '0', 1, '0', 1, 0, 0, 1, 140, 180, 1, 1, NULL, NULL, 0, NULL),
(920, '5f6c9cb0bf06f ', '11100013', '0', 1, '0', 1, 0, 0, 1, 140, 180, 1, 1, NULL, NULL, 12, NULL),
(921, '5f6c9cb0bf075 ', '11100014', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(922, '5f6c9cb0bf07c ', '11100015', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'BULU', NULL, 0, NULL),
(923, '5f6c9cb0bf082 ', '11100016', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(924, '5f6c9cb0bf082 ', '11100017', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'POLOSAN', 'KUNING', 0, NULL),
(925, '5f6c9cb0bf082 ', '11100018', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'BULU PENDEK', NULL, 0, NULL),
(926, '5f6c9cb0bf088 ', '11100019', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(927, '5f6c9cb0bf08f ', '11100020', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(928, '5f6c9cb0bf096 ', '11100021', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(929, '5f6c9cb0bf09c ', '11100022', '0', 1, '0', 1, 0, 0, 1, 100, 170, 1, 1, NULL, NULL, 0, NULL),
(930, '5f6c9cb0bf09c ', '11100023', '0', 1, '0', 1, 0, 0, 1, 150, 180, 1, 1, NULL, NULL, 0, NULL),
(931, '5f6c9cb0bf09c ', '11100024', '0', 1, '0', 1, 0, 0, 1, 80, 170, 1, 1, NULL, NULL, 0, NULL),
(932, '5f6c9cb0bf0a3 ', '11100025', '0', 1, '0', 1, 0, 0, 1, 120, 180, 1, 1, NULL, NULL, 12, NULL),
(933, '5f6c9cb0bf0a9 ', '11100026', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(934, '5f6c9cb0bf0b0 ', '11000069', '0', 1, '0', 1, 0, 0, 1, 140, 200, 1, 1, NULL, NULL, 0, NULL),
(935, '5f6c9cb0bf0b0 ', '11000070', '0', 1, '0', 1, 0, 0, 1, 170, 230, 1, 1, NULL, NULL, 0, NULL),
(936, '5f6c9cb0bf0b6 ', '11000071', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(937, '5f6c9cb0bf0bd ', '11000072', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(938, '5f6c9cb0bf0c3 ', '11000073', '0', 1, '0', 1, 0, 0, 1, 140, 200, 1, 1, NULL, NULL, 0, NULL),
(939, '5f6c9cb0bf0c8 ', '11000074', '0', 1, '0', 1, 0, 0, 1, 35, 35, 1, 1, NULL, NULL, 0, NULL),
(940, '5f6c9cb0bf0c8 ', '11000075', '0', 1, '0', 1, 0, 0, 1, 50, 75, 1, 1, NULL, NULL, 0, NULL),
(941, '5f6c9cb0bf0e2 ', '11000076', '0', 1, '0', 1, 0, 0, 1, 70, 0, 1, 1, 'CAMILA', NULL, 0, NULL),
(942, '5f6c9cb0bf0e2 ', '11000077', '0', 1, '0', 1, 0, 0, 1, 70, 110, 1, 1, 'SPIGEL', NULL, 0, NULL),
(943, '5f6c9cb0bf0e6 ', '11000078', '0', 1, '0', 1, 0, 0, 1, 70, 105, 1, 1, 'CAMILA', NULL, 0, NULL),
(944, '5f6c9cb0bf0ea ', '11000079', '0', 1, '0', 1, 0, 0, 1, 70, 100, 1, 1, NULL, NULL, 0, NULL),
(945, '5f6c9cb0bf0ee ', '11000080', '0', 1, '0', 1, 0, 0, 1, 80, 120, 1, 1, 'JABAL', NULL, 0, NULL),
(946, '5f6c9cb0bf0f2 ', '11000081', '0', 1, '0', 1, 0, 0, 1, 80, 120, 1, 1, 'BULU', NULL, 0, NULL),
(947, '5f6c9cb0bf0f6 ', '11000082', '0', 1, '0', 1, 0, 0, 1, 70, 110, 1, 1, NULL, NULL, 0, NULL),
(948, '5f6c9cb0bf0fa ', '11000083', '0', 1, '0', 1, 0, 0, 1, 35, 55, 1, 1, NULL, NULL, 0, NULL),
(949, '5f6c9cb0bf0fd ', '11000084', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(950, '5f6c9cb0bf101 ', '11000085', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'CIRUS S', NULL, 0, NULL),
(951, '5f6c9cb0bf101 ', '11000086', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'LUREX 5', NULL, 0, NULL),
(952, '5f6c9cb0bf101 ', '11000087', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, 'SILVER', 0, NULL),
(953, '5f6c9cb0bf105 ', '11000088', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(954, '5f6c9cb0bf109 ', '11000089', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(955, '5f6c9cb0bf10d ', '11000090', '0', 1, '0', 1, 0, 0, 1, 70, 110, 1, 1, NULL, NULL, 0, NULL),
(956, '5f6c9cb0bf111 ', '11000091', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(957, '5f6c9cb0bf114 ', '11000092', '0', 1, '0', 1, 0, 0, 1, 67, 110, 1, 1, NULL, NULL, 0, NULL),
(958, '5f6c9cb0bf118 ', '11000093', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(959, '5f6c9cb0bf11c ', '11300001', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(960, '5f6c9cb0bf120 ', '11000094', '0', 1, '0', 1, 0, 0, 1, 150, 0, 1, 1, NULL, NULL, 0, NULL),
(961, '5f6c9cb0bf124 ', '11000095', '0', 1, '0', 1, 0, 0, 1, 120, 0, 1, 1, NULL, NULL, 0, NULL),
(962, '5f6c9cb0bf124 ', '11000096', '0', 1, '0', 1, 0, 0, 1, 180, 0, 1, 1, NULL, NULL, 0, NULL),
(963, '5f6c9cb0bf128 ', '11000097', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(964, '5f6c9cb0bf12c ', '11000098', '0', 1, '0', 1, 0, 0, 2, 2, 0, 1, 1, 'PLASTIK', NULL, 0, NULL),
(965, '5f6c9cb0bf12f ', '11000099', '0', 1, '0', 1, 0, 0, 2, 1, 0, 1, 1, 'PLASTIK', NULL, 0, NULL),
(966, '5f6c9cb0bf133 ', '11000100', '0', 1, '0', 1, 0, 0, 2, 20, 0, 1, 1, 'PLASTIK', NULL, 0, NULL),
(967, '5f6c9cb0bf137 ', '11000101', '0', 1, '0', 1, 0, 0, 1, 120, 0, 1, 1, 'PLASTIK', NULL, 0, NULL),
(968, '5f6c9cb0bf13b ', '11000102', '0', 1, '0', 1, 0, 0, 2, 25, 0, 1, 1, 'PLASTIK', NULL, 0, NULL),
(969, '5f6c9cb0bf13f ', '11000103', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'PLASTIK', NULL, 0, NULL),
(970, '5f6c9cb0bf143 ', '11000104', '0', 1, '0', 1, 0, 0, 1, 2, 3, 1, 1, 'PLASTIK', NULL, 0, NULL),
(971, '5f6c9cb0bf147 ', '11000105', '0', 1, '0', 1, 0, 0, 1, 2, 2, 1, 1, 'PLASTIK', NULL, 0, NULL),
(972, '5f6c9cb0bf14a ', '12000001', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'TENUN', NULL, 0, NULL),
(973, '5f6c9cb0bf14e ', '12000002', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(974, '5f6c9cb0bf14e ', '12000003', '0', 1, '0', 1, 0, 0, 1, 50, 70, 1, 1, NULL, NULL, 0, NULL),
(975, '5f6c9cb0bf14e ', '12000004', '0', 1, '0', 1, 0, 0, 1, 60, 80, 1, 1, NULL, NULL, 0, NULL),
(976, '5f6c9cb0bf152 ', '12000005', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(977, '5f6c9cb0bf152 ', '12000006', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'RUMBAI', NULL, 0, NULL),
(978, '5f6c9cb0bf156 ', '12000007', '0', 1, '0', 1, 0, 0, 1, 40, 60, 1, 1, 'FRUIT+ANIMAL', NULL, 0, NULL),
(979, '5f6c9cb0bf156 ', '12000008', '0', 1, '0', 1, 0, 0, 1, 40, 60, 1, 1, NULL, NULL, 0, NULL),
(980, '5f6c9cb0bf15a ', '12000009', '0', 1, '0', 1, 0, 0, 1, 40, 60, 1, 1, '3A', 'RED', 0, NULL),
(981, '5f6c9cb0bf15a ', '12000010', '0', 1, '0', 1, 0, 0, 1, 60, 122, 1, 1, '3A', 'RED', 0, NULL),
(982, '5f6c9cb0bf14e ', '12000011', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'BATIK GNOME', NULL, 0, NULL),
(983, '5f6c9cb0bf14a ', '12000012', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'CARTOON', NULL, 0, NULL),
(984, '5f6c9cb0bf15e ', '12000013', '0', 1, '0', 1, 0, 0, 1, 40, 60, 1, 1, 'STIKER', NULL, 0, NULL),
(985, '5f6c9cb0bf14a ', '12000014', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'DIGITAL PRINTING', NULL, 0, NULL),
(986, '5f6c9cb0bf14a ', '12000015', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'HANDUK BLUEBERY', NULL, 0, NULL),
(987, '5f6c9cb0bf14a ', '12000016', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'HANDUK FUNGKY', NULL, 0, NULL),
(988, '5f6c9cb0bf14a ', '12000017', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'HANDUK WINNING', NULL, 0, NULL),
(989, '5f6c9cb0bf14a ', '12000018', '0', 1, '0', 1, 0, 0, 1, 48, 120, 1, 1, 'HTYPE', NULL, 0, NULL),
(990, '5f6c9cb0bf14a ', '12000019', '0', 1, '0', 1, 0, 0, 1, 48, 60, 1, 1, 'HTYPE', NULL, 0, NULL),
(991, '5f6c9cb0bf14a ', '12000020', '0', 1, '0', 1, 0, 0, 1, 41, 61, 1, 1, 'KARET', NULL, 12, NULL),
(992, '5f6c9cb0bf14a ', '12000021', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'KARET YN 1', NULL, 0, NULL),
(993, '5f6c9cb0bf14a ', '12000022', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'MOTIF GAMBAR', NULL, 0, NULL),
(994, '5f6c9cb0bf14a ', '12000023', '0', 1, '0', 1, 0, 0, 1, 40, 60, 1, 1, 'P5 MIX', NULL, 0, NULL),
(995, '5f6c9cb0bf14a ', '12000024', '0', 1, '0', 1, 0, 0, 1, 40, 60, 1, 1, 'POLYSTER', NULL, 0, NULL),
(996, '5f6c9cb0bf14a ', '12000025', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'PRINTING DISNEY+DORAEMON', NULL, 0, NULL),
(997, '5f6c9cb0bf14a ', '12000026', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'PRINTING FC', NULL, 0, NULL),
(998, '5f6c9cb0bf14a ', '12000027', '0', 1, '0', 1, 0, 0, 1, 40, 60, 1, 1, 'PVC MAT', NULL, 0, NULL),
(999, '5f6c9cb0bf14a ', '12000028', '0', 1, '0', 1, 0, 0, 1, 60, 122, 1, 1, 'PVC MAT', NULL, 0, NULL),
(1000, '5f6c9cb0bf14a ', '12000029', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'SEGI GAMBAR', NULL, 0, NULL),
(1001, '5f6c9cb0bf161 ', '12000030', '0', 1, '0', 1, 0, 0, 1, 40, 60, 1, 1, NULL, NULL, 0, NULL),
(1002, '5f6c9cb0bf165 ', '12000031', '0', 1, '0', 1, 0, 0, 1, 40, 60, 1, 1, 'KARET', NULL, 0, NULL),
(1003, '5f6c9cb0bf169 ', '12000032', '0', 1, '0', 1, 0, 0, 1, 40, 60, 1, 1, 'STRIP', NULL, 0, NULL),
(1004, '5f6c9cb0bf16d ', '12000033', '0', 1, '0', 1, 0, 0, 1, 50, 80, 1, 1, NULL, NULL, 0, NULL),
(1005, '5f6c9cb0bf171 ', '12000034', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(1006, '5f6c9cb0bf175 ', '12000035', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(1007, '5f6c9cb0bf178 ', '12000036', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(1008, '5f6c9cb0bf17c ', '12000037', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'TENDA', NULL, 0, NULL),
(1009, '5f6c9cb0bf180 ', '12000038', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'NO 1', NULL, 0, NULL),
(1010, '5f6c9cb0bf180 ', '12000039', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'NO 2', NULL, 0, NULL),
(1011, '5f6c9cb0bf180 ', '12000040', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, ' KEMBANG MTF GELOMBANG', NULL, 0, NULL),
(1012, '5f6c9cb0bf184 ', '12000041', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, '1010', NULL, 0, NULL),
(1013, '5f6c9cb0bf184 ', '12000042', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, '115', NULL, 0, NULL),
(1014, '5f6c9cb0bf184 ', '12000043', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, '204', NULL, 0, NULL),
(1015, '5f6c9cb0bf188 ', '12000044', '0', 1, '0', 1, 0, 0, 1, 50, 100, 1, 1, NULL, NULL, 0, NULL),
(1016, '5f6c9cb0bf188 ', '12000045', '0', 1, '0', 1, 0, 0, 1, 67, 135, 1, 1, NULL, NULL, 0, NULL),
(1017, '5f6c9cb0bf18c ', '12000046', '0', 1, '0', 1, 0, 0, 1, 70, 140, 1, 1, NULL, NULL, 0, NULL),
(1018, '5f6c9cb0bf190 ', '12000047', '0', 1, '0', 1, 0, 0, 1, 90, 140, 1, 1, 'CORAK', NULL, 0, NULL),
(1019, '5f6c9cb0bf193 ', '12000048', '0', 1, '0', 1, 0, 0, 1, 48, 100, 1, 1, NULL, NULL, 0, NULL),
(1020, '5f6c9cb0bf193 ', '12000049', '0', 1, '0', 1, 0, 0, 1, 35, 70, 1, 1, 'POLOS', NULL, 0, NULL),
(1021, '5f6c9cb0bf193 ', '12000050', '0', 1, '0', 1, 0, 0, 1, 67, 135, 1, 1, 'POLOS', NULL, 0, NULL),
(1022, '5f6c9cb0bf193 ', '12000051', '0', 1, '0', 1, 0, 0, 1, 50, 100, 1, 1, 'POLOS', NULL, 0, NULL),
(1023, '5f6c9cb0bf197 ', '12000052', '0', 1, '0', 1, 0, 0, 1, 75, 150, 1, 1, 'POLOS', NULL, 0, NULL),
(1024, '5f6c9cb0bf19b ', '12000053', '0', 1, '0', 1, 0, 0, 1, 50, 100, 1, 1, 'BABY', NULL, 0, NULL),
(1025, '5f6c9cb0bf19f ', '12000054', '0', 1, '0', 1, 0, 0, 1, 30, 60, 1, 1, 'PRINT', NULL, 0, NULL),
(1026, '5f6c9cb0bf1a3 ', '12000055', '0', 1, '0', 1, 0, 0, 1, 70, 140, 1, 1, NULL, NULL, 0, NULL),
(1027, '5f6c9cb0bf1a7 ', '12000056', '0', 1, '0', 1, 0, 0, 1, 58, 110, 1, 1, NULL, NULL, 0, NULL),
(1028, '5f6c9cb0bf1aa ', '12000057', '0', 1, '0', 1, 0, 0, 1, 70, 140, 1, 1, NULL, NULL, 0, NULL),
(1029, '5f6c9cb0bf1b0 ', '12000058', '0', 1, '0', 1, 0, 0, 1, 50, 100, 1, 1, 'BABY', NULL, 0, NULL),
(1030, '5f6c9cb0bf1b8 ', '12000059', '0', 1, '0', 1, 0, 0, 1, 120, 0, 1, 1, NULL, NULL, 0, NULL),
(1031, '5f6c9cb0bf1b8 ', '12000060', '0', 1, '0', 1, 0, 0, 1, 160, 0, 1, 1, NULL, NULL, 0, NULL),
(1032, '5f6c9cb0bf1b8 ', '12000061', '0', 1, '0', 1, 0, 0, 1, 180, 0, 1, 1, NULL, NULL, 0, NULL),
(1033, '5f6c9cb0bf1bc ', '12000062', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(1034, '5f6c9cb0bf1c1 ', '12000063', '0', 1, '0', 1, 0, 0, 1, 120, 0, 1, 1, NULL, NULL, 0, NULL),
(1035, '5f6c9cb0bf1c1 ', '12000064', '0', 1, '0', 1, 0, 0, 1, 160, 0, 1, 1, NULL, NULL, 0, NULL),
(1036, '5f6c9cb0bf1c8 ', '12000065', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(1037, '5f6c9cb0bf1ce ', '12000066', '0', 1, '0', 1, 0, 0, 1, 180, 0, 1, 1, NULL, NULL, 0, NULL),
(1038, '5f6c9cb0bf1d5 ', '12000067', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(1039, '5f6c9cb0bf1db ', '12000068', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(1040, '5f6c9cb0bf1e2 ', '12000069', '0', 1, '0', 1, 0, 0, 1, 180, 0, 1, 1, NULL, NULL, 0, NULL),
(1041, '5f6c9cb0bf1e8 ', '12000070', '0', 1, '0', 1, 0, 0, 1, 180, 0, 1, 1, NULL, NULL, 0, NULL),
(1042, '5f6c9cb0bf1ee ', '12000071', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(1043, '5f6c9cb0bf1f5 ', '12000072', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(1044, '5f6c9cb0bf1fb ', '12000073', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(1045, '5f6c9cb0bf201 ', '12000074', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(1046, '5f6c9cb0bf208 ', '12000075', '0', 1, '0', 1, 0, 0, 1, 140, 190, 1, 1, 'ANIMASI', NULL, 0, NULL),
(1047, '5f6c9cb0bf208 ', '12000076', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'STANDAR DOUBLE', NULL, 0, NULL),
(1048, '5f6c9cb0bf208 ', '12000077', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'SUPER ABSTRAK', NULL, 0, NULL),
(1049, '5f6c9cb0bf208 ', '12000078', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'STANDAR SINGLE', NULL, 0, NULL),
(1050, '5f6c9cb0bf20e ', '12000079', '0', 1, '0', 1, 0, 0, 1, 200, 230, 1, 1, NULL, NULL, 0, NULL),
(1051, '5f6c9cb0bf214 ', '12000080', '0', 1, '0', 1, 0, 0, 1, 180, 0, 1, 1, NULL, NULL, 0, NULL),
(1052, '5f6c9cb0bf21b ', '12000081', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(1053, '5f6c9cb0bf221 ', '12000082', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(1054, '5f6c9cb0bf228 ', '12000083', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'KOTAK', NULL, 0, NULL),
(1055, '5f6c9cb0bf22e ', '12000084', '0', 1, '0', 1, 0, 0, 1, 180, 200, 1, 1, NULL, NULL, 0, NULL),
(1056, '5f6c9cb0bf234 ', '12000085', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, NULL, NULL, 0, NULL),
(1057, '5f6c9cb0bf23b ', '12000086', '0', 1, '0', 1, 0, 0, 1, 180, 200, 1, 1, NULL, NULL, 0, NULL),
(1058, '5f6c9cb0bf241 ', '12000087', '0', 1, '0', 1, 0, 0, 1, 160, 200, 1, 1, '2B/2G', NULL, 0, NULL),
(1059, '5f6c9cb0bf247 ', '12000088', '0', 1, '0', 1, 0, 0, 1, 120, 200, 1, 1, NULL, NULL, 0, NULL),
(1060, '5f6c9cb0bf24e ', '12000089', '0', 1, '0', 1, 0, 0, 1, 120, 0, 1, 1, NULL, NULL, 0, NULL),
(1061, '5f6c9cb0bf24e ', '12000090', '0', 1, '0', 1, 0, 0, 1, 180, 200, 1, 1, 'KING 4B/2G', NULL, 0, NULL),
(1062, '5f6c9cb0bf253 ', '12000091', '0', 1, '0', 1, 0, 0, 1, 180, 0, 1, 1, '4B', NULL, 0, NULL),
(1063, '5f6c9cb0bf257 ', '12000092', '0', 1, '0', 1, 0, 0, 1, 180, 200, 1, 1, '4B/2G', NULL, 0, NULL),
(1064, '5f6c9cb0bf257 ', '12000093', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'DUO', NULL, 0, NULL),
(1065, '5f6c9cb0bf25a ', '12000094', '0', 1, '0', 1, 0, 0, 1, 180, 0, 1, 1, NULL, NULL, 0, NULL),
(1066, '5f6c9cb0bf24e ', '12000095', '0', 1, '0', 1, 0, 0, 1, 180, 200, 1, 1, 'RUMBAI', NULL, 0, NULL),
(1067, '5f6c9cb0bf25e ', '12000096', '0', 1, '0', 1, 0, 0, 1, 100, 200, 1, 1, NULL, NULL, 0, NULL),
(1068, '5f6c9cb0bf25e ', '12000097', '0', 1, '0', 1, 0, 0, 1, 120, 200, 1, 1, NULL, NULL, 0, NULL),
(1069, '5f6c9cb0bf25e ', '12000098', '0', 1, '0', 1, 0, 0, 1, 80, 200, 1, 1, NULL, NULL, 0, NULL),
(1070, '5f6c9cb0bf25e ', '12000099', '0', 1, '0', 1, 0, 0, 1, 90, 200, 1, 1, NULL, NULL, 0, NULL),
(1071, '5f6c9cb0bf257 ', '12000100', '0', 1, '0', 1, 0, 0, 1, 120, 0, 1, 1, NULL, NULL, 0, NULL),
(1072, '5f6c9cb0bf263 ', '12000101', '0', 1, '0', 1, 0, 0, 1, 120, 200, 1, 1, NULL, NULL, 0, NULL),
(1073, '5f6c9cb0bf266 ', '12000102', '0', 1, '0', 1, 0, 0, 1, 100, 200, 1, 1, NULL, NULL, 0, NULL),
(1074, '5f6c9cb0bf26a ', '12000103', '0', 1, '0', 1, 0, 0, 1, 120, 0, 1, 1, NULL, NULL, 0, NULL),
(1075, '5f6c9cb0bf26a ', '12000104', '0', 1, '0', 1, 0, 0, 1, 180, 0, 1, 1, '4B/2G', NULL, 0, NULL),
(1076, '5f6c9cb0bf270 ', '12000105', '0', 1, '0', 1, 0, 0, 1, 160, 200, 1, 1, 'WATER PROOF', NULL, 0, NULL),
(1077, '5f6c9cb0bf270 ', '12000106', '0', 1, '0', 1, 0, 0, 1, 180, 200, 1, 1, 'WATER PROOF', NULL, 0, NULL),
(1078, '5f6c9cb0bf257 ', '12000107', '0', 1, '0', 1, 0, 0, 1, 160, 200, 1, 1, '2B/2G', NULL, 0, NULL),
(1079, '5f6c9cb0bf257 ', '12000108', '0', 1, '0', 1, 0, 0, 1, 160, 200, 1, 1, '4B/2G', NULL, 0, NULL),
(1080, '5f6c9cb0bf26a ', '12000109', '0', 1, '0', 1, 0, 0, 1, 160, 0, 1, 1, '2B/2G', NULL, 0, NULL),
(1081, '5f6c9cb0bf277 ', '12000110', '0', 1, '0', 1, 0, 0, 1, 120, 0, 1, 1, NULL, NULL, 0, NULL),
(1082, '5f6c9cb0bf27d ', '16000001', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'BANTAL LEHER BEE', NULL, 0, NULL),
(1083, '5f6c9cb0bf27d ', '16000002', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'BANTAL LEHER KUPING', NULL, 0, NULL),
(1084, '5f6c9cb0bf284 ', '16000003', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'BEAR DRESS', NULL, 0, NULL),
(1085, '5f6c9cb0bf27d ', '16000004', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'BEAR LYING W/BANTAL', NULL, 0, NULL),
(1086, '5f6c9cb0bf27d ', '16000005', '0', 1, 'JUMBO', 1, 0, 0, 1, 0, 0, 1, 1, 'BEAR W/BABY', NULL, 0, NULL),
(1087, '5f6c9cb0bf27d ', '16000006', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'BOLA KERINCINGAN', NULL, 0, NULL),
(1088, '5f6c9cb0bf27d ', '16000007', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'BUAYA FLOOPY HIJAU', NULL, 0, NULL),
(1089, '5f6c9cb0bf27d ', '16000008', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'BUAYA PRINTING 1', NULL, 0, NULL),
(1090, '5f6c9cb0bf288 ', '16000009', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'BUAYA ', NULL, 0, NULL),
(1091, '5f6c9cb0bf284 ', '16000010', '0', 1, 'L', 1, 0, 0, 1, 0, 0, 1, 1, 'CAT', NULL, 0, NULL),
(1092, '5f6c9cb0bf284 ', '16000011', '0', 1, 'XL', 1, 0, 0, 1, 0, 0, 1, 1, 'CAT', NULL, 0, NULL),
(1093, '5f6c9cb0bf28e ', '16000012', '0', 1, 'M', 1, 0, 0, 1, 0, 0, 1, 1, 'CINDY', NULL, 0, NULL),
(1094, '5f6c9cb0bf27d ', '16000013', '0', 1, 'XL', 1, 0, 0, 1, 0, 0, 1, 1, 'DOMBA', NULL, 0, NULL),
(1095, '5f6c9cb0bf288 ', '16000014', '0', 1, 'JUMBO', 1, 0, 0, 1, 0, 0, 1, 1, 'DORAEMON', NULL, 0, NULL),
(1096, '5f6c9cb0bf27d ', '16000015', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'ELSA', NULL, 0, NULL),
(1097, '5f6c9cb0bf299 ', '16000016', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'GAJAH PITA', NULL, 0, NULL),
(1098, '5f6c9cb0bf27d ', '16000017', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'GANTUNGAN BEAR', NULL, 0, NULL),
(1099, '5f6c9cb0bf27d ', '16000018', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'GANTUNGAN PAUS H', NULL, 0, NULL),
(1100, '5f6c9cb0bf27d ', '16000019', '0', 1, 'JUMBO', 1, 0, 0, 1, 0, 0, 1, 1, 'GULING', 'PELANGI', 0, NULL),
(1101, '5f6c9cb0bf27d ', '16000020', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'GULING PENSIL KARAKTER', NULL, 0, NULL),
(1102, '5f6c9cb0bf27d ', '16000021', '0', 1, 'XL', 1, 0, 0, 1, 0, 0, 1, 1, 'HK KIMONO', NULL, 0, NULL),
(1103, '5f6c9cb0bf27d ', '16000022', '0', 1, 'JUMBO', 1, 0, 0, 1, 0, 0, 1, 1, 'KEROPPI W/BABY ', NULL, 0, NULL),
(1104, '5f6c9cb0bf27d ', '16000023', '0', 1, 'M', 1, 0, 0, 1, 0, 0, 1, 1, 'KUDA PONI', NULL, 0, NULL),
(1105, '5f6c9cb0bf27d ', '16000024', '0', 1, 'JUMBO', 1, 0, 0, 1, 0, 0, 1, 1, 'KUDA PONI', NULL, 0, NULL),
(1106, '5f6c9cb0bf27d ', '16000025', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'LEHER U', NULL, 0, NULL),
(1107, '5f6c9cb0bf288 ', '16000026', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'LITTLE PONNY', NULL, 0, NULL),
(1108, '5f6c9cb0bf27d ', '16000027', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'LOVE PRINT', NULL, 0, NULL),
(1109, '5f6c9cb0bf293 ', '16000028', '0', 1, 'XL', 1, 0, 0, 1, 0, 0, 1, 1, 'MERRY CAT', NULL, 0, NULL),
(1110, '5f6c9cb0bf27d ', '16000029', '0', 1, 'XL', 1, 0, 0, 1, 0, 0, 1, 1, 'MICKY MINNIE', NULL, 0, NULL),
(1111, '5f6c9cb0bf27d ', '16000030', '0', 1, 'M', 1, 0, 0, 1, 0, 0, 1, 1, 'MONKEY DASI', NULL, 0, NULL),
(1112, '5f6c9cb0bf27d ', '16000031', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'MONKEY GARUK KEPALA', NULL, 0, NULL),
(1113, '5f6c9cb0bf284 ', '16000032', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'PANDA DAUN', NULL, 0, NULL),
(1114, '5f6c9cb0bf27d ', '16000033', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'PENGUIN TOGA', NULL, 0, NULL),
(1115, '5f6c9cb0bf27d ', '16000034', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'POKEMON SQUIRTLE', NULL, 0, NULL),
(1116, '5f6c9cb0bf27d ', '16000035', '0', 1, 'JUMBO', 1, 0, 0, 1, 0, 0, 1, 1, 'RABBIT W/BABY', NULL, 0, NULL),
(1117, '5f6c9cb0bf27d ', '16000036', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'RILAKUMA TOGA', NULL, 0, NULL),
(1118, '5f6c9cb0bf27d ', '16000037', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'SANDAL KARAKTER', NULL, 0, NULL),
(1119, '5f6c9cb0bf299 ', '16000038', '0', 1, 'L', 1, 0, 0, 1, 0, 0, 1, 1, 'SAPI PITA ', NULL, 0, NULL),
(1120, '5f6c9cb0bf27d ', '16000039', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'SOFA KERANG', NULL, 0, NULL),
(1121, '5f6c9cb0bf27d ', '16000040', '0', 1, '0', 1, 0, 0, 1, 0, 0, 1, 1, 'ULIL LL', NULL, 0, NULL),
(1122, '5f6c9cb0bf27d ', '16000041', '0', 1, 'JUMBO', 1, 0, 0, 1, 0, 0, 1, 1, 'XENIA BEAR', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang_master`
--

CREATE TABLE `tbl_barang_master` (
  `id_barang` varchar(255) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `merk` varchar(255) DEFAULT NULL,
  `id_tag` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang_master`
--

INSERT INTO `tbl_barang_master` (`id_barang`, `nama_barang`, `merk`, `id_tag`) VALUES
('5f6c9cb0beed8', 'AMBAL', 'ADROS', 110),
('5f6c9cb0beee3 ', 'AMBAL', 'AL-DIRA', 110),
('5f6c9cb0beeec ', 'AMBAL', 'AL-IMAM', 110),
('5f6c9cb0beef3 ', 'AMBAL', 'AL-MAYA', 110),
('5f6c9cb0beef9 ', 'AMBAL', 'AL-NAMAZ', 110),
('5f6c9cb0bef08', 'AMBAL', 'AMIGOS', 110),
('5f6c9cb0bef0e ', 'AMBAL', 'B.GRADE', 110),
('5f6c9cb0bef15 ', 'AMBAL', 'CHENILE SAKURA', 110),
('5f6c9cb0bef1c ', 'AMBAL', 'CHUSION MAT', 110),
('5f6c9cb0bef22 ', 'AMBAL', 'DINASTI', 110),
('5f6c9cb0bef29 ', 'AMBAL', 'FLAFFY', 110),
('5f6c9cb0bef2f ', 'AMBAL', 'FLORENCE', 110),
('5f6c9cb0bef36 ', 'AMBAL', 'HAVEN', 110),
('5f6c9cb0bef3c ', 'AMBAL', 'HAWAII', 110),
('5f6c9cb0bef43 ', 'AMBAL', 'IMPERIAL', 110),
('5f6c9cb0bef49 ', 'AMBAL', 'KASABLANKA', 110),
('5f6c9cb0bef50 ', 'AMBAL', 'KASHAN', 110),
('5f6c9cb0bef56 ', 'AMBAL', 'KIWI', 110),
('5f6c9cb0bef5d ', 'AMBAL', 'MADENA', 110),
('5f6c9cb0bef82 ', 'AMBAL', 'MODERNO', 110),
('5f6c9cb0bef9f ', 'AMBAL', 'OSTRICH', 110),
('5f6c9cb0befa6 ', 'AMBAL', 'PANDA', 110),
('5f6c9cb0befad ', 'AMBAL', 'PARADISE', 110),
('5f6c9cb0befb3 ', 'AMBAL', 'POPSTAR', 110),
('5f6c9cb0befba ', 'AMBAL', 'RIO', 110),
('5f6c9cb0befbf ', 'AMBAL', 'SHAFIRA', 110),
('5f6c9cb0befc5 ', 'AMBAL', 'VERMONT', 110),
('5f6c9cb0befcb ', 'AMBAL', 'VISTA', 110),
('5f6c9cb0befd2 ', 'AMBAL', 'ZAG', 110),
('5f6c9cb0befd8 ', 'KARPET', 'ADROOS', 110),
('5f6c9cb0befdf ', 'KARPET', 'AL-BAHAR', 110),
('5f6c9cb0befe6 ', 'KARPET', 'APOLLO', 110),
('5f6c9cb0befec ', 'KARPET', 'ARIZONA', 110),
('5f6c9cb0beff3 ', 'KARPET', 'BALI', 110),
('5f6c9cb0beff9 ', 'KARPET', 'BUANA', 110),
('5f6c9cb0bf000 ', 'KARPET', 'DIVA', 110),
('5f6c9cb0bf006 ', 'KARPET', 'KH', 110),
('5f6c9cb0bf00d ', 'KARPET', 'KLASIK', 110),
('5f6c9cb0bf013 ', 'KARPET', 'NURTEX', 110),
('5f6c9cb0bf01a ', 'KARPET', 'OSTRICH', 110),
('5f6c9cb0bf020 ', 'KARPET', 'PRITTI', 110),
('5f6c9cb0bf027 ', 'KARPET', 'RAJUT 4D', 110),
('5f6c9cb0bf02d ', 'KARPET', 'SET', 110),
('5f6c9cb0bf034 ', 'KARPET', 'TILE', 110),
('5f6c9cb0bf03a ', 'KARPET', 'TULIP', 110),
('5f6c9cb0bf041 ', 'KASUR BIG', 'MONICA', 111),
('5f6c9cb0bf047 ', 'KASUR BIG SP DLX', 'FLORA', 111),
('5f6c9cb0bf04e ', 'KASUR BIG SP DLX', 'MONICA', 111),
('5f6c9cb0bf054 ', 'KASUR BIG SP DLX', 'VIRGIN', 111),
('5f6c9cb0bf05b ', 'KASUR BIG', 'VIRGIN', 111),
('5f6c9cb0bf062 ', 'KASUR CAMPING', 'BIG FOAM', 111),
('5f6c9cb0bf068 ', 'KASUR FULL MOTIF', '-', 111),
('5f6c9cb0bf06f ', 'KASUR KARAKTER', 'YELVO', 111),
('5f6c9cb0bf075 ', 'KASUR LANTAI', 'ARINI', 111),
('5f6c9cb0bf07c ', 'KASUR LANTAI', 'DIAMOND', 111),
('5f6c9cb0bf082 ', 'KASUR LANTAI', 'NATALI', 111),
('5f6c9cb0bf088 ', 'KASUR LANTAI', 'SUPREME', 111),
('5f6c9cb0bf08f ', 'KASUR LIPAT', 'MEELYN', 111),
('5f6c9cb0bf096 ', 'KASUR LIPAT', 'STEFANUS', 111),
('5f6c9cb0bf09c ', 'KASUR MOTIF TENGAH', '-', 111),
('5f6c9cb0bf0a3 ', 'KASUR', 'YELVO', 111),
('5f6c9cb0bf0a9 ', 'MATRAS', 'MY FRIEND', 111),
('5f6c9cb0bf0b0 ', 'PERMADANI CHENILE', 'SULTANA', 110),
('5f6c9cb0bf0b6 ', 'PERMADANI', 'PEDANG', 110),
('5f6c9cb0bf0bd ', 'PERMADANI', 'SAPHYRE', 110),
('5f6c9cb0bf0c3 ', 'PERMADANI CONTINENTAL', 'SULTANA', 110),
('5f6c9cb0bf0c8 ', 'SAJADAH', '-', 110),
('5f6c9cb0bf0e2 ', 'SAJADAH', 'AL-NAJAF', 110),
('5f6c9cb0bf0e6 ', 'SAJADAH', 'AL-NAMAZ', 110),
('5f6c9cb0bf0ea ', 'SAJADAH SUPER SPIGEL', 'AL-DIRA', 110),
('5f6c9cb0bf0ee ', 'SAJADAH', 'ARIZONA', 110),
('5f6c9cb0bf0f2 ', 'SAJADAH', 'ARINI', 110),
('5f6c9cb0bf0f6 ', 'SAJADAH', 'IRANI', 110),
('5f6c9cb0bf0fa ', 'SAJADAH VELVET', 'IZMIR', 110),
('5f6c9cb0bf0fd ', 'SAJADAH METALIC', 'BROKER', 110),
('5f6c9cb0bf101 ', 'SAJADAH', 'MONTANA', 110),
('5f6c9cb0bf105 ', 'SAJADAH', 'OSCAR', 110),
('5f6c9cb0bf109 ', 'SAJADAH', 'RN', 110),
('5f6c9cb0bf10d ', 'SAJADAH', 'INTEKSA VELUR', 110),
('5f6c9cb0bf111 ', 'SAJADAH', 'TIFU', 110),
('5f6c9cb0bf114 ', 'SAJADAH', 'VELTEKSA PARFUM', 110),
('5f6c9cb0bf118 ', 'SAJADAH', 'YOUROUSHI MAKEENA', 110),
('5f6c9cb0bf11c ', 'TIKAR', ' ELITE G', 113),
('5f6c9cb0bf120 ', 'TIKAR', 'EVA', 110),
('5f6c9cb0bf124 ', 'TIKAR', 'FOOM', 110),
('5f6c9cb0bf128 ', 'TIKAR', 'MEELYN', 110),
('5f6c9cb0bf12c ', 'TIKAR', 'ATHENA', 110),
('5f6c9cb0bf12f ', 'TIKAR', 'DAIGE', 110),
('5f6c9cb0bf133 ', 'TIKAR', 'EXCLUSIVE', 110),
('5f6c9cb0bf137 ', 'TIKAR', 'FOCUS', 110),
('5f6c9cb0bf13b ', 'TIKAR', 'WANGSAGA', 110),
('5f6c9cb0bf13f ', 'TIKAR', 'SINAR LAUT', 110),
('5f6c9cb0bf143 ', 'TIKAR', 'LEISURE', 110),
('5f6c9cb0bf147 ', 'TIKAR', 'MANGGA/NAGA', 110),
('5f6c9cb0bf14a ', 'KESET', '-', 128),
('5f6c9cb0bf14e ', 'KESET', 'WELCOME', 128),
('5f6c9cb0bf152 ', 'KESET', 'WINOLA', 128),
('5f6c9cb0bf156 ', 'KESET', 'ADROS', 128),
('5f6c9cb0bf15a ', 'KESET', 'BIO FLOOR', 128),
('5f6c9cb0bf15e ', 'KESET', 'CONCORD', 128),
('5f6c9cb0bf161 ', 'KESET', 'FONTANA', 128),
('5f6c9cb0bf165 ', 'KESET', 'MLC', 128),
('5f6c9cb0bf169 ', 'KESET', 'CANDY', 128),
('5f6c9cb0bf16d ', 'KESET', 'CALISTO', 128),
('5f6c9cb0bf171 ', 'KELAMBU', 'DAHLIA', 128),
('5f6c9cb0bf175 ', 'KELAMBU', 'PRESIDEN', 128),
('5f6c9cb0bf178 ', 'KELAMBU', 'PUTRI ACEH', 128),
('5f6c9cb0bf17c ', 'KELAMBU', 'SANDIEGO', 128),
('5f6c9cb0bf180 ', 'KELAMBU', 'ELYANA', 128),
('5f6c9cb0bf184 ', 'HANDUK', '-', 120),
('5f6c9cb0bf188 ', 'HANDUK', 'AMORE', 120),
('5f6c9cb0bf18c ', 'HANDUK', 'ARTISTIK', 120),
('5f6c9cb0bf190 ', 'HANDUK', 'BAYWATT', 120),
('5f6c9cb0bf193 ', 'HANDUK', 'ENJOY', 120),
('5f6c9cb0bf197 ', 'HANDUK', 'LOTUS', 120),
('5f6c9cb0bf19b ', 'HANDUK', 'LUPPEN', 120),
('5f6c9cb0bf19f ', 'HANDUK', 'MELISA', 120),
('5f6c9cb0bf1a3 ', 'HANDUK', 'BLUECHERRY', 120),
('5f6c9cb0bf1a7 ', 'HANDUK', 'DESY', 120),
('5f6c9cb0bf1aa ', 'HANDUK', 'MAGNOLIA', 120),
('5f6c9cb0bf1b0 ', 'HANDUK', 'TWIN', 120),
('5f6c9cb0bf1b8 ', 'BED COVER', 'VALLERY', 126),
('5f6c9cb0bf1bc ', 'BED COVER', 'ARINI', 126),
('5f6c9cb0bf1c1 ', 'BED COVER', 'MY LOVE', 126),
('5f6c9cb0bf1c8 ', 'BED COVER', 'REVINA', 126),
('5f6c9cb0bf1ce ', 'BED COVER', 'BONITA', 126),
('5f6c9cb0bf1d5 ', 'BED COVER', 'SANDIAGO', 126),
('5f6c9cb0bf1db ', 'BED COVER', 'GRANDBERRY', 126),
('5f6c9cb0bf1e2 ', 'BED COVER', 'LADY ROSE', 126),
('5f6c9cb0bf1e8 ', 'BED COVER', 'SANGRILLA', 126),
('5f6c9cb0bf1ee ', 'BED COVER', 'SAYAKU', 126),
('5f6c9cb0bf1f5 ', 'SELIMUT', 'AMORE', 125),
('5f6c9cb0bf1fb ', 'SELIMUT', 'BA LR', 125),
('5f6c9cb0bf201 ', 'SELIMUT', 'BONITA', 125),
('5f6c9cb0bf208 ', 'SELIMUT', 'EVER BEAR', 125),
('5f6c9cb0bf20e ', 'SELIMUT', 'GOLDEN STAR', 125),
('5f6c9cb0bf214 ', 'SELIMUT', 'LIVIA', 125),
('5f6c9cb0bf21b ', 'SELIMUT', 'RT OTP', 125),
('5f6c9cb0bf221 ', 'SELIMUT', 'VALLERY', 125),
('5f6c9cb0bf228 ', 'SEPRAI', 'GREEN BERRY', 126),
('5f6c9cb0bf22e ', 'SEPRAI', 'INTERNAL', 126),
('5f6c9cb0bf234 ', 'SEPRAI', 'KING FAMILY', 126),
('5f6c9cb0bf23b ', 'SEPRAI', 'LIVIA', 126),
('5f6c9cb0bf241 ', 'SEPRAI', 'MY LOVE', 126),
('5f6c9cb0bf247 ', 'SEPRAI', 'RALINE', 126),
('5f6c9cb0bf24e ', 'SEPRAI', 'BONITA', 126),
('5f6c9cb0bf253 ', 'SEPRAI', 'KENDRA SIGNATURE', 126),
('5f6c9cb0bf257 ', 'SEPRAI', 'LADY ROSE', 126),
('5f6c9cb0bf25a ', 'SEPRAI', 'SIDNEY', 126),
('5f6c9cb0bf25e ', 'SEPRAI', 'CINTANI', 126),
('5f6c9cb0bf263 ', 'SEPRAI', 'NATALI', 126),
('5f6c9cb0bf266 ', 'SEPRAI', 'TWILL SIDNEY', 126),
('5f6c9cb0bf26a ', 'SEPRAI', 'VALLERY', 126),
('5f6c9cb0bf270 ', 'SEPRAI', 'IVANA', 126),
('5f6c9cb0bf277 ', 'SEPRAI', 'DESY KTN', 126),
('5f6c9cb0bf27d ', 'BONEKA', '-', 160),
('5f6c9cb0bf284 ', 'BONEKA', 'RASFUR', 160),
('5f6c9cb0bf288 ', 'BONEKA', 'YELVO', 160),
('5f6c9cb0bf28e ', 'BONEKA', 'MONOHARA', 160),
('5f6c9cb0bf293 ', 'BONEKA', 'VELBOA', 160),
('5f6c9cb0bf299 ', 'BONEKA', 'VONELL', 160);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang_masuk`
--

CREATE TABLE `tbl_barang_masuk` (
  `id_barang_masuk` int(11) NOT NULL,
  `tgl_barang_masuk` date DEFAULT NULL,
  `no_po` varchar(255) DEFAULT NULL,
  `no_surat_jalan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang_masuk_detail`
--

CREATE TABLE `tbl_barang_masuk_detail` (
  `id_barang_masuk_detail` int(11) NOT NULL,
  `id_barang_masuk` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang_temp`
--

CREATE TABLE `tbl_barang_temp` (
  `id_temp` int(11) NOT NULL,
  `id_barang` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `id_satuan` int(11) DEFAULT NULL,
  `size` varchar(20) DEFAULT '0',
  `expired` datetime DEFAULT NULL,
  `harga_beli` double(11,0) DEFAULT NULL,
  `potongan_beli` double(11,0) DEFAULT NULL,
  `qty_default` int(11) DEFAULT NULL,
  `disc_beli` double(11,0) DEFAULT NULL,
  `volume` double(11,0) DEFAULT '0',
  `berat` double(11,0) DEFAULT '0',
  `sat_panjang` int(11) DEFAULT '1',
  `panjang_brg` double(11,0) DEFAULT '0',
  `lebar_brg` double(11,0) DEFAULT '0',
  `sat_volume` int(11) DEFAULT '1',
  `sat_berat` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id_categori` int(11) NOT NULL,
  `nama_categori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id_categori`, `nama_categori`) VALUES
(11, 'KARPET'),
(12, 'TEKSTIL'),
(13, 'BAZAAR'),
(14, 'FURNITURE'),
(15, 'ELEKTRONIK'),
(16, 'TOY'),
(17, 'GROCERIES');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_copy1`
--

CREATE TABLE `tbl_category_copy1` (
  `id_categori` int(11) NOT NULL,
  `nama_categori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category_copy1`
--

INSERT INTO `tbl_category_copy1` (`id_categori`, `nama_categori`) VALUES
(1, 'Elektronik'),
(2, 'Buku'),
(3, 'Dapur'),
(4, 'Fashion Anak & Bayi'),
(5, 'Fashion Muslim'),
(6, 'Fashion Pria'),
(7, 'Fashion Wanita'),
(8, 'Film & Musik'),
(9, 'Gaming'),
(10, 'Handphone & Tablet'),
(11, 'Ibu & Bayi'),
(12, 'Kamera'),
(13, 'Kecantikan'),
(14, 'Kesehatan'),
(15, 'Komputer & Laptop'),
(16, 'Mainan & Hobi'),
(17, 'Makanan & Minuman'),
(18, 'Office & Stationery'),
(19, 'Olahraga'),
(20, 'Otomotif'),
(21, 'Perawatan Hewan'),
(22, 'Perawatan Tubuh'),
(23, 'Perlengkapan Pesta & Craft'),
(24, 'Pertukangan'),
(25, 'Rumah Tangga'),
(26, 'Wedding'),
(27, 'Tour & Travel'),
(28, 'KARPET, PERMADANI, & KASUR');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_barang`
--

CREATE TABLE `tbl_data_barang` (
  `id_list_barang` int(11) NOT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `harga_beli` double(11,0) DEFAULT NULL,
  `potongan_beli` double(11,0) DEFAULT NULL,
  `disc_beli` double(11,0) DEFAULT NULL,
  `potongan_jual` double(11,0) DEFAULT NULL,
  `harga_jual` double(11,0) DEFAULT NULL,
  `disc_jual` double(11,0) DEFAULT NULL,
  `status_promo` tinyint(1) DEFAULT NULL,
  `status_ppn` int(11) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `id_toko` varchar(255) DEFAULT NULL,
  `min_stok` int(11) DEFAULT '0',
  `max_stok` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_barang`
--

INSERT INTO `tbl_data_barang` (`id_list_barang`, `id_barang`, `harga_beli`, `potongan_beli`, `disc_beli`, `potongan_jual`, `harga_jual`, `disc_jual`, `status_promo`, `status_ppn`, `date_create`, `stok`, `id_toko`, `min_stok`, `max_stok`) VALUES
(2, 840, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(3, 841, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(4, 842, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(5, 843, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(6, 844, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(7, 845, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(8, 846, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(9, 847, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(10, 848, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(11, 849, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(12, 850, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(13, 851, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(14, 852, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(15, 853, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(16, 854, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(17, 855, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(18, 856, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(19, 857, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(20, 858, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(21, 859, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(22, 860, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(23, 861, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(24, 862, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(25, 863, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(26, 864, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(27, 865, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(28, 866, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(29, 867, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(30, 868, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(31, 869, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(32, 870, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(33, 871, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(34, 872, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(35, 873, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(36, 874, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(37, 875, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(38, 876, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(39, 877, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(40, 878, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(41, 879, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(42, 880, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(43, 881, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(44, 882, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(45, 883, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(46, 884, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(47, 885, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(48, 886, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(49, 887, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(50, 888, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(51, 889, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(52, 890, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(53, 891, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(54, 892, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(55, 893, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(56, 894, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(57, 895, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(58, 896, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(59, 897, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(60, 898, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(61, 899, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(62, 900, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(63, 901, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(64, 902, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(65, 903, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(66, 904, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(67, 905, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(68, 906, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(69, 907, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(70, 908, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(71, 909, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(72, 1000, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(73, 1001, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(74, 1002, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(75, 1003, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(76, 1004, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(77, 1005, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(78, 1006, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(79, 1007, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(80, 1008, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(81, 1009, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(82, 1010, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(83, 1011, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(84, 1012, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(85, 1013, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(86, 1014, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(87, 1015, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(88, 1016, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(89, 1017, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(90, 1018, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(91, 1019, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(92, 1020, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(93, 1021, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(94, 1022, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(95, 1023, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(96, 1024, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(97, 1025, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(98, 1026, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(99, 1027, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(100, 1028, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(101, 1029, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(102, 1030, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(103, 1031, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(104, 1032, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(105, 1033, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(106, 1034, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(107, 1035, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(108, 1036, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(109, 1037, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(110, 1038, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(111, 1039, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(112, 1040, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(113, 1041, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(114, 1042, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(115, 1043, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(116, 1044, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(117, 1045, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(118, 1046, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(119, 1047, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(120, 1048, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(121, 1049, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(122, 1050, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(123, 1051, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(124, 1052, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(125, 1053, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(126, 1054, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(127, 1055, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0),
(128, 1056, 10000, 0, 0, 0, 11000, 0, 0, 0, '2020-09-22', 10, '902', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_harga_barang`
--

CREATE TABLE `tbl_harga_barang` (
  `id_harga_barang` int(11) NOT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `id_cabang` varchar(255) DEFAULT NULL,
  `ppn` varchar(255) DEFAULT NULL,
  `status_ppn` tinyint(1) DEFAULT NULL COMMENT '0 = status ppn non active\n1 = stastus ppn active',
  `disc` double(11,0) DEFAULT NULL,
  `potongan` double(11,0) DEFAULT NULL,
  `margin` double(11,0) DEFAULT NULL,
  `harga_jual_1` double(255,0) DEFAULT NULL,
  `harga_jual_2` double(255,0) DEFAULT NULL,
  `harga_jual_3` double(255,0) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '0 = status product konsinyasi\n1 = stastus product perusahaan',
  `status_stok` tinyint(1) DEFAULT NULL COMMENT '0 = status stok toko\n1 = stastus stok gudang'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ket_sup`
--

CREATE TABLE `tbl_ket_sup` (
  `id_ket_sup` int(11) NOT NULL,
  `ket_sup` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ket_sup`
--

INSERT INTO `tbl_ket_sup` (`id_ket_sup`, `ket_sup`) VALUES
(1, 'Supplier Lokal'),
(2, 'Supplier Luar Pulau');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kirim_brg`
--

CREATE TABLE `tbl_kirim_brg` (
  `no_kirim_brg` varchar(255) NOT NULL,
  `no_surat_jalan` varchar(255) DEFAULT NULL,
  `tgl_pengiriman` date DEFAULT NULL,
  `estimasi_kedatanga` date DEFAULT NULL,
  `id_toko` varchar(255) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kirim_brg`
--

INSERT INTO `tbl_kirim_brg` (`no_kirim_brg`, `no_surat_jalan`, `tgl_pengiriman`, `estimasi_kedatanga`, `id_toko`) VALUES
('KB/10/20/0001', '09888', '2020-10-29', '2020-10-29', '901'),
('KB/10/20/0002', '0999', '2020-10-29', '2020-10-29', '901');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kirim_brg_detail`
--

CREATE TABLE `tbl_kirim_brg_detail` (
  `id_kirim_brg_detail` int(11) NOT NULL,
  `id_po` varchar(255) DEFAULT NULL,
  `no_kirim_brg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kirim_brg_detail`
--

INSERT INTO `tbl_kirim_brg_detail` (`id_kirim_brg_detail`, `id_po`, `no_kirim_brg`) VALUES
(1, '5f8408a21ad4e', 'KB/10/20/0001'),
(2, '5f8e8e7aa1e81', 'KB/10/20/0001'),
(3, '5f99f5dc6a78c', NULL),
(4, '5f9a71b55624a', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kirim_brg_detail_temp`
--

CREATE TABLE `tbl_kirim_brg_detail_temp` (
  `id_kirim_brg_detail` int(11) NOT NULL,
  `id_po` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level`
--

CREATE TABLE `tbl_level` (
  `id_level` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pegawai`
--

CREATE TABLE `tbl_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(255) DEFAULT NULL,
  `alamat_pegawai` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_ktp` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `foto_ktp` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `jk` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0 = non aktif	\n1 = aktif\n2 = cuti',
  `tgl_lahir` date DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `tgl_update` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`id_pegawai`, `nama_pegawai`, `alamat_pegawai`, `no_hp`, `email`, `no_ktp`, `foto`, `foto_ktp`, `jabatan`, `nip`, `jk`, `status`, `tgl_lahir`, `tgl_masuk`, `tgl_input`, `tgl_update`) VALUES
(3, 'Andi', 'Lampung', '081233221111', 'mandidayat1@gmail.com', '123123123', '2020-10-23_09:18:02.jpg', '2020-10-23_09:58:07.JPG', 'GM', '123123', 'Laki - Laki', 1, '2020-10-13', '2020-10-13', '2020-10-23', '2020-10-23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role_toko`
--

CREATE TABLE `tbl_role_toko` (
  `id_role_toko` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role_toko`
--

INSERT INTO `tbl_role_toko` (`id_role_toko`, `ket`) VALUES
(1, 'Undefined'),
(2, 'Toko Pusat'),
(3, 'Toko Cabang'),
(4, 'Gudang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan_barang`
--

CREATE TABLE `tbl_satuan_barang` (
  `id_satuan` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_satuan_barang`
--

INSERT INTO `tbl_satuan_barang` (`id_satuan`, `ket`) VALUES
(1, 'pcs'),
(2, 'roll'),
(3, 'box'),
(4, 'dus'),
(5, 'pack');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan_berat_barang`
--

CREATE TABLE `tbl_satuan_berat_barang` (
  `id_satuan` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_satuan_berat_barang`
--

INSERT INTO `tbl_satuan_berat_barang` (`id_satuan`, `ket`) VALUES
(1, 'Ons'),
(2, 'Gr'),
(3, 'Kg'),
(4, 'Ton');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan_length_barang`
--

CREATE TABLE `tbl_satuan_length_barang` (
  `id_satuan` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_satuan_length_barang`
--

INSERT INTO `tbl_satuan_length_barang` (`id_satuan`, `ket`) VALUES
(1, 'cm'),
(2, 'm');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan_volume_barang`
--

CREATE TABLE `tbl_satuan_volume_barang` (
  `id_satuan` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_satuan_volume_barang`
--

INSERT INTO `tbl_satuan_volume_barang` (`id_satuan`, `ket`) VALUES
(1, 'ML'),
(2, 'L');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `id_status` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`id_status`, `ket`) VALUES
(1, 'Aktif'),
(2, 'Non Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status_acc_pr`
--

CREATE TABLE `tbl_status_acc_pr` (
  `id_status` int(11) NOT NULL,
  `ket_status_pr` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status_acc_pr`
--

INSERT INTO `tbl_status_acc_pr` (`id_status`, `ket_status_pr`, `color`) VALUES
(1, 'Menunggu', 'warning'),
(2, 'Di Terima', 'success'),
(3, 'Di Tolak', 'danger'),
(4, 'Acc Rev', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status_pesan_pr`
--

CREATE TABLE `tbl_status_pesan_pr` (
  `id_status_pesan` int(11) NOT NULL,
  `ket_status_pesan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status_pesan_pr`
--

INSERT INTO `tbl_status_pesan_pr` (`id_status_pesan`, `ket_status_pesan`) VALUES
(1, 'Belum Dipesan'),
(2, 'Sudah Dipesan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status_po`
--

CREATE TABLE `tbl_status_po` (
  `id_status_po` int(11) NOT NULL,
  `status_po` varchar(255) DEFAULT NULL,
  `color` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status_po`
--

INSERT INTO `tbl_status_po` (`id_status_po`, `status_po`, `color`) VALUES
(1, 'Menunggu', 'warning'),
(2, 'Disetujui', 'success'),
(3, 'Ditolak', 'danger'),
(4, 'Dikirim', 'info'),
(5, 'Diterima', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_category`
--

CREATE TABLE `tbl_sub_category` (
  `id_sub_cat` int(11) NOT NULL,
  `id_cat` int(11) DEFAULT NULL,
  `nama_sub_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_category`
--

INSERT INTO `tbl_sub_category` (`id_sub_cat`, `id_cat`, `nama_sub_cat`) VALUES
(110, 11, 'AMBAL'),
(111, 11, 'KASUR'),
(112, 11, 'SAJADAH'),
(113, 11, 'TIKAR'),
(120, 12, 'HANDUK'),
(121, 12, 'PAKAIAN PRIA'),
(122, 12, 'PAKAIAN WANITA'),
(123, 12, 'PAKAIAN ANAK-ANAK'),
(124, 12, 'BAHAN KAIN'),
(125, 12, 'SELIMUT'),
(126, 12, 'SEPRAI'),
(130, 13, 'PERLENGKAPAN DAPUR'),
(131, 13, 'PERLENGKAPAN KAMAR MANDI'),
(132, 13, 'PERLENGKAPAN KEBERSIHAN'),
(133, 13, 'PERLENGKAPAN TAMAN DAN KEBUN'),
(134, 13, 'ATK DAN PERLENGKAPAN SEKOLAH'),
(135, 13, 'TOOLKIT'),
(136, 13, 'OTOMOTIF'),
(137, 13, 'PERLENGKAPAN UMUM'),
(140, 14, 'SPRING BED'),
(141, 14, 'LEMARI'),
(142, 14, 'MEJA KURSI'),
(143, 14, 'STORAGE'),
(150, 15, 'ELEKTRONIK DAPUR'),
(151, 15, 'ELEKTRONIK RUMAH TANGGA'),
(152, 15, 'LAMPU'),
(153, 15, 'AUDIO DAN VIDEO'),
(154, 15, 'HANDPHONE DAN LAPTOP'),
(160, 16, 'BONEKA'),
(161, 16, 'MAINAN ANAK PRIA'),
(162, 16, 'MAINAN ANAK WANITA'),
(163, 16, 'MAINAN LAINNYA'),
(170, 17, 'HBC (HEALTH, BEAUTY, COSMETIC)'),
(171, 17, 'FOOD'),
(172, 17, 'DRINK'),
(173, 17, 'DRUG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_category_copy1`
--

CREATE TABLE `tbl_sub_category_copy1` (
  `id_sub_cat` int(11) NOT NULL,
  `id_cat` int(11) DEFAULT NULL,
  `nama_sub_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_category_copy1`
--

INSERT INTO `tbl_sub_category_copy1` (`id_sub_cat`, `id_cat`, `nama_sub_cat`) VALUES
(1, 12, 'Arsitektur & Desain'),
(2, 12, 'Buku Hukum'),
(3, 12, 'Buku Import'),
(4, 12, 'Buku Masakan'),
(5, 12, 'Buku Persiapan Ujian'),
(6, 12, 'Buku Remaja dan Anak'),
(7, 12, 'Ekonomi & Bisnis'),
(8, 12, 'Hobi'),
(9, 12, 'Kamus'),
(10, 12, 'Kedokteran'),
(11, 12, 'Keluarga'),
(12, 12, 'Kesehatan & Gaya Hidup'),
(13, 12, 'Kewanitaan'),
(14, 12, 'Komik'),
(15, 12, 'Komputer & Internet'),
(16, 12, 'Lainnya'),
(17, 12, 'Majalah'),
(18, 12, 'Novel & Sastra'),
(19, 12, 'Pendidikan'),
(20, 12, 'Pengembangan Diri & Karir'),
(21, 12, 'Pertanian'),
(22, 12, 'Religi & Spiritual'),
(23, 12, 'Sosial Politik'),
(24, 12, 'Teknik & Sains'),
(25, 13, 'Aksesoris Dapur'),
(26, 13, 'Alat Masak Khusus'),
(27, 13, 'Bekal'),
(28, 13, 'Lain-Lain'),
(29, 13, 'Penyimpanan Makanan'),
(30, 13, 'Peralatan Baking'),
(31, 13, 'Peralatan Dapur'),
(32, 13, 'Peralatan Makan & Minum'),
(33, 13, 'Peralatan Masak'),
(34, 13, 'Perlengkapan Cuci Piring'),
(35, 11, 'Alat Pendingin Ruangan'),
(36, 11, 'Audio'),
(37, 11, 'Elektronik Dapur'),
(38, 11, 'Elektronik Kantor'),
(39, 11, 'Elektronik Rumah Tangga'),
(40, 11, 'Kamera Pengintai'),
(41, 11, 'Lampu'),
(42, 11, 'Media Player'),
(43, 11, 'Perangkat Elektronik Lainnya'),
(44, 11, 'Printer'),
(45, 11, 'Telepon'),
(46, 11, 'TV & Aksesoris'),
(47, 11, 'Vaporizer'),
(48, 14, 'Aksesoris Anak'),
(49, 14, 'Aksesoris Bayi'),
(50, 14, 'Baju & Sepatu Bayi'),
(51, 14, 'Jam Tangan Anak'),
(52, 14, 'Kostum Anak'),
(53, 14, 'Pakaian Adat Anak'),
(54, 14, 'Pakaian Anak Laki-Laki'),
(55, 14, 'Pakaian Anak Perempuan'),
(56, 14, 'Pakaian Dalam Anak'),
(57, 14, 'Perhiasan Anak'),
(58, 14, 'Sepatu Anak Laki-laki'),
(59, 14, 'Sepatu Anak Perempuan'),
(60, 14, 'Seragam Sekolah'),
(61, 14, 'Tas Anak'),
(62, 15, 'Aksesoris Muslim'),
(63, 15, 'Atasan Muslim Wanita'),
(64, 15, 'Baju Renang Muslim'),
(65, 15, 'Bawahan Muslim Wanita'),
(66, 15, 'Dress Muslim Wanita'),
(67, 15, 'Jilbab'),
(68, 15, 'Outerwear Muslim Wanita'),
(69, 15, 'Pakaian Muslim Anak'),
(70, 15, 'Pakaian Muslim Pria'),
(71, 15, 'Perlengkapan Ibadah'),
(72, 16, 'Aksesoris Pria'),
(73, 16, 'Aksesoris Sepatu Pria'),
(74, 16, 'Atasan Pria'),
(75, 16, 'Baju Tidur Pria'),
(76, 16, 'Batik Pria'),
(77, 16, 'Blazer & Jas Pria'),
(78, 16, 'Celana Pria'),
(79, 16, 'Jam Tangan Pria'),
(80, 16, 'Topi Pria'),
(81, 16, 'Tas Pria'),
(82, 16, 'Seragam Pria'),
(83, 16, 'Sepatu Pria'),
(84, 16, 'Perhiasan Pria'),
(85, 16, 'Pakaian Dalam Pria'),
(86, 16, 'Pakaian Adat Pria'),
(87, 16, 'Outerwear Pria'),
(88, 16, 'Jeans & Denim Pria'),
(89, 17, 'Aksesoris Sepatu Wanita'),
(90, 17, 'Aksesoris Wanita'),
(91, 17, 'Atasan Wanita'),
(92, 17, 'Baju Tidur Wanita'),
(93, 17, 'Batik Wanita'),
(94, 17, 'Bawahan Wanita'),
(95, 17, 'Beachwear Wanita'),
(96, 17, 'Bridal'),
(97, 17, 'Dress'),
(98, 17, 'Fashion Couple'),
(99, 17, 'Jam Tangan Wanita'),
(100, 17, 'Tas Wanita'),
(101, 17, 'Setelan Wanita'),
(102, 17, 'Seragam Wanita'),
(103, 17, 'Sepatu Wanita'),
(104, 17, 'Perhiasan Wanita'),
(105, 17, 'Pakaian Dalam Wanita'),
(106, 17, 'Pakaian Adat Wanita'),
(107, 17, 'Outerwear Wanita'),
(108, 17, 'Kebaya'),
(109, 17, 'Jeans & Denim Wanita');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id_supplier` varchar(255) NOT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1 = active\n2 = non active\n',
  `ket_sup` int(11) DEFAULT NULL,
  `sistem_manajemen` varchar(255) DEFAULT NULL,
  `sertifikat` varchar(255) DEFAULT NULL,
  `profil_perusahaan` varchar(255) DEFAULT NULL,
  `lama_jatuh_tempo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id_supplier`, `nama_supplier`, `alamat`, `no_hp`, `email`, `rating`, `status`, `ket_sup`, `sistem_manajemen`, `sertifikat`, `profil_perusahaan`, `lama_jatuh_tempo`) VALUES
('sup-5f4c9b19ccdd1', 'Supplier 1', 'Jl. Pulau Irian No.1, Karang Mumus, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75113', '081233442211', 'sup@gmail.com', '5', 1, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tag_category`
--

CREATE TABLE `tbl_tag_category` (
  `id_tag_cat` int(11) NOT NULL,
  `id_sub_cat` int(11) DEFAULT NULL,
  `nama_tag_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tag_category_copy1`
--

CREATE TABLE `tbl_tag_category_copy1` (
  `id_tag_cat` int(11) NOT NULL,
  `id_sub_cat` int(11) DEFAULT NULL,
  `nama_tag_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tag_category_copy1`
--

INSERT INTO `tbl_tag_category_copy1` (`id_tag_cat`, `id_sub_cat`, `nama_tag_cat`) VALUES
(1, 1, 'Buku Bangunan'),
(2, 1, 'Buku Desain Dapur'),
(3, 1, 'Buku Desain Ruang Tamu'),
(4, 1, 'Buku Metode & Material Bangunan'),
(5, 1, 'Buku Codes & Standars'),
(6, 1, 'Buku Desain Kamar'),
(7, 1, 'Buku Desain Rumah'),
(8, 1, 'Buku Taman'),
(9, 1, 'Buku Dekorasi & Ornamen'),
(10, 1, 'Buku Desain Ruang Keluarga'),
(11, 1, 'Buku Interior & Eksterior'),
(12, 2, 'Buku Gender & Hukum'),
(13, 2, 'Buku Hukum Perdata'),
(14, 2, 'Buku Politik & Hukum'),
(15, 2, 'Buku Hukum Dagang'),
(16, 2, 'Buku Hukum Pidana'),
(17, 2, 'Kumpulan Peraturan Perundang-Undangan'),
(18, 2, 'Buku Hukum Internasional'),
(19, 2, 'Buku Kemanusiaan'),
(20, 2, 'UUD 1945'),
(21, 3, 'Agriculture Book Import'),
(22, 3, 'Computer Book Import'),
(23, 3, 'Health Book Import'),
(24, 3, 'Law Book Import'),
(25, 3, 'Political Social Book Import'),
(26, 3, 'Religion & Philosophy Book Import'),
(27, 3, 'Self Development Book Import'),
(28, 3, 'Art & Novel Import'),
(29, 3, 'Economy Book Import'),
(30, 3, 'Hobby & Interest Book Import'),
(31, 3, 'Management & Business Book Import'),
(32, 3, 'Psychology & Education Book Import'),
(33, 3, 'School Book Import'),
(34, 3, 'Technique Book Import'),
(35, 3, 'Child & Teenager Book Import'),
(36, 3, 'Feminity Book Import'),
(37, 3, 'Language Book Import'),
(38, 3, 'Medical Book Import'),
(39, 3, 'Reference & Dictionary Book Import'),
(40, 3, 'Secretarial Book Import'),
(41, 3, 'Tourism & Map Book Import'),
(42, 4, 'Resep Kue'),
(43, 4, 'Resep Masakan'),
(44, 4, 'Resep Makanan Bayi & Balita'),
(45, 4, 'Resep Minuman & Dessert'),
(46, 4, 'Resep Makanan Diet'),
(47, 4, 'Resep Pastry'),
(48, 5, 'Persiapan Tes CPNS'),
(49, 5, 'Persiapan Tes TOEFL & IELTS'),
(50, 5, 'Persiapan TPA & Psikotest'),
(51, 6, 'Buku Aktivitas'),
(52, 6, 'Buku Dunia Pengetahuan'),
(53, 6, 'Buku Keterampilan Anak'),
(54, 6, 'Buku Cerita Anak'),
(55, 6, 'Buku Fabel'),
(56, 6, 'Buku Mewarnai'),
(57, 6, 'Buku Dongeng'),
(58, 6, 'Buku Islami Anak'),
(59, 7, 'Buku Akuntansi'),
(60, 7, 'Buku Kesekretariatan'),
(61, 7, 'Buku Perbankan'),
(62, 7, 'Buku Statistik'),
(63, 7, 'Buku Bisnis'),
(64, 7, 'Buku Manajemen'),
(65, 7, 'Buku Perhotelan'),
(66, 7, 'Buku Usaha Kecil & Kewirausahaan'),
(67, 7, 'Buku Ekonomi'),
(68, 7, 'Buku Pariwisata'),
(69, 7, 'Buku Perpajakan'),
(70, 8, 'Buku Alam'),
(71, 8, 'Buku Hiburan'),
(72, 8, 'Buku Kuliner'),
(73, 8, 'Buku Otomotif'),
(74, 8, 'Buku Tanaman'),
(75, 8, 'Buku Fotografi'),
(76, 8, 'Buku Humor'),
(77, 8, 'Buku Musik & Lagu'),
(78, 8, 'Buku Permainan'),
(79, 8, 'Buku Travel'),
(80, 8, 'Buku Hewan Peliharaan'),
(81, 8, 'Buku Keterampilan'),
(82, 8, 'Buku Olahraga'),
(83, 8, 'Buku Seni'),
(84, 9, 'Kamus Bahasa Arab'),
(85, 9, 'Kamus Bahasa Jepang'),
(86, 9, 'Kamus Bahasa Lainnya'),
(87, 9, 'Kamus Basa Jawa'),
(88, 9, 'Kamus Bahasa Indonesia'),
(89, 9, 'Kamus Bahasa Jerman'),
(90, 9, 'Kamus Bahasa Mandarin'),
(91, 9, 'Kamus Basa Sunda'),
(92, 9, 'Kamus Bahasa Inggris'),
(93, 9, 'Kamus Bahasa Korea'),
(94, 9, 'Kamus Bahasa Perancis'),
(95, 10, 'Buku Farmasi'),
(96, 10, 'Buku Psikiatri'),
(97, 10, 'Buku Kedokteran Spesialis'),
(98, 10, 'Kamus Istilah Kedokteran'),
(99, 10, 'Buku Kedokteran Umum'),
(100, 0, 'Buku Bimbingan Orang Tua'),
(101, 0, 'Buku Nama-nama Bayi'),
(102, 0, 'Buku Pendidikan Keluarga'),
(103, 0, 'Diet'),
(104, 0, 'Kesehatan Masyarakat'),
(105, 0, 'Pengobatan Alternatif'),
(106, 0, 'Gizi & Nutrisi'),
(107, 0, 'Kesehatan Pria'),
(108, 0, 'Sports & Adventure'),
(109, 0, 'Kesehatan Anak'),
(110, 0, 'Latihan & Kebugaran'),
(111, 13, 'Busana'),
(112, 13, 'Kecantikan'),
(113, 13, 'Kehamilan & Menyusui'),
(114, 14, 'Komik Anak'),
(115, 14, 'Komik Islami'),
(116, 14, 'Komik Asing'),
(117, 14, 'Komik Langka'),
(118, 14, 'Komik Dewasa'),
(119, 14, 'Komik Manga'),
(120, 15, 'Buku Database'),
(121, 15, 'Buku Internet & Web'),
(122, 15, 'Buku Programming'),
(123, 15, 'Buku Design Graphics'),
(124, 15, 'Buku Microsoft Office'),
(125, 15, 'Buku Sistem Operasi'),
(126, 15, 'Buku Hardware'),
(127, 15, 'Buku Mobile & Gadget'),
(128, 15, 'Buku Social Media'),
(129, 17, 'Katalog'),
(130, 17, 'Majalah Desain'),
(131, 17, 'Majalah Fashion'),
(132, 17, 'Majalah Otomotif'),
(133, 17, 'Koran'),
(134, 17, 'Majalah Design Interior'),
(135, 17, 'Majalah Musik'),
(136, 17, 'Majalah Anak'),
(137, 17, 'Majalah Ekonomi & Bisnis'),
(138, 17, 'Majalah Olahraga'),
(139, 18, 'Buku Roman'),
(140, 18, 'Kisah Nyata'),
(141, 18, 'Misteri'),
(142, 18, 'Novel Remaja'),
(143, 18, 'Fantasi'),
(144, 18, 'Kritik Sastra'),
(145, 18, 'Naskah'),
(146, 18, 'Novel Terjemahan'),
(147, 18, 'Fiksi Puisi'),
(148, 18, 'Literatur Fiksi'),
(149, 18, 'Novel Indonesia'),
(150, 18, 'Puisi'),
(151, 19, 'Atlas'),
(152, 19, 'Buku SD Kelas 1'),
(153, 19, 'Buku SD Kelas 4'),
(154, 19, 'Buku SMA Kelas 1'),
(155, 19, 'Buku SMP Kelas 1'),
(156, 19, 'Ensiklopedia'),
(157, 19, 'Buku Bimbingan Belajar'),
(158, 19, 'Buku SD Kelas 2'),
(159, 19, 'Buku SD Kelas 5'),
(160, 19, 'Buku SMA Kelas 2'),
(161, 19, 'Buku SMP Kelas 2'),
(162, 19, 'Kumpulan Soal SD'),
(163, 19, 'Kumpulan Soal SMP'),
(164, 19, 'Buku Saku Pramuka'),
(165, 19, 'Buku SD Kelas 3'),
(166, 19, 'Buku SD Kelas 6'),
(167, 19, 'Buku SMA Kelas 3'),
(168, 19, 'Buku SMP Kelas 3'),
(169, 19, 'Kumpulan Soal SMA'),
(170, 20, 'Buku Kesuksesan'),
(171, 20, 'Buku Leadership Kepemimpinan'),
(172, 20, 'Self Improvement & Development'),
(173, 21, 'Agribisnis'),
(174, 21, 'Peternakan'),
(175, 21, 'Bioteknologi Pertanian'),
(176, 21, 'Tanaman & Kebun'),
(177, 21, 'Pengembangan Pertanian'),
(178, 22, 'Alkitab'),
(179, 22, 'Buku Agama Hindu'),
(180, 22, 'Buku Agama Khong Hu Chu'),
(181, 22, 'Filsafat'),
(182, 22, 'Al-Quran'),
(183, 22, 'Buku Agama Islam'),
(184, 22, 'Buku Agama Kristen'),
(185, 22, 'Kepercayaan'),
(186, 22, 'Buku Agama Buddha'),
(187, 22, 'Buku Agama Katolik'),
(188, 22, 'Filosofi'),
(189, 22, 'Spiritual'),
(190, 23, 'Buku Autobiografi'),
(191, 23, 'Buku Komunikasi'),
(192, 23, 'Buku Sejarah'),
(193, 23, 'Buku Biografi'),
(194, 23, 'Buku Lingkungan Hidup'),
(195, 23, 'Buku Sosial Budaya'),
(196, 23, 'Buku Jurnalisme'),
(197, 23, 'Buku Politik'),
(198, 23, 'Ilmu Media Komunikasi'),
(199, 24, 'Buku Astronomi & Luar Angkasa'),
(200, 24, 'Buku Engineering'),
(201, 24, 'Buku Geologi'),
(202, 24, 'Buku Robotika'),
(203, 24, 'Buku Biologi'),
(204, 24, 'Buku Fisika'),
(205, 24, 'Buku Ilmiah'),
(206, 24, 'Buku Sipil'),
(207, 24, 'Buku Elektro'),
(208, 24, 'Buku Geografi'),
(209, 24, 'Buku Kimia'),
(210, 25, 'Alat Pemotong Serbaguna'),
(211, 25, 'Chopper'),
(212, 25, 'Korek Kompor'),
(213, 25, 'Peeler'),
(214, 25, 'Pisau Dapur'),
(215, 25, 'Tatakan Gas'),
(216, 25, 'Capit Makanan'),
(217, 25, 'Grinder'),
(218, 25, 'Magnet Kulkas'),
(219, 25, 'Pelindung Tangan'),
(220, 25, 'Pisau Set'),
(221, 25, 'Termometer Makanan & Minuman'),
(222, 25, 'Celemek'),
(223, 25, 'Gunting Dapur'),
(224, 25, 'Parutan'),
(225, 25, 'Pengasah Pisau'),
(226, 25, 'Talenan'),
(227, 25, 'Timer Masak'),
(228, 26, 'Chocolate Melter'),
(229, 26, 'Donut Maker'),
(230, 26, 'Mesin Sostel'),
(231, 26, 'Popcorn Maker'),
(232, 26, 'Coffee & Tea Maker'),
(233, 26, 'Ice Cream & Yogurt Maker'),
(234, 26, 'Noodle & Pasta Maker'),
(235, 26, 'Sushi Maker & Roller'),
(236, 26, 'Cotton Candy Maker'),
(237, 26, 'Mesin Es Serut'),
(238, 26, 'Pancake Maker'),
(239, 26, 'Waffle Maker'),
(240, 27, 'Botol Minum'),
(241, 27, 'Kotak Makan'),
(242, 27, 'Rantang'),
(243, 27, 'Termos Air'),
(244, 27, 'Cetakan Bento'),
(245, 27, 'Lunch Box Set'),
(246, 27, 'Tas Bekal'),
(247, 27, 'Tusuk Bento'),
(248, 27, 'Cup Bento'),
(249, 27, 'Partisi Bento'),
(250, 27, 'Tas Botol'),
(251, 29, 'Aluminium Foil'),
(252, 29, 'Food Display'),
(253, 29, 'Plastic Wrap'),
(254, 29, 'Tempat Buah & Sayur'),
(255, 29, 'Tempat Saos & Kecap'),
(256, 29, 'Box Telur'),
(257, 29, 'Food Warmer'),
(258, 29, 'Plastik Klip'),
(259, 29, 'Tempat Bumbu'),
(260, 29, 'Toples Makanan'),
(261, 29, 'Cooler Box'),
(262, 29, 'Ice - Rice Bucket'),
(263, 29, 'Sealer Makanan'),
(264, 29, 'Tempat Roti'),
(265, 30, 'Alat Penghias Kue'),
(266, 30, 'Kocokan Telur'),
(267, 30, 'Pisau Kue'),
(268, 30, 'Cetakan Kue'),
(269, 30, 'Kuas Kue'),
(270, 30, 'Tatakan Kue'),
(271, 30, 'Kertas Baking'),
(272, 30, 'Loyang Kue'),
(273, 31, 'Alat Pembuka Botol'),
(274, 31, 'Pompa Galon'),
(275, 31, 'Regulator & Penghemat Gas'),
(276, 31, 'Timbangan Dapur'),
(277, 31, 'Alat Pembuka Kaleng'),
(278, 31, 'Rak Dapur'),
(279, 31, 'Sarung Galon'),
(280, 31, 'Water Purifier'),
(281, 31, 'Dispenser Air'),
(282, 31, 'Rak Piring'),
(283, 31, 'Sarung Kulkas'),
(284, 32, 'Cangkir'),
(285, 32, 'Gelas Wine'),
(286, 32, 'Peralatan Makan Set'),
(287, 32, 'Piring & Mangkok Saji'),
(288, 32, 'Sendok Bebek'),
(289, 32, 'Sendok Sayur & Kuah'),
(290, 32, 'Tatakan Gelas & Piring'),
(291, 32, 'Tutup Gelas & Piring'),
(292, 32, 'Centong Nasi'),
(293, 32, 'Mangkok Makan'),
(294, 32, 'Peralatan Minum Set'),
(295, 32, 'Pitcher Minuman'),
(296, 32, 'Sendok & Garpu Dessert'),
(297, 32, 'Sumpit'),
(298, 32, 'Tempat Sendok & Garpu'),
(299, 32, 'Gelas & Mug'),
(300, 32, 'Nampan'),
(301, 32, 'Piring Makan'),
(302, 32, 'Sedotan'),
(303, 32, 'Sendok & Garpu Makan'),
(304, 32, 'Sumpit Makan'),
(305, 32, 'Tudung Saji'),
(306, 33, 'Cetakan Es, Puding, Coklat'),
(307, 33, 'Gelas Takar'),
(308, 33, 'Kompor'),
(309, 33, 'Saringan Masak'),
(310, 33, 'Steamer'),
(311, 33, 'Cobek'),
(312, 33, 'Gilingan Daging'),
(313, 33, 'Panci'),
(314, 33, 'Sendok Takar'),
(315, 33, 'Teko & Pemanas Air'),
(316, 33, 'Deep Fryer'),
(317, 33, 'Griller'),
(318, 33, 'Presto'),
(319, 33, 'Spatula & Sutil'),
(320, 33, 'Wajan'),
(321, 34, 'Dish Dryer'),
(322, 34, 'Saringan Bak Cuci Piring'),
(323, 34, 'Sabun Cuci Piring'),
(324, 34, 'Sikat Cuci Botol'),
(325, 34, 'Sabut'),
(326, 34, 'Sponge Cuci Piring'),
(327, 11, 'AC Portable'),
(328, 11, 'Air Conditioner'),
(329, 11, 'AC Reflektor'),
(330, 11, 'Air Cooler'),
(331, 11, 'AC Standing'),
(332, 11, 'Kipas Angin Listrik'),
(333, 36, 'Amplifier'),
(334, 36, 'Kabel & Konektor Audio'),
(335, 36, 'Voice Recorder'),
(336, 36, 'Earphone'),
(337, 36, 'Sound System'),
(338, 36, 'Headphone'),
(339, 36, 'Speaker'),
(340, 37, 'Blender'),
(341, 37, 'Kulkas'),
(342, 37, 'Oven'),
(343, 37, 'Toaster'),
(344, 37, 'Juicer'),
(345, 37, 'Microwave'),
(346, 37, 'Rice Cooker'),
(347, 37, 'Kompor Listrik'),
(348, 37, 'Mixer'),
(349, 37, 'Slow Cooker'),
(350, 38, 'Kartu RFID'),
(351, 38, 'LED Proyektor'),
(352, 38, 'Mesin Fotocopy'),
(353, 38, 'Mesin Kasir'),
(354, 38, 'Reader RFID'),
(355, 38, 'Laser Pointer'),
(356, 38, 'Mesin Absensi'),
(357, 38, 'Mesin Hitung Uang'),
(358, 38, 'Mesin Laminating'),
(359, 38, 'Layar Proyektor'),
(360, 38, 'Mesin Fax'),
(361, 38, 'Mesin Jilid'),
(362, 38, 'Mesin Penghancur Kertas'),
(363, 39, 'Alat Pengering Baju'),
(364, 39, 'Setrika'),
(365, 39, 'Hand Blower'),
(366, 39, 'Setrika Uap'),
(367, 39, 'Mesin Cuci'),
(368, 39, 'Vacuum Cleaners'),
(369, 40, 'Access Control Door'),
(370, 40, 'Fake Camera'),
(371, 40, 'Kamera CCTV'),
(372, 40, 'Smoke Detector'),
(373, 40, 'Alarm'),
(374, 40, 'IP Camera'),
(375, 40, 'Metal Detector'),
(376, 40, 'Spare Part'),
(377, 40, 'DVR'),
(378, 40, 'Kabel CCTV'),
(379, 40, 'Motion Detector'),
(380, 40, 'Spy Camera'),
(381, 41, 'Bohlam'),
(382, 41, 'Lampu Darurat'),
(383, 41, 'Lampu Hias'),
(384, 41, 'Lampu Tidur'),
(385, 41, 'Fitting Lampu'),
(386, 41, 'Lampu Dinding'),
(387, 41, 'Lampu Meja'),
(388, 41, 'Senter'),
(389, 41, 'Lampu Baca'),
(390, 41, 'Lampu Gantung'),
(391, 41, 'Lampu Proyektor'),
(392, 42, 'Blu Ray Player'),
(393, 42, 'Radio & Tape Player'),
(394, 42, 'DVD Player'),
(395, 42, 'Vinyl Player'),
(396, 42, 'MP3 & MP4 Player'),
(397, 43, 'Lainnya'),
(398, 12, 'Kabel & Konektor Telepon'),
(399, 12, 'Telepon Wireless'),
(400, 12, 'Telepon Kabel'),
(401, 12, 'Walkie Talkie'),
(402, 12, 'Telepon Satelit'),
(403, 46, 'Antena TV & Parabola'),
(404, 46, 'Penguat Sinyal TV'),
(405, 46, 'Televisi'),
(406, 46, 'Bracket TV'),
(407, 46, 'Receiver TV'),
(408, 46, 'TV Box'),
(409, 46, 'Kabel & Konektor'),
(410, 46, 'Remote TV'),
(411, 47, 'Atomizer Vape'),
(412, 47, 'Coil Vape'),
(413, 47, 'Kapas Vape'),
(414, 47, 'Paket Vaporizer'),
(415, 47, 'Casing Vape'),
(416, 47, 'E-Cigarettes'),
(417, 47, 'Liquid Vape'),
(418, 47, 'Tool & Kit Vape'),
(419, 47, 'Charger Vape'),
(420, 47, 'Hiasan Vape'),
(421, 47, 'MOD Vape'),
(422, 48, 'Bando Bandana Anak'),
(423, 48, 'Ikat Pinggang Anak'),
(424, 48, 'Jepitan Rambut Anak'),
(425, 48, 'Mahkota Anak'),
(426, 48, 'Sarung Tangan Anak'),
(427, 48, 'Topi Anak'),
(428, 48, 'Beanie Anak'),
(429, 48, 'Ikat Rambut Anak'),
(430, 48, 'Kacamata Anak'),
(431, 48, 'Payung Anak'),
(432, 48, 'Suspender Anak'),
(433, 48, 'Dasi Anak'),
(434, 48, 'Jas Hujan Anak'),
(435, 48, 'Kacamata Hitam Anak'),
(436, 48, 'Pita Rambut Anak'),
(437, 48, 'Syal Anak'),
(438, 49, 'Headband & Bando Bayi'),
(439, 49, 'Topi Bayi'),
(440, 49, 'Kacamata Jemur Bayi'),
(441, 49, 'Perhiasan Bayi'),
(442, 50, 'Baju Renang Bayi'),
(443, 50, 'Jumper Bayi'),
(444, 50, 'Pakaian Bayi Unisex'),
(445, 50, 'Sepatu Bayi'),
(446, 50, 'Gurita Bayi'),
(447, 50, 'Pakaian Bayi Laki-laki'),
(448, 50, 'Piyama Bayi'),
(449, 50, 'Setelan Bayi'),
(450, 50, 'Jaket Bayi'),
(451, 50, 'Pakaian Bayi Perempuan'),
(452, 50, 'Sarung Tangan & Kaos Kaki Bayi'),
(453, 51, 'Jam Tangan Analog Anak'),
(454, 51, 'Jam Tangan Digital Anak'),
(455, 51, 'Smart Watch Anak'),
(456, 52, 'Kostum Duyung Anak'),
(457, 52, 'Kostum Profesi Anak'),
(458, 52, 'Kostum Karakter Anak'),
(459, 52, 'Kostum Superhero Anak'),
(460, 52, 'Kostum Princess Anak'),
(461, 53, 'Cheong Sam Anak'),
(462, 53, 'Pakaian Adat Internasional Anak'),
(463, 53, 'Hanbok Anak'),
(464, 53, 'Pakaian Adat Nasional Anak'),
(465, 53, 'Kebaya Anak Perempuan'),
(466, 54, 'Baju Tidur Anak Laki-Laki'),
(467, 54, 'Celana Panjang Anak Laki-Laki'),
(468, 54, 'Jaket Anak Laki-Laki'),
(469, 54, 'Kaos Anak Laki-Laki'),
(470, 54, 'Celana Jeans Anak Laki-Laki'),
(471, 54, 'Celana Pendek Anak Laki-Laki'),
(472, 54, 'Jas Tuxedo Anak Laki Laki'),
(473, 54, 'Kemeja Anak Laki-Laki'),
(474, 54, 'Celana Jogger Anak Laki Laki'),
(475, 54, 'Hoodie Anak Laki-Laki'),
(476, 54, 'Jumpsuit Anak Laki-Laki'),
(477, 54, 'Setelan Anak Laki-Laki'),
(478, 55, 'Baby Dolls Anak Perempuan'),
(479, 55, 'Blouse Anak Perempuan'),
(480, 55, 'Celana Jeans Anak Perempuan'),
(481, 55, 'Dress Anak Perempuan'),
(482, 55, 'Jumpsuit Anak Perempuan'),
(483, 55, 'Kulot Anak Perempuan'),
(484, 55, 'Setelan Anak Perempuan'),
(485, 55, 'Baju Balet Anak Perempuan'),
(486, 55, 'Bolero Anak Perempuan'),
(487, 55, 'Celana Panjang Anak Perempuan'),
(488, 55, 'Hoodie Anak Perempuan'),
(489, 55, 'Kaos Anak Perempuan'),
(490, 55, 'Legging Anak Perempuan'),
(491, 55, 'Tank Top Anak Perempuan'),
(492, 55, 'Baju Tidur Anak Perempuan'),
(493, 55, 'Cardigan Anak Perempuan'),
(494, 55, 'Celana Pendek Anak Perempuan'),
(495, 55, 'Jaket Anak Perempuan'),
(496, 55, 'Kemeja Anak Perempuan'),
(497, 55, 'Rok Anak Perempuan'),
(498, 56, 'Celana Dalam Anak'),
(499, 56, 'Miniset'),
(500, 56, 'Kaos Dalam Anak'),
(501, 56, 'Long John Anak'),
(502, 57, 'Anting Anak'),
(503, 57, 'Kalung Anak'),
(504, 57, 'Cincin Anak'),
(505, 57, 'Gelang Anak'),
(506, 58, 'Boots Anak Laki Laki'),
(507, 58, 'Sandal Anak Laki Laki'),
(508, 58, 'Kaos Kaki Anak Laki Laki'),
(509, 58, 'Sepatu Sandal Anak Laki Laki'),
(510, 58, 'Pantofel Anak Laki-Laki'),
(511, 58, 'Sneakers Anak Laki-Laki'),
(512, 59, 'Boots Anak Perempuan'),
(513, 59, 'Sandal Anak Perempuan'),
(514, 59, 'Sepatu Pesta Anak Perempuan'),
(515, 59, 'Flat Shoes Anak Perempuan'),
(516, 59, 'Sepatu Balet Anak Perempuan'),
(517, 59, 'Sepatu Sandal Anak Perempuan'),
(518, 59, 'Kaos Kaki Anak Perempuan'),
(519, 59, 'Sepatu Jelly Anak Perempuan'),
(520, 59, 'Sneakers Anak Perempuan'),
(521, 60, 'Atasan Seragam'),
(522, 60, 'Dasi Seragam Sekolah'),
(523, 60, 'Topi Seragam Sekolah'),
(524, 60, 'Bawahan Seragam'),
(525, 60, 'Kaos Kaki Sekolah'),
(526, 60, 'Belt Seragam Sekolah'),
(527, 60, 'Kerudung Sekolah'),
(528, 61, 'Dompet Anak'),
(529, 61, 'Tas Selempang Anak'),
(530, 61, 'Tas Koper Anak'),
(531, 61, 'Tas Ransel Anak'),
(532, 62, 'Bros Jilbab'),
(533, 62, 'Klip Turki'),
(534, 62, 'Headpiece Jilbab'),
(535, 62, 'Peniti Jilbab'),
(536, 62, 'Kaos Kaki Wudhu'),
(537, 63, 'Blouse Muslim Wanita'),
(538, 63, 'Tunik Muslim'),
(539, 63, 'Manset Muslim Wanita'),
(540, 63, 'Setelan Syari Wanita'),
(541, 65, 'Celana Muslim'),
(542, 65, 'Rok Muslim'),
(543, 65, 'Legging Wudhu'),
(544, 65, 'Palazzo'),
(545, 66, 'Abaya'),
(546, 66, 'Kaftan'),
(547, 66, 'Gamis Wanita'),
(548, 66, 'Jumpsuit Muslim'),
(549, 67, 'Cadar'),
(550, 67, 'Hijab Segi Empat'),
(551, 67, 'Pashmina'),
(552, 67, 'Ciput'),
(553, 67, 'Jilbab Olahraga'),
(554, 67, 'Turban'),
(555, 67, 'Hijab Instan'),
(556, 67, 'Khimar'),
(557, 68, 'Cape Muslim'),
(558, 68, 'Vest Muslim'),
(559, 68, 'Cardigan Muslim'),
(560, 68, 'Coat Muslim'),
(561, 69, 'Baju Koko Anak'),
(562, 69, 'Gamis Anak'),
(563, 69, 'Mukena Anak'),
(564, 69, 'Sarung Anak'),
(565, 69, 'Busana Muslim Family Set'),
(566, 69, 'Jilbab Anak'),
(567, 69, 'Peci Anak'),
(568, 69, 'Busana Muslim Set Anak'),
(569, 69, 'Manset Anak'),
(570, 69, 'Rok Muslim Anak'),
(571, 70, 'Baju Koko Pria'),
(572, 70, 'Celana Sirwal'),
(573, 70, 'Sorban'),
(574, 70, 'Baju Koko Set Pria'),
(575, 70, 'Gamis Pria'),
(576, 70, 'Celana Sarung'),
(577, 70, 'Peci & Kopiah'),
(578, 71, 'Baju Ihram'),
(579, 71, 'Sajadah'),
(580, 71, 'Mukena'),
(581, 71, 'Sarung'),
(582, 71, 'Rompi Sholat'),
(583, 71, 'Tasbih'),
(584, 72, 'Aksesoris Kacamata Pria'),
(585, 72, 'Kacamata Pria'),
(586, 72, 'Scarf Pria'),
(587, 72, 'Ikat Pinggang Pria'),
(588, 72, 'Sapu Tangan Pria'),
(589, 72, 'Kacamata Hitam Pria'),
(590, 72, 'Sarung Tangan Pria'),
(591, 73, 'Insole Sepatu Pria'),
(592, 73, 'Sendok Sepatu'),
(593, 73, 'Kaos Kaki Pria'),
(594, 73, 'Tali Sepatu Pria'),
(595, 73, 'Perawatan Sepatu'),
(596, 74, 'Kaos Polo Pria'),
(597, 74, 'Kaos Pria'),
(598, 74, 'Kemeja Pria'),
(599, 75, 'Celana Tidur Pria'),
(600, 75, 'Set Piyama Pria'),
(601, 76, 'Celana Batik Pria'),
(602, 76, 'Kemeja Batik Pria'),
(603, 77, 'Blazer Pria'),
(604, 77, 'Jas & Tuxedo Pria'),
(605, 77, 'Suspender Pria'),
(606, 77, 'Cufflink Jas'),
(607, 77, 'Pin Jas'),
(608, 77, 'Dasi Pria'),
(609, 77, 'Pocket Square'),
(610, 78, 'Celana Bahan Pria'),
(611, 78, 'Celana Jogger Pria'),
(612, 78, 'Celana Cargo Pria'),
(613, 78, 'Celana Pendek Pria'),
(614, 78, 'Celana Chino Pria'),
(615, 79, 'Aksesoris Jam Tangan Pria'),
(616, 79, 'Jam Tangan Analog Pria'),
(617, 79, 'Jam Tangan Digital Pria'),
(618, 80, 'Bucket Hat'),
(619, 80, 'Topi Kupluk'),
(620, 80, 'Topi Baseball'),
(621, 80, 'Topi Newsboy'),
(622, 80, 'Topi Fedora'),
(623, 80, 'Topi Snapback'),
(624, 81, 'Aksesoris Tas Pria'),
(625, 81, 'Dompet Pria'),
(626, 81, 'Waist Bag Pria'),
(627, 81, 'Briefcase Pria'),
(628, 81, 'Tas Ransel Pria'),
(629, 81, 'Clutch Pria'),
(630, 81, 'Tas Selempang Pria'),
(631, 82, 'Seragam Driver Pria'),
(632, 82, 'Seragam PNS Pria'),
(633, 82, 'Seragam Koki Pria'),
(634, 82, 'Seragam Security Pria'),
(635, 82, 'Seragam Perawat Pria'),
(636, 83, 'Boots Pria'),
(637, 83, 'Sandal Pria'),
(638, 83, 'Sneakers Pria'),
(639, 83, 'Loafers Pria'),
(640, 83, 'Sepatu Sandal Pria'),
(641, 83, 'Pantofel Pria'),
(642, 83, 'Slip On Pria'),
(643, 84, 'Anting Pria'),
(644, 84, 'Gelang Pria'),
(645, 84, 'Batu Mulia & Batu Alam'),
(646, 84, 'Kalung Pria'),
(647, 84, 'Cincin Pria'),
(648, 85, 'Boxer Pria'),
(649, 85, 'Long John Pria'),
(650, 85, 'Celana Dalam Pria'),
(651, 85, 'Kaos Dalam Pria'),
(652, 86, 'Cheong Sam Pria'),
(653, 86, 'Pakaian Adat Nasional Pria'),
(654, 86, 'Hanbok Pria'),
(655, 86, 'Yukata Pria'),
(656, 86, 'Pakaian Adat Internasional Pria'),
(657, 87, 'Cardigan Pria'),
(658, 87, 'Jaket Pria'),
(659, 87, 'Coat Pria'),
(660, 87, 'Sweater Pria'),
(661, 87, 'Hoodie Pria'),
(662, 87, 'Vest Pria'),
(663, 88, 'Celana Jeans Pria'),
(664, 88, 'Overall Jeans Pria'),
(665, 88, 'Jaket Jeans Pria'),
(666, 88, 'Kemeja Denim Pria'),
(667, 89, 'Insole Sepatu Wanita'),
(668, 89, 'Tali Sepatu Wanita'),
(669, 89, 'Kaos Kaki Wanita'),
(670, 89, 'Silicon Gel Sepatu'),
(671, 90, 'Aksesoris Kacamata Wanita'),
(672, 90, 'Kacamata Wanita'),
(673, 90, 'Topi Wanita'),
(674, 90, 'Ikat Pinggang Wanita'),
(675, 90, 'Sarung Tangan Wanita'),
(676, 90, 'Kacamata Hitam Wanita'),
(677, 90, 'Scarf & Shawl Wanita'),
(678, 91, 'Blouse Wanita'),
(679, 91, 'Kaos Wanita'),
(680, 91, 'Crop Top Wanita'),
(681, 91, 'Kemeja Wanita'),
(682, 91, 'Kaos Polo Wanita'),
(683, 91, 'Tank Top Wanita'),
(684, 92, 'Celana Tidur Wanita'),
(685, 92, 'Daster Wanita'),
(686, 92, 'Set Piyama Wanita'),
(687, 93, 'Batik Couple'),
(688, 93, 'Dress Batik Wanita'),
(689, 93, 'Kain Tenun'),
(690, 93, 'Syal Batik Wanita'),
(691, 93, 'Blouse Batik Wanita'),
(692, 93, 'Jaket Batik Wanita'),
(693, 93, 'Outer Batik Wanita'),
(694, 93, 'Celana Batik Wanita'),
(695, 93, 'Kain Batik'),
(696, 93, 'Rok Batik Wanita'),
(697, 94, 'Celana Kulot Wanita'),
(698, 94, 'Legging Wanita'),
(699, 94, 'Celana Panjang Wanita'),
(700, 94, 'Rok Wanita'),
(701, 94, 'Celana Pendek Wanita'),
(702, 95, 'Bikini'),
(703, 95, 'Bikini Outer'),
(704, 96, 'Aksesoris Pengantin'),
(705, 96, 'Gaun Pengantin'),
(706, 96, 'Bridesmaid Dress'),
(707, 96, 'Wedding Glove'),
(708, 96, 'Cincin Couple'),
(709, 96, 'Wedding Veil'),
(710, 97, 'Jumpsuit & Playsuit'),
(711, 97, 'Mini Dress'),
(712, 97, 'Maxi Dress'),
(713, 97, 'Midi Dress'),
(714, 98, 'Aksesoris Couple'),
(715, 98, 'Baju Couple'),
(716, 98, 'Jam tangan couple'),
(717, 99, 'Jam Tangan Analog Wanita'),
(718, 99, 'Jam Tangan Digital Wanita'),
(719, 99, 'Strap Jam Wanita'),
(720, 100, 'Aksesoris Tas Wanita'),
(721, 100, 'Hand Bag Wanita'),
(722, 100, 'Tas Selempang Wanita'),
(723, 100, 'Clutch Wanita'),
(724, 100, 'Shoulder Bag Wanita'),
(725, 100, 'Tote Bag'),
(726, 100, 'Dompet Wanita'),
(727, 100, 'Tas Ransel Wanita'),
(728, 100, 'Waist Bag Wanita'),
(729, 101, 'Setelan Celana Wanita'),
(730, 101, 'Setelan Rok Wanita'),
(731, 102, 'Seragam Baby Sitter'),
(732, 102, 'Seragam Perawat Wanita'),
(733, 102, 'Seragam PNS Wanita'),
(734, 103, 'Boots Wanita'),
(735, 103, 'Loafers Wanita'),
(736, 103, 'Sepatu Heels Wanita'),
(737, 103, 'Sneakers Wanita'),
(738, 103, 'Espadrilles Wanita'),
(739, 103, 'Pantofel Wanita'),
(740, 103, 'Sepatu Sandal Wanita'),
(741, 103, 'Wedges Wanita'),
(742, 103, 'Flat Shoes Wanita'),
(743, 103, 'Sandal Wanita'),
(744, 103, 'Slip On Wanita'),
(745, 104, 'Anting Wanita'),
(746, 104, 'Gelang Wanita'),
(747, 104, 'Bros Wanita'),
(748, 104, 'Kalung Wanita'),
(749, 104, 'Cincin Wanita'),
(750, 104, 'Liontin Wanita'),
(751, 105, 'BRA'),
(752, 105, 'Lingerie'),
(753, 105, 'Celana Dalam Wanita'),
(754, 105, 'Long John Wanita'),
(755, 105, 'Korset'),
(756, 105, 'Stocking'),
(757, 106, 'Cheong Sam Wanita'),
(758, 106, 'Pakaian Adat Nasional Wanita'),
(759, 106, 'Hanbok Wanita'),
(760, 106, 'Yukata Wanita'),
(761, 106, 'Pakaian Adat Internasional Wanita'),
(762, 107, 'Blazer Wanita'),
(763, 107, 'Hoodie Wanita'),
(764, 107, 'Kimono Outer Wanita'),
(765, 107, 'Cardigan Wanita'),
(766, 107, 'Jacket Wanita'),
(767, 107, 'Sweater Wanita'),
(768, 107, 'Coat Wanita'),
(769, 107, 'Jaket Parka Wanita'),
(770, 107, 'Vest Wanita'),
(771, 108, 'Bustier Wanita'),
(772, 108, 'Kebaya Kutu Baru'),
(773, 108, 'Kebaya Brukat'),
(774, 108, 'Setelan Kebaya'),
(775, 108, 'Kebaya Encim'),
(776, 109, 'Celana Jeans Wanita'),
(777, 109, 'Jegging Wanita'),
(778, 109, 'Rok Denim Wanita'),
(779, 109, 'Dress Denim Wanita'),
(780, 109, 'Kemeja Denim Wanita'),
(781, 109, 'Jaket Jeans Wanita'),
(782, 109, 'Overall Denim Wanita'),
(783, 110, 'DJ Controller'),
(784, 110, 'Launchpad'),
(785, 110, 'Soundcard Recording'),
(786, 111, 'Aksesoris Alat Musik Gesek'),
(787, 111, 'Cello'),
(788, 111, 'Biola'),
(789, 111, 'Senar Biola'),
(790, 111, 'Bow Biola & Cello'),
(791, 111, 'Senar Cello'),
(792, 112, 'Aksesoris Alat Musik Tiup'),
(793, 112, 'Saxophone'),
(794, 112, 'Trumpet'),
(795, 112, 'Harmonika'),
(796, 112, 'Selang Pianika'),
(797, 112, 'Valve Oil'),
(798, 112, 'Pianika'),
(799, 112, 'Suling Recorder'),
(800, 113, 'Angklung'),
(801, 113, 'Gong'),
(802, 113, 'Kecapi'),
(803, 113, 'Gamelan'),
(804, 113, 'Jimbe'),
(805, 113, 'Sasando'),
(806, 113, 'Gendang'),
(807, 113, 'Kalimba'),
(808, 113, 'Seruling'),
(809, 114, 'Aksesoris Drum & Perkusi'),
(810, 114, 'Cymbal'),
(811, 114, 'Drum Pad'),
(812, 114, 'Rebana'),
(813, 114, 'Stik Drum'),
(814, 114, 'Alat Perkusi Orkestra'),
(815, 114, 'Drum Elektrik'),
(816, 114, 'Marakas'),
(817, 114, 'Snare Drum'),
(818, 114, 'Tamborin'),
(819, 114, 'Cajon'),
(820, 114, 'Drum Microphone'),
(821, 114, 'Pedal Drum'),
(822, 114, 'Stand Drum'),
(823, 114, 'Tas Snare & Cymbal Drum'),
(824, 115, 'Aksesoris Microphone'),
(825, 115, 'Mixer Audio'),
(826, 115, 'Efek Vokal'),
(827, 115, 'Microphone'),
(828, 116, 'Busa Peredam Suara'),
(829, 116, 'Metronome'),
(830, 116, 'Stand Partitur'),
(831, 117, 'Alat Musik'),
(832, 117, 'Lainnya'),
(833, 117, 'CD & DVD Musik'),
(834, 117, 'Vinyl'),
(835, 117, 'Kaset Pita'),
(836, 118, 'Adaptor Keyboard & Piano'),
(837, 118, 'Electone'),
(838, 118, 'Kursi Keyboard & Piano'),
(839, 118, 'Piano Elektrik'),
(840, 118, 'Tas Keyboard'),
(841, 118, 'Amplifier Keyboard'),
(842, 118, 'Grand Piano'),
(843, 118, 'Pedal Piano & Keyboard'),
(844, 118, 'Stand Keyboard'),
(845, 118, 'Cover Piano'),
(846, 118, 'Keyboard'),
(847, 118, 'Piano'),
(848, 118, 'Synthesizer'),
(849, 119, 'Alat Pembersih Gitar & Bass'),
(850, 119, 'Bass Elektrik'),
(851, 119, 'Gitar Akustik'),
(852, 119, 'Guitalele'),
(853, 119, 'Senar Bass'),
(854, 119, 'Strap Gitar'),
(855, 119, 'Tuner Gitar & Bass'),
(856, 119, 'Amplifier Gitar & Bass'),
(857, 119, 'Capo Gitar & Bass'),
(858, 119, 'Gitar Elektrik'),
(859, 119, 'Kabel Jack Gitar & Bass'),
(860, 119, 'Senar Gitar'),
(861, 119, 'Tas Bass'),
(862, 119, 'Ukulele'),
(863, 119, 'Bass Akustik'),
(864, 119, 'Efek Gitar & Bass'),
(865, 119, 'Gitar Klasik'),
(866, 119, 'Pick Gitar & Bass'),
(867, 119, 'Stand Gitar'),
(868, 119, 'Tas Gitar'),
(869, 120, 'Anime'),
(870, 120, 'Film'),
(871, 120, 'Serial TV'),
(872, 121, 'Adapter Game Console'),
(873, 121, 'Joystick Game'),
(874, 121, 'Steering Wheel'),
(875, 121, 'Baterai Game Console'),
(876, 121, 'Kursi Gaming'),
(877, 121, 'Tas Gaming'),
(878, 121, 'Casing & Silikon Game Console'),
(879, 121, 'Memory Card Gaming'),
(880, 121, 'Travel Case Game'),
(881, 122, 'Gamepad'),
(882, 122, 'Smartphone Signal Booster'),
(883, 123, 'CD Nintendo'),
(884, 123, 'CD Xbox'),
(885, 123, 'CD PC dan Laptop Gaming'),
(886, 123, 'CD PlayStation'),
(887, 124, 'Game Boy'),
(888, 124, 'PlayStation'),
(889, 124, 'Game Retro'),
(890, 124, 'Xbox'),
(891, 124, 'Nintendo'),
(892, 125, 'Charger Handphone'),
(893, 125, 'Flip Cover Handphone'),
(894, 125, 'Holder Handphone'),
(895, 125, 'Kabel OTG'),
(896, 125, 'Pelindung Kabel'),
(897, 125, 'Rubber Gel Pad'),
(898, 125, 'Skin Handphone'),
(899, 125, 'Tongsis'),
(900, 125, 'Charger Mobil'),
(901, 125, 'Gantungan Handphone'),
(902, 125, 'I-Ring'),
(903, 125, 'Lensa Kamera Handphone'),
(904, 125, 'Pembesar Layar Handphone'),
(905, 125, 'Screen Protector Handphone'),
(906, 125, 'Soft Case Handphone'),
(907, 125, 'Tripod Handphone'),
(908, 125, 'Docking Handphone'),
(909, 125, 'Hard Case Handphone'),
(910, 125, 'Kabel Data'),
(911, 125, 'Mount Handphone'),
(912, 125, 'Pop Socket'),
(913, 125, 'Selfie Ring Light'),
(914, 125, 'Stand Handphone'),
(915, 126, 'Casing & Cover Tablet'),
(916, 126, 'Docking Tablet'),
(917, 126, 'Mount Tablet'),
(918, 126, 'Tablet Sleeve'),
(919, 126, 'Charger Tablet'),
(920, 126, 'Holder Tablet'),
(921, 126, 'Screen Guard Tablet'),
(922, 126, 'Tripod Tablet'),
(923, 126, 'Connection Kit'),
(924, 126, 'Keyboard Bluetooth'),
(925, 126, 'Stylus Tablet'),
(926, 127, 'Android OS'),
(927, 127, 'iOS'),
(928, 127, 'BlackBerry OS'),
(929, 127, 'Windows Mobile'),
(930, 127, 'Feature Phone'),
(931, 128, 'Baterai Handphone'),
(932, 128, 'LCD Handphone'),
(933, 128, 'IC Handphone'),
(934, 128, 'Sim Tray Handphone'),
(935, 128, 'Keypad Handphone'),
(936, 128, 'Spare Part Handphone'),
(937, 129, 'Baterai Tablet'),
(938, 129, 'LCD Tablet'),
(939, 129, 'Spare Part Tablet'),
(940, 130, 'App Gift Card Fisik'),
(941, 130, 'Voucher Pulsa Fisik'),
(942, 130, 'Nomor Perdana'),
(943, 130, 'Voucher Data Fisik'),
(944, 131, 'Portable Power Bank'),
(945, 131, 'Power Case'),
(946, 131, 'Solar Power Bank'),
(947, 132, 'Android OS'),
(948, 132, 'Windows Mobile'),
(949, 132, 'iOS'),
(950, 132, 'Kindle e-Book'),
(951, 133, 'Aksesoris Wearable Devices'),
(952, 133, 'Smart Watch'),
(953, 133, 'GPS & Sport Tracker'),
(954, 133, 'Virtual Reality'),
(955, 133, 'Smart Band'),
(956, 133, 'Wearable Cameras'),
(957, 134, 'Baby Walker'),
(958, 134, 'Mainan Luar Ruang Bayi'),
(959, 134, 'Playmat Bayi'),
(960, 134, 'Mainan Edukasi & Musikal Bayi'),
(961, 134, 'Mainan Mandi Bayi'),
(962, 134, 'Swinger, Rocker & Bouncer Bayi'),
(963, 134, 'Mainan Gigi Bayi'),
(964, 134, 'Pagar Pengaman Bayi'),
(965, 135, 'Biskuit & Snack Bayi'),
(966, 135, 'Sereal & Bubur Bayi'),
(967, 135, 'Susu Bayi'),
(968, 136, 'Atasan Hamil'),
(969, 136, 'Dress & Terusan Hamil'),
(970, 136, 'Legging Hamil'),
(971, 136, 'Baju Renang Hamil'),
(972, 136, 'Gurita'),
(973, 136, 'Pakaian Dalam Ibu Hamil'),
(974, 136, 'Celana Hamil'),
(975, 136, 'Korset & Gurita Hamil'),
(976, 136, 'Rok Hamil'),
(977, 137, 'Apron Menyusui'),
(978, 137, 'Breast Pump Aksesoris'),
(979, 137, 'Kantong Botol ASI'),
(980, 137, 'Bra Menyusui'),
(981, 137, 'Cooler Bag'),
(982, 137, 'Nipple Cream'),
(983, 137, 'Breast Pad'),
(984, 137, 'Ice Gel'),
(985, 137, 'Pakaian Menyusui'),
(986, 138, 'Baby Oil'),
(987, 138, 'Diaper Bag'),
(988, 138, 'Minyak Telon'),
(989, 138, 'Bedak Bayi'),
(990, 138, 'Gunting Kuku Bayi'),
(991, 138, 'Sisir Bayi'),
(992, 138, 'Cream & Lotion Bayi'),
(993, 138, 'Kapas & Tissue Bayi'),
(994, 139, 'Aksesoris Stroller'),
(995, 139, 'Gendongan Bayi'),
(996, 139, 'Alas Stroller'),
(997, 139, 'Stroller'),
(998, 139, 'Dudukan Mobil Bayi'),
(999, 140, 'Popok Kain'),
(1000, 140, 'Popok Sekali Pakai'),
(1001, 141, 'Baby Monitor'),
(1002, 141, 'Box Tidur Bayi'),
(1003, 141, 'Perlak'),
(1004, 141, 'Bantal & Guling Bayi'),
(1005, 141, 'Kelambu Bayi'),
(1006, 141, 'Selimut Bayi'),
(1007, 141, 'Bedong Bayi'),
(1008, 141, 'Matras Tidur Bayi'),
(1009, 142, 'Bantal Ibu Hamil'),
(1010, 142, 'Bantal Menyusui'),
(1011, 143, 'Bathtub & Kolam Bayi'),
(1012, 143, 'Pispot'),
(1013, 143, 'Topi Pelindung Air Bayi'),
(1014, 143, 'Handuk Washlap Bayi'),
(1015, 143, 'Shampoo & Sabun Bayi'),
(1016, 143, 'Pelampung Bayi'),
(1017, 143, 'Sikat Gigi Pasta Gigi Bayi'),
(1018, 144, 'Alat Makan Bayi'),
(1019, 144, 'Celemek Bayi'),
(1020, 144, 'Sterilizer & Warmer'),
(1021, 144, 'Baby Food Maker'),
(1022, 144, 'Empeng'),
(1023, 144, 'Botol Susu & Dot'),
(1024, 144, 'Kursi Makan Bayi'),
(1025, 145, 'Kabel Konektor Kamera'),
(1026, 145, 'Monopod Kamera'),
(1027, 145, 'Stabilizer Kamera'),
(1028, 145, 'Lainnya'),
(1029, 145, 'Remote Wireless Kamera'),
(1030, 145, 'Tripod Kamera'),
(1031, 145, 'Microphone Kamera'),
(1032, 145, 'Silica Gel Kamera'),
(1033, 146, 'Disposable Camera'),
(1034, 146, 'Kamera Lomo'),
(1035, 146, 'Kamera Film'),
(1036, 146, 'Kamera Instan'),
(1037, 147, 'Baterai'),
(1038, 147, 'Charger Kamera'),
(1039, 147, 'Battery & Charger Pack'),
(1040, 147, 'Battery Grip Kamera'),
(1041, 149, 'Cleaning Cloth & Wipe'),
(1042, 149, 'Dry Box Kamera'),
(1043, 149, 'Cleaning Kit Kamera'),
(1044, 149, 'Lenspen'),
(1045, 149, 'Cleaning Swab'),
(1046, 149, 'Rubber Dust Air Blower'),
(1047, 150, 'Kamera DSLR'),
(1048, 150, 'Kamera 360'),
(1049, 150, 'Kamera Mirrorless'),
(1050, 150, 'Kamera Pocket'),
(1051, 150, 'Action Camera'),
(1052, 152, 'Case Kamera'),
(1053, 152, 'Tas Selempang Kamera'),
(1054, 152, 'Strap Kamera'),
(1055, 152, 'Waterproof Case Kamera'),
(1056, 152, 'Tas Ransel Kamera'),
(1057, 153, 'Backdrop'),
(1058, 153, 'Flash Trigger'),
(1059, 153, 'Softbox'),
(1060, 153, 'Flash Diffuser'),
(1061, 153, 'Hot Shoe Kamera'),
(1062, 153, 'Flash Kamera'),
(1063, 153, 'Ring Light'),
(1064, 154, 'Adapter Lensa'),
(1065, 154, 'Filter Lensa Kamera'),
(1066, 154, 'Lens Pouch'),
(1067, 154, 'Cap Lensa Kamera'),
(1068, 154, 'Hood Lensa Kamera'),
(1069, 154, 'Converter - Teleconverter'),
(1070, 154, 'Lensa Kamera'),
(1071, 155, 'Album Foto'),
(1072, 155, 'Frame Foto'),
(1073, 155, 'Refilll Kamera Instan'),
(1074, 155, 'DVs'),
(1075, 155, 'Printer Foto'),
(1076, 155, 'Roll Film'),
(1077, 155, 'Frame Digital'),
(1078, 155, 'Printer Foto Portable'),
(1079, 156, 'Aksesoris Drone'),
(1080, 156, 'Tas Drone'),
(1081, 156, 'Drone Kamera'),
(1082, 156, 'Drone Remote Control'),
(1083, 157, 'Bando Bandana'),
(1084, 157, 'Jepitan Rambut'),
(1085, 157, 'Tusuk Konde'),
(1086, 157, 'Hair Extension'),
(1087, 157, 'Mahkota & Headpiece'),
(1088, 157, 'Ikat Rambut'),
(1089, 157, 'Rambut Palsu'),
(1090, 159, 'Cetakan & Sisir Alis'),
(1091, 159, 'Eyebrow Pomade'),
(1092, 159, 'Cukuran Alis'),
(1093, 159, 'Eyebrow Powder'),
(1094, 159, 'Eyebrow Mascara'),
(1095, 159, 'Pensil Alis'),
(1096, 161, 'Aksesoris Nail Art'),
(1097, 161, 'Henna'),
(1098, 161, 'Portable Nail Dryer'),
(1099, 161, 'Alat Nail Art'),
(1100, 161, 'Kuteks'),
(1101, 161, 'Stiker Kuku'),
(1102, 161, 'Fake Nail'),
(1103, 161, 'Lem Kuku Palsu'),
(1104, 162, 'Lip Balm & Oil'),
(1105, 162, 'Lip Liner'),
(1106, 162, 'Lipstik'),
(1107, 162, 'Lip Cream'),
(1108, 162, 'Lip Palette'),
(1109, 162, 'Lip Tint & Lip Stain'),
(1110, 162, 'Lipgloss'),
(1111, 162, 'Lip Scrub'),
(1112, 163, 'Alat Potong Rambut'),
(1113, 163, 'Hair Dryer'),
(1114, 163, 'Catokan Rambut'),
(1115, 163, 'Sisir Rambut'),
(1116, 163, 'Curling Iron'),
(1117, 165, 'Kapas Wajah'),
(1118, 165, 'Make Up Remover Wipes'),
(1119, 165, 'Make Up Remover Balm'),
(1120, 165, 'Micellar Water'),
(1121, 165, 'Make Up Remover Oil'),
(1122, 165, 'Pembersih Mata Bibir'),
(1123, 167, 'Masker Bibir'),
(1124, 167, 'Masker Mata'),
(1125, 167, 'Masker Wajah'),
(1126, 170, 'Bulu Mata Palsu'),
(1127, 170, 'Eye Primer'),
(1128, 170, 'Mascara'),
(1129, 170, 'Eyelid Tape'),
(1130, 170, 'eyeshadow'),
(1131, 170, 'Penjepit Bulu Mata'),
(1132, 170, 'Eye Liner'),
(1133, 170, 'Lem Bulu Mata'),
(1134, 171, 'Detox'),
(1135, 171, 'Penambah Berat Badan'),
(1136, 171, 'Lainnya'),
(1137, 171, 'Suplemen Fitnes'),
(1138, 171, 'Obat Pelangsing'),
(1139, 173, 'Obat Keputihan'),
(1140, 173, 'Suplemen Kewanitaan'),
(1141, 173, 'Obat Menopause'),
(1142, 173, 'Obat Menstruasi'),
(1143, 175, 'Sistem Kekebalan Tubuh'),
(1144, 175, 'Vitamin Anak'),
(1145, 175, 'Vitamin C'),
(1146, 175, 'Vitamin Ibu Hamil'),
(1147, 175, 'Suplemen Vitamin Rambut'),
(1148, 175, 'Vitamin B'),
(1149, 175, 'Vitamin D'),
(1150, 175, 'Calcium'),
(1151, 175, 'Vitamin A'),
(1152, 175, 'Vitamin Bayi'),
(1153, 175, 'Vitamin E'),
(1154, 175, 'Vitamin & Nutrisi'),
(1155, 176, 'Asi Booster'),
(1156, 176, 'Tes Masa Subur'),
(1157, 176, 'Susu Ibu Hamil'),
(1158, 176, 'Tes Kehamilan'),
(1159, 177, 'Balsam'),
(1160, 177, 'Salep Otot'),
(1161, 177, 'Koyo'),
(1162, 177, 'Minyak Pijat'),
(1163, 178, 'Alat Bantu Seksual'),
(1164, 178, 'Produk Dewasa Lainnya'),
(1165, 178, 'Alat Kontrasepsi'),
(1166, 178, 'Suplemen Vitalitas Pria'),
(1167, 178, 'Pelumas'),
(1168, 179, 'Alat Bantu Pendengaran'),
(1169, 179, 'Alat Diagnosa'),
(1170, 179, 'Alat Penunjang Gerak'),
(1171, 179, 'Behel'),
(1172, 179, 'Earmuff'),
(1173, 179, 'Seragam Medis'),
(1174, 179, 'Alat Bantu Penglihatan'),
(1175, 179, 'Alat Laboratorium'),
(1176, 179, 'Alat Pijat'),
(1177, 179, 'Diaper Dewasa'),
(1178, 179, 'Peralatan P3K'),
(1179, 179, 'Termometer'),
(1180, 179, 'Alat Bantu Pernafasan'),
(1181, 179, 'Alat Pelangsing'),
(1182, 179, 'Alat Terapi'),
(1183, 179, 'Disposable Consumable'),
(1184, 179, 'Peralatan Rumah Sakit Emergency'),
(1185, 179, 'Timbangan Badan'),
(1186, 180, 'Obat Alergi'),
(1187, 180, 'Obat Diabetes'),
(1188, 180, 'Obat Kulit'),
(1189, 180, 'Obat Mulut'),
(1190, 180, 'Obat Telinga'),
(1191, 180, 'Obat Batuk & Pilek'),
(1192, 180, 'Obat Herbal'),
(1193, 180, 'Obat Lainnya'),
(1194, 180, 'Obat Pencernaan & Penyakit Lainnya'),
(1195, 180, 'Obat Bayi'),
(1196, 180, 'Obat Jerawat'),
(1197, 180, 'Obat Mata'),
(1198, 180, 'Obat Sakit Kepala & Demam'),
(1199, 181, 'Adaptor Laptop'),
(1200, 181, 'Cooling Pad'),
(1201, 181, 'Keyboard'),
(1202, 181, 'Laptop Case'),
(1203, 181, 'Mouse'),
(1204, 181, 'Protector Laptop'),
(1205, 181, 'TV Card & Tuner'),
(1206, 181, 'Alas Laptop'),
(1207, 181, 'Drawing Tablet'),
(1208, 181, 'Keypad'),
(1209, 181, 'Laptop Sleeve'),
(1210, 181, 'Mouse & Keyboard Bundle'),
(1211, 181, 'Skin Laptop'),
(1212, 181, 'Webcam'),
(1213, 181, 'Card Readers'),
(1214, 181, 'Kabel & Konektor'),
(1215, 181, 'Lainnya'),
(1216, 181, 'Meja Laptop'),
(1217, 181, 'Mousepad'),
(1218, 181, 'Tas Laptop'),
(1219, 182, 'Gaming Mouse & Keyboard Bundle'),
(1220, 182, 'Keyboard Gaming'),
(1221, 182, 'Headset Gaming'),
(1222, 182, 'Mouse Gaming'),
(1223, 182, 'Joystick & Wheel'),
(1224, 182, 'Mouse Pad Gaming'),
(1225, 183, 'Desktop All-in-One'),
(1226, 183, 'Mini PC'),
(1227, 183, 'Desktop Tower'),
(1228, 183, 'Komputer Rakitan'),
(1229, 184, 'Kabel DVI'),
(1230, 184, 'Kabel Front Panel'),
(1231, 184, 'Kabel LAN'),
(1232, 184, 'Kabel USB'),
(1233, 184, 'USB Hub & Extension'),
(1234, 184, 'Kabel Ethernet'),
(1235, 184, 'Kabel HDMI'),
(1236, 184, 'Kabel Power CPU'),
(1237, 184, 'Kabel UTP'),
(1238, 184, 'Kabel FireWire'),
(1239, 184, 'Kabel IDE'),
(1240, 184, 'Kabel SATA & eSATA'),
(1241, 184, 'Kabel VGA'),
(1242, 187, 'Laptop Gaming'),
(1243, 187, 'PC Gaming'),
(1244, 188, 'Adapter'),
(1245, 188, 'Modem USB'),
(1246, 188, 'Network Transceiver'),
(1247, 188, 'Powerline'),
(1248, 188, 'Router'),
(1249, 188, 'KVM Switch'),
(1250, 188, 'Modem Wifi'),
(1251, 188, 'Optical Power Meter'),
(1252, 188, 'Power Over Ethernet'),
(1253, 188, 'Switch Internet'),
(1254, 188, 'Modem Pool'),
(1255, 188, 'Network Card'),
(1256, 188, 'Penguat Sinyal'),
(1257, 188, 'Print Server'),
(1258, 189, 'Monitor LCD'),
(1259, 189, 'Monitor LED'),
(1260, 189, 'Monitor Tabung'),
(1261, 190, 'Case Memory Card'),
(1262, 190, 'Memory Stick Micro M2'),
(1263, 190, 'SD Card'),
(1264, 190, 'Compact Flash'),
(1265, 190, 'Memory Stick Pro Duo'),
(1266, 190, 'MiniSD Card'),
(1267, 190, 'Memory Card Adapter'),
(1268, 190, 'Memory Stick Pro-HG Duo'),
(1269, 190, 'MMC'),
(1270, 191, 'CD & DVD Kosong'),
(1271, 191, 'Harddisk Internal'),
(1272, 191, 'Storage Cases & Docking'),
(1273, 191, 'Disket'),
(1274, 191, 'Lainnya'),
(1275, 191, 'USB Flash Disk'),
(1276, 191, 'Harddisk External'),
(1277, 191, 'SSD'),
(1278, 192, 'Laptop 2 in 1'),
(1279, 192, 'Ultrabook'),
(1280, 192, 'Laptop Consumer'),
(1281, 192, 'Notebook'),
(1282, 193, 'Baterai Laptop'),
(1283, 193, 'LCD Laptop'),
(1284, 193, 'RAM Laptop'),
(1285, 193, 'Cooling Fan Laptop'),
(1286, 193, 'Mainboard Laptop'),
(1287, 193, 'Keyboard Laptop'),
(1288, 193, 'Processor Laptop'),
(1289, 194, 'Baju, Rompi & Celana Airsoft'),
(1290, 194, 'Goggle & Kacamata AirsoftHelm & Topi AirsoftHolster, Case & Tas Airsoft'),
(1291, 194, 'Pad & Glove Airsoft'),
(1292, 194, 'Topeng & Balaclava Airsoft'),
(1293, 194, 'Baterai & Charger Airsoft'),
(1294, 194, 'Helm & Topi Airsoft'),
(1295, 194, 'Scope, Spring & Magazine Airsoft'),
(1296, 194, 'BB & Gas Airsoft'),
(1297, 194, 'Holster, Case & Tas Airsoft'),
(1298, 194, 'Sepatu Airsoft'),
(1299, 195, 'Air Hockey'),
(1300, 195, 'Jenga'),
(1301, 195, 'Mainan Magnet'),
(1302, 195, 'Russian Roulette'),
(1303, 195, 'Catur'),
(1304, 195, 'Karambol'),
(1305, 195, 'Mini Billiard'),
(1306, 195, 'Ular Tangga'),
(1307, 195, 'Dart'),
(1308, 195, 'Ludo'),
(1309, 195, 'Monopoli'),
(1310, 196, 'Boneka Bantal'),
(1311, 196, 'Boneka Binatang'),
(1312, 196, 'Boneka Rajut'),
(1313, 196, 'Boneka Barbie'),
(1314, 196, 'Boneka Edukasi'),
(1315, 196, 'Boneka Wisuda'),
(1316, 196, 'Boneka Beruang'),
(1317, 196, 'Boneka Karakter'),
(1318, 196, 'Rumah Boneka'),
(1319, 197, 'Bangunan & Track Diecast'),
(1320, 197, 'Diecast Kendaraan Publik'),
(1321, 197, 'Diecast Motor & Sepeda'),
(1322, 197, 'Diecast Set'),
(1323, 197, 'Diecast Bus'),
(1324, 197, 'Diecast Militer'),
(1325, 197, 'Diecast Organizer'),
(1326, 197, 'Diecast Truk & Konstruksi'),
(1327, 197, 'Diecast Kapal'),
(1328, 197, 'Diecast Mobil'),
(1329, 197, 'Diecast Pesawat'),
(1330, 198, 'Action Figure'),
(1331, 198, 'Funko Pop'),
(1332, 198, 'Bobble Head'),
(1333, 198, 'Miniatur'),
(1334, 198, 'Figure Set'),
(1335, 198, 'Super Deformed Figure'),
(1336, 200, 'Kostum Pria'),
(1337, 200, 'Kostum Wanita'),
(1338, 201, 'Lainnya'),
(1339, 202, 'Fidget Cube'),
(1340, 202, 'Squishy'),
(1341, 202, 'Fidget Spinner'),
(1342, 202, 'Slime'),
(1343, 203, '3D Puzzle'),
(1344, 203, 'Rubik'),
(1345, 203, 'Wooden Puzzle'),
(1346, 203, 'Jigsaw Puzzle'),
(1347, 203, 'Scrabbles'),
(1348, 203, 'Puzzle Lantai'),
(1349, 203, 'Sudoku'),
(1350, 204, 'Bola & Biji Bekel'),
(1351, 204, 'Kelereng'),
(1352, 204, 'Congklak'),
(1353, 204, 'Ketapel'),
(1354, 204, 'gasing'),
(1355, 204, 'Mahjong'),
(1356, 205, 'Kartu Domino'),
(1357, 205, 'Kartu Uno'),
(1358, 205, 'Kartu Remi'),
(1359, 205, 'Werewolf'),
(1360, 205, 'Kartu Tarot'),
(1361, 208, 'Brick (Lego)'),
(1362, 208, 'Tool & Kit Mecha Model (Gunpla)'),
(1363, 208, 'Mecha Model (Gunpla)'),
(1364, 208, 'Vehicle Model (Tamiya)'),
(1365, 208, 'Part Mini 4WD (Tamiya)'),
(1366, 209, 'Dance Pad'),
(1367, 209, 'Kapal RC'),
(1368, 209, 'Mainan Robot'),
(1369, 209, 'Pesawat RC'),
(1370, 209, 'Helikopter RC'),
(1371, 209, 'Kereta Api Track Set'),
(1372, 209, 'Mobil & Truk RC'),
(1373, 209, 'Piano Anak'),
(1374, 209, 'Hoverboard'),
(1375, 209, 'Mainan Karaoke Anak'),
(1376, 209, 'Part RC'),
(1377, 209, 'Segway'),
(1378, 210, 'Alat Masak Mainan'),
(1379, 210, 'Flash Card Anak'),
(1380, 210, 'Mainan Berhitung'),
(1381, 210, 'Mainan Kuda'),
(1382, 210, 'Mainan Salon'),
(1383, 210, 'Ring Donat'),
(1384, 210, 'Beads Anak'),
(1385, 210, 'Loom Bands'),
(1386, 210, 'Mainan Dokter'),
(1387, 210, 'Mainan Make Up'),
(1388, 210, 'Mandi Bola'),
(1389, 210, 'Tanah Liat'),
(1390, 210, 'Easel Anak'),
(1391, 210, 'Magnetic Drawing'),
(1392, 210, 'Mainan Kasir'),
(1393, 210, 'Mainan Montessori'),
(1394, 210, 'Plastisin Lilin Mainan'),
(1395, 211, 'Bahan Puding & Agar - Agar'),
(1396, 211, 'Coklat Bubuk'),
(1397, 211, 'Pewarna Makanan'),
(1398, 211, 'Baking Powder'),
(1399, 211, 'Coklat Masak'),
(1400, 211, 'Ragi'),
(1401, 211, 'Baking Soda'),
(1402, 211, 'Perisa Makanan'),
(1403, 211, 'Topping & Penghias Kue'),
(1404, 212, 'Beras Hitam'),
(1405, 212, 'Beras Putih'),
(1406, 212, 'Beras Ketan'),
(1407, 212, 'Beras Merah'),
(1408, 213, 'Aneka Sambal'),
(1409, 213, 'Cuka'),
(1410, 213, 'Kaldu & Penyedap Rasa'),
(1411, 213, 'Minyak'),
(1412, 213, 'Saus & Dressing'),
(1413, 213, 'Bawang'),
(1414, 213, 'Garam & Merica'),
(1415, 213, 'Kecap'),
(1416, 213, 'Rempah'),
(1417, 213, 'Terasi'),
(1418, 213, 'Bumbu Masak Instan'),
(1419, 213, 'Gula'),
(1420, 213, 'Mayonnaise'),
(1421, 213, 'Santan'),
(1422, 214, 'Biji Kopi'),
(1423, 214, 'Krimer'),
(1424, 214, 'Kopi Bubuk'),
(1425, 214, 'Kopi Kemasan'),
(1426, 215, 'Kue Basah'),
(1427, 215, 'Kue Kering'),
(1428, 215, 'Kue Ulang Tahun'),
(1429, 216, 'Baso & Daging Olahan Lainnya'),
(1430, 216, 'Daging Sosis'),
(1431, 216, 'Nugget'),
(1432, 216, 'Sosis'),
(1433, 216, 'Buah Beku'),
(1434, 216, 'Dessert'),
(1435, 216, 'Pastry & Olahan Tepung'),
(1436, 216, 'Camilan Beku'),
(1437, 216, 'Kentang Beku'),
(1438, 216, 'Sayuran Beku'),
(1439, 217, 'Buah Olahan'),
(1440, 217, 'Makanan Manis'),
(1441, 217, 'Lauk Pauk'),
(1442, 217, 'Nasi Tumpeng'),
(1443, 217, 'Makanan Asin'),
(1444, 217, 'Sayur Olahan'),
(1445, 218, 'Buah Kaleng'),
(1446, 218, 'Makanan Instan Kaleng'),
(1447, 218, 'Daging Kaleng'),
(1448, 218, 'Ikan Kaleng'),
(1449, 219, 'Abon'),
(1450, 219, 'Daging Kering & Asin'),
(1451, 219, 'Bawang Goreng'),
(1452, 219, 'Kerupuk'),
(1453, 219, 'Biji-bijian'),
(1454, 220, 'Tepung Beras & Ketan'),
(1455, 220, 'Tepung Kentang'),
(1456, 220, 'Tepung Tapioka'),
(1457, 220, 'Tepung Bumbu & Tepung Siap Pakai'),
(1458, 220, 'Tepung Roti - Panir'),
(1459, 220, 'Tepung Terigu & Gandum'),
(1460, 220, 'Tepung Jagung'),
(1461, 220, 'Tepung Sagu'),
(1462, 221, 'Daun Teh'),
(1463, 221, 'Teh Bubuk'),
(1464, 221, 'Teh Kemasan'),
(1465, 222, 'Buah-buahan'),
(1466, 222, 'Jamur'),
(1467, 222, 'Sayuran'),
(1468, 223, 'Daging Ayam'),
(1469, 223, 'Daging Sapi'),
(1470, 223, 'Tahu & Tempe'),
(1471, 223, 'Daging Kambing'),
(1472, 223, 'Ikan'),
(1473, 223, 'Telur'),
(1474, 223, 'Daging Lainnya'),
(1475, 223, 'Seafood'),
(1476, 224, 'Keju'),
(1477, 224, 'Susu Bubuk'),
(1478, 224, 'Susu Lansia'),
(1479, 224, 'Yogurt'),
(1480, 224, 'Krim'),
(1481, 224, 'Susu Kedelai & Kacang-kacangan'),
(1482, 224, 'Susu segar & Pasteurisasi'),
(1483, 224, 'Mentega & Butter'),
(1484, 224, 'Susu Kental Manis'),
(1485, 224, 'Susu UHT'),
(1486, 225, 'Paket Sembako'),
(1487, 225, 'Parcel Kue Kering'),
(1488, 225, 'Parcel Buah'),
(1489, 225, 'Parcel Makanan'),
(1490, 225, 'Parcel Coklat'),
(1491, 226, 'Air Mineral'),
(1492, 226, 'Energy Drink'),
(1493, 226, 'Minuman Cokelat'),
(1494, 226, 'Sirup'),
(1495, 226, 'Apple Cider Vinegar'),
(1496, 226, 'Jus'),
(1497, 226, 'Minuman Kemasan Lainnya'),
(1498, 226, 'Soft Drink'),
(1499, 226, 'Bubuk Minuman Lainnya'),
(1500, 226, 'Madu'),
(1501, 226, 'Minuman Tradisional'),
(1502, 227, 'Aneka Pasta'),
(1503, 227, 'Mie Impor'),
(1504, 227, 'Bihun & Soun'),
(1505, 227, 'Mie Instan'),
(1506, 227, 'Kwetiau'),
(1507, 227, 'Mie Telur'),
(1508, 228, 'Granola'),
(1509, 228, 'Oat'),
(1510, 228, 'Selai'),
(1511, 228, 'Meses'),
(1512, 228, 'Quinoa'),
(1513, 228, 'Sereal'),
(1514, 228, 'Muesli'),
(1515, 228, 'Roti'),
(1516, 229, 'Biskuit & Wafer'),
(1517, 229, 'Kacang'),
(1518, 229, 'Puding & Jelly'),
(1519, 229, 'Camilan Instant'),
(1520, 229, 'Keripik'),
(1521, 229, 'Cokelat'),
(1522, 229, 'Permen'),
(1523, 230, 'Correction (Tip-Ex)'),
(1524, 230, 'Kaca Pembesar'),
(1525, 230, 'Papan Jalan'),
(1526, 230, 'Penghapus'),
(1527, 230, 'Rautan'),
(1528, 230, 'Tempat Pensil'),
(1529, 230, 'Highlighter'),
(1530, 230, 'Kapur Tulis'),
(1531, 230, 'Papan Tulis & Tempel'),
(1532, 230, 'Pensil'),
(1533, 230, 'Spidol Papan Tulis'),
(1534, 230, 'Tinta'),
(1535, 230, 'Jangka'),
(1536, 230, 'Paket Alat Tulis'),
(1537, 230, 'Penggaris'),
(1538, 230, 'Pulpen'),
(1539, 230, 'Spidol Permane'),
(1540, 231, 'Agenda & Planner'),
(1541, 231, 'Buku Tulis Sekolah'),
(1542, 231, 'Buku Keuangan'),
(1543, 231, 'Jurnal - Diary'),
(1544, 231, 'Buku Telepon & Alamat'),
(1545, 231, 'Notebook & Notepad'),
(1546, 232, 'Binder'),
(1547, 232, 'Klip Kabel'),
(1548, 232, 'Lemari File - Filling Cabinet'),
(1549, 232, 'Ordner'),
(1550, 232, 'Stationery Stand'),
(1551, 232, 'Box File'),
(1552, 232, 'Kotak Kartu Nama'),
(1553, 232, 'Map'),
(1554, 232, 'Pembatas Buku'),
(1555, 232, 'Kalender'),
(1556, 232, 'Lanyard'),
(1557, 232, 'Name Tag & ID Card Holder'),
(1558, 232, 'Rak Kertas'),
(1559, 233, 'Amplop'),
(1560, 233, 'Perangko'),
(1561, 233, 'Kartu Pos'),
(1562, 233, 'Stempel'),
(1563, 233, 'Kertas Surat'),
(1564, 234, 'Cord Holder'),
(1565, 234, 'Lem Kertas'),
(1566, 234, 'Lem Kertas'),
(1567, 234, 'Double Tape'),
(1568, 234, 'Lem Serbaguna'),
(1569, 234, 'Stiker & Label'),
(1570, 234, 'Klip Kertas'),
(1571, 234, 'Selotip & Lakban'),
(1572, 235, 'Art Knife'),
(1573, 235, 'Gunting'),
(1574, 235, 'Cutter'),
(1575, 235, 'Pembolong Kertas'),
(1576, 235, 'Cutting Mat'),
(1577, 235, 'Pemotong Styrofoam'),
(1578, 236, 'Kursi Kerja'),
(1579, 236, 'Meja Kerja'),
(1580, 238, 'Kertas Binder'),
(1581, 238, 'Kertas HVS'),
(1582, 238, 'Kertas HVS'),
(1583, 238, 'Kertas Fax'),
(1584, 238, 'Kertas Karton'),
(1585, 238, 'Kertas Folio'),
(1586, 238, 'Kertas Thermal'),
(1587, 239, 'Kalkulator'),
(1588, 239, 'Kalkulator Ilmiah'),
(1589, 239, 'Kamus Elektronik'),
(1590, 240, 'Arm Sleeve'),
(1591, 240, 'Glove & Hand Wrap'),
(1592, 240, 'Knee Pad'),
(1593, 240, 'Peluit'),
(1594, 240, 'Tas Gym'),
(1595, 240, 'Tas Serut'),
(1596, 240, 'Bracer & Body Support'),
(1597, 240, 'Headband'),
(1598, 240, 'Lainnya'),
(1599, 240, 'Pompa Bola'),
(1600, 240, 'Tas Pinggang Olahraga'),
(1601, 240, 'Wristband'),
(1602, 240, 'Dekker Siku'),
(1603, 240, 'Kacamata Olahraga'),
(1604, 240, 'Papan Skor'),
(1605, 240, 'Stopwatch'),
(1606, 240, 'Tas Sepatu Olahraga'),
(1607, 241, 'Aksesoris Memancing'),
(1608, 241, 'Joran Pancing'),
(1609, 241, 'Set Alat Pancing'),
(1610, 241, 'Fish Finder'),
(1611, 241, 'Kail Pancing'),
(1612, 241, 'Tas Pancing'),
(1613, 241, 'Gulungan Pancing'),
(1614, 241, 'Senar Pancing'),
(1615, 241, 'Umpan Pancing'),
(1616, 242, 'Baju Badminton'),
(1617, 242, 'Raket Badminton'),
(1618, 242, 'Shuttlecock'),
(1619, 242, 'Grip Raket Badminton'),
(1620, 242, 'Senar Raket Badminton'),
(1621, 242, 'Tas Raket Badminton'),
(1622, 242, 'Net Badminton'),
(1623, 242, 'Sepatu Badminton'),
(1624, 243, 'Baju Baseball'),
(1625, 243, 'Sarung Tangan Baseball'),
(1626, 243, 'Bola Baseball'),
(1627, 243, 'Sepatu Baseball'),
(1628, 243, 'Celana Baseball'),
(1629, 243, 'Tongkat Baseball'),
(1630, 244, 'Arm Sleeve Basket'),
(1631, 244, 'Dekker Basket'),
(1632, 244, 'Kaos Kaki Basket'),
(1633, 244, 'Papan Strategi Basket'),
(1634, 244, 'Tas Basket'),
(1635, 244, 'Bola Basket'),
(1636, 244, 'Jersey Basket'),
(1637, 244, 'Leg Sleeve Basket'),
(1638, 244, 'Ring Basket'),
(1639, 244, 'Celana Basket'),
(1640, 244, 'Kaos Basket'),
(1641, 244, 'Net Basket'),
(1642, 244, 'Sepatu Basket'),
(1643, 245, 'Baju & Celana Bela Diri'),
(1644, 245, 'Nunchaku'),
(1645, 245, 'Baton'),
(1646, 245, 'Pelindung Bela Diri'),
(1647, 245, 'Knuckle'),
(1648, 246, 'Pelindung Gigi Tinju'),
(1649, 246, 'Target Pad'),
(1650, 246, 'Samsak Tinju'),
(1651, 246, 'Tas Sarung Tinju'),
(1652, 246, 'Sarung Tinju'),
(1653, 247, 'Bola Golf'),
(1654, 247, 'Karpet Driving Golf'),
(1655, 247, 'Sarung Tangan Golf'),
(1656, 247, 'Tas Golf'),
(1657, 247, 'Golf Tees'),
(1658, 247, 'Payung Golf'),
(1659, 247, 'Sepatu Golf'),
(1660, 247, 'Topi Golf'),
(1661, 247, 'Kaos Golf'),
(1662, 247, 'Sarung Stick Golf'),
(1663, 247, 'Stick Golf'),
(1664, 248, 'Abs Roller'),
(1665, 248, 'Baju Sauna'),
(1666, 248, 'Gym Ball'),
(1667, 248, 'Lainnya'),
(1668, 248, 'Power Twister'),
(1669, 248, 'Sepeda Statis'),
(1670, 248, 'Trampolin'),
(1671, 248, 'Air Climber'),
(1672, 248, 'Bench Press'),
(1673, 248, 'Hand Grip'),
(1674, 248, 'Pemberat Kaki'),
(1675, 248, 'Pull Up Bar'),
(1676, 248, 'Sit Up Bench'),
(1677, 248, 'Treadmill'),
(1678, 248, 'Alat Angkat Beban'),
(1679, 248, 'Chest Expander'),
(1680, 248, 'Hulahoop'),
(1681, 248, 'Pemberat Tangan'),
(1682, 248, 'Push Up Bar'),
(1683, 248, 'Tali Skipping'),
(1684, 248, 'Tummy Trimmer'),
(1685, 249, 'Alat Masak Camping'),
(1686, 249, 'Hammock'),
(1687, 249, 'Kompas'),
(1688, 249, 'Perahu Karet & Dayung'),
(1689, 249, 'Sepatu Gunung'),
(1690, 249, 'Tas Gunung'),
(1691, 249, 'Tongkat Gunung'),
(1692, 249, 'Carabiner'),
(1693, 249, 'Headlamp & Senter Camping'),
(1694, 249, 'Lampu Camping'),
(1695, 249, 'Rain Cover Tas Gunung'),
(1696, 249, 'Sleeping Bag'),
(1697, 249, 'Tenda Camping'),
(1698, 249, 'Trekking Pole'),
(1699, 249, 'Celana Gunung'),
(1700, 249, 'Jaket Gunung'),
(1701, 249, 'Paracord'),
(1702, 249, 'Sandal Gunung'),
(1703, 249, 'Survival Kit & Alat Multifungsi'),
(1704, 249, 'Teropong'),
(1705, 250, 'Balok Yoga'),
(1706, 250, 'Resistance Band'),
(1707, 250, 'Yoga Mat'),
(1708, 251, 'Baju Voli'),
(1709, 251, 'Jaring Net Voli'),
(1710, 251, 'Bola Voli'),
(1711, 251, 'Papan Strategi Voli'),
(1712, 251, 'Dekker Jari Olahraga Voli'),
(1713, 252, 'Baju Tenis Meja'),
(1714, 252, 'Cover Bat Tenis Meja'),
(1715, 252, 'Meja Tenis Meja'),
(1716, 252, 'Bat Tenis Meja'),
(1717, 252, 'Cover Meja Tenis'),
(1718, 252, 'Net Tenis Meja'),
(1719, 252, 'Bola Tenis Meja'),
(1720, 252, 'Grip Bat Tenis Meja'),
(1721, 253, 'Baju Tenis'),
(1722, 253, 'Raket Tenis'),
(1723, 253, 'Tas Raket Tenis'),
(1724, 253, 'Bola Tenis'),
(1725, 253, 'Senar Raket Tenis'),
(1726, 253, 'Grip Raket Tenis'),
(1727, 253, 'Sepatu Tenis'),
(1728, 254, 'Aksesoris Sepeda'),
(1729, 254, 'Helm Sepeda'),
(1730, 254, 'Saddle Sepeda'),
(1731, 254, 'Sepeda BMX'),
(1732, 254, 'Sepeda Listrik'),
(1733, 254, 'Tas Sepeda'),
(1734, 254, 'Ban Sepeda'),
(1735, 254, 'Jersey & Celana Sepeda'),
(1736, 254, 'Sepeda Anak'),
(1737, 254, 'Sepeda Gunung'),
(1738, 254, 'Spare Part Sepeda'),
(1739, 254, 'Velg Sepeda'),
(1740, 254, 'Frame Sepeda'),
(1741, 254, 'Lampu Sepeda'),
(1742, 254, 'Sepeda Balap'),
(1743, 254, 'Sepeda Lipat'),
(1744, 254, 'Stang Sepeda'),
(1745, 255, 'Dekker Sepatu Roda & Skateboard'),
(1746, 255, 'Roda Skateboard'),
(1747, 255, 'Skateboard Tools'),
(1748, 255, 'Grip tape Skateboard'),
(1749, 255, 'Sepatu Roda'),
(1750, 255, 'Skuter & Otoped'),
(1751, 255, 'Helm Sepatu Roda & Skateboard'),
(1752, 255, 'Skateboard'),
(1753, 256, 'Bola Sepak'),
(1754, 256, 'Jaket Bola'),
(1755, 256, 'Kaos Kaki'),
(1756, 256, 'Sepatu Bola'),
(1757, 256, 'Dekker Futsal'),
(1758, 256, 'Jaring Gawang'),
(1759, 256, 'Papan Strategi Bola & Futsal'),
(1760, 256, 'Sepatu Futsal'),
(1761, 256, 'Dekker Sepak Bola'),
(1762, 256, 'Jersey Bola'),
(1763, 256, 'Sarung Tangan Kiper'),
(1764, 257, 'Celana Lari Pria'),
(1765, 257, 'Sepatu Lari Wanita'),
(1766, 257, 'Celana Lari Wanita'),
(1767, 257, 'Sepatu Lari Pria'),
(1768, 258, 'Anak Panah'),
(1769, 258, 'Pelindung Dada Panahan'),
(1770, 258, 'Tali Busur Panah'),
(1771, 258, 'Thumb Glove Panahan'),
(1772, 258, 'Busur Panah'),
(1773, 258, 'Pelindung Tangan Panahan'),
(1774, 258, 'Target Panah'),
(1775, 258, 'Finger Tab Panahan'),
(1776, 258, 'Sarung Tangan Panahan'),
(1777, 258, 'Tas Panahan'),
(1778, 259, 'Celana Training Wanita'),
(1779, 259, 'Legging Sport Wanita');
INSERT INTO `tbl_tag_category_copy1` (`id_tag_cat`, `id_sub_cat`, `nama_tag_cat`) VALUES
(1780, 259, 'Setelan Olahraga Wanita'),
(1781, 259, 'Jaket Windbreaker Wanita'),
(1782, 259, 'Muscle Tee Wanita'),
(1783, 259, 'Sport Bra'),
(1784, 259, 'Kaos Dry Fit Wanita'),
(1785, 259, 'Rok Senam Wanita'),
(1786, 260, 'Celana Training Pria'),
(1787, 260, 'Kaos Dry Fit Pria'),
(1788, 260, 'Setelan Olahraga Pria'),
(1789, 260, 'Jaket Track Pria'),
(1790, 260, 'Legging Sport Pria'),
(1791, 260, 'Jaket Windbreaker Pria'),
(1792, 260, 'Muscle Tee Pria'),
(1793, 261, 'Alat & Aksesoris Selam'),
(1794, 261, 'Baju Renang Anak Perempuan'),
(1795, 261, 'Celana Renang Pria'),
(1796, 261, 'Dry Bag'),
(1797, 261, 'Kolam Karet'),
(1798, 261, 'Topi Renang'),
(1799, 261, 'Alat Snorkeling'),
(1800, 261, 'Baju Renang Pria'),
(1801, 261, 'Diving Fin'),
(1802, 261, 'Jetski'),
(1803, 261, 'Pelampung'),
(1804, 261, 'Wetsuit & Drysuit'),
(1805, 261, 'Baju Renang Anak Laki-laki'),
(1806, 261, 'Baju Renang Wanita'),
(1807, 261, 'Diving Mask'),
(1808, 261, 'Kacamata Renang'),
(1809, 261, 'Senter Diving'),
(1810, 263, 'Aksesori Body Motor'),
(1811, 263, 'Cover Motor'),
(1812, 263, 'Footstep Motor'),
(1813, 263, 'Karpet Motor'),
(1814, 263, 'Shockbreaker Motor'),
(1815, 263, 'Windshield Motor'),
(1816, 263, 'Alarm & Gembok Motor'),
(1817, 263, 'Cover Stang Motor'),
(1818, 263, 'Handle - Handfat Motor'),
(1819, 263, 'Knalpot'),
(1820, 263, 'Spakbor Motor'),
(1821, 263, 'Box Motor'),
(1822, 263, 'Emblem Motor'),
(1823, 263, 'Jok motor'),
(1824, 263, 'Lampu Motor'),
(1825, 263, 'Spion Motor'),
(1826, 264, 'Cover Sepatu'),
(1827, 264, 'Jas Hujan'),
(1828, 264, 'Rain Cover Bag'),
(1829, 264, 'Sepatu Biker'),
(1830, 264, 'Goggle Motor'),
(1831, 264, 'Kursi Bonceng Anak'),
(1832, 264, 'Rompi Motor'),
(1833, 264, 'Jaket Motor'),
(1834, 264, 'Masker Buff'),
(1835, 264, 'Sarung Tangan Motor'),
(1836, 265, 'Head Unit Mobil'),
(1837, 265, 'Speaker Mobil'),
(1838, 265, 'Kabel & Konektor Audio Mobil'),
(1839, 265, 'Video TV Mobil'),
(1840, 265, 'Power Amplifier'),
(1841, 268, 'Anti Fog Spion Mobil'),
(1842, 268, 'Cover Mobil'),
(1843, 268, 'Kaca Film Mobil'),
(1844, 268, 'Spion Mobil'),
(1845, 268, 'Bumper Guard Mobil'),
(1846, 268, 'Dudukan Plat Nomor'),
(1847, 268, 'Knalpot Mobil'),
(1848, 268, 'Talang Air Mobil'),
(1849, 268, 'Cover Ban Mobil'),
(1850, 268, 'Emblem Mobil'),
(1851, 268, 'Sensor & Kamera Mobil'),
(1852, 269, 'Aksesoris Helm'),
(1853, 269, 'Helm Full Face'),
(1854, 269, 'Kaca Helm'),
(1855, 269, 'Tas & Jaring Helm'),
(1856, 269, 'Cover Helm'),
(1857, 269, 'Helm Half Face'),
(1858, 269, 'Kunci Helm'),
(1859, 269, 'Helm Anak'),
(1860, 269, 'Helm Retro'),
(1861, 269, 'Parfum Helm'),
(1862, 270, 'Bantal Mobil'),
(1863, 270, 'Cup Holder Mobil'),
(1864, 270, 'Kunci Pengaman Mobil'),
(1865, 270, 'Pelindung Panas Mobil'),
(1866, 270, 'Sill Plate Mobil'),
(1867, 270, 'Tongkat E-Toll'),
(1868, 270, 'Car Seat Organizer'),
(1869, 270, 'Karpet Mobil'),
(1870, 270, 'Lampu Mobil'),
(1871, 270, 'Sarung Stir Mobil'),
(1872, 270, 'Tempat Sampah Mobil'),
(1873, 270, 'Tuas Persneling Mobil'),
(1874, 270, 'Cover Dashboard Mobil'),
(1875, 270, 'Kasur Mobil'),
(1876, 270, 'Parfum Mobil'),
(1877, 270, 'Seat Cushion Mobil'),
(1878, 270, 'Tempat Tisu Mobil'),
(1879, 273, 'Aki Motor'),
(1880, 273, 'ECU & Kelistrikan Motor'),
(1881, 273, 'Kaliper, Cakram dan Tromol Motor'),
(1882, 273, 'Klakson Motor'),
(1883, 273, 'Master & Piringan Rem Motor'),
(1884, 273, 'Rantai & Gir Motor'),
(1885, 273, 'Bearing Motor'),
(1886, 273, 'Filter Udara Motor'),
(1887, 273, 'Kampas Rem Motor'),
(1888, 273, 'Koil & CDI Motor'),
(1889, 273, 'Noken As Motor'),
(1890, 273, 'Selang Rem Motor'),
(1891, 273, 'Busi Motor'),
(1892, 273, 'Kabel Selang Motor'),
(1893, 273, 'Karburator Motor'),
(1894, 273, 'Kopling Motor'),
(1895, 273, 'Piston Motor'),
(1896, 273, 'V-Belt Motor'),
(1897, 274, 'Bearing Mobil'),
(1898, 274, 'ECU & Kelistrikan Mobil'),
(1899, 274, 'Gearbox'),
(1900, 274, 'Koil & CDI Mobil'),
(1901, 274, 'Piston Mobil'),
(1902, 274, 'Shockbreaker & Kaki Kaki Mobil'),
(1903, 274, 'Wiper & Wiper Cover Mobil'),
(1904, 274, 'Belt Mobil'),
(1905, 274, 'Engine Mounting & Karet Mobil'),
(1906, 274, 'Kampas Rem Mobil'),
(1907, 274, 'Kopling & Transmisi Mobil'),
(1908, 274, 'Radiator & Komponen Mobil'),
(1909, 274, 'Stir Mobil'),
(1910, 274, 'Busi Mobil'),
(1911, 274, 'Filter Udara Mobil'),
(1912, 274, 'Klakson Mobil'),
(1913, 274, 'Master & Kaliper Rem Mobil'),
(1914, 274, 'Selang Rem Mobil'),
(1915, 274, 'Tromol & Piringan Rem Mobil'),
(1916, 275, 'Motor Bebek'),
(1917, 275, 'Motor Matic'),
(1918, 275, 'Motor Sport'),
(1919, 276, 'Charger Aki Mobil'),
(1920, 276, 'Dongkrak Mobil'),
(1921, 276, 'Tali Derek Mobil'),
(1922, 277, 'Anti Ban Bocor'),
(1923, 277, 'Cairan Radiator'),
(1924, 277, 'Pelumas'),
(1925, 277, 'Wash and Wax'),
(1926, 277, 'Anti Gores Kendaraan'),
(1927, 277, 'Lap Chamois'),
(1928, 277, 'Semir Ban'),
(1929, 277, 'Busa Poles Kendaraan'),
(1930, 277, 'Obat Jamur Mobil'),
(1931, 277, 'Vacuum Cleaner Mobil'),
(1932, 278, 'Engine Conditioner'),
(1933, 278, 'Oli mobil'),
(1934, 278, 'Tempat Oli'),
(1935, 278, 'Filter Oli'),
(1936, 278, 'Oli motor'),
(1937, 278, 'Octane Booster'),
(1938, 278, 'Penghemat BBM'),
(1939, 279, 'Mobil Hatchback & City Car'),
(1940, 279, 'Mobil Sedan'),
(1941, 279, 'mobil suv & mpv'),
(1942, 280, 'Gunting Kuku Hewan'),
(1943, 280, 'Sisir Bulu Hewan'),
(1944, 280, 'Pet Glove'),
(1945, 280, 'Sikat Gigi Hewan'),
(1946, 281, 'Baju Anjing'),
(1947, 281, 'Makanan Anjing'),
(1948, 281, 'Snack Anjing'),
(1949, 281, 'Kalung Anjing'),
(1950, 281, 'Obat & Vitamin Anjing'),
(1951, 281, 'Tali Tuntun Anjing'),
(1952, 281, 'Mainan Anjing'),
(1953, 281, 'Shampoo Anjing'),
(1954, 282, 'Kandang Ayam'),
(1955, 282, 'Obat & Vitamin Ayam'),
(1956, 283, 'Kandang Burung'),
(1957, 283, 'Obat & Vitamin Burung'),
(1958, 283, 'Mainan Burung'),
(1959, 283, 'Tempat Makan & Minum Burung'),
(1960, 283, 'Makanan Burung'),
(1961, 284, 'Kandang Hamster'),
(1962, 284, 'Obat & Vitamin Hamster'),
(1963, 284, 'Mainan Hamster'),
(1964, 284, 'Makanan Hamster'),
(1965, 285, 'Alas Kandang Hewan'),
(1966, 285, 'Pet Cargo'),
(1967, 285, 'Tempat Makan Hewan'),
(1968, 285, 'Disinfektan Kandang'),
(1969, 285, 'Pet Toy'),
(1970, 285, 'Tempat Minum Hewan'),
(1971, 285, 'Kandang Hewan'),
(1972, 285, 'Susu Hewan'),
(1973, 285, 'Tempat Tidur Hewan'),
(1974, 286, 'Kandang Reptil'),
(1975, 286, 'Obat & Vitamin Reptil'),
(1976, 286, 'Lampu UVA & UVB Reptil'),
(1977, 286, 'Makanan Reptil'),
(1978, 287, 'Baju Kucing'),
(1979, 287, 'Mainan Kucing'),
(1980, 287, 'Pasir Kucing'),
(1981, 287, 'Garukan Kucing'),
(1982, 287, 'Makanan Kucing'),
(1983, 287, 'Shampoo Kucing'),
(1984, 287, 'Kalung Kucing'),
(1985, 287, 'Obat & Vitamin Kucing'),
(1986, 287, 'Snack Kucing'),
(1987, 288, 'Makanan Kelinci'),
(1988, 288, 'Obat & Vitamin Kelinci'),
(1989, 289, 'Aerator'),
(1990, 289, 'Filter Akuarium'),
(1991, 289, 'Makanan Ikan'),
(1992, 289, 'Penghangat Air Akuarium'),
(1993, 289, 'Termometer Akuarium'),
(1994, 289, 'Aksesoris Aquarium'),
(1995, 289, 'Hiasan Aquarium'),
(1996, 289, 'Obat & Vitamin Ikan'),
(1997, 289, 'Penjernih Air Akuarium'),
(1998, 289, 'Aquarium'),
(1999, 289, 'Lampu Akuarium'),
(2000, 289, 'Pelet Ikan'),
(2001, 289, 'Pipa Akuarium'),
(2002, 291, 'Alat Cukur'),
(2003, 291, 'Krim Cukur'),
(2004, 291, 'Hair Foam'),
(2005, 291, 'Sisir Saku'),
(2006, 291, 'Hair Wax & Pomade'),
(2007, 292, 'benang dan tusuk gigi'),
(2008, 292, 'Pembersih Lidah'),
(2009, 292, 'Obat kumur dan spray mulut'),
(2010, 292, 'Pemutih Gigi'),
(2011, 292, 'Pasta Gigi'),
(2012, 292, 'Sikat Gigi'),
(2013, 293, 'Parfum & Cologne Anak-Anak'),
(2014, 293, 'Parfum & Cologne Wanita'),
(2015, 293, 'Parfum & Cologne Pria'),
(2016, 293, 'Parfum Rambut'),
(2017, 293, 'Parfum & Cologne Unisex'),
(2018, 294, 'Foot Cream'),
(2019, 294, 'Foot Spray'),
(2020, 294, 'Hand Mask'),
(2021, 294, 'Foot Mask'),
(2022, 294, 'Gunting Kuku'),
(2023, 294, 'Hand Sanitizer'),
(2024, 294, 'Foot Scrub'),
(2025, 294, 'Hand Cream'),
(2026, 294, 'Sabun Cuci Tangan'),
(2027, 295, 'Alat Manikur & Pedikur'),
(2028, 295, 'Gunting Kuku'),
(2029, 295, 'Foot Scrub'),
(2030, 295, 'Minyak Kutikula Kuku'),
(2031, 295, 'Foot Spray'),
(2032, 295, 'Penghilang Cat Kuku'),
(2033, 296, 'Menstrual Cup & Tampon'),
(2034, 296, 'Sabun Kewanitaan'),
(2035, 296, 'Pembalut'),
(2036, 296, 'Perawatan Tubuh Wanita'),
(2037, 297, 'Bath Bomb'),
(2038, 297, 'Shower Cap'),
(2039, 297, 'Bath Salt'),
(2040, 297, 'Shower Puff'),
(2041, 297, 'Sabun Mandi'),
(2042, 298, 'Cotton bud'),
(2043, 298, 'Ear Candle'),
(2044, 298, 'Pembersih Telinga'),
(2045, 299, 'Conditioner'),
(2046, 299, 'Masker Rambut'),
(2047, 299, 'Shampoo'),
(2048, 299, 'Dry Shampoo'),
(2049, 299, 'Pewarna Rambut'),
(2050, 299, 'Shampoo Kutu'),
(2051, 299, 'Hair tonic'),
(2052, 299, 'Produk Styling Rambut'),
(2053, 299, 'Vitamin & Serum Rambut'),
(2054, 300, 'Cairan Pembersih Sofltens'),
(2055, 300, 'Softlens'),
(2056, 300, 'Tetes Mata Softlens'),
(2057, 301, 'Body butter'),
(2058, 301, 'Body Scrub'),
(2059, 301, 'Penghilang Bekas Jerawat'),
(2060, 301, 'Perontok Bulu'),
(2061, 301, 'Body Lotion'),
(2062, 301, 'Deodorant'),
(2063, 301, 'Penghilang Bekas Luka'),
(2064, 301, 'Stretchmark Cream'),
(2065, 301, 'Body Oil'),
(2066, 301, 'Pemutih Tubuh & Ketiak'),
(2067, 301, 'Peralatan Waxing'),
(2068, 301, 'Sunblock Badan'),
(2069, 302, 'Alat Ukir Elektrik'),
(2070, 302, 'Pisau Ukir'),
(2071, 303, 'Balon Huruf & Angka'),
(2072, 303, 'Balon LED'),
(2073, 303, 'Pompa Balon'),
(2074, 303, 'Balon karakter'),
(2075, 303, 'Balon Latex'),
(2076, 303, 'Pita Balon'),
(2077, 303, 'Balon Tepuk - Supporter'),
(2078, 303, 'Stick Balon'),
(2079, 304, 'Buket Bunga'),
(2080, 304, 'Bunga Papan'),
(2081, 304, 'Bunga Tangkai'),
(2082, 304, 'Bunga Flanel'),
(2083, 304, 'Bunga Plastik'),
(2084, 304, 'Kelopak Bunga'),
(2085, 304, 'Bunga Kertas'),
(2086, 304, 'Bunga Sabun'),
(2087, 305, 'Bubble Wrap'),
(2088, 305, 'Kertas Kado'),
(2089, 305, 'Plastik'),
(2090, 305, 'Goodie Bag'),
(2091, 305, 'Kotak Kado'),
(2092, 305, 'Kardus'),
(2093, 305, 'Pita Kado'),
(2094, 306, 'Backdrop'),
(2095, 306, 'Cake Topper'),
(2096, 306, 'Tirai Foil'),
(2097, 306, 'Banner'),
(2098, 306, 'Lampion'),
(2099, 306, 'Bendera'),
(2100, 306, 'Pompom'),
(2101, 307, 'Celengan'),
(2102, 307, 'Hampers'),
(2103, 307, 'Kotak Musik'),
(2104, 307, 'Selempang - Sash'),
(2105, 307, 'Voucher & Gift Card'),
(2106, 307, 'Gantungan Kunci'),
(2107, 307, 'Kartu Ucapan'),
(2108, 307, 'Miniatur & Karikatur'),
(2109, 307, 'Trophy & Medali'),
(2110, 307, 'Hadiah Custom'),
(2111, 307, 'Korek Api'),
(2112, 307, 'Mug Hadiah'),
(2113, 307, 'Uang Kuno'),
(2114, 308, 'Gelas Pesta'),
(2115, 308, 'Party Popper - Confetti'),
(2116, 308, 'Piring Pesta'),
(2117, 308, 'Topeng Pesta'),
(2118, 308, 'Glow Stick'),
(2119, 308, 'Photo Props'),
(2120, 308, 'Smoke Bomb'),
(2121, 308, 'Topi Pesta'),
(2122, 308, 'Lilin Ulang Tahun'),
(2123, 308, 'Pinata'),
(2124, 308, 'Terompet'),
(2125, 308, 'Undangan Ulang Tahun'),
(2126, 309, 'Buku Tamu'),
(2127, 309, 'Souvenir Pernikahan'),
(2128, 309, 'Dekorasi Pernikahan'),
(2129, 309, 'Undangan Pernikahan'),
(2130, 309, 'Mahar & Seserahan'),
(2131, 310, 'Brush Pen'),
(2132, 310, 'Tinta & Kuas Kaligrafi'),
(2133, 310, 'Nib'),
(2134, 310, 'Pulpen Kaligrafi'),
(2135, 311, 'Buku Gambar & Sketsa'),
(2136, 311, 'Drawing Pen'),
(2137, 311, 'Stencil'),
(2138, 311, 'Charcoal'),
(2139, 311, 'Pensil Warna'),
(2140, 311, 'Crayon'),
(2141, 311, 'Spidol Warna'),
(2142, 312, 'Art Set'),
(2143, 312, 'Cat Minyak'),
(2144, 312, 'Kanvas Lukis'),
(2145, 312, 'Palet'),
(2146, 312, 'Cat Air'),
(2147, 312, 'Cat Poster'),
(2148, 312, 'Kuas Lukis'),
(2149, 312, 'Cat Akrilik'),
(2150, 312, 'Easel'),
(2151, 312, 'Oil & Dry Pastel'),
(2152, 313, 'Kain dan Bahan'),
(2153, 313, 'Mesin Jahit'),
(2154, 313, 'Perlengkapan Jahit'),
(2155, 313, 'Kancing'),
(2156, 313, 'Patch - Emblem'),
(2157, 313, 'Renda - Bordir'),
(2158, 313, 'Manekin'),
(2159, 313, 'Payet'),
(2160, 313, 'Spare Part Mesin Jahit'),
(2161, 315, 'Impraboard'),
(2162, 315, 'Kertas Origami'),
(2163, 315, 'Kertas Asturo'),
(2164, 315, 'Kertas Photo'),
(2165, 315, 'Kertas Crepe'),
(2166, 315, 'Papan Styrofoam'),
(2167, 316, 'Bahan Tali Gelang'),
(2168, 316, 'Kait Kalung'),
(2169, 316, 'Mata Ayam'),
(2170, 316, 'Buckles'),
(2171, 316, 'Magnet Tas'),
(2172, 316, 'Ring D'),
(2173, 316, 'Charm & Bandul'),
(2174, 316, 'Manik-Manik'),
(2175, 316, 'Stopper'),
(2176, 317, 'Chain Block'),
(2177, 317, 'Roda Kastor'),
(2178, 317, 'Tangga Lipat'),
(2179, 317, 'Katrol'),
(2180, 317, 'Stacker'),
(2181, 317, 'Trolley'),
(2182, 317, 'Krat Plastik'),
(2183, 317, 'Tali Kawat'),
(2184, 318, 'Ear Protector'),
(2185, 318, 'Rompi Proyek'),
(2186, 318, 'Safety Cone'),
(2187, 318, 'Safety Helmet'),
(2188, 318, 'Wearpack'),
(2189, 318, 'Pemadam Api'),
(2190, 318, 'Safety Belt'),
(2191, 318, 'Safety Glasses'),
(2192, 318, 'Safety Mask'),
(2193, 318, 'Pita Pembatas & Barikade'),
(2194, 318, 'Safety Boots'),
(2195, 318, 'Safety Glove'),
(2196, 318, 'Topeng & Helm Las'),
(2197, 319, 'Alat Semprot Hama'),
(2198, 319, 'Mesin Fogging'),
(2199, 319, 'Sekop'),
(2200, 319, 'Cangkul'),
(2201, 319, 'Mesin Traktor'),
(2202, 319, 'Sprinkler'),
(2203, 319, 'Mesin Blower'),
(2204, 319, 'Pisau Sabit'),
(2205, 321, 'Baut'),
(2206, 321, 'Ring Plat'),
(2207, 321, 'Hook'),
(2208, 321, 'Rivet'),
(2209, 321, 'Mur'),
(2210, 321, 'Skrup'),
(2211, 322, 'Cat Kayu'),
(2212, 322, 'Cat Tembok'),
(2213, 322, 'Roller Cat'),
(2214, 322, 'Cat Pelapis'),
(2215, 322, 'Kuas Cat'),
(2216, 322, 'Thinner'),
(2217, 322, 'Cat Semprot'),
(2218, 322, 'Plamir'),
(2219, 322, 'Wallpaper'),
(2220, 325, 'Alat Penjepit'),
(2221, 325, 'Gunting Pipa'),
(2222, 325, 'Kunci Inggris'),
(2223, 325, 'Kunci Shock'),
(2224, 325, 'Obeng'),
(2225, 325, 'Sendok Semen'),
(2226, 325, 'Tang Crimping'),
(2227, 325, 'Treker'),
(2228, 325, 'Blow Torch'),
(2229, 325, 'Kapak'),
(2230, 325, 'Kunci L'),
(2231, 325, 'Kunci T'),
(2232, 325, 'Palu'),
(2233, 325, 'Staples Gun'),
(2234, 325, 'Tang Potong'),
(2235, 325, 'Gergaji'),
(2236, 325, 'Kertas Amplas'),
(2237, 325, 'Kunci Ring Pas'),
(2238, 325, 'Mata Obeng'),
(2239, 325, 'Pinset'),
(2240, 325, 'Tang'),
(2241, 325, 'Tool Kit Set'),
(2242, 326, 'Bath Tub'),
(2243, 326, 'Foot Valve & Klep'),
(2244, 326, 'Keran Air'),
(2245, 326, 'Pembersih Saluran Air'),
(2246, 326, 'Saringan Got'),
(2247, 326, 'Tiang Shower'),
(2248, 326, 'Water Heater'),
(2249, 326, 'Filter Keran Air'),
(2250, 326, 'Jet Shower Toilet'),
(2251, 326, 'Kloset'),
(2252, 326, 'Pipa PVC'),
(2253, 326, 'Selang Shower'),
(2254, 326, 'Toren Air'),
(2255, 326, 'Fitting Pipa'),
(2256, 326, 'Kepala Shower Mandi'),
(2257, 326, 'Lem Pipa'),
(2258, 326, 'Pompa Air'),
(2259, 326, 'Shower Holder'),
(2260, 326, 'Washtafel'),
(2261, 327, 'Solar Cables'),
(2262, 327, 'Solar Panel'),
(2263, 327, 'Solar Charge Controller'),
(2264, 327, 'Solar Inverter'),
(2265, 328, 'Lem Material'),
(2266, 328, 'Lem Talang'),
(2267, 328, 'Lem Tembak'),
(2268, 330, 'Actuator Pneumatic'),
(2269, 330, 'Pengatur Kecepatan'),
(2270, 330, 'Silinder Pneumatic'),
(2271, 330, 'Vacuum Pneumatic'),
(2272, 330, 'Fitting Pneumatic'),
(2273, 330, 'Pompa Angin'),
(2274, 330, 'Spray & Air Gun'),
(2275, 330, 'Kompresor Udara'),
(2276, 330, 'Regulator Pneumatic'),
(2277, 330, 'Switch Pneumatic'),
(2278, 331, 'Adaptor'),
(2279, 331, 'Insulator'),
(2280, 331, 'Komponen Listrik'),
(2281, 331, 'Penghemat Listrik'),
(2282, 331, 'Stop Kontak'),
(2283, 331, 'Anti Petir'),
(2284, 331, 'Isolasi Listrik'),
(2285, 331, 'Pelindung Kabel Spiral'),
(2286, 331, 'Power Supply'),
(2287, 331, 'Stun Gun'),
(2288, 331, 'Bel'),
(2289, 331, 'Kabel Roll'),
(2290, 331, 'Pengaman Stop Kontak'),
(2291, 331, 'Saklar'),
(2292, 332, 'Generator Las'),
(2293, 332, 'Pasta Solder'),
(2294, 332, 'Timah Solder'),
(2295, 332, 'Kawat Las'),
(2296, 332, 'Solder'),
(2297, 332, 'Mesin Las'),
(2298, 332, 'Soldering Kit'),
(2299, 333, 'Digital Counter'),
(2300, 333, 'Human Machine Interface'),
(2301, 333, 'Limit Switch'),
(2302, 333, 'PLC'),
(2303, 333, 'Sensor Proximity'),
(2304, 333, 'Encoder'),
(2305, 333, 'Indikator Temperatur'),
(2306, 333, 'Photoelectric Sensor'),
(2307, 333, 'Push Button'),
(2308, 333, 'SMPS'),
(2309, 333, 'Gas Sensor'),
(2310, 333, 'Level Sensor'),
(2311, 333, 'PID controller'),
(2312, 333, 'Relay'),
(2313, 334, 'Industrial Fan'),
(2314, 334, 'Motor Listrik'),
(2315, 334, 'Motor Starter'),
(2316, 334, 'Transmission Belt'),
(2317, 336, 'Asbes'),
(2318, 336, 'Batu'),
(2319, 336, 'Beton'),
(2320, 336, 'Genteng'),
(2321, 336, 'Jendela'),
(2322, 336, 'Kayu'),
(2323, 336, 'Lantai Kayu'),
(2324, 336, 'Semen'),
(2325, 336, 'Baja'),
(2326, 336, 'Batu Bata'),
(2327, 336, 'Engsel'),
(2328, 336, 'Granit'),
(2329, 336, 'Kaca'),
(2330, 336, 'Keramik Lantai'),
(2331, 336, 'Paku'),
(2332, 336, 'Tanah'),
(2333, 336, 'Batako'),
(2334, 336, 'Besi'),
(2335, 336, 'Gagang Pintu'),
(2336, 336, 'Grendel'),
(2337, 336, 'Kawat'),
(2338, 336, 'Kusen Pintu'),
(2339, 336, 'Pasir'),
(2340, 336, 'Triplek'),
(2341, 337, 'Mesin Bandsaw'),
(2342, 337, 'Mesin Milling'),
(2343, 337, 'Mesin Bending'),
(2344, 337, 'Mesin Bubut'),
(2345, 338, 'Cover Kipas Angin'),
(2346, 338, 'Hiasan Natal'),
(2347, 338, 'Keset'),
(2348, 338, 'Lilin Aroma Terapi'),
(2349, 338, 'Pohon Natal'),
(2350, 338, 'Tanaman Artifical'),
(2351, 338, 'Vas Bunga'),
(2352, 338, 'Cover Kursi'),
(2353, 338, 'Jam Dinding'),
(2354, 338, 'Lampu Pohon Natal'),
(2355, 338, 'Lukisan'),
(2356, 338, 'Slinger'),
(2357, 338, 'Taplak Meja'),
(2358, 338, 'Wall Sticker'),
(2359, 338, 'Hiasan Dinding'),
(2360, 338, 'Lilin'),
(2361, 338, 'Patung'),
(2362, 338, 'Stiker Kaca'),
(2363, 338, 'Tempat Lilin'),
(2364, 339, 'Bedside Table'),
(2365, 339, 'Kursi'),
(2366, 339, 'Kursi Makan'),
(2367, 339, 'Meja Bar'),
(2368, 339, 'Meja Tamu'),
(2369, 339, 'Rak'),
(2370, 339, 'Sofa Bed'),
(2371, 339, 'Cermin Badan'),
(2372, 339, 'Kursi Bar'),
(2373, 339, 'Kursi Malas'),
(2374, 339, 'Meja Makan'),
(2375, 339, 'Meja TV'),
(2376, 339, 'Rangka Tempat Tidur'),
(2377, 339, 'Kasur'),
(2378, 339, 'Kursi Goyang'),
(2379, 339, 'Lemari Pakaian'),
(2380, 339, 'Meja Rias'),
(2381, 339, 'Pengaman Furniture'),
(2382, 339, 'Sofa'),
(2383, 340, 'Cermin Kamar Mandi'),
(2384, 340, 'Gantungan Handuk'),
(2385, 340, 'Keset Anti Slip'),
(2386, 340, 'Shower Curtain'),
(2387, 340, 'Toiler Cover'),
(2388, 340, 'Dispenser Odol'),
(2389, 340, 'Gayung'),
(2390, 340, 'Kimono Mandi'),
(2391, 340, 'Tempat Sabun'),
(2392, 340, 'Toilet Seat Anak'),
(2393, 340, 'Ember & Baskom'),
(2394, 340, 'Handuk Mandi'),
(2395, 340, 'Rak Toilet'),
(2396, 340, 'Tempat Sikat Gigi'),
(2397, 340, 'Tutup Wastafel'),
(2398, 341, 'Bantal Kepala'),
(2399, 341, 'Kelambu'),
(2400, 341, 'Selimut'),
(2401, 341, 'Guling'),
(2402, 341, 'Mattress Cover'),
(2403, 341, 'Sprei & Bed Cover'),
(2404, 341, 'Jepitan Sprei'),
(2405, 341, 'Sarung Bantal'),
(2406, 342, 'ALat Pel'),
(2407, 342, 'Ember & Baskom'),
(2408, 342, 'Kantong Sampah'),
(2409, 342, 'Lainnya'),
(2410, 342, 'Pengki'),
(2411, 342, 'Sapu Lidi'),
(2412, 342, 'Sikat'),
(2413, 342, 'Toilet Seat Spray'),
(2414, 342, 'Asbak'),
(2415, 342, 'High Pressure Cleaner'),
(2416, 342, 'Karbol'),
(2417, 342, 'Pembersih Toilet'),
(2418, 342, 'Pest Control'),
(2419, 342, 'Sarung Tangan Karet'),
(2420, 342, 'Tempat Sampah'),
(2421, 342, 'Contact Cleaner'),
(2422, 342, 'Kain Lap'),
(2423, 342, 'Kemoceng'),
(2424, 342, 'Pengharum Ruangan'),
(2425, 342, 'Sapu'),
(2426, 342, 'Selang Air'),
(2427, 342, 'Tissue'),
(2428, 343, 'Bantal Leher'),
(2429, 343, 'Lunggage Cover'),
(2430, 343, 'Passport Cover'),
(2431, 343, 'Travel Organizer'),
(2432, 343, 'Gembok Koper'),
(2433, 343, 'Lunggage Strap'),
(2434, 343, 'Penutup Mata Tidur'),
(2435, 343, 'Travel Toiletries Kit'),
(2436, 343, 'Koper'),
(2437, 343, 'Lunggage Tag'),
(2438, 343, 'Travel Bag'),
(2439, 343, 'Universal Travel Adaptor'),
(2440, 344, 'Botol'),
(2441, 344, 'Kotak'),
(2442, 344, 'Kotak Karton'),
(2443, 344, 'Lainnya'),
(2444, 344, 'Tempat Obat'),
(2445, 344, 'Tempat Remote'),
(2446, 344, 'Tempat Tissue'),
(2447, 344, 'Brankas'),
(2448, 344, 'Kotak Batterai'),
(2449, 344, 'Kotak Surat'),
(2450, 344, 'Stand Hanger'),
(2451, 344, 'Tempat Pakaian'),
(2452, 344, 'Tempat Sepatu & Sandal'),
(2453, 344, 'Keranjang'),
(2454, 344, 'Kotak Jam'),
(2455, 344, 'Laci'),
(2456, 344, 'Storage Box Multifungsi'),
(2457, 344, 'Tempat Perhiasan & Aksesoris'),
(2458, 344, 'Tempat Rias'),
(2459, 345, 'Air Sofa'),
(2460, 345, 'Ayunan'),
(2461, 345, 'Garpu Taman'),
(2462, 345, 'Kursi Pantai'),
(2463, 345, 'Penyiram Tanaman'),
(2464, 345, 'Sekop Taman'),
(2465, 345, 'Hiasan Taman'),
(2466, 345, 'Media Tanam'),
(2467, 345, 'Plot Tanaman'),
(2468, 345, 'Benih Bibit Tanaman'),
(2469, 345, 'Irigasi'),
(2470, 345, 'Pemotong Rumput'),
(2471, 345, 'Pupuk'),
(2472, 346, 'Bantal Sofa'),
(2473, 346, 'Gorden'),
(2474, 346, 'Bean Bag'),
(2475, 346, 'Karpet & Tikar'),
(2476, 346, 'Cover Sofa'),
(2477, 346, 'Sarung Bantal Sofa'),
(2478, 347, 'Alat Pelipat Baju'),
(2479, 347, 'Deterjen Laundry'),
(2480, 347, 'Jemuran Baju'),
(2481, 347, 'Laundry Bag'),
(2482, 347, 'Pewangi Pelembut Pakaian'),
(2483, 347, 'Bola Pencuci Baju'),
(2484, 347, 'Gantungan Baju'),
(2485, 347, 'Jepitan Jemuran'),
(2486, 347, 'Meja Setrika'),
(2487, 347, 'Roll Pembersih Pakaian'),
(2488, 347, 'Cover Mesin Cuci'),
(2489, 347, 'Jaring Pakaian Mesin Cuci'),
(2490, 347, 'Lainnya'),
(2491, 347, 'Papan Cuci Baju'),
(2492, 349, 'Baterai'),
(2493, 349, 'Humidifier'),
(2494, 349, 'Penahan Pintu'),
(2495, 349, 'Baterai Jam'),
(2496, 349, 'Payung'),
(2497, 349, 'Termometer Ruangan'),
(2498, 349, 'Gembok'),
(2499, 349, 'Pembatas Ruangan'),
(2500, 350, 'Wisata Indonesia'),
(2501, 350, 'Wisata Religi'),
(2502, 350, 'Tur Internasional'),
(2503, 350, 'Kapal Pesiar (Cruise)'),
(2504, 350, 'Land Tour'),
(2505, 351, 'Tiket Atraksi Domestik'),
(2506, 351, 'Tiket Atraksi Internasional'),
(2507, 351, 'Sewa Kostum'),
(2508, 353, 'Sim Card Jepang'),
(2509, 353, 'Sim Card Eropa'),
(2510, 353, 'Sim Card China, Hongkong, Macau'),
(2511, 353, 'Sim Card Nega Lainnya'),
(2512, 353, 'Wifi Eropa'),
(2513, 353, 'Sim Card Korea'),
(2514, 353, 'Sim Card Singapore, Malaysia, Thailand'),
(2515, 353, 'Sim Card Taiwan'),
(2516, 353, 'Wifi Asia'),
(2517, 353, 'Wifi Amerika'),
(2518, 353, 'Sim Card Australia & New Zealand'),
(2519, 353, 'Sim Card Saudi Arabia'),
(2520, 353, 'Sim Card Amerika Serikat'),
(2521, 353, 'Wifi Australia'),
(2522, 354, 'Jasa Pembuatan Visa'),
(2523, 354, 'Asuransi Perjalanan'),
(2524, 355, 'Voucher Fotografi'),
(2525, 355, 'Voucher Hotel'),
(2526, 355, 'Voucher Agen Travel'),
(2527, 355, 'Travel Voucher'),
(2528, 356, 'Aksesoris Tradisional Pria'),
(2529, 356, 'Sabuk'),
(2530, 356, 'Sepatu Pengantin Pria'),
(2531, 357, 'Sanggar Tradisional'),
(2532, 357, 'Wedding Bridal'),
(2533, 358, 'Dekorasi Modern'),
(2534, 358, 'Dekorasi Tradisional'),
(2535, 358, 'Lampu Dekorasi'),
(2536, 359, 'Band Musik'),
(2537, 359, 'Vokalis'),
(2538, 359, 'MC'),
(2539, 359, 'Orkestra'),
(2540, 360, 'Gaun Bridesmaid'),
(2541, 360, 'Jahit Gaun Bridesmaid'),
(2542, 360, 'Pakaian Pre-wedding'),
(2543, 360, 'Gaun Lamaran'),
(2544, 360, 'Jahit Gaunt Pengantin'),
(2545, 360, 'Sewa Pakaian Keluarga'),
(2546, 360, 'Gaun Pengantin Pernikahan'),
(2547, 360, 'Kebaya Pengantin'),
(2548, 361, 'Gift Box'),
(2549, 361, 'Jasa Kaligrafi'),
(2550, 361, 'Kotak Cincin'),
(2551, 362, 'Ekstensi Bulu Mata'),
(2552, 362, 'Rias Keluarga'),
(2553, 362, 'Rias Tradisional'),
(2554, 362, 'Perawatan Kuku Pengantin'),
(2555, 362, 'Rias Pengantin'),
(2556, 362, 'Slimming'),
(2557, 362, 'Rias Hijab'),
(2558, 362, 'Rias Pre-Wedding'),
(2559, 363, 'Katering'),
(2560, 363, 'Kue Pengantin'),
(2561, 363, 'Minuman Pernikahan'),
(2562, 367, 'Aula & Function Hall'),
(2563, 367, 'Villa & Resort'),
(2564, 367, 'Ballroom Hotel'),
(2565, 367, 'Restoran & Kafe'),
(2566, 368, 'Cetak Undangan'),
(2567, 368, 'Jasa Design Undangan'),
(2568, 369, 'Hadiah Pernikahan'),
(2569, 369, 'Wedding Souvenir'),
(2570, 369, 'Hamper'),
(2571, 369, 'Sangjit & Seserahan'),
(2572, 370, 'Kursi, Meja, Perabotan'),
(2573, 370, 'Wedding Sound System'),
(2574, 370, 'Layar Monitor & Projector'),
(2575, 370, 'Rental Mobil'),
(2576, 371, 'Photograpy Lainnya'),
(2577, 371, 'Videography Lainnya'),
(2578, 371, 'Photography Pre-Wedding'),
(2579, 371, 'Videography Pre-Wedding'),
(2580, 371, 'Photography Wedding'),
(2581, 371, 'Videography Wedding'),
(2582, 372, 'Cincin Kawin'),
(2583, 372, 'Hiasan & Sarung Tangan'),
(2584, 372, 'Tiara'),
(2585, 372, 'Crown'),
(2586, 372, 'Jubah Pengantin'),
(2587, 372, 'Hiasan Kepala'),
(2588, 372, 'Mahar & Mas Kawin'),
(2589, 373, 'Paket Lamaran'),
(2590, 373, 'Paket Pernikahan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_toko`
--

CREATE TABLE `tbl_toko` (
  `id_toko` varchar(255) NOT NULL,
  `status` int(11) DEFAULT '2' COMMENT '0 = non aktif\n1 = aktif\n',
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role_toko` int(11) NOT NULL DEFAULT '1' COMMENT '0 = undefined\n1 = toko pusat\n2 = toko cabang\n3 = gudang\n',
  `date_create` date DEFAULT NULL,
  `kode_toko` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_toko`
--

INSERT INTO `tbl_toko` (`id_toko`, `status`, `nama`, `alamat`, `no_hp`, `email`, `role_toko`, `date_create`, `kode_toko`) VALUES
('101', 1, 'Hawaii Mart Segiri Samarinda', 'Jl. Perniagaan N0.4 samping Pasar Segiri Samarinda', '-', '-', 3, '2020-10-31', '101'),
('102', 1, 'Hawaii Mart Kledang Samarinda', 'Jl. Bung Tomo Komplek Ruko 3s (Sentral Samarinda Seberang) Kel. Sungai Kledang Kec. Samarinda Seberang Kota Samarinda', '-', '-', 3, '2020-10-31', '102'),
('103', 1, 'Hawaii Mart Kendari', 'Jl. Jend. A.H Nasution, Lalolara, Kambu Provinsi Sulawesi Tenggara', '-', '-', 3, '2020-10-31', '103'),
('104', 1, 'Hawaii Mart Sengkang', 'Jl. H. Bahe sebelah TImur Sallo Mall Sengkang komplek Sallo Mall Sengkang Sulawesi Selatan', '-', '-', 3, '2020-10-31', '104'),
('105', 1, 'Hawaii Mart Parepare', 'Jl. Ahmad Yani JM>3 RT/RW. 004/001 kel. Lapadde kec. Soreang Kota Parepare Provinsi Sulawesi Selatan', '-', '-', 3, '2020-10-31', '105'),
('106', 1, 'Hawaii Mart Baruga Kendari', 'Jl. Kapten Piere Tendean No. 19 AB kel. Baruga kec. Baruga kota kendari provinsi Sulawesi Tenggara', '-', '-', 3, '2020-10-31', '106'),
('901', 1, 'Raja Karpet Gudang Rapak Dalam', 'Jl. K. Harun Nafsi (Rapak dalam depan Yayasan Graha Khalifa Home Schooling Group Khoiru Ummah)', '-', '-', 4, '2020-10-31', '901'),
('902', 1, 'Hawaii Mart / Raja Karpet / Gudang Banjarmasin', 'Jl. A. Yani KM.20 RT/RW. 09/03 Kel. Landasan Ulin Barat Kec. Liang Anggana Kota. Banjarbaru Banjarmasin Kalimantan Selatan', '-', '-', 4, '2020-10-31', '902'),
('903', 1, 'Raja Karpet Gudang Pontianak', 'Jl. Adi Sucipto KM.9,2 No. 6-5 Parit Baru Kec. Sungai Raya Kab. Kubu Raya Provinsi Kalimantan Barat', '-', '-', 4, '2020-10-31', '903'),
('904', 1, 'Raja Karpet Gudang Sengkang 1', 'Jl. Andi Parenrengi, Jl. Andi Panellangi, Jl. Bau Mahmud, Jl. Beringin', '-', '-', 4, '2020-10-31', '904'),
('905', 1, 'Raja Karpet Sengkang 2', 'jl. Adni Paggaru Kel. Teddaopu Kec. Tempe Kab. Wajo Prov. Sulawesi Selatan', '-', '-', 4, '2020-10-31', '905'),
('906', 1, 'Raja Karpet Makassar', 'Jl. Kopasa komplek Pasar Grosir Daya Modern Blok. H.12-5 (depan terminal daya makassar) Kel. Daya Kec. Biring Kanaya Kota Makassar Prov. Sulawesi Selatan', '-', '-', 4, '2020-10-31', '906'),
('907', 1, 'Raja Karpet Gorontalo', 'Jl. Brigjen Piola Isa Kel. Dulomo Selatan Kec. Kota Utara Kota Gorontalo Prov. Gorontalo ( Gudang & Toko bersebelahan)', '-', '-', 4, '2020-10-31', '907'),
('908', 1, 'Raja Karpet Kendari', 'Jl. Lawalata (Perempatan RSJ Kendari depan kecak cell ATM BRI) Sulawesi Tenggara', '-', '-', 4, '2020-10-31', '908'),
('909', 1, 'Raja Karpet Panjaitan Samarinda', 'Jl. D.l Panjaitan komplek ruko Pusat Kesejahteraan kel. Sungai Pinang Dalam kec. Samarinda Utara kota Samarinda', '-', '-', 4, '2020-10-31', '909'),
('910', 1, 'Raja Karpet Makassar ', 'Jl. Aroepala No.2 Hertasning Baru (samping Chocolicius) Sulawesi Selatan', '-', '-', 4, '2020-10-31', '910');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_00_detail_jual`
-- (See below for the actual view)
--
CREATE TABLE `vw_00_detail_jual` (
`kode_transaksi` varchar(50)
,`tanggal_transaksi` date
,`jam_transaksi` time
,`jumlah_beli` double
,`id_barang_detail` int(11)
,`id_barang` varchar(255)
,`sku` varchar(255)
,`barcode` varchar(255)
,`id_satuan` int(11)
,`size` varchar(20)
,`qty_default` int(11)
,`volume` double(11,0)
,`berat` double(11,0)
,`sat_panjang` int(11)
,`panjang_brg` double(11,0)
,`lebar_brg` double(11,0)
,`sat_volume` int(11)
,`sat_berat` int(11)
,`jenis` varchar(255)
,`warna` varchar(255)
,`tinggi_brg` double(11,0)
,`id_list_barang` int(11)
,`harga_beli` double(11,0)
,`potongan_beli` double(11,0)
,`disc_beli` double(11,0)
,`potongan_jual` double(11,0)
,`harga_jual` double(11,0)
,`disc_jual` double(11,0)
,`status_promo` tinyint(1)
,`status_ppn` int(11)
,`date_create` date
,`stok` int(11)
,`id_toko` varchar(255)
,`min_stok` int(11)
,`max_stok` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_003_purchase_order_detail_temp`
-- (See below for the actual view)
--
CREATE TABLE `vw_003_purchase_order_detail_temp` (
`id_detail_po` int(11)
,`qty` int(11)
,`id_barang_detail` int(11)
,`id_barang` varchar(255)
,`nama_barang` varchar(255)
,`merk` varchar(255)
,`id_categori` int(11)
,`nama_categori` varchar(255)
,`sku` varchar(255)
,`barcode` varchar(255)
,`id_satuan` int(11)
,`ket` varchar(255)
,`qty_default` int(11)
,`volume` double(11,0)
,`berat` double(11,0)
,`id_sub_cat` int(11)
,`nama_sub_cat` varchar(255)
,`size` varchar(20)
,`sat_berat` varchar(255)
,`sat_panjang` varchar(255)
,`sat_volume` varchar(255)
,`lebar_brg` double(11,0)
,`panjang_brg` double(11,0)
,`jenis` varchar(255)
,`warna` varchar(255)
,`tinggi_brg` double(11,0)
,`nama` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_barang_detail`
-- (See below for the actual view)
--
CREATE TABLE `vw_barang_detail` (
`id_barang_detail` int(11)
,`id_barang` varchar(255)
,`nama_barang` varchar(255)
,`merk` varchar(255)
,`id_categori` int(11)
,`nama_categori` varchar(255)
,`sku` varchar(255)
,`barcode` varchar(255)
,`id_satuan` int(11)
,`ket` varchar(255)
,`qty_default` int(11)
,`volume` double(11,0)
,`berat` double(11,0)
,`id_sub_cat` int(11)
,`nama_sub_cat` varchar(255)
,`size` varchar(20)
,`sat_berat` varchar(255)
,`sat_panjang` varchar(255)
,`sat_volume` varchar(255)
,`lebar_brg` double(11,0)
,`panjang_brg` double(11,0)
,`jenis` varchar(255)
,`warna` varchar(255)
,`tinggi_brg` double(11,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_barang_master`
-- (See below for the actual view)
--
CREATE TABLE `vw_barang_master` (
`id_barang` varchar(255)
,`nama_barang` varchar(255)
,`merk` varchar(255)
,`id_sub_cat` int(11)
,`nama_sub_cat` varchar(255)
,`nama_categori` varchar(255)
,`id_categori` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_barang_temp`
-- (See below for the actual view)
--
CREATE TABLE `vw_barang_temp` (
`nama_barang` varchar(255)
,`merk` varchar(255)
,`nama_categori` varchar(255)
,`id_categori` int(11)
,`sku` varchar(255)
,`barcode` varchar(255)
,`id_satuan` int(11)
,`ket` varchar(255)
,`expired` datetime
,`harga_beli` double(11,0)
,`potongan_beli` double(11,0)
,`qty_default` int(11)
,`disc_beli` double(11,0)
,`id_temp` int(11)
,`volume` double(11,0)
,`berat` double(11,0)
,`id_sub_cat` int(11)
,`nama_sub_cat` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_data_barang`
-- (See below for the actual view)
--
CREATE TABLE `vw_data_barang` (
`id_list_barang` int(11)
,`id_toko` varchar(255)
,`nama` varchar(255)
,`alamat` varchar(255)
,`no_hp` varchar(255)
,`email` varchar(255)
,`id_status` int(11)
,`status_toko` varchar(255)
,`id_role_toko` int(11)
,`role_toko` varchar(255)
,`id_barang` varchar(255)
,`nama_barang` varchar(255)
,`merk` varchar(255)
,`id_barang_detail` int(11)
,`sku` varchar(255)
,`barcode` varchar(255)
,`id_categori` int(11)
,`nama_categori` varchar(255)
,`id_sub_cat` int(11)
,`nama_sub_cat` varchar(255)
,`satuan_barang` varchar(255)
,`size` varchar(20)
,`qty_default` int(11)
,`volume` double(11,0)
,`berat` double(11,0)
,`harga_beli` double(11,0)
,`potongan_beli` double(11,0)
,`disc_beli_0` double(11,0)
,`harga_jual` double(11,0)
,`disc_jual` double(11,0)
,`status_promo` tinyint(1)
,`status_ppn` int(11)
,`date_create` date
,`potongan_jual` double(11,0)
,`stok` int(11)
,`panjang_brg` double(11,0)
,`lebar_brg` double(11,0)
,`jenis` varchar(255)
,`warna` varchar(255)
,`tinggi_brg` double(11,0)
,`sat_berat` varchar(255)
,`sat_panjang` varchar(255)
,`sat_volume` varchar(255)
,`min_stok` int(11)
,`max_stok` int(11)
,`detail_nama` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_data_barang_master`
-- (See below for the actual view)
--
CREATE TABLE `vw_data_barang_master` (
`id_barang` varchar(255)
,`nama_barang` varchar(255)
,`merk` varchar(255)
,`nama_categori` varchar(255)
,`sku` varchar(255)
,`barcode` varchar(255)
,`ket` varchar(255)
,`qty_default` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_kirim_brg`
-- (See below for the actual view)
--
CREATE TABLE `vw_kirim_brg` (
`no_kirim_brg` varchar(255)
,`no_surat_jalan` varchar(255)
,`tgl_pengiriman` date
,`estimasi_kedatanga` date
,`id_toko` varchar(255)
,`nama` varchar(255)
,`alamat` varchar(255)
,`no_hp` varchar(255)
,`email` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_kirim_brg_detail`
-- (See below for the actual view)
--
CREATE TABLE `vw_kirim_brg_detail` (
`id_po` varchar(255)
,`tgl` date
,`no_po` varchar(255)
,`status` int(11)
,`id_pengirim_supplier` varchar(255)
,`id_penerima` varchar(255)
,`status_kirim` tinyint(1)
,`nama_penerima` varchar(255)
,`nama_supplier` varchar(255)
,`id_kirim_brg_detail` int(11)
,`no_kirim_brg` varchar(255)
,`id_barang_detail` int(11)
,`id_barang` varchar(255)
,`sku` varchar(255)
,`barcode` varchar(255)
,`id_satuan` int(11)
,`size` varchar(20)
,`qty_default` int(11)
,`volume` double(11,0)
,`berat` double(11,0)
,`sat_panjang` int(11)
,`panjang_brg` double(11,0)
,`lebar_brg` double(11,0)
,`sat_volume` int(11)
,`sat_berat` int(11)
,`jenis` varchar(255)
,`warna` varchar(255)
,`tinggi_brg` double(11,0)
,`qty` int(11)
,`nama_barang` varchar(255)
,`merk` varchar(255)
,`id_tag` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_kirim_brg_temp`
-- (See below for the actual view)
--
CREATE TABLE `vw_kirim_brg_temp` (
`id_kirim_brg_detail` int(11)
,`id_po` varchar(255)
,`tgl` date
,`no_po` varchar(255)
,`status` int(11)
,`id_pengirim_supplier` varchar(255)
,`id_penerima` varchar(255)
,`status_kirim` tinyint(1)
,`nama_penerima` varchar(255)
,`nama_supplier` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_pengelompokan`
-- (See below for the actual view)
--
CREATE TABLE `vw_pengelompokan` (
`id_categori` int(11)
,`nama_categori` varchar(255)
,`id_sub_cat` int(11)
,`nama_sub_cat` varchar(255)
,`id_tag_cat` int(11)
,`nama_tag_cat` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_po`
-- (See below for the actual view)
--
CREATE TABLE `vw_po` (
`id_toko_penerima` varchar(255)
,`status_penerima` int(11)
,`nama_penerima` varchar(255)
,`alamat_penerima` varchar(255)
,`no_hp_penerima` varchar(255)
,`email_penerima` varchar(255)
,`id_supplier_pengirim` varchar(255)
,`nama_supplier_pengirim` varchar(255)
,`alamat_supplier_pengirim` varchar(255)
,`no_hp_supplier_pengirim` varchar(255)
,`email_supplier_pengirim` varchar(255)
,`rating_supplier_pengirim` varchar(255)
,`status_supplier_pengirim` int(11)
,`status_po` varchar(255)
,`id_po` varchar(255)
,`tgl` date
,`no_po` varchar(255)
,`color` varchar(150)
,`id_status_po` int(11)
,`status_kirim` tinyint(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_pr_detail_temp`
-- (See below for the actual view)
--
CREATE TABLE `vw_pr_detail_temp` (
`id_barang_detail` int(11)
,`id_barang` varchar(255)
,`nama_barang` varchar(255)
,`merk` varchar(255)
,`id_categori` int(11)
,`nama_categori` varchar(255)
,`sku` varchar(255)
,`barcode` varchar(255)
,`id_satuan` int(11)
,`ket` varchar(255)
,`qty_default` int(11)
,`volume` double(11,0)
,`berat` double(11,0)
,`id_sub_cat` int(11)
,`nama_sub_cat` varchar(255)
,`size` varchar(20)
,`id_detail_pr` int(11)
,`qty` int(11)
,`sat_berat` varchar(255)
,`sat_panjang` varchar(255)
,`sat_volume` varchar(255)
,`lebar_brg` double(11,0)
,`panjang_brg` double(11,0)
,`jenis` varchar(255)
,`warna` varchar(255)
,`tinggi_brg` double(11,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_purchase_order_detail`
-- (See below for the actual view)
--
CREATE TABLE `vw_purchase_order_detail` (
`id_toko_penerima` varchar(255)
,`status_penerima` int(11)
,`nama_penerima` varchar(255)
,`alamat_penerima` varchar(255)
,`no_hp_penerima` varchar(255)
,`email_penerima` varchar(255)
,`id_supplier_pengirim` varchar(255)
,`nama_supplier_pengirim` varchar(255)
,`alamat_supplier_pengirim` varchar(255)
,`no_hp_supplier_pengirim` varchar(255)
,`email_supplier_pengirim` varchar(255)
,`rating_supplier_pengirim` varchar(255)
,`status_supplier_pengirim` int(11)
,`status_po` varchar(255)
,`id_po` varchar(255)
,`tgl` date
,`no_po` varchar(255)
,`qty` int(11)
,`id_barang_detail` int(11)
,`id_barang` varchar(255)
,`nama_barang` varchar(255)
,`merk` varchar(255)
,`id_categori` int(11)
,`nama_categori` varchar(255)
,`sku` varchar(255)
,`barcode` varchar(255)
,`id_satuan` int(11)
,`ket` varchar(255)
,`qty_default` int(11)
,`volume` double(11,0)
,`berat` double(11,0)
,`id_sub_cat` int(11)
,`nama_sub_cat` varchar(255)
,`size` varchar(20)
,`sat_berat` varchar(255)
,`sat_panjang` varchar(255)
,`sat_volume` varchar(255)
,`lebar_brg` double(11,0)
,`panjang_brg` double(11,0)
,`jenis` varchar(255)
,`warna` varchar(255)
,`tinggi_brg` double(11,0)
,`color` varchar(150)
,`id_status_po` int(11)
,`id_detail_po` int(11)
,`id_request` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_purchase_request`
-- (See below for the actual view)
--
CREATE TABLE `vw_purchase_request` (
`id_purchase_reques` varchar(255)
,`id_toko` varchar(255)
,`status_toko` int(11)
,`nama` varchar(255)
,`alamat` varchar(255)
,`no_hp` varchar(255)
,`email` varchar(255)
,`role_toko` int(11)
,`date_create` date
,`tgl` varchar(255)
,`status_pr` int(11)
,`no_pr` varchar(255)
,`ket_status_pr` varchar(255)
,`color` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_purchase_request_detail`
-- (See below for the actual view)
--
CREATE TABLE `vw_purchase_request_detail` (
`id_purchase_reques` varchar(255)
,`id_toko` varchar(255)
,`status_toko` int(11)
,`nama` varchar(255)
,`alamat` varchar(255)
,`no_hp` varchar(255)
,`email` varchar(255)
,`role_toko` int(11)
,`date_create` date
,`tgl` varchar(255)
,`status_pr` int(11)
,`no_pr` varchar(255)
,`ket_status_pr` varchar(255)
,`id_detail_pr` int(11)
,`id_barang` int(11)
,`nama_barang` varchar(255)
,`merk` varchar(255)
,`nama_categori` varchar(255)
,`sku` varchar(255)
,`barcode` varchar(255)
,`ket` varchar(255)
,`qty_default` int(11)
,`volume` double(11,0)
,`berat` double(11,0)
,`nama_sub_cat` varchar(255)
,`size` varchar(20)
,`qty` int(11)
,`status_pesan` int(11)
,`status_po` tinyint(1)
,`id_barang_detail` int(11)
,`sat_berat` varchar(255)
,`sat_panjang` varchar(255)
,`sat_volume` varchar(255)
,`lebar_brg` double(11,0)
,`panjang_brg` double(11,0)
,`color` varchar(255)
,`jenis` varchar(255)
,`warna` varchar(255)
,`tinggi_brg` double(11,0)
,`qty_rev` int(11)
,`qty_final` bigint(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_purchase_request_temp`
-- (See below for the actual view)
--
CREATE TABLE `vw_purchase_request_temp` (
`id_toko` varchar(255)
,`status_toko` int(11)
,`nama` varchar(255)
,`alamat` varchar(255)
,`no_hp` varchar(255)
,`email` varchar(255)
,`role_toko` int(11)
,`date_create` date
,`id_purchase_reques` int(11)
,`tgl` varchar(255)
,`status` int(11)
,`no_pr` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_sub_category`
-- (See below for the actual view)
--
CREATE TABLE `vw_sub_category` (
`id_categori` int(11)
,`nama_categori` varchar(255)
,`id_sub_cat` int(11)
,`nama_sub_cat` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_supplier`
-- (See below for the actual view)
--
CREATE TABLE `vw_supplier` (
`id_supplier` varchar(255)
,`nama_supplier` varchar(255)
,`alamat` varchar(255)
,`no_hp` varchar(255)
,`email` varchar(255)
,`rating` varchar(255)
,`status` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_tag_category`
-- (See below for the actual view)
--
CREATE TABLE `vw_tag_category` (
`id_tag_cat` int(11)
,`id_sub_cat` int(11)
,`id_categori` int(11)
,`nama_categori` varchar(255)
,`nama_sub_cat` varchar(255)
,`nama_tag_cat` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_toko`
-- (See below for the actual view)
--
CREATE TABLE `vw_toko` (
`id_toko` varchar(255)
,`ket_stat` varchar(255)
,`status` int(11)
,`nama` varchar(255)
,`alamat` varchar(255)
,`no_hp` varchar(255)
,`email` varchar(255)
,`role_toko` int(11)
,`ket` varchar(255)
,`date_create` date
);

-- --------------------------------------------------------

--
-- Structure for view `vw_00_detail_jual`
--
DROP TABLE IF EXISTS `vw_00_detail_jual`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_00_detail_jual`  AS  select `tbl020_transaksi_jual_detail`.`kode_transaksi` AS `kode_transaksi`,`tbl020_transaksi_jual_detail`.`tanggal_transaksi` AS `tanggal_transaksi`,`tbl020_transaksi_jual_detail`.`jam_transaksi` AS `jam_transaksi`,`tbl020_transaksi_jual_detail`.`jumlah_beli` AS `jumlah_beli`,`tbl_barang_detail`.`id_barang_detail` AS `id_barang_detail`,`tbl_barang_detail`.`id_barang` AS `id_barang`,`tbl_barang_detail`.`sku` AS `sku`,`tbl_barang_detail`.`barcode` AS `barcode`,`tbl_barang_detail`.`id_satuan` AS `id_satuan`,`tbl_barang_detail`.`size` AS `size`,`tbl_barang_detail`.`qty_default` AS `qty_default`,`tbl_barang_detail`.`volume` AS `volume`,`tbl_barang_detail`.`berat` AS `berat`,`tbl_barang_detail`.`sat_panjang` AS `sat_panjang`,`tbl_barang_detail`.`panjang_brg` AS `panjang_brg`,`tbl_barang_detail`.`lebar_brg` AS `lebar_brg`,`tbl_barang_detail`.`sat_volume` AS `sat_volume`,`tbl_barang_detail`.`sat_berat` AS `sat_berat`,`tbl_barang_detail`.`jenis` AS `jenis`,`tbl_barang_detail`.`warna` AS `warna`,`tbl_barang_detail`.`tinggi_brg` AS `tinggi_brg`,`tbl_data_barang`.`id_list_barang` AS `id_list_barang`,`tbl_data_barang`.`harga_beli` AS `harga_beli`,`tbl_data_barang`.`potongan_beli` AS `potongan_beli`,`tbl_data_barang`.`disc_beli` AS `disc_beli`,`tbl_data_barang`.`potongan_jual` AS `potongan_jual`,`tbl_data_barang`.`harga_jual` AS `harga_jual`,`tbl_data_barang`.`disc_jual` AS `disc_jual`,`tbl_data_barang`.`status_promo` AS `status_promo`,`tbl_data_barang`.`status_ppn` AS `status_ppn`,`tbl_data_barang`.`date_create` AS `date_create`,`tbl_data_barang`.`stok` AS `stok`,`tbl_data_barang`.`id_toko` AS `id_toko`,`tbl_data_barang`.`min_stok` AS `min_stok`,`tbl_data_barang`.`max_stok` AS `max_stok` from ((`tbl020_transaksi_jual_detail` join `tbl_data_barang` on((`tbl020_transaksi_jual_detail`.`id_barang` = `tbl_data_barang`.`id_list_barang`))) join `tbl_barang_detail` on((`tbl_data_barang`.`id_barang` = `tbl_barang_detail`.`id_barang_detail`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_003_purchase_order_detail_temp`
--
DROP TABLE IF EXISTS `vw_003_purchase_order_detail_temp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_003_purchase_order_detail_temp`  AS  select `tbl_003_purchase_order_detail_temp`.`id_detail_po` AS `id_detail_po`,`tbl_003_purchase_order_detail_temp`.`qty` AS `qty`,`vw_barang_detail`.`id_barang_detail` AS `id_barang_detail`,`vw_barang_detail`.`id_barang` AS `id_barang`,`vw_barang_detail`.`nama_barang` AS `nama_barang`,`vw_barang_detail`.`merk` AS `merk`,`vw_barang_detail`.`id_categori` AS `id_categori`,`vw_barang_detail`.`nama_categori` AS `nama_categori`,`vw_barang_detail`.`sku` AS `sku`,`vw_barang_detail`.`barcode` AS `barcode`,`vw_barang_detail`.`id_satuan` AS `id_satuan`,`vw_barang_detail`.`ket` AS `ket`,`vw_barang_detail`.`qty_default` AS `qty_default`,`vw_barang_detail`.`volume` AS `volume`,`vw_barang_detail`.`berat` AS `berat`,`vw_barang_detail`.`id_sub_cat` AS `id_sub_cat`,`vw_barang_detail`.`nama_sub_cat` AS `nama_sub_cat`,`vw_barang_detail`.`size` AS `size`,`vw_barang_detail`.`sat_berat` AS `sat_berat`,`vw_barang_detail`.`sat_panjang` AS `sat_panjang`,`vw_barang_detail`.`sat_volume` AS `sat_volume`,`vw_barang_detail`.`lebar_brg` AS `lebar_brg`,`vw_barang_detail`.`panjang_brg` AS `panjang_brg`,`vw_barang_detail`.`jenis` AS `jenis`,`vw_barang_detail`.`warna` AS `warna`,`vw_barang_detail`.`tinggi_brg` AS `tinggi_brg`,`tbl_toko`.`nama` AS `nama` from (((`tbl_003_purchase_order_detail_temp` join `vw_barang_detail` on((`tbl_003_purchase_order_detail_temp`.`id_barang` = `vw_barang_detail`.`id_barang_detail`))) join `tbl_001_purchase_request` on((`tbl_003_purchase_order_detail_temp`.`id_request` = `tbl_001_purchase_request`.`id_purchase_reques`))) join `tbl_toko` on((`tbl_001_purchase_request`.`id_toko` = `tbl_toko`.`id_toko`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_barang_detail`
--
DROP TABLE IF EXISTS `vw_barang_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_barang_detail`  AS  select `tbl_barang_detail`.`id_barang_detail` AS `id_barang_detail`,`tbl_barang_master`.`id_barang` AS `id_barang`,`tbl_barang_master`.`nama_barang` AS `nama_barang`,`tbl_barang_master`.`merk` AS `merk`,`tbl_category`.`id_categori` AS `id_categori`,`tbl_category`.`nama_categori` AS `nama_categori`,`tbl_barang_detail`.`sku` AS `sku`,`tbl_barang_detail`.`barcode` AS `barcode`,`tbl_satuan_barang`.`id_satuan` AS `id_satuan`,`tbl_satuan_barang`.`ket` AS `ket`,`tbl_barang_detail`.`qty_default` AS `qty_default`,`tbl_barang_detail`.`volume` AS `volume`,`tbl_barang_detail`.`berat` AS `berat`,`tbl_sub_category`.`id_sub_cat` AS `id_sub_cat`,`tbl_sub_category`.`nama_sub_cat` AS `nama_sub_cat`,`tbl_barang_detail`.`size` AS `size`,`tbl_satuan_berat_barang`.`ket` AS `sat_berat`,`tbl_satuan_length_barang`.`ket` AS `sat_panjang`,`tbl_satuan_volume_barang`.`ket` AS `sat_volume`,`tbl_barang_detail`.`lebar_brg` AS `lebar_brg`,`tbl_barang_detail`.`panjang_brg` AS `panjang_brg`,`tbl_barang_detail`.`jenis` AS `jenis`,`tbl_barang_detail`.`warna` AS `warna`,`tbl_barang_detail`.`tinggi_brg` AS `tinggi_brg` from (((((((`tbl_barang_detail` join `tbl_barang_master` on((`tbl_barang_detail`.`id_barang` = `tbl_barang_master`.`id_barang`))) join `tbl_satuan_barang` on((`tbl_barang_detail`.`id_satuan` = `tbl_satuan_barang`.`id_satuan`))) join `tbl_sub_category` on((`tbl_barang_master`.`id_tag` = `tbl_sub_category`.`id_sub_cat`))) join `tbl_category` on((`tbl_sub_category`.`id_cat` = `tbl_category`.`id_categori`))) join `tbl_satuan_berat_barang` on((`tbl_barang_detail`.`sat_berat` = `tbl_satuan_berat_barang`.`id_satuan`))) join `tbl_satuan_length_barang` on((`tbl_barang_detail`.`sat_panjang` = `tbl_satuan_length_barang`.`id_satuan`))) join `tbl_satuan_volume_barang` on((`tbl_barang_detail`.`sat_volume` = `tbl_satuan_volume_barang`.`id_satuan`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_barang_master`
--
DROP TABLE IF EXISTS `vw_barang_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_barang_master`  AS  select `tbl_barang_master`.`id_barang` AS `id_barang`,`tbl_barang_master`.`nama_barang` AS `nama_barang`,`tbl_barang_master`.`merk` AS `merk`,`tbl_sub_category`.`id_sub_cat` AS `id_sub_cat`,`tbl_sub_category`.`nama_sub_cat` AS `nama_sub_cat`,`tbl_category`.`nama_categori` AS `nama_categori`,`tbl_category`.`id_categori` AS `id_categori` from ((`tbl_barang_master` join `tbl_sub_category` on((`tbl_barang_master`.`id_tag` = `tbl_sub_category`.`id_sub_cat`))) join `tbl_category` on((`tbl_sub_category`.`id_cat` = `tbl_category`.`id_categori`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_barang_temp`
--
DROP TABLE IF EXISTS `vw_barang_temp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_barang_temp`  AS  select `tbl_barang_master`.`nama_barang` AS `nama_barang`,`tbl_barang_master`.`merk` AS `merk`,`tbl_category`.`nama_categori` AS `nama_categori`,`tbl_category`.`id_categori` AS `id_categori`,`tbl_barang_temp`.`sku` AS `sku`,`tbl_barang_temp`.`barcode` AS `barcode`,`tbl_satuan_barang`.`id_satuan` AS `id_satuan`,`tbl_satuan_barang`.`ket` AS `ket`,`tbl_barang_temp`.`expired` AS `expired`,`tbl_barang_temp`.`harga_beli` AS `harga_beli`,`tbl_barang_temp`.`potongan_beli` AS `potongan_beli`,`tbl_barang_temp`.`qty_default` AS `qty_default`,`tbl_barang_temp`.`disc_beli` AS `disc_beli`,`tbl_barang_temp`.`id_temp` AS `id_temp`,`tbl_barang_temp`.`volume` AS `volume`,`tbl_barang_temp`.`berat` AS `berat`,`tbl_sub_category`.`id_sub_cat` AS `id_sub_cat`,`tbl_sub_category`.`nama_sub_cat` AS `nama_sub_cat` from ((((`tbl_barang_temp` join `tbl_barang_master` on((`tbl_barang_temp`.`id_barang` = `tbl_barang_master`.`id_barang`))) join `tbl_satuan_barang` on((`tbl_barang_temp`.`id_satuan` = `tbl_satuan_barang`.`id_satuan`))) join `tbl_sub_category` on((`tbl_barang_master`.`id_tag` = `tbl_sub_category`.`id_sub_cat`))) join `tbl_category` on((`tbl_sub_category`.`id_cat` = `tbl_category`.`id_categori`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_data_barang`
--
DROP TABLE IF EXISTS `vw_data_barang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_data_barang`  AS  select `tbl_data_barang`.`id_list_barang` AS `id_list_barang`,`tbl_toko`.`id_toko` AS `id_toko`,`tbl_toko`.`nama` AS `nama`,`tbl_toko`.`alamat` AS `alamat`,`tbl_toko`.`no_hp` AS `no_hp`,`tbl_toko`.`email` AS `email`,`tbl_status`.`id_status` AS `id_status`,`tbl_status`.`ket` AS `status_toko`,`tbl_role_toko`.`id_role_toko` AS `id_role_toko`,`tbl_role_toko`.`ket` AS `role_toko`,`tbl_barang_master`.`id_barang` AS `id_barang`,`tbl_barang_master`.`nama_barang` AS `nama_barang`,`tbl_barang_master`.`merk` AS `merk`,`tbl_barang_detail`.`id_barang_detail` AS `id_barang_detail`,`tbl_barang_detail`.`sku` AS `sku`,`tbl_barang_detail`.`barcode` AS `barcode`,`tbl_category`.`id_categori` AS `id_categori`,`tbl_category`.`nama_categori` AS `nama_categori`,`tbl_sub_category`.`id_sub_cat` AS `id_sub_cat`,`tbl_sub_category`.`nama_sub_cat` AS `nama_sub_cat`,`tbl_satuan_barang`.`ket` AS `satuan_barang`,`tbl_barang_detail`.`size` AS `size`,`tbl_barang_detail`.`qty_default` AS `qty_default`,`tbl_barang_detail`.`volume` AS `volume`,`tbl_barang_detail`.`berat` AS `berat`,`tbl_data_barang`.`harga_beli` AS `harga_beli`,`tbl_data_barang`.`potongan_beli` AS `potongan_beli`,`tbl_data_barang`.`disc_beli` AS `disc_beli_0`,`tbl_data_barang`.`harga_jual` AS `harga_jual`,`tbl_data_barang`.`disc_jual` AS `disc_jual`,`tbl_data_barang`.`status_promo` AS `status_promo`,`tbl_data_barang`.`status_ppn` AS `status_ppn`,`tbl_data_barang`.`date_create` AS `date_create`,`tbl_data_barang`.`potongan_jual` AS `potongan_jual`,`tbl_data_barang`.`stok` AS `stok`,`tbl_barang_detail`.`panjang_brg` AS `panjang_brg`,`tbl_barang_detail`.`lebar_brg` AS `lebar_brg`,`tbl_barang_detail`.`jenis` AS `jenis`,`tbl_barang_detail`.`warna` AS `warna`,`tbl_barang_detail`.`tinggi_brg` AS `tinggi_brg`,`tbl_satuan_berat_barang`.`ket` AS `sat_berat`,`tbl_satuan_length_barang`.`ket` AS `sat_panjang`,`tbl_satuan_volume_barang`.`ket` AS `sat_volume`,`tbl_data_barang`.`min_stok` AS `min_stok`,`tbl_data_barang`.`max_stok` AS `max_stok`,concat(`tbl_barang_master`.`nama_barang`,' ',if((`tbl_barang_master`.`merk` <> '-'),concat(`tbl_barang_master`.`merk`,' '),''),if((`tbl_barang_detail`.`jenis` <> NULL),`tbl_barang_detail`.`jenis`,''),if((`tbl_barang_detail`.`size` <> 0),`tbl_barang_detail`.`size`,''),(case when ((`tbl_barang_detail`.`panjang_brg` <> 0) and (`tbl_barang_detail`.`lebar_brg` <> 0)) then concat(`tbl_barang_detail`.`panjang_brg`,' x ',`tbl_barang_detail`.`lebar_brg`,' ',`tbl_satuan_length_barang`.`ket`,' ') when ((`tbl_barang_detail`.`panjang_brg` = 0) and (`tbl_barang_detail`.`lebar_brg` = 0)) then '' when ((`tbl_barang_detail`.`panjang_brg` <> 0) and (`tbl_barang_detail`.`lebar_brg` = 0)) then concat(`tbl_barang_detail`.`panjang_brg`,' ',`tbl_satuan_length_barang`.`ket`,' ') when ((`tbl_barang_detail`.`panjang_brg` = 0) and (`tbl_barang_detail`.`lebar_brg` <> 0)) then concat(`tbl_barang_detail`.`lebar_brg`,' ',`tbl_satuan_length_barang`.`ket`,' ') end),convert((case `tbl_barang_detail`.`volume` when 0 then ' ' else concat(`tbl_barang_detail`.`volume`,' ',`tbl_barang_detail`.`sat_volume`) end) using latin1),convert((case `tbl_barang_detail`.`berat` when 0 then ' ' else concat(`tbl_barang_detail`.`berat`,' ',`tbl_barang_detail`.`sat_berat`) end) using latin1)) AS `detail_nama` from (((((((((((`tbl_data_barang` join `tbl_toko` on((`tbl_data_barang`.`id_toko` = `tbl_toko`.`id_toko`))) join `tbl_status` on((`tbl_toko`.`status` = `tbl_status`.`id_status`))) join `tbl_role_toko` on((`tbl_toko`.`role_toko` = `tbl_role_toko`.`id_role_toko`))) join `tbl_barang_detail` on((`tbl_data_barang`.`id_barang` = `tbl_barang_detail`.`id_barang_detail`))) join `tbl_barang_master` on((`tbl_barang_detail`.`id_barang` = `tbl_barang_master`.`id_barang`))) join `tbl_sub_category` on((`tbl_barang_master`.`id_tag` = `tbl_sub_category`.`id_sub_cat`))) join `tbl_category` on((`tbl_sub_category`.`id_cat` = `tbl_category`.`id_categori`))) join `tbl_satuan_barang` on((`tbl_barang_detail`.`id_satuan` = `tbl_satuan_barang`.`id_satuan`))) join `tbl_satuan_berat_barang` on((`tbl_barang_detail`.`sat_berat` = `tbl_satuan_berat_barang`.`id_satuan`))) join `tbl_satuan_length_barang` on((`tbl_barang_detail`.`sat_panjang` = `tbl_satuan_length_barang`.`id_satuan`))) join `tbl_satuan_volume_barang` on((`tbl_barang_detail`.`sat_volume` = `tbl_satuan_volume_barang`.`id_satuan`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_data_barang_master`
--
DROP TABLE IF EXISTS `vw_data_barang_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_data_barang_master`  AS  select `tbl_barang_master`.`id_barang` AS `id_barang`,`tbl_barang_master`.`nama_barang` AS `nama_barang`,`tbl_barang_master`.`merk` AS `merk`,`tbl_category`.`nama_categori` AS `nama_categori`,`tbl_barang_detail`.`sku` AS `sku`,`tbl_barang_detail`.`barcode` AS `barcode`,`tbl_satuan_barang`.`ket` AS `ket`,`tbl_barang_detail`.`qty_default` AS `qty_default` from (((`tbl_barang_master` join `tbl_barang_detail` on((`tbl_barang_master`.`id_barang` = `tbl_barang_detail`.`id_barang`))) join `tbl_satuan_barang` on((`tbl_barang_detail`.`id_satuan` = `tbl_satuan_barang`.`id_satuan`))) join `tbl_category`) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_kirim_brg`
--
DROP TABLE IF EXISTS `vw_kirim_brg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_kirim_brg`  AS  select `tbl_kirim_brg`.`no_kirim_brg` AS `no_kirim_brg`,`tbl_kirim_brg`.`no_surat_jalan` AS `no_surat_jalan`,`tbl_kirim_brg`.`tgl_pengiriman` AS `tgl_pengiriman`,`tbl_kirim_brg`.`estimasi_kedatanga` AS `estimasi_kedatanga`,`tbl_kirim_brg`.`id_toko` AS `id_toko`,`tbl_toko`.`nama` AS `nama`,`tbl_toko`.`alamat` AS `alamat`,`tbl_toko`.`no_hp` AS `no_hp`,`tbl_toko`.`email` AS `email` from (`tbl_kirim_brg` join `tbl_toko` on((`tbl_kirim_brg`.`id_toko` = `tbl_toko`.`id_toko`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_kirim_brg_detail`
--
DROP TABLE IF EXISTS `vw_kirim_brg_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_kirim_brg_detail`  AS  select `tbl_002_purchase_order`.`id_po` AS `id_po`,`tbl_002_purchase_order`.`tgl` AS `tgl`,`tbl_002_purchase_order`.`no_po` AS `no_po`,`tbl_002_purchase_order`.`status` AS `status`,`tbl_002_purchase_order`.`id_pengirim_supplier` AS `id_pengirim_supplier`,`tbl_002_purchase_order`.`id_penerima` AS `id_penerima`,`tbl_002_purchase_order`.`status_kirim` AS `status_kirim`,`tbl_toko_alias1`.`nama` AS `nama_penerima`,`tbl_supplier`.`nama_supplier` AS `nama_supplier`,`tbl_kirim_brg_detail`.`id_kirim_brg_detail` AS `id_kirim_brg_detail`,`tbl_kirim_brg_detail`.`no_kirim_brg` AS `no_kirim_brg`,`tbl_barang_detail`.`id_barang_detail` AS `id_barang_detail`,`tbl_barang_detail`.`id_barang` AS `id_barang`,`tbl_barang_detail`.`sku` AS `sku`,`tbl_barang_detail`.`barcode` AS `barcode`,`tbl_barang_detail`.`id_satuan` AS `id_satuan`,`tbl_barang_detail`.`size` AS `size`,`tbl_barang_detail`.`qty_default` AS `qty_default`,`tbl_barang_detail`.`volume` AS `volume`,`tbl_barang_detail`.`berat` AS `berat`,`tbl_barang_detail`.`sat_panjang` AS `sat_panjang`,`tbl_barang_detail`.`panjang_brg` AS `panjang_brg`,`tbl_barang_detail`.`lebar_brg` AS `lebar_brg`,`tbl_barang_detail`.`sat_volume` AS `sat_volume`,`tbl_barang_detail`.`sat_berat` AS `sat_berat`,`tbl_barang_detail`.`jenis` AS `jenis`,`tbl_barang_detail`.`warna` AS `warna`,`tbl_barang_detail`.`tinggi_brg` AS `tinggi_brg`,`tbl_002_purchase_order_detail`.`qty` AS `qty`,`tbl_barang_master`.`nama_barang` AS `nama_barang`,`tbl_barang_master`.`merk` AS `merk`,`tbl_barang_master`.`id_tag` AS `id_tag` from ((((((`tbl_002_purchase_order` join `tbl_toko` `tbl_toko_alias1` on((`tbl_002_purchase_order`.`id_penerima` = `tbl_toko_alias1`.`id_toko`))) join `tbl_supplier` on((`tbl_002_purchase_order`.`id_pengirim_supplier` = `tbl_supplier`.`id_supplier`))) join `tbl_kirim_brg_detail` on((`tbl_kirim_brg_detail`.`id_po` = `tbl_002_purchase_order`.`id_po`))) join `tbl_002_purchase_order_detail` on((`tbl_002_purchase_order`.`id_po` = `tbl_002_purchase_order_detail`.`id_po`))) join `tbl_barang_detail` on((`tbl_002_purchase_order_detail`.`id_barang` = `tbl_barang_detail`.`id_barang_detail`))) join `tbl_barang_master` on((`tbl_barang_detail`.`id_barang` = `tbl_barang_master`.`id_barang`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_kirim_brg_temp`
--
DROP TABLE IF EXISTS `vw_kirim_brg_temp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_kirim_brg_temp`  AS  select `tbl_kirim_brg_detail_temp`.`id_kirim_brg_detail` AS `id_kirim_brg_detail`,`tbl_002_purchase_order`.`id_po` AS `id_po`,`tbl_002_purchase_order`.`tgl` AS `tgl`,`tbl_002_purchase_order`.`no_po` AS `no_po`,`tbl_002_purchase_order`.`status` AS `status`,`tbl_002_purchase_order`.`id_pengirim_supplier` AS `id_pengirim_supplier`,`tbl_002_purchase_order`.`id_penerima` AS `id_penerima`,`tbl_002_purchase_order`.`status_kirim` AS `status_kirim`,`tbl_toko_alias1`.`nama` AS `nama_penerima`,`tbl_supplier`.`nama_supplier` AS `nama_supplier` from (((`tbl_kirim_brg_detail_temp` join `tbl_002_purchase_order` on((`tbl_kirim_brg_detail_temp`.`id_po` = `tbl_002_purchase_order`.`id_po`))) join `tbl_toko` `tbl_toko_alias1` on((`tbl_002_purchase_order`.`id_penerima` = `tbl_toko_alias1`.`id_toko`))) join `tbl_supplier` on((`tbl_002_purchase_order`.`id_pengirim_supplier` = `tbl_supplier`.`id_supplier`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_pengelompokan`
--
DROP TABLE IF EXISTS `vw_pengelompokan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_pengelompokan`  AS  select `tbl_category`.`id_categori` AS `id_categori`,`tbl_category`.`nama_categori` AS `nama_categori`,`tbl_sub_category`.`id_sub_cat` AS `id_sub_cat`,`tbl_sub_category`.`nama_sub_cat` AS `nama_sub_cat`,`tbl_tag_category`.`id_tag_cat` AS `id_tag_cat`,`tbl_tag_category`.`nama_tag_cat` AS `nama_tag_cat` from ((`tbl_sub_category` join `tbl_category` on((`tbl_sub_category`.`id_cat` = `tbl_category`.`id_categori`))) join `tbl_tag_category` on((`tbl_tag_category`.`id_sub_cat` = `tbl_sub_category`.`id_sub_cat`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_po`
--
DROP TABLE IF EXISTS `vw_po`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_po`  AS  select `tbl_toko_alias1`.`id_toko` AS `id_toko_penerima`,`tbl_toko_alias1`.`status` AS `status_penerima`,`tbl_toko_alias1`.`nama` AS `nama_penerima`,`tbl_toko_alias1`.`alamat` AS `alamat_penerima`,`tbl_toko_alias1`.`no_hp` AS `no_hp_penerima`,`tbl_toko_alias1`.`email` AS `email_penerima`,`tbl_supplier`.`id_supplier` AS `id_supplier_pengirim`,`tbl_supplier`.`nama_supplier` AS `nama_supplier_pengirim`,`tbl_supplier`.`alamat` AS `alamat_supplier_pengirim`,`tbl_supplier`.`no_hp` AS `no_hp_supplier_pengirim`,`tbl_supplier`.`email` AS `email_supplier_pengirim`,`tbl_supplier`.`rating` AS `rating_supplier_pengirim`,`tbl_supplier`.`status` AS `status_supplier_pengirim`,`tbl_status_po`.`status_po` AS `status_po`,`tbl_002_purchase_order`.`id_po` AS `id_po`,`tbl_002_purchase_order`.`tgl` AS `tgl`,`tbl_002_purchase_order`.`no_po` AS `no_po`,`tbl_status_po`.`color` AS `color`,`tbl_status_po`.`id_status_po` AS `id_status_po`,`tbl_002_purchase_order`.`status_kirim` AS `status_kirim` from (((`tbl_002_purchase_order` join `tbl_supplier` on((`tbl_002_purchase_order`.`id_pengirim_supplier` = `tbl_supplier`.`id_supplier`))) join `tbl_status_po` on((`tbl_002_purchase_order`.`status` = `tbl_status_po`.`id_status_po`))) join `tbl_toko` `tbl_toko_alias1` on((`tbl_002_purchase_order`.`id_penerima` = `tbl_toko_alias1`.`id_toko`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_pr_detail_temp`
--
DROP TABLE IF EXISTS `vw_pr_detail_temp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_pr_detail_temp`  AS  select `vw_barang_detail`.`id_barang_detail` AS `id_barang_detail`,`vw_barang_detail`.`id_barang` AS `id_barang`,`vw_barang_detail`.`nama_barang` AS `nama_barang`,`vw_barang_detail`.`merk` AS `merk`,`vw_barang_detail`.`id_categori` AS `id_categori`,`vw_barang_detail`.`nama_categori` AS `nama_categori`,`vw_barang_detail`.`sku` AS `sku`,`vw_barang_detail`.`barcode` AS `barcode`,`vw_barang_detail`.`id_satuan` AS `id_satuan`,`vw_barang_detail`.`ket` AS `ket`,`vw_barang_detail`.`qty_default` AS `qty_default`,`vw_barang_detail`.`volume` AS `volume`,`vw_barang_detail`.`berat` AS `berat`,`vw_barang_detail`.`id_sub_cat` AS `id_sub_cat`,`vw_barang_detail`.`nama_sub_cat` AS `nama_sub_cat`,`vw_barang_detail`.`size` AS `size`,`tbl_001_purchase_request_detail_temp`.`id_detail_pr` AS `id_detail_pr`,`tbl_001_purchase_request_detail_temp`.`qty` AS `qty`,`vw_barang_detail`.`sat_berat` AS `sat_berat`,`vw_barang_detail`.`sat_panjang` AS `sat_panjang`,`vw_barang_detail`.`sat_volume` AS `sat_volume`,`vw_barang_detail`.`lebar_brg` AS `lebar_brg`,`vw_barang_detail`.`panjang_brg` AS `panjang_brg`,`vw_barang_detail`.`jenis` AS `jenis`,`vw_barang_detail`.`warna` AS `warna`,`vw_barang_detail`.`tinggi_brg` AS `tinggi_brg` from (`tbl_001_purchase_request_detail_temp` join `vw_barang_detail` on((`tbl_001_purchase_request_detail_temp`.`id_barang` = `vw_barang_detail`.`id_barang_detail`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_purchase_order_detail`
--
DROP TABLE IF EXISTS `vw_purchase_order_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_purchase_order_detail`  AS  select `vw_po`.`id_toko_penerima` AS `id_toko_penerima`,`vw_po`.`status_penerima` AS `status_penerima`,`vw_po`.`nama_penerima` AS `nama_penerima`,`vw_po`.`alamat_penerima` AS `alamat_penerima`,`vw_po`.`no_hp_penerima` AS `no_hp_penerima`,`vw_po`.`email_penerima` AS `email_penerima`,`vw_po`.`id_supplier_pengirim` AS `id_supplier_pengirim`,`vw_po`.`nama_supplier_pengirim` AS `nama_supplier_pengirim`,`vw_po`.`alamat_supplier_pengirim` AS `alamat_supplier_pengirim`,`vw_po`.`no_hp_supplier_pengirim` AS `no_hp_supplier_pengirim`,`vw_po`.`email_supplier_pengirim` AS `email_supplier_pengirim`,`vw_po`.`rating_supplier_pengirim` AS `rating_supplier_pengirim`,`vw_po`.`status_supplier_pengirim` AS `status_supplier_pengirim`,`vw_po`.`status_po` AS `status_po`,`vw_po`.`id_po` AS `id_po`,`vw_po`.`tgl` AS `tgl`,`vw_po`.`no_po` AS `no_po`,`tbl_002_purchase_order_detail`.`qty` AS `qty`,`vw_barang_detail`.`id_barang_detail` AS `id_barang_detail`,`vw_barang_detail`.`id_barang` AS `id_barang`,`vw_barang_detail`.`nama_barang` AS `nama_barang`,`vw_barang_detail`.`merk` AS `merk`,`vw_barang_detail`.`id_categori` AS `id_categori`,`vw_barang_detail`.`nama_categori` AS `nama_categori`,`vw_barang_detail`.`sku` AS `sku`,`vw_barang_detail`.`barcode` AS `barcode`,`vw_barang_detail`.`id_satuan` AS `id_satuan`,`vw_barang_detail`.`ket` AS `ket`,`vw_barang_detail`.`qty_default` AS `qty_default`,`vw_barang_detail`.`volume` AS `volume`,`vw_barang_detail`.`berat` AS `berat`,`vw_barang_detail`.`id_sub_cat` AS `id_sub_cat`,`vw_barang_detail`.`nama_sub_cat` AS `nama_sub_cat`,`vw_barang_detail`.`size` AS `size`,`vw_barang_detail`.`sat_berat` AS `sat_berat`,`vw_barang_detail`.`sat_panjang` AS `sat_panjang`,`vw_barang_detail`.`sat_volume` AS `sat_volume`,`vw_barang_detail`.`lebar_brg` AS `lebar_brg`,`vw_barang_detail`.`panjang_brg` AS `panjang_brg`,`vw_barang_detail`.`jenis` AS `jenis`,`vw_barang_detail`.`warna` AS `warna`,`vw_barang_detail`.`tinggi_brg` AS `tinggi_brg`,`vw_po`.`color` AS `color`,`vw_po`.`id_status_po` AS `id_status_po`,`tbl_002_purchase_order_detail`.`id_detail_po` AS `id_detail_po`,`tbl_002_purchase_order_detail`.`id_request` AS `id_request` from ((`vw_po` join `tbl_002_purchase_order_detail` on((`vw_po`.`id_po` = `tbl_002_purchase_order_detail`.`id_po`))) join `vw_barang_detail` on((`tbl_002_purchase_order_detail`.`id_barang` = `vw_barang_detail`.`id_barang_detail`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_purchase_request`
--
DROP TABLE IF EXISTS `vw_purchase_request`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_purchase_request`  AS  select `tbl_001_purchase_request`.`id_purchase_reques` AS `id_purchase_reques`,`tbl_toko`.`id_toko` AS `id_toko`,`tbl_toko`.`status` AS `status_toko`,`tbl_toko`.`nama` AS `nama`,`tbl_toko`.`alamat` AS `alamat`,`tbl_toko`.`no_hp` AS `no_hp`,`tbl_toko`.`email` AS `email`,`tbl_toko`.`role_toko` AS `role_toko`,`tbl_toko`.`date_create` AS `date_create`,`tbl_001_purchase_request`.`tgl` AS `tgl`,`tbl_001_purchase_request`.`status` AS `status_pr`,`tbl_001_purchase_request`.`no_pr` AS `no_pr`,`tbl_status_acc_pr`.`ket_status_pr` AS `ket_status_pr`,`tbl_status_acc_pr`.`color` AS `color` from ((`tbl_001_purchase_request` join `tbl_toko` on((`tbl_001_purchase_request`.`id_toko` = `tbl_toko`.`id_toko`))) join `tbl_status_acc_pr` on((`tbl_001_purchase_request`.`status` = `tbl_status_acc_pr`.`id_status`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_purchase_request_detail`
--
DROP TABLE IF EXISTS `vw_purchase_request_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_purchase_request_detail`  AS  select `vw_purchase_request`.`id_purchase_reques` AS `id_purchase_reques`,`vw_purchase_request`.`id_toko` AS `id_toko`,`vw_purchase_request`.`status_toko` AS `status_toko`,`vw_purchase_request`.`nama` AS `nama`,`vw_purchase_request`.`alamat` AS `alamat`,`vw_purchase_request`.`no_hp` AS `no_hp`,`vw_purchase_request`.`email` AS `email`,`vw_purchase_request`.`role_toko` AS `role_toko`,`vw_purchase_request`.`date_create` AS `date_create`,`vw_purchase_request`.`tgl` AS `tgl`,`vw_purchase_request`.`status_pr` AS `status_pr`,`vw_purchase_request`.`no_pr` AS `no_pr`,`vw_purchase_request`.`ket_status_pr` AS `ket_status_pr`,`tbl_001_purchase_request_detail`.`id_detail_pr` AS `id_detail_pr`,`tbl_001_purchase_request_detail`.`id_barang` AS `id_barang`,`vw_barang_detail`.`nama_barang` AS `nama_barang`,`vw_barang_detail`.`merk` AS `merk`,`vw_barang_detail`.`nama_categori` AS `nama_categori`,`vw_barang_detail`.`sku` AS `sku`,`vw_barang_detail`.`barcode` AS `barcode`,`vw_barang_detail`.`ket` AS `ket`,`vw_barang_detail`.`qty_default` AS `qty_default`,`vw_barang_detail`.`volume` AS `volume`,`vw_barang_detail`.`berat` AS `berat`,`vw_barang_detail`.`nama_sub_cat` AS `nama_sub_cat`,`vw_barang_detail`.`size` AS `size`,`tbl_001_purchase_request_detail`.`qty` AS `qty`,`tbl_001_purchase_request_detail`.`status_pesan` AS `status_pesan`,`tbl_001_purchase_request_detail`.`status_po` AS `status_po`,`vw_barang_detail`.`id_barang_detail` AS `id_barang_detail`,`vw_barang_detail`.`sat_berat` AS `sat_berat`,`vw_barang_detail`.`sat_panjang` AS `sat_panjang`,`vw_barang_detail`.`sat_volume` AS `sat_volume`,`vw_barang_detail`.`lebar_brg` AS `lebar_brg`,`vw_barang_detail`.`panjang_brg` AS `panjang_brg`,`vw_purchase_request`.`color` AS `color`,`vw_barang_detail`.`jenis` AS `jenis`,`vw_barang_detail`.`warna` AS `warna`,`vw_barang_detail`.`tinggi_brg` AS `tinggi_brg`,`tbl_001_purchase_request_detail`.`qty_rev` AS `qty_rev`,(case when (`tbl_001_purchase_request_detail`.`qty_rev` is not null) then `tbl_001_purchase_request_detail`.`qty_rev` else `tbl_001_purchase_request_detail`.`qty` end) AS `qty_final` from ((`vw_purchase_request` join `tbl_001_purchase_request_detail` on((`vw_purchase_request`.`id_purchase_reques` = `tbl_001_purchase_request_detail`.`id_pr`))) join `vw_barang_detail` on((`tbl_001_purchase_request_detail`.`id_barang` = `vw_barang_detail`.`id_barang_detail`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_purchase_request_temp`
--
DROP TABLE IF EXISTS `vw_purchase_request_temp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_purchase_request_temp`  AS  select `tbl_toko`.`id_toko` AS `id_toko`,`tbl_toko`.`status` AS `status_toko`,`tbl_toko`.`nama` AS `nama`,`tbl_toko`.`alamat` AS `alamat`,`tbl_toko`.`no_hp` AS `no_hp`,`tbl_toko`.`email` AS `email`,`tbl_toko`.`role_toko` AS `role_toko`,`tbl_toko`.`date_create` AS `date_create`,`tbl_001_purchase_request_temp`.`id_purchase_reques` AS `id_purchase_reques`,`tbl_001_purchase_request_temp`.`tgl` AS `tgl`,`tbl_001_purchase_request_temp`.`status` AS `status`,`tbl_001_purchase_request_temp`.`no_pr` AS `no_pr` from (`tbl_001_purchase_request_temp` join `tbl_toko` on((`tbl_001_purchase_request_temp`.`id_toko` = `tbl_toko`.`id_toko`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_sub_category`
--
DROP TABLE IF EXISTS `vw_sub_category`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_sub_category`  AS  select `tbl_category`.`id_categori` AS `id_categori`,`tbl_category`.`nama_categori` AS `nama_categori`,`tbl_sub_category`.`id_sub_cat` AS `id_sub_cat`,`tbl_sub_category`.`nama_sub_cat` AS `nama_sub_cat` from (`tbl_category` join `tbl_sub_category` on((`tbl_category`.`id_categori` = `tbl_sub_category`.`id_cat`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_supplier`
--
DROP TABLE IF EXISTS `vw_supplier`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_supplier`  AS  select `tbl_supplier`.`id_supplier` AS `id_supplier`,`tbl_supplier`.`nama_supplier` AS `nama_supplier`,`tbl_supplier`.`alamat` AS `alamat`,`tbl_supplier`.`no_hp` AS `no_hp`,`tbl_supplier`.`email` AS `email`,`tbl_supplier`.`rating` AS `rating`,`tbl_status`.`ket` AS `status` from (`tbl_supplier` join `tbl_status` on((`tbl_supplier`.`status` = `tbl_status`.`id_status`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_tag_category`
--
DROP TABLE IF EXISTS `vw_tag_category`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_tag_category`  AS  select `tbl_tag_category`.`id_tag_cat` AS `id_tag_cat`,`tbl_sub_category`.`id_sub_cat` AS `id_sub_cat`,`tbl_category`.`id_categori` AS `id_categori`,`tbl_category`.`nama_categori` AS `nama_categori`,`tbl_sub_category`.`nama_sub_cat` AS `nama_sub_cat`,`tbl_tag_category`.`nama_tag_cat` AS `nama_tag_cat` from ((`tbl_tag_category` join `tbl_sub_category` on((`tbl_tag_category`.`id_sub_cat` = `tbl_sub_category`.`id_sub_cat`))) join `tbl_category` on((`tbl_sub_category`.`id_cat` = `tbl_category`.`id_categori`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_toko`
--
DROP TABLE IF EXISTS `vw_toko`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_toko`  AS  select `tbl_toko`.`id_toko` AS `id_toko`,`tbl_status`.`ket` AS `ket_stat`,`tbl_toko`.`status` AS `status`,`tbl_toko`.`nama` AS `nama`,`tbl_toko`.`alamat` AS `alamat`,`tbl_toko`.`no_hp` AS `no_hp`,`tbl_toko`.`email` AS `email`,`tbl_toko`.`role_toko` AS `role_toko`,`tbl_role_toko`.`ket` AS `ket`,`tbl_toko`.`date_create` AS `date_create` from ((`tbl_toko` join `tbl_status` on((`tbl_toko`.`status` = `tbl_status`.`id_status`))) join `tbl_role_toko` on((`tbl_toko`.`role_toko` = `tbl_role_toko`.`id_role_toko`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl020_transaksi_jual_detail`
--
ALTER TABLE `tbl020_transaksi_jual_detail`
  ADD PRIMARY KEY (`kode_detail`) USING BTREE,
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `tbl020_transaksi_jual_master`
--
ALTER TABLE `tbl020_transaksi_jual_master`
  ADD PRIMARY KEY (`kode_transaksi`) USING BTREE;

--
-- Indexes for table `tbl_001_purchase_request`
--
ALTER TABLE `tbl_001_purchase_request`
  ADD PRIMARY KEY (`id_purchase_reques`),
  ADD KEY `id_status_pr` (`status`),
  ADD KEY `id_toko` (`id_toko`);

--
-- Indexes for table `tbl_001_purchase_request_detail`
--
ALTER TABLE `tbl_001_purchase_request_detail`
  ADD PRIMARY KEY (`id_detail_pr`) USING BTREE,
  ADD KEY `id_barang_po` (`id_barang`),
  ADD KEY `id` (`id_pr`),
  ADD KEY `status_pesan` (`status_pesan`);

--
-- Indexes for table `tbl_001_purchase_request_detail_temp`
--
ALTER TABLE `tbl_001_purchase_request_detail_temp`
  ADD PRIMARY KEY (`id_detail_pr`) USING BTREE,
  ADD KEY `id_barang_po` (`id_barang`);

--
-- Indexes for table `tbl_001_purchase_request_temp`
--
ALTER TABLE `tbl_001_purchase_request_temp`
  ADD PRIMARY KEY (`id_purchase_reques`),
  ADD KEY `id_status_pr` (`status`),
  ADD KEY `id_toko` (`id_toko`);

--
-- Indexes for table `tbl_002_purchase_order`
--
ALTER TABLE `tbl_002_purchase_order`
  ADD PRIMARY KEY (`id_po`) USING BTREE,
  ADD KEY `id_supplier_ngirim` (`id_pengirim_supplier`) USING BTREE,
  ADD KEY `id_penerima` (`id_penerima`) USING BTREE,
  ADD KEY `status_po` (`status`);

--
-- Indexes for table `tbl_002_purchase_order_detail`
--
ALTER TABLE `tbl_002_purchase_order_detail`
  ADD PRIMARY KEY (`id_detail_po`),
  ADD KEY `id_barang_po` (`id_barang`),
  ADD KEY `id_po` (`id_po`);

--
-- Indexes for table `tbl_003_purchase_order_detail_temp`
--
ALTER TABLE `tbl_003_purchase_order_detail_temp`
  ADD PRIMARY KEY (`id_detail_po`),
  ADD KEY `id_barang_po` (`id_barang`);

--
-- Indexes for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  ADD PRIMARY KEY (`id_assets`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `tbl_barang_detail`
--
ALTER TABLE `tbl_barang_detail`
  ADD PRIMARY KEY (`id_barang_detail`) USING BTREE,
  ADD KEY `id_detail_brg` (`id_barang`) USING BTREE,
  ADD KEY `id_satuan_brg` (`id_satuan`) USING BTREE,
  ADD KEY `sat_volume` (`sat_volume`),
  ADD KEY `sat_berat` (`sat_berat`),
  ADD KEY `sat_panjang` (`sat_panjang`);

--
-- Indexes for table `tbl_barang_master`
--
ALTER TABLE `tbl_barang_master`
  ADD PRIMARY KEY (`id_barang`) USING BTREE,
  ADD KEY `id_tag` (`id_tag`) USING BTREE;

--
-- Indexes for table `tbl_barang_masuk`
--
ALTER TABLE `tbl_barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`);

--
-- Indexes for table `tbl_barang_masuk_detail`
--
ALTER TABLE `tbl_barang_masuk_detail`
  ADD PRIMARY KEY (`id_barang_masuk_detail`) USING BTREE,
  ADD KEY `id_barang_masuk` (`id_barang_masuk`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `tbl_barang_temp`
--
ALTER TABLE `tbl_barang_temp`
  ADD PRIMARY KEY (`id_temp`) USING BTREE;

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id_categori`) USING BTREE;

--
-- Indexes for table `tbl_category_copy1`
--
ALTER TABLE `tbl_category_copy1`
  ADD PRIMARY KEY (`id_categori`) USING BTREE;

--
-- Indexes for table `tbl_data_barang`
--
ALTER TABLE `tbl_data_barang`
  ADD PRIMARY KEY (`id_list_barang`) USING BTREE,
  ADD KEY `idd_barang` (`id_barang`) USING BTREE,
  ADD KEY `id_toko` (`id_toko`) USING BTREE;

--
-- Indexes for table `tbl_harga_barang`
--
ALTER TABLE `tbl_harga_barang`
  ADD PRIMARY KEY (`id_harga_barang`) USING BTREE,
  ADD KEY `id_barang` (`id_barang`) USING BTREE;

--
-- Indexes for table `tbl_ket_sup`
--
ALTER TABLE `tbl_ket_sup`
  ADD PRIMARY KEY (`id_ket_sup`);

--
-- Indexes for table `tbl_kirim_brg`
--
ALTER TABLE `tbl_kirim_brg`
  ADD PRIMARY KEY (`no_kirim_brg`),
  ADD KEY `id_toko` (`id_toko`);

--
-- Indexes for table `tbl_kirim_brg_detail`
--
ALTER TABLE `tbl_kirim_brg_detail`
  ADD PRIMARY KEY (`id_kirim_brg_detail`) USING BTREE;

--
-- Indexes for table `tbl_kirim_brg_detail_temp`
--
ALTER TABLE `tbl_kirim_brg_detail_temp`
  ADD PRIMARY KEY (`id_kirim_brg_detail`) USING BTREE;

--
-- Indexes for table `tbl_level`
--
ALTER TABLE `tbl_level`
  ADD PRIMARY KEY (`id_level`) USING BTREE;

--
-- Indexes for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `tbl_role_toko`
--
ALTER TABLE `tbl_role_toko`
  ADD PRIMARY KEY (`id_role_toko`) USING BTREE;

--
-- Indexes for table `tbl_satuan_barang`
--
ALTER TABLE `tbl_satuan_barang`
  ADD PRIMARY KEY (`id_satuan`) USING BTREE;

--
-- Indexes for table `tbl_satuan_berat_barang`
--
ALTER TABLE `tbl_satuan_berat_barang`
  ADD PRIMARY KEY (`id_satuan`) USING BTREE;

--
-- Indexes for table `tbl_satuan_length_barang`
--
ALTER TABLE `tbl_satuan_length_barang`
  ADD PRIMARY KEY (`id_satuan`) USING BTREE;

--
-- Indexes for table `tbl_satuan_volume_barang`
--
ALTER TABLE `tbl_satuan_volume_barang`
  ADD PRIMARY KEY (`id_satuan`) USING BTREE;

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id_status`) USING BTREE;

--
-- Indexes for table `tbl_status_acc_pr`
--
ALTER TABLE `tbl_status_acc_pr`
  ADD PRIMARY KEY (`id_status`) USING BTREE;

--
-- Indexes for table `tbl_status_pesan_pr`
--
ALTER TABLE `tbl_status_pesan_pr`
  ADD PRIMARY KEY (`id_status_pesan`);

--
-- Indexes for table `tbl_status_po`
--
ALTER TABLE `tbl_status_po`
  ADD PRIMARY KEY (`id_status_po`) USING BTREE;

--
-- Indexes for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD PRIMARY KEY (`id_sub_cat`) USING BTREE,
  ADD KEY `id_cat` (`id_cat`) USING BTREE;

--
-- Indexes for table `tbl_sub_category_copy1`
--
ALTER TABLE `tbl_sub_category_copy1`
  ADD PRIMARY KEY (`id_sub_cat`) USING BTREE,
  ADD KEY `id_cat` (`id_cat`) USING BTREE;

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id_supplier`) USING BTREE,
  ADD KEY `id_stat_supplier` (`status`) USING BTREE,
  ADD KEY `ket_sup` (`ket_sup`);

--
-- Indexes for table `tbl_tag_category`
--
ALTER TABLE `tbl_tag_category`
  ADD PRIMARY KEY (`id_tag_cat`) USING BTREE,
  ADD KEY `tag_id_sub_cat` (`id_sub_cat`) USING BTREE,
  ADD KEY `id_tag_cat` (`id_tag_cat`) USING BTREE;

--
-- Indexes for table `tbl_tag_category_copy1`
--
ALTER TABLE `tbl_tag_category_copy1`
  ADD PRIMARY KEY (`id_tag_cat`) USING BTREE,
  ADD KEY `tag_id_sub_cat` (`id_sub_cat`) USING BTREE,
  ADD KEY `id_tag_cat` (`id_tag_cat`) USING BTREE;

--
-- Indexes for table `tbl_toko`
--
ALTER TABLE `tbl_toko`
  ADD PRIMARY KEY (`id_toko`) USING BTREE,
  ADD KEY `role_toko` (`role_toko`) USING BTREE,
  ADD KEY `stat_toko` (`status`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_001_purchase_request_detail`
--
ALTER TABLE `tbl_001_purchase_request_detail`
  MODIFY `id_detail_pr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_001_purchase_request_detail_temp`
--
ALTER TABLE `tbl_001_purchase_request_detail_temp`
  MODIFY `id_detail_pr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_001_purchase_request_temp`
--
ALTER TABLE `tbl_001_purchase_request_temp`
  MODIFY `id_purchase_reques` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_002_purchase_order_detail`
--
ALTER TABLE `tbl_002_purchase_order_detail`
  MODIFY `id_detail_po` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_003_purchase_order_detail_temp`
--
ALTER TABLE `tbl_003_purchase_order_detail_temp`
  MODIFY `id_detail_po` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  MODIFY `id_assets` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_barang_detail`
--
ALTER TABLE `tbl_barang_detail`
  MODIFY `id_barang_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1123;

--
-- AUTO_INCREMENT for table `tbl_barang_masuk`
--
ALTER TABLE `tbl_barang_masuk`
  MODIFY `id_barang_masuk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_barang_masuk_detail`
--
ALTER TABLE `tbl_barang_masuk_detail`
  MODIFY `id_barang_masuk_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_barang_temp`
--
ALTER TABLE `tbl_barang_temp`
  MODIFY `id_temp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_category_copy1`
--
ALTER TABLE `tbl_category_copy1`
  MODIFY `id_categori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_data_barang`
--
ALTER TABLE `tbl_data_barang`
  MODIFY `id_list_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `tbl_harga_barang`
--
ALTER TABLE `tbl_harga_barang`
  MODIFY `id_harga_barang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ket_sup`
--
ALTER TABLE `tbl_ket_sup`
  MODIFY `id_ket_sup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_kirim_brg_detail`
--
ALTER TABLE `tbl_kirim_brg_detail`
  MODIFY `id_kirim_brg_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_kirim_brg_detail_temp`
--
ALTER TABLE `tbl_kirim_brg_detail_temp`
  MODIFY `id_kirim_brg_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_role_toko`
--
ALTER TABLE `tbl_role_toko`
  MODIFY `id_role_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_satuan_barang`
--
ALTER TABLE `tbl_satuan_barang`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_satuan_berat_barang`
--
ALTER TABLE `tbl_satuan_berat_barang`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_satuan_length_barang`
--
ALTER TABLE `tbl_satuan_length_barang`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_satuan_volume_barang`
--
ALTER TABLE `tbl_satuan_volume_barang`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_status_acc_pr`
--
ALTER TABLE `tbl_status_acc_pr`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_status_pesan_pr`
--
ALTER TABLE `tbl_status_pesan_pr`
  MODIFY `id_status_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_status_po`
--
ALTER TABLE `tbl_status_po`
  MODIFY `id_status_po` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_sub_category_copy1`
--
ALTER TABLE `tbl_sub_category_copy1`
  MODIFY `id_sub_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `tbl_tag_category`
--
ALTER TABLE `tbl_tag_category`
  MODIFY `id_tag_cat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tag_category_copy1`
--
ALTER TABLE `tbl_tag_category_copy1`
  MODIFY `id_tag_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2591;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl020_transaksi_jual_detail`
--
ALTER TABLE `tbl020_transaksi_jual_detail`
  ADD CONSTRAINT `tbl020_transaksi_jual_detail_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tbl_data_barang` (`id_list_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_001_purchase_request`
--
ALTER TABLE `tbl_001_purchase_request`
  ADD CONSTRAINT `id_status_pr` FOREIGN KEY (`status`) REFERENCES `tbl_status_acc_pr` (`id_status`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_001_purchase_request_ibfk_1` FOREIGN KEY (`id_toko`) REFERENCES `tbl_toko` (`id_toko`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_001_purchase_request_detail`
--
ALTER TABLE `tbl_001_purchase_request_detail`
  ADD CONSTRAINT `tbl_001_purchase_request_detail_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tbl_barang_detail` (`id_barang_detail`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_001_purchase_request_detail_ibfk_2` FOREIGN KEY (`id_pr`) REFERENCES `tbl_001_purchase_request` (`id_purchase_reques`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_001_purchase_request_detail_ibfk_3` FOREIGN KEY (`status_pesan`) REFERENCES `tbl_status_pesan_pr` (`id_status_pesan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_001_purchase_request_detail_temp`
--
ALTER TABLE `tbl_001_purchase_request_detail_temp`
  ADD CONSTRAINT `tbl_001_purchase_request_detail_temp_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tbl_barang_detail` (`id_barang_detail`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_001_purchase_request_temp`
--
ALTER TABLE `tbl_001_purchase_request_temp`
  ADD CONSTRAINT `tbl_001_purchase_request_temp_ibfk_1` FOREIGN KEY (`status`) REFERENCES `tbl_status_acc_pr` (`id_status`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_001_purchase_request_temp_ibfk_2` FOREIGN KEY (`id_toko`) REFERENCES `tbl_toko` (`id_toko`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_002_purchase_order`
--
ALTER TABLE `tbl_002_purchase_order`
  ADD CONSTRAINT `id_supplier_ngirim` FOREIGN KEY (`id_pengirim_supplier`) REFERENCES `tbl_supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `status_po` FOREIGN KEY (`status`) REFERENCES `tbl_status_po` (`id_status_po`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_002_purchase_order_detail`
--
ALTER TABLE `tbl_002_purchase_order_detail`
  ADD CONSTRAINT `id_barang_po` FOREIGN KEY (`id_barang`) REFERENCES `tbl_barang_detail` (`id_barang_detail`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_po` FOREIGN KEY (`id_po`) REFERENCES `tbl_002_purchase_order` (`id_po`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_003_purchase_order_detail_temp`
--
ALTER TABLE `tbl_003_purchase_order_detail_temp`
  ADD CONSTRAINT `tbl_003_purchase_order_detail_temp_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tbl_barang_detail` (`id_barang_detail`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_barang_detail`
--
ALTER TABLE `tbl_barang_detail`
  ADD CONSTRAINT `id_detail_brg` FOREIGN KEY (`id_barang`) REFERENCES `tbl_barang_master` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_satuan_brg` FOREIGN KEY (`id_satuan`) REFERENCES `tbl_satuan_barang` (`id_satuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_barang_detail_ibfk_1` FOREIGN KEY (`sat_volume`) REFERENCES `tbl_satuan_volume_barang` (`id_satuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_barang_detail_ibfk_2` FOREIGN KEY (`sat_berat`) REFERENCES `tbl_satuan_berat_barang` (`id_satuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_barang_detail_ibfk_3` FOREIGN KEY (`sat_panjang`) REFERENCES `tbl_satuan_length_barang` (`id_satuan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_barang_masuk_detail`
--
ALTER TABLE `tbl_barang_masuk_detail`
  ADD CONSTRAINT `tbl_barang_masuk_detail_ibfk_1` FOREIGN KEY (`id_barang_masuk`) REFERENCES `tbl_barang_masuk` (`id_barang_masuk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_barang_masuk_detail_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `tbl_barang_detail` (`id_barang_detail`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_data_barang`
--
ALTER TABLE `tbl_data_barang`
  ADD CONSTRAINT `id_toko` FOREIGN KEY (`id_toko`) REFERENCES `tbl_toko` (`id_toko`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idd_barang` FOREIGN KEY (`id_barang`) REFERENCES `tbl_barang_detail` (`id_barang_detail`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_harga_barang`
--
ALTER TABLE `tbl_harga_barang`
  ADD CONSTRAINT `id_barang` FOREIGN KEY (`id_barang`) REFERENCES `tbl_barang_detail` (`id_barang_detail`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_kirim_brg`
--
ALTER TABLE `tbl_kirim_brg`
  ADD CONSTRAINT `tbl_kirim_brg_ibfk_1` FOREIGN KEY (`id_toko`) REFERENCES `tbl_toko` (`id_toko`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_sub_category_copy1`
--
ALTER TABLE `tbl_sub_category_copy1`
  ADD CONSTRAINT `tbl_sub_category_copy1_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `tbl_category_copy1` (`id_categori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD CONSTRAINT `id_stat_supplier` FOREIGN KEY (`status`) REFERENCES `tbl_status` (`id_status`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ket_sup` FOREIGN KEY (`ket_sup`) REFERENCES `tbl_ket_sup` (`id_ket_sup`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_toko`
--
ALTER TABLE `tbl_toko`
  ADD CONSTRAINT `role_toko` FOREIGN KEY (`role_toko`) REFERENCES `tbl_role_toko` (`id_role_toko`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stat_toko` FOREIGN KEY (`status`) REFERENCES `tbl_status` (`id_status`) ON DELETE CASCADE ON UPDATE CASCADE;
