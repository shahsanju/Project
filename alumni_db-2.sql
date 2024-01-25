-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 25, 2024 at 11:44 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnus_bio`
--

CREATE TABLE `alumnus_bio` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `batch` varchar(9) NOT NULL,
  `course_id` int(30) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `connected_to` text NOT NULL,
  `avatar` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= Unverified, 1= Verified',
  `date_created` date DEFAULT current_timestamp(),
  `skills` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumnus_bio`
--

INSERT INTO `alumnus_bio` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `batch`, `course_id`, `email`, `phone`, `connected_to`, `avatar`, `status`, `date_created`, `skills`) VALUES
(1, 'Emma', '', 'Taylor', 'Female', '2023-2027', 1, 'emma.taylor@email.com', '(123) 456-7890', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java'),
(2, 'Sophia', '', 'Martinez', 'Female', '2023-2027', 4, 'sophia.martinez@email.com', '(234) 567-8901', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Circuit Design'),
(3, 'Olivia', '', 'Garcia', 'Female', '2023-2027', 5, 'olivia.garcia@email.com', '(345) 678-9012', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Quantum Physics'),
(4, 'Ava', '', 'Hernandez', 'Female', '2023-2027', 6, 'ava.hernandez@email.com', '(456) 789-0123', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Environmental Impact Assessment'),
(5, 'Mia', '', 'Rodriguez', 'Female', '2023-2027', 7, 'mia.rodriguez@email.com', '(567) 890-1234', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Patient Care'),
(6, 'Amelia', '', 'Smith', 'Female', '2023-2027', 3, 'amelia.smith@email.com', '(678) 901-2345', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Network Security'),
(7, 'Harper', '', 'Johnson', 'Female', '2023-2027', 9, 'harper.johnson@email.com', '(789) 012-3456', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Digital Marketing'),
(8, 'Evelyn', '', 'Williams', 'Female', '2023-2027', 10, 'evelyn.williams@email.com', '(890) 123-4567', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Community Outreach'),
(9, 'Abigail', '', 'Davis', 'Female', '2023-2027', 11, 'abigail.davis@email.com', '(901) 234-5678', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Molecular Biology'),
(10, 'Zoey', '', 'Martinez', 'Female', '2023-2027', 12, 'zoey.martinez@email.com', '(012) 345-6789', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Financial Modeling'),
(11, 'Chloe', '', 'Jackson', 'Female', '2023-2027', 13, 'chloe.jackson@email.com', '(123) 456-7890', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Art Conservation'),
(12, 'Aria', '', 'Thompson', 'Female', '2023-2027', 1, 'aria.thompson@email.com', '(234) 567-8901', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Python'),
(13, 'Scarlett', '', 'White', 'Female', '2023-2027', 14, 'scarlett.white@email.com', '(345) 678-9012', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Public Policy'),
(14, 'Paisley', '', 'Miller', 'Female', '2023-2027', 15, 'paisley.miller@email.com', '(456) 789-0123', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Media Relations'),
(15, 'Stella', '', 'Davis', 'Female', '2023-2027', 16, 'stella.davis@email.com', '(567) 890-1234', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Organic Chemistry'),
(16, 'Aurora', '', 'Johnson', 'Female', '2023-2027', 17, 'aurora.johnson@email.com', '(678) 901-2345', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Counseling'),
(17, 'Piper', '', 'Smith', 'Female', '2023-2027', 18, 'piper.smith@email.com', '(789) 012-3456', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Process Improvement'),
(18, 'Bella', '', 'Anderson', 'Female', '2023-2027', 19, 'bella.anderson@email.com', '(890) 123-4567', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Archival Research'),
(19, 'Quinn', '', 'Taylor', 'Female', '2023-2027', 20, 'quinn.taylor@email.com', '(901) 234-5678', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Investment Analysis'),
(20, 'Lily', '', 'Hernandez', 'Female', '2023-2027', 6, 'lily.hernandez@email.com', '(012) 345-6789', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Environmental Impact Assessment'),
(21, 'Nora', '', 'Rodriguez', 'Female', '2023-2027', 7, 'nora.rodriguez@email.com', '(123) 456-7890', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Patient Care'),
(22, 'Camila', '', 'Smith', 'Female', '2023-2027', 3, 'camila.smith@email.com', '(234) 567-8901', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Network Security'),
(23, 'Hazel', '', 'Johnson', 'Female', '2023-2027', 9, 'hazel.johnson@email.com', '(345) 678-9012', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Digital Marketing'),
(24, 'Lucy', '', 'Williams', 'Female', '2023-2027', 10, 'lucy.williams@email.com', '(456) 789-0123', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Community Outreach'),
(25, 'Ellie', '', 'Davis', 'Female', '2023-2027', 11, 'ellie.davis@email.com', '(567) 890-1234', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Molecular Biology'),
(26, 'Violet', '', 'Martinez', 'Female', '2023-2027', 12, 'violet.martinez@email.com', '(678) 901-2345', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Financial Modeling'),
(27, 'Aaliyah', '', 'Jackson', 'Female', '2023-2027', 13, 'aaliyah.jackson@email.com', '(789) 012-3456', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Art Conservation'),
(28, 'Adeline', '', 'Thompson', 'Female', '2023-2027', 1, 'adeline.thompson@email.com', '(890) 123-4567', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Python'),
(29, 'Penelope', '', 'White', 'Female', '2023-2027', 14, 'penelope.white@email.com', '(901) 234-5678', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Public Policy'),
(30, 'ella', '', 'Miller', 'Female', '2023-2027', 15, 'gabriella.miller@email.com', '(012) 345-6789', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Media Relations'),
(31, 'Serenity', '', 'Davis', 'Female', '2023-2027', 16, 'serenity.davis@email.com', '(123) 456-7890', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Organic Chemistry'),
(32, 'Hazel', '', 'Johnson', 'Female', '2023-2027', 17, 'hazel.johnson@email.com', '(234) 567-8901', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Counseling'),
(33, 'Luna', '', 'Smith', 'Female', '2023-2027', 18, 'luna.smith@email.com', '(345) 678-9012', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Process Improvement'),
(34, 'Nova', '', 'Anderson', 'Female', '2023-2027', 19, 'nova.anderson@email.com', '(456) 789-0123', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Archival Research'),
(35, 'Stella', '', 'Taylor', 'Female', '2023-2027', 20, 'stella.taylor@email.com', '(567) 890-1234', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Investment Analysis'),
(36, 'Ruby', '', 'Hernandez', 'Female', '2023-2027', 6, 'ruby.hernandez@email.com', '(678) 901-2345', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Environmental Impact Assessment'),
(37, 'Eleanor', '', 'Rodriguez', 'Female', '2023-2027', 7, 'eleanor.rodriguez@email.com', '(789) 012-3456', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Patient Care'),
(38, 'Autumn', '', 'Smith', 'Female', '2023-2027', 3, 'autumn.smith@email.com', '(890) 123-4567', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Network Security'),
(39, 'Hannah', '', 'Johnson', 'Female', '2023-2027', 9, 'hannah.johnson@email.com', '(901) 234-5678', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Digital Marketing'),
(40, 'Riley', '', 'Williams', 'Female', '2023-2027', 10, 'riley.williams@email.com', '(012) 345-6789', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Community Outreach'),
(41, 'Isla', '', 'Davis', 'Female', '2023-2027', 11, 'isla.davis@email.com', '(123) 456-7890', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Molecular Biology'),
(42, 'Paisley', '', 'Martinez', 'Female', '2023-2027', 12, 'paisley.martinez@email.com', '(234) 567-8901', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Financial Modeling, Investment Analysis'),
(43, 'Scarlett', '', 'Jackson', 'Female', '2023-2027', 13, 'scarlett.jackson@email.com', '(345) 678-9012', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Art Conservation, Exhibition Planning'),
(44, 'Grace', '', 'Cooper', 'Female', '2022-2026', 1, 'grace.cooper@email.com', '(123) 456-7890', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C++'),
(45, 'Lily', '', 'Wright', 'Female', '2022-2026', 1, 'lily.wright@email.com', '(234) 567-8901', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Circuit Design, Embedded Systems'),
(46, 'Avery', '', 'Stewart', 'Female', '2022-2026', 1, 'avery.stewart@email.com', '(345) 678-9012', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, Social Media Management'),
(47, 'Hailey', '', 'Wells', 'Female', '2022-2026', 1, 'hailey.wells@email.com', '(456) 789-0123', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Financial Modeling, Data Analysis'),
(48, 'Zara', '', 'Baker', 'Female', '2022-2026', 1, 'zara.baker@email.com', '(567) 890-1234', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, SQL'),
(49, 'Peyton', '', 'Allen', 'Female', '2022-2026', 1, 'peyton.allen@email.com', '(678) 901-2345', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Circuit Design, Embedded Systems'),
(50, 'Zoe', '', 'Cooper', 'Female', '2022-2026', 1, 'zoe.cooper@email.com', '(789) 012-3456', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, Social Media Management'),
(51, 'Claire', '', 'Spencer', 'Female', '2022-2026', 1, 'claire.spencer@email.com', '(890) 123-4567', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Financial Modeling, Data Analysis'),
(52, 'Skylar', '', 'Fisher', 'Female', '2022-2026', 1, 'skylar.fisher@email.com', '(901) 234-5678', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, SQL'),
(53, 'Addison', '', 'Martin', 'Female', '2022-2026', 1, 'addison.martin@email.com', '(012) 345-6789', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Circuit Design, Embedded Systems'),
(54, 'Aubrey', '', 'Barnes', 'Female', '2022-2026', 1, 'aubrey.barnes@email.com', '(123) 456-7890', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, Social Media Management'),
(55, 'Piper', '', 'Rogers', 'Female', '2022-2026', 1, 'piper.rogers@email.com', '(234) 567-8901', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Financial Modeling, Data Analysis'),
(56, 'Ellie', '', 'Hudson', 'Female', '2022-2026', 1, 'ellie.hudson@email.com', '(345) 678-9012', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, SQL'),
(57, 'Harmony', '', 'Wood', 'Female', '2022-2026', 1, 'harmony.wood@email.com', '(456) 789-0123', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Circuit Design, Embedded Systems'),
(58, 'Leah', '', 'Bailey', 'Female', '2022-2026', 1, 'leah.bailey@email.com', '(567) 890-1234', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, Social Media Management'),
(59, 'Savannah', '', 'Gordon', 'Female', '2022-2026', 1, 'savannah.gordon@email.com', '(678) 901-2345', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Financial Modeling, Data Analysis'),
(60, 'Brianna', '', 'Morris', 'Female', '2022-2026', 1, 'brianna.morris@email.com', '(789) 012-3456', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, SQL'),
(61, 'Natalie', '', 'Fletcher', 'Female', '2022-2026', 1, 'natalie.fletcher@email.com', '(890) 123-4567', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Circuit Design, Embedded Systems'),
(62, 'Aria', '', 'Young', 'Female', '2022-2026', 1, 'aria.young@email.com', '(901) 234-5678', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, Social Media Management'),
(63, 'Kylie', '', 'Ward', 'Female', '2022-2026', 1, 'kylie.ward@email.com', '(012) 345-6789', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Financial Modeling, Data Analysis'),
(64, 'Amelia', '', 'Hughes', 'Female', '2022-2026', 1, 'amelia.hughes@email.com', '(123) 456-7890', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, SQL'),
(65, 'Violet', '', 'Fisher', 'Female', '2022-2026', 1, 'violet.fisher@email.com', '(234) 567-8901', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Circuit Design, Embedded Systems'),
(66, 'Hazel', '', 'Campbell', 'Female', '2022-2026', 1, 'hazel.campbell@email.com', '(345) 678-9012', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, Social Media Management'),
(67, 'Aurora', '', 'Spencer', 'Female', '2022-2026', 1, 'aurora.spencer@email.com', '(456) 789-0123', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Financial Modeling, Data Analysis'),
(68, 'Penelope', '', 'Hamilton', 'Female', '2022-2026', 1, 'penelope.hamilton@email.com', '(567) 890-1234', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, SQL'),
(69, 'Stella', '', 'Reid', 'Female', '2022-2026', 1, 'stella.reid@email.com', '(678) 901-2345', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Circuit Design, Embedded Systems'),
(70, 'Nora', '', 'Barnes', 'Female', '2022-2026', 1, 'nora.barnes@email.com', '(789) 012-3456', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, Social Media Management'),
(71, 'Eleanor', '', 'Wilkinson', 'Female', '2022-2026', 1, 'eleanor.wilkinson@email.com', '(890) 123-4567', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Financial Modeling, Data Analysis'),
(72, 'Avery', '', 'Wells', 'Female', '2022-2026', 1, 'avery.wells@email.com', '(901) 234-5678', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, SQL'),
(73, 'Sophie', '', 'Martin', 'Female', '2022-2026', 1, 'sophie.martin@email.com', '(012) 345-6789', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Circuit Design, Embedded Systems'),
(74, 'Lucy', '', 'Fisher', 'Female', '2022-2026', 1, 'lucy.fisher@email.com', '(123) 456-7890', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, Social Media Management'),
(75, 'Nova', '', 'Morris', 'Female', '2022-2026', 1, 'nova.morris@email.com', '(234) 567-8901', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Financial Modeling, Data Analysis'),
(76, 'Aria', '', 'Ward', 'Female', '2022-2026', 1, 'aria.ward@email.com', '(345) 678-9012', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, SQL'),
(77, 'Lila', '', 'Hughes', 'Female', '2022-2026', 1, 'lila.hughes@email.com', '(456) 789-0123', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Circuit Design, Embedded Systems'),
(78, 'Emery', '', 'Campbell', 'Female', '2022-2026', 1, 'emery.campbell@email.com', '(567) 890-1234', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, Social Media Management'),
(79, 'Ruby', '', 'Spencer', 'Female', '2022-2026', 1, 'ruby.spencer@email.com', '(678) 901-2345', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Financial Modeling, Data Analysis'),
(80, 'Sofia', '', 'Hamilton', 'Female', '2022-2026', 1, 'sofia.hamilton@email.com', '(789) 012-3456', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, SQL'),
(81, 'Eva', '', 'Reid', 'Female', '2022-2026', 1, 'eva.reid@email.com', '(890) 123-4567', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Circuit Design, Embedded Systems'),
(82, 'Aubree', '', 'Barnes', 'Female', '2022-2026', 1, 'aubree.barnes@email.com', '(901) 234-5678', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, Social Media Management'),
(83, 'Clara', '', 'Wilkinson', 'Female', '2022-2026', 1, 'clara.wilkinson@email.com', '(012) 345-6789', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Financial Modeling, Data Analysis'),
(84, 'Brooklyn', '', 'Wells', 'Female', '2022-2026', 1, 'brooklyn.wells@email.com', '(123) 456-7890', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, SQL'),
(85, 'Ariana', '', 'Martin', 'Female', '2022-2026', 1, 'ariana.martin@email.com', '(234) 567-8901', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Circuit Design, Embedded Systems'),
(86, 'Paisley', '', 'Fisher', 'Female', '2022-2026', 1, 'paisley.fisher@email.com', '(345) 678-9012', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, Social Media Management'),
(87, 'Quinn', '', 'Morris', 'Female', '2022-2026', 1, 'quinn.morris@email.com', '(456) 789-0123', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Financial Modeling, Data Analysis'),
(88, 'Mila', '', 'Barnes', 'Female', '2022-2026', 1, 'mila.barnes@email.com', '(567) 890-1234', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, SQL'),
(89, 'Luna', '', 'Wells', 'Female', '2022-2026', 1, 'luna.wells@email.com', '(678) 901-2345', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Circuit Design, Embedded Systems'),
(90, 'Elliana', '', 'Martin', 'Female', '2022-2026', 1, 'elliana.martin@email.com', '(789) 012-3456', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, Social Media Management'),
(91, 'Jocelyn', '', 'Fisher', 'Female', '2022-2026', 1, 'jocelyn.fisher@email.com', '(890) 123-4567', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Financial Modeling, Data Analysis'),
(92, 'Liam', '', 'Johnson', 'Female', '2022-2026', 1, 'liam.johnson@email.com', '(123) 456-7890', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'C++, Java, Python'),
(93, 'Noah', '', 'Smith', 'Female', '2022-2026', 1, 'noah.smith@email.com', '(234) 567-8901', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C, Java'),
(94, 'Ethan', '', 'Williams', 'Female', '2022-2026', 1, 'ethan.williams@email.com', '(345) 678-9012', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(95, 'Oliver', '', 'Jones', 'Female', '2022-2026', 1, 'oliver.jones@email.com', '(456) 789-0123', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(96, 'Lucas', '', 'Brown', 'Female', '2022-2026', 1, 'lucas.brown@email.com', '(567) 890-1234', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(97, 'Mason', '', 'Davis', 'Female', '2022-2026', 1, 'mason.davis@email.com', '(678) 901-2345', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(98, 'Logan', '', 'Miller', 'Female', '2022-2026', 1, 'logan.miller@email.com', '(789) 012-3456', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(99, 'Carter', '', 'Wilson', 'Female', '2022-2026', 1, 'carter.wilson@email.com', '(890) 123-4567', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(100, 'Leo', '', 'Moore', 'Female', '2022-2026', 1, 'leo.moore@email.com', '(901) 234-5678', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(101, 'Wyatt', '', 'Hall', 'Female', '2022-2026', 1, 'wyatt.hall@email.com', '(012) 345-6789', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(102, 'Henry', '', 'Young', 'Female', '2022-2026', 1, 'henry.young@email.com', '(123) 456-7890', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(103, 'Owen', '', 'Harris', 'Female', '2022-2026', 1, 'owen.harris@email.com', '(234) 567-8901', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(104, 'Jack', '', 'Clark', 'Female', '2022-2026', 1, 'jack.clark@email.com', '(345) 678-9012', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(105, 'Christopher', '', 'King', 'Female', '2022-2026', 1, 'christopher.king@email.com', '(456) 789-0123', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(106, 'Daniel', '', 'Ward', 'Female', '2022-2026', 1, 'daniel.ward@email.com', '(567) 890-1234', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(107, 'Matthew', '', 'Lopez', 'Female', '2022-2026', 1, 'matthew.lopez@email.com', '(678) 901-2345', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(108, 'Jackson', '', 'Scott', 'Female', '2022-2026', 1, 'jackson.scott@email.com', '(789) 012-3456', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(109, 'Caleb', '', 'Green', 'Female', '2022-2026', 1, 'caleb.green@email.com', '(890) 123-4567', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(110, 'Sebastian', '', 'Evans', 'Female', '2022-2026', 1, 'sebastian.evans@email.com', '(901) 234-5678', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(111, 'Gabriel', '', 'Turner', 'Female', '2022-2026', 1, 'gabriel.turner@email.com', '(012) 345-6789', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(112, 'Cameron', '', 'Hill', 'Female', '2022-2026', 1, 'cameron.hill@email.com', '(123) 456-7890', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(113, 'Wyatt', '', 'Bailey', 'Female', '2022-2026', 1, 'wyatt.bailey@email.com', '(234) 567-8901', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(114, 'Jayden', '', 'Cooper', 'Female', '2022-2026', 1, 'jayden.cooper@email.com', '(345) 678-9012', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(115, 'Isaac', '', 'Fisher', 'Female', '2022-2026', 1, 'isaac.fisher@email.com', '(456) 789-0123', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(116, 'Lincoln', '', 'Ford', 'Female', '2022-2026', 1, 'lincoln.ford@email.com', '(567) 890-1234', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(117, 'Elijah', '', 'Wells', 'Female', '2022-2026', 1, 'elijah.wells@email.com', '(678) 901-2345', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(118, 'Landon', '', 'Miller', 'Female', '2022-2026', 1, 'landon.miller@email.com', '(789) 012-3456', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(119, 'Connor', '', 'Watson', 'Female', '2022-2026', 1, 'connor.watson@email.com', '(890) 123-4567', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(120, 'Charles', '', 'Gonzalez', 'Female', '2022-2026', 1, 'charles.gonzalez@email.com', '(901) 234-5678', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(121, 'Thomas', '', 'Cook', 'Female', '2022-2026', 1, 'thomas.cook@email.com', '(012) 345-6789', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(122, 'Hunter', '', 'Bell', 'Female', '2022-2026', 1, 'hunter.bell@email.com', '(123) 456-7890', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(123, 'Jack', '', 'Walker', 'Female', '2022-2026', 1, 'jack.walker@email.com', '(234) 567-8901', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(124, 'Alexander', '', 'Hill', 'Female', '2022-2026', 1, 'alexander.hill@email.com', '(345) 678-9012', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(125, 'Evan', '', 'Carter', 'Female', '2022-2026', 1, 'evan.carter@email.com', '(456) 789-0123', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(126, 'Aaron', '', 'Moore', 'Female', '2022-2026', 1, 'aaron.moore@email.com', '(567) 890-1234', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(127, 'Levi', '', 'Martin', 'Female', '2022-2026', 1, 'levi.martin@email.com', '(678) 901-2345', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(128, 'Maxwell', '', 'Reed', 'Female', '2022-2026', 1, 'maxwell.reed@email.com', '(789) 012-3456', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(129, 'Jackson', '', 'Hughes', 'Female', '2022-2026', 1, 'jackson.hughes@email.com', '(890) 123-4567', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(130, 'Andrew', '', 'Gray', 'Female', '2022-2026', 1, 'andrew.gray@email.com', '(901) 234-5678', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(131, 'John', '', 'Fisher', 'Female', '2022-2026', 1, 'john.fisher@email.com', '(012) 345-6789', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(132, 'Luca', '', 'Watson', 'Female', '2022-2026', 1, 'luca.watson@email.com', '(123) 456-7890', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(133, 'Nathan', '', 'Cooper', 'Female', '2022-2026', 1, 'nathan.cooper@email.com', '(234) 567-8901', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(134, 'Gabriel', '', 'Brown', 'Female', '2022-2026', 1, 'gabriel.brown@email.com', '(345) 678-9012', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(135, 'Isaiah', '', 'Hall', 'Female', '2022-2026', 1, 'isaiah.hall@email.com', '(456) 789-0123', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(136, 'Eli', '', 'Young', 'Female', '2022-2026', 1, 'eli.young@email.com', '(567) 890-1234', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(137, 'Cole', '', 'Ward', 'Female', '2022-2026', 1, 'cole.ward@email.com', '(678) 901-2345', '', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(138, 'Olivia', '', 'Johnson', 'Female', '2018-2021', 1, 'olivia.johnson@email.com', '(123) 456-7890', 'ABCDeveloper', '1602730260_avatar.jpg', 1, '2024-01-16', 'C++, Java, Python'),
(139, 'Emma', '', 'Smith', 'Female', '2017-2020', 4, 'emma.smith@email.com', '(234) 567-8901', 'ABCEngineer', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C, Java'),
(140, 'Ava', '', 'Williams', 'Female', '2016-2019', 5, 'ava.williams@email.com', '(345) 678-9012', 'ABCAnalyst', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(141, 'Sophia', '', 'Jones', 'Female', '2019-2022', 6, 'sophia.jones@email.com', '(456) 789-0123', 'ABCConsultant', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(142, 'Isabella', '', 'Brown', 'Female', '2017-2020', 7, 'isabella.brown@email.com', '(567) 890-1234', 'ABCDeveloper', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(143, 'Amelia', '', 'Davis', 'Female', '2018-2021', 3, 'amelia.davis@email.com', '(678) 901-2345', 'ABCEngineer', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(144, 'Mia', '', 'Miller', 'Female', '2016-2019', 9, 'mia.miller@email.com', '(789) 012-3456', 'ABCAnalyst', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(215, 'Charlotte', '', 'Wilson', 'Female', '2017-2020', 10, 'charlotte.wilson@email.com', '(890) 123-4567', 'ABCConsultant', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(216, 'Luna', '', 'Moore', 'Female', '2019-2022', 11, 'luna.moore@email.com', '(901) 234-5678', 'ABCDeveloper', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(217, 'Scarlett', '', 'Hall', 'Female', '2018-2021', 12, 'scarlett.hall@email.com', '(012) 345-6789', 'ABCEngineer', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(218, 'Zoe', '', 'Young', 'Female', '2016-2019', 13, 'zoe.young@email.com', '(123) 456-7890', 'ABCAnalyst', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(219, 'Stella', '', 'Harris', 'Female', '2017-2020', 1, 'stella.harris@email.com', '(234) 567-8901', 'ABCConsultant', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(220, 'Aria', '', 'Clark', 'Female', '2019-2022', 14, 'aria.clark@email.com', '(345) 678-9012', 'ABCDeveloper', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(221, 'Ellie', '', 'Ward', 'Female', '2018-2021', 15, 'ellie.ward@email.com', '(456) 789-0123', 'ABCEngineer', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(222, 'Aurora', '', 'Cook', 'Female', '2016-2019', 16, 'aurora.cook@email.com', '(567) 890-1234', 'ABCAnalyst', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(223, 'Leah', '', 'Bell', 'Female', '2017-2020', 17, 'leah.bell@email.com', '(678) 901-2345', 'ABCConsultant', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(224, 'Grace', '', 'Walker', 'Female', '2019-2022', 18, 'grace.walker@email.com', '(789) 012-3456', 'ABCDeveloper', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(225, 'Lily', '', 'Hill', 'Female', '2018-2021', 19, 'lily.hill@email.com', '(890) 123-4567', 'ABCEngineer', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(226, 'Hazel', '', 'Morris', 'Female', '2016-2019', 20, 'hazel.morris@email.com', '(901) 234-5678', 'ABCAnalyst', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(227, 'Nova', '', 'Gonzalez', 'Female', '2017-2020', 6, 'nova.gonzalez@email.com', '(012) 345-6789', 'ABCConsultant', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(228, 'Olivia', '', 'Johnson', 'Female', '2018-2021', 7, 'olivia.johnson@email.com', '(123) 456-7890', 'ABCDeveloper', '1602730260_avatar.jpg', 1, '2024-01-16', 'C++, Java, Python'),
(229, 'Emma', '', 'Smith', 'Female', '2017-2020', 3, 'emma.smith@email.com', '(234) 567-8901', 'ABCEngineer', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C, Java'),
(230, 'Ava', '', 'Williams', 'Female', '2016-2019', 9, 'ava.williams@email.com', '(345) 678-9012', 'ABCAnalyst', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(231, 'Sophia', '', 'Jones', 'Female', '2019-2022', 10, 'sophia.jones@email.com', '(456) 789-0123', 'ABCConsultant', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(232, 'Isabella', '', 'Brown', 'Female', '2017-2020', 11, 'isabella.brown@email.com', '(567) 890-1234', 'ABCDeveloper', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(233, 'Amelia', '', 'Davis', 'Female', '2018-2021', 12, 'amelia.davis@email.com', '(678) 901-2345', 'ABCEngineer', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(234, 'Mia', '', 'Miller', 'Female', '2016-2019', 13, 'mia.miller@email.com', '(789) 012-3456', 'ABCAnalyst', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(235, 'Charlotte', '', 'Wilson', 'Female', '2017-2020', 1, 'charlotte.wilson@email.com', '(890) 123-4567', 'ABCConsultant', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(236, 'Luna', '', 'Moore', 'Female', '2019-2022', 14, 'luna.moore@email.com', '(901) 234-5678', 'ABCDeveloper', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C++'),
(237, 'Scarlett', '', 'Hall', 'Female', '2018-2021', 15, 'scarlett.hall@email.com', '(012) 345-6789', 'ABC Engineer', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(238, 'Zoe', '', 'Young', 'Female', '2016-2019', 16, 'zoe.young@email.com', '(123) 456-7890', 'ABC Lab', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(239, 'Stella', '', 'Harris', 'Female', '2017-2020', 17, 'stella.harris@email.com', '(234) 567-8901', 'ABC Consultant', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(240, 'Aria', '', 'Clark', 'Female', '2019-2022', 18, 'aria.clark@email.com', '(345) 678-9012', 'ABC Developer', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C#'),
(241, 'Ellie', '', 'Ward', 'Female', '2018-2021', 21, 'ellie.ward@email.com', '(456) 789-0123', 'ABC Engineer', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(242, 'Aurora', '', 'Cook', 'Female', '2016-2019', 20, 'aurora.cook@email.com', '(567) 890-1234', 'ABC Analyst', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(243, 'Leah', '', 'Bell', 'Female', '2017-2020', 6, 'leah.bell@email.com', '(678) 901-2345', 'ABC Consultant', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(244, 'Grace', '', 'Walker', 'Female', '2019-2022', 7, 'grace.walker@email.com', '(789) 012-3456', 'ABC Hospital', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C++'),
(245, 'Lily', '', 'Hill', 'Female', '2018-2021', 3, 'lily.hill@email.com', '(890) 123-4567', 'ABCEngineer', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(246, 'Hazel', '', 'Morris', 'Female', '2016-2019', 9, 'hazel.morris@email.com', '(901) 234-5678', 'ABC Firm', '1602730260_avatar.jpg', 1, '2024-01-16', 'Data Analysis, Python'),
(247, 'Nova', '', 'Gonzalez', 'Female', '2017-2020', 10, 'nova.gonzalez@email.com', '(012) 345-6789', 'ABC Consultant', '1602730260_avatar.jpg', 1, '2024-01-16', 'Market Research, C++'),
(248, 'Avery', '', 'Watson', 'Female', '2019-2022', 11, 'avery.watson@email.com', '(123) 456-7890', 'ABC Lab', '1602730260_avatar.jpg', 1, '2024-01-16', 'Java, Python, C++'),
(249, 'Eli', '', 'Clark', 'Female', '2018-2021', 12, 'eli.clark@email.com', '(234) 567-8901', 'ABC Bank', '1602730260_avatar.jpg', 1, '2024-01-16', 'Embedded Systems, C++'),
(253, 'Nisarg', '', 'Trivedi', 'Female', '2020-2024', 3, 'nik@email.com', '1234567890', '', '1602730260_avatar.jpg', 1, '2024-01-20', '');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(30) NOT NULL,
  `company` varchar(250) NOT NULL,
  `location` text NOT NULL,
  `job_title` text NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `job_category` text DEFAULT NULL,
  `job_type` varchar(10) DEFAULT 'FULL TIME',
  `salary_min` varchar(10) DEFAULT NULL,
  `salary_max` varchar(10) DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `no_of_vacancy` varchar(5) DEFAULT '0',
  `expiration_date` date DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `company`, `location`, `job_title`, `description`, `user_id`, `job_category`, `job_type`, `salary_min`, `salary_max`, `skills`, `no_of_vacancy`, `expiration_date`, `date_created`) VALUES
(1, 'IT Company', 'Home-Based', 'Web Developer', '&lt;span style=&quot;color:rgb(255,255,0);margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear fadeInLorem;&quot;&gt;&lt;span style=&quot;color:rgb(0,0,0);margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear fadeInLorem;&quot;&gt;&lt;h6&gt;&lt;b style=&quot;margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear fadeInLorem; color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear fadeInLorem; color: rgb(0, 0, 0);&quot;&gt;&amp;nbsp;&lt;/span&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sagittis eu volutpat odio facilisis mauris sit amet massa vitae. In tellus integer feugiat scelerisque varius morbi enim. Orci eu lobortis elementum nibh tellus molestie nunc. Vulputate ut pharetra sit amet aliquam id diam maecenas ultricies. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Eleifend donec pretium vulputate sapien nec. Enim praesent elementum facilisis leo vel fringilla est ullamcorper. Quam adipiscing vitae proin sagittis nisl rhoncus. Sed viverra ipsum nunc aliquet bibendum. Enim ut sem viverra aliquet eget sit amet tellus. Integer feugiat scelerisque varius morbi enim nunc faucibus.&lt;/b&gt;&lt;/h6&gt;&lt;p style=&quot;margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear fadeInLorem; color: rgb(0, 0, 0);&quot;&gt;&lt;b style=&quot;color: rgb(0, 0, 0);&quot;&gt;Viverra justo nec ultrices dui. Leo vel orci porta non pulvinar neque laoreet. Id semper risus in hendrerit gravida rutrum quisque non tellus. Sit amet consectetur adipiscing elit ut. Id neque aliquam vestibulum morbi blandit cursus risus. Tristique senectus et netus et malesuada. Amet aliquam id diam maecenas ultricies mi eget mauris. Morbi tristique senectus et netus et malesuada. Diam phasellus vestibulum lorem sed risus. Tempor orci dapibus ultrices in. Mi sit amet mauris commodo quis imperdiet. Quisque sagittis purus sit amet volutpat. Vehicula ipsum a arcu cursus. Ornare quam viverra orci sagittis eu volutpat odio facilisis. Id volutpat lacus laoreet non curabitur. Cursus euismod quis viverra nibh cras pulvinar mattis nunc. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget nulla facilisi etiam dignissim diam quis enim lobortis. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet.&lt;/b&gt;&lt;/p&gt;&lt;/span&gt;&lt;p style=&quot;margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear fadeInLorem; color: rgb(255, 255, 0);&quot;&gt;&lt;/p&gt;&lt;/span&gt;&lt;p style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;&lt;/p&gt;', 1, 'Designing', 'FULL TIME', '10000', '40000', 'fdgdfgdfgdgdf', '10', '2024-02-28', '2020-10-15 14:14:27'),
(2, 'Google', 'California', 'IT Specialist', '&lt;p style=&quot;margin-top: 1.5em; margin-bottom: 1.5em; margin-right: unset; margin-left: unset; color: rgb(68, 68, 68); font-family: &quot; open=&quot;&quot; sans&quot;,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 16px;=&quot;&quot; -webkit-tap-highlight-color:=&quot;&quot; rgba(0,=&quot;&quot; 0,=&quot;&quot; 0);=&quot;&quot; line-height:=&quot;&quot; 1.5;=&quot;&quot; animation:=&quot;&quot; 1000ms=&quot;&quot; linear=&quot;&quot; 0s=&quot;&quot; 1=&quot;&quot; normal=&quot;&quot; none=&quot;&quot; running=&quot;&quot; fadeinlorem;&quot;=&quot;&quot;&gt;&lt;/p&gt;&lt;span style=&quot;color:rgb(0,0,0);margin-top: 1.5em; margin-bottom: 1.5em; margin-right: unset; margin-left: unset;&quot;&gt;&lt;p style=&quot;margin-top: 1.5em; margin-bottom: 1.5em; margin-right: unset; margin-left: unset; color: rgb(0, 0, 0);&quot; open=&quot;&quot; sans&quot;,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 16px;=&quot;&quot; -webkit-tap-highlight-color:=&quot;&quot; rgba(0,=&quot;&quot; 0,=&quot;&quot; 0);=&quot;&quot; line-height:=&quot;&quot; 1.5;=&quot;&quot; animation:=&quot;&quot; 1000ms=&quot;&quot; linear=&quot;&quot; 0s=&quot;&quot; 1=&quot;&quot; normal=&quot;&quot; none=&quot;&quot; running=&quot;&quot; fadeinlorem;&quot;=&quot;&quot;&gt;&lt;b style=&quot;margin-top: 1.5em; margin-bottom: 1.5em; margin-right: unset; margin-left: unset; color: rgb(0, 0, 0);&quot; open=&quot;&quot; sans&quot;,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 16px;=&quot;&quot; -webkit-tap-highlight-color:=&quot;&quot; rgba(0,=&quot;&quot; 0,=&quot;&quot; 0);=&quot;&quot; line-height:=&quot;&quot; 1.5;=&quot;&quot; animation:=&quot;&quot; 1000ms=&quot;&quot; linear=&quot;&quot; 0s=&quot;&quot; 1=&quot;&quot; normal=&quot;&quot; none=&quot;&quot; running=&quot;&quot; fadeinlorem;&quot;=&quot;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sagittis eu volutpat odio facilisis mauris sit amet massa vitae. In tellus integer feugiat scelerisque varius morbi enim. Orci eu lobortis elementum nibh tellus molestie nunc. Vulputate ut pharetra sit amet aliquam id diam maecenas ultricies. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Eleifend donec pretium vulputate sapien nec. Enim praesent elementum facilisis leo vel fringilla est ullamcorper. Quam adipiscing vitae proin sagittis nisl rhoncus. Sed viverra ipsum nunc aliquet bibendum. Enim ut sem viverra aliquet eget sit amet tellus. Integer feugiat scelerisque varius morbi enim nunc faucibus.&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 1.5em; margin-bottom: 1.5em; margin-right: unset; margin-left: unset; color: rgb(0, 0, 0);&quot; open=&quot;&quot; sans&quot;,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 16px;=&quot;&quot; -webkit-tap-highlight-color:=&quot;&quot; rgba(0,=&quot;&quot; 0,=&quot;&quot; 0);=&quot;&quot; line-height:=&quot;&quot; 1.5;=&quot;&quot; animation:=&quot;&quot; 1000ms=&quot;&quot; linear=&quot;&quot; 0s=&quot;&quot; 1=&quot;&quot; normal=&quot;&quot; none=&quot;&quot; running=&quot;&quot; fadeinlorem;&quot;=&quot;&quot;&gt;&lt;/p&gt;&lt;ul style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;Viverra justo nec ultrices dui. Leo vel orci porta non pulvinar neque laoreet. Id semper risus in hendrerit gravida rutrum quisque non tellus.&amp;nbsp;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;Sit amet consectetur adipiscing elit ut. Id neque aliquam vestibulum morbi blandit cursus risus. Tristique senectus et netus et malesuada. Amet aliquam id diam maecenas ultricies mi eget mauris. Morbi tristique senectus et netus et malesuada.&amp;nbsp;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;Diam phasellus vestibulum lorem sed risus. Tempor orci dapibus ultrices in. Mi sit amet mauris commodo quis imperdiet. Quisque sagittis purus sit amet volutpat. Vehicula ipsum a arcu cursus. Ornare quam viverra orci sagittis eu volutpat odio facilisis. Id volutpat lacus laoreet non curabitur. Cursus euismod quis viverra nibh cras pulvinar mattis nunc. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget nulla facilisi etiam dignissim diam quis enim lobortis. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;ul&gt;&lt;li&gt;&lt;br&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;', 1, 'Programming', 'FULL TIME', '30000', '100000', '', '40', '2024-03-31', '2020-10-15 15:05:37'),
(4, 'Federal Emergency Management Agency', 'Winchester, Virginia', 'IT Specialist (CUSTSPT)', '&lt;p style=&quot;color: rgb(248, 248, 242); background-color: rgb(33, 33, 33); font-family: IBMPlexMono, Monaco, &amp;quot;Courier New&amp;quot;, monospace, Menlo, Monaco, &amp;quot;Courier New&amp;quot;, monospace; font-size: 12px; line-height: 18px; white-space: pre;&quot;&gt;&lt;span style=&quot;color: rgb(206, 145, 120);&quot;&gt;The primary responsibility of positions within the Warranty Section is maintenance, refurbishment, repair and accountability of all laptop devices and peripherals by using cost-effective measures and apply appropriate security standards set forth by the Agency. This position will serve as an IT Specialist in steady state and disaster operations that solely supports the FEMA disaster mission by performing technical tasks in a complex environment with a wide-ranging IT components.&lt;/span&gt;&lt;/p&gt;', 1, 'IT', 'FULL TIME', '78000', '100000', NULL, '5', '2024-03-31', '2024-01-12 09:41:55'),
(5, 'Central Intelligence Agency', 'Washington DC, District of Columbia', 'IT Engineer', '&lt;span style=&quot;color: rgb(33, 33, 33); font-family: &quot;Source Sans Pro&quot;, &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 17px; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;IT Engineers design and deploy a secure, global communications infrastructure that allows CIA officers to collaborate with each other and Intelligence Community and federal government partners.&lt;/span&gt;', 1, 'Information Technology Management', 'FULL TIME', '68287', '172075', 'Network Admin ', '14', '2024-03-01', '2024-01-12 11:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(30) NOT NULL,
  `course` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`) VALUES
(1, 'Computer Science'),
(3, 'Computer Engineering'),
(4, 'Electrical Engineering'),
(5, 'Physics'),
(6, 'Environmental Science'),
(7, 'Nursing'),
(9, 'Marketing'),
(10, 'Sociology'),
(11, 'Biology'),
(12, 'Finance'),
(13, 'Art History'),
(14, 'Political Science'),
(15, 'Communication Studies'),
(16, 'Chemistry'),
(17, 'Psychology'),
(18, 'Industrial Engineering'),
(19, 'History'),
(20, 'Economics'),
(21, 'Mechanical engineering');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `schedule` datetime NOT NULL,
  `banner` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `schedule`, `banner`, `date_created`) VALUES
(3, 'Canvas Basics', '&lt;p class=&quot;panel-pane pane-panels-mini pane-page-elements&quot; style=&quot;caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: museo_sans_300, Verdana, Tahoma, &quot; dejavu=&quot;&quot; sans&quot;,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 15.2px;&quot;=&quot;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;panel-display panel-1col clearfix&quot; id=&quot;mini-panel-page_elements&quot;&gt;&lt;/p&gt;&lt;p class=&quot;panel-panel panel-col&quot; style=&quot;width: 840px;&quot;&gt;&lt;/p&gt;&lt;h1 style=&quot;margin-bottom: 10px; font-size: 1.66667em; line-height: 1.6em; font-family: museo_sans_700, Verdana, Tahoma, &quot; dejavu=&quot;&quot; sans&quot;,=&quot;&quot; sans-serif;=&quot;&quot; color:=&quot;&quot; rgb(207,=&quot;&quot; 10,=&quot;&quot; 44);&quot;=&quot;&quot;&gt;Canvas Basics&lt;/h1&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;panel-pane pane-node-content&quot; style=&quot;caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: museo_sans_300, Verdana, Tahoma, &quot; dejavu=&quot;&quot; sans&quot;,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 15.2px;&quot;=&quot;&quot;&gt;&lt;/p&gt;&lt;article class=&quot;node-411272 node node-event node-promoted view-mode-full clearfix&quot; about=&quot;/it/events/canvas-basics-48&quot; typeof=&quot;sioc:Item foaf:Document&quot;&gt;&lt;header&gt;&lt;h3 class=&quot;field field-name-field-event-date field-type-datetime field-label-hidden&quot; style=&quot;font-size: 1.2em; margin-top: 8px; margin-bottom: 0px; line-height: 1.25em; font-family: museo_sans_500, Verdana, Tahoma, &quot; dejavu=&quot;&quot; sans&quot;,=&quot;&quot; sans-serif;&quot;=&quot;&quot;&gt;&lt;span class=&quot;TextRun SCXW253907243 BCX8&quot; data-contrast=&quot;auto&quot;&gt;How to setup Assignments&nbsp;&lt;span class=&quot;Apple-converted-space&quot;&gt;&nbsp;&lt;/span&gt;&lt;span class=&quot;TextRun SCXW253907243 BCX8&quot; data-contrast=&quot;auto&quot;&gt;How to setup Discussions&nbsp;&lt;span class=&quot;Apple-converted-space&quot;&gt;&nbsp;&lt;/span&gt;&lt;span class=&quot;TextRun SCXW253907243 BCX8&quot; data-contrast=&quot;auto&quot;&gt;Quiz Basics&nbsp;&lt;span class=&quot;Apple-converted-space&quot;&gt;&nbsp;&lt;/span&gt;&lt;span class=&quot;EOP SCXW253907243 BCX8&quot; data-ccp-props=&quot;{&quot; 201341983&quot;:0,&quot;335551550&quot;:0,&quot;335551620&quot;:0,&quot;335559737&quot;:-20,&quot;335559739&quot;:160,&quot;335559740&quot;:259}&quot;=&quot;&quot;&gt;&nbsp;&lt;/span&gt;&lt;p&gt;&lt;/p&gt;&lt;li class=&quot;OutlineElement Ltr SCXW253907243 BCX8&quot; role=&quot;listitem&quot; data-leveltext=&quot;&quot; data-font=&quot;Symbol&quot; data-listid=&quot;2&quot; data-list-defn-props=&quot;{&quot; 335552541&quot;:1,&quot;335559683&quot;:0,&quot;335559684&quot;:-2,&quot;335559685&quot;:720,&quot;335559991&quot;:360,&quot;469769226&quot;:&quot;symbol&quot;,&quot;469769242&quot;:[8226],&quot;469777803&quot;:&quot;left&quot;,&quot;469777804&quot;:&quot;&quot;,&quot;469777815&quot;:&quot;hybridmultilevel&quot;}&quot;=&quot;&quot; data-aria-posinset=&quot;7&quot; data-aria-level=&quot;1&quot; style=&quot;margin: 12px 0px; padding: 0px;&quot;&gt;&lt;p class=&quot;Paragraph SCXW253907243 BCX8&quot; style=&quot;margin-bottom: 1.33333em;&quot;&gt;&lt;span class=&quot;TextRun SCXW253907243 BCX8&quot; data-contrast=&quot;auto&quot;&gt;Basic Gradebook functions&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;Paragraph SCXW253907243 BCX8&quot; style=&quot;margin-bottom: 1.33333em;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;background-color: rgb(43, 43, 43); color: rgb(169, 183, 198); font-family: &quot; jetbrains=&quot;&quot; mono&quot;,=&quot;&quot; monospace;=&quot;&quot; font-size:=&quot;&quot; 9.8pt;&quot;=&quot;&quot;&gt;&lt;/p&gt;&lt;pre&gt;&lt;br&gt;&lt;/pre&gt;&lt;p&gt;&lt;/p&gt;&lt;/li&gt;&lt;p&gt;&lt;/p&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;&lt;/header&gt;&lt;/article&gt;', '2024-01-10 11:00:00', '1704804960_1704804900_1602813060_no-image-available.png', '2024-01-09 18:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `event_commits`
--

CREATE TABLE `event_commits` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_commits`
--

INSERT INTO `event_commits` (`id`, `event_id`, `user_id`) VALUES
(1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `forum_comments`
--

CREATE TABLE `forum_comments` (
  `id` int(30) NOT NULL,
  `topic_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_comments`
--

INSERT INTO `forum_comments` (`id`, `topic_id`, `comment`, `user_id`, `date_created`) VALUES
(1, 3, 'Sample updated Comment', 3, '2020-10-15 15:46:03'),
(3, 3, 'Sample', 1, '2020-10-16 08:48:02'),
(5, 0, '', 1, '2020-10-16 09:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `award` text DEFAULT NULL,
  `deadline` text DEFAULT NULL,
  `sc_link` text DEFAULT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_topics`
--

INSERT INTO `forum_topics` (`id`, `title`, `description`, `award`, `deadline`, `sc_link`, `user_id`, `date_created`) VALUES
(5, 'The $25,000 Be Bold No Essay Scholarship', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;The $25,000 &ldquo;Be Bold&rdquo; Scholarship is a no-essay scholarship that will be awarded to the applicant with the boldest profile. No-Essay Scholarship in just a few clicks! Fund your education with verified new scholarships, available only on Bold.org. New scholarships are added daily, and membership is 100% free for students.&lt;/span&gt;', 'Awards $25,0000', 'Rolling monthly application deadlines. Next deadline: January 2, 2024', 'https://bold.org/scholarships/the-be-bold-no-essay-scholarship/#ref=top-scholarship', 1, '2024-01-24 16:56:48'),
(6, 'Foot Locker Scholars Program', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;The Foot Locker Scholar Athletes program honors student-athletes who demonstrate exceptional academic ability and strong leadership skills in sports, in their schools, and within their communities. Whether you&rsquo;re the lead scorer or the most spirited team player, we want to hear how you have taken the skills you&rsquo;ve cultivated in the locker room and used to them create a powerful, positive impact on the lives of others around you.&lt;/span&gt;', ' Awards $20,000 to  20 student-athletes', ' Updated details for the 2023-2024 program cycle will be posted on this website in October.', 'https://www.footlockerscholarathletes.com/about', 1, '2024-01-24 17:10:57'),
(7, 'Starbucks College Achievement Plan ', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;Starbucks is committed to the success of its partners (employees). Every benefits-eligible U.S. partner working part- or full-time receives 100% tuition coverage for a first-time bachelor&rsquo;s degree through Arizona State University&rsquo;s online program. Choose from over 80 diverse undergraduate degree programs, and have our support every step of the way.&lt;/span&gt;', '100% tuition coverage', 'Ongoing', 'https://www.starbucks.com/careers/working-at-starbucks/education/', 1, '2024-01-24 17:11:23'),
(8, 'Coca-Cola Scholars Program Scholarship', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;The Coca-Cola Scholars Program Scholarship is an achievement-based scholarship awarded to graduating high school seniors. Students are recognized for their capacity to lead and serve, as well as their commitment to making a significant impact on their schools and communities. Applicants must be current high school/home-schooled seniors attending school in the U.S, anticipating completion of a high school diploma at the time of application and planning to pursue a degree at an accredited U.S. post-secondary institution. For more information or to apply, please visit the scholarship provider&rsquo;s website.&lt;/span&gt;', '$20,000', '2024 Application expected to open August, 2024', 'https://www.coca-colascholarsfoundation.org/apply/', 1, '2024-01-24 17:14:43'),
(9, 'BMW Engineering Scholarship', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;This annual scholarship is provided by BMW AG in recognition of its commitment to excellence in engineering. BMW is world-famous for designing and building luxury, high-performance passenger cars, and motorcycles. The company is also a leader in developing and manufacturing high technology, high-performance internal combustion engines.&lt;/span&gt;', '$1,500', 'Applications for the 2024/25 academic year will open February 1, 2024.', 'https://www.sae.org/participate/scholarships/bmw-sae-engineering-scholarship', 1, '2024-01-24 17:15:24'),
(10, '2022 HireAHelper Skilled Trade & Technology Scholarships', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;Growing demand and lack of qualified workers in skilled trades like the moving industry means it&rsquo;s a great time to go back to school and enter these lucrative and fast-growing industries. To help keep up with demand and assist the next generation of professionals, HireAHelper will award a $2,000 scholarship four times a year to eligible students.&lt;/span&gt;', '$2,000', 'December 31, 2024', 'https://www.hireahelper.com/about/scholarships/', 1, '2024-01-24 17:16:01'),
(11, 'Dr. Pepper Tuition Giveaway', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;Dr. Pepper is awarding over $1,000,000 in tuition to help students reach their biggest goals.&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;Requirements: Looking for students ages 18-24 to enter the tuition giveaway.&lt;/span&gt;', '$100,000', 'October 2024', 'https://www.drpepper.com/s/tuition', 1, '2024-01-24 17:16:34'),
(12, 'Doodle 4 Google Scholarship', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;Calling all K-12 students &ndash; bring your creativity to life in a Doodle of the Google logo, using any medium you choose for the chance to be a Doodle 4 Google winner. The National Winner&rsquo;s artwork will be featured on the Google homepage and will win a $30,000 scholarship and a $50,000 tech grant for their school. Come back on January 7th to find out the theme of this year&rsquo;s contest and get doodling!&lt;/span&gt;', 'A $30,000 college scholarship', 'March 4, 2024', 'https://doodles.google.com/d4g/', 1, '2024-01-24 17:17:22'),
(13, 'TMCF | COVID-19 EMERGENCY AWARD', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;The Thurgood Marshall College Fund (TMCF) and varying partners are proud to offer COVID-19 emergency financial assistance to students attending one of TMCF&rsquo;s 47 publicly-supported Historically Black Colleges and Universities (HBCUs) or Predominantly Black Institutions (PBIs). Students selected will receive an emergency award of up to $1,000 for the 2022-2023 academic school year.&lt;/span&gt;', '$1,000', 'This application is expected to open April 18, 2024 and closes August 31, 2024 (11:59 PM EST)', 'https://www.tmcf.org/students-alumni/scholarship/tmcf-covid-19-emergency-award/', 1, '2024-01-24 17:18:35'),
(14, 'Duct Tape: Stuck at Prom Scholarship Contest', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;Create and wear your original &amp;amp; unique prom wear using Duck&reg; brand duct tape and/or Duck&reg; brand crafting tape. Submit photos of your prom creation for a chance to win several awards worth $10,000.&lt;/span&gt;', 'We’re giving away $20,000 in cash scholarships to high school students who make the best prom attire out of Duck® Brand Duct Tape!', 'July 21, 2024', 'https://duckbrand.com/stuck-at-prom', 1, '2024-01-24 17:19:17'),
(15, 'Blacks at Microsoft Scholarship', '&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;Blacks at Microsoft (BAM) is a company-sponsored employee network dedicated to supporting the continued growth and development of black employees at Microsoft Corporation. Applicants for the Blacks at Microsoft Scholarship must be high-school seniors of African descent (for example, African-American, African, or Ethiopian); must plan to attend a four-year college or university in the fall of the year following high-school graduation, and plan to pursue a bachelor&rsquo;s degree in engineering, computer science, computer information systems, or select business programs (such as finance, business administration, or marketing). A minimum 3.3 GPA and financial need are required. For more information or to apply, please visit the scholarship provider&rsquo;s website.&lt;/p&gt;&lt;br class=&quot;Apple-interchange-newline&quot; style=&quot;caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);&quot;&gt;', '$20,000', 'The 204 scholarship application process is now closed, please visit this site in the fall for the 2024 scholarship application cycle.', 'https://www.microsoft.com/en-us/diversity/programs/bam-scholarship.aspx', 1, '2024-01-24 17:19:53'),
(16, 'McDonald’s® HACER® National Scholarship', '&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;How are scholarship winners selected? The scholarship recipients are selected based on: Academic achievement; Financial need; Community involvement; Personal qualities and strengths as portrayed in a personal interview, either in-person or by phone.&lt;/p&gt;&lt;br class=&quot;Apple-interchange-newline&quot; style=&quot;caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);&quot;&gt;', 'See website', 'The application period for the 2023-2024 program will open in the fall.', 'https://www.mcdonalds.com/us/en-us/community/hacer.html', 1, '2024-01-24 17:20:28'),
(17, 'Dell Scholars Program Scholarship', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;The Michael &amp;amp; Susan Dell Foundation created Dell Scholars to recognize and assist an underserved population&mdash;students in the academic middle from low-income households who are often among the first in their families to attend college. Since starting the program in 2004, the f&lt;/span&gt;&lt;span class=&quot;s2&quot; style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;oundation&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;has supported more than 4,800 scholars, including more than 2,000 college graduates. All Dell Scholars have overcome significant personal challenges in their pursuit of higher education. The financial award helps students with various education expenses; but, most importantly, the program is more than just a check: Dell Scholars is a college completion program that provides students with key supports they need to obtain a college degree.&lt;/span&gt;', 'A $20,000 scholarship and more', 'Apply here for deadline information ', 'https://www.dellscholars.org/', 1, '2024-01-24 17:21:05'),
(18, 'GE-Reagan Foundation Scholarship Program', '&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;Honoring the legacy and character of our nation&rsquo;s 40th President, the GE-Reagan Foundation Scholarship Program rewards college-bound students who demonstrate exemplary leadership, drive, integrity, and citizenship with financial assistance to pursue higher education.&lt;/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;Each year, the Program selects numerous recipients to receive a $10,000 scholarship renewable for up to an additional three years &ndash; up to $40,000 total per recipient. Awards are for undergraduate study and may be used for education-related expenses, including tuition, fees, books, supplies, room, and board. In addition, Scholars are invited to participate in a special awards program and receive ongoing leadership-development support.&lt;/p&gt;', 'Up to $40,000 Total Per Recipient', 'Expected to reopen in October 2024.', 'https://www.reaganfoundation.org/education/scholarship-programs/ge-reagan-foundation-scholarship-program/', 1, '2024-01-24 17:21:47'),
(19, 'Shell Incentive Fund Scholarship for Undergraduate Students', '&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;The Shell Oil Company Technical Scholarship and Shell Incentive Fund Scholarship have been created to provide financial and career assistance to graduating high school seniors who have expressed an interest in the energy industry and demonstrated an aptitude in mathematics and science. In each program, Shell will sponsor up to 20 one-year awards of $2,500 for selected graduating high school seniors enrolling in engineering or geosciences at universities identified by Shell.&lt;/p&gt;&lt;br class=&quot;Apple-interchange-newline&quot; style=&quot;caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);&quot;&gt;', ' $2,500', 'March 15, 2024', 'https://www.shell.us/careers/about-careers-at-shell/shell-graduate-program/scholarships.html#vanity-aHR0cHM6Ly93d3cuc2hlbGwudXMvY2FyZWVycy9zdHVkZW50cy1hbmQtZ3JhZHVhdGVzL3NjaG9sYXJzaGlwcy9iYWNoZWxvcnMtZGVncmVlLXN0dWRlbnRzLmh0bWw', 1, '2024-01-24 17:22:23'),
(20, 'Ford Motor Company Fund', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;Our mission is to strengthen communities and help make people&rsquo;s lives better. Working with our Ford dealers and nonprofit partners, we provide access to opportunities and resources that help people reach their full potential. Ford Fund invests more than $16 million annually to support educational initiatives that empower people to envision and lead change in their communities or in their own lives.&lt;/span&gt;', ' See Website', ' See Website', 'https://www.fordfund.org/', 1, '2024-01-24 17:22:57'),
(21, 'The Discover Student Loans Scholarship Award Sweepstakes', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;Sign up for emails to get helpful college tips and resources, and enter for the chance to win a scholarship! Throughout the year, 12 eligible students or parents will be randomly selected to win a $5,000 Discover Student Loans Scholarship Award to help cover college expenses.&lt;/span&gt;', '$5,000', 'Enter here for the chance to win a scholarship! Throughout the year, 12 eligible students or parents will be randomly selected to win a $5,000 Discover® Student Loans Scholarship Award to help cover college expenses.', 'https://scholarship.collegecovered.com/?acmpgn=D_NDB_FTW_KCT_254329285#/aboutyou', 1, '2024-01-24 17:23:34'),
(22, 'Huntington’s College Scholarship Sweepstakes', '&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;Scholarship contest for college-bound students. Simply submit this Official Entry form by the deadline posted in the Official Rules and you could win a $4000 College Scholarship!&lt;/p&gt;&lt;br class=&quot;Apple-interchange-newline&quot; style=&quot;caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);&quot;&gt;', '$4,000', 'December 31, 2024', 'https://huntingtonhelps.com/contest?utm_source=Website&utm_medium=Bottom%20Bar&utm_campaign=Text4000%20Bottom%20Bar%20Website', 1, '2024-01-24 17:24:15'),
(23, 'Google Student Veterans of America Scholarship', '&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;As part of its commitment to military veterans, Google established the Google SVA Scholarship in partnership with Student Veterans of America. The scholarship provides assistance to student veterans who are pursuing university degrees in the field of computer science in the U.S. Selected students will receive 10,000 USD for the 2022-2023 school year.&lt;/p&gt;&lt;br class=&quot;Apple-interchange-newline&quot; style=&quot;caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);&quot;&gt;', 'Selected students will receive 10,000 USD for the 2022-2023 school year.', 'Expected to reopen fall 2023', 'https://buildyourfuture.withgoogle.com/scholarships/google-student-veterans-of-america-scholarship', 1, '2024-01-24 17:25:47'),
(24, 'Taco Bell Live Más Scholarship', '&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;The Live M&aacute;s Scholarship is not based on your grades or how well you play sports. No essays, no test scores, no right or wrong answers. We&rsquo;re looking for the next generation of innovators, creators, and dreamers. Submit a video (2 minutes or less in length) that tells us the story of your life&rsquo;s passion. It could be a short film, animation or just a simple testimonial. This is not about how well you can make a film &ndash; we just want you to show us your passion and explain why you should be considered for a Live M&aacute;s Scholarship. Employees of Taco Bell Foundation, Inc., Taco Bell of America, LLC, Taco Bell Corp. and its parent, subsidiaries of its parent, franchisees, licensees, and the advertising and promotion agencies involved with this Program are not eligible to apply or receive a scholarship through this version of the program. For more information or to apply, please visit the scholarship provider&rsquo;s website.&lt;/p&gt;&lt;br class=&quot;Apple-interchange-newline&quot; style=&quot;caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);&quot;&gt;', '$25,000', 'Sign up for an email reminder for when the next application period opens in Fall 2023.', 'https://www.tacobellfoundation.org/live-mas-scholarship/', 1, '2024-01-24 17:26:31'),
(25, 'USG Reflection Scholarship', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Times; font-size: medium; font-variant-ligatures: normal; orphans: 2; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;USG is committed to your development! This scholarship is available for anyone working in the sport industry. This scholarship can be used for personal, spiritual, or professional development. This may include paying off student loans, tuition, job board memberships, conference fees, etc. See site for submission details.&amp;nbsp;&lt;/span&gt;', '1st place: $5,000, 2nd place: $3,000, 3rd place: $2,000', 'We will be accepting Fall 2024 Applications starting on September 1st!', 'https://www.uncommonsg.org/scholarship', 1, '2024-01-24 17:27:13');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(30) NOT NULL,
  `about` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `about`, `created`) VALUES
(1, 'Samplee', '2020-10-15 13:08:27'),
(2, 'asdasd', '2020-10-15 13:15:37'),
(3, 'asdasdrtgfdg', '2020-10-15 13:15:45'),
(4, 'dfgdfgdfg', '2020-10-15 13:15:53'),
(5, 'dfgdfgdfg', '2020-10-15 13:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'California State University System', 'info@csu.com', '+1 (562) 951-4000', '1705033320_cover.jpg', '&lt;p style=&quot;caret-color: rgb(26, 26, 26); color: rgb(26, 26, 26); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;&lt;h1 class=&quot;col-md-12 page-title&quot; style=&quot;margin-top: 25px; margin-bottom: 25px; font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 52px; color: rgb(26, 26, 26); line-height: 1.1; padding: 30px 0px; float: left; width: 1700px; text-align: center; min-height: 0px !important;&quot;&gt;Facts About the CSU&lt;/h1&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;caret-color: rgb(26, 26, 26); color: rgb(26, 26, 26); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;&lt;p class=&quot;row&quot; style=&quot;margin-right: -15px; margin-left: -15px;&quot;&gt;&lt;p class=&quot;container&quot; style=&quot;margin-right: auto; margin-left: auto; width: 1170px !important;&quot;&gt;&lt;p class=&quot;col-md-12&quot; style=&quot;float: left; width: 1140px; min-height: 0px !important;&quot;&gt;&lt;p id=&quot;ctl00_PlaceHolderMain_ctl06__ControlWrapper_RichHtmlField&quot; class=&quot;ms-rtestate-field&quot; aria-labelledby=&quot;ctl00_PlaceHolderMain_ctl06_label&quot; style=&quot;overflow-wrap: normal; display: inline;&quot;&gt;&lt;div class=&quot;action action-full-width padding-top-bot-0px margin-bottom-55px width-75p&quot; style=&quot;margin: auto; width: 832.5px; padding-top: 0px; padding-bottom: 35px; text-align: center; padding-right: 0px !important; padding-left: 0px !important;&quot;&gt;&lt;p class=&quot;large-font center-text&quot; style=&quot;margin-bottom: 28px; line-height: 1.6; font-size: large !important;&quot;&gt;The California State University is the nation&amp;#x2019;s largest and most diverse four-year public university, providing opportunities for upward mobility to students across the state and empowering them to become leaders in the changing workforce.&lt;/p&gt;&lt;h2 class=&quot;center-text&quot; style=&quot;margin-right: auto; margin-bottom: 28px; margin-left: auto; font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; color: rgb(47, 47, 47); line-height: 1.1; font-size: 30px !important;&quot;&gt;Preparing California&amp;#x2019;s Workforce&lt;/h2&gt;&lt;p style=&quot;margin-bottom: 28px; line-height: 1.6; color: rgb(26, 26, 26); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;The CSU plays a critical role in providing future leaders with the skills and knowledge they&rsquo;ll need to thrive in the workforce and help drive California&rsquo;s economy. With nearly 130,000 annual graduates, the CSU is the state&rsquo;s greatest producer of bachelor&rsquo;s degrees and drives California&rsquo;s economy in agriculture, information technology, business, hospitality, life sciences, healthcare, public administration, education, media&amp;nbsp;and entertainment.&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL DEFAULT 'e10adc3949ba59abbe56e057f20f883e',
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Student, 3= alumnus',
  `auto_generated_pass` text DEFAULT NULL,
  `alumnus_id` int(30) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `auto_generated_pass`, `alumnus_id`) VALUES
(1, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 1, '', 0),
(20, 'Emma', 'emma.taylor@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1),
(21, 'Sophia', 'sophia.martinez@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 2),
(22, 'Olivia', 'olivia.garcia@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 3),
(23, 'Ava', 'ava.hernandez@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 4),
(24, 'Mia', 'mia.rodriguez@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 5),
(25, 'Amelia', 'amelia.smith@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 6),
(26, 'Harper', 'harper.johnson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 7),
(27, 'Evelyn', 'evelyn.williams@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 8),
(28, 'Abigail', 'abigail.davis@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 9),
(29, 'Zoey', 'zoey.martinez@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 10),
(30, 'Chloe', 'chloe.jackson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 11),
(31, 'Aria', 'aria.thompson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 12),
(32, 'Scarlett', 'scarlett.white@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 13),
(33, 'Paisley', 'paisley.miller@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 14),
(34, 'Stella', 'stella.davis@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 15),
(35, 'Aurora', 'aurora.johnson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 16),
(36, 'Piper', 'piper.smith@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 17),
(37, 'Bella', 'bella.anderson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 18),
(38, 'Quinn', 'quinn.taylor@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 19),
(39, 'Lily', 'lily.hernandez@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 20),
(40, 'Nora', 'nora.rodriguez@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 21),
(41, 'Camila', 'camila.smith@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 22),
(42, 'Hazel', 'hazel.johnson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 32),
(43, 'Lucy', 'lucy.williams@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 24),
(44, 'Ellie', 'ellie.davis@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 25),
(45, 'Violet', 'violet.martinez@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 26),
(46, 'Aaliyah', 'aaliyah.jackson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 27),
(47, 'Adeline', 'adeline.thompson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 28),
(48, 'Penelope', 'penelope.white@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 29),
(49, 'ella', 'gabriella.miller@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 30),
(50, 'Serenity', 'serenity.davis@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 31),
(51, 'Hazel', 'hazel.johnson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 32),
(52, 'Luna', 'luna.smith@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 33),
(53, 'Nova', 'nova.anderson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 34),
(54, 'Stella', 'stella.taylor@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 35),
(55, 'Ruby', 'ruby.hernandez@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 36),
(56, 'Eleanor', 'eleanor.rodriguez@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 37),
(57, 'Autumn', 'autumn.smith@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 38),
(58, 'Hannah', 'hannah.johnson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 39),
(59, 'Riley', 'riley.williams@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 40),
(60, 'Isla', 'isla.davis@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 41),
(61, 'Paisley', 'paisley.martinez@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 42),
(62, 'Scarlett', 'scarlett.jackson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 43),
(63, 'Grace', 'grace.cooper@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 44),
(64, 'Lily', 'lily.wright@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 45),
(65, 'Avery', 'avery.stewart@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 46),
(66, 'Hailey', 'hailey.wells@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 47),
(67, 'Zara', 'zara.baker@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 48),
(68, 'Peyton', 'peyton.allen@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 49),
(69, 'Zoe', 'zoe.cooper@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 50),
(70, 'Claire', 'claire.spencer@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 51),
(71, 'Skylar', 'skylar.fisher@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 52),
(72, 'Addison', 'addison.martin@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 53),
(73, 'Aubrey', 'aubrey.barnes@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 54),
(74, 'Piper', 'piper.rogers@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 55),
(75, 'Ellie', 'ellie.hudson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 56),
(76, 'Harmony', 'harmony.wood@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 57),
(77, 'Leah', 'leah.bailey@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 58),
(78, 'Savannah', 'savannah.gordon@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 59),
(79, 'Brianna', 'brianna.morris@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 60),
(80, 'Natalie', 'natalie.fletcher@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 61),
(81, 'Aria', 'aria.young@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 62),
(82, 'Kylie', 'kylie.ward@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 63),
(83, 'Amelia', 'amelia.hughes@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 64),
(84, 'Violet', 'violet.fisher@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 65),
(85, 'Hazel', 'hazel.campbell@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 66),
(86, 'Aurora', 'aurora.spencer@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 67),
(87, 'Penelope', 'penelope.hamilton@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 68),
(88, 'Stella', 'stella.reid@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 69),
(89, 'Nora', 'nora.barnes@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 70),
(90, 'Eleanor', 'eleanor.wilkinson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 71),
(91, 'Avery', 'avery.wells@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 72),
(92, 'Sophie', 'sophie.martin@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 73),
(93, 'Lucy', 'lucy.fisher@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 74),
(94, 'Nova', 'nova.morris@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 75),
(95, 'Aria', 'aria.ward@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 76),
(96, 'Lila', 'lila.hughes@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 77),
(97, 'Emery', 'emery.campbell@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 78),
(98, 'Ruby', 'ruby.spencer@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 79),
(99, 'Sofia', 'sofia.hamilton@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 80),
(100, 'Eva', 'eva.reid@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 81),
(101, 'Aubree', 'aubree.barnes@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 82),
(102, 'Clara', 'clara.wilkinson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 83),
(103, 'Brooklyn', 'brooklyn.wells@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 84),
(104, 'Ariana', 'ariana.martin@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 85),
(105, 'Paisley', 'paisley.fisher@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 86),
(106, 'Quinn', 'quinn.morris@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 87),
(107, 'Mila', 'mila.barnes@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 88),
(108, 'Luna', 'luna.wells@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 89),
(109, 'Elliana', 'elliana.martin@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 90),
(110, 'Jocelyn', 'jocelyn.fisher@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 91),
(111, 'Liam', 'liam.johnson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 92),
(112, 'Noah', 'noah.smith@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 93),
(113, 'Ethan', 'ethan.williams@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 94),
(114, 'Oliver', 'oliver.jones@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 95),
(115, 'Lucas', 'lucas.brown@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 96),
(116, 'Mason', 'mason.davis@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 97),
(117, 'Logan', 'logan.miller@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 98),
(118, 'Carter', 'carter.wilson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 99),
(119, 'Leo', 'leo.moore@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 100),
(120, 'Wyatt', 'wyatt.hall@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 101),
(121, 'Henry', 'henry.young@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 102),
(122, 'Owen', 'owen.harris@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 103),
(123, 'Jack', 'jack.clark@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 104),
(124, 'Christopher', 'christopher.king@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 105),
(125, 'Daniel', 'daniel.ward@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 106),
(126, 'Matthew', 'matthew.lopez@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 107),
(127, 'Jackson', 'jackson.scott@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 108),
(128, 'Caleb', 'caleb.green@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 109),
(129, 'Sebastian', 'sebastian.evans@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 110),
(130, 'Gabriel', 'gabriel.turner@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 111),
(131, 'Cameron', 'cameron.hill@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 112),
(132, 'Wyatt', 'wyatt.bailey@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 113),
(133, 'Jayden', 'jayden.cooper@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 114),
(134, 'Isaac', 'isaac.fisher@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 115),
(135, 'Lincoln', 'lincoln.ford@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 116),
(136, 'Elijah', 'elijah.wells@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 117),
(137, 'Landon', 'landon.miller@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 118),
(138, 'Connor', 'connor.watson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 119),
(139, 'Charles', 'charles.gonzalez@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 120),
(140, 'Thomas', 'thomas.cook@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 121),
(141, 'Hunter', 'hunter.bell@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 122),
(142, 'Jack', 'jack.walker@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 123),
(143, 'Alexander', 'alexander.hill@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 124),
(144, 'Evan', 'evan.carter@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 125),
(145, 'Aaron', 'aaron.moore@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 126),
(146, 'Levi', 'levi.martin@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 127),
(147, 'Maxwell', 'maxwell.reed@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 128),
(148, 'Jackson', 'jackson.hughes@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 129),
(149, 'Andrew', 'andrew.gray@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 130),
(150, 'John', 'john.fisher@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 131),
(151, 'Luca', 'luca.watson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 132),
(152, 'Nathan', 'nathan.cooper@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 133),
(153, 'Gabriel', 'gabriel.brown@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 134),
(154, 'Isaiah', 'isaiah.hall@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 135),
(155, 'Eli', 'eli.young@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 136),
(156, 'Cole', 'cole.ward@email.com', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 137),
(157, 'Olivia', 'olivia.johnson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 228),
(158, 'Emma', 'emma.smith@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 229),
(159, 'Ava', 'ava.williams@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 230),
(160, 'Sophia', 'sophia.jones@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 231),
(161, 'Isabella', 'isabella.brown@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 232),
(162, 'Amelia', 'amelia.davis@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 233),
(163, 'Mia', 'mia.miller@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 234),
(164, 'Charlotte', 'charlotte.wilson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 235),
(165, 'Luna', 'luna.moore@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 236),
(166, 'Scarlett', 'scarlett.hall@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 237),
(167, 'Zoe', 'zoe.young@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 238),
(168, 'Stella', 'stella.harris@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 239),
(169, 'Aria', 'aria.clark@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 240),
(170, 'Ellie', 'ellie.ward@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 241),
(171, 'Aurora', 'aurora.cook@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 242),
(172, 'Leah', 'leah.bell@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 243),
(173, 'Grace', 'grace.walker@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 244),
(174, 'Lily', 'lily.hill@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 245),
(175, 'Hazel', 'hazel.morris@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 246),
(176, 'Nova', 'nova.gonzalez@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 247),
(177, 'Olivia', 'olivia.johnson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 228),
(178, 'Emma', 'emma.smith@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 229),
(179, 'Ava', 'ava.williams@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 230),
(180, 'Sophia', 'sophia.jones@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 231),
(181, 'Isabella', 'isabella.brown@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 232),
(182, 'Amelia', 'amelia.davis@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 233),
(183, 'Mia', 'mia.miller@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 234),
(184, 'Charlotte', 'charlotte.wilson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 235),
(185, 'Luna', 'luna.moore@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 236),
(186, 'Scarlett', 'scarlett.hall@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 237),
(187, 'Zoe', 'zoe.young@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 238),
(188, 'Stella', 'stella.harris@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 239),
(189, 'Aria', 'aria.clark@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 240),
(190, 'Ellie', 'ellie.ward@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 241),
(191, 'Aurora', 'aurora.cook@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 242),
(192, 'Leah', 'leah.bell@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 243),
(193, 'Grace', 'grace.walker@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 244),
(194, 'Lily', 'lily.hill@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 245),
(195, 'Hazel', 'hazel.morris@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 246),
(196, 'Nova', 'nova.gonzalez@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 247),
(197, 'Avery', 'avery.watson@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 248),
(198, 'Eli', 'eli.clark@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 249),
(201, 'Nisarg', 'nik@email.com', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 253);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_commits`
--
ALTER TABLE `event_commits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event_commits`
--
ALTER TABLE `event_commits`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
