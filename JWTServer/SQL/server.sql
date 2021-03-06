-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2017 at 11:58 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `server`
--

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `Id` int(11) NOT NULL,
  `gameDate` varchar(20) NOT NULL,
  `homeTeam` int(11) NOT NULL,
  `homeGoal` int(11) NOT NULL,
  `awayGoal` int(11) NOT NULL,
  `awayTeam` int(11) NOT NULL,
  `attendance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`Id`, `gameDate`, `homeTeam`, `homeGoal`, `awayGoal`, `awayTeam`, `attendance`) VALUES
(1, '24/02/2017', 1, 1, 4, 4, 2),
(2, '24/02/2017', 5, 2, 1, 9, 4),
(3, '24/02/2017', 7, 0, 1, 8, 2),
(4, '24/02/2017', 11, 1, 2, 2, 1),
(5, '24/02/2017', 6, 0, 1, 3, 1),
(6, '24/02/2017', 12, 5, 1, 10, 2),
(7, '03/03/2017', 9, 2, 1, 1, 5),
(8, '03/03/2017', 8, 2, 0, 11, 1),
(9, '03/03/2017', 3, 4, 0, 7, 0),
(10, '03/03/2017', 2, 5, 3, 6, 1),
(11, '04/03/2017', 10, 0, 4, 5, 2),
(12, '10/03/2017', 9, 0, 1, 4, 3),
(13, '10/03/2017', 6, 1, 1, 7, 0),
(14, '10/03/2017', 10, 1, 1, 11, 1),
(15, '10/03/2017', 5, 1, 0, 12, 3),
(16, '10/03/2017', 8, 1, 4, 3, 1),
(17, '10/03/2017', 1, 3, 2, 2, 1),
(18, '13/03/2017', 2, 2, 1, 8, 638),
(19, '13/03/2017', 3, 2, 1, 10, 2),
(20, '13/03/2017', 4, 3, 1, 5, 1),
(21, '13/03/2017', 7, 1, 2, 9, 1),
(22, '13/03/2017', 12, 0, 1, 1, 1),
(23, '13/03/2017', 11, 1, 2, 6, 895),
(24, '17/03/2017', 9, 1, 2, 3, 3),
(25, '17/03/2017', 1, 1, 1, 7, 0),
(26, '18/03/2017', 4, 4, 0, 8, 1),
(27, '18/03/2017', 5, 3, 0, 11, 1),
(28, '18/03/2017', 12, 1, 1, 6, 1),
(29, '18/03/2017', 10, 3, 2, 2, 1),
(30, '25/03/2017', 11, 2, 1, 9, 2),
(31, '25/03/2017', 6, 2, 1, 10, 1),
(32, '25/03/2017', 8, 0, 1, 1, 772),
(33, '25/03/2017', 3, 2, 1, 5, 6),
(34, '25/03/2017', 2, 0, 1, 12, 649),
(35, '31/03/2017', 12, 0, 3, 3, 2),
(36, '31/03/2017', 4, 2, 3, 2, 1),
(37, '31/03/2017', 9, 3, 2, 6, 2),
(38, '31/03/2017', 5, 3, 1, 8, 3),
(39, '31/03/2017', 1, 0, 4, 11, 1),
(40, '03/04/2017', 0, 0, 0, 0, 0),
(41, '03/04/2017', 7, 1, 1, 10, 891),
(42, '07/04/2017', 6, 0, 2, 5, 1),
(43, '07/04/2017', 11, 0, 2, 12, 1),
(44, '07/04/2017', 8, 2, 1, 9, 1),
(45, '07/04/2017', 3, 3, 0, 4, 5),
(46, '07/04/2017', 2, 1, 0, 7, 0),
(47, '08/04/2017', 10, 2, 0, 1, 1),
(48, '14/04/2017', 9, 1, 0, 10, 2),
(49, '14/04/2017', 7, 1, 1, 11, 1),
(50, '14/04/2017', 5, 1, 3, 2, 3),
(51, '14/04/2017', 4, 0, 2, 6, 1),
(52, '14/04/2017', 1, 0, 2, 3, 2),
(53, '15/04/2017', 12, 3, 0, 8, 1),
(54, '21/04/2017', 12, 1, 1, 7, 1),
(55, '21/04/2017', 6, 0, 2, 8, 905),
(56, '21/04/2017', 11, 0, 3, 3, 1),
(57, '21/04/2017', 5, 2, 0, 1, 2),
(58, '21/04/2017', 2, 4, 2, 9, 2),
(59, '22/04/2017', 10, 1, 1, 4, 1),
(60, '25/04/2017', 4, 1, 1, 12, 1),
(61, '28/04/2017', 9, 1, 1, 12, 2),
(62, '28/04/2017', 7, 2, 1, 5, 1),
(63, '28/04/2017', 8, 1, 1, 10, 803),
(64, '28/04/2017', 4, 2, 2, 11, 1),
(65, '28/04/2017', 3, 2, 1, 2, 5),
(66, '28/04/2017', 1, 2, 0, 6, 1),
(67, '05/05/2017', 4, 2, 0, 1, 1500),
(68, '05/05/2017', 9, 2, 1, 5, 3),
(69, '05/05/2017', 8, 2, 2, 7, 796),
(70, '05/05/2017', 3, 5, 0, 6, 3),
(71, '05/05/2017', 2, 1, 1, 11, 1),
(72, '06/05/2017', 10, 3, 0, 12, 1),
(73, '08/05/2017', 7, 0, 0, 4, 723),
(74, '12/05/2017', 6, 0, 3, 2, 702),
(75, '12/05/2017', 11, 2, 0, 8, 1),
(76, '12/05/2017', 7, 1, 1, 3, 1),
(77, '12/05/2017', 5, 4, 0, 10, 2),
(78, '12/05/2017', 1, 0, 2, 9, 3),
(79, '13/05/2017', 12, 1, 1, 4, 1),
(80, '19/05/2017', 12, 0, 3, 5, 0),
(81, '19/05/2017', 11, 1, 1, 10, 1),
(82, '19/05/2017', 7, 2, 1, 6, 1),
(83, '19/05/2017', 4, 3, 1, 9, 1),
(84, '19/05/2017', 3, 5, 0, 8, 3),
(85, '19/05/2017', 2, 1, 2, 1, 1),
(86, '22/05/2017', 10, 1, 2, 3, 1),
(87, '22/05/2017', 9, 2, 0, 7, 1),
(88, '22/05/2017', 6, 3, 1, 11, 1),
(89, '23/05/2017', 8, 0, 0, 2, 479),
(90, '23/05/2017', 1, 1, 2, 12, 1),
(91, '23/05/2017', 5, 0, 0, 4, 2),
(92, '26/05/2017', 6, 3, 2, 12, 1),
(93, '26/05/2017', 11, 0, 2, 5, 1),
(94, '26/05/2017', 7, 1, 2, 1, 1),
(95, '26/05/2017', 8, 0, 0, 4, 605),
(96, '26/05/2017', 3, 4, 1, 9, 5),
(97, '26/05/2017', 2, 2, 2, 10, 772),
(98, '30/05/2017', 9, 2, 0, 2, 1),
(99, '02/06/2017', 9, 1, 1, 11, 2),
(100, '02/06/2017', 10, 0, 0, 6, 1),
(101, '02/06/2017', 12, 5, 3, 2, 1),
(102, '02/06/2017', 5, 0, 3, 3, 3),
(103, '02/06/2017', 4, 2, 1, 7, 1),
(104, '02/06/2017', 1, 0, 0, 8, 1),
(105, '16/06/2017', 6, 0, 1, 9, 1),
(106, '16/06/2017', 11, 1, 3, 1, 2),
(107, '16/06/2017', 8, 0, 6, 5, 1),
(108, '16/06/2017', 3, 4, 1, 12, 4),
(109, '16/06/2017', 2, 3, 2, 4, 799),
(110, '17/06/2017', 10, 1, 1, 7, 1679),
(111, '23/06/2017', 9, 4, 1, 8, 2),
(112, '23/06/2017', 7, 1, 2, 2, 1),
(113, '23/06/2017', 5, 4, 0, 6, 2),
(114, '23/06/2017', 4, 1, 2, 3, 1500),
(115, '23/06/2017', 1, 2, 0, 10, 0),
(116, '24/06/2017', 12, 2, 2, 11, 1),
(117, '26/06/2017', 5, 2, 0, 7, 2000),
(118, '30/06/2017', 11, 1, 1, 7, 0),
(119, '30/06/2017', 8, 0, 2, 12, 600),
(120, '30/06/2017', 2, 0, 3, 5, 1),
(121, '02/07/2017', 10, 1, 0, 9, 2),
(122, '05/07/2017', 1, 0, 1, 5, 2),
(123, '07/07/2017', 8, 0, 2, 6, 564),
(124, '07/07/2017', 7, 3, 1, 12, 1),
(125, '09/07/2017', 4, 4, 0, 10, 0),
(126, '09/07/2017', 3, 1, 0, 11, 2),
(127, '14/07/2017', 6, 2, 1, 1, 1),
(128, '14/07/2017', 11, 2, 1, 4, 1),
(129, '15/07/2017', 10, 1, 1, 8, 1),
(130, '16/07/2017', 2, 0, 2, 3, 1),
(131, '21/07/2017', 1, 0, 1, 4, 0),
(132, '21/07/2017', 11, 3, 1, 2, 1),
(133, '21/07/2017', 7, 4, 1, 8, 1),
(134, '22/07/2017', 12, 0, 0, 10, 1),
(135, '23/07/2017', 5, 0, 1, 9, 3),
(136, '24/07/2017', 6, 0, 2, 4, 2),
(137, '28/07/2017', 9, 1, 2, 1, 4),
(138, '28/07/2017', 8, 0, 1, 11, 850),
(139, '28/07/2017', 3, 2, 1, 7, 3),
(140, '28/07/2017', 2, 2, 3, 6, 563),
(141, '29/07/2017', 10, 1, 1, 5, 1),
(142, '30/07/2017', 4, 3, 0, 12, 0),
(143, '31/07/2017', 3, 0, 1, 1, 3),
(144, '04/08/2017', 9, 0, 2, 4, 2),
(145, '04/08/2017', 6, 1, 3, 7, 0),
(146, '04/08/2017', 5, 3, 0, 12, 2),
(147, '04/08/2017', 8, 0, 1, 3, 0),
(148, '04/08/2017', 1, 0, 0, 2, 1),
(149, '05/08/2017', 10, 1, 1, 11, 1),
(150, '15/08/2017', 12, 0, 2, 9, 0),
(151, '15/08/2017', 10, 0, 0, 2, 0),
(152, '18/08/2017', 11, 4, 0, 6, 0),
(153, '18/08/2017', 7, 1, 2, 9, 0),
(154, '18/08/2017', 3, 0, 1, 10, 0),
(155, '18/08/2017', 2, 2, 1, 8, 0),
(156, '19/08/2017', 12, 1, 0, 1, 0),
(157, '20/08/2017', 4, 0, 4, 5, 0),
(158, '21/08/2017', 6, 0, 1, 3, 0),
(159, '01/09/2017', 12, 0, 2, 6, 0),
(160, '01/09/2017', 9, 3, 1, 3, 0),
(161, '01/09/2017', 5, 6, 0, 11, 0),
(162, '01/09/2017', 1, 1, 1, 7, 0),
(163, '15/09/2017', 7, 2, 1, 4, 0),
(164, '15/09/2017', 8, 1, 4, 1, 0),
(165, '15/09/2017', 2, 1, 1, 12, 0),
(166, '16/09/2017', 6, 1, 2, 10, 0),
(167, '22/09/2017', 9, 4, 1, 6, 0),
(168, '22/09/2017', 1, 3, 2, 11, 2),
(169, '22/09/2017', 5, 3, 0, 8, 0),
(170, '22/09/2017', 7, 3, 1, 10, 2),
(171, '22/09/2017', 4, 0, 5, 2, 0),
(172, '22/09/2017', 12, 2, 1, 3, 1970),
(173, '25/09/2017', 3, 1, 1, 5, 0),
(174, '25/09/2017', 11, 2, 0, 9, 0),
(175, '07/10/2017', 6, 0, 2, 5, 0),
(176, '07/10/2017', 10, 1, 0, 1, 0),
(177, '07/10/2017', 2, 3, 3, 7, 0),
(178, '07/10/2017', 8, 0, 2, 9, 0),
(179, '07/10/2017', 11, 2, 2, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `ID` int(11) NOT NULL,
  `Team` varchar(50) NOT NULL,
  `Played` int(2) NOT NULL,
  `Won` int(2) NOT NULL,
  `Drew` int(2) NOT NULL,
  `Lost` int(2) NOT NULL,
  `GFor` int(2) NOT NULL,
  `GAgainst` int(2) NOT NULL,
  `Location` char(1) NOT NULL DEFAULT 'H'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`ID`, `Team`, `Played`, `Won`, `Drew`, `Lost`, `GFor`, `GAgainst`, `Location`) VALUES
(3, 'Cork City', 29, 23, 2, 4, 64, 19, 'H'),
(4, 'Dundalk', 29, 19, 3, 7, 65, 20, 'H'),
(5, 'Shamrock Rovers', 29, 15, 2, 12, 44, 38, 'H'),
(6, 'Derry City', 29, 13, 7, 9, 45, 36, 'H'),
(7, 'Bray Wanderers', 29, 12, 6, 11, 51, 47, 'H'),
(8, 'Bohemians', 29, 12, 4, 13, 32, 38, 'H'),
(9, 'Limerick FC', 29, 9, 8, 12, 35, 45, 'H'),
(10, 'At Patricks Athletic', 29, 8, 9, 12, 37, 46, 'H'),
(11, 'Galway United FC', 29, 7, 11, 11, 36, 40, 'H'),
(12, 'Sligo Rovers', 29, 6, 13, 10, 28, 43, 'H'),
(13, 'Finn Harps', 29, 9, 3, 17, 32, 56, 'H'),
(14, 'Drogheda United', 29, 4, 6, 19, 19, 60, 'H');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `teamId` int(11) NOT NULL,
  `teamName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`teamId`, `teamName`) VALUES
