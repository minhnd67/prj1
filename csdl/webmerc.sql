-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2020 at 03:08 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webphukiendt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`idadmin` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`) VALUES
(1, 'admin', 'minhadmin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
`id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `fullname`, `createdate`) VALUES
(20, 'inh67@gmail.com', '2020-10-10 19:30:05'),
(21, 'admin', '2020-10-10 19:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

CREATE TABLE IF NOT EXISTS `cart_detail` (
`id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '1',
  `quantity` int(11) NOT NULL,
  `price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `quantity`, `price`) VALUES
(32, 20, 90, 1, '790000'),
(33, 20, 98, 1, '150000'),
(34, 21, 99, 1, '189');

-- --------------------------------------------------------

--
-- Table structure for table `dangky`
--

CREATE TABLE IF NOT EXISTS `dangky` (
`id_khachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matkhau` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachinhan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dangky`
--

INSERT INTO `dangky` (`id_khachhang`, `tenkhachhang`, `email`, `matkhau`, `dienthoai`, `diachinhan`) VALUES
(61, 'Duc', 'inh67@gmail.com', 'abc', 394076444, 'Paris3'),
(62, 'Duc', 'inh67@gmail.com', 'abc', 394076444, 'Paris3');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
`id_gallery` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `hinhanhsp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hieusp`
--

CREATE TABLE IF NOT EXISTS `hieusp` (
`idhieusp` int(11) NOT NULL,
  `tenhieusp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hieusp`
--

INSERT INTO `hieusp` (`idhieusp`, `tenhieusp`, `tinhtrang`) VALUES
(17, 'MERCEDES', '1');

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE IF NOT EXISTS `loaisp` (
`idloaisp` int(11) NOT NULL,
  `tenloaisp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`idloaisp`, `tenloaisp`, `tinhtrang`) VALUES
(40, 'MERCEDES S-CLASS', '1'),
(41, 'MERCEDES E-CLASS', '1'),
(43, 'MERCEDES C-CLASS', '1'),
(44, 'MERCEDES GLS', '1'),
(45, 'MERCEDES GLE', '1'),
(46, 'MERCEDES GLC', '1'),
(47, 'MERCEDES GLK', '1'),
(48, 'MERCEDES MAYBACH', '1'),
(49, 'MERCEDES BRABUS', '1'),
(50, 'MERCEDES AMG', '1'),
(51, 'CAR PERFUME', '1'),
(52, 'CAR ACCESSORY', '1'),
(53, '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
`idsanpham` int(11) NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `masp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `giadexuat` float NOT NULL,
  `giagiam` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `loaisp` int(11) NOT NULL,
  `nhasx` int(11) NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idsanpham`, `tensp`, `masp`, `hinhanh`, `giadexuat`, `giagiam`, `soluong`, `loaisp`, `nhasx`, `tinhtrang`, `noidung`) VALUES
(90, 'MERCEDES MAYBACH S650', 'MB650', '20201009_081808.jpg', 790000, 0, 100, 48, 17, '1', 'The Mercedes-Maybach S 650 stands for the ultimate in exclusivity and individuality. The luxury brand combines the perfection of the S-Class with the exclusivity of Maybach. Now the top model from Mercedes-Benz is even more refined. A new radiator grille, optional two-tone paintwork and new exclusive colour combinations in the interior ensure an even more majestic look.\r\n\r\nMercedes-Maybach S 650:\r\nKraftstoffverbrauch kombiniert: 14,0 l/100 km;\r\nCOâ‚‚-Emissionen kombiniert: 320 g/km.Â¹'),
(91, 'MERCEDES S600', 'S600', 'Screenshot_20201009-172616_Instagram.jpg', 690000, 0, 0, 40, 17, '1', 'The Mercedes-Maybach S600 is a car that projects absolute authority, and not a negligible amount of intimidation'),
(92, 'MERCEDES E250', 'E250', 'Screenshot_20201009-172229_Instagram.jpg', 149000, 0, 100, 41, 17, '1', 'From striking design to smart safety and assistance features.\r\nKraftstoffverbrauch kombiniert: 7,2â€“6,5 l/100 km;\r\nCOâ‚‚-Emissionen kombiniert: 163â€“149 g/km.Â¹\r\n'),
(93, 'MERCEDES C300', 'C300', 'Screenshot_20201009-171948_Instagram.jpg', 89000, 0, 0, 43, 17, '1', ''),
(94, 'MERCEDES GLS 580', 'GLS580', 'Screenshot_20201009-223617_Instagram.jpg', 450000, 0, 100, 44, 17, '1', ''),
(95, 'MERCEDES GLE 400', 'GLE400', 'Screenshot_20201009-223457_Instagram.jpg', 250000, 0, 100, 45, 17, '1', ''),
(96, 'MERCEDES GLC200', 'GLC200', 'Screenshot_20201009-223111_Instagram.jpg', 125000, 0, 100, 46, 17, '1', ''),
(97, 'MERCEDES BRABUS G63', 'BR63', 'Screenshot_20201009-171621_Instagram.jpg', 890000, 0, 100, 49, 17, '1', ''),
(98, 'MERCEDES AMG C300', 'AMG300', 'Screenshot_20201009-172055_Instagram.jpg', 150000, 0, 100, 50, 17, '1', ''),
(99, 'CAR PERFUME', 'PF1', 'Screenshot_20201011-001909_Shopee.jpg', 189, 0, 100, 51, 17, '1', ''),
(100, 'MERCEDES MAYBACH S600', 'MB600', '20201009_222912.jpg', 700000, 0, 100, 48, 17, '1', ''),
(101, 'MERCEDES MAYBACH S450', 'MB450', 'Screenshot_20201009-173633_Instagram.jpg', 390000, 0, 100, 48, 17, '1', ''),
(102, 'MERCEDES BRABUS G63', 'BR631', 'Screenshot_20201009-171557_Instagram.jpg', 890000, 0, 100, 49, 17, '1', ''),
(103, 'MERCEDES E200', 'E200', 'Screenshot_20201009-172449_Instagram.jpg', 110000, 0, 100, 41, 17, '1', ''),
(104, 'MERCEDES E300', 'E300', 'Screenshot_20201009-171245_Instagram.jpg', 149000, 0, 100, 41, 17, '1', ''),
(105, 'CAR PERFUME', 'PF2', 'Screenshot_20201011-002635_Cc Cc.jpg', 149, 0, 100, 51, 17, '1', ''),
(106, 'CAR PERFUME', 'PF3', 'Screenshot_20201011-002409_Cc Cc.jpg', 149, 0, 100, 51, 17, '1', ''),
(107, 'LOGO LED MERCEDES', 'LG1', 'Screenshot_20201011-003522_Cc Cc.jpg', 19, 0, 100, 52, 17, '1', ''),
(108, 'LOGO MERCEDES', 'LG2', 'Screenshot_20201011-002926_Cc Cc.jpg', 19, 0, 100, 52, 17, '1', ''),
(109, 'MERCEDES S400', 'C250', 'Screenshot_20201009-173653_Instagram.jpg', 249000, 0, 100, 40, 17, '1', ''),
(110, 'MERCEDES MAYBACH S600', 'MB600', 'Screenshot_20201009-173720_Instagram.jpg', 649000, 0, 100, 48, 17, '1', ''),
(111, 'MERCEDES GLC300', '', '20201009_081712.jpg', 160000, 0, 100, 46, 17, '1', ''),
(112, 'MERCEDES C200', 'C2001', 'Screenshot_20201009-171843_Instagram.jpg', 95000, 0, 100, 43, 17, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE IF NOT EXISTS `tintuc` (
`idtintuc` int(11) NOT NULL,
  `tentintuc` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_detail`
--
ALTER TABLE `cart_detail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dangky`
--
ALTER TABLE `dangky`
 ADD PRIMARY KEY (`id_khachhang`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
 ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `hieusp`
--
ALTER TABLE `hieusp`
 ADD PRIMARY KEY (`idhieusp`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
 ADD PRIMARY KEY (`idloaisp`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
 ADD PRIMARY KEY (`idsanpham`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
 ADD PRIMARY KEY (`idtintuc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `cart_detail`
--
ALTER TABLE `cart_detail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `dangky`
--
ALTER TABLE `dangky`
MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hieusp`
--
ALTER TABLE `hieusp`
MODIFY `idhieusp` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `loaisp`
--
ALTER TABLE `loaisp`
MODIFY `idloaisp` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
MODIFY `idsanpham` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
MODIFY `idtintuc` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
