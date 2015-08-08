-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2015 at 01:04 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `foodsafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `order_email` varchar(50) NOT NULL,
  `order_phone` varchar(15) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`, `order_email`, `order_phone`) VALUES
(28, 0, 'INV-2013-00', 0, 'Nấm Linh Chi - Trường Đại học Nông Lâm TP.HCM', 'http://linhchinonglam.edu.vn/', 0, 1, 'Quế', 'Chi', 'quechi.1909@gmail.com', '0163 466 1667', '', 'a:0:{}', 'Quế', 'Chi', '', '60/1 A Đường số 13, F16', '', 'Gò Vâp', '84', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Thu tiền khi giao hàng', 'cod', 'Quế', 'Chi', '', '60/1 A Đường số 13, F16', '', 'Gò Vâp', '84', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Phí vận chuyển cố định', 'flat.flat', '', 625000.0000, 0, 0, 0.0000, 0, '', 2, 4, 'VND', 1.00000000, '118.69.15.29', '118.69.15.29', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2015-03-27 18:19:00', '2015-03-27 18:19:00', '', ''),
(29, 0, 'INV-2013-00', 0, 'Nấm Linh Chi - Trường Đại học Nông Lâm TP.HCM', 'http://linhchinonglam.edu.vn/', 0, 1, 'Quế', 'Chi', 'quechi.1909@gmail.com', '0163 466 1667', '', 'a:0:{}', 'Quế', 'Chi', '', '60/1 A Đường số 13, F16', '', 'Gò Vâp', '84', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Thu tiền khi giao hàng', 'cod', 'Quế', 'Chi', '', '60/1 A Đường số 13, F16', '', 'Gò Vâp', '84', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Phí vận chuyển cố định', 'flat.flat', '', 625000.0000, 1, 18, 125000.0000, 0, 'bui-thi-huong', 2, 4, 'VND', 1.00000000, '118.69.15.29', '118.69.15.29', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2015-03-27 18:21:00', '2015-03-27 18:21:01', '', ''),
(4, 0, 'INV-2013-00', 0, 'Nấm Linh Chi Nông Lâm - Trường Đại học Nông Lâm TP.HCM', 'http://localhost/foodsafe_main/', 2, 1, 'Bommer', 'Luu User', 'quangthi_90@yahoo.com.vn', '0904803779', '', 'b:0;', 'Bommer', 'Luu', '', '129/6/5 Lê Văn Thọ F11 Gò Vấp', '', 'HCM', '84', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'b:0;', 'Cash On Delivery', 'cod', 'Bommer', 'Luu', '', '129/6/5 Lê Văn Thọ F11 Gò Vấp', '', 'HCM', '84', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', 85.0000, 0, 1, 4.0000, 0, '5499358445551', 1, 2, 'USD', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0', 'en-US,en;q=0.5', '2014-12-28 20:35:23', '2014-12-28 20:35:23', '', ''),
(7, 0, 'INV-2013-00', 0, 'Nấm Linh Chi Nông Lâm - Trường Đại học Nông Lâm TP.HCM', 'http://linhchinonglam.edu.vn/', 3, 1, 'Khoa', 'Lê Anh', 'khoale.193@gmail.com', '01665554486', '', 'b:0;', 'Khoa', 'Lê Anh', '', '32/71, đường Cao Thắng, Phường 5, Quận 3', '', 'TP.Hồ Chí Minh', '', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'b:0;', 'Thu tiền khi giao hàng', 'cod', 'Khoa', 'Lê Anh', '', '32/71, đường Cao Thắng, Phường 5, Quận 3', '', 'TP.Hồ Chí Minh', '', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'b:0;', 'Phí vận chuyển cố định', 'flat.flat', 'Gọi điện hẹn trước khi giao hàng\nKhoa: 01665554486', 420005.0000, 1, 0, 0.0000, 0, '', 2, 4, 'VND', 1.00000000, '1.54.182.154', '1.54.182.154', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 'vi,fr-FR;q=0.8,fr;q=0.6,en-US;q=0.4,en;q=0.2,en-GB;q=0.2', '2015-01-17 09:01:33', '2015-01-17 09:01:53', '', ''),
(8, 0, 'INV-2013-00', 0, 'Nấm Linh Chi Nông Lâm - Trường Đại học Nông Lâm TP.HCM', 'http://linhchinonglam.edu.vn/', 3, 1, 'Khoa', 'Lê Anh', 'khoale.193@gmail.com', '01665554486', '', 'b:0;', 'Khoa', 'Lê Anh', '', '32/71, đường Cao Thắng, Phường 5, Quận 3', '', 'TP.Hồ Chí Minh', '', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'b:0;', 'Thu tiền khi giao hàng', 'cod', 'Khoa', 'Lê Anh', '', '32/71, đường Cao Thắng, Phường 5, Quận 3', '', 'TP.Hồ Chí Minh', '', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'b:0;', 'Phí vận chuyển cố định', 'flat.flat', '', 420005.0000, 0, 0, 0.0000, 0, '', 2, 4, 'VND', 1.00000000, '1.54.182.154', '1.54.182.154', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 'vi,fr-FR;q=0.8,fr;q=0.6,en-US;q=0.4,en;q=0.2,en-GB;q=0.2', '2015-01-17 09:04:59', '2015-01-17 09:04:59', '', ''),
(10, 0, 'INV-2013-00', 0, 'Nấm Linh Chi Nông Lâm - Trường Đại học Nông Lâm TP.HCM', 'http://linhchinonglam.edu.vn/', 0, 1, 'chi', 'nguyen', 'thegioinam66@gmail.com', '0985932295', '', 'a:0:{}', 'chi', 'nguyen', '', '261bis tran hung dao, phuong co giang', '', 'quan 1', '84', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Thu tiền khi giao hàng', 'cod', 'chi', 'nguyen', '', '261bis tran hung dao, phuong co giang', '', 'quan 1', '84', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Phí vận chuyển cố định', 'flat.flat', 'giao hang gio hanh chinh', 600005.0000, 1, 2, 30000.0000, 0, 'q1', 2, 4, 'VND', 1.00000000, '113.161.91.82', 'unknown, 113.161.91.82', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.34 Safari/536.11', 'en-US,en;q=0.8', '2015-01-30 12:57:24', '2015-01-30 12:57:30', '', ''),
(11, 0, 'INV-2013-00', 0, 'Nấm Linh Chi - Trường Đại học Nông Lâm TP.HCM', 'http://linhchinonglam.edu.vn/', 0, 1, 'tommy', 'pham', 'msbs.com.vn@gmail.com', '0919091822', '', 'a:0:{}', 'tommy', 'pham', '', '180 Nguyen Cong Tru Q1', '', 'quận 1', '48', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Thu tiền khi giao hàng', 'cod', 'tommy', 'pham', '', '180 Nguyen Cong Tru Q1', '', 'quận 1', '48', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Phí vận chuyển cố định', 'flat.flat', '', 275000.0000, 1, 2, 13750.0000, 0, 'q1', 2, 4, 'VND', 1.00000000, '113.161.91.82', 'unknown, 113.161.91.82', 'Mozilla/5.0 (Windows NT 6.1; rv:35.0) Gecko/20100101 Firefox/35.0', 'en-US,en;q=0.5', '2015-02-04 10:09:18', '2015-02-04 10:10:40', '', ''),
(17, 0, 'INV-2013-00', 0, 'Nấm Linh Chi - Trường Đại học Nông Lâm TP.HCM', 'http://linhchinonglam.edu.vn/', 0, 1, 'Thao', 'Le', 'msbs.com.vn@gmail.com', '01636699958', '', 'a:0:{}', 'Thao', 'Le', '', '188 Nguyen Cong Tru', '', 'quan1', '123', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Thu tiền khi giao hàng', 'cod', 'Thao', 'Le', '', '188 Nguyen Cong Tru', '', 'quan1', '123', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', 'a:0:{}', 'Phí vận chuyển cố định', 'flat.flat', '', 475000.0000, 1, 2, 23750.0000, 0, 'q1', 2, 4, 'VND', 1.00000000, '113.161.91.82', 'unknown, 113.161.91.82', 'Mozilla/5.0 (Windows NT 6.1; rv:35.0) Gecko/20100101 Firefox/35.0', 'en-US,en;q=0.5', '2015-02-27 11:35:13', '2015-02-27 11:35:29', '', ''),
(54, 0, 'INV-2013-00', 0, 'Nấm Linh Chi - Trường Đại học Nông Lâm TP.HCM', 'http://localhost/Templates/', 0, 0, 'Bommer', 'Luu', 'quangthi_90@yahoo.com.vn', '098098', '', '', 'Bommer', 'Luu', '', 'jflasjdfl', '', 'fa sfsa ', '', 'Viet Nam', 230, 'Bac Giang', 3752, '', '', 'Cash On Delivery', 'cod', 'Bommer', 'Luu', '', 'jflasjdfl', '', 'fa sfsa ', '', 'Viet Nam', 230, 'Bac Giang', 3752, '', '', 'Flat Shipping Rate', 'flat.flat', '', 1150000.0000, 1, 0, 0.0000, 0, '', 1, 2, 'USD', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', 'en-US,en;q=0.5', '2015-06-06 12:50:16', '2015-06-06 12:51:11', '', ''),
(50, 0, 'INV-2013-00', 0, 'Nấm Linh Chi - Trường Đại học Nông Lâm TP.HCM', 'http://localhost/Templates/', 2, 1, 'Bommer', 'Luu User', 'quangthi_90@yahoo.com.vn', '0904803779', '', '', 'Bommer', 'Luu', '', '129/6/5 Lê Văn Thọ F11 Gò Vấp', '', 'HCM', '84', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '', 'Thu tiền khi giao hàng', 'cod', 'Bommer', 'Luu', '', '129/6/5 Lê Văn Thọ F11 Gò Vấp', '', 'HCM', '84', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '', 'Phí vận chuyển cố định', 'flat.flat', '', 750000.0000, 1, 0, 0.0000, 0, '', 2, 4, 'VND', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0', 'en-US,en;q=0.5', '2015-04-12 10:40:12', '2015-04-12 11:07:59', '', ''),
(51, 0, 'INV-2013-00', 0, 'Nấm Linh Chi - Trường Đại học Nông Lâm TP.HCM', 'http://localhost/Templates/', 2, 0, 'Bommer', 'Luu User', 'quangthi_90@yahoo.com.vn', '0904803779', '', '', 'Bommer', 'Luu', '', '129/6/5 Lê Văn Thọ F11 Gò Vấp', '', 'HCM', '84', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '', 'Thu tiền khi giao hàng', 'cod', 'Bommer', 'Luu', '', '129/6/5 Lê Văn Thọ F11 Gò Vấp', '', 'HCM', '84', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '', 'Phí vận chuyển cố định', 'flat.flat', '', 750000.0000, 1, 0, 0.0000, 0, '', 2, 4, 'VND', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0', 'en-US,en;q=0.5', '2015-04-14 13:49:28', '2015-04-14 13:50:16', '', ''),
(39, 0, 'INV-2013-00', 0, 'Nấm Linh Chi - Trường Đại học Nông Lâm TP.HCM', 'http://localhost/Templates/', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 230, '', 3780, '', '', 'Thu tiền khi giao hàng', 'cod', '', '', '', '', '', '', '', '', 230, '', 3780, '', '', 'Phí vận chuyển cố định', 'flat.flat', '', 2800000.0000, 0, 0, 0.0000, 0, '', 2, 4, 'VND', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0', 'en-US,en;q=0.5', '2015-04-07 23:55:53', '2015-04-07 23:55:53', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