(1, 'Bohemians'),
(2, 'Bray Wanderers'),
(3, 'Cork City'),
(4, 'Derry City'),
(5, 'Dundalk'),
(6, 'Finn Harps'),
(7, 'Galway United'),
(8, 'Drogheda United'),
(9, 'Shamrock Rovers'),
(10, 'Sligo Rovers'),
(11, 'St. Patrick\'s Athletic'),
(12, 'Limerick FC');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `memtype` int(2) NOT NULL DEFAULT '0',
  `api_key` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `memtype`, `api_key`) VALUES
(3, 'Tomas', '123', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyTmFtZSI6IlRvbWFzIiwicGFzc3dvcmQiOiIxMjMiLCJtZW1UeXBlIjoiMSJ9.9Ff4euZ8uM4j5U7ospLvH0QKmu-VkulK0T0F0GvrnGo'),
(4, 'Somat', '123', 0, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyTmFtZSI6IlNvbWF0IiwicGFzc3dvcmQiOiIxMjMiLCJtZW1UeXBlIjoiMCJ9.9SE7mfzyIr8cS5CTtj_sD_XKvgzrJi6Rb7PM7b35PQI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `homeTeam` (`homeTeam`),
  ADD KEY `awayTeam` (`awayTeam`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`teamId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `teamId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
