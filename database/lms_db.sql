-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 18, 2026 at 01:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `num_of_record` int(11) NOT NULL,
  `category_entry_date` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `active_record` varchar(255) NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `num_of_record`, `category_entry_date`, `user_id`, `user_email`, `active_record`) VALUES
(2, 'DSA', 0, '26-03-2024', 17, 'piyushraikwar289@gmail.com', 'No'),
(3, 'Back-End', 5, '26-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes'),
(5, 'Front-End', 1, '26-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes'),
(6, 'Development Tools', 1, '30-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `chapter_id` int(11) NOT NULL,
  `chapter_index` int(11) NOT NULL,
  `chapter_title` varchar(255) NOT NULL,
  `chapter_description` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `chapter_entry_date` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `active_record` varchar(255) NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`chapter_id`, `chapter_index`, `chapter_title`, `chapter_description`, `course_id`, `chapter_entry_date`, `user_id`, `user_email`, `active_record`) VALUES
(7, 1, 'Chapter One', '<p>&nbsp;</p><figure class=\"media\"><oembed url=\"https://youtu.be/pApyQSxCNsA?si=eAjKpr-oRG4DHHb5\"></oembed></figure><p>Chapter<a href=\"https://youtu.be/pApyQSxCNsA?si=eAjKpr-oRG4DHHb5\"> Description</a></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>ID</td><td>NAME</td></tr><tr><td>1</td><td><p>Piyush kumar raikwar</p><p>&nbsp;</p></td></tr><tr><td>&nbsp;</td><td><figure class=\"media\"><oembed url=\"https://youtu.be/pApyQSxCNsA?si=eAjKpr-oRG4DHHb5\"></oembed></figure></td></tr></tbody></table></figure>', 62, '29-03-2024', '17', 'piyushraikwar289@gmail.com', 'Yes'),
(8, 2, 'Chapte Two', '<figure class=\"media\"><oembed url=\"https://www.youtube.com/watch?v=H08tGjXNHO4\"></oembed></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><figure class=\"media\"><oembed url=\"https://open.spotify.com/album/2IXlgvecaDqOeF3viUZnPI?si=ogVw7KlcQAGZKK4Jz9QzvA\"></oembed></figure><p>&nbsp;</p><p>&nbsp;</p><figure class=\"media\"><oembed url=\"https://www.instagram.com/p/BmMZgokAGGQ/?taken-by=nasa\"></oembed></figure><p>&nbsp;</p>', 62, '29-03-2024', '17', 'piyushraikwar289@gmail.com', 'Yes'),
(9, 1, 'Introduction', '<p>Chapter Description</p>', 61, '29-03-2024', '17', 'piyushraikwar289@gmail.com', 'Yes'),
(10, 1, 'Introduction', '<p>Chapter Description</p>', 61, '29-03-2024', '17', 'piyushraikwar289@gmail.com', 'Yes'),
(11, 1, 'Introduction Of JWT', '<p>Chapter Description</p>', 57, '29-03-2024', '17', 'piyushraikwar289@gmail.com', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL,
  `chat_text` text NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `chat_time` varchar(255) NOT NULL,
  `chat_date` varchar(255) NOT NULL,
  `active_record` varchar(255) NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chat_id`, `chat_text`, `sender_id`, `receiver_id`, `chat_time`, `chat_date`, `active_record`) VALUES
(8, 'sfd', 17, 18, '09:03 AM', '27-03-2024', 'Yes'),
(9, 'vs', 17, 18, '10:03 AM', '27-03-2024', 'Yes'),
(10, 'Test One', 17, 18, '10:03 AM', '27-03-2024', 'Yes'),
(11, 'Hello Palak', 17, 18, '10:03 AM', '27-03-2024', 'Yes'),
(12, 'Hello Ji', 17, 18, '10:03 AM', '27-03-2024', 'Yes'),
(13, 'Text Message', 17, 18, '10:03 AM', '27-03-2024', 'Yes'),
(14, 'One ', 17, 18, '10:03 AM', '27-03-2024', 'Yes'),
(15, 'Two More', 18, 17, '10:03 AM', '27-03-2024', 'No'),
(16, 'Hello', 17, 17, '10:03 AM', '27-03-2024', 'Yes'),
(17, 'Test Message', 17, 17, '10:03 AM', '27-03-2024', 'Yes'),
(18, 'sdfsd', 17, 17, '10:03 AM', '27-03-2024', 'Yes'),
(19, 'sdfdsf', 17, 18, '11:03 AM', '27-03-2024', 'Yes'),
(20, 'sdfdds', 17, 18, '11:03 AM', '27-03-2024', 'Yes'),
(21, 'dgdfgfdgffvxb', 17, 18, '11:03 AM', '27-03-2024', 'Yes'),
(22, 'ONE', 17, 18, '11:03 AM', '27-03-2024', 'Yes'),
(23, 'Two', 17, 18, '11:03 AM', '27-03-2024', 'Yes'),
(24, 'sdf', 17, 17, '11:03 AM', '27-03-2024', 'Yes'),
(25, 'hellow', 18, 18, '11:03 AM', '27-03-2024', 'No'),
(26, 'Hii Piyush', 18, 17, '11:03 AM', '27-03-2024', 'No'),
(27, 'Hi Piyush Second Text', 18, 17, '11:03 AM', '27-03-2024', 'No'),
(28, 'Hellow Palak', 18, 18, '11:03 AM', '27-03-2024', 'No'),
(29, 'one', 17, 18, '11:03 AM', '27-03-2024', 'Yes'),
(30, 'Hello Palak To PIYUSH ', 18, 17, '11:03 AM', '27-03-2024', 'No'),
(31, 'Hello PIYUSH TO PALAK JI', 17, 18, '11:03 AM', '27-03-2024', 'Yes'),
(32, 'Hello Piyush Brave This side', 19, 17, '11:03 AM', '27-03-2024', 'Yes'),
(33, 'Brave to Palak', 19, 18, '12:03 PM', '27-03-2024', 'Yes'),
(34, 'Piyush to palak', 17, 18, '04:03 AM', '27-03-2024', 'Yes'),
(35, 'Palak To Piyush', 18, 17, '04:03 AM', '27-03-2024', 'No'),
(36, 'Hi Brave (Palak)', 18, 19, '04:03 AM', '27-03-2024', 'No'),
(37, 'Thanks', 18, 17, '04:03 AM', '27-03-2024', 'No'),
(38, 'Why', 17, 18, '04:03 AM', '27-03-2024', 'Yes'),
(39, 'Brave (Hello)', 19, 18, '04:03 AM', '27-03-2024', 'Yes'),
(40, 'k', 19, 19, '04:03 AM', '27-03-2024', 'Yes'),
(41, 'jhj', 19, 18, '04:03 AM', '27-03-2024', 'Yes'),
(42, 'jhj', 19, 18, '04:03 AM', '27-03-2024', 'Yes'),
(43, 's', 17, 19, '07:03 AM', '27-03-2024', 'Yes'),
(44, 'Group Notes', 17, 17, '09:03 AM', '27-03-2024', 'Yes'),
(45, 'sdfd', 17, 17, '06:03 AM', '30-03-2024', 'Yes'),
(46, 'sfsd', 17, 17, '06:03 AM', '30-03-2024', 'Yes'),
(47, 'sfvv', 17, 17, '06:03 AM', '30-03-2024', 'Yes'),
(48, 'sfsdfd', 17, 17, '06:03 AM', '30-03-2024', 'Yes'),
(49, 'sfdsfsd', 17, 17, '06:03 AM', '30-03-2024', 'Yes'),
(50, 'sdfsdfdsf', 17, 17, '06:03 AM', '30-03-2024', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `cid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `main_price` varchar(255) NOT NULL,
  `sell_price` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `learning_skill_1` varchar(255) NOT NULL,
  `learning_skill_2` varchar(255) NOT NULL,
  `learning_skill_3` varchar(255) NOT NULL,
  `feature_1` varchar(255) NOT NULL,
  `feature_2` varchar(255) NOT NULL,
  `feature_3` varchar(255) NOT NULL,
  `feature_4` varchar(255) NOT NULL,
  `skill_tags` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `level` varchar(255) NOT NULL,
  `prerequisties_1` varchar(255) NOT NULL,
  `prerequisties_2` varchar(255) NOT NULL,
  `prerequisties_3` varchar(255) NOT NULL,
  `resource_link` varchar(255) NOT NULL,
  `icon` text NOT NULL,
  `poster` varchar(255) NOT NULL,
  `entry_date` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `active_record` varchar(255) NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`cid`, `title`, `description`, `main_price`, `sell_price`, `discount`, `learning_skill_1`, `learning_skill_2`, `learning_skill_3`, `feature_1`, `feature_2`, `feature_3`, `feature_4`, `skill_tags`, `category`, `level`, `prerequisties_1`, `prerequisties_2`, `prerequisties_3`, `resource_link`, `icon`, `poster`, `entry_date`, `user_id`, `user_email`, `active_record`) VALUES
