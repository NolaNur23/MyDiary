-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2021 at 02:03 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diary`
--

-- --------------------------------------------------------

--
-- Table structure for table `diary`
--

CREATE TABLE `diary` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diary`
--

INSERT INTO `diary` (`id`, `username`, `judul`, `isi`, `tanggal`) VALUES
(15, 'nolanur', 'ini judul diary ya...', 'ini isi diary...', '2021-03-19 02:12:02'),
(18, 'kuntum', 'good night', 'hahhahaa', '2021-03-18 17:49:54'),
(20, 'nolanur', 'hari jumat', 'weeyy kami sibuk semua. ngerjain tugas bermacam macam wkwkkwk doain yakkkk', '2021-03-19 02:10:52'),
(21, 'nolanur', 'apa lagi ini ya.', 'hari ini kakak semproo gess', '2021-03-18 17:07:29'),
(23, 'nolanur', 'huaa', 'wlkwkw', '2021-03-18 17:47:03'),
(25, 'nolanur', 'ke tujuuuhh', 'bsbsbs', '2021-03-18 17:12:39'),
(26, 'nolanur', 'yang ke 8 tes update?', '1:20', '2021-03-18 18:21:03'),
(27, 'nolanur', 'ke sekian kaliiinya', 'ondes jsjjs', '2021-03-18 19:41:11'),
(31, 'kuntum', 'wish mantappp', 'you', '2021-03-18 18:00:33'),
(32, 'kuntum', 'us', 'hshs', '2021-03-18 18:00:00'),
(33, 'nolanur', 'huuu', 'baha', '2021-03-18 18:06:54'),
(34, 'nolanur', 'js', 'hs', '2021-03-18 18:07:55'),
(35, 'nolanur', 'masi ga jalan?', 'tiduur ni?', '2021-03-18 18:19:22'),
(36, 'nolanur', '', '', '2021-03-18 18:16:13'),
(37, 'nolanur', '', '', '2021-03-18 18:16:22'),
(38, 'nolanur', 'woyalahhhh aduuuhhh', 'wkwkkwkw', '2021-03-19 00:43:17'),
(39, 'nolanur', 'makan nasiii pake apa we?', 'ga tau juga lahh. pake tangan mungkin???', '2021-03-18 18:18:44'),
(40, 'nolanur', 'c', 'd', '2021-03-18 18:29:23'),
(41, 'nolanur', 'cfvgbhnjkml,', 'fghjjkkllbdbnd', '2021-03-19 16:24:47'),
(43, 'nolanur', 'nsns', 'jsjiss', '2021-03-19 00:43:59'),
(44, 'nolanur', '', '', '2021-03-19 02:10:45'),
(45, 'nolanur', 'judul', 'isi', '2021-03-19 02:45:29'),
(46, 'nolanur', 'progres project mobile', 'is', '2021-03-19 02:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `email`, `password`) VALUES
('kuntum', 'kuntum@gmail.com', '123456'),
('nolanur', 'nola@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diary`
--
ALTER TABLE `diary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diary`
--
ALTER TABLE `diary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diary`
--
ALTER TABLE `diary`
  ADD CONSTRAINT `diary_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
