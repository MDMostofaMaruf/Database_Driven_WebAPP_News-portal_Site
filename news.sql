-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 22, 2021 at 11:17 PM
-- Server version: 10.1.48-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s334192_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `folksonomies` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `user_id`, `status`, `folksonomies`, `tags`, `image`, `updated_at`) VALUES
(7, 'Good Article Revised', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent aliquet nec dolor non porttitor. Aliquam faucibus tellus ac metus tristique, vel vestibulum tellus mattis. Fusce orci augue, mollis in dictum vel, porttitor sed lacus. Curabitur ultrices elementum massa, in porta purus ultricies elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus accumsan eu magna at elementum. Vivamus quis vulputate nulla, vel eleifend eros. Curabitur ac semper purus.\r\n\r\nAliquam quis est at nisi tincidunt posuere at sit amet sem. Pellentesque eget blandit nisl, in ultrices nunc. Aenean tempus pulvinar lobortis. Vestibulum eu mi id nunc eleifend fermentum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur nec posuere enim, sed dignissim est. Mauris sed turpis in velit luctus egestas eget id turpis. Duis ut dapibus purus. Donec vitae justo ac orci consequat porta. Pellentesque pharetra, dui eget gravida tristique, dolor mi tincidunt mi, vitae luctus ante metus sed est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut finibus viverra augue vel ornare. ', 2, 1, 'AUS,New York, ENG , BD', 'AUS,New York, India', 't-shirt.jpg', '2021-05-07 11:06:56'),
(9, 'Another Article', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae mauris ipsum. Duis purus turpis, scelerisque vitae maximus eget, placerat sed turpis. Sed blandit, ligula eget consequat condimentum, eros tortor consectetur neque, non elementum risus tellus et magna. Ut leo magna, vestibulum ut massa at, interdum porta arcu. In pulvinar est sem, id commodo lectus semper et. Vestibulum eget est ut nunc tincidunt ultricies. Vestibulum sed tortor ante. Fusce eros ex, congue ut tincidunt vulputate, tincidunt ut ipsum.\r\n\r\nQuisque non ipsum dictum lorem feugiat dapibus. Proin rutrum mi nec metus vestibulum, sit amet dictum sapien laoreet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum accumsan purus scelerisque faucibus facilisis. Etiam laoreet nisi et nulla blandit molestie. Phasellus pretium orci in gravida porttitor. Aenean porttitor elit nisi, eget posuere enim gravida vitae. Donec condimentum est et risus commodo rhoncus. Proin semper sem non arcu ornare, lacinia dignissim mi placerat. Sed ultrices, diam in fringilla lobortis, enim leo congue urna, vel fermentum purus orci sed lacus. Aliquam pellentesque laoreet sem vel dictum. Sed feugiat tempor odio ut congue. ', 5, 0, 'Great, Good, Better', 'Raufel, Ayt', 't-l-shirt.jpg', '2021-05-07 04:10:54'),
(10, 'Ut finibus viverra augue', 'Difficulties come and go. Keep Firm. You will success.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae mauris ipsum. Duis purus turpis, scelerisque vitae maximus eget, placerat sed turpis. Sed blandit, ligula eget consequat condimentum, eros tortor consectetur neque, non elementum risus tellus et magna. Ut leo magna, vestibulum ut massa at, interdum porta arcu. In pulvinar est sem, id commodo lectus semper et. Vestibulum eget est ut nunc tincidunt ultricies. Vestibulum sed tortor ante. Fusce eros ex, congue ut tincidunt vulputate, tincidunt ut ipsum.\n\nQuisque non ipsum dictum lorem feugiat dapibus. Proin rutrum mi nec metus vestibulum, sit amet dictum sapien laoreet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum accumsan purus scelerisque faucibus facilisis. Etiam laoreet nisi et nulla blandit molestie. Phasellus pretium orci in gravida porttitor. Aenean porttitor elit nisi, eget posuere enim gravida vitae. Donec condimentum est et risus commodo rhoncus. Proin semper sem non arcu ornare, lacinia dignissim mi placerat. Sed ultrices, diam in fringilla lobortis, enim leo congue urna, vel fermentum purus orci sed lacus. Aliquam pellentesque laoreet sem vel dictum. Sed feugiat tempor odio ut congue. ', 5, 1, 'Survey', '', NULL, '2021-05-08 23:56:54'),
(11, 'Donec vitae justo', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent aliquet nec dolor non porttitor. Aliquam faucibus tellus ac metus tristique, vel vestibulum tellus mattis. Fusce orci augue, mollis in dictum vel, porttitor sed lacus. Curabitur ultrices elementum massa, in porta purus ultricies elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus accumsan eu magna at elementum. Vivamus quis vulputate nulla, vel eleifend eros. Curabitur ac semper purus.\r\n\r\nAliquam quis est at nisi tincidunt posuere at sit amet sem. Pellentesque eget blandit nisl, in ultrices nunc. Aenean tempus pulvinar lobortis. Vestibulum eu mi id nunc eleifend fermentum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur nec posuere enim, sed dignissim est. Mauris sed turpis in velit luctus egestas eget id turpis. Duis ut dapibus purus. Donec vitae justo ac orci consequat porta. Pellentesque pharetra, dui eget gravida tristique, dolor mi tincidunt mi, vitae luctus ante metus sed est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut finibus viverra augue vel ornare. ', 5, 1, 'AUS,New York, ENG , BD', 'AUS,New York, India', 't-shirt.jpg', '2021-05-07 11:06:56'),
(12, 'A Article', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae mauris ipsum. Duis purus turpis, scelerisque vitae maximus eget, placerat sed turpis. Sed blandit, ligula eget consequat condimentum, eros tortor consectetur neque, non elementum risus tellus et magna. Ut leo magna, vestibulum ut massa at, interdum porta arcu. In pulvinar est sem, id commodo lectus semper et. Vestibulum eget est ut nunc tincidunt ultricies. Vestibulum sed tortor ante. Fusce eros ex, congue ut tincidunt vulputate, tincidunt ut ipsum.\r\n\r\nQuisque non ipsum dictum lorem feugiat dapibus. Proin rutrum mi nec metus vestibulum, sit amet dictum sapien laoreet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum accumsan purus scelerisque faucibus facilisis. Etiam laoreet nisi et nulla blandit molestie. Phasellus pretium orci in gravida porttitor. Aenean porttitor elit nisi, eget posuere enim gravida vitae. Donec condimentum est et risus commodo rhoncus. Proin semper sem non arcu ornare, lacinia dignissim mi placerat. Sed ultrices, diam in fringilla lobortis, enim leo congue urna, vel fermentum purus orci sed lacus. Aliquam pellentesque laoreet sem vel dictum. Sed feugiat tempor odio ut congue. ', 3, 0, 'Great, Good, Better', 'Raufel, Ayt', 't-l-shirt.jpg', '2021-05-07 04:10:54'),
(13, ' Donec condimentum ', 'Difficulties come and go. Keep Firm. You will success.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae mauris ipsum. Duis purus turpis, scelerisque vitae maximus eget, placerat sed turpis. Sed blandit, ligula eget consequat condimentum, eros tortor consectetur neque, non elementum risus tellus et magna. Ut leo magna, vestibulum ut massa at, interdum porta arcu. In pulvinar est sem, id commodo lectus semper et. Vestibulum eget est ut nunc tincidunt ultricies. Vestibulum sed tortor ante. Fusce eros ex, congue ut tincidunt vulputate, tincidunt ut ipsum.\n\nQuisque non ipsum dictum lorem feugiat dapibus. Proin rutrum mi nec metus vestibulum, sit amet dictum sapien laoreet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum accumsan purus scelerisque faucibus facilisis. Etiam laoreet nisi et nulla blandit molestie. Phasellus pretium orci in gravida porttitor. Aenean porttitor elit nisi, eget posuere enim gravida vitae. Donec condimentum est et risus commodo rhoncus. Proin semper sem non arcu ornare, lacinia dignissim mi placerat. Sed ultrices, diam in fringilla lobortis, enim leo congue urna, vel fermentum purus orci sed lacus. Aliquam pellentesque laoreet sem vel dictum. Sed feugiat tempor odio ut congue. ', 2, 1, 'Survey', 'Teaas', NULL, '2021-05-08 23:56:54'),
(14, 'Tan Lorem', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae mauris ipsum. Duis purus turpis, scelerisque vitae maximus eget, placerat sed turpis. Sed blandit, ligula eget consequat condimentum, eros tortor consectetur neque, non elementum risus tellus et magna. Ut leo magna, vestibulum ut massa at, interdum porta arcu. In pulvinar est sem, id commodo lectus semper et. Vestibulum eget est ut nunc tincidunt ultricies. Vestibulum sed tortor ante. Fusce eros ex, congue ut tincidunt vulputate, tincidunt ut ipsum.\r\n\r\nQuisque non ipsum dictum lorem feugiat dapibus. Proin rutrum mi nec metus vestibulum, sit amet dictum sapien laoreet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum accumsan purus scelerisque faucibus facilisis. Etiam laoreet nisi et nulla blandit molestie. Phasellus pretium orci in gravida porttitor. Aenean porttitor elit nisi, eget posuere enim gravida vitae. Donec condimentum est et risus commodo rhoncus. Proin semper sem non arcu ornare, lacinia dignissim mi placerat. Sed ultrices, diam in fringilla lobortis, enim leo congue urna, vel fermentum purus orci sed lacus. Aliquam pellentesque laoreet sem vel dictum. Sed feugiat tempor odio ut congue. ', 2, 0, 'Great, Good, Better', 'Raufel, Ayt', 't-l-shirt.jpg', '2021-05-07 04:10:54'),
(15, 'Condimentum  ten', 'Difficulties come and go. Keep Firm. You will success.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae mauris ipsum. Duis purus turpis, scelerisque vitae maximus eget, placerat sed turpis. Sed blandit, ligula eget consequat condimentum, eros tortor consectetur neque, non elementum risus tellus et magna. Ut leo magna, vestibulum ut massa at, interdum porta arcu. In pulvinar est sem, id commodo lectus semper et. Vestibulum eget est ut nunc tincidunt ultricies. Vestibulum sed tortor ante. Fusce eros ex, congue ut tincidunt vulputate, tincidunt ut ipsum.\n\nQuisque non ipsum dictum lorem feugiat dapibus. Proin rutrum mi nec metus vestibulum, sit amet dictum sapien laoreet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum accumsan purus scelerisque faucibus facilisis. Etiam laoreet nisi et nulla blandit molestie. Phasellus pretium orci in gravida porttitor. Aenean porttitor elit nisi, eget posuere enim gravida vitae. Donec condimentum est et risus commodo rhoncus. Proin semper sem non arcu ornare, lacinia dignissim mi placerat. Sed ultrices, diam in fringilla lobortis, enim leo congue urna, vel fermentum purus orci sed lacus. Aliquam pellentesque laoreet sem vel dictum. Sed feugiat tempor odio ut congue. ', 5, 1, 'Tan', 'REN, Koa', NULL, '2021-05-08 23:56:54'),
(17, 'Week 1 Submission', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 6, 1, 'xsd', 'vf', NULL, '2021-05-17 07:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `comment` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `article_id`, `status`, `comment`) VALUES
(1, 'John Dow', 7, 1, 'Praesent aliquet nec dolor non porttitor. Aliquam faucibus tellus ac metus tristique, vel vestibulum tellus mattis. Fusce orci augue, mollis in dictum vel, porttitor sed lacus. Curabitur ultrices elementum massa, in porta purus ultricies elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus accumsan eu magna at elementum. Vivamus quis vulputate nulla, vel eleifend eros. Curabitur ac semper purus.\n\nAliquam quis est at nisi tincidunt posuere at sit amet sem. Pellentesque eget blandit nisl, in ultrices nunc. Aenean tempus pulvinar lobortis. Vestibulum eu mi id nunc eleifend fermentum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur nec posuere enim, sed dignissim est. Mauris sed turpis in velit luctus egestas eget id turpis. Duis ut dapibus purus. Donec vitae justo ac orci consequat porta. Pellentesque pharetra, dui eget gravida tristique, dolor mi tincidunt mi, vitae luctus ante metus sed est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut finibus viverra augue vel ornare. '),
(2, 'Mr Test', 7, 1, 'Vitae luctus ante metus sed est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.'),
(3, 'Shafinaq', 7, 1, 'Dolor sit amet, consectetur adipiscing elit. Praesent aliquet nec dolor non porttitor. Aliquam faucibus tellus ac metus tristique, vel vestibulum tellus mattis. Fusce orci augue, mollis in dictum vel, porttitor sed lacus. Curabitur ultrices elementum massa, in porta purus ultricies elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus accumsan eu magna at elementum. Vivamus quis vulputate nulla, vel eleifend eros. Curabitur ac semper purus.\n\nAliquam quis est at nisi tincidunt posuere at sit amet sem. Pellentesque eget blandit nisl, in ultrices nunc. Aenean tempus pulvinar lobortis. Vestibulum eu mi id nunc eleifend fermentum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur nec posuere enim, sed dignissim est. Mauris sed turpis in velit luctus egestas eget id turpis. Duis ut dapibus purus. Donec vitae justo ac orci consequat porta. Pellentesque pharetra, dui eget gravida tristique, dolor mi tincidunt mi, vitae luctus ante metus sed est. Pellentesque habitant morbi tristique senectus et  vel ornare. '),
(4, 'NAK', 9, 1, 'This is a  ent aliquet nec dolor non porttitor. Aliquam faucibus tellus ac metus tristique, vel vestibulum tellus mattis. Fusce orci augue, mollis in dictum vel, porttitor sed lacus. Curabitur ultrices elementum massa, in porta purus ultricies elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus accumsan eu magna at elementum. Vivamus quis vulputate nulla, vel eleifend eros. Curabitur ac semper purus.\n\nAliquam quis est at nisi tincidunt posuere at sit amet sem. Pellentesque eget blandit nisl, in ultrices nunc. Aenean tempus pulvinar lobortis. Vestibulum eu mi id nunc eleifend fermentum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur nec posuere enim, sed dignissim est. Mauris sed turpis in velit luctus egestas eget id turpis. Duis ut dapibus purus. Donec vitae justo ac orci consequat porta. Pellentesque pharetra, dui eget gravida tristique, dolor mi tincidunt mi, vitae luctus ante metus sed est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut finibus viverra augue vel ornare.  comment');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `role`, `password`) VALUES
(1, 'Editor', 'editor', 'editor', '$2y$10$Q.F7sGEo41YRf1Ir1NrTT.fPbu017gQdBeYY1HxnphhsMhfB.jrwG'),
(2, 'Somoy', 'somoy', 'journalist', '$2y$10$Q.F7sGEo41YRf1Ir1NrTT.fPbu017gQdBeYY1HxnphhsMhfB.jrwG'),
(3, 'Joe', 'joe', 'journalist', '$2y$10$xKFksx0F/ktl3O7M1BV5L.0d.MwJ2JFpggmxnCnPwHVP7ZiEadj76'),
(5, 'Journal', 'journal', 'journalist', '$2y$10$Jlpo2Ywnxi6tJ7.wawFgsOtoFl6bWBEKOhkaJTfM8UKab/qVNVXS2'),
(6, 'Maruf', 'maruf', 'journalist', '$2y$10$SBIMPAHKNOiUPCSpkylMdu8OTx8QKajMzvwTLHChpMbRPaKLUfWqK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
