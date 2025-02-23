-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 23 fév. 2025 à 12:32
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `carrental`
--
CREATE DATABASE IF NOT EXISTS `carrental` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `carrental`;

-- --------------------------------------------------------

--
-- Structure de la table `car`
--

DROP TABLE IF EXISTS `car`;
CREATE TABLE IF NOT EXISTS `car` (
  `car_id` int NOT NULL,
  `plate_no` varchar(20) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `car_status` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `year` int DEFAULT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `car`
--

INSERT INTO `car` (`car_id`, `plate_no`, `brand`, `car_status`, `color`, `year`) VALUES
(1, 'SDF-159', 'Toyota', 'Available', 'Red', 2015),
(2, NULL, 'BMW', 'Available', 'Magenta', 2013),
(3, 'BNV-754', 'Chevrolet', 'Not Available', 'Black', 2022),
(4, 'WQE-421', 'BMW', 'Available', 'Blue', 2024),
(5, NULL, 'Tesla', 'Not Available', 'Yellow', 2019),
(6, 'HDU-007', 'Ford', 'Not Available', 'Black', 2016),
(7, NULL, 'BMW', 'Not Available', 'Green', 2000),
(8, NULL, 'Honda', 'Available', 'White', 2018),
(9, 'FJK-483', 'Honda', 'Available', 'Black', 2015),
(10, 'XYZ-123', 'Mercedes', 'Available', 'Green', 2018);

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int NOT NULL,
  `p_id` int DEFAULT NULL,
  `DL_num` varchar(20) DEFAULT NULL,
  `DL_status` varchar(255) DEFAULT NULL,
  `DL_exp_date` date DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `p_id` (`p_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`customer_id`, `p_id`, `DL_num`, `DL_status`, `DL_exp_date`) VALUES
(401, 1, 'DL123456789', 'Active', '2025-12-31'),
(402, 2, 'DL987654321', 'Suspended', '2023-06-15'),
(403, 3, 'DL112233445', 'Expired', '2022-08-20'),
(404, 4, 'DL556677889', 'Active', '2027-01-01'),
(405, 5, 'DL665544332', 'Active', '2026-11-30'),
(406, 6, 'DL998877665', 'Expired', '2021-02-28'),
(407, 7, 'DL776655443', 'Active', '2028-05-05'),
(408, 8, 'DL334455667', 'Active', '2026-03-10'),
(409, 9, 'DL123789456', 'Suspended', '2024-07-15'),
(410, 10, 'DL223344556', 'Expired', '2020-09-25');

-- --------------------------------------------------------

--
-- Structure de la table `electriccar`
--

DROP TABLE IF EXISTS `electriccar`;
CREATE TABLE IF NOT EXISTS `electriccar` (
  `car_id` int NOT NULL,
  `battery_capacity` decimal(10,2) DEFAULT NULL,
  `charging_time` time DEFAULT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `electriccar`
--

INSERT INTO `electriccar` (`car_id`, `battery_capacity`, `charging_time`) VALUES
(1, 75.00, '01:30:00'),
(2, 100.00, '02:00:00'),
(3, 40.00, '01:00:00'),
(4, 75.00, '01:30:00'),
(5, 68.00, '01:12:00');

-- --------------------------------------------------------

--
-- Structure de la table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` int NOT NULL,
  `p_id` int DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `p_id` (`p_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `employee`
--

INSERT INTO `employee` (`employee_id`, `p_id`, `salary`) VALUES
(301, 11, 5000.00),
(302, 12, 6000.00),
(303, 13, 4500.00),
(304, 14, 5500.00),
(305, 15, 7000.00),
(306, 16, 4500.00),
(307, 17, 4000.00),
(308, 18, 6500.00),
(309, 19, 6000.00),
(310, 20, 7500.00);

-- --------------------------------------------------------

--
-- Structure de la table `normalcar`
--

DROP TABLE IF EXISTS `normalcar`;
CREATE TABLE IF NOT EXISTS `normalcar` (
  `car_id` int NOT NULL,
  `norm_type` varchar(50) DEFAULT NULL,
  `fuel_type` varchar(50) DEFAULT NULL,
  `seating_capacity` int DEFAULT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `normalcar`
--

INSERT INTO `normalcar` (`car_id`, `norm_type`, `fuel_type`, `seating_capacity`) VALUES
(6, 'Van', 'Petrol', 5),
(7, 'Sedan', 'Diesel', 5),
(8, 'Suv', 'Petrol', 5),
(9, NULL, 'Diesel', 5),
(10, 'Van', 'Petrol', 5);

-- --------------------------------------------------------

--
-- Structure de la table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `p_id` int NOT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `person`
--

INSERT INTO `person` (`p_id`, `lname`, `fname`, `email`, `address`, `dob`) VALUES
(1, 'Smith', 'Will', 'will.smith@gmail.com', NULL, '1968-09-25'),
(2, 'Sanchez', 'Rick', 'pickle.rick@gmail.com', NULL, '1943-01-15'),
(3, 'Smith', 'Morty', 'oh.geez@gmail.com', '559 SWS St', '2010-12-07'),
(4, 'White', 'Walter', 'sayMyName@gmail.com', '754 MSP St', '1958-09-07'),
(5, 'Wayne', 'Bruce', 'justice@gmail.com', 'The Bat Cave', '1995-07-24'),
(6, 'Sanchez', 'Diane', 'fahadn554@gmail.com', '559 SWS St', '1941-12-20'),
(7, 'Walker', 'James', 'james.walker@gmail.com', NULL, '1980-11-11'),
(8, 'Harris', 'Olivia', 'olivia.harris@gmail.com', '505 Cherry St', '1978-09-09'),
(9, 'Doe', 'Jane', 'jane.doe@gmail.com', NULL, '1990-02-02'),
(10, 'Taylor', 'Emily', NULL, '452 Oak St', '2000-03-03'),
(11, 'Nasr', 'Fahad', 'fahadn554@gmail.com', NULL, '2004-10-01'),
(12, 'Khlage', 'Khaled', 'khaled.king@gmail.com', '25 Ash St', '2002-10-22'),
(13, 'Romi', 'Najida', 'heen.yragsoni@gmail.com', NULL, '1991-12-19'),
(14, 'Abdu', 'Mohamed', 'bdayat.almahbah@gmail.com', '22 Derby St', '1995-05-17'),
(15, 'Scott', 'Travis', 'sicko.mode@gmail.com', '22 Sick St', '2000-12-30'),
(16, 'Mendes', 'Shawn', NULL, NULL, '1993-08-15'),
(17, 'Ali', 'Yousif', 'yousif.ali@gmail.com', '24 Yaman St', '2002-06-01'),
(18, 'Nasr', 'Faisal', 'faisal.yamal@gmail.com', '36 Riyadh St', '2002-02-14'),
(19, 'Majcheri', 'Hassan', NULL, '21 Cyprus St', '2015-02-07'),
(20, 'Ashraf', 'Maher', 'sheck.mbarck@gmail.com', NULL, '1985-04-18');

-- --------------------------------------------------------

--
-- Structure de la table `phone_no`
--

DROP TABLE IF EXISTS `phone_no`;
CREATE TABLE IF NOT EXISTS `phone_no` (
  `p_id` int NOT NULL,
  `Phone` varchar(15) NOT NULL,
  PRIMARY KEY (`p_id`,`Phone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `phone_no`
--

INSERT INTO `phone_no` (`p_id`, `Phone`) VALUES
(1, '054-741-8523'),
(2, '054-732-1469'),
(3, '054-787-9842'),
(4, '054-753-8596'),
(5, '056-9856-1578'),
(6, '052-458-4258'),
(7, '054-876-5285'),
(8, '053-753-9865'),
(9, '054-444-6524'),
(10, '050-339-9228'),
(11, '051-753-9524'),
(12, '054-978-2469'),
(13, '057-846-5263'),
(14, '057-984-2459'),
(15, '054-875-5672'),
(15, '057-842-6328'),
(16, '053-657-8822'),
(17, '055-752-6295'),
(18, '056-452-1728'),
(19, '050-785-5263'),
(20, '054-862-8426');

-- --------------------------------------------------------

--
-- Structure de la table `refund`
--

DROP TABLE IF EXISTS `refund`;
CREATE TABLE IF NOT EXISTS `refund` (
  `refund_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `rent_id` int DEFAULT NULL,
  `Ramount` decimal(10,2) DEFAULT NULL,
  `Rstatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`refund_id`),
  KEY `customer_id` (`customer_id`),
  KEY `rent_id` (`rent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `refund`
--

INSERT INTO `refund` (`refund_id`, `customer_id`, `rent_id`, `Ramount`, `Rstatus`) VALUES
(100, 401, 1, 250.00, 'Approved'),
(101, 402, 2, 150.00, 'Pending'),
(110, 403, 3, 300.00, 'Rejected'),
(102, 404, 4, 500.00, 'Approved'),
(103, 405, 5, 200.00, 'Pending'),
(104, 406, 6, 180.00, 'Rejected'),
(105, 407, 7, 400.00, 'Approved'),
(106, 408, 8, 120.00, 'Pending'),
(107, 409, 9, 220.00, 'Approved'),
(108, 410, 10, 350.00, 'Rejected');

-- --------------------------------------------------------

--
-- Structure de la table `rent`
--

DROP TABLE IF EXISTS `rent`;
CREATE TABLE IF NOT EXISTS `rent` (
  `rent_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `refund_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `pay_method` varchar(50) DEFAULT NULL,
  `pay_amount` decimal(10,2) DEFAULT NULL,
  `damage_compensation` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`rent_id`),
  KEY `reservation_id` (`order_id`),
  KEY `refund_id` (`refund_id`),
  KEY `employee_id` (`employee_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `rent`
--

INSERT INTO `rent` (`rent_id`, `order_id`, `refund_id`, `employee_id`, `customer_id`, `pay_method`, `pay_amount`, `damage_compensation`) VALUES
(1, 1, 100, 301, 401, 'Credit Card', 200.00, 50.00),
(2, 2, 101, 302, 402, 'Debit Card', 150.00, 30.00),
(3, 3, NULL, 303, 403, 'PayPal', 300.00, 100.00),
(4, 4, 102, 304, 404, 'Credit Card', 120.00, 40.00),
(5, 5, 103, 305, 405, 'Cash', 400.00, 70.00),
(6, 6, 104, 306, 406, 'Credit Card', 250.00, 60.00),
(7, 7, NULL, 307, 407, 'PayPal', 180.00, 25.00),
(8, 8, 106, 308, 408, 'Debit Card', 160.00, 20.00),
(9, 9, NULL, 309, 409, 'Credit Card', 220.00, 45.00),
(10, 10, 108, 310, 410, 'Cash', 350.00, 90.00);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `order_id` int NOT NULL,
  `car_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `wanted_date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `car_id` (`car_id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`order_id`, `car_id`, `customer_id`, `employee_id`, `location`, `duration`, `order_date`, `wanted_date`) VALUES
(1, 1, 401, 301, 'New York', 5, '2024-12-01', '2024-12-06'),
(2, 2, 402, 302, 'Los Angeles', 3, '2024-12-03', '2024-12-06'),
(3, 3, 403, 303, 'Chicago', 7, '2024-12-05', '2024-12-12'),
(4, 4, 404, 304, 'San Francisco', 2, '2024-12-06', '2024-12-08'),
(5, 5, 405, 305, 'Miami', 10, '2024-12-10', '2024-12-20'),
(6, 6, 406, 306, 'Houston', 4, '2024-12-12', '2024-12-16'),
(7, 7, 407, 307, 'Seattle', 6, '2024-12-15', '2024-12-21'),
(8, 8, 408, 308, 'Boston', 3, '2024-12-18', '2024-12-21'),
(9, 9, 409, 309, 'Dallas', 6, '2024-12-20', '2024-12-25'),
(10, 10, 410, 310, 'Las Vegas', 5, '2024-12-22', '2024-12-27');
--
-- Base de données : `data`
--
CREATE DATABASE IF NOT EXISTS `data` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `data`;

-- --------------------------------------------------------

--
-- Structure de la table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
CREATE TABLE IF NOT EXISTS `passenger` (
  `passport_number` int NOT NULL,
  `First_name` varchar(20) NOT NULL,
  `Last_name` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Phone_number` varchar(15) NOT NULL,
  `Resident` varchar(30) DEFAULT NULL,
  `Date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`passport_number`),
  UNIQUE KEY `Phone_number` (`Phone_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `passenger`
--

INSERT INTO `passenger` (`passport_number`, `First_name`, `Last_name`, `Email`, `Phone_number`, `Resident`, `Date_of_birth`) VALUES
(203483675, 'Alice', 'Smith', 'alice.smith@email.com', '1234567890', 'USA', '1985-03-12'),
(846204732, 'Bob', 'Johnson', 'bob.johnson@email.com', '2345678901', 'Canada', '1990-07-23'),
(321987655, 'Charlie', 'Brown', 'charlie.brown@email.com', '3456789012', 'UK', NULL),
(764283952, 'David', 'Davis', 'david.davis@email.com', '4567890123', 'Australia', '1992-01-11'),
(183746210, 'Eva', 'Wilson', 'eva.wilson@email.com', '5678901234', NULL, '1980-02-28'),
(509382717, 'Frank', 'Taylor', 'frank.taylor@email.com', '6789012345', 'Germany', '1987-11-18'),
(283746592, 'Grace', 'Anderson', 'grace.anderson@email.com', '7890123456', 'France', '1993-09-07'),
(748956214, 'Hank', 'Thomas', 'hank.thomas@email.com', '8901234567', 'Italy', '1982-04-03'),
(389712641, 'Ivy', 'Martinez', 'ivy.martinez@email.com', '9012345678', 'Spain', '1995-06-19'),
(562948308, 'Jack', 'Garcia', 'jack.garcia@email.com', '1122334455', 'USA', '1991-12-22');
--
-- Base de données : `dbscarrental`
--
CREATE DATABASE IF NOT EXISTS `dbscarrental` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `dbscarrental`;

-- --------------------------------------------------------

--
-- Structure de la table `car`
--

DROP TABLE IF EXISTS `car`;
CREATE TABLE IF NOT EXISTS `car` (
  `car_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `rent_id` int DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `car_status` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `plate_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  KEY `rent_id` (`rent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `car`
--

INSERT INTO `car` (`car_id`, `customer_id`, `employee_id`, `rent_id`, `color`, `year`, `car_status`, `brand`, `plate_no`) VALUES
(1, 401, 301, 1, 'Red', 2015, 'Available', 'Toyota', 'SDF-159'),
(2, 402, 302, 2, 'Magenta', 2013, 'Rented', 'BMW', 'FDG-157'),
(3, 403, 303, 3, 'Black', 2022, 'Not Available', 'Chevrolet', NULL),
(4, 404, 304, 4, 'Blue', 2024, 'Available', 'Tesla', 'WQE-421'),
(5, 405, 305, 5, 'Yellow', 2019, 'Rented', 'Audi', 'NMH-451'),
(6, 406, 306, 6, 'Black', 2016, 'Not Available', 'Ford', 'HDU-007'),
(7, 407, 307, 7, 'Green', 2000, 'Rented', 'BMW', 'LKJ-620'),
(8, 408, 308, 8, 'White', 2018, 'Available', 'Honda', NULL),
(9, 409, 309, 9, 'Black', 2015, 'Rented', 'Honda', 'FJK-483'),
(10, 410, 310, 10, 'Green', 2018, 'Available', 'Mercedes', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int NOT NULL,
  `p_id` int DEFAULT NULL,
  `car_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `rent_id` int DEFAULT NULL,
  `refund_id` int DEFAULT NULL,
  `DL_num` varchar(20) DEFAULT NULL,
  `DL_status` varchar(255) DEFAULT NULL,
  `DL_exp_date` date DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `p_id` (`p_id`),
  KEY `car_id` (`car_id`),
  KEY `order_id` (`order_id`),
  KEY `rent_id` (`rent_id`),
  KEY `refund_id` (`refund_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`customer_id`, `p_id`, `car_id`, `order_id`, `rent_id`, `refund_id`, `DL_num`, `DL_status`, `DL_exp_date`) VALUES
(401, 1, 1, 1, 1, 100, 'DL123456789', 'Active', '2025-12-31'),
(402, 2, 2, 2, 2, 101, 'DL987654321', 'Suspended', '2023-06-15'),
(403, 3, 3, 3, 3, NULL, 'DL112233445', 'Expired', '2022-08-20'),
(404, 4, 4, 4, 4, 103, 'DL556677889', 'Active', '2027-01-01'),
(405, 5, 5, 5, 5, 104, 'DL665544332', 'Active', '2026-11-30'),
(406, 6, 6, 6, 6, 105, 'DL998877665', 'Expired', '2021-02-28'),
(407, 7, 7, 7, 7, NULL, 'DL776655443', 'Active', '2028-05-05'),
(408, 8, 8, 8, 8, 107, 'DL334455667', 'Active', '2026-03-10'),
(409, 9, 9, 9, 9, NULL, 'DL123789456', 'Suspended', '2024-07-15'),
(410, 10, 10, 10, 10, 109, 'DL223344556', 'Expired', '2020-09-25');

-- --------------------------------------------------------

--
-- Structure de la table `electric`
--

DROP TABLE IF EXISTS `electric`;
CREATE TABLE IF NOT EXISTS `electric` (
  `car_id` int NOT NULL,
  `battery_capacity` int DEFAULT NULL,
  `charging_time` time DEFAULT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `electric`
--

INSERT INTO `electric` (`car_id`, `battery_capacity`, `charging_time`) VALUES
(1, 75, '01:30:00'),
(2, 100, '02:00:00'),
(3, 40, '01:00:00'),
(4, 75, '01:30:00'),
(5, 68, '01:12:00');

-- --------------------------------------------------------

--
-- Structure de la table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` int NOT NULL,
  `p_id` int DEFAULT NULL,
  `car_id` int DEFAULT NULL,
  `rent_id` int DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `p_id` (`p_id`),
  KEY `car_id` (`car_id`),
  KEY `rent_id` (`rent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `employee`
--

INSERT INTO `employee` (`employee_id`, `p_id`, `car_id`, `rent_id`, `salary`) VALUES
(301, 11, 1, 1, 5000.00),
(302, 12, 2, 2, 6000.00),
(303, 13, 3, 3, 4500.00),
(304, 14, 4, 4, 5500.00),
(305, 15, 5, 5, 7000.00),
(306, 16, 6, 6, 4500.00),
(307, 17, 7, 7, 4000.00),
(308, 18, 8, 8, 6500.00),
(309, 19, 9, 9, 6000.00),
(310, 20, 10, 10, 7500.00);

-- --------------------------------------------------------

--
-- Structure de la table `normal`
--

DROP TABLE IF EXISTS `normal`;
CREATE TABLE IF NOT EXISTS `normal` (
  `car_id` int NOT NULL,
  `norm_type` varchar(50) DEFAULT NULL,
  `fuel_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `normal`
--

INSERT INTO `normal` (`car_id`, `norm_type`, `fuel_type`) VALUES
(6, 'Van', 'Petrol'),
(7, 'Sedan', 'Diesel'),
(8, 'Suv', 'Petrol'),
(9, NULL, 'Diesel'),
(10, 'Van', 'Petrol');

-- --------------------------------------------------------

--
-- Structure de la table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `p_id` int NOT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `person`
--

INSERT INTO `person` (`p_id`, `lname`, `fname`, `email`, `address`, `dob`) VALUES
(1, 'Smith', 'Will', 'will.smith@gmail.com', '856 Elm St', '1968-09-25'),
(2, 'Sanchez', 'Rick', 'pickle.rick@gmail.com', '559 SWS St', '1943-01-15'),
(3, 'Smith', 'Morty', 'oh.geez@gmail.com', '559 SWS St', '2010-12-07'),
(4, 'White', 'Walter', NULL, '754 MSP St', '1958-09-07'),
(5, 'Wayne', 'Bruce', 'justice@gmail.com', NULL, '1995-07-24'),
(6, 'Sanchez', 'Diane', 'fahadn554@gmail.com', '559 SWS St', '1941-12-20'),
(7, 'Walker', 'James', 'james.walker@gmail.com', '303 Cedar St', '1980-11-11'),
(8, 'Harris', 'Olivia', 'olivia.harris@gmail.com', '505 Cherry St', '1978-09-09'),
(9, 'Doe', 'Jane', 'jane.doe@gmail.com', NULL, '1990-02-02'),
(10, 'Taylor', 'Emily', 'emily.taylor@gmail.com', '452 Oak St', '2000-03-03'),
(11, 'Nasr', 'Fahad', 'fahadn554@gmail.com', '12 Oak St', '2004-10-01'),
(12, 'Khlage', 'Khaled', 'khaled.king@gmail.com', '25 Ash St', '2002-10-22'),
(13, 'Romi', 'Najida', 'heen.yragsoni@gmail.com', '28 Oak St', '1991-12-19'),
(14, 'Abdu', 'Mohamed', 'bdayat.almahbah@gmail.com', '22 Derby St', '1995-05-17'),
(15, 'Scott', 'Travis', 'sicko.mode@gmail.com', NULL, '2000-12-30'),
(16, 'Mendes', 'Shawn', NULL, '56 Maple Ave', '1993-08-15'),
(17, 'Ali', 'Yousif', 'yousif.ali@gmail.com', '24 Yaman St', '2002-06-01'),
(18, 'Nasr', 'Faisal', 'faisal.yamal@gmail.com', NULL, '2002-02-14'),
(19, 'Majcheri', 'Hassan', NULL, '21 Cyprus St', '2015-02-07'),
(20, 'Ashraf', 'Maher', 'sheck.mbarck@gmail.com', NULL, '1985-04-18');

-- --------------------------------------------------------

--
-- Structure de la table `phone_no`
--

DROP TABLE IF EXISTS `phone_no`;
CREATE TABLE IF NOT EXISTS `phone_no` (
  `p_id` int NOT NULL,
  `Phone` varchar(15) NOT NULL,
  PRIMARY KEY (`p_id`,`Phone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `phone_no`
--

INSERT INTO `phone_no` (`p_id`, `Phone`) VALUES
(1, ''),
(2, '056-9856-1578'),
(3, '052-458-4258'),
(4, '054-787-9842'),
(5, '054-753-8596'),
(6, '054-876-5285'),
(7, ''),
(8, '053-753-9865'),
(9, '054-444-6524'),
(10, '050-339-9228'),
(10, '054-741-8523'),
(11, '054-978-2469'),
(11, '057-846-5263'),
(12, '054-862-8426'),
(12, '057-984-2459'),
(13, '054-875-5672'),
(14, '057-842-6328'),
(15, '053-657-8822'),
(16, '055-752-6295'),
(17, '056-452-1728'),
(18, ''),
(19, '050-785-5263'),
(20, '051-753-9524');

-- --------------------------------------------------------

--
-- Structure de la table `refund`
--

DROP TABLE IF EXISTS `refund`;
CREATE TABLE IF NOT EXISTS `refund` (
  `refund_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `rent_id` int NOT NULL,
  `Ramount` decimal(10,2) DEFAULT NULL,
  `Rstatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`refund_id`,`customer_id`,`rent_id`),
  KEY `customer_id` (`customer_id`),
  KEY `rent_id` (`rent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `refund`
--

INSERT INTO `refund` (`refund_id`, `customer_id`, `rent_id`, `Ramount`, `Rstatus`) VALUES
(100, 401, 1, 250.00, 'Approved'),
(101, 402, 2, 150.00, 'Pending'),
(0, 403, 3, NULL, NULL),
(103, 404, 4, 500.00, 'Approved'),
(104, 405, 5, 200.00, 'Pending'),
(105, 406, 6, 180.00, 'Rejected'),
(0, 407, 7, NULL, NULL),
(107, 408, 8, 120.00, 'Pending'),
(0, 409, 9, NULL, NULL),
(109, 410, 10, 350.00, 'Rejected');

-- --------------------------------------------------------

--
-- Structure de la table `rent`
--

DROP TABLE IF EXISTS `rent`;
CREATE TABLE IF NOT EXISTS `rent` (
  `rent_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `refund_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `customer_id` int NOT NULL,
  `car_id` int NOT NULL,
  `pay_method` varchar(50) DEFAULT NULL,
  `pay_amount` decimal(10,2) DEFAULT NULL,
  `damage_compensation` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`rent_id`,`customer_id`,`car_id`),
  KEY `order_id` (`order_id`),
  KEY `refund_id` (`refund_id`),
  KEY `employee_id` (`employee_id`),
  KEY `customer_id` (`customer_id`),
  KEY `car_id` (`car_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `rent`
--

INSERT INTO `rent` (`rent_id`, `order_id`, `refund_id`, `employee_id`, `customer_id`, `car_id`, `pay_method`, `pay_amount`, `damage_compensation`) VALUES
(1, 1, 100, 301, 401, 1, 'Credit Card', 200.00, 50.00),
(2, 2, 101, 302, 402, 2, 'Debit Card', 150.00, 30.00),
(3, 3, NULL, 303, 403, 3, 'PayPal', 300.00, 100.00),
(4, 4, 103, 304, 404, 4, 'Credit Card', 120.00, 40.00),
(5, 5, 104, 305, 405, 5, 'Cash', 400.00, 70.00),
(6, 6, 105, 306, 406, 6, 'Credit Card', 250.00, 60.00),
(7, 7, NULL, 307, 407, 7, 'PayPal', 180.00, 25.00),
(8, 8, 107, 308, 408, 8, 'Debit Card', 160.00, 20.00),
(9, 9, NULL, 309, 409, 9, 'Credit Card', 220.00, 45.00),
(10, 10, 109, 310, 410, 10, 'Cash', 350.00, 90.00);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `order_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `rent_id` int DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `wanted_date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `rent_id` (`rent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`order_id`, `customer_id`, `rent_id`, `location`, `duration`, `order_date`, `wanted_date`) VALUES
(1, 401, 1, 'New York', 5, '2024-12-01', '2024-12-06'),
(2, 402, 2, 'Los Angeles', 3, '2023-12-03', '2024-12-06'),
(3, 403, 3, 'Chicago', 7, '2023-12-05', '2024-12-12'),
(4, 404, 4, 'San Francisco', 2, '2024-12-06', '2024-12-08'),
(5, 405, 5, 'Miami', 10, '2024-11-02', '2024-12-20'),
(6, 406, 6, 'Houston', 4, '2024-12-12', '2024-12-16'),
(7, 407, 7, 'Seattle', 6, '2024-12-15', '2024-12-21'),
(8, 408, 8, 'Boston', 3, '2024-10-18', '2024-12-21'),
(9, 409, 9, 'Dallas', 6, NULL, '2024-12-25'),
(10, 410, 10, 'Las Vegas', 5, '2024-11-22', '2024-12-27');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
