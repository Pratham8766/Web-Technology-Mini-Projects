-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 04:57 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('978-0-321-94786-4', 'Learning Mobile App Development', 'Jakob Iversen, Michael Eierman', 'mobile_app.jpg', 'Now, one book can help you master mobile app development with both market-leading platforms: Apple\'s iOS and Google\'s Android. Perfect for both students and professionals, Learning Mobile App Development is the only tutorial with complete parallel coverage of both iOS and Android. With this guide, you can master either platform, or both - and gain a deeper understanding of the issues associated with developing mobile apps.\r\n\r\nYou\'ll develop an actual working app on both iOS and Android, mastering the entire mobile app development lifecycle, from planning through licensing and distribution.\r\n\r\nEach tutorial in this book has been carefully designed to support readers with widely varying backgrounds and has been extensively tested in live developer training courses. If you\'re new to iOS, you\'ll also find an easy, practical introduction to Objective-C, Apple\'s native language.', '20.00', 6),
('978-0-7303-1484-4', 'Doing Good By Doing Good', 'Peter Baines', 'doing_good.jpg', 'Doing Good by Doing Good shows companies how to improve the bottom line by implementing an engaging, authentic, and business-enhancing program that helps staff and business thrive. International CSR consultant Peter Baines draws upon lessons learnt from the challenges faced in his career as a police officer, forensic investigator, and founder of Hands Across the Water to describe the Australian CSR landscape, and the factors that make up a program that benefits everyone involved. Case studies illustrate the real effect of CSR on both business and society, with clear guidance toward maximizing involvement, engaging all employees, and improving the bottom line. The case studies draw out the companies that are focusing on creating shared value in meeting the challenges of society whilst at the same time bringing strong economic returns.\r\n\r\nConsumers are now expecting that big businesses with ever-increasing profits give back to the community from which those profits arise. At the same time, shareholders are demanding their share and are happy to see dividends soar. Getting this right is a balancing act, and Doing Good by Doing Good helps companies delineate a plan of action for getting it done.', '20.00', 2),
('978-1-118-94924-5', 'Programmable Logic Controllers', 'Dag H. Hanssen', 'logic_program.jpg', 'Widely used across industrial and manufacturing automation, Programmable Logic Controllers (PLCs) perform a broad range of electromechanical tasks with multiple input and output arrangements, designed specifically to cope in severe environmental conditions such as automotive and chemical plants.Programmable Logic Controllers: A Practical Approach using CoDeSys is a hands-on guide to rapidly gain proficiency in the development and operation of PLCs based on the IEC 61131-3 standard. Using the freely-available* software tool CoDeSys, which is widely used in industrial design automation projects, the author takes a highly practical approach to PLC design using real-world examples. The design tool, CoDeSys, also features a built in simulator / soft PLC enabling the reader to undertake exercises and test the examples.', '20.00', 2),
('978-1-1180-2669-4', 'Professional JavaScript for Web Developers, 3rd Edition', 'Nicholas C. Zakas', 'pro_js.jpg', 'If you want to achieve JavaScript\'s full potential, it is critical to understand its nature, history, and limitations. To that end, this updated version of the bestseller by veteran author and JavaScript guru Nicholas C. Zakas covers JavaScript from its very beginning to the present-day incarnations including the DOM, Ajax, and HTML5. Zakas shows you how to extend this powerful language to meet specific needs and create dynamic user interfaces for the web that blur the line between desktop and internet. By the end of the book, you\'ll have a strong understanding of the significant advances in web development as they relate to JavaScript so that you can apply them to your next website.', '20.00', 1),
('978-1-44937-019-0', 'Learning Web App Development', 'Semmy Purewal', 'web_app_dev.jpg', 'Grasp the fundamentals of web application development by building a simple database-backed app from scratch, using HTML, JavaScript, and other open source tools. Through hands-on tutorials, this practical guide shows inexperienced web app developers how to create a user interface, write a server, build client-server communication, and use a cloud-based service to deploy the application.\r\n\r\nEach chapter includes practice problems, full examples, and mental models of the development workflow. Ideal for a college-level course, this book helps you get started with web app development by providing you with a solid grounding in the process.', '20.00', 3),
('978-1-44937-075-6', 'Beautiful JavaScript', 'Anton Kovalyov', 'beauty_js.jpg', 'JavaScript is arguably the most polarizing and misunderstood programming language in the world. Many have attempted to replace it as the language of the Web, but JavaScript has survived, evolved, and thrived. Why did a language created in such hurry succeed where others failed?\r\n\r\nThis guide gives you a rare glimpse into JavaScript from people intimately familiar with it. Chapters contributed by domain experts such as Jacob Thornton, Ariya Hidayat, and Sara Chipps show what they love about their favorite language - whether it\'s turning the most feared features into useful tools, or how JavaScript can be used for self-expression.', '20.00', 3),
('978-1-4571-0402-2', 'Professional ASP.NET 4 in C# and VB', 'Scott Hanselman', 'pro_asp4.jpg', 'ASP.NET is about making you as productive as possible when building fast and secure web applications. Each release of ASP.NET gets better and removes a lot of the tedious code that you previously needed to put in place, making common ASP.NET tasks easier. With this book, an unparalleled team of authors walks you through the full breadth of ASP.NET and the new and exciting capabilities of ASP.NET 4. The authors also show you how to maximize the abundance of features that ASP.NET offers to make your development process smoother and more efficient.', '20.00', 1),
('978-1-484216-40-8', 'Android Studio New Media Fundamentals', 'Wallace Jackson', 'android_studio.jpg', 'Android Studio New Media Fundamentals is a new media primer covering concepts central to multimedia production for Android including digital imagery, digital audio, digital video, digital illustration and 3D, using open source software packages such as GIMP, Audacity, Blender, and Inkscape. These professional software packages are used for this book because they are free for commercial use. The book builds on the foundational concepts of raster, vector, and waveform (audio), and gets more advanced as chapters progress, covering what new media assets are best for use with Android Studio as well as key factors regarding the data footprint optimization work process and why new media content and new media data optimization is so important.', '20.00', 4),
('978-1-484217-26-9', 'C++ 14 Quick Syntax Reference, 2nd Edition', '	Mikael Olsson', 'c_14_quick.jpg', 'This updated handy quick C++ 14 guide is a condensed code and syntax reference based on the newly updated C++ 14 release of the popular programming language. It presents the essential C++ syntax in a well-organized format that can be used as a handy reference.\r\n\r\nYou won\'t find any technical jargon, bloated samples, drawn out history lessons, or witty stories in this book. What you will find is a language reference that is concise, to the point and highly accessible. The book is packed with useful information and is a must-have for any C++ programmer.\r\n\r\nIn the C++ 14 Quick Syntax Reference, Second Edition, you will find a concise reference to the C++ 14 language syntax. It has short, simple, and focused code examples. This book includes a well laid out table of contents and a comprehensive index allowing for easy review.', '20.00', 4),
('978-1-49192-706-9', 'C# 6.0 in a Nutshell, 6th Edition', 'Joseph Albahari, Ben Albahari', 'c_sharp_6.jpg', 'When you have questions about C# 6.0 or the .NET CLR and its core Framework assemblies, this bestselling guide has the answers you need. C# has become a language of unusual flexibility and breadth since its premiere in 2000, but this continual growth means there\'s still much more to learn.\r\n\r\nOrganized around concepts and use cases, this thoroughly updated sixth edition provides intermediate and advanced programmers with a concise map of C# and .NET knowledge. Dive in and discover why this Nutshell guide is considered the definitive reference on C#.', '20.00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `cust_id` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `income` int(11) NOT NULL,
  `s_score` int(11) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `experience` int(11) NOT NULL,
  `f_size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`cust_id`, `gender`, `age`, `income`, `s_score`, `profession`, `experience`, `f_size`) VALUES
(1, 'Male', 19, 15000, 39, 'Healthcare', 1, 4),
(2, 'Male', 21, 35000, 81, 'Engineer', 3, 3),
(3, 'Female', 20, 86000, 6, 'Engineer', 1, 1),
(4, 'Female', 23, 59000, 77, 'Lawyer', 0, 2),
(5, 'Female', 31, 38000, 40, 'Entertainment', 2, 6),
(6, 'Female', 22, 58000, 76, 'Artist', 0, 2),
(7, 'Female', 35, 31000, 6, 'Healthcare', 1, 3),
(8, 'Female', 23, 84000, 94, 'Healthcare', 1, 3),
(9, 'Male', 64, 97000, 3, 'Engineer', 0, 3),
(10, 'Female', 30, 98000, 72, 'Artist', 1, 4),
(11, 'Male', 67, 7000, 14, 'Engineer', 1, 3),
(12, 'Female', 35, 93000, 99, 'Healthcare', 4, 4),
(13, 'Female', 58, 80000, 15, 'Executive', 0, 5),
(14, 'Female', 24, 91000, 77, 'Lawyer', 1, 1),
(15, 'Male', 37, 19000, 13, 'Doctor', 0, 1),
(16, 'Male', 22, 51000, 79, 'Healthcare', 1, 2),
(17, 'Female', 35, 29000, 35, 'Homemaker', 9, 5),
(18, 'Male', 20, 89000, 66, 'Healthcare', 1, 6),
(19, 'Male', 52, 20000, 29, 'Entertainment', 1, 4),
(20, 'Female', 35, 62000, 98, 'Artist', 0, 1),
(21, 'Male', 35, 96000, 35, 'Homemaker', 12, 1),
(22, 'Male', 25, 4000, 73, 'Healthcare', 3, 4),
(23, 'Female', 46, 42000, 5, 'Artist', 13, 2),
(24, 'Male', 31, 71000, 73, 'Artist', 5, 2),
(25, 'Female', 54, 67000, 14, 'Executive', 1, 3),
(26, 'Male', 29, 52000, 82, 'Artist', 1, 3),
(27, 'Female', 45, 68000, 32, 'Healthcare', 9, 8),
(28, 'Male', 35, 78000, 61, 'Artist', 1, 3),
(29, 'Female', 40, 18000, 31, 'Artist', 0, 1),
(30, 'Female', 23, 20000, 87, 'Artist', 5, 4),
(31, 'Male', 60, 39000, 4, 'Artist', 0, 3),
(32, 'Female', 21, 34000, 73, 'Doctor', 1, 2),
(33, 'Male', 53, 59000, 4, 'Healthcare', 1, 3),
(34, 'Male', 18, 62000, 92, 'Homemaker', 9, 7),
(35, 'Female', 49, 91000, 14, 'Lawyer', 1, 2),
(36, 'Female', 21, 95000, 81, 'Healthcare', 3, 4),
(37, 'Female', 42, 14000, 17, 'Doctor', 5, 1),
(38, 'Female', 30, 62000, 73, 'Healthcare', 1, 5),
(39, 'Female', 36, 9000, 26, 'Artist', 8, 2),
(40, 'Female', 20, 69000, 75, 'Artist', 8, 2),
(41, 'Female', 65, 25000, 35, 'Artist', 4, 1),
(42, 'Male', 24, 85000, 92, 'Healthcare', 0, 2),
(43, 'Male', 48, 22000, 36, 'Artist', 14, 3),
(44, 'Female', 31, 33000, 61, 'Artist', 1, 2),
(45, 'Female', 49, 72000, 28, 'Engineer', 8, 1),
(46, 'Female', 24, 3000, 65, 'Lawyer', 4, 2),
(47, 'Female', 50, 52000, 55, 'Artist', 0, 4),
(48, 'Female', 27, 71000, 47, 'Healthcare', 12, 1),
(49, 'Female', 29, 78000, 42, 'Healthcare', 0, 4),
(50, 'Female', 31, 25000, 42, 'Engineer', 1, 1),
(51, 'Female', 49, 88000, 52, 'Artist', 1, 2),
(52, 'Male', 33, 97000, 60, 'Artist', 1, 2),
(53, 'Female', 31, 74000, 54, 'Artist', 1, 1),
(54, 'Male', 59, 68000, 60, 'Entertainment', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept_name`) VALUES
(10, 'sales'),
(20, 'finance'),
(30, 'hr');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dept_name` varchar(10) NOT NULL,
  `dept_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 1, '60.00', '2015-12-03 13:30:12', 'a', 'a', 'a', 'a', 'a'),