(56, 'Zod', '<p>Welcome to the <strong>LMS / Learning Management System</strong> Full stack series on YouTube. In this series, I will show you how to build one industrial-level LMS platform with typescript, node js, express js, MongoDB, Redis, next 13,rtk query, socket io, and much more.</p>', '3999', '0', '100', 'You will learn how to scale one big web application', 'You will be able to build a full stack LMS Platform', 'You will learn how to maintenance cache on a large scale application', 'Source code included', 'Full lifetime access', 'Certificate of completion', 'Certificate of completion', 'Zod ', 3, 'Intermediate', 'You must need javascript and frontend development knowledge', 'You must need javascript and backend development knowledge', 'You need basic knowledge of MERN stack', 'https://github.com/Piyush289kumar', '29_03_2024_12_13_39pm_zod.png.webp', '29_03_2024_12_13_39pm_tem.webp.webp', '29-03-2024', '17', 'piyushraikwar289@gmail.com', 'Yes'),
(57, 'JWT', '<p>Welcome to the <strong>LMS / Learning Management System</strong> Full stack series on YouTube. In this series, I will show you how to build one industrial-level LMS platform with typescript, node js, express js, MongoDB, Redis, next 13,rtk query, socket io, and much more.</p>', '3999', '0', '100', 'You will learn how to scale one big web application', 'You will be able to build a full stack LMS Platform', 'You will learn how to maintenance cache on a large scale application', 'Source code included', 'Full lifetime access', 'Certificate of completion', 'Certificate of completion', '', 3, 'Intermediate', 'You must need javascript and frontend development knowledge', 'You must need javascript and backend development knowledge', 'You need basic knowledge of MERN stack', 'https://github.com/Piyush289kumar', '29_03_2024_12_14_35pm_jwt.png.webp', '29_03_2024_12_14_35pm_tem.webp.webp', '29-03-2024', '17', 'piyushraikwar289@gmail.com', 'Yes'),
(58, 'GIT & GITHUB', '<p>Welcome to the <strong>LMS / Learning Management System</strong> Full stack series on YouTube. In this series, I will show you how to build one industrial-level LMS platform with typescript, node js, express js, MongoDB, Redis, next 13,rtk query, socket io, and much more.</p>', '3999', '0', '100', 'You will learn how to scale one big web application', 'You will be able to build a full stack LMS Platform', 'You will learn how to maintenance cache on a large scale application', 'Source code included', 'Full lifetime access', 'Certificate of completion', 'Certificate of completion', '', 6, 'Intermediate', 'You must need javascript and frontend development knowledge', 'You must need javascript and backend development knowledge', 'You need basic knowledge of MERN stack', 'https://github.com/Piyush289kumar', '29_03_2024_12_15_27pm_git.png.webp', '29_03_2024_12_15_27pm_tem.webp.webp', '29-03-2024', '17', 'piyushraikwar289@gmail.com', 'Yes'),
(59, 'MongoDB', '<p>Welcome to the <strong>LMS / Learning Management System</strong> Full stack series on YouTube. In this series, I will show you how to build one industrial-level LMS platform with typescript, node js, express js, MongoDB, Redis, next 13,rtk query, socket io, and much more.</p>', '3999', '0', '100', 'You will learn how to scale one big web application', 'You will be able to build a full stack LMS Platform', 'You will learn how to maintenance cache on a large scale application', 'Source code included', 'Full lifetime access', 'Certificate of completion', 'Certificate of completion', '', 3, 'Beginner', 'You must need javascript and frontend development knowledge', 'You must need javascript and backend development knowledge', 'You need basic knowledge of MERN stack', 'https://github.com/Piyush289kumar', '29_03_2024_12_16_07pm_mongodb.png.webp', '29_03_2024_12_16_06pm_tem.webp.webp', '29-03-2024', '17', 'piyushraikwar289@gmail.com', 'Yes'),
(60, 'Express Js', '<p>Welcome to the <strong>LMS / Learning Management System</strong> Full stack series on YouTube. In this series, I will show you how to build one industrial-level LMS platform with typescript, node js, express js, MongoDB, Redis, next 13,rtk query, socket io, and much more.</p>', '3999', '0', '100', 'You will learn how to scale one big web application', 'You will be able to build a full stack LMS Platform', 'You will learn how to maintenance cache on a large scale application', 'Source code included', 'Full lifetime access', 'Certificate of completion', 'Certificate of completion', '', 3, 'Beginner', 'You must need javascript and frontend development knowledge', 'You must need javascript and backend development knowledge', 'You need basic knowledge of MERN stack', 'https://github.com/Piyush289kumar', '29_03_2024_12_16_39pm_expressjs.png.webp', '29_03_2024_12_16_39pm_tem.webp.webp', '29-03-2024', '17', 'piyushraikwar289@gmail.com', 'Yes'),
(61, 'Node Js', '<p>Welcome to the <strong>LMS / Learning Management System</strong> Full stack series on YouTube. In this series, I will show you how to build one industrial-level LMS platform with typescript, node js, express js, MongoDB, Redis, next 13,rtk query, socket io, and much more.</p>', '3999', '0', '100', 'You will learn how to scale one big web application', 'You will be able to build a full stack LMS Platform', 'You will learn how to maintenance cache on a large scale application', 'Source code included', 'Full lifetime access', 'Certificate of completion', 'Certificate of completion', '', 3, 'Intermediate', 'You must need javascript and frontend development knowledge', 'You must need javascript and backend development knowledge', 'You need basic knowledge of MERN stack', 'https://github.com/Piyush289kumar', '29_03_2024_12_17_07pm_nodejs.png.webp', '29_03_2024_12_17_07pm_tem.webp.webp', '29-03-2024', '17', 'piyushraikwar289@gmail.com', 'Yes'),
(62, 'React Js', '<p>Welcome to the <strong>LMS / Learning Management System</strong> Full stack series on YouTube. In this series, I will show you how to build one industrial-level LMS platform with typescript, node js, express js, MongoDB, Redis, next 13,rtk query, socket io, and much more.</p>', '3999', '0', '100', 'You will learn how to scale one big web application', 'You will be able to build a full stack LMS Platform', 'You will learn how to maintenance cache on a large scale application', 'Source code included', 'Full lifetime access', 'Certificate of completion', 'Certificate of completion', '', 5, 'Beginner', 'You must need javascript and frontend development knowledge', 'You must need javascript and backend development knowledge', 'You need basic knowledge of MERN stack', 'https://github.com/Piyush289kumar', '29_03_2024_12_17_42pm_reactjs.png.webp', '29_03_2024_12_17_41pm_tem.webp.webp', '29-03-2024', '17', 'piyushraikwar289@gmail.com', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `enroll_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `enroll_user_id` int(11) NOT NULL,
  `enroll_date` varchar(255) NOT NULL,
  `active_record` varchar(255) NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`enroll_id`, `course_id`, `enroll_user_id`, `enroll_date`, `active_record`) VALUES
(1, 62, 17, '30-03-2024', 'Yes'),
(2, 62, 20, '30-03-2024', 'Yes'),
(3, 61, 17, '30-03-2024', 'Yes'),
(4, 57, 17, '30-03-2024', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `review_title` text NOT NULL,
  `review_reply` text NOT NULL,
  `review_course_id` int(11) NOT NULL,
  `review_date` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `active_record` varchar(255) NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `review_title`, `review_reply`, `review_course_id`, `review_date`, `user_id`, `active_record`) VALUES
(1, 'jhjh UPdate', 'hghgg', 51, '26-03-2024', 17, 'Yes'),
(2, 'jhjhsdf', 'hghgg', 51, '26-03-2024', 17, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(255) NOT NULL,
  `team_entry_date` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `active_record` varchar(255) NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `team_name`, `team_entry_date`, `user_id`, `user_email`, `active_record`) VALUES
(1, 'Team One Update', '27-03-2024', 17, 'piyushraikwar289@gmail.com', 'No'),
(2, 'Team Two', '27-03-2024', 17, 'piyushraikwar289@gmail.com', 'No'),
(3, 'Front-End Team', '27-03-2024', 17, 'piyushraikwar289@gmail.com', 'No'),
(4, 'Back-End  Team', '27-03-2024', 17, 'piyushraikwar289@gmail.com', 'No'),
(5, 'Design Team', '30-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes'),
(6, 'Front-End Team', '30-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes'),
(7, 'Back-End Team', '30-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes'),
(8, 'Testing Team', '30-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes'),
(9, 'Marketing Team', '30-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `team_member`
--

CREATE TABLE `team_member` (
  `tm_id` int(11) NOT NULL,
  `enroll_team_id` int(11) NOT NULL,
  `tm_user_id` int(11) NOT NULL,
  `team_member_date` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `active_record` varchar(255) NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_member`
--

INSERT INTO `team_member` (`tm_id`, `enroll_team_id`, `tm_user_id`, `team_member_date`, `user_id`, `user_email`, `active_record`) VALUES
(1, 3, 18, '27-03-2024', 17, 'piyushraikwar289@gmail.com', 'No'),
(2, 2, 18, '27-03-2024', 17, '', 'Yes'),
(3, 3, 17, '27-03-2024', 17, 'piyushraikwar289@gmail.com', 'No'),
(4, 3, 19, '27-03-2024', 17, 'piyushraikwar289@gmail.com', 'No'),
(5, 3, 18, '27-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes'),
(6, 3, 14, '27-03-2024', 17, 'piyushraikwar289@gmail.com', 'No'),
(7, 3, 19, '27-03-2024', 17, 'piyushraikwar289@gmail.com', 'No'),
(8, 4, 14, '27-03-2024', 17, 'piyushraikwar289@gmail.com', 'No'),
(9, 4, 18, '27-03-2024', 17, 'piyushraikwar289@gmail.com', 'No'),
(10, 4, 17, '27-03-2024', 17, 'piyushraikwar289@gmail.com', 'No'),
(11, 3, 17, '27-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes'),
(12, 4, 17, '27-03-2024', 18, 'officepiyushraikwar289@gmail.com', 'Yes'),
(13, 9, 19, '30-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes'),
(14, 6, 17, '30-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes'),
(15, 7, 17, '30-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes'),
(16, 7, 19, '30-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes'),
(17, 5, 17, '30-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes'),
(18, 9, 1, '30-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes'),
(19, 7, 13, '30-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes'),
(20, 7, 1, '30-03-2024', 17, 'piyushraikwar289@gmail.com', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `role` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL DEFAULT 'designation',
  `about_text` text NOT NULL DEFAULT 'Write something about your self.',
  `profile_picture` text NOT NULL,
  `forgot_pwd_otp` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL DEFAULT 'Enter your phone number',
  `tfa` varchar(255) NOT NULL DEFAULT 'No',
  `email` varchar(255) NOT NULL,
  `fb` text DEFAULT NULL,
  `insta` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `linkedin` text DEFAULT NULL,
  `github` text DEFAULT NULL,
  `youtube` text DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  `active_record` varchar(11) NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`user_id`, `full_name`, `username`, `password`, `role`, `designation`, `about_text`, `profile_picture`, `forgot_pwd_otp`, `phone`, `tfa`, `email`, `fb`, `insta`, `twitter`, `linkedin`, `github`, `youtube`, `date`, `active_record`) VALUES
(1, 'one', 'oneusername', '202cb962ac59075b964b07152d234b70', '1', 'nope', '', 'default_user_profile.png', 'nope', 'nope', 'No', 'one@gmail.com', '', '', '', '', '', '', '23-03-2024', 'Yes'),
(2, 'two', 'two', '202cb962ac59075b964b07152d234b70', '9', 'nope', '', 'default_user_profile.png', 'nope', 'nope', 'No', 'two@gmail.com', 'FB', 'Insta', 'Twt', 'L', 'L', 'L', '23-03-2024', 'Yes'),
(3, 'three', 'three', '202cb962ac59075b964b07152d234b70', '9', 'nope', '', 'default_user_profile.png', 'nope', 'nope', 'No', 'three@gmail.com', '', '', '', '3', '', '', '23-03-2024', 'Yes'),
(4, 'admin', 'admin', 'c4ca4238a0b923820dcc509a6f75849b', '9', 'nope', '', 'default_user_profile.png', '92CC22', 'nope', 'No', 'admin@gmail.com', '', '', '', '', '3', '', '23-03-2024', 'No'),
(5, 'abc', 'abc', '202cb962ac59075b964b07152d234b70', '9', 'nope', '', 'default_user_profile.png', 'nope', 'nope', 'No', 'abc@gmail.com', '', '', '', '', '', '', '23-03-2024', 'No'),
(13, 'test full name', '', '', '1', 'tes designation', 'test about', '24_Mar_2024_12_17_19pm_add-user-btn.png.webp', '', '8817762774', 'No', 'e@gmail.com', '', '', '', '', '6', '', '24-03-2024', 'No'),
(14, 'full name', 'username', '69c0d42f55afdcb817b69ff3da4f4ff2', '0', 'deg', 'about', '24_Mar_2024_12_26_53pm_progile.jpg.webp', '', '8817762774', 'No', 'email_deactive', '', '', '', '', '', '', '24-03-2024', 'No'),
(15, 'sd', 'username', '1d6ccfd666119c2ac70cfc5fcb0383aa', '9', 'sd', 'sd', '24_Mar_2024_12_30_08pm_add-user-btn.png.webp', '', '8817762777', 'No', 'a@email.com', '', '', '', '', '6', '', '24-03-2024', 'No'),
(16, 'piyush kumar', 'piyush', '202cb962ac59075b964b07152d234b70', '9', 'designation', 'Write something about your self.', '25_Mar_2024_05_49_18am_progile.jpg', '9778D5', 'Enter your phone number', 'Yes', 'piyushraikwar289@gmail.com - deactivated', '', '', '', '', '', '', '25-03-2024', 'Yes'),
(17, 'Piyush Kumar Raikwar', 'Piyush Kumar Raikwar', '202cb962ac59075b964b07152d234b70', '0', 'Web Developer', 'Write something about your self.', '30_Mar_2024_04_42_15pm_progile.jpg', '1F0E3D', 'Enter your phone number', 'No', 'piyushraikwar289@gmail.com', '', '', '', '', '', '', '25-03-2024', 'Yes'),
(18, 'Palak', 'Palak', '202cb962ac59075b964b07152d234b70', '0', '', '', '27_Mar_2024_06_41_23am_63f5ed803fa21e1e319b9f6c96944df0.jpg', 'A684EC', '', 'No', 'email_deactive', '', '', '', '', '', '', '27-03-2024', 'No'),
(19, 'brave', 'Brave', '628a646cd6eef60c6f4de07079bf2462', '1', '', '', '27_Mar_2024_07_20_18am_homeMini.png.webp', '', '', 'No', 'brave@gmail.com', '', '', '', '', '', '', '27-03-2024', 'Yes'),
(20, 'office', 'office', '202cb962ac59075b964b07152d234b70', '9', 'designation', 'Write something about your self.', 'default_user_profile.png', 'E2C420', 'Enter your phone number', 'No', 'officepiyushraikwar289@gmail.com', '', '', '', '', '', '', '30-03-2024', 'Yes'),
(21, 'end user', 'enduser', 'a76f6771bf40734cd6bd695ca9d10e32', '9', '', '', '30_Mar_2024_07_27_34am_63f5ed803fa21e1e319b9f6c96944df0.webp.webp', '', '', 'No', 'officepiyush@gmail.com', '', '', '', '', '', '', '30-03-2024', 'Yes'),
(22, 's', 'sadmin@gmail.com', '0284bb853a649751efbca489e6132b12', '9', 'designation', 'Write something about your self.', 'default_user_profile.png', 'C20AD4', 'Enter your phone number', 'No', 's@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '18-04-2026', 'Yes'),
(23, 'satyam', 'satyam', '202cb962ac59075b964b07152d234b70', '0', 'designation', 'Write something about your self.', '18_Apr_2026_01_09_23pm_belleza_favicon (1).png', NULL, 'Enter your phone number', 'No', 'satyam@gmail.com', '', '', '', '', '', '', '2026-04-18', 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`chapter_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`enroll_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `team_member`
--
ALTER TABLE `team_member`
  ADD PRIMARY KEY (`tm_id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `chapter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `enroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `team_member`
--
ALTER TABLE `team_member`
  MODIFY `tm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
