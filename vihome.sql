-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2016 at 06:23 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `tittle`, `content`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Bai viet moiws', '<p>adsds</p>\r\n', 'IMG_1051.JPG', '2016-09-18 19:01:10', '2016-09-18 19:01:10'),
(2, 'AHHHHHHHHHHHHHH', '<p>AAAHHHHHHHHHHHHHH</p>\r\n', 'IMG_1057.JPG', '2016-09-18 19:04:13', '2016-09-18 19:04:13'),
(3, 'fdfd', '<p>ffdfd</p>\r\n', 'IMG_1058.JPG', '2016-09-18 21:21:43', '2016-09-18 21:21:43');

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
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `tittle`, `content`, `img`, `design_id`, `created_at`, `updated_at`) VALUES
(41, 'Thiết kế chung cư Royal City', '<p><strong>C&ocirc;ng tr&igrave;nh:&nbsp;</strong><strong>THIẾT KẾ CHƯNG CƯ ROYAL CITY - VINCOM GROUP</strong></p>\r\n\r\n<p><strong>Dự &aacute;n</strong>&nbsp;: &nbsp;&nbsp;<strong>Thiết kế chung cư</strong>&nbsp;t&acirc;n cổ điển, Thi c&ocirc;ng nội thất chung cư</p>\r\n\r\n<p><strong>Hạng mục:</strong>&nbsp;Thi c&ocirc;ng cải tạo chung cư, ho&agrave;n thiện nội thất</p>\r\n\r\n<p><strong>Quy m&ocirc; dự &aacute;n:</strong>&nbsp;S &gt;150 m2, 03 P Ngủ , 01 P.Kh&aacute;ch, 01 P. Bếp</p>\r\n\r\n<p><strong>Đơn vị thực hiện: Cty CP kiến tr&uacute;c v&agrave; Nội thất KH&Ocirc;NG GIAN MỞ</strong></p>\r\n\r\n<p><strong>Thiết kế: KTS Nguyễn Văn Bi&ecirc;n, KTS: Nguyễn Hữu Chiến</strong></p>\r\n\r\n<p><strong>Thời Gian thực hiện thiết kế: 3/04/2013 đến 15/5/2013</strong></p>\r\n\r\n<p>Chung cư Royal City Tại H&agrave; Nội l&agrave; một trong những dự &aacute;n lớn của Vincom Group. Đ&acirc;y dự &aacute;n chung cư hạng cao cấp bậc nhất. Được thiết kế đồng bộ. C&aacute;c kh&aacute;ch h&agrave;ng khi lựa chọn mua tại đ&acirc;y đều c&oacute; những y&ecirc;u cầu rất khắt khe về thiết kế.</p>\r\n\r\n<p>Khi nhận được th&ocirc;ng tin của chủ nh&agrave; l&agrave;: Thiết kế nội thất chung cư Royal city theo phong c&aacute;ch t&acirc;n cổ điển, thi&ecirc;n về hiện đại. Nhưng phải đảm bảo sự sang trọng qu&yacute; ph&aacute;i, xứng tầm với dự &aacute;n v&agrave; căn hộ cao cấp. C&aacute;c KTS của Kh&ocirc;ng Gian Mở đ&atilde; bắt tay v&agrave; thiết kế. Với &yacute; tưởng l&agrave; sử dụng chất liệu gỗ tự nhi&ecirc;n, kết hợp với gỗ c&ocirc;ng nghiệp. Tạo ra nhưng mảng khối Decor rất qu&yacute; ph&aacute;i, mang đậm c&aacute; t&iacute;nh của chủ nh&agrave;.</p>\r\n\r\n<p><img alt="Phòng ngủ chung cu Royal" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_18.jpg" /></p>\r\n\r\n<p><img alt="Phòng ngủ chung cu Royal-v2" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_16.jpg" /></p>\r\n\r\n<p><img alt="Phòng ngủ chung cu Royal-v3" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_15.jpg" /></p>\r\n\r\n<p><img alt="Phòng ngủ chung cu Royal-v3" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_14.jpg" /></p>\r\n\r\n<p><img alt="Phòng ngủ chung cu Royal-v4" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_13.jpg" /></p>\r\n\r\n<p><img alt="Phòng khách chung cu Royal" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_12.jpg" /></p>\r\n\r\n<p><img alt="Phòng khách chung cu Royal-v2" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_11.jpg" /></p>\r\n\r\n<p><img alt="Phòng bếp- v1- chung cu Royal" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_10.jpg" /></p>\r\n\r\n<p><img alt="Phòng bếp- v1- chung cu Royal" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_9.jpg" /></p>\r\n\r\n<p><img alt="Phòng khách- v3- chung cu Royal" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_8.jpg" /></p>\r\n\r\n<p><img alt="Phòng khách-v4- chung cu Royal" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_7.jpg" /></p>\r\n\r\n<p><img alt=" chung cu Royal" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_6.jpg" /></p>\r\n\r\n<p><img alt="Phòng WC- chung cu Royal" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_5.jpg" /></p>\r\n\r\n<p><img alt="" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_4.jpg" /></p>\r\n\r\n<p><img alt="" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_3.jpg" /></p>\r\n\r\n<p><img alt="" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_2.jpg" /></p>\r\n\r\n<p><img alt="" src="http://hoanthiennoithat.vn/images/ThietKeChungCu/chungcu_Royal/chung_cu_Royal_1.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>(&nbsp;<a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-do-go"><strong>B&Aacute;O GI&Aacute; THI C&Ocirc;NG NỘI THẤT</strong></a>&nbsp;)</p>\r\n\r\n<p><a href="http://www.khonggianmo.vn/WWW.KHONGGIANMO.VN">WWW.KHONGGIANMO.VN</a></p>\r\n\r\n<p>C&ocirc;ng ty&nbsp;<strong>KH&Ocirc;NG GIAN MỞ</strong>&nbsp;ch&uacute;ng t&ocirc;i l&agrave; đơn vị trực tiếp thiết kế,&nbsp;<strong><a href="http://www.khonggianmo.vn/thiet-ke-noi-that-nha-hang/dich-vu/thiet-ke-noi-that-nha-hang/">thi c&ocirc;ng trọn g&oacute;i nội thất</a></strong>.Với nhiều năm kinh nghiệm trong nghề, c&ocirc;ng ty đ&atilde; ho&agrave;n th&agrave;nh nhiều c&ocirc;ng tr&igrave;nh lớn, c&oacute; chất lượng cao tr&ecirc;n khắp cả nước.<strong>&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-chung-cu/chung-cu-vinaconex1">THIẾT KẾ V&Agrave; THI C&Ocirc;NG NỘI THẤT CHUNG CƯ</a></strong>&nbsp;l&agrave; một thế mạnh của Kh&ocirc;ng Gian Mở. Ch&uacute;ng t&ocirc;i đ&atilde; ho&agrave;n th&agrave;nh nhiều c&ocirc;ng tr&igrave;nh chung cư cao cấp c&oacute; chất lượng cao.</p>\r\n\r\n<p><strong>Ch&uacute;ng t&ocirc;i nhận l&agrave;m trọn g&oacute;i&nbsp;<a href="http://khonggianmo.vn/thiet-ke-noi-that-chung-cu/dich-vu/thiet-ke-noi-that-chung-cu/">nội thất chung cư</a>&nbsp;c&aacute;c hạng mục gồm:&nbsp;</strong><br />\r\n*<a href="http://khonggianmo.vn/thiet-ke-noi-that-chung-cu/dich-vu/thiet-ke-noi-that-chung-cu/">Thiết kế nội thất chung cư</a></p>\r\n\r\n<p>*&nbsp;<a href="http://khonggianmo.vn/thiet-ke-noi-that-chung-cu/dich-vu/thiet-ke-noi-that-chung-cu/">Thi c&ocirc;ng nội thất chung cư</a>:&nbsp;<em>Gỗ tự nhi&ecirc;n, gỗ Veneer, Laminate, MFC, MDF, kết hợp vật liệu kh&aacute;c.</em></p>\r\n\r\n<p>*&nbsp;<a href="http://khonggianmo.vn/dich-vu/thi-cong-noi-that/thach-cao">Thi c&ocirc;ng Thạch cao</a>&nbsp;- Điện nước - S&agrave;n gỗ - Giấy d&aacute;n tường.</p>\r\n', 'IMG_1050.JPG', 0, '2016-09-18 21:27:23', '2016-09-18 21:27:23'),
(39, 'Thiết kế nội thất biệt thự Thanh Hóa', '<p><a href="http://khonggianmo.vn/noi-that-phong-khach/tu-van/phong-khach/">Nội thất ph&ograve;ng kh&aacute;ch</a>&nbsp;v&agrave; bếp của căn biệt thự Thanh H&oacute;a được t&aacute;ch biệt nhau nhờ một bức v&aacute;ch ngăn lớn, vừa c&oacute; t&aacute;c dụng l&agrave; mảng trang tr&iacute; cho căn ph&ograve;ng, vừa tạo được kh&ocirc;ng gian ri&ecirc;ng tư cho từng khu vực. Nội thất ph&ograve;ng bếp của căn biệt thự được thiết kế hiện đại với đầy đủ tiện nghi phục vụ cho c&ocirc;ng việc nội trợ của gia đ&igrave;nh.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/BT-thanhHoa/thiet-ke-noi-that-biet-thu-thanh-hoa-3.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/noi-that-phong-bep/tu-van/phong-bep/">Thiết kế nội thất ph&ograve;ng bếp</a>&nbsp;biệt thự Thanh H&oacute;a<img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/BT-thanhHoa/thiet-ke-noi-that-biet-thu-thanh-hoa-4.jpg" /></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/BT-thanhHoa/thiet-ke-noi-that-biet-thu-thanh-hoa-5.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-biet-thu/thiet-ke-noi-that-biet-thu-thanh-hoa"><em>Thiết kế nội thất biệt thự Thanh H&oacute;a</em></a></p>\r\n\r\n<p><a href="http://khonggianmo.vn/noi-that-phong-ngu/tu-van/noi-that-phong-ngu/">Nội thất ph&ograve;ng ngủ</a>&nbsp;con trai của biệt thự Thanh H&oacute;a được thiết kế theo phong c&aacute;ch hiện đại trẻ trung với gam mầu xanh trắng nhẹ nh&agrave;ng tươi trẻ. Mảng ốp đầu giường của ph&ograve;ng ngủ được c&aacute;c KTS của&nbsp;<a href="http://thietkekgm.vn/">thiết kế KGM</a>&nbsp;s&aacute;ng tạo th&agrave;nh những thanh sọc đứng to nhỏ kh&aacute;ch nhau, đem tới cảm gi&aacute;c nam t&iacute;nh v&agrave; mạnh mẽ ph&ugrave; hợp với lứa tuổi của chủ nh&acirc;n căn ph&ograve;ng.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/BT-thanhHoa/thiet-ke-noi-that-biet-thu-thanh-hoa-9.jpg" /></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/BT-thanhHoa/thiet-ke-noi-that-biet-thu-thanh-hoa-6.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-biet-thu/thiet-ke-noi-that-biet-thu-thanh-hoa">Thiết kế nội thất biệt thự Thanh H&oacute;a</a></p>\r\n\r\n<p>Ph&ograve;ng ngủ ch&iacute;nh của căn biệt thự Thanh H&oacute;a được<em>&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that/thiet-ke-noi-that">thiết kế nội thất</a></em>&nbsp;theo hướng nhẹ nh&agrave;ng, qu&yacute; tộc nhưng vẫn to&aacute;t l&ecirc;n vẻ đẹp hiện đại c&ugrave;ng đồ nội thất cao cấp đ&atilde; n&acirc;ng tầm gi&aacute; trị cho căn ph&ograve;ng ngủ của căn biệt thự l&ecirc;n rất nhiều.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/BT-thanhHoa/thiet-ke-noi-that-biet-thu-thanh-hoa-7.jpg" /></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/BT-thanhHoa/thiet-ke-noi-that-biet-thu-thanh-hoa-10.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-biet-thu/thiet-ke-noi-that-biet-thu-thanh-hoa"><strong>Thiết kế nội thất biệt thự Thanh H&oacute;a</strong></a></p>\r\n\r\n<p><strong>Ch&uacute;ng t&ocirc;i nhận l&agrave;m trọn g&oacute;i:</strong><a href="http://www.khonggianmo.vn/tu-van/tu-van-xay-dung/xay-nha-tron-goi"><strong>HO&Agrave;N THIỆN NỘI THẤT</strong></a><strong>gồm:</strong></p>\r\n\r\n<ul>\r\n	<li><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-noi-that"><strong>THIẾT KẾ KIẾN TR&Uacute;C V&Agrave; NỘI THẤT</strong></a></li>\r\n	<li><strong><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-noi-that">THI C&Ocirc;NG NỘI THẤT</a></strong>:<strong><em>Tr&ecirc;n nhiều chất liệu như</em></strong>:<em>Gỗ tự nhi&ecirc;n (<strong>gỗ Hương, gỗ Sồi, Dổi, Lim, Căm Xe, Xoan Đ&agrave;o</strong>), gỗVeneer,Laminate, MFC, MDF, kết hợp vật liệu kh&aacute;c.</em></li>\r\n	<li><strong><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/cai-tao-xay-dung">CẢI TẠO</a>:sửa chữa cải tạo nh&agrave;,</strong><strong>ho&agrave;n thiện x&acirc;y dựng, Thi c&ocirc;ng điện nước, thạch cao vv...</strong></li>\r\n</ul>\r\n\r\n<p><strong><em>VỚI TI&Ecirc;U CH&Iacute;:</em></strong><em><strong>&ldquo;Gi&aacute; th&agrave;nh ph&ugrave; hợp-Chất lượng đảm bảo-Tiến độ nhanh-Dịch vụ hậu m&atilde;i tốt&rdquo;</strong></em></p>\r\n', 'IMG_1048.JPG', 1, '2016-09-18 21:12:54', '2016-09-18 21:12:54'),
(40, 'Nội thất phòng khách tân cổ điển sang trọng', '<p>được thiết kế theo phong c&aacute;ch t&acirc;n cổ điển lu&ocirc;n g&acirc;y được ấn tượng mạnh mẽ đối với những ai y&ecirc;u th&iacute;ch sự tinh tế, đẳng cấp v&agrave; sang trọng. Những bộ b&agrave;n ghế sofa cho đến những chiếc đ&egrave;n ch&ugrave;m c&ugrave;ng những đồ trang tr&iacute; nội thất kh&aacute;c trong căn ph&ograve;ng kh&aacute;ch lu&ocirc;n được chăm ch&uacute;t một c&aacute;ch tỉ mỉ với những đường n&eacute;t hoa văn uốn lượn tinh tế chắc chắn sẽ đem lại sự h&agrave;i l&ograve;ng cho chủ nh&acirc;n ng&ocirc;i nh&agrave;.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/tuvan/khach.TCD/noi-that-phong-khach-tan-co-dien-sang-trong-5.jpg" /></p>\r\n\r\n<p>Nội thất ph&ograve;ng kh&aacute;ch t&acirc;n cổ điển sang trọng</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/tuvan/khach.TCD/noi-that-phong-khach-tan-co-dien-sang-trong-1.jpg" /></p>\r\n\r\n<p><strong>Ch&uacute;ng t&ocirc;i nhận l&agrave;m trọn g&oacute;i:</strong><a href="http://www.khonggianmo.vn/tu-van/tu-van-xay-dung/xay-nha-tron-goi"><strong>HO&Agrave;N THIỆN NỘI THẤT</strong></a><strong>gồm:</strong></p>\r\n\r\n<ul>\r\n	<li><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-noi-that"><strong>THIẾT KẾ KIẾN TR&Uacute;C V&Agrave; NỘI THẤT</strong></a></li>\r\n	<li><strong><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-noi-that">THI C&Ocirc;NG NỘI THẤT</a></strong>:<strong><em>Tr&ecirc;n nhiều chất liệu như</em></strong>:<em>Gỗ tự nhi&ecirc;n (<strong>gỗ Hương, gỗ Sồi, Dổi, Lim, Căm Xe, Xoan Đ&agrave;o</strong>), gỗVeneer,Laminate, MFC, MDF, kết hợp vật liệu kh&aacute;c.</em></li>\r\n	<li><strong><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/cai-tao-xay-dung">CẢI TẠO</a>:<a href="http://noithatmbhome.com/">sửa chữa cải tạo nh&agrave;</a>,</strong><strong>ho&agrave;n thiện x&acirc;y dựng, Thi c&ocirc;ng điện nước, thạch cao vv...</strong></li>\r\n</ul>\r\n', 'IMG_1098.JPG', 2, '2016-09-18 21:18:12', '2016-09-18 21:18:12'),
(38, 'Những mẫu thiết kế kiến trúc biệt thự siêu đẹp', '<p>Ng&agrave;y nay c&ugrave;ng với sự ph&aacute;t triển vượt bậc về kinh tế m&agrave; đời sống của người d&acirc;n trong c&aacute;c th&agrave;nh phố cũng như c&aacute;c ngoại th&agrave;nh kh&aacute;c đ&atilde; tăng l&ecirc;n rất nhiều. Nhu cầu ăn ngon, mặc đẹp, sống tiện nghi thoải m&aacute;i l&agrave; điều ai cũng muốn c&oacute;. Ch&iacute;nh v&igrave; vậy mọi người thường mong muốn được sở hữu ri&ecirc;ng cho m&igrave;nh 1 trong&nbsp;<a href="http://khonggianmo.vn/tu-van/tu-van-kien-truc/nhung-mau-thiet-ke-kien-truc-biet-thu-sieu-dep">những mẫu thiết kế kiến tr&uacute;c biệt sự si&ecirc;u đẹp</a>, để c&oacute; thể nghỉ ngơi thư gi&atilde;n vui vẻ b&ecirc;n gia đ&igrave;nh thay v&igrave; phải sống trong những căn nh&agrave; chật hẹp&hellip; Trong b&agrave;i viết n&agrave;y&nbsp;<a href="http://khonggianmo.vn/">nội thất KGM</a>&nbsp;sẽ giới thiệu tới c&aacute;c bạn&nbsp;<a href="http://khonggianmo.vn/tu-van/tu-van-kien-truc/nhung-mau-thiet-ke-kien-truc-biet-thu-sieu-dep"><em>những mẫu thiết kế kiến tr&uacute;c biệt thự si&ecirc;u đẹp</em></a>&nbsp;để c&aacute;c bạn c&oacute; thể tham khảo v&agrave; &aacute;p dụng cho gia đ&igrave;nh m&igrave;nh khi c&oacute; nhu cầu.</p>\r\n\r\n<p>Trong ng&agrave;nh&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-kien-truc/thiet-ke-kien-truc">thiết kế kiến tr&uacute;c</a>&nbsp;v&agrave;&nbsp;<a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/thiet-ke-noi-that/">thiết kế nội thất</a>&nbsp;th&igrave; mọi c&ocirc;ng tr&igrave;nh đều cần phải c&oacute; sự t&igrave;m t&ograve;i s&aacute;ng tạo của c&aacute;c KTS tr&ecirc;n c&aacute;c bản vẽ&hellip; Từ việc thiết kế nh&agrave; l&ocirc; phố hay&nbsp;<a href="http://khonggianmo.vn/thiet-ke-noi-that-chung-cu/dich-vu/thiet-ke-noi-that-chung-cu/">thiết kế nội thất chung cư</a>&nbsp;cho tới c&aacute;c thiết kế cao cấp hơn l&agrave;&nbsp;<a href="http://khonggianmo.vn/thiet-ke-kien-truc-nha-hang/tu-van/tu-van-kien-truc/">thiết kế kiến tr&uacute;c biệt thự</a>&nbsp;đều đỏi hỏi con mắt thẩm mĩ cũng như sự s&aacute;ng tạo, kh&eacute;o l&eacute;o để x&acirc;y n&ecirc;n những ng&ocirc;i nh&agrave; đẹp với c&ocirc;ng năng sử dụng tiện &iacute;ch, ph&ugrave; hợp với nhu cầu v&agrave; sở th&iacute;ch của mọi th&agrave;nh vi&ecirc;n sống trong c&ugrave;ng 1 gia đ&igrave;nh.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/Bietthudep/nhung-mau-thiet-ke-biet-thu-sieu-dep-3.jpg" /></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/Bietthudep/nhung-mau-thiet-ke-biet-thu-sieu-dep-1.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/tu-van/tu-van-kien-truc/nhung-mau-thiet-ke-kien-truc-biet-thu-sieu-dep">Những mẫu thiết kế kiến tr&uacute;c biệt thự si&ecirc;u đẹp</a></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/Bietthudep/nhung-mau-thiet-ke-biet-thu-sieu-dep-4.jpg" /></p>\r\n\r\n<p>Đối với những gia đ&igrave;nh c&oacute; diện t&iacute;ch rộng th&igrave; việc&nbsp;<a href="http://khonggianmo.vn/thiet-ke-kien-truc-nha-hang/tu-van/tu-van-kien-truc/"><em>thiết kế kiến tr&uacute;c biệt thự</em></a>&nbsp;quả l&agrave; việc kh&aacute; đau đầu đối với chủ đầu tư, bời họ c&oacute; những sở th&iacute;ch v&agrave; &yacute; tưởng về ng&ocirc;i nh&agrave; của m&igrave;nh trong đầu nhưng lại kh&ocirc;ng biết l&agrave;m sao để thực hiện được trọn vẹn &yacute; tưởng đ&oacute; 1 c&aacute;ch ho&agrave;n hảo nhất. L&uacute;c đ&oacute; c&aacute;c KTS ch&iacute;nh l&agrave; người c&oacute; thể truyền tải được đầy đủ nhất những &yacute; tưởng của chủ nh&agrave; trở th&agrave;nh 1 kh&ocirc;ng gian sống mơ ước của mọi th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh.</p>\r\n\r\n<p>Th&ocirc;ng thường thiết kế biệt thự c&aacute;c KTS thường chỉ sử dụng 1/2 đến 2/3 diện t&iacute;ch đất để x&acirc;y nh&agrave; c&ograve;n lại l&agrave; s&acirc;n vườn v&agrave; tiểu cảnh, căn biệt thự cũng được thiết kế theo lối mở, với nhiều cửa sổ v&agrave; ban c&ocirc;ng rộng th&ocirc;ng tho&aacute;ng ra b&ecirc;n ngo&agrave;i, với b&atilde;i cỏ, c&ugrave;ng h&agrave;ng c&acirc;y xanh ngắt, đ&ocirc;i khi lại l&agrave; 1 hồ bơi trong xanh, m&aacute;t lạnh gi&uacute;p mọi người thư gi&atilde;n trong những ng&agrave;y h&egrave; n&oacute;ng nực&hellip;</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/Bietthudep/nhung-mau-thiet-ke-biet-thu-sieu-dep-5.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/tu-van/tu-van-kien-truc/nhung-mau-thiet-ke-kien-truc-biet-thu-sieu-dep"><em>Những mẫu thiết kế kiến tr&uacute;c biệt thự si&ecirc;u đẹp</em></a></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/Bietthudep/nhung-mau-thiet-ke-biet-thu-sieu-dep-6.jpg" /></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/Bietthudep/nhung-mau-thiet-ke-biet-thu-sieu-dep-7.jpg" />Những mẫu thiết kế kiến tr&uacute;c biệt thự si&ecirc;u đẹp</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/Bietthudep/nhung-mau-thiet-ke-biet-thu-sieu-dep-8.jpg" /></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/Bietthudep/nhung-mau-thiet-ke-biet-thu-sieu-dep-10.jpg" /><a href="http://khonggianmo.vn/tu-van/tu-van-kien-truc/nhung-mau-thiet-ke-kien-truc-biet-thu-sieu-dep"><strong>Những mẫu thiết kế kiến tr&uacute;c biệt thự si&ecirc;u đẹp</strong></a></p>\r\n\r\n<p><em><strong>Nguồn ảnh : ST</strong></em></p>\r\n\r\n<p><strong>Ch&uacute;ng t&ocirc;i nhận l&agrave;m HO&Agrave;N THIỆN NỘI THẤT gồm:</strong></p>\r\n\r\n<ul>\r\n	<li><strong><a href="http://khonggianmo.vn/dich-vu/thiet-ke-kien-truc/thiet-ke-kien-truc">THIẾT KẾ KIẾN TR&Uacute;C</a>v&agrave;</strong><strong><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that/thiet-ke-noi-that">THIẾT KẾ NỘI THẤT</a></strong></li>\r\n	<li><strong><a href="http://khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-noi-that">THI C&Ocirc;NG NỘI THẤT</a>:</strong><strong><em>Tr&ecirc;n nhiều chất liệu như</em></strong>:<em>Gỗ tự nhi&ecirc;n (<strong>gỗ Hương, gỗ Sồi, Dổi, Lim, Căm Xe, Xoan Đ&agrave;o</strong>), gỗVeneer,Laminate, MFC, MDF, kết hợp vật liệu kh&aacute;c.</em></li>\r\n	<li><strong>CẢI TẠO: sửa chữa cải tạo nh&agrave;, ho&agrave;n thiện x&acirc;y dựng, Thi c&ocirc;ng điện nước, thạch cao vv...</strong></li>\r\n</ul>\r\n\r\n<p><strong><em>VỚI TI&Ecirc;U CH&Iacute;:</em></strong><em><strong>&ldquo;Gi&aacute; th&agrave;nh ph&ugrave; hợp - Chất lượng đảm bảo -Tiến độ nhanh - Dịch vụ hậu m&atilde;i tốt&rdquo;</strong></em></p>\r\n\r\n<p><img alt="hotline-KGM-dong-ok" src="http://thietkekgm.vn/wp-content/uploads/2015/12/hotline-KGM-dong-ok.gif" style="height:96px; width:177px" /></p>\r\n\r\n<p><em><strong>Ch&uacute;ng t&ocirc;i cam kết 100% chất lượng sản phẩm đạt theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng.</strong></em></p>\r\n\r\n<p><em><strong>H&atilde;y gọi cho ch&uacute;ng t&ocirc;i, để bạn được phục vụ ( FREE)</strong></em></p>\r\n\r\n<p>Website:<a href="http://khonggianmo.vn/">http://khonggianmo.vn</a>-&nbsp;<a href="http://thietkekgm.vn/">http://thietkekgm.vn/</a></p>\r\n\r\n<p><a href="http://khonggianmo.vn/tu-van/tu-van-kien-truc/nhung-mau-thiet-ke-kien-truc-biet-thu-sieu-dep"><strong>Những mẫu thiết kế kiến tr&uacute;c biệt thự si&ecirc;u đẹp</strong></a></p>\r\n', 'IMG_1047.JPG', 1, '2016-09-18 21:02:32', '2016-09-18 21:02:32');

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
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_img`
--

INSERT INTO `project_img` (`id`, `url`, `id_project`, `created_at`, `updated_at`) VALUES
(58, 'IMG_1050.JPG', 41, '2016-09-18 21:27:23', '2016-09-18 21:27:23'),
(57, 'IMG_1098.JPG', 40, '2016-09-18 21:18:12', '2016-09-18 21:18:12'),
(56, 'IMG_1051.JPG', 39, '2016-09-18 21:12:54', '2016-09-18 21:12:54'),
(55, 'IMG_1048.JPG', 39, '2016-09-18 21:12:54', '2016-09-18 21:12:54'),
(54, 'IMG_1055.JPG', 38, '2016-09-18 21:02:32', '2016-09-18 21:02:32'),
(53, 'IMG_1051.JPG', 38, '2016-09-18 21:02:32', '2016-09-18 21:02:32'),
(52, 'IMG_1048.JPG', 38, '2016-09-18 21:02:32', '2016-09-18 21:02:32'),
(51, 'IMG_1047.JPG', 38, '2016-09-18 21:02:32', '2016-09-18 21:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `suicide`
--

DROP TABLE IF EXISTS `suicide`;
CREATE TABLE IF NOT EXISTS `suicide` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `tittle` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suicide`
--

INSERT INTO `suicide` (`id`, `tittle`, `content`, `img`, `type`, `created_at`, `updated_at`) VALUES
(1, 'sadasds', '', 'IMG_1051.JPG', 'noi-that', '2016-09-18 20:56:53', '2016-09-18 20:56:53');

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