(2, 2, '60.00', '2015-12-03 13:31:12', 'b', 'b', 'b', 'b', 'b'),
(3, 3, '20.00', '2015-12-03 19:34:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, '20.00', '2015-12-04 10:19:14', 'a', 'a', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Wrox'),
(2, 'Wiley'),
(3, 'O\'Reilly Media'),
(4, 'Apress'),
(5, 'Packt Publishing'),
(6, 'Addison-Wesley');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `roll_no` int(11) NOT NULL,
  `prn` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mother_name` varchar(20) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `class` varchar(10) NOT NULL,
  `year_of_exam` year(4) NOT NULL,
  `semester` int(11) NOT NULL,
  `wt_mse` int(11) NOT NULL,
  `daa_mse` int(11) NOT NULL,
  `cd_mse` int(11) NOT NULL,
  `cc_mse` int(11) NOT NULL,
  `wt_ese` int(11) NOT NULL,
  `daa_ese` int(11) NOT NULL,
  `cd_ese` int(11) NOT NULL,
  `cc_ese` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`roll_no`, `prn`, `name`, `mother_name`, `branch`, `class`, `year_of_exam`, `semester`, `wt_mse`, `daa_mse`, `cd_mse`, `cc_mse`, `wt_ese`, `daa_ese`, `cd_ese`, `cc_ese`) VALUES
(48, 12120456, 'Pushkar Pophali', 'Rajani', 'Computer Engineering', 'TY', 2022, 1, 80, 90, 85, 90, 78, 90, 87, 78),
(56, 12120465, 'Harsh Upadhye', 'Suhani', 'Computer Engineering', 'TY', 2022, 1, 98, 78, 73, 89, 94, 92, 88, 67),
(70, 12123454, 'Vishal Rothe', 'Vandana', 'Computer Engineering', 'TY', 2022, 1, 91, 94, 89, 79, 90, 81, 93, 88),
(31, 12120908, 'Janhvi Bhandekar', 'Archana', 'Computer Engineering', 'TY', 2022, 1, 87, 90, 96, 95, 78, 89, 92, 90);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirm` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`username`, `password`, `confirm`) VALUES
('pratham87', 'prath78', 'prath78'),
('', '', ''),
('', '', ''),
('', '', ''),
('prath87', 'poi', 'poi'),
('rucha87', 'poi', 'poi'),
('rucha87', 'poi', 'poi'),
('', '', ''),
('rucha876', 'ios', 'ios'),
('prath', 'yui', 'yui'),
('rajan', 'pass', 'pass'),
('sarvesh', 'pass', 'pass'),
('ujjwal', 'pass', 'pass'),
('parth', 'pass', 'pass'),
('shreya', 'pass', 'pass'),
('Tanmay87', 'password', 'password'),
('ds', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
