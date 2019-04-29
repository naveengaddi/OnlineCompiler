-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 29, 2019 at 11:05 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `compiler`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `utype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `date`, `utype`) VALUES
(1, 'Naveen', 'rgukt123', '2018-09-17 15:52:17', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `q` varchar(10) NOT NULL,
  `ans` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`q`, `ans`) VALUES
('q1', 'type'),
('q2', 'yes'),
('q3', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `contests`
--

CREATE TABLE `contests` (
  `cname` varchar(200) NOT NULL,
  `cid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `choster` varchar(100) NOT NULL,
  `qtitle` varchar(200) NOT NULL,
  `qdesc` longtext NOT NULL,
  `qio` text NOT NULL,
  `qconstraints` text NOT NULL,
  `qexpl` text NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contests`
--

INSERT INTO `contests` (`cname`, `cid`, `hid`, `qid`, `choster`, `qtitle`, `qdesc`, `qio`, `qconstraints`, `qexpl`, `start_time`, `end_time`) VALUES
('Prime Challenge', 1, 0, 1, 'Naveen Gaddi', 'Find Sum of Prime Numbers', 'Sum of Primes in a given Array', '   input:\n\n    i) N (size of array)\nii)N space separated integers\n\nouput:\n\ni) single integer(sum of primes)', ' Contraints:\r\n			1<=N<=10', 'Ex: 			i/p: 				2 				1 2 			o/p: 				2', '2019-04-09 08:30:48', '2019-03-30 06:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `contests_reg`
--

CREATE TABLE `contests_reg` (
  `cname` varchar(100) NOT NULL,
  `cques` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `total_ques` longtext NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contests_reg`
--

