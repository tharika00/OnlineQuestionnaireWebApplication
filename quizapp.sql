-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2022 at 01:39 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'janith@jwareautomation.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('5b141d712647f', '5b141d71485b9'),
('5b141d718f873', '5b141d71978be'),
('5b141d71ddb46', '5b141d71e5f43'),
('5b141d721a738', '5b141d7222884'),
('5b141d7260b7d', '5b141d7268b9a'),
('5b141d72a6fa1', '5b141d72aefcb'),
('5b141d72d7a1c', '5b141d72dfa7b'),
('5b141d731429b', '5b141d731c234'),
('5b141d7345176', '5b141d734cd1b'),
('5b141d737ddfc', '5b141d73858df'),
('5b1422651fdde', '5b1422654ab51'),
('5b14226574ed5', '5b1422657d064'),
('5b142265b5d08', '5b142265c09f5'),
('5b1422661d93f', '5b14226635e0d'),
('5b14226663cf4', '5b1422666bf2b'),
('5b1422669481b', '5b1422669c8ea'),
('5b142266c525c', '5b142266cd369'),
('5b14226711d91', '5b14226719fb1'),
('5b1422674286d', '5b1422674a9ee'),
('5b1422677371f', '5b1422677b3fc');

-- --------------------------------------------------------

--
-- Table structure for table `candidatedetails`
--

