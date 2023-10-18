-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 18, 2023 at 06:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `module_19`
--

-- --------------------------------------------------------

--
-- Table structure for table `Cart`
--

CREATE TABLE `Cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `sessionId` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `middleName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `userId` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Cart`
--

INSERT INTO `Cart` (`id`, `title`, `sessionId`, `token`, `status`, `firstName`, `middleName`, `lastName`, `mobile`, `email`, `city`, `country`, `createdAt`, `updatedAt`, `userId`) VALUES
(1, 't1 ttt tttt', 't1 ttt tttt', 't1 ttt tttt', 't1 ttt tttt', 't1 ttt tttt', 't1 ttt tttt', 't1 ttt tttt', 't1 ttt tttt', 't1 ttt tttt', 't1 ttt tttt', 't1 ttt tttt', '2023-10-18 07:24:05', NULL, 1),
(3, 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', '2023-10-18 10:28:32', NULL, 1),
(4, 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', '2023-10-18 10:30:51', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `metaTitle` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`id`, `title`, `metaTitle`, `slug`, `content`, `createdAt`, `updatedAt`) VALUES
(1, 'glossary item', 'ddd ddd', 'ddd ddd', 'ddd ddd ddd ddd ddd ddd', '2023-10-18 06:41:40', NULL),
(2, 'glossary item', 'ddd ddd', 'ddd ddd', 'b2b b2b b2b b2b', '2023-10-18 06:42:02', NULL),
(4, 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', '2023-10-18 10:28:32', NULL),
(5, 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', 'T&R 111 111 111', '2023-10-18 10:30:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Order`
--

CREATE TABLE `Order` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `subTotal` int(11) NOT NULL,
  `itemDiscount` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `grandTotal` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `middleName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `userId` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Order`
--

INSERT INTO `Order` (`id`, `title`, `token`, `subTotal`, `itemDiscount`, `tax`, `total`, `discount`, `grandTotal`, `firstName`, `middleName`, `lastName`, `mobile`, `email`, `city`, `country`, `createdAt`, `updatedAt`, `userId`) VALUES
(1, 't1 tt tt tt', 't1 tt tt tt', 50, 20, 5, 45, 2, 100, 't1 tt tt tt', 't1 tt tt tt', 't1 tt tt tt', 't1 tt tt tt', 't1 tt tt tt', 't1 tt tt tt', 't1 tt tt tt', '2023-10-18 07:33:32', NULL, 1),
(3, 't3 sss sss ss', 't3 sss sss ss', 50, 20, 5, 45, 2, 100, 't3 sss sss ss', 't3 sss sss ss', 't3 sss sss ss', 't3 sss sss ss', 't3 sss sss ss', 't3 sss sss ss', 't3 sss sss ss', '2023-10-18 07:35:16', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `metaTitle` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `summary` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `publishedAt` timestamp NULL DEFAULT NULL,
  `startsAt` timestamp NULL DEFAULT NULL,
  `endsAt` timestamp NULL DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `userId` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`id`, `firstName`, `metaTitle`, `slug`, `summary`, `price`, `discount`, `publishedAt`, `startsAt`, `endsAt`, `createdAt`, `updatedAt`, `userId`) VALUES
