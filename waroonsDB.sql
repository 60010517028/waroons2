-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 23, 2019 at 03:38 PM
-- Server version: 5.7.24-log
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `waroons`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbintro`
--

CREATE TABLE `tbintro` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `thumb_name` varchar(255) NOT NULL,
  `ext` varchar(50) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filetmp` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tbmember`
--

CREATE TABLE `tbmember` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text,
  `faculity` varchar(500) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fac_short` varchar(50) NOT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0=ใช้งาน,1=ระงับ,',
  `mem_type` tinyint(4) DEFAULT '0' COMMENT 'ประเภทสมาชิก 0=ทั่วไป,1=ผู้ดูแล, 2=ผู้ดูแลสูงสุด',
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbmember`
--

INSERT INTO `tbmember` (`id`, `name`, `username`, `password`, `faculity`, `email`, `fac_short`, `status`, `mem_type`, `date`) VALUES
(27, 'webmaster', 'theadmin404', 'y9iN9mA9ZMTIVuiNjosUK/PpxmpBNpIBhtTrirEzFlxxnEwQfOpp1Tzs7RFCe/okOBqAbMNBR6ggPPaDMk6U6A==', '0', 'leksofty@gmail.com', 'admin', 1, 1, '2019-09-23 13:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbnews`
--

CREATE TABLE `tbnews` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `detail` text,
  `topic` text NOT NULL,
  `type_id` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  `filename` text,
  `filetmp` varchar(255) DEFAULT NULL,
  `file_size` varchar(255) DEFAULT NULL,
  `quick` int(11) DEFAULT NULL,
  `view` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tbslide`
--

CREATE TABLE `tbslide` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `thumb_name` varchar(255) NOT NULL,
  `ext` varchar(50) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filetmp` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `view` int(11) NOT NULL,
  `active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tbtype`
--

CREATE TABLE `tbtype` (
  `id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `order` varchar(5) NOT NULL,
  `tab_active` varchar(50) NOT NULL,
  `type_name_en` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbtype`
--

INSERT INTO `tbtype` (`id`, `type_name`, `order`, `tab_active`, `type_name_en`) VALUES
(1, 'ประกาศ', '1', 'active', 'news'),
(2, 'ประชาสัมพันธ์', '5', '', 'pr'),
(3, 'รับสมัครงาน', '2', '', 'work'),
(4, 'ประกวดราคา', '3', '', 'bid'),
(5, 'ข่าวบริการ', '4', '', 'service'),
(6, 'ข่าวพระวุณ', '6', '', 'waroon'),
(7, 'ข่าวสวัสดิการ', '7', '', 'author');

-- --------------------------------------------------------

--
-- Table structure for table `usercounter`
--

CREATE TABLE `usercounter` (
  `id_count` int(11) NOT NULL,
  `count` longtext,
  `hits` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `usercounter`
--

INSERT INTO `usercounter` (`id_count`, `count`, `hits`) VALUES
(1, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `useronline`
--

CREATE TABLE `useronline` (
  `id_online` int(11) NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `user_agent` text,
  `timevisit` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `useronline`
--

INSERT INTO `useronline` (`id_online`, `ip`, `user_agent`, `timevisit`) VALUES
(589354, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1569221966);

-- --------------------------------------------------------

--
-- Table structure for table `useronlineday`
--

CREATE TABLE `useronlineday` (
  `id_onlineday` int(11) NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `user_agent` text,
  `timevisit` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `useronlineday`
--

INSERT INTO `useronlineday` (`id_onlineday`, `ip`, `user_agent`, `timevisit`) VALUES
(397772, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1569221966);

-- --------------------------------------------------------

--
-- Table structure for table `useronline_log`
--

CREATE TABLE `useronline_log` (
  `id_online` int(11) NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `user_agent` text,
  `datevisit` date DEFAULT NULL,
  `timevisit` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
--
-- Indexes for table `tbintro`
--
ALTER TABLE `tbintro`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbmember`
--
ALTER TABLE `tbmember`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbnews`
--
ALTER TABLE `tbnews`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `type_status_date` (`date`,`id`) USING BTREE,
  ADD KEY `post_author` (`user_id`) USING BTREE;

--
-- Indexes for table `tbslide`
--
ALTER TABLE `tbslide`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbtype`
--
ALTER TABLE `tbtype`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `usercounter`
--
ALTER TABLE `usercounter`
  ADD PRIMARY KEY (`id_count`) USING BTREE;

--
-- Indexes for table `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`id_online`) USING BTREE;

--
-- Indexes for table `useronlineday`
--
ALTER TABLE `useronlineday`
  ADD PRIMARY KEY (`id_onlineday`) USING BTREE;

--
-- Indexes for table `useronline_log`
--
ALTER TABLE `useronline_log`
  ADD PRIMARY KEY (`id_online`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbintro`
--
ALTER TABLE `tbintro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tbmember`
--
ALTER TABLE `tbmember`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tbnews`
--
ALTER TABLE `tbnews`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1991;

--
-- AUTO_INCREMENT for table `tbslide`
--
ALTER TABLE `tbslide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tbtype`
--
ALTER TABLE `tbtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usercounter`
--
ALTER TABLE `usercounter`
  MODIFY `id_count` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `useronline`
--
ALTER TABLE `useronline`
  MODIFY `id_online` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=589355;

--
-- AUTO_INCREMENT for table `useronlineday`
--
ALTER TABLE `useronlineday`
  MODIFY `id_onlineday` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397773;

--
-- AUTO_INCREMENT for table `useronline_log`
--
ALTER TABLE `useronline_log`
  MODIFY `id_online` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=589353;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
