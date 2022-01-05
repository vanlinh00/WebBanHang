-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2022 at 04:44 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webquanao`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cartuser`
--

CREATE TABLE `cartuser` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `list_id_product` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cartuser`
--

INSERT INTO `cartuser` (`id`, `id_user`, `list_id_product`) VALUES
(1, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `content` varchar(200) NOT NULL,
  `price` varchar(20) NOT NULL,
  `discount` varchar(20) NOT NULL,
  `image_link` varchar(200) NOT NULL,
  `id_nhacungcap` int(10) NOT NULL,
  `goitinh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `id_nhacungcap`, `goitinh`) VALUES
(1, 1, 'Áo sơ mi nữ côn', 'Áo Sơ Mi Nữ Công Sở Ảnh Thật, Thiết kế tại Shop L&amp;T Fashion chuyên thời trang nữ áo sơ mi, áo kiểu với giá cực', '320.000', '300.000', 'https://media3.scdn.vn/img4/2021/04_23/M56q5B7l79VN83aid5By_simg_de2fe0_500x500_maxb.jpg', 0, 0),
(2, 1, 'Áo sơ mi nữ phố', 'Áo sơ mi nữ cổ tròn form rộng kẻ caro LAHstore, thời trang trẻ, phong cách Hàn Quốc được thiết kế thanh nhã với kiểu áo form rộng trẻ trung.Áo được may từ chất liệu cao cấp cho cảm giác mềm mại, thoán', '179.000', '109.000', 'https://media3.scdn.vn/img4/2021/04_23/bNbqFMPngUgkuwsznsDH_simg_de2fe0_500x500_maxb.jpg', 0, 0),
(3, 1, 'Áo sơ mi nữ lụa cao cấp - Áo sơ mi nữ lụa cao cấp', 'Áo sơ mi nữ lụa cao cấpÁo sơ mi nữ cổ đức lụa cao cấpTrời ơi HOT quá không thể giảm nhiệt được em nóAi ưng là phải quất ngay em này không lưỡng lự là hết và tiếc lắm đó.Về bao nhiêu là hết bấy nhiêu.C', '245.000', '205.000', 'https://media3.scdn.vn/img4/2020/04_27/h3Xreu1zpJCJrD15pIN4_simg_de2fe0_500x500_maxb.jpg', 0, 0),
(4, 1, 'Áo Sơ Mi Nữ Chấm Bi - Áo kiểu dễ thương - E01', 'Áo Sơ Mi Nữ Voan Lụa Ảnh Thật, Thiết kế tại Shop L&amp;T Fashion chuyên thời trang nữ áo sơ mi, áo kiểu với giá cực hợp lý và tốt nhất thị trường, chất lượng đảm bảo  Uy tín luôn đặt lên hàng đầu để t', '129.000', '109.000', 'https://media3.scdn.vn/img4/2021/04_19/Ex0hvJZwnHJalGowTmvi.jpg', 0, 0),
(5, 1, 'Áo sơ mi nữ kiểu tay ngắn cổ V vải satin lụa - SSL1260', 'Chú ý: SHOP CHO XEM HÀNG KHI NHẬN NÊN QUÝ KHÁCH YÊN TÂM VỀ SẢN PHẨM CỦA MÌNH ĐẶT NHÉ!Áo sơ mi nữ kiểu tay ngắn cổ V vải satin lụa :-Hàng Thiết kế trẻ trung, tinh tế hợp thời trang phù hợp với nhiều lứ', '129.000', '109.000', 'https://media3.scdn.vn/img4/2021/04_27/QL3NTFC4tk8sYbRh8axj_simg_de2fe0_500x500_maxb.jpg', 0, 0),
(6, 1, 'Áo sơ mi nữ kiểu tay dài cổ trụ vải manggo cao cấp - SSL1257', 'Chú ý: SHOP CHO XEM HÀNG KHI NHẬN NÊN QUÝ KHÁCH YÊN TÂM VỀ SẢN PHẨM CỦA MÌNH ĐẶT NHÉ! Áo sơ mi nữ kiểu tay dài cổ trụ vải manggo cao cấp : -Hàng Thiết kế trẻ trung, tinh tế hợp thời trang phù hợp với ', '129.000', '109.000', 'https://media3.scdn.vn/img4/2020/11_15/LUMIhCcGmS2d2bYixA2m_simg_de2fe0_500x500_maxb.jpg', 0, 0),
(7, 1, 'Áo sơ mi nữ cổ vest cao cấp sang chảnh - Áo sơ mi nữ cổ vest', 'Áo sơ mi nữ cổ vest cao cấp sang chảnhSiêu phẩm về hàng chị em ơiChị em cứ phải tậu ngay cho em cả 2 màu đi, đảm bảo chỉ có ưng trở lên.Chất lụa Nhật mềm đẹp và mát.Áo đẹp mix gì cũng xinhÁo này ra ng', '200.000', '100.000', 'https://media3.scdn.vn/img4/2020/04_27/bdgZxiTWN9ZzGan9uYU5_simg_de2fe0_500x500_maxb.jpg', 0, 0),
(8, 1, 'ÁO SƠ MI NỮ CÔNG SỞ CAO CẤP NHIỀU MẪU SIÊU HOT - SM761', 'ÁO SƠ MI NỮ CÔNG SỞ CAO CẤP NHIỀU MẪU Kiểu dáng: áo cổ sơ mi tay dài, vạt ngang Màu sắc: sọc đen trắng, chấm bi đen, chấm bi trắng Chất liệu: đũi sọc, voan 2 lớp Kích thước: 3 size M L xl - size M (46', '179.000', '109.000', 'https://media3.scdn.vn/img3/2019/8_17/aNTIGI_simg_de2fe0_500x500_maxb.jpg', 0, 0),
(9, 1, 'áo sơ mi nữ Thái Hòa - 04712', 'Áo sơ mi nữ Thái Hòa mã 047. Chất vải cotton và poly, mát, ít nhăn, dễ giặt ủi. Size S đến 5xl. Size S từ 38 đến 44kg Size M từ 45 đến 49kg Size L từ 50 đến 55kg Size xl từ 56 đến 59kg Size xxl từ 60 ', '320.000', '205.000', 'https://media3.scdn.vn/img4/2021/07_21/l4wDa6vXl8oaKIw5mydx_simg_de2fe0_500x500_maxb.jpg', 0, 0),
(10, 1, 'ÁO SƠ MI NỮ TAY BỒNG - SMN', 'ÁO SƠ MI NỮ TAY BỒNGÁo đã về chất lụa siêu nhẹ cao cấp /-heart /-heaĐơn giản nhẹ nhàng mà cực xinh và sang chảnh. Áo tay bồng sang chảnh lắm mix với quần sớ hoặc chân váy dài quá ưng luôn Size sml + S', '179.000', '109.000', 'https://media3.scdn.vn/img4/2020/03_15/HTu3m3QY0QWTr5V8F8Tf_simg_de2fe0_500x500_maxb.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `list_id_product` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ngaygiaodang` date NOT NULL,
  `totalPrice` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ptthanhtoan_id` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `message`, `list_id_product`, `ngaygiaodang`, `totalPrice`, `ptthanhtoan_id`) VALUES
(15, 0, 0, 'nguyễn văn ', 'canhac36h@gmail.com', '0372547633', 'hà nội', '', '', '0000-00-00', '', 0),
(16, 0, 0, 'nguyễn văn ', 'canhac36h@gmail.com', '0372547633', 'hà nội', '', '', '0000-00-00', '', 0),
(17, 0, 0, 'nguyễn văn ', 'vanlinh20192019@gmail.com', '0372547633', 'hà nội', '', '', '0000-00-00', '', 0),
(18, 0, 0, 'Nguyễn văn linh', 'canhac36h@gmail.com', '3672547655', 'Hà Nội', '', '1,2,8', '0000-00-00', '', 0),
(19, 0, 0, 'Nguyễn văn linh', 'canhac36h@gmail.com', '3672547655', 'Hà Nội', '', '2,3,4', '0000-00-00', '553', 0),
(20, 0, 0, 'Nguyễn văn linh', 'canhac36h@gmail.com', '3672547647', 'Hà Nội', '', '2,3,4', '0000-00-00', '553', 0),
(21, 0, 0, 'Nguyễn văn linh', 'canhac36h@gmail.com', '3672547651', 'Hà Nội', '', '2,3,4,7', '2021-11-30', '753.000', 0),
(22, 0, 0, 'Nguyễn văn A', 'canhac322226h@gmail.com', '03725468744', 'Hà Nội', '', '8', '2021-11-30', '179.000', 0),
(23, 0, 0, 'Nguyễn văn T', 'vant@gmail.com', '033333333', 'Thanh Hóa', '', '2,3,4,8', '2021-11-30', '732.000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ttthanhthoan`
--

CREATE TABLE `ttthanhthoan` (
  `id` int(11) NOT NULL,
  `mota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ttthanhthoan`
--

INSERT INTO `ttthanhthoan` (`id`, `mota`) VALUES
(1, 'Nhận tiền rồi thanh toán'),
(2, 'Chuyền khoản');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `address`) VALUES
(1, 'vanlinh', 'canhac36h@gmail.com', 'anhkhongha', '0981691489', 'Đạo Thượng - Tân hưng - Sóc sơn - Hà nội'),
(18, '', 'linh.nv187180@sis.hust.eud.vn', 'vanlinh', '', ''),
(19, '', 'Type here', 'Password', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartuser`
--
ALTER TABLE `cartuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ttthanhthoan`
--
ALTER TABLE `ttthanhthoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cartuser`
--
ALTER TABLE `cartuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ttthanhthoan`
--
ALTER TABLE `ttthanhthoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