CREATE TABLE `candidatedetails` (
  `id` int(11) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `candidatename` varchar(100) NOT NULL,
  `candidatemail` varchar(50) NOT NULL,
  `candidatephone` int(12) NOT NULL,
  `position` char(50) NOT NULL,
  `languages` char(50) NOT NULL,
  `interviewdate` date NOT NULL,
  `interviewtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(10) NOT NULL,
  `userName` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `histo
-- --------------------------------------------------------

--
-- Table structure for table `hrm`
--

CREATE TABLE `hrm` (
  `id` int(11) NOT NULL,
  `hrmname` varchar(100) NOT NULL,
  `hrmemail` varchar(50) NOT NULL,
  `hrmpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'sdb', '5b13ed3a9436a'),
('5b13ed3a6e006', 'jsdb', '5b13ed3a94374'),
('5b13ed3a6e006', 'dsbv', '5b13ed3a94377'),
('5b13ed3a6e006', 'jbdv', '5b13ed3a94379'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d70'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7a'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7d'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d80'),
('5b141d712647f', 'Functions are values, and there is no hard distinction between methods and fields', '5b141d71485b9'),
('5b141d712647f', 'Functions are considered as fields', '5b141d71485dc'),
('5b141d712647f', 'Variables are specific', '5b141d71485e0'),
('5b141d712647f', 'There is no difference', '5b141d71485e4'),
('5b141d718f873', 'Parsing the javascript', '5b141d71978cc'),
('5b141d718f873', 'Interpreting the JavaScript', '5b141d71978be'),
('5b141d718f873', 'Both Compiling & Interpreting the JavaScript', '5b141d71978d1'),
('5b141d718f873', 'Compiling the JavaScript', '5b141d71978d4'),
('5b141d71ddb46', 'Preprocessor', '5b141d71e5f2b'),
('5b141d71ddb46', 'Triggering Event', '5b141d71e5f3c'),
('5b141d71ddb46', 'Function/Method', '5b141d71e5f43'),
('5b141d71ddb46', 'RMI', '5b141d71e5f48'),
('5b141d721a738', 'Missing of Bracket', '5b141d7222820'),
('5b141d721a738', 'Syntax error', '5b141d722282f'),
('5b141d721a738', 'Missing of semicolons', '5b141d7222880'),
('5b141d721a738', 'Division by zero', '5b141d7222884'),
('5b141d7260b7d', 'jQuery', '5b141d7268b8a'),
('5b141d7260b7d', 'Prototype', '5b141d7268b95'),
('5b141d7260b7d', 'Dojo', '5b141d7268b98'),
('5b141d7260b7d', 'Both jQuery and Prototype', '5b141d7268b9a'),
('5b141d72a6fa1', 'Skips the null elements', '5b141d72aefcb'),
('5b141d72a6fa1', 'Skips the defined elements', '5b141d72aefd8'),
('5b141d72a6fa1', 'Skips the existent elements', '5b141d72aefdc'),
('5b141d72a6fa1', 'Skips the defined & existent elements', '5b141d72aefe0'),
('5b141d72d7a1c', 'Simplifies the transaction management', '5b141d72dfa7b'),
('5b141d72d7a1c', 'Need not manage the transaction at all', '5b141d72dfa85'),
('5b141d72d7a1c', 'Enhances the storage', '5b141d72dfa88'),
('5b141d72d7a1c', 'Creates a link between data', '5b141d72dfa8b'),
('5b141d731429b', 'para1.value=\"New Text\";', '5b141d731c234'),
('5b141d731429b', 'para1=\"New Text\"', '5b141d731c242'),
('5b141d731429b', 'para1.firstChild. nodeValue= \"New Text\";', '5b141d731c248'),
('5b141d731429b', 'para1.nodeValue=\"New Text\";', '5b141d731c24b'),
('5b141d7345176', 'sets = sets.AbstractEnumerableSet.extend();', '5b141d734cd10'),
('5b141d7345176', 'sets.SingletonSet = sets.AbstractEnumerableSet.extend(…);', '5b141d734cd1b'),
('5b141d7345176', 'sets.SingletonSet = sets.extend(…);', '5b141d734cd1d'),
('5b141d7345176', 'sets = sets.extend(…);', '5b141d734cd20'),
('5b141d737ddfc', 'maps the elements of another array into itself', '5b141d73858d0'),
('5b141d737ddfc', 'passes each element of the array on which it is invoked to the function you specify, and returns an array containing the values returned by that function', '5b141d73858df'),
('5b141d737ddfc', 'passes each element of the array and returns the necessary mapped elements', '5b141d73858e3'),
('5b141d737ddfc', 'pass the elements of the array into another array', '5b141d73858e8'),
('5b1422651fdde', '32 bits', '5b1422654ab3a'),
('5b1422651fdde', '128 bytes', '5b1422654ab48'),
('5b1422651fdde', '64 bits', '5b1422654ab4d'),
('5b1422651fdde', '16 bytes', '5b1422654ab51'),
('5b14226574ed5', 'IP', '5b1422657d052'),
('5b14226574ed5', 'TCP', '5b1422657d05f'),
('5b14226574ed5', 'UDP', '5b1422657d064'),
('5b14226574ed5', 'ARP', '5b1422657d069'),
('5b142265b5d08', 'Session layer', '5b142265c09e3'),
('5b142265b5d08', 'Physical layer', '5b142265c09f5'),
('5b142265b5d08', 'Data Link layer', '5b142265c09fa'),
('5b142265b5d08', 'Application layer', '5b142265c09ff'),
('5b1422661d93f', '12.0.0.1', '5b14226635df5'),
('5b1422661d93f', '168.172.19.39', '5b14226635e04'),
('5b1422661d93f', '172.15.14.36', '5b14226635e09'),
('5b1422661d93f', '192.168.24.43', '5b14226635e0d'),
('5b14226663cf4', 'Application', '5b1422666bf2b'),
('5b14226663cf4', 'Presentation', '5b1422666bf39'),
('5b14226663cf4', 'Session', '5b1422666bf3e'),
('5b14226663cf4', 'Transport', '5b1422666bf42'),
('5b1422669481b', 'VTP', '5b1422669c8dc'),
('5b1422669481b', 'STP', '5b1422669c8ea'),
('5b1422669481b', 'RIP', '5b1422669c8ef'),
('5b1422669481b', 'CDP', '5b1422669c8f3'),
('5b142266c525c', '14', '5b142266cd353'),
('5b142266c525c', '15', '5b142266cd361'),
('5b142266c525c', '16', '5b142266cd365'),
('5b142266c525c', '30', '5b142266cd369'),
('5b14226711d91', '255.255.255.192', '5b14226719fa0'),
('5b14226711d91', '255.255.255.224', '5b14226719fb1'),
('5b14226711d91', '255.255.255.240', '5b14226719fb7'),
('5b14226711d91', '255.255.255.248', '5b14226719fbb'),
('5b1422674286d', '6', '5b1422674a9ee'),
('5b1422674286d', '8', '5b1422674aa01'),
('5b1422674286d', '30', '5b1422674aa06'),
('5b1422674286d', '32', '5b1422674aa0b'),
('5b1422677371f', '127.0.0.0', '5b1422677b3e9'),
('5b1422677371f', '1.0.0.127', '5b1422677b3f7'),
('5b1422677371f', '127.0.0.1', '5b1422677b3fc'),
('5b1422677371f', '127.0.0.255', '5b1422677b400');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'dbjb', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'dvsd', 4, 1),
('5b141b8009cf0', '5b141d712647f', 'Which of the following scoping type does JavaScript use?', 4, 1),
('5b141b8009cf0', '5b141d718f873', 'Why JavaScript Engine is needed??', 4, 2),
('5b141b8009cf0', '5b141d71ddb46', 'Which of the following can be used to call a JavaScript Code Snippet?', 4, 3),
('5b141b8009cf0', '5b141d721a738', 'Which of the following is not an error in JavaScript?', 4, 4),
('5b141b8009cf0', '5b141d7260b7d', 'Which of the following frameworks focuses on DOM and Ajax utilities?', 4, 5),
('5b141b8009cf0', '5b141d72a6fa1', 'What is the observation made in the following JavaScript code?\r\nif (!a[i]) continue;', 4, 6),
('5b141b8009cf0', '5b141d72d7a1c', 'Which of the following is a feature of the IndexedDB API?', 4, 7),
('5b141b8009cf0', '5b141d731429b', 'If para1 is the DOM object for a paragraph, what is the correct syntax to change the text within the paragraph?', 4, 8),
('5b141b8009cf0', '5b141d7345176', 'To define each of the set classes as a property of the sets object (namespace) for the module, the statement is', 4, 9),
('5b141b8009cf0', '5b141d737ddfc', 'The primary purpose of the array map() function is that it ________', 4, 10),
('5b141f1e8399e', '5b1422651fdde', 'How long is an IPv6 address?', 4, 1),
('5b141f1e8399e', '5b14226574ed5', 'Which protocol does DHCP use at the Transport layer?', 4, 2),
('5b141f1e8399e', '5b142265b5d08', 'Where is a hub specified in the OSI model?', 4, 3),
('5b141f1e8399e', '5b1422661d93f', 'Which of the following is private IP address?', 4, 4),
('5b141f1e8399e', '5b14226663cf4', 'If you use either Telnet or FTP, which is the highest layer you are using to transmit data?', 4, 5),
('5b141f1e8399e', '5b1422669481b', 'Which of the following is a layer 2 protocol used to maintain a loop-free network?', 4, 6),
('5b141f1e8399e', '5b142266c525c', 'What is the maximum number of IP addresses that can be assigned to hosts on a local subnet that uses the 255.255.255.224 subnet mask?', 4, 7),
('5b141f1e8399e', '5b14226711d91', 'You need to subnet a network that has 5 subnets, each with at least 16 hosts. Which classful subnet mask would you use?', 4, 8),
('5b141f1e8399e', '5b1422674286d', 'You have an interface on a router with the IP address of 192.168.192.10/29. Including the router interface, how many hosts can have IP addresses on the LAN attached to the router interface?', 4, 9),
('5b141f1e8399e', '5b1422677371f', 'To test the IP stack on your local host, which IP address would you ping?\r\n\r\n', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('5b141b8009cf0', 'JavaScript', 1, 1, 10, '2022-04-07 07:46:56');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE `timer` (
  `duration` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timer`
--

INSERT INTO `timer` (`duration`) VALUES
('10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `username`, `password`, `usertype`) VALUES
(1, 'Admin', '1234', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `candidatedetails`
--
ALTER TABLE `candidatedetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hrm`
--
ALTER TABLE `hrm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidatedetails`
--
ALTER TABLE `candidatedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hrm`
--
ALTER TABLE `hrm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
