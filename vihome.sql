-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2016 at 07:13 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `tittle`, `content`, `img`, `design_id`, `created_at`, `updated_at`) VALUES
(47, 'Thiết kế nội thất khách sạn Sao Biển - Hải Phòng', '<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong">Kh&aacute;ch sạn Sao Biển</a>&nbsp;được x&acirc;y dựng tại trung t&acirc;m th&agrave;nh phố Hải Ph&ograve;ng, gần c&aacute;c khu cao ốc thương mại văn ph&ograve;ng v&agrave; căn hộ chung cư cao cấp .&nbsp;Với quy m&ocirc; 90 ph&ograve;ng nghỉ sang trọng. 02 nh&agrave; h&agrave;ng &Aacute; &ndash; &Acirc;u c&oacute; sức chứa tr&ecirc;n 800 kh&aacute;ch. &nbsp;Ph&ograve;ng hội thảo v&agrave; trung t&acirc;m tổ chức sự kiện, kh&aacute;ch sạn Sao Biển xứng đ&aacute;ng l&agrave; 1 kh&aacute;ch sạn 4* &nbsp;đẹp v&agrave; hiện đại nhất của Hải Ph&ograve;ng.</p>\r\n\r\n<p>Khi nhận lời&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong">thiết kế nội thất kh&aacute;ch sạn Sao Biển</a>, đội ngũ KTS của&nbsp;<a href="http://khonggianmo.vn/">Nội thất Kh&ocirc;ng Gian Mở</a>&nbsp;đ&atilde; khảo s&aacute;t thực tế c&ocirc;ng tr&igrave;nh v&agrave; l&ecirc;n những bản vẽ 3D cho&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong">nội thất kh&aacute;ch sạn</a>&nbsp;khiến cho chủ đầu tư kh&ocirc;ng khỏi ngạc nhi&ecirc;n v&agrave; h&agrave;i l&ograve;ng.</p>\r\n\r\n<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong">Nội thất kh&aacute;ch sạn Sao Biển Hải Ph&ograve;ng</a>&nbsp;được thiết kế theo&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-biet-thu/biet-thu-tan-co-dien-sieu-sang-tai-quang-ninh">phong c&aacute;ch t&acirc;n cổ điển</a>&nbsp;sang trọng v&agrave; hiện đại với gam chủ đạo l&agrave; mầu v&agrave;ng kim. Khu sảnh của kh&aacute;ch sạn được bố tr&iacute; tho&atilde;ng đ&atilde;ng,rộng r&atilde;i. Tường được ốp bằng đ&aacute; tự nhi&ecirc;n cao cấp c&ugrave;ng c&aacute;c họa tiết trang tr&iacute; mạ v&agrave;ng tạo sự lộng lẫy v&agrave; sang trọng cho bộ mặt của kh&aacute;ch sạn.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_KHACHSAN/haiphong/a1.jpg" /><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong"><em>Thiết kế nội thất kh&aacute;ch sạn Sao Biển - Hải Ph&ograve;ng</em></a></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_KHACHSAN/haiphong/a2.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that/thiet-ke-noi-that">Thiết kế nội thất</a>&nbsp;ph&ograve;ng Vip của kh&aacute;ch sạn được thiết kế hết sức tinh tế v&agrave; sang trọng, thể hiện được đ&uacute;ng đẳng cấp của một kh&aacute;ch sạn 4*. Ph&ograve;ng kh&aacute;ch v&agrave; ph&ograve;ng ngủ được t&aacute;ch rời nhau v&agrave; được thiết kế theo<a href="http://khonggianmo.vn/tu-van/phong-khach/nhung-mau-phong-khach-biet-thu-tan-co-dien-sieu-sang">&nbsp;phong c&aacute;ch t&acirc;n cổ điển với gam mầu trắng v&agrave;ng</a>, c&ugrave;ng đồ nội thất theo kiểu ho&agrave;ng cung nổi bật. Khiến cho những du kh&aacute;ch vừa c&oacute; cảm gi&aacute;c thoải m&aacute;i, gần gũi v&agrave; cũng thể hiện được sự đẳng cấp v&agrave; tr&acirc;n trọng đối với những vị kh&aacute;ch qu&yacute; của kh&aacute;ch sạn.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_KHACHSAN/haiphong/thiet-ke-noi-that-khach-san-sao-bien-hai-phong-02.jpg" /></p>\r\n\r\n<p>Ph&ograve;ng ngủ VIP được thiết kế nhẹ nh&agrave;ng, tinh tế với điểm nhấn đầu giường được ốp da cao cấp. Thảm trải nền với gam mầu qu&yacute; ph&aacute;i cũng gi&uacute;p tăng sự sang trọng cho căn ph&ograve;ng. Nội thất được bố tr&iacute; đầy đủ tiện nghi với b&agrave;n l&agrave;m việc, b&agrave;n phấn trang điểm, c&ugrave;ng đầy đủ c&aacute;c thiết bị điện tử để phục vụ cho c&ocirc;ng việc của kh&aacute;ch h&agrave;ng 1 c&aacute;ch thuận lợi nhất. Chắc hẳn c&aacute;c vị thượng kh&aacute;ch sẽ rất ấn tượng v&agrave; kh&ocirc;ng thể qu&ecirc;n được nếu được nghỉ ngơi tại những căn ph&ograve;ng với những<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that/thiet-ke-noi-that"><em>thiết kế nội thất</em></a>&nbsp;&nbsp;cao cấp như thế n&agrave;y.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_KHACHSAN/haiphong/thiet-ke-noi-that-khach-san-sao-bien-hai-phong-06.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong">Thiết kế nội thất kh&aacute;ch sạn Sao Biển - Hải Ph&ograve;ng</a></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_KHACHSAN/haiphong/thiet-ke-noi-that-khach-san-sao-bien-hai-phong-05.jpg" /></p>\r\n\r\n<p>Ph&ograve;ng ngủ đ&ocirc;i của&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong">kh&aacute;ch sạn Sao Biển</a>&nbsp;cũng được c&aacute;c KTS rất chăm ch&uacute;t về thiết kế v&agrave; kh&ocirc;ng gian của nội thất. &nbsp;V&igrave; c&oacute; 2 chiếc giường trong c&ugrave;ng 1 căn ph&ograve;ng n&ecirc;n việc bố tr&iacute; nội thất cho căn ph&ograve;ng phải hết sức gọn g&agrave;ng v&agrave; khoa học, vừa gi&uacute;p tiết kiệm kh&ocirc;ng gian lại tạo được sự thoải m&aacute;i cho những vị kh&aacute;ch tới nghỉ dưỡng.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_KHACHSAN/haiphong/thiet-ke-noi-that-khach-san-sao-bien-hai-phong-03.jpg" /><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong"><strong>Thiết kế nội thất kh&aacute;ch sạn Sao Biển - Hải Ph&ograve;ng</strong></a></p>\r\n\r\n<p>Mọi cửa sổ của ph&ograve;ng ngủ kh&aacute;ch sạn đều được hướng ra biển khiến cho những căn ph&ograve;ng trở n&ecirc;n đặc biệt hơn. Nhờ c&oacute; tầm nh&igrave;n rộng, những du kh&aacute;ch sẽ cảm thấy thư th&aacute;i v&agrave; thoải m&aacute;i hơn rất nhiều khi được ngắm nh&igrave;n trời biển c&ugrave;ng những con thuyền ngo&agrave;i xa.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_KHACHSAN/haiphong/thiet-ke-noi-that-khach-san-sao-bien-hai-phong-04.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong"><strong>Thiết kế nội thất kh&aacute;ch sạn Sao Biển - Hải Ph&ograve;ng</strong></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href="http://www.hoanthiennoithat.vn/bao-gia/bao-gia-noi-that-khach-san.html">B&Aacute;O GI&Aacute; THI C&Ocirc;NG NỘI THẤT KH&Aacute;CH SẠN</a></strong></p>\r\n\r\n<p>Thiết kế nội thất Kh&aacute;ch sạn v&agrave; Thi c&ocirc;ng nội thất Kh&aacute;ch Sạn, đ&ograve;i hỏi c&aacute;c nh&agrave; thầu phải c&oacute; năng lực tốt. Với hạng mục thiết kế nội thất kh&aacute;ch sạn, th&igrave; lu&ocirc;n đảm bảo c&aacute;c ti&ecirc;u ch&iacute;:&nbsp;<em><strong>SANG TRỌNG - ẤN TƯỢNG - LỊCH SỰ - TH&Acirc;N THIỆN</strong></em>. C&ocirc;ng ty&nbsp;<strong>KH&Ocirc;NG GIAN MỞ</strong>&nbsp;ch&uacute;ng t&ocirc;i l&agrave; đơn vị trực tiếp thiết kế,&nbsp;<strong><a href="http://www.khonggianmo.vn/thiet-ke-noi-that-nha-hang/dich-vu/thiet-ke-noi-that-nha-hang/">Thiết kế v&agrave; thi c&ocirc;ng nội thất trọn g&oacute;i</a></strong>.Với nhiều năm kinh nghiệm trong nghề, c&ocirc;ng ty đ&atilde; ho&agrave;n th&agrave;nh nhiều c&ocirc;ng tr&igrave;nh lớn, c&oacute; chất lượng cao tr&ecirc;n khắp cả nước.<strong>&nbsp;<a href="http://khonggianmo.vn/khach-san/bao-gia/bao-gia-noi-that-khach-san/">THIẾT KẾ THẤT KH&Aacute;CH SẠN</a></strong>&nbsp;l&agrave; một thế mạnh của Kh&ocirc;ng Gian Mở. Ch&uacute;ng t&ocirc;i đ&atilde; ho&agrave;n th&agrave;nh nhiều c&ocirc;ng tr&igrave;nh kh&aacute;ch sạn&nbsp;<strong>hạng 3 sao, kh&aacute;ch sạn hạng 4 sao</strong>, với chất lượng cao.</p>\r\n', 'IMG_2446.JPG', 1, '2016-09-20 21:51:51', '2016-09-20 21:51:51'),
(45, '', '<h1><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-biet-thu/thiet-ke-noi-that-biet-thu-vinhomes-riverside">Biệt thự Vinhomes Riverside</a>&nbsp;được mệnh danh l&agrave; một trong những khu đ&ocirc; thị đẳng cấp đầu ti&ecirc;n ở Việt Nam đang sở hữu m&ocirc; h&igrave;nh khu biệt thự b&ecirc;n s&ocirc;ng rộng lớn đầy sang trọng. Dựa theo m&ocirc; h&igrave;nh&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that/thiet-ke-noi-that">thiết kế nội thất</a>&nbsp;v&agrave; kiến tr&uacute;c của th&agrave;nh phố Venice trong l&ograve;ng nước &Yacute;, khu biệt thự Vinhomes RiverSide được mệnh danh l&agrave; VENICE trong l&ograve;ng H&Agrave; NỘI. Vinhomes Riverside d&agrave;nh tới 60ha kh&ocirc;ng gian chung cho c&ocirc;ng vi&ecirc;n, c&acirc;y xanh, mặt nước.</h1>\r\n\r\n<h1><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-biet-thu/thiet-ke-noi-that-biet-thu-vinhomes-riverside"><strong>Thiết kế nội thất biệt thự Vinhomes Riverside</strong></a></h1>\r\n\r\n<h1>Ch&iacute;nh v&igrave; vị tr&iacute; địa l&iacute; thuận tiện c&ugrave;ng kh&ocirc;ng gian sống l&iacute; tưởng đ&oacute; m&agrave; khi được b&agrave;n giao nh&agrave; th&ocirc;, chủ đầu tư của căn biệt thự đ&atilde; li&ecirc;n lạc với&nbsp;<a href="http://khonggianmo.vn/">nội thất KGM</a>&nbsp;với mong muốn c&oacute; được 1 căn biệt thự tiện nghi, sang trọng từ trong ra ngo&agrave;i để ph&ugrave; hợp với đẳng cấp v&agrave; kh&ocirc;ng gian chung của cả khu biệt thự Vinhomes Riverside.</h1>\r\n\r\n<h1><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/vinhom/thiet-ke-noi-that-biet-thu-vinhomes-2.jpg" />Thiết kế nội thất biệt thự Vinhomes Riverside</h1>\r\n\r\n<h1>Với diện t&iacute;ch 318m2 x 3 tầng, được chia th&agrave;nh 1 ph&ograve;ng kh&aacute;ch, bếp, 3 ph&ograve;ng ngủ, ph&ograve;ng thờ, khu vui chơi v&agrave; 4wc. Anh Nghĩa chủ nh&acirc;n của căn biệt thự đ&atilde; tin tưởng v&agrave;o KGM&Acirc;&nbsp;để&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that/thiet-ke-noi-that">thiết kế nội thất</a>&nbsp;v&agrave;&nbsp;<a href="http://khonggianmo.vn/thi-cong-noi-that-biet-thu/dich-vu/thi-cong-noi-that-biet-thu/">thi c&ocirc;ng nội thất trọn g&oacute;i</a>&nbsp;cho ng&ocirc;i nh&agrave; th&acirc;n y&ecirc;u của m&igrave;nh.</h1>\r\n\r\n<h1><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/vinhom/thiet-ke-noi-that-biet-thu-vinhomes-3.jpg" /></h1>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/vinhom/thiet-ke-noi-that-biet-thu-vinhomes-4.jpg" /></p>\r\n\r\n<h1><em>Thiết kế nội thất biệt thự Vinhomes Riverside</em></h1>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/vinhom/thiet-ke-noi-that-biet-thu-vinhomes-5.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-biet-thu/thiet-ke-noi-that-biet-thu-vinhomes-riverside">Thiết kế nội thất biệt thự Vinhomes Riverside</a></p>\r\n\r\n<p>Nội thất ph&ograve;ng thờ&nbsp;được thiết kế tho&aacute;ng đ&atilde;ng trang nghi&ecirc;m với những chi tiết hoa văn nh&atilde; nhặn tr&ecirc;n tường c&ugrave;ng chiếc tủ thờ được l&agrave;m bằng gỗ Hương qu&yacute; gi&aacute;, sang trọng.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/vinhom/thiet-ke-noi-that-biet-thu-vinhomes-6.jpg" /></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/vinhom/thiet-ke-noi-that-biet-thu-vinhomes-7.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/noi-that-phong-ngu/tu-van/noi-that-phong-ngu/">Nội thất ph&ograve;ng ngủ</a>&nbsp;của biệt thự Vinhomes Riverside được thiết kế tinh tế, trang nh&atilde; với đầy đủ đồ gỗ nội thất sang trọng, c&ugrave;ng diện t&iacute;ch rộng r&atilde;i với nhiều &ocirc; cửa sổ đ&atilde; đem đến sự kh&aacute;c lạ ngang tầm với những căn ph&ograve;ng ngủ tại những kh&aacute;ch sạn 5* đẳng cấp&hellip;</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/vinhom/thiet-ke-noi-that-biet-thu-vinhomes-8.jpg" /></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/vinhom/thiet-ke-noi-that-biet-thu-vinhomes-9.jpg" /></p>\r\n\r\n<p><em>Thiết kế nội thất biệt thự Vinhomes Riverside</em></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/vinhom/thiet-ke-noi-that-biet-thu-vinhomes-10.jpg" /></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/vinhom2/thiet-ke-noi-that-biet-thu-vinhomes-11.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-biet-thu/thiet-ke-noi-that-biet-thu-vinhomes-riverside"><strong>Thiết kế nội thất biệt thự Vinhomes Riverside</strong></a></p>\r\n\r\n<p>4 ph&ograve;ng wc của căn biệt thự Vinhomes Riverside được thiết kế sang trọng với những phụ kiện cao cấp ch&iacute;nh h&atilde;ng c&ugrave;ng với việc sử dụng to&agrave;n bộ đ&aacute; ốp l&aacute;t mầu s&aacute;ng đ&atilde; tạo được sự sạch sẽ, tinh tế v&agrave; sang trọng ph&ugrave; hợp với cả tổng thể chung của căn biệt thự Vinhomes Riverside.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/vinhom2/thiet-ke-noi-that-biet-thu-vinhomes-13.jpg" /></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/vinhom2/thiet-ke-noi-that-biet-thu-vinhomes-14.jpg" /></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/vinhom2/thiet-ke-noi-that-biet-thu-vinhomes-15.jpg" /></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/vinhom2/thiet-ke-noi-that-biet-thu-vinhomes-16.jpg" /></p>\r\n\r\n<p><em><strong>Thiết kế nội thất biệt thự Vinhomes Riverside</strong></em></p>\r\n\r\n<p><strong>Ch&uacute;ng t&ocirc;i nhận l&agrave;m trọn g&oacute;i:</strong><a href="http://www.khonggianmo.vn/tu-van/tu-van-xay-dung/xay-nha-tron-goi"><strong>HO&Agrave;N THIỆN NỘI THẤT</strong></a><strong>gồm:</strong></p>\r\n\r\n<ul>\r\n	<li><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-noi-that"><strong>THIẾT KẾ KIẾN TR&Uacute;C V&Agrave; NỘI THẤT</strong></a></li>\r\n	<li><strong><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-noi-that">THI C&Ocirc;NG NỘI THẤT</a></strong>:<strong><em>Tr&ecirc;n nhiều chất liệu như</em></strong>:<em>Gỗ tự nhi&ecirc;n (<strong>gỗ Hương, gỗ Sồi, Dổi, Lim, Căm Xe, Xoan Đ&agrave;o</strong>), gỗVeneer,Laminate, MFC, MDF, kết hợp vật liệu kh&aacute;c.</em></li>\r\n	<li><strong><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/cai-tao-xay-dung">CẢI TẠO</a>:sửa chữa cải tạo nh&agrave;,</strong><strong>ho&agrave;n thiện x&acirc;y dựng, Thi c&ocirc;ng điện nước, thạch cao vv...</strong></li>\r\n</ul>\r\n', 'IMG_2446.JPG', 0, '2016-09-20 20:53:27', '2016-09-20 20:53:27'),
(46, 'Thiết kế nội thất chung cư Goldsilk Complex', '<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-chung-cu/thiet-ke-noi-that-chung-cu-goldsilk-complex">Thiết kế nội thất chung cư Goldsilk Complex</a></p>\r\n\r\n<p>Tổ hợp chung cư Goldsilk Complex tọa lạc tại số 430 đường Vạn Ph&uacute;c, đối diện l&agrave;ng lụa truyền thống Vạn Ph&uacute;c. Từ Goldsilk Complex qu&yacute; kh&aacute;ch c&oacute; thể dễ d&agrave;ng lưu th&ocirc;ng v&agrave;o trung t&acirc;m th&agrave;nh phố H&agrave; Nội qua 2 tuyến đường lớn: Quang Trung &ndash; Nguyễn Tr&atilde;i ; Tố Hữu &ndash; L&ecirc; Văn Lương k&eacute;o d&agrave;i. Chung cư Goldsilk Complex l&agrave; một tổ hợp chung cư cao cấp mang phong c&aacute;ch Ch&acirc;u &Acirc;u với đầy đủ tiện &iacute;ch như:&nbsp;<a href="http://khonggianmo.vn/thiet-ke-noi-that/thiet-ke-noi-that/thiet-ke-noi-that/">Thiết kế nội thất</a>&nbsp;cao cấp, hệ thống An ninh 24/24, hệ thống bảo vệ trực tuyến GTEL, trung t&acirc;m thương mại lớn c&oacute; vườn tr&ecirc;n cao,bể bơi ngo&agrave;i trời 650m, c&ugrave;ng hệ thống ph&ograve;ng tập Gym, Spa, nh&agrave; trẻ. Với kinh nghiệm dầy dặn trong ng&agrave;nh nội thất,&nbsp;thiết kế KGM&nbsp;đ&atilde; vinh dự được chọn l&agrave;m đơn vị thiết kế v&agrave;&nbsp;<a href="http://khonggianmo.vn/thi-cong-noi-that/thi-cong-noi-that/thi-cong/">thi c&ocirc;ng nội thất</a>&nbsp;cho căn hộ mẫu của chung cư Goldsilk Complex.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/CC-Goldsilk/thiet-ke-noi-that-chung-cu-goldsilk%20complex-4.jpg" /></p>\r\n\r\n<p>Thiết kế nội thất chung cư Goldsilk Complex<img alt="alt" src="http://khonggianmo.vn/images/stories/CC-Goldsilk/thiet-ke-noi-that-chung-cu-goldsilk%20complex-3.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/noi-that-phong-khach/tu-van/phong-khach/">Nội thất ph&ograve;ng kh&aacute;ch</a>&nbsp;v&agrave; bếp của căn mẫu chung cư Goldsilk Complex được thiết kế theo phong c&aacute;ch hiện đại trẻ trung với t&ocirc;ng mầu s&aacute;ng của mầu sơn tường v&agrave; hệ tủ bếp kết hợp với gam mầu tối của bộ b&agrave;n ăn v&agrave; s&agrave;n gỗ đ&atilde; l&agrave;m t&ocirc;n l&ecirc;n vẻ đẹp sang trọng v&agrave; hiện đại cho nội thất căn ph&ograve;ng mẫu của<a href="http://noithatmbhome.com/thiet-ke-noi-that">&nbsp;thiết kế nội thất&nbsp;</a>chung cư Goldsilk Complex.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/CC-Goldsilk/thiet-ke-noi-that-chung-cu-goldsilk%20complex-2.jpg" /></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/CC-Goldsilk/thiet-ke-noi-that-chung-cu-goldsilk%20complex-5.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/noi-that-phong-ngu/tu-van/noi-that-phong-ngu/">Thiết kế nội thất ph&ograve;ng ngủ</a>&nbsp;chung cư Goldsilk Complex được thiết kế nhẹ nh&agrave;ng ấm c&uacute;ng, tuy diện t&iacute;ch khi&ecirc;m tốn nhưng vẫn đầy đủ tiện nghi để phục vụ cho nhu cầu sinh hoạt của chủ nh&acirc;n căn ph&ograve;ng.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/CC-Goldsilk/thiet-ke-noi-that-chung-cu-goldsilk%20complex-6.jpg" /></p>\r\n\r\n<p><a href="http://noithatmbhome.com/"><img alt="alt" src="http://khonggianmo.vn/images/stories/CC-Goldsilk/thiet-ke-noi-that-chung-cu-goldsilk%20complex-7.jpg" /></a></p>\r\n\r\n<p><em>Thiết kế nội thất chung cư Goldsilk Complex</em></p>\r\n\r\n<p>Ph&ograve;ng ngủ trẻ em được&nbsp;<a href="http://khonggianmo.vn/">nội thất KGM</a>&nbsp;thiết kế với gam mầu chủ đạo l&agrave; xanh &ndash; trắng, gi&uacute;p cho căn ph&ograve;ng trở n&ecirc;n vui nhộn, sinh động v&agrave; c&aacute; t&iacute;nh ph&ugrave; hợp với lứa tuổi của c&aacute;c b&eacute;&hellip;</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/CC-Goldsilk/thiet-ke-noi-that-chung-cu-goldsilk%20complex-8.jpg" /></p>\r\n\r\n<p>Thiết kế nội thất chung cư Goldsilk Complex</p>\r\n\r\n<p><strong>Ch&uacute;ng t&ocirc;i nhận l&agrave;m trọn g&oacute;i:</strong><a href="http://www.khonggianmo.vn/tu-van/tu-van-xay-dung/xay-nha-tron-goi"><strong>HO&Agrave;N THIỆN NỘI THẤT</strong></a><strong>gồm:</strong></p>\r\n\r\n<ul>\r\n	<li><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-noi-that"><strong>THIẾT KẾ KIẾN TR&Uacute;C V&Agrave; NỘI THẤT</strong></a></li>\r\n	<li><strong><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-noi-that">THI C&Ocirc;NG NỘI THẤT</a></strong>:<strong><em>Tr&ecirc;n nhiều chất liệu như</em></strong>:<em>Gỗ tự nhi&ecirc;n (<strong>gỗ Hương, gỗ Sồi, Dổi, Lim, Căm Xe, Xoan Đ&agrave;o</strong>), gỗVeneer,Laminate, MFC, MDF, kết hợp vật liệu kh&aacute;c.</em></li>\r\n	<li><strong><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/cai-tao-xay-dung">CẢI TẠO</a></strong><strong>:</strong><em>sửa chữa cải tạo nh&agrave;,ho&agrave;n thiện x&acirc;y dựng, Thi c&ocirc;ng điện nước, thạch cao vv..</em><em>.</em></li>\r\n</ul>\r\n\r\n<p><strong><em>VỚI TI&Ecirc;U CH&Iacute;:</em></strong><em><strong>&ldquo;Gi&aacute; th&agrave;nh ph&ugrave; hợp-Chất lượng đảm bảo-Tiến độ nhanh-Dịch vụ hậu m&atilde;i tốt&rdquo;</strong></em></p>\r\n\r\n<p><img alt="alt" src="http://www.khonggianmo.vn/images/stories/hotline.jpg" style="height:56px; width:140px" /></p>\r\n\r\n<p><em><strong>Ch&uacute;ng t&ocirc;i cam kết 100% chất lượng sản phẩm đạt theo y&ecirc;u cầu của k</strong></em></p>\r\n', 'IMG_2440.JPG', 1, '2016-09-20 21:50:15', '2016-09-20 21:50:15'),
(44, 'Thiết kế nội thất biệt thự Thanh Hóa', '<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-biet-thu/thiet-ke-noi-that-biet-thu-thanh-hoa">Thiết kế nội thất biệt thự Thanh H&oacute;a</a></p>\r\n\r\n<p>Với diện t&iacute;ch mặt s&agrave;n 150m2 tọa lạc tại trung t&acirc;m th&agrave;nh phố Thanh H&oacute;a. Chủ nh&acirc;n của căn biệt thự 3 tầng rộng r&atilde;i n&agrave;y đ&atilde; li&ecirc;n hệ với&nbsp;nội thất KGM&nbsp;với mong muốn được&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that/thiet-ke-noi-that">thiết kế nội thất</a>&nbsp;lại to&agrave;n bộ cho căn biệt thự của m&igrave;nh với mong muốn được sở hữu một&nbsp;<a href="http://khonggianmo.vn/thiet-ke-noi-that-biet-thu/thiet-ke-noi-that/thiet-ke-noi-that-biet-thu/">thiết kế nội thất biệt thự</a>&nbsp;độc đ&aacute;o,hiện đại nhưng vẫn phải ph&ugrave; hợp với sở th&iacute;ch của c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh v&agrave; sự tiện dụng trong sinh hoạt cho mọi người.</p>\r\n\r\n<p><a href="http://khonggianmo.vn/noi-that-phong-khach/tu-van/phong-khach/">Nội thất ph&ograve;ng kh&aacute;ch</a>&nbsp;v&agrave; bếp của căn biệt thự Thanh H&oacute;a được t&aacute;ch biệt nhau nhờ một bức v&aacute;ch ngăn lớn, vừa c&oacute; t&aacute;c dụng l&agrave; mảng trang tr&iacute; cho căn ph&ograve;ng, vừa tạo được kh&ocirc;ng gian ri&ecirc;ng tư cho từng khu vực. Nội thất ph&ograve;ng bếp của căn biệt thự được thiết kế hiện đại với đầy đủ tiện nghi phục vụ cho c&ocirc;ng việc nội trợ của gia đ&igrave;nh.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/BT-thanhHoa/thiet-ke-noi-that-biet-thu-thanh-hoa-3.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/noi-that-phong-bep/tu-van/phong-bep/">Thiết kế nội thất ph&ograve;ng bếp</a>&nbsp;biệt thự Thanh H&oacute;a<img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/BT-thanhHoa/thiet-ke-noi-that-biet-thu-thanh-hoa-4.jpg" /></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/BT-thanhHoa/thiet-ke-noi-that-biet-thu-thanh-hoa-5.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-biet-thu/thiet-ke-noi-that-biet-thu-thanh-hoa"><em>Thiết kế nội thất biệt thự Thanh H&oacute;a</em></a></p>\r\n\r\n<p><a href="http://khonggianmo.vn/noi-that-phong-ngu/tu-van/noi-that-phong-ngu/">Nội thất ph&ograve;ng ngủ</a>&nbsp;con trai của biệt thự Thanh H&oacute;a được thiết kế theo phong c&aacute;ch hiện đại trẻ trung với gam mầu xanh trắng nhẹ nh&agrave;ng tươi trẻ. Mảng ốp đầu giường của ph&ograve;ng ngủ được c&aacute;c KTS của&nbsp;<a href="http://thietkekgm.vn/">thiết kế KGM</a>&nbsp;s&aacute;ng tạo th&agrave;nh những thanh sọc đứng to nhỏ kh&aacute;ch nhau, đem tới cảm gi&aacute;c nam t&iacute;nh v&agrave; mạnh mẽ ph&ugrave; hợp với lứa tuổi của chủ nh&acirc;n căn ph&ograve;ng.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/BT-thanhHoa/thiet-ke-noi-that-biet-thu-thanh-hoa-9.jpg" /></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/BT-thanhHoa/thiet-ke-noi-that-biet-thu-thanh-hoa-6.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-biet-thu/thiet-ke-noi-that-biet-thu-thanh-hoa">Thiết kế nội thất biệt thự Thanh H&oacute;a</a></p>\r\n\r\n<p>Ph&ograve;ng ngủ ch&iacute;nh của căn biệt thự Thanh H&oacute;a được<em>&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that/thiet-ke-noi-that">thiết kế nội thất</a></em>&nbsp;theo hướng nhẹ nh&agrave;ng, qu&yacute; tộc nhưng vẫn to&aacute;t l&ecirc;n vẻ đẹp hiện đại c&ugrave;ng đồ nội thất cao cấp đ&atilde; n&acirc;ng tầm gi&aacute; trị cho căn ph&ograve;ng ngủ của căn biệt thự l&ecirc;n rất nhiều.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/BT-thanhHoa/thiet-ke-noi-that-biet-thu-thanh-hoa-7.jpg" /></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_BIETTHU/BT-thanhHoa/thiet-ke-noi-that-biet-thu-thanh-hoa-10.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-biet-thu/thiet-ke-noi-that-biet-thu-thanh-hoa"><strong>Thiết kế nội thất biệt thự Thanh H&oacute;a</strong></a></p>\r\n\r\n<p><strong>Ch&uacute;ng t&ocirc;i nhận l&agrave;m trọn g&oacute;i:</strong><a href="http://www.khonggianmo.vn/tu-van/tu-van-xay-dung/xay-nha-tron-goi"><strong>HO&Agrave;N THIỆN NỘI THẤT</strong></a><strong>gồm:</strong></p>\r\n\r\n<ul>\r\n	<li><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-noi-that"><strong>THIẾT KẾ KIẾN TR&Uacute;C V&Agrave; NỘI THẤT</strong></a></li>\r\n	<li><strong><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/thi-cong-noi-that">THI C&Ocirc;NG NỘI THẤT</a></strong>:<strong><em>Tr&ecirc;n nhiều chất liệu như</em></strong>:<em>Gỗ tự nhi&ecirc;n (<strong>gỗ Hương, gỗ Sồi, Dổi, Lim, Căm Xe, Xoan Đ&agrave;o</strong>), gỗVeneer,Laminate, MFC, MDF, kết hợp vật liệu kh&aacute;c.</em></li>\r\n	<li><strong><a href="http://www.khonggianmo.vn/dich-vu/thi-cong-noi-that/cai-tao-xay-dung">CẢI TẠO</a>:sửa chữa cải tạo nh&agrave;,</strong><strong>ho&agrave;n thiện x&acirc;y dựng, Thi c&ocirc;ng điện nước, thạch cao vv...</strong></li>\r\n</ul>\r\n\r\n<p><strong><em>VỚI TI&Ecirc;U CH&Iacute;:</em></strong><em><strong>&ldquo;Gi&aacute; th&agrave;nh ph&ugrave; hợp-Chất lượng đảm bảo-Tiến độ nhanh-Dịch vụ hậu m&atilde;i tốt&rdquo;</strong></em></p>\r\n', 'IMG_2443.JPG', 0, '2016-09-20 20:48:43', '2016-09-20 20:48:43'),
(48, 'Thiết kế nội thất khách sạn Sao Biển - Hải Phòng', '<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong">Kh&aacute;ch sạn Sao Biển</a>&nbsp;được x&acirc;y dựng tại trung t&acirc;m th&agrave;nh phố Hải Ph&ograve;ng, gần c&aacute;c khu cao ốc thương mại văn ph&ograve;ng v&agrave; căn hộ chung cư cao cấp .&nbsp;Với quy m&ocirc; 90 ph&ograve;ng nghỉ sang trọng. 02 nh&agrave; h&agrave;ng &Aacute; &ndash; &Acirc;u c&oacute; sức chứa tr&ecirc;n 800 kh&aacute;ch. &nbsp;Ph&ograve;ng hội thảo v&agrave; trung t&acirc;m tổ chức sự kiện, kh&aacute;ch sạn Sao Biển xứng đ&aacute;ng l&agrave; 1 kh&aacute;ch sạn 4* &nbsp;đẹp v&agrave; hiện đại nhất của Hải Ph&ograve;ng.</p>\r\n\r\n<p>Khi nhận lời&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong">thiết kế nội thất kh&aacute;ch sạn Sao Biển</a>, đội ngũ KTS của&nbsp;<a href="http://khonggianmo.vn/">Nội thất Kh&ocirc;ng Gian Mở</a>&nbsp;đ&atilde; khảo s&aacute;t thực tế c&ocirc;ng tr&igrave;nh v&agrave; l&ecirc;n những bản vẽ 3D cho&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong">nội thất kh&aacute;ch sạn</a>&nbsp;khiến cho chủ đầu tư kh&ocirc;ng khỏi ngạc nhi&ecirc;n v&agrave; h&agrave;i l&ograve;ng.</p>\r\n\r\n<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong">Nội thất kh&aacute;ch sạn Sao Biển Hải Ph&ograve;ng</a>&nbsp;được thiết kế theo&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-biet-thu/biet-thu-tan-co-dien-sieu-sang-tai-quang-ninh">phong c&aacute;ch t&acirc;n cổ điển</a>&nbsp;sang trọng v&agrave; hiện đại với gam chủ đạo l&agrave; mầu v&agrave;ng kim. Khu sảnh của kh&aacute;ch sạn được bố tr&iacute; tho&atilde;ng đ&atilde;ng,rộng r&atilde;i. Tường được ốp bằng đ&aacute; tự nhi&ecirc;n cao cấp c&ugrave;ng c&aacute;c họa tiết trang tr&iacute; mạ v&agrave;ng tạo sự lộng lẫy v&agrave; sang trọng cho bộ mặt của kh&aacute;ch sạn.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_KHACHSAN/haiphong/a1.jpg" /><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong"><em>Thiết kế nội thất kh&aacute;ch sạn Sao Biển - Hải Ph&ograve;ng</em></a></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_KHACHSAN/haiphong/a2.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that/thiet-ke-noi-that">Thiết kế nội thất</a>&nbsp;ph&ograve;ng Vip của kh&aacute;ch sạn được thiết kế hết sức tinh tế v&agrave; sang trọng, thể hiện được đ&uacute;ng đẳng cấp của một kh&aacute;ch sạn 4*. Ph&ograve;ng kh&aacute;ch v&agrave; ph&ograve;ng ngủ được t&aacute;ch rời nhau v&agrave; được thiết kế theo<a href="http://khonggianmo.vn/tu-van/phong-khach/nhung-mau-phong-khach-biet-thu-tan-co-dien-sieu-sang">&nbsp;phong c&aacute;ch t&acirc;n cổ điển với gam mầu trắng v&agrave;ng</a>, c&ugrave;ng đồ nội thất theo kiểu ho&agrave;ng cung nổi bật. Khiến cho những du kh&aacute;ch vừa c&oacute; cảm gi&aacute;c thoải m&aacute;i, gần gũi v&agrave; cũng thể hiện được sự đẳng cấp v&agrave; tr&acirc;n trọng đối với những vị kh&aacute;ch qu&yacute; của kh&aacute;ch sạn.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_KHACHSAN/haiphong/thiet-ke-noi-that-khach-san-sao-bien-hai-phong-02.jpg" /></p>\r\n\r\n<p>Ph&ograve;ng ngủ VIP được thiết kế nhẹ nh&agrave;ng, tinh tế với điểm nhấn đầu giường được ốp da cao cấp. Thảm trải nền với gam mầu qu&yacute; ph&aacute;i cũng gi&uacute;p tăng sự sang trọng cho căn ph&ograve;ng. Nội thất được bố tr&iacute; đầy đủ tiện nghi với b&agrave;n l&agrave;m việc, b&agrave;n phấn trang điểm, c&ugrave;ng đầy đủ c&aacute;c thiết bị điện tử để phục vụ cho c&ocirc;ng việc của kh&aacute;ch h&agrave;ng 1 c&aacute;ch thuận lợi nhất. Chắc hẳn c&aacute;c vị thượng kh&aacute;ch sẽ rất ấn tượng v&agrave; kh&ocirc;ng thể qu&ecirc;n được nếu được nghỉ ngơi tại những căn ph&ograve;ng với những<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that/thiet-ke-noi-that"><em>thiết kế nội thất</em></a>&nbsp;&nbsp;cao cấp như thế n&agrave;y.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_KHACHSAN/haiphong/thiet-ke-noi-that-khach-san-sao-bien-hai-phong-06.jpg" /></p>\r\n', 'IMG_2463.JPG', 2, '2016-09-20 23:18:35', '2016-09-20 23:18:35'),
(49, 'Thiết kế nội thất khách sạn Sao Biển - Hải Phòng', '<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong">Kh&aacute;ch sạn Sao Biển</a>&nbsp;được x&acirc;y dựng tại trung t&acirc;m th&agrave;nh phố Hải Ph&ograve;ng, gần c&aacute;c khu cao ốc thương mại văn ph&ograve;ng v&agrave; căn hộ chung cư cao cấp .&nbsp;Với quy m&ocirc; 90 ph&ograve;ng nghỉ sang trọng. 02 nh&agrave; h&agrave;ng &Aacute; &ndash; &Acirc;u c&oacute; sức chứa tr&ecirc;n 800 kh&aacute;ch. &nbsp;Ph&ograve;ng hội thảo v&agrave; trung t&acirc;m tổ chức sự kiện, kh&aacute;ch sạn Sao Biển xứng đ&aacute;ng l&agrave; 1 kh&aacute;ch sạn 4* &nbsp;đẹp v&agrave; hiện đại nhất của Hải Ph&ograve;ng.</p>\r\n\r\n<p>Khi nhận lời&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong">thiết kế nội thất kh&aacute;ch sạn Sao Biển</a>, đội ngũ KTS của&nbsp;<a href="http://khonggianmo.vn/">Nội thất Kh&ocirc;ng Gian Mở</a>&nbsp;đ&atilde; khảo s&aacute;t thực tế c&ocirc;ng tr&igrave;nh v&agrave; l&ecirc;n những bản vẽ 3D cho&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong">nội thất kh&aacute;ch sạn</a>&nbsp;khiến cho chủ đầu tư kh&ocirc;ng khỏi ngạc nhi&ecirc;n v&agrave; h&agrave;i l&ograve;ng.</p>\r\n\r\n<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong">Nội thất kh&aacute;ch sạn Sao Biển Hải Ph&ograve;ng</a>&nbsp;được thiết kế theo&nbsp;<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-biet-thu/biet-thu-tan-co-dien-sieu-sang-tai-quang-ninh">phong c&aacute;ch t&acirc;n cổ điển</a>&nbsp;sang trọng v&agrave; hiện đại với gam chủ đạo l&agrave; mầu v&agrave;ng kim. Khu sảnh của kh&aacute;ch sạn được bố tr&iacute; tho&atilde;ng đ&atilde;ng,rộng r&atilde;i. Tường được ốp bằng đ&aacute; tự nhi&ecirc;n cao cấp c&ugrave;ng c&aacute;c họa tiết trang tr&iacute; mạ v&agrave;ng tạo sự lộng lẫy v&agrave; sang trọng cho bộ mặt của kh&aacute;ch sạn.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_KHACHSAN/haiphong/a1.jpg" /><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that-khach-san/thiet-ke-noi-that-khach-san-sao-bien-hai-phong"><em>Thiết kế nội thất kh&aacute;ch sạn Sao Biển - Hải Ph&ograve;ng</em></a></p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_KHACHSAN/haiphong/a2.jpg" /></p>\r\n\r\n<p><a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that/thiet-ke-noi-that">Thiết kế nội thất</a>&nbsp;ph&ograve;ng Vip của kh&aacute;ch sạn được thiết kế hết sức tinh tế v&agrave; sang trọng, thể hiện được đ&uacute;ng đẳng cấp của một kh&aacute;ch sạn 4*. Ph&ograve;ng kh&aacute;ch v&agrave; ph&ograve;ng ngủ được t&aacute;ch rời nhau v&agrave; được thiết kế theo<a href="http://khonggianmo.vn/tu-van/phong-khach/nhung-mau-phong-khach-biet-thu-tan-co-dien-sieu-sang">&nbsp;phong c&aacute;ch t&acirc;n cổ điển với gam mầu trắng v&agrave;ng</a>, c&ugrave;ng đồ nội thất theo kiểu ho&agrave;ng cung nổi bật. Khiến cho những du kh&aacute;ch vừa c&oacute; cảm gi&aacute;c thoải m&aacute;i, gần gũi v&agrave; cũng thể hiện được sự đẳng cấp v&agrave; tr&acirc;n trọng đối với những vị kh&aacute;ch qu&yacute; của kh&aacute;ch sạn.</p>\r\n\r\n<p><img alt="alt" src="http://khonggianmo.vn/images/stories/TK_KHACHSAN/haiphong/thiet-ke-noi-that-khach-san-sao-bien-hai-phong-02.jpg" /></p>\r\n\r\n<p>Ph&ograve;ng ngủ VIP được thiết kế nhẹ nh&agrave;ng, tinh tế với điểm nhấn đầu giường được ốp da cao cấp. Thảm trải nền với gam mầu qu&yacute; ph&aacute;i cũng gi&uacute;p tăng sự sang trọng cho căn ph&ograve;ng. Nội thất được bố tr&iacute; đầy đủ tiện nghi với b&agrave;n l&agrave;m việc, b&agrave;n phấn trang điểm, c&ugrave;ng đầy đủ c&aacute;c thiết bị điện tử để phục vụ cho c&ocirc;ng việc của kh&aacute;ch h&agrave;ng 1 c&aacute;ch thuận lợi nhất. Chắc hẳn c&aacute;c vị thượng kh&aacute;ch sẽ rất ấn tượng v&agrave; kh&ocirc;ng thể qu&ecirc;n được nếu được nghỉ ngơi tại những căn ph&ograve;ng với những<a href="http://khonggianmo.vn/dich-vu/thiet-ke-noi-that/thiet-ke-noi-that"><em>thiết kế nội thất</em></a>&nbsp;&nbsp;cao cấp như thế n&agrave;y.</p>\r\n', '1.jpg', 1, '2016-09-20 23:53:15', '2016-09-20 23:53:15');

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
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_img`
--

INSERT INTO `project_img` (`id`, `url`, `id_project`, `created_at`, `updated_at`) VALUES
(76, '5.jpg', 49, '2016-09-20 23:53:15', '2016-09-20 23:53:15'),
(75, '4.jpg', 49, '2016-09-20 23:53:15', '2016-09-20 23:53:15'),
(74, '3.jpg', 49, '2016-09-20 23:53:15', '2016-09-20 23:53:15'),
(73, '2.jpg', 49, '2016-09-20 23:53:15', '2016-09-20 23:53:15'),
(72, '1.jpg', 49, '2016-09-20 23:53:15', '2016-09-20 23:53:15'),
(71, 'IMG_2471.JPG', 48, '2016-09-20 23:18:35', '2016-09-20 23:18:35'),
(70, 'IMG_2464.JPG', 48, '2016-09-20 23:18:35', '2016-09-20 23:18:35'),
(69, 'IMG_2463.JPG', 48, '2016-09-20 23:18:35', '2016-09-20 23:18:35'),
(68, 'IMG_2447.JPG', 47, '2016-09-20 21:51:51', '2016-09-20 21:51:51'),
(67, 'IMG_2446.JPG', 47, '2016-09-20 21:51:51', '2016-09-20 21:51:51'),
(66, 'IMG_2443.JPG', 46, '2016-09-20 21:50:15', '2016-09-20 21:50:15'),
(65, 'IMG_2440.JPG', 46, '2016-09-20 21:50:15', '2016-09-20 21:50:15'),
(64, 'IMG_2449.JPG', 45, '2016-09-20 20:53:27', '2016-09-20 20:53:27'),
(63, 'IMG_2446.JPG', 45, '2016-09-20 20:53:27', '2016-09-20 20:53:27'),
(62, 'IMG_2444.JPG', 44, '2016-09-20 20:48:43', '2016-09-20 20:48:43'),
(61, 'IMG_2443.JPG', 44, '2016-09-20 20:48:43', '2016-09-20 20:48:43');

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