(1, 'f1 111 111 111', 'f1 111 111 111', 'f1 111 111 111', 'f1 111 111 111', 100, 10, NULL, NULL, NULL, '2023-10-18 07:48:38', NULL, 1),
(3, 'f2 222 222 222', 'f2 222 222 222', 'f2 222 222 222', 'f2 222 222 222', 220, 20, NULL, NULL, NULL, '2023-10-18 07:49:29', NULL, 1),
(4, 'Samsung Mobile', 'Android Phone', 'slug 1', 'f2 222 222 222', 22000, 200, NULL, NULL, NULL, '2023-10-18 08:15:15', NULL, 1),
(5, 'Samsung Mobile', 'Android Phone', 'slug 1', 'f2 222 222 222', 2000, 200, NULL, NULL, NULL, '2023-10-18 08:15:30', NULL, 1),
(6, 'Vivo Mobile', 'Android Phone', 'slug 1', 'f2 222 222 222', 9000, 200, NULL, NULL, NULL, '2023-10-18 08:15:48', NULL, 1),
(7, 'Vivo Mobile', 'Android Phone', 'slug 1', 'f2 222 222 222', 9000, 200, NULL, NULL, NULL, '2023-10-18 08:15:50', NULL, 1),
(8, 'Vivo Mobile', 'Android Phone', 'slug 1', 'f2 222 222 222', 12000, 200, NULL, NULL, NULL, '2023-10-18 08:16:31', NULL, 1),
(9, 'Konka Eletronics', 'Smart TV', 'slug 1', 'f2 222 222 222', 20000, 200, NULL, NULL, NULL, '2023-10-18 08:17:07', NULL, 1),
(10, 'Konka Eletronics', 'Smart TV', 'slug 1', 'f2 222 222 222', 25000, 200, NULL, NULL, NULL, '2023-10-18 08:17:23', NULL, 1),
(11, 'Konka Eletronics', 'Smart TV', 'slug 1', 'f2 222 222 222', 50000, 200, NULL, NULL, NULL, '2023-10-18 08:17:30', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Product_Meta`
--

CREATE TABLE `Product_Meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `productId` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Product_Meta`
--

INSERT INTO `Product_Meta` (`id`, `key`, `content`, `createdAt`, `updatedAt`, `productId`) VALUES
(1, 'key 111 111', 'key 111 111', '2023-10-18 07:55:32', NULL, 1),
(3, 'key 333 333', 'key 333 333', '2023-10-18 07:56:12', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Product_Review`
--

CREATE TABLE `Product_Review` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `productId` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Product_Review`
--

INSERT INTO `Product_Review` (`id`, `title`, `rating`, `content`, `createdAt`, `updatedAt`, `productId`) VALUES
(1, 't111 111 111', 't111 111 111', 't111 111 111', '2023-10-18 08:01:36', NULL, 1),
(3, 't33 333 333', 't33 333 333', 't33 333 333', '2023-10-18 08:02:21', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `middleName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `registrenAt` timestamp NULL DEFAULT NULL,
  `lastLogin` timestamp NULL DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `firstName`, `middleName`, `lastName`, `mobile`, `email`, `admin`, `password`, `registrenAt`, `lastLogin`, `createdAt`, `updatedAt`) VALUES
(1, 'Muhammad', 'Selim', 'Reza', '01755199808', 'selim@gmail.com', 1, 'fff111mm', NULL, NULL, '2023-10-18 07:10:44', NULL),
(3, 'Muhammad', 'Romim', 'Hasan', '01655199808', 'romim@gmail.com', 0, 'fff111mm', NULL, NULL, '2023-10-18 07:11:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('2001e8b6-ef77-416f-ad0c-7b2322095cd5', '292bebc31a9b5d1804f9bf263ce1bae08b23ebaa538f14976346248b67adfbb9', '2023-10-18 12:25:07.533', '20231018122506_first_migration', NULL, NULL, '2023-10-18 12:25:06.923', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cart`
--
ALTER TABLE `Cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Cart_userId_fkey` (`userId`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Order`
--
ALTER TABLE `Order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Order_userId_fkey` (`userId`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Product_userId_fkey` (`userId`);

--
-- Indexes for table `Product_Meta`
--
ALTER TABLE `Product_Meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Product_Meta_productId_fkey` (`productId`);

--
-- Indexes for table `Product_Review`
--
ALTER TABLE `Product_Review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Product_Review_productId_fkey` (`productId`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_mobile_key` (`mobile`),
  ADD UNIQUE KEY `User_email_key` (`email`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Cart`
--
ALTER TABLE `Cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Order`
--
ALTER TABLE `Order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Product_Meta`
--
ALTER TABLE `Product_Meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Product_Review`
--
ALTER TABLE `Product_Review`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Cart`
--
ALTER TABLE `Cart`
  ADD CONSTRAINT `Cart_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `Order`
--
ALTER TABLE `Order`
  ADD CONSTRAINT `Order_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `Product`
--
ALTER TABLE `Product`
  ADD CONSTRAINT `Product_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `Product_Meta`
--
ALTER TABLE `Product_Meta`
  ADD CONSTRAINT `Product_Meta_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Product` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `Product_Review`
--
ALTER TABLE `Product_Review`
  ADD CONSTRAINT `Product_Review_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Product` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
