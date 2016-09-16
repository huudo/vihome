-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2016 at 07:08 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vihome`
--

-- --------------------------------------------------------

--
-- Table structure for table `design`
--

DROP TABLE IF EXISTS `design`;
CREATE TABLE IF NOT EXISTS `design` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `design`
--

INSERT INTO `design` (`id`, `name`) VALUES
(1, 'office'),
(2, 'living'),
(3, 'bedroom'),
(4, 'eating'),
(5, 'other');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `tittle` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `tittle` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `design_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `tittle`, `content`, `img`, `design_id`, `created_at`, `updated_at`) VALUES
(25, 'bai 2', '<p>adksk</p>\r\n', 'dscf3520_28668411866_o.jpg', 1, '2016-09-14 22:17:40', '2016-09-14 22:17:40'),
(24, 'Bai 1', '<p>asdsd</p>\r\n', 'dscf3516_28416177660_o.jpg', 1, '2016-09-14 22:16:11', '2016-09-14 22:16:11'),
(26, 'Khach 1', '<p>Khach 1</p>\r\n', 'dscf3517_28083519344_o.jpg', 2, '2016-09-14 22:18:28', '2016-09-14 22:18:28'),
(27, 'ưewe', '<p>eqwew</p>\r\n', 'dscf3518_28700762565_o.jpg', 2, '2016-09-14 23:53:02', '2016-09-14 23:53:02'),
(28, 'ads', '<p>ads</p>\r\n', 'dscf3517_28083519344_o.jpg', 1, '2016-09-15 00:20:17', '2016-09-15 00:20:17'),
(29, 'Chau', '<p>aj</p>\r\n', 'IMG_1051.JPG', 1, '2016-09-15 18:53:48', '2016-09-15 18:53:48'),
(30, 'TeSST', '<p>ETST</p>\r\n', 'IMG_1058.JPG', 1, '2016-09-15 19:56:26', '2016-09-15 19:56:26'),
(31, 'Nội thất phòng ăn mã dự án D1000AHJN', '<p><img alt="Gặp 2 mỹ nữ mặc bikini cả ngày không biết chán - 1" src="http://image.24h.com.vn/upload/3-2016/images/2016-09-16/1473991053-14730744917205-1.jpg" style="width:500px" /></p>\r\n\r\n<p>Hai blogger xinh đẹp&nbsp;của A&nbsp;<a href="http://www.24h.com.vn/bikini-dep-c78e3473.html">Bikini</a>&nbsp;A Day</p>\r\n\r\n<p>Nasha Oakley v&agrave;&nbsp;Devin Brugman lần đầu gặp nhau ở&nbsp;Maui 7 năm trước đ&acirc;y. Họ nhanh ch&oacute;ng trở th&agrave;nh đ&ocirc;i bạn th&acirc;n nhờ t&igrave;nh y&ecirc;u đối với thứ trang phục bikini. V&igrave; y&ecirc;u đồ tắm, cả hai đ&atilde; c&ugrave;ng nhau chụp rấy nhiều ảnh bikini. Blog A Bikini A Day đ&atilde; ra đời dựa tr&ecirc;n sở th&iacute;ch đăng ảnh bikini của c&aacute;c c&ocirc; g&aacute;i. V&agrave; cặp bạn g&aacute;i th&acirc;n thiết đ&atilde; kiếm được rất nhiều&nbsp;tiền nhờ sở th&iacute;ch n&agrave;y.&nbsp;</p>\r\n\r\n<p>Ban đầu, đ&ocirc;i bạn th&acirc;n coi blog A Bikini A Day như một blog về phong c&aacute;ch sống. Họ c&oacute; khoảng 30 bộ &aacute;o tắm v&agrave; chụp đủ tất cả ch&uacute;ng. Mỗi ng&agrave;y họ đăng một bộ h&igrave;nh với một bộ bikini. Điều n&agrave;y giống như hai c&ocirc; g&aacute;i đ&atilde; mặc &aacute;o tắm quanh năm. C&aacute;ch thức thể hiện đặc biệt đ&oacute; khiến A Bkini A Day g&acirc;y được ấn tượng mạnh v&agrave; trở th&agrave;nh một trong những&nbsp;blog thời trang độc đ&aacute;o v&agrave; hấp dẫn nhất&nbsp;tr&ecirc;n Internet.&nbsp;</p>\r\n\r\n<p><img alt="Gặp 2 mỹ nữ mặc bikini cả ngày không biết chán - 2" src="http://image.24h.com.vn/upload/3-2016/images/2016-09-16/1473991053-147307449195948-10-1468349184619.jpg" style="width:500px" /></p>\r\n\r\n<p>Blog A Bikini A Day thu h&uacute;t rất đ&ocirc;ng c&aacute;c t&iacute;n đồ &aacute;o tắm. Tại đ&acirc;y, họ c&oacute; thể cập nhật những mẫu đồ bơi mốt nhất, đọc c&aacute;c cảm nhận về bikini v&agrave; đồng cảm với th&ocirc;ng điệp tuổi trẻ m&agrave; thứ trang phục b&eacute; nhỏ n&agrave;y mang lại. C&aacute;c nh&atilde;n h&agrave;ng cũng muốn xuất hiện tr&ecirc;n A Bikini A Day.</p>\r\n\r\n<p>Hai c&ocirc; g&aacute;i cộng t&aacute;c với cả ngh&igrave;n nh&atilde;n h&agrave;ng v&agrave; đăng tải h&agrave;ng loạt bikini mới mỗi ng&agrave;y. Họ l&agrave;m việc với những nh&atilde;n h&agrave;ng thời trang &aacute;o tắm m&agrave; họ thực sự y&ecirc;u th&iacute;ch, kh&ocirc;ng chỉ v&igrave; tiền. Điều n&agrave;y khiến blog của họ kh&aacute; kh&aacute;ch quan v&agrave; đưa ra những lời khuy&ecirc;n hợp l&yacute; cho những người muốn t&igrave;m mẫu &aacute;o tắm ph&ugrave; hợp.&nbsp;</p>\r\n', 'IMG_1057.JPG', 4, '2016-09-15 20:25:49', '2016-09-15 20:25:49'),
(32, 'TESSSTEET', '<h2>Tư vấn thiết kế nội thất chung cư hiện đại</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">Tư vấn thiết kế nội thất chung cư hiện đại</a></p>\r\n\r\n<p><a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai"><img alt="Tư vấn thiết kế nội thất chung cư hiện đại" src="http://khonggianmo.vn/images/stories/tuvan/huyenkgm/chung%20cu/T_vn_thit_k_ni_tht_chung_c_hin_i_1.jpg" /></a><em><a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">Thiết kế nội thất chung cư hiện đại</a></em>&nbsp;l&agrave; việc&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that/thiet-ke-noi-that">thiết kế nội thất</a>&nbsp;v&agrave; bố tr&iacute; tất cả c&aacute;c sản phẩm nội thất v&agrave;o trong kh&ocirc;ng gian sao cho h&agrave;i h&ograve;a về&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-kien-truc/thiet-ke-kien-truc">kiến tr&uacute;c</a>, m&agrave;u sắc, &aacute;nh s&aacute;ng v&agrave; mang lại c&ocirc;ng năng sử dụng cao nhất cho mỗi sản phẩm nội thất.</p>\r\n\r\n<p>Trang tr&iacute; nội thất l&agrave; một bộ m&ocirc;n trong mỹ thuật ứng dụng hay c&ograve;n gọi l&agrave; mỹ thuật c&ocirc;ng nghiệp.V&igrave; vậy yếu tố thẩm mỹ,c&aacute;ch nh&igrave;n v&agrave; sự s&aacute;ng tạo của sản phẩm ph&ugrave; hợp cho từng kh&ocirc;ng gian l&agrave; quan trọng v&agrave; rất cần thiết. Đặc biệt hơn với xu hướng như hiện nay, việc<a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">&nbsp;thiết kế nội thất cho căn hộ chung cư hiện đại&nbsp;</a>v&agrave; cao cấp đ&ograve;i hỏi đội ngũ kiến tr&uacute;c sư c&oacute; tr&igrave;nh độ cao, c&oacute; năng lực thực sự để tạo l&ecirc;n những kh&ocirc;ng gian sống thật sự hiện đại, h&agrave;i h&ograve;a về m&agrave;u sắc đầy đủ về c&ocirc;ng năng m&agrave; tất cả mọi gia chủ đều h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Tại Việt nam hiện nay xu hướng<a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">&nbsp;thiết kế nội thất chung cư hiện đại&nbsp;</a>đ&atilde; trở l&ecirc;n chuy&ecirc;n nghiệp v&agrave; ph&aacute;t triển cực kỳ mạnh mẽ tại c&aacute;c th&agrave;nh phố lớn. Trong v&agrave;i năm trở lại đ&acirc;y&nbsp;<a href="http://khonggianmo.vn/khonggianmo.vn/">c&ocirc;ng ty CP Kiến Tr&uacute;c &amp; Nội Thất Kh&ocirc;ng Gian Mở</a>&nbsp;ch&uacute;ng t&ocirc;i đ&atilde; thiết kế v&agrave;&nbsp;<a href="http://khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-noi-that">thi c&ocirc;ng nội thất chung cư&nbsp;trọn g&oacute;i&nbsp;</a>cho h&agrave;ng ng&agrave;n căn hộ lớn nhỏ tr&ecirc;n khắp cả nước, tất cả đều hướng phong c&aacute;ch<a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">&nbsp;thiết kế nội thất hiện đại</a>&nbsp;với những sản phẩm nội thất th&ocirc;ng minh v&agrave; tinh tế đ&atilde; mang đến kh&ocirc;ng gian sống l&yacute; tưởng như thi&ecirc;n đường cho c&aacute;c hộ gia đ&igrave;nh.</p>\r\n\r\n<p><a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai"><img alt="Tư vấn thiết kế nội thất chung cư hiện đại" src="http://khonggianmo.vn/images/stories/tuvan/huyenkgm/chung%20cu/T_vn_thit_k_ni_tht_chung_c_hin_i_2.jpg" /></a></p>\r\n\r\n<p><a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">Tư vấn thiết kế nội thất chung cư hiện đại</a></p>\r\n\r\n<p>N&oacute;i đến&nbsp;<em><a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">thiết kế nội thất chung cư hiện đại</a></em>&nbsp;l&agrave; ch&uacute;ng ta nghĩ ngay đến kh&ocirc;ng gian tiện nghi v&agrave; sang trọng, nhưng để biết được thế n&agrave;o l&agrave; tiện nghi v&agrave; sang trọng th&igrave; ch&uacute;ng ta phải c&oacute; những tiếu chuẩn cụ thể, lấy đ&oacute; l&agrave;m thước đo&Acirc;&Acirc;&Acirc;&Acirc;&nbsp; th&igrave; mới được r&otilde; r&agrave;ng v&agrave; chuẩn x&aacute;c nhất.</p>\r\n\r\n<p>Trong&nbsp;<a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">thiết kế nội thất chung cư hiện đại</a>&nbsp;phải c&oacute; sự ph&acirc;n biệt r&otilde; r&agrave;ng giữa kh&ocirc;ng gian chung v&agrave; ri&ecirc;ng ngay từ khi bắt đầu n&ecirc;n &yacute; tưởng thiết kế nhằm t&aacute;ch biệt những khoảng kh&ocirc;ng gian với nhau v&agrave; thiết kế theo phong c&aacute;ch hiện đại ph&ugrave; hợp với mục đ&iacute;ch sử dụng của n&oacute;.</p>\r\n\r\n<p>Tạo ra kh&ocirc;ng gian mở, tho&aacute;ng đ&atilde;ng nhưng h&agrave;i h&ograve;a về bố cục, m&ocirc; h&igrave;nh sắp đặt vị tr&iacute; c&aacute;c ph&ograve;ng cũng như c&aacute;ch sắp xếp, b&agrave;i tr&iacute; những sản phẩm nội thất sao cho vừa đầy đủ về mặt tiện &iacute;ch, c&ocirc;ng năng, vừa mang đến kh&ocirc;ng gian hiện đại v&agrave; thực sự đẳng cấp.&nbsp;<a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">Ph&ograve;ng kh&aacute;ch</a>,&nbsp;<a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">ph&ograve;ng ngủ</a>,&nbsp;<a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">ph&ograve;ng ăn, ph&ograve;ng bếp</a>&nbsp;trong căn hộ tất cả đều phải được bố tr&iacute; trong sự t&iacute;nh to&aacute;n kỹ lưỡng,nhằm tạo ra sức h&uacute;t ri&ecirc;ng biệt về tổng thể cho tất cả c&aacute;c khoảng kh&ocirc;ng gian. Sức h&uacute;t n&agrave;y ch&iacute;nh l&agrave; sự mềm mại,sang trọng nhưng vẫn c&oacute; điểm nhấn cụ thể th&ocirc;ng qua m&agrave;u sắc, vận dụng trang tr&iacute; v&agrave; c&aacute;ch bố tr&iacute; nội thất khẳng định phong c&aacute;ch hiện đại cho to&agrave;n căn hộ.</p>\r\n\r\n<p><a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai"><img alt="Tư vấn thiết kế nội thất chung cư hiện đại" src="http://khonggianmo.vn/images/stories/tuvan/huyenkgm/chung%20cu/T_vn_thit_k_ni_tht_chung_c_hin_i_3.jpg" /></a></p>\r\n\r\n<p><a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">Tư vấn thiết kế nội thất chung cư hiện đại</a></p>\r\n\r\n<p><a href="http://khonggianmo.vn/noi-that-phong-khach/tu-van/phong-khach/">Nội thất ph&ograve;ng kh&aacute;ch&nbsp;</a>lu&ocirc;n chiếm một khoảng diện t&iacute;ch vừa đủ cho sinh hoạt gia đ&igrave;nh v&agrave; tiếp đ&oacute;n những vị kh&aacute;ch qu&yacute; khi tới thăm gia chủ, kh&ocirc;ng gian thanh lịch sang trọng đi k&egrave;m với những đồ vật trang tr&iacute; tinh tế, nội thất cao cấp v&agrave; hiện đại được thể hiện qua những bộ sofa,kệ ti vi, tủ rượu v&agrave; được kết hợp chặt chẽ với những chi tiết trang tr&iacute; tr&ecirc;n tường nhằm tạo ra một kh&ocirc;ng gian ấm c&uacute;ng m&agrave; tĩnh lặng, thư th&aacute;i m&agrave; nhẹ nh&agrave;ng mang đậm phong c&aacute;ch ri&ecirc;ng v&agrave; sở th&iacute;ch của từng gia chủ.</p>\r\n\r\n<p><a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai"><img alt="Tư vấn thiết kế nội thất chung cư hiện đại" src="http://khonggianmo.vn/images/stories/tuvan/huyenkgm/chung%20cu/T_vn_thit_k_ni_tht_chung_c_hin_i_4.jpg" /></a></p>\r\n\r\n<p><a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">Tư vấn thiết kế nội thất chung cư hiện đại</a></p>\r\n\r\n<p>Đối với&nbsp;<a href="http://khonggianmo.vn/noi-that-phong-bep/tu-van/phong-bep/">thiết kế nội thất ph&ograve;ng bếp&nbsp;</a>hướng đến sự tiện nghi, sang trọng, khu vực căn bếp phải thật tinh tế, tao nh&atilde; nhưng cũng thật rộng mở tho&aacute;ng đ&aacute;ng v&agrave; th&acirc;n thiện, hệ thống tủ c&oacute; thể kết hợp th&ecirc;m một số phụ kiện hiện đại gi&uacute;p những người nội trợ lu&ocirc;n ho&agrave;n th&agrave;nh tốt nhất nhiệm vụ của m&igrave;nh đ&oacute; l&agrave; mang đến những m&oacute;n ăn ngon mỗi ng&agrave;y cho tất cả c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh.</p>\r\n\r\n<p><a href="http://khonggianmo.vn/noi-that-phong-bep/tu-van/phong-bep/"><img alt="Tư vấn thiết kế nội thất chung cư hiện đại" src="http://khonggianmo.vn/images/stories/tuvan/huyenkgm/chung%20cu/T_vn_thit_k_ni_tht_chung_c_hin_i_5.jpg" /></a></p>\r\n\r\n<p><a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">Tư vấn thiết kế nội thất chung cư hiện đại</a></p>\r\n\r\n<p>Ph&ograve;ng ngủ l&agrave; nơi chiếm đến 1/4 thời gian của một ng&agrave;y của mỗi người ch&iacute;nh v&igrave; thế việc&nbsp;<a href="http://khonggianmo.vn/noi-that-phong-ngu/tu-van/noi-that-phong-ngu/">thiết kế nội thất ph&ograve;ng ngủ&nbsp;</a>cần được thiết kế với khoảng kh&ocirc;ng gian vừa đủ, kh&ocirc;ng qu&aacute; rộng v&agrave; cũng kh&ocirc;ng qu&aacute; hẹp. Đồng thời việc bố tr&iacute; c&aacute;c sản phẩm nội thất cần phải được tu&acirc;n thủ theo chuẩn nhất định nhằm kh&ocirc;ng bị ảnh hưởng tới giấc ngủ của mỗi người như ngủ kh&ocirc;ng s&acirc;u giấc hay lu&ocirc;n c&oacute; cảm gi&aacute;c bất an.</p>\r\n\r\n<p><a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai"><img alt="Tư vấn thiết kế nội thất chung cư hiện đại" src="http://khonggianmo.vn/images/stories/tuvan/huyenkgm/chung%20cu/T_vn_thit_k_ni_tht_chung_c_hin_i_6_.jpg" /></a></p>\r\n\r\n<p><a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">Tư vấn thiết kế nội thất chung cư hiện đại</a></p>\r\n\r\n<p>Khi&nbsp;<a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">thiết kế nội thất chung cư hiện đại</a>&nbsp;người kiến tr&uacute;c sư cũng phải cần phải ch&uacute; &yacute; đến c&aacute;c yếu tố tự nhi&ecirc;n như hướng nắng, hướng gi&oacute; v&agrave; hướng cửa ch&iacute;nh của gia chủ nhằm tạo ra những kh&ocirc;ng gian hợp l&yacute; nhất, c&ocirc;ng năng sử dụng thuận tiện nhất m&agrave; kh&ocirc;ng bị phạm v&agrave;o c&aacute;c yếu tố phong thủy gi&uacute;p cho gia chủ v&agrave; c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh lu&ocirc;n c&oacute; sức khỏe tốt v&agrave; l&agrave;m việc học tập tốt.</p>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; phong c&aacute;ch&nbsp;<a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/tu-van-thiet-ke-noi-that-chung-cu-hien-dai">thiết kế nội thất chung cư hiện đại</a>&nbsp;m&agrave; c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; tư vấn<a href="http://khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-noi-that">&nbsp;thiết kế v&agrave; thi c&ocirc;ng trọn g&oacute;i&nbsp;</a>cho rất nhiều căn hộ ở những khu đ&ocirc; thị cao cấp bấc nhất. Qu&yacute; kh&aacute;ch h&agrave;ng đang c&oacute; nhu cầu t&igrave;m đơn vị tư vấn&nbsp;<a href="http://khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-noi-that">thiết kế v&agrave; thi c&ocirc;ng nội thất</a>&nbsp;chuy&ecirc;n nghiệp h&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i để ch&uacute;ng t&ocirc;i l&agrave;m đẹp cho ng&ocirc;i của bạn.</p>\r\n\r\n<p><strong>Ch&uacute;ng t&ocirc;i nhận l&agrave;m trọn g&oacute;i&nbsp;</strong><a href="http://www.khonggianmo.vn/tu-van/tu-van-xay-dung/xay-nha-tron-goi"><strong>HO&Agrave;N THIỆN NỘI THẤT</strong></a><strong>&nbsp;gồm:&Acirc;&Acirc;&Acirc;&Acirc;&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-noi-that"><strong>THIẾT KẾ KIẾN TR&Uacute;C V&Agrave; NỘI THẤT</strong></a></li>\r\n	<li><strong><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-noi-that">THI C&Ocirc;NG NỘI THẤT BIỆT</a></strong>:&nbsp;<strong><em>Tr&ecirc;n nhiều chất liệu như</em></strong>:&nbsp;<em>Gỗ tự nhi&ecirc;n (&nbsp;<strong>gỗ Hương, gỗ Sồi, Dổi, Lim, Căm Xe, Xoan Đ&agrave;o</strong>), gỗ&nbsp;Veneer,&nbsp;Laminate, MFC, MDF, kết hợp vật liệu kh&aacute;c.</em></li>\r\n	<li><strong><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/cai-tao-xay-dung">CẢI TẠO</a>&nbsp;sửa chữa cải tạo nh&agrave;, ho&agrave;n thiện x&acirc;y dựng, Thi c&ocirc;ng điện nước, thạch cao vv...</strong></li>\r\n</ul>\r\n\r\n<p><strong><em>VỚI TI&Ecirc;U CH&Iacute;:&nbsp;</em></strong><em><strong>&ldquo;Gi&aacute; th&agrave;nh ph&ugrave; hợp&nbsp;-Chất lượng đảm bảo- Tiến độ nhanh-Dịch vụ hậu m&atilde;i tốt&rdquo;</strong></em></p>\r\n\r\n<p><img alt="alt" src="http://www.khonggianmo.vn/images/stories/hotline.jpg" style="height:56px; width:140px" /></p>\r\n\r\n<p><em><strong>Ch&uacute;ng t&ocirc;i cam kết 100% chất lượng sản phẩm đạt theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng.</strong></em></p>\r\n\r\n<p><em><strong>H&atilde;y gọi cho ch&uacute;ng t&ocirc;i, để bạn được phục vụ ( FREE)</strong></em></p>\r\n', 'IMG_1055.JPG', 1, '2016-09-15 23:28:27', '2016-09-15 23:28:27'),
(33, 'dfasfasf', '<p>sfasfsafsafs</p>\r\n', 'IMG_1058.JPG', 1, '2016-09-15 23:39:24', '2016-09-15 23:39:24'),
(34, 'fasf', '<p>sfasfasf</p>\r\n', 'IMG_1061.JPG', 2, '2016-09-16 00:00:58', '2016-09-16 00:00:58'),
(35, 'adsdsdsdasd', '<p>fsaf</p>\r\n', 'IMG_1049.JPG', 2, '2016-09-16 00:02:40', '2016-09-16 00:02:40'),
(36, 'adsdsdsdasd', '<p>fsaf</p>\r\n', 'IMG_1057.JPG', 2, '2016-09-16 00:03:29', '2016-09-16 00:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `project_img`
--

DROP TABLE IF EXISTS `project_img`;
CREATE TABLE IF NOT EXISTS `project_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_project` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_img`
--

INSERT INTO `project_img` (`id`, `url`, `id_project`, `created_at`, `updated_at`) VALUES
(27, 'dscf3517_28083519344_o.jpg', 28, '2016-09-15 00:20:17', '2016-09-15 00:20:17'),
(26, 'dscf3518_28700762565_o.jpg', 27, '2016-09-14 23:53:02', '2016-09-14 23:53:02'),
(25, 'dscf3518_28700762565_o.jpg', 26, '2016-09-14 22:18:28', '2016-09-14 22:18:28'),
(24, 'dscf3517_28083519344_o.jpg', 26, '2016-09-14 22:18:28', '2016-09-14 22:18:28'),
(23, 'dscf3521_28084899913_o.jpg', 25, '2016-09-14 22:17:40', '2016-09-14 22:17:40'),
(22, 'dscf3520_28668411866_o.jpg', 25, '2016-09-14 22:17:40', '2016-09-14 22:17:40'),
(21, 'dscf3517_28083519344_o.jpg', 24, '2016-09-14 22:16:11', '2016-09-14 22:16:11'),
(20, 'dscf3516_28416177660_o.jpg', 24, '2016-09-14 22:16:11', '2016-09-14 22:16:11'),
(28, 'IMG_1051.JPG', 29, '2016-09-15 18:53:48', '2016-09-15 18:53:48'),
(29, 'IMG_1055.JPG', 29, '2016-09-15 18:53:48', '2016-09-15 18:53:48'),
(30, 'IMG_1058.JPG', 30, '2016-09-15 19:56:26', '2016-09-15 19:56:26'),
(31, 'IMG_1087.JPG', 30, '2016-09-15 19:56:26', '2016-09-15 19:56:26'),
(32, 'IMG_1088.JPG', 30, '2016-09-15 19:56:26', '2016-09-15 19:56:26'),
(33, 'IMG_1089.JPG', 30, '2016-09-15 19:56:26', '2016-09-15 19:56:26'),
(34, 'IMG_1093.JPG', 30, '2016-09-15 19:56:26', '2016-09-15 19:56:26'),
(35, 'IMG_1095.JPG', 30, '2016-09-15 19:56:26', '2016-09-15 19:56:26'),
(36, 'IMG_1057.JPG', 31, '2016-09-15 20:25:49', '2016-09-15 20:25:49'),
(37, 'IMG_1058.JPG', 31, '2016-09-15 20:25:49', '2016-09-15 20:25:49'),
(38, 'IMG_1059.JPG', 31, '2016-09-15 20:25:49', '2016-09-15 20:25:49'),
(39, 'IMG_1061.JPG', 31, '2016-09-15 20:25:49', '2016-09-15 20:25:49'),
(40, 'IMG_1055.JPG', 32, '2016-09-15 23:28:27', '2016-09-15 23:28:27'),
(41, 'IMG_1058.JPG', 32, '2016-09-15 23:28:27', '2016-09-15 23:28:27'),
(42, 'IMG_1058.JPG', 33, '2016-09-15 23:39:24', '2016-09-15 23:39:24'),
(43, 'IMG_1061.JPG', 34, '2016-09-16 00:00:58', '2016-09-16 00:00:58'),
(44, 'IMG_1049.JPG', 35, '2016-09-16 00:02:40', '2016-09-16 00:02:40'),
(45, 'IMG_1055.JPG', 35, '2016-09-16 00:02:40', '2016-09-16 00:02:40'),
(46, 'IMG_1058.JPG', 35, '2016-09-16 00:02:40', '2016-09-16 00:02:40'),
(47, 'IMG_1057.JPG', 36, '2016-09-16 00:03:29', '2016-09-16 00:03:29'),
(48, 'IMG_1058.JPG', 36, '2016-09-16 00:03:29', '2016-09-16 00:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vihome', 'noithatvihome.vn@gmail.com', '$2y$10$fGvfdYyUMMB9eCoaiWp/OeHCflvP/jXUdIHYffmqxl9SC2X3ZLkHq', 'CWOR4jjNSz1BrasY96fhhteZ8XECsThELSWUOMD40TbfhRG3q5UJ6JWBpaLW', '2016-09-08 19:04:47', '2016-09-15 18:53:29');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