INSERT INTO `contests_reg` (`cname`, `cques`, `hid`, `total_ques`, `start_time`, `end_time`) VALUES
('Prime Challenge', 1, 0, '1) Find Sum of Prime Numbers\r\n   input:\r\n\r\n    i) N (size of array)\r\nii)N space separated integers\r\n\r\nouput:\r\n\r\ni) single integer(sum of primes)\r\n Contraints:\r\n			1<=N<=10	', '2019-04-08 08:30:00', '2019-04-08 10:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `hoster`
--

CREATE TABLE `hoster` (
  `hid` int(11) NOT NULL,
  `hname` varchar(100) NOT NULL,
  `haddress` text NOT NULL,
  `hpassword` varchar(100) NOT NULL,
  `hmail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoster`
--

INSERT INTO `hoster` (`hid`, `hname`, `haddress`, `hpassword`, `hmail`) VALUES
(0, 'Naveen Gaddi', '3-23/1 chekkapally', 'Rgukt@123', 'naveenyadav6256@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mock_bits`
--

CREATE TABLE `mock_bits` (
  `userid` varchar(10) NOT NULL,
  `score` int(11) NOT NULL,
  `contest` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mock_bits`
--

INSERT INTO `mock_bits` (`userid`, `score`, `contest`, `date`) VALUES
('B141032', 100, 'mock_bits', '2018-08-18 11:44:36'),
('B141120', 66, 'mock_bits', '2018-08-18 12:27:18'),
('B141252', 33, 'mock_bits', '2018-08-18 12:16:08'),
('B141356', 66, 'mock_bits', '2018-08-18 11:45:52'),
('B141410', 100, 'mock_bits', '2018-08-18 11:23:26'),
('B141459', 33, 'mock_bits', '2018-08-18 12:14:17'),
('B141464', 66, 'mock_bits', '2018-08-18 11:51:53'),
('B141471', 0, 'mock_bits', '2018-08-18 11:40:08'),
('B141623', 100, 'mock_bits', '2018-08-18 12:18:48'),
('B141641', 0, 'mock_bits', '2018-08-18 12:15:33'),
('B141724', 100, 'mock_bits', '2018-08-18 11:44:37'),
('B141793', 66, 'mock_bits', '2018-08-18 11:39:47'),
('B141840', 100, 'mock_bits', '2018-08-18 12:19:23'),
('B141865', 33, 'mock_bits', '2018-08-18 12:20:26'),
('B141929', 33, 'mock_bits', '2018-08-18 12:28:32'),
('B141935', 66, 'mock_bits', '2018-08-18 11:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `userid` varchar(10) NOT NULL,
  `score` int(11) NOT NULL,
  `contest` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`userid`, `score`, `contest`, `date`) VALUES
('B141410', 100, 'Sum Prog', '2019-04-09 03:53:24'),
('naveenyada', 0, 'Sum Prog', '2019-04-09 10:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `scores_mock1`
--

CREATE TABLE `scores_mock1` (
  `userid` varchar(10) NOT NULL,
  `score` int(3) NOT NULL,
  `cid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scores_mock1`
--

INSERT INTO `scores_mock1` (`userid`, `score`, `cid`, `hid`, `qid`, `date`) VALUES
('B141410', 100, 1, 0, 1, '2019-04-09 00:36:27'),
('naveenyada', 100, 1, 0, 1, '2019-04-09 10:27:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `userid`, `password`, `address`) VALUES
('RAJITHA MUTHUNURI', 'B131804', 'RAJITHA1804', ''),
('G.SUMALATHA', 'B141011', 'BUJJI79', ''),
('Akhila', 'B141028', 'Akhila', ''),
('Vishnupriya', 'B141032', '8331968578032', ''),
('Yennam Priyanka Redd', 'B141053', 'rgukt123', ''),
('Babulal', 'B141082', 'rgukt123', 'AB-2 , CSE  '),
('P.Akhilareddy', 'B141087', '1989221akhila', ''),
('anil', 'B141095', 'anil123', 'AB2-207  CSE'),
('Mounika', 'B141110', 'MOUNI333', ''),
('B.Jyothi', 'B141120', 'charankuma123', ''),
('B.Ranjith', 'B141126', '1148', ''),
('CHATA RAMESH', 'B141127', 'anjhi4494', ''),
('Namani. Alekhya', 'B141170', 'anshu1071071', ''),
('B.Anurdahareddy', 'B141227', '8106240479', ''),
('ramnayak', 'B141247', '1234567890', ''),
('B.Nandini', 'B141252', 'nandu1252', ''),
('SHIREESHA POLAPELLY', 'B141270', 'SHIREESHA', ''),
('vasantha', 'B141283', 'rgukt123', ''),
('B141287', 'B141287', 'MEENA1287', ''),
('Ramya', 'B141316', 'oslab', ''),
('P.ASWANI', 'B141331', 'jesusakhil', ''),
('G.SRAVANI', 'B141356', 'SRAVANIREDDY123', ''),
('sathish', 'B141357', 'rgukt1', 'AB-2, 207\r\nBranch CSE\r\n'),
('ANUSHA', 'B141390', 'anusai12', ''),
('SAISRIVANI', 'B141405', 'SRIVANI', ''),
('Naveen', 'B141410', 'rgukt123', ''),
('sandeep guggilla', 'B141438', '1438', ''),
('Prudvi', 'B141447', 'lplppspneela', ''),
('PAKIDE RAKESH', 'B141459', 'rakesh1459', ''),
('DHANALAKSHMI MULA', 'B141464', 'DHANAREDDYMULA', 'AB-2,207                 '),
('B Dastagiri', 'B141471', 'dastagiri123@143', ''),
('preethi medida', 'B141475', 'sruthi', ''),
('prakash', 'B141480', 'opopop', 'AB2-207 CSE'),
('bhanu', 'B141492', 'bhanu', ''),
('narendar', 'B141495', 'narendar', ''),
('G.CHANDANA', 'B141499', 'chandu', 'academic block-2,207'),
('Chandra Sri', 'B141534', 'sree', ''),
('Thungani Chaitanya', 'B141590', 'rgukt123', ''),
('padmavathi', 'B141602', 'oslab', ''),
('G.Vinay', 'B141623', 'vinayvinnu', ''),
('Nani Varun', 'B141641', 'rgukt123', ''),
('B141652', 'B141652', 'SWEETY12345', ''),
('venu', 'B141666', 'u7dukvenu', ''),
('divya', 'B141688', 'ABCDEFGHIJ123', ''),
('Harshini', 'B141724', 'harshini', ''),
('NAVYA', 'B141743', 'DIVYANI12', ''),
('SRUJANACHALLURI', 'B141755', 'SAJUNA@123', ''),
('Imran', 'B141765', 'imran1765', 'AB2-207  CSE'),
('Prashanthi', 'B141775', 'archana', ''),
('sana', 'B141793', 'R62ED', ''),
('vamshi', 'B141804', '141804', ''),
('SANTHOSH DURGAM', 'B141838', 'ERNESTOOSLAB', ''),
('Rodda Manirathnam', 'B141840', 'rgukt123', ''),
('Rajasri', 'B141865', 'navina', ''),
('Bhanu Prakash', 'B141895', 'sunny90100', ''),
('achsah roseleena', 'B141905', 'achsah1998', ''),
('Junaid', 'B141911', 'qweerty123', 'AB-2 207 ,rgukt ,basar'),
('SAIDIVYA GUDALA', 'B141929', 'CHAKSHU', ''),
('Repalle Thabitha', 'B141935', 'thabitha98', ''),
('sindhu', 'B141968', 'sindhu123', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contests`
--
ALTER TABLE `contests`
  ADD PRIMARY KEY (`cid`,`qid`);

--
-- Indexes for table `hoster`
--
ALTER TABLE `hoster`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `mock_bits`
--
ALTER TABLE `mock_bits`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
