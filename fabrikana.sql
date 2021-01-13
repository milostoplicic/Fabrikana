-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2021 at 11:22 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fabrikana`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `artid` int(11) NOT NULL,
  `engleski` int(1) NOT NULL DEFAULT 0,
  `header` varchar(128) NOT NULL,
  `header_en` varchar(128) NOT NULL,
  `seo` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `tekst` text NOT NULL,
  `tekst_en` text NOT NULL,
  `catid` int(11) NOT NULL,
  `pregledi` int(11) NOT NULL,
  `authorid` int(11) NOT NULL,
  `minview` int(11) NOT NULL DEFAULT 400,
  `comments` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`artid`, `engleski`, `header`, `header_en`, `seo`, `date`, `tekst`, `tekst_en`, `catid`, `pregledi`, `authorid`, `minview`, `comments`) VALUES
(12, 0, 'Манифест', '', 'manifest', '2020-10-07', '<p><img class=\"centar\" src=\"/skupra/content/img/10-2020/88skupra.png\" />Поштовани посетиоче,</p>\r\n<p>овај сајт је настао из моје потребе да поделим са тобом моје добро и лоше. Моје размишљање, ставове као и идеје.</p>\r\n<p>Моја интересовања су разнолика. Али могу рећи да највише знања имам из области интернета и програмирања. То ме највише занима.</p>\r\n<p>Волим филозофију, психологију и на тренутке да побегнем у нереално. Некад се брзо вратим, некад останем месецима. Тамо где није лепо.</p>\r\n<p>А ти, посетиоче, гледај да извучеш поуке, савете, како треба и не треба радити.</p>\r\n<p>Поздрав !!!</p>', '', 7, 13, 1, 400, 0),
(13, 0, 'Дан први', '', 'dan-prvi-08-10-2020', '2020-10-08', '<p><img class=\"levo\" src=\"/skupra/content/img/10-2020/48novi-zavjet.jpg\" />Ево, дође време да Вам пишем. Више не знам ни сам да ли да ти се обраћам у множини или у једнини. Углавном, дође дан да кажем коју реч.</p>\r\n<p>Прво да споменем моје изворе. Јако мало телевизије, много књиге и осредње интернет. Телевизија је постала медији за заглупљивање. Не сећам се да сам скоро гледао неку критичку научну емисију. Или се пласира неки производ, или се лапрда о политици и нашим \"јадним\" поглаварима.</p>\r\n<p>Књига је нешто постојано, темељно углавном, и сврсисходније је. А интернет ко интернет. Деведесет посто смеће и десет посто су корисне информације.</p>\r\n<p>Од књига, тренутно читам \"Нови Завјет\". Ту не би смело било шта да се полемише и опипава, јер онда \"ТА\" књига губи свој смисао. Тако је како је, па ти схвати како хоћеш или можеш.</p>\r\n<p>Јеванђеља сам прочитао. Сад сам кренуо ка делима апостоловим. Занимљиво је да сам чешће почео да се крстим. Ја читам дуго и полако. Обишао сам све манастире у околини и имам лепа искуства.</p>\r\n<p>Нисам ја неки типични верник. Обичан сам човек па верујем колико могу и морам. У друго време морам да живим овај живот. У ком нема баш пуно части и вере. Више је отаљавање.</p>', '', 7, 10, 1, 700, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `catid` int(11) NOT NULL,
  `catname` varchar(64) NOT NULL,
  `catname_en` varchar(64) NOT NULL,
  `catseo` varchar(64) NOT NULL,
  `catdesc` text NOT NULL,
  `catdesc_en` text NOT NULL,
  `image` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`catid`, `catname`, `catname_en`, `catseo`, `catdesc`, `catdesc_en`, `image`) VALUES
(7, 'Основна категорија', 'Basic category', 'osnovna-kategorija', 'Свакодневни чланци који немају конкретну тему, већ су за разоноду. Док не развијем концепт, све теме ћу трпати овде.', 'Everyday articles that do not have a specific topic, but are for fun. Until I develop the concept, I will put all the topics here.', '/skupra/content/img/10-2020/60blog.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `artid` int(11) NOT NULL,
  `cdate` datetime NOT NULL,
  `pub` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `session` varchar(32) NOT NULL,
  `usertype` int(1) NOT NULL,
  `activ` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `email`, `session`, `usertype`, `activ`) VALUES
(1, 'admin', '1234', 'milostoplicic@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 3, 1),
(24, 'admin1', '1234', 'admin1@gmail.com', '4c3d30db18c7e79e27be78c175b7c0a6', 1, 0),
(25, 'asa', 'asa', 'asa@gmail.com', 'c93cf60d57495b7462f5ccf3fdcd9dfb', 1, 1),
(26, 'aqa', 'aqa', 'aqa@gmail.com', '820fad332b6a93de5a07e1fd018c061e', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`artid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `artid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
