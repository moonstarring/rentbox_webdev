-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 09, 2024 at 11:28 AM
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
-- Database: `RentalDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `region` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `barangay` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `additional_info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `region`, `province`, `city`, `barangay`, `postal_code`, `additional_info`) VALUES
(1, 'Metro Manila', 'zamboanga', 'Zamboanga City', 'manicahan', '94545', ''),
(2, 'Metro Manila', 'zamboanga', 'Zamboanga City', 'manicahan', '94545', ''),
(3, 'Metro Manila', 'zamboanga', 'Zamboanga City', 'manicahan', '94545', '');

-- --------------------------------------------------------

--
-- Table structure for table `gadgets`
--

CREATE TABLE `gadgets` (
  `gadget_id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `model_number` varchar(255) DEFAULT NULL,
  `inventory_status` varchar(255) DEFAULT NULL,
  `verification_status` varchar(255) DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gadget_category`
--

CREATE TABLE `gadget_category` (
  `category_id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gadget_category`
--

INSERT INTO `gadget_category` (`category_id`, `category`) VALUES
(1, 'cellphone'),
(2, 'camera'),
(3, 'laptop');

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `owner_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `verification_status` varchar(255) DEFAULT NULL,
  `applied_on` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `owner_review`
--

CREATE TABLE `owner_review` (
  `review_id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `renter_id` int(11) DEFAULT NULL,
  `rental_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_id` int(11) NOT NULL,
  `renter_id` int(11) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rental_transaction`
--

CREATE TABLE `rental_transaction` (
  `rental_id` int(11) NOT NULL,
  `gadget_id` int(11) DEFAULT NULL,
  `renter_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `transaction_method_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `rental_start_date` datetime DEFAULT NULL,
  `rental_end_date` datetime DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `renters`
--

CREATE TABLE `renters` (
  `renter_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `verification_status` varchar(255) DEFAULT NULL,
  `applied_on` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `renters`
--

INSERT INTO `renters` (`renter_id`, `user_id`, `first_name`, `middle_name`, `last_name`, `birthdate`, `verification_status`, `applied_on`, `approved_date`) VALUES
(1, 3, 'garwaz', 'garwaz', 'garwaz', '2024-04-23', 'pending', '2024-11-05 08:19:33', NULL),
(2, 4, 'garwaz', 'garwaz', 'garwaz', '2024-11-05', 'pending', '2024-11-05 08:24:30', NULL),
(3, 5, 'joshua kyle', 'ambali', 'garwaz', '2024-11-13', 'pending', '2024-11-05 08:28:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `renter_review`
--

CREATE TABLE `renter_review` (
  `review_id` int(11) NOT NULL,
  `renter_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `rental_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `cart_id` int(11) NOT NULL,
  `renter_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart_item`
--

CREATE TABLE `shopping_cart_item` (
  `item_id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `gadget_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_method`
--

CREATE TABLE `transaction_method` (
  `transaction_id` int(11) NOT NULL,
  `method` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email_address`, `phone_number`, `password`, `address_id`, `role`) VALUES
(2, 'John Doe', 'johndoe@example.com', '1234567890', 'hashed_password_here', NULL, NULL),
(3, 'garwaz', 'garwazakilan03@gmail.com', '09261013618', '$2y$10$HMYrOQ/qGiczdKP7TvhZ6eN07.Dc25m7zzWF5plb3tteHKABo.bHW', 1, NULL),
(4, 'garwaz', 'garwazakilan@gmail.com', '09261013618', '$2y$10$6zQTgO2997pJf1LqAqL/COuLeWxBd4c9.WmGatKyo1Bcw9vgN0bSK', 2, NULL),
(5, 'akilan', 'akilan@gmail.com', '09261013618', '$2y$10$tpGpPy/2nJJl65adPeqxOeubjI/FoOSKTCYGfAbt//1tVYNeQH7tq', 3, NULL),
(6, 'Admin User', 'admin@example.com', '1234567890', 'hashed_password_here', 1, 'admin'),
(7, 'Admin User', 'admin@gmail.com', '1234567890', 'admin', 1, 'admin'),
(8, 'admin', 'admin@gmail.com', '1234567890', '$2y$10$EyyoHwAkjA5UvkCC77lz0.f1SZ7TEzQVtqAo8GYFegTXYpVXYHvXC', 1, 'admin'),
(9, 'admin', 'admin@gmail.com', '1234567890', '$2y$10$eQWIv0CHgOl9R5FW37p4Iu1uWD7V.5LF9E8Ma0JS6fp4aamzDr24e', 1, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `gadgets`
--
ALTER TABLE `gadgets`
  ADD PRIMARY KEY (`gadget_id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `gadget_category`
--
ALTER TABLE `gadget_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`owner_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `owner_review`
--
ALTER TABLE `owner_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `renter_id` (`renter_id`),
  ADD KEY `rental_id` (`rental_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `renter_id` (`renter_id`);

--
-- Indexes for table `rental_transaction`
--
ALTER TABLE `rental_transaction`
  ADD PRIMARY KEY (`rental_id`),
  ADD KEY `gadget_id` (`gadget_id`),
  ADD KEY `renter_id` (`renter_id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `transaction_method_id` (`transaction_method_id`),
  ADD KEY `payment_method_id` (`payment_method_id`);

--
-- Indexes for table `renters`
--
ALTER TABLE `renters`
  ADD PRIMARY KEY (`renter_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `renter_review`
--
ALTER TABLE `renter_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `renter_id` (`renter_id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `rental_id` (`rental_id`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `renter_id` (`renter_id`);

--
-- Indexes for table `shopping_cart_item`
--
ALTER TABLE `shopping_cart_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `gadget_id` (`gadget_id`);

--
-- Indexes for table `transaction_method`
--
ALTER TABLE `transaction_method`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `address_id` (`address_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gadgets`
--
ALTER TABLE `gadgets`
  MODIFY `gadget_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gadget_category`
--
ALTER TABLE `gadget_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `owner_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `owner_review`
--
ALTER TABLE `owner_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rental_transaction`
--
ALTER TABLE `rental_transaction`
  MODIFY `rental_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `renters`
--
ALTER TABLE `renters`
  MODIFY `renter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `renter_review`
--
ALTER TABLE `renter_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopping_cart_item`
--
ALTER TABLE `shopping_cart_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_method`
--
ALTER TABLE `transaction_method`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gadgets`
--
ALTER TABLE `gadgets`
  ADD CONSTRAINT `gadgets_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`owner_id`),
  ADD CONSTRAINT `gadgets_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `gadget_category` (`category_id`);

--
-- Constraints for table `owners`
--
ALTER TABLE `owners`
  ADD CONSTRAINT `owners_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `owner_review`
--
ALTER TABLE `owner_review`
  ADD CONSTRAINT `owner_review_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`owner_id`),
  ADD CONSTRAINT `owner_review_ibfk_2` FOREIGN KEY (`renter_id`) REFERENCES `renters` (`renter_id`),
  ADD CONSTRAINT `owner_review_ibfk_3` FOREIGN KEY (`rental_id`) REFERENCES `rental_transaction` (`rental_id`);

--
-- Constraints for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD CONSTRAINT `payment_method_ibfk_1` FOREIGN KEY (`renter_id`) REFERENCES `renters` (`renter_id`);

--
-- Constraints for table `rental_transaction`
--
ALTER TABLE `rental_transaction`
  ADD CONSTRAINT `rental_transaction_ibfk_1` FOREIGN KEY (`gadget_id`) REFERENCES `gadgets` (`gadget_id`),
  ADD CONSTRAINT `rental_transaction_ibfk_2` FOREIGN KEY (`renter_id`) REFERENCES `renters` (`renter_id`),
  ADD CONSTRAINT `rental_transaction_ibfk_3` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`owner_id`),
  ADD CONSTRAINT `rental_transaction_ibfk_4` FOREIGN KEY (`transaction_method_id`) REFERENCES `transaction_method` (`transaction_id`),
  ADD CONSTRAINT `rental_transaction_ibfk_5` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`payment_id`);

--
-- Constraints for table `renters`
--
ALTER TABLE `renters`
  ADD CONSTRAINT `renters_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `renter_review`
--
ALTER TABLE `renter_review`
  ADD CONSTRAINT `renter_review_ibfk_1` FOREIGN KEY (`renter_id`) REFERENCES `renters` (`renter_id`),
  ADD CONSTRAINT `renter_review_ibfk_2` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`owner_id`),
  ADD CONSTRAINT `renter_review_ibfk_3` FOREIGN KEY (`rental_id`) REFERENCES `rental_transaction` (`rental_id`);

--
-- Constraints for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `shopping_cart_ibfk_1` FOREIGN KEY (`renter_id`) REFERENCES `renters` (`renter_id`);

--
-- Constraints for table `shopping_cart_item`
--
ALTER TABLE `shopping_cart_item`
  ADD CONSTRAINT `shopping_cart_item_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `shopping_cart` (`cart_id`),
  ADD CONSTRAINT `shopping_cart_item_ibfk_2` FOREIGN KEY (`gadget_id`) REFERENCES `gadgets` (`gadget_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
