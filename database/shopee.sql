-- phpMyAdmin SQL Dump
-- version 5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2022 at 11:01 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET
  AUTOCOMMIT = 0;
START TRANSACTION;
SET
  time_zone = "+00:00";
  /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
  /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
  /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
  /*!40101 SET NAMES utf8mb4 */;
--
  -- Database: `Random`
  --
  -- --------------------------------------------------------
  --
  -- Table structure for table `cart`
  --
  CREATE TABLE `cart` (
    `cart_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    `item_id` int(11) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- --------------------------------------------------------
  --
  -- Table structure for table `product`
  --
  CREATE TABLE `product` (
    `item_id` int(11) NOT NULL,
    `item_brand` varchar(200) NOT NULL,
    `item_name` varchar(255) NOT NULL,
    `item_price` double(10, 2) NOT NULL,
    `item_image` varchar(255) NOT NULL,
    `item_register` datetime DEFAULT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
  -- Dumping data for table `product`
  --
INSERT INTO
  `product` (
    `item_id`,
    `item_brand`,
    `item_name`,
    `item_price`,
    `item_image`,
    `item_register`
  )
VALUES
  (
    1,
    'Random',
    'Boquee 2',
    42.00,
    './assets/products/1.png',
    NOW()
  ),
  -- NOW()
  (
    2,
    'Red',
    'Boquee 7',
    22.00,
    './assets/products/2.png',
    NOW()
  ),
  (
    3,
    'White',
    'Boquee 6',
    32.00,
    './assets/products/3.png',
    NOW()
  ),
  (
    4,
    'Random',
    'Boquee 5',
    22.00,
    './assets/products/4.png',
    NOW()
  ),
  (
    5,
    'Yellow',
    'Boquee 4',
    32.00,
    './assets/products/5.png',
    NOW()
  ),
  (
    6,
    'Red',
    'Boquee 8',
    22.00,
    './assets/products/6.png',
    NOW()
  ),
  (
    7,
    'Random',
    'Boquee 9',
    22.00,
    './assets/products/8.png',
    NOW()
  ),
  (
    8,
    'Yellow',
    'Boquee 10',
    32.00,
    './assets/products/10.png',
    NOW()
  ),
  (
    9,
    'White',
    'Boquee 11',
    42.00,
    './assets/products/11.png',
    NOW()
  ),
  (
    10,
    'Yellow',
    'Boquee 12',
    55.00,
    './assets/products/12.png',
    NOW()
  ),
  (
    11,
    'Red',
    'Boquee 13',
    42.00,
    './assets/products/13.png',
    NOW()
  ),
  (
    12,
    'White',
    'Boquee 14',
    55.00,
    './assets/products/14.png',
    NOW()
  ),
  (
    13,
    'Red',
    'Boquee 15',
    42.00,
    './assets/products/15.png',
    NOW()
  );
-- --------------------------------------------------------
  --
  -- Table structure for table `user`
  --
  CREATE TABLE `user` (
    `user_id` int(11) NOT NULL,
    `first_name` varchar(100) NOT NULL,
    `last_name` varchar(100) NOT NULL,
    `register_date` datetime DEFAULT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
  -- Dumping data for table `user`
  --
INSERT INTO
  `user` (
    `user_id`,
    `first_name`,
    `last_name`,
    `register_date`
  )
VALUES
  (1, 'Random', 'Random', NOW()),
  (2, 'Omega', 'Paulo', NOW());
-- --------------------------------------------------------
  --
  -- Table structure for table `wishlist`
  --
  CREATE TABLE `wishlist` (
    `cart_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    `item_id` int(11) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
  -- Indexes for dumped tables
  --
  --
  -- Indexes for table `cart`
  --
ALTER TABLE
  `cart`
ADD
  PRIMARY KEY (`cart_id`);
--
  -- Indexes for table `product`
  --
ALTER TABLE
  `product`
ADD
  PRIMARY KEY (`item_id`);
--
  -- Indexes for table `user`
  --
ALTER TABLE
  `user`
ADD
  PRIMARY KEY (`user_id`);
--
  -- AUTO_INCREMENT for dumped tables
  --
  --
  -- AUTO_INCREMENT for table `cart`
  --
ALTER TABLE
  `cart`
MODIFY
  `cart_id` int(11) NOT NULL AUTO_INCREMENT;
--
  -- AUTO_INCREMENT for table `product`
  --
ALTER TABLE
  `product`
MODIFY
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 14;
--
  -- AUTO_INCREMENT for table `user`
  --
ALTER TABLE
  `user`
MODIFY
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 3;
COMMIT;
  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;