-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2025 at 03:44 PM
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
-- Database: `realstate`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email_address` varchar(150) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `registration_date` date NOT NULL,
  `preferred_contact` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `first_name`, `last_name`, `email_address`, `phone_number`, `registration_date`, `preferred_contact`) VALUES
(1, 'Robert', 'Taylor', 'robert.taylor@email.com', '+1987654321', '2023-01-10', 'Email'),
(2, 'Jennifer', 'Thomas', 'jennifer.thomas@email.com', '+1987654322', '2023-02-15', 'Phone'),
(3, 'William', 'Jackson', 'william.jackson@email.com', '+1987654323', '2023-03-20', 'Email'),
(4, 'Jessica', 'White', 'jessica.white@email.com', '+1987654324', '2023-04-05', 'Phone'),
(5, 'Christopher', 'Harris', 'christopher.harris@email.com', '+1987654325', '2023-05-12', 'Email'),
(6, 'Amanda', 'Martin', 'amanda.martin@email.com', '+1987654326', '2023-06-18', 'Phone'),
(7, 'Matthew', 'Thompson', 'matthew.thompson@email.com', '+1987654327', '2023-07-22', 'Email'),
(8, 'Ashley', 'Garcia', 'ashley.garcia@email.com', '+1987654328', '2023-08-30', 'Phone'),
(9, 'Daniel', 'Martinez', 'daniel.martinez@email.com', '+1987654329', '2023-09-14', 'Email'),
(10, 'Michelle', 'Robinson', 'michelle.robinson@email.com', '+1987654330', '2023-10-08', 'Phone');

-- --------------------------------------------------------

--
-- Table structure for table `client_inspection`
--

CREATE TABLE `client_inspection` (
  `client_id` int(11) NOT NULL,
  `inspection_id` int(11) NOT NULL,
  `feedback` text DEFAULT NULL,
  `attended` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_inspection`
--

INSERT INTO `client_inspection` (`client_id`, `inspection_id`, `feedback`, `attended`) VALUES
(1, 1, 'Loved the apartment, great location', 1),
(2, 2, 'Nice house but kitchen needs work', 1),
(3, 3, 'Beautiful property, very interested', 1),
(4, 4, 'Garden is amazing', 1),
(5, 5, 'Perfect for our needs', 1),
(6, 6, 'Good potential', 1),
(7, 2, 'Too expensive for the condition', 1);

-- --------------------------------------------------------

--
-- Table structure for table `client_property_interest`
--

CREATE TABLE `client_property_interest` (
  `client_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `interest_date` date NOT NULL,
  `interest_level` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_property_interest`
--

INSERT INTO `client_property_interest` (`client_id`, `property_id`, `interest_date`, `interest_level`, `notes`) VALUES
(1, 1, '2024-02-08', 'High', 'Very interested, planning to make offer'),
(2, 2, '2024-02-18', 'Medium', 'Interested but concerned about price'),
(3, 4, '2024-02-20', 'High', 'Dream home, will make competitive offer'),
(4, 6, '2024-02-25', 'High', 'Love the villa style'),
(5, 8, '2024-03-12', 'High', 'Modern and in budget'),
(6, 10, '2024-03-05', 'Medium', 'Good option, considering'),
(7, 3, '2024-02-28', 'High', 'Looking for rental'),
(8, 5, '2024-03-08', 'Medium', 'Interested in renting'),
(9, 7, '2024-01-05', 'High', 'Made successful offer'),
(10, 2, '2024-02-22', 'Low', 'Just browsing');

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `listing_type_id` int(11) NOT NULL,
  `contract_document` varchar(255) DEFAULT NULL,
  `responsible_employee_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `contract_status_id` int(11) NOT NULL,
  `signed_date` date DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `contract_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`id`, `property_id`, `listing_type_id`, `contract_document`, `responsible_employee_id`, `client_id`, `contract_status_id`, `signed_date`, `start_date`, `end_date`, `contract_amount`) VALUES
(1, 1, 1, 'contract_001.pdf', 1, 1, 2, '2024-02-23', '2024-03-15', NULL, 440000),
(2, 3, 2, 'contract_003.pdf', 2, 7, 2, '2024-03-05', '2024-03-15', '2025-03-15', 2500),
(3, 5, 2, 'contract_005.pdf', 2, 8, 2, '2024-03-10', '2024-03-20', '2025-03-20', 1800),
(4, 7, 1, 'contract_007.pdf', 1, 9, 3, '2024-01-10', '2024-02-01', NULL, 820000),
(5, 8, 1, 'contract_008.pdf', 6, 5, 2, '2024-03-25', '2024-04-10', NULL, 515000);

-- --------------------------------------------------------

--
-- Table structure for table `contract_status`
--

CREATE TABLE `contract_status` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contract_status`
--

INSERT INTO `contract_status` (`id`, `description`) VALUES
(1, 'Draft'),
(2, 'Active'),
(3, 'Completed'),
(4, 'Terminated'),
(5, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `job_title` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `role_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `start_date`, `end_date`, `job_title`, `email`, `phone_number`, `role_type_id`) VALUES
(1, 'John', 'Smith', '2020-01-15', NULL, 'Senior Sales Agent', 'john.smith@realestate.com', '+1234567890', 5),
(2, 'Sarah', 'Johnson', '2019-03-20', NULL, 'Property Manager', 'sarah.johnson@realestate.com', '+1234567891', 2),
(3, 'Michael', 'Brown', '2021-06-10', NULL, 'Sales Agent', 'michael.brown@realestate.com', '+1234567892', 1),
(4, 'Emily', 'Davis', '2020-09-05', NULL, 'Listing Agent', 'emily.davis@realestate.com', '+1234567893', 3),
(5, 'David', 'Wilson', '2018-11-12', NULL, 'Senior Property Manager', 'david.wilson@realestate.com', '+1234567894', 2),
(6, 'Lisa', 'Martinez', '2022-02-01', NULL, 'Sales Agent', 'lisa.martinez@realestate.com', '+1234567895', 1),
(7, 'James', 'Anderson', '2019-07-18', NULL, 'Administrator', 'james.anderson@realestate.com', '+1234567896', 4);

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE `feature` (
  `id` int(11) NOT NULL,
  `feature_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feature`
--

INSERT INTO `feature` (`id`, `feature_name`) VALUES
(1, 'Swimming Pool'),
(2, 'Garden'),
(3, 'Garage'),
(4, 'Air Conditioning'),
(5, 'Heating'),
(6, 'Security System'),
(7, 'Balcony'),
(8, 'Terrace'),
(9, 'Fireplace'),
(10, 'Gym'),
(11, 'Elevator'),
(12, 'Storage Room');

-- --------------------------------------------------------

--
-- Table structure for table `inspection`
--

CREATE TABLE `inspection` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `inspection_datetime` datetime NOT NULL,
  `responsible_employee_id` int(11) NOT NULL,
  `inspection_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inspection`
--

INSERT INTO `inspection` (`id`, `property_id`, `inspection_datetime`, `responsible_employee_id`, `inspection_notes`) VALUES
(1, 1, '2024-02-10 14:00:00', 1, 'Property in excellent condition, no issues found'),
(2, 2, '2024-02-20 10:00:00', 3, 'Minor repairs needed in kitchen'),
(3, 4, '2024-02-22 15:30:00', 1, 'Pool requires maintenance'),
(4, 6, '2024-02-28 11:00:00', 4, 'Overall good condition'),
(5, 8, '2024-03-15 13:00:00', 6, 'New property, perfect condition'),
(6, 10, '2024-03-08 16:00:00', 3, 'Some cosmetic updates recommended');

-- --------------------------------------------------------

--
-- Table structure for table `listing`
--

CREATE TABLE `listing` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `listing_status_id` int(11) NOT NULL,
  `listing_type_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `available_from` date DEFAULT NULL,
  `available_until` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listing`
--

INSERT INTO `listing` (`id`, `property_id`, `listing_status_id`, `listing_type_id`, `price`, `created_date`, `available_from`, `available_until`) VALUES
(1, 1, 1, 1, 450000, '2024-01-15', '2024-02-01', NULL),
(2, 2, 1, 1, 780000, '2024-02-01', '2024-02-15', NULL),
(3, 3, 1, 2, 2500, '2024-02-10', '2024-03-01', '2025-03-01'),
(4, 4, 2, 1, 1200000, '2024-01-20', '2024-02-01', NULL),
(5, 5, 1, 2, 1800, '2024-03-01', '2024-03-15', '2025-03-15'),
(6, 6, 1, 1, 950000, '2024-02-15', '2024-03-01', NULL),
(7, 7, 3, 1, 820000, '2023-12-01', '2024-01-01', NULL),
(8, 8, 1, 1, 520000, '2024-03-10', '2024-04-01', NULL),
(9, 9, 1, 2, 2200, '2024-02-20', '2024-03-01', '2025-03-01'),
(10, 10, 1, 1, 680000, '2024-01-25', '2024-02-15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `listing_status`
--

CREATE TABLE `listing_status` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listing_status`
--

INSERT INTO `listing_status` (`id`, `description`) VALUES
(1, 'Active'),
(2, 'Pending'),
(3, 'Sold'),
(4, 'Withdrawn'),
(5, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `listing_type`
--

CREATE TABLE `listing_type` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listing_type`
--

INSERT INTO `listing_type` (`id`, `description`) VALUES
(1, 'Sale'),
(2, 'Rent'),
(3, 'Lease');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `offer_status_id` int(11) NOT NULL,
  `offer_amount` int(11) NOT NULL,
  `offer_date` date NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `conditions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`id`, `client_id`, `property_id`, `offer_status_id`, `offer_amount`, `offer_date`, `expiry_date`, `conditions`) VALUES
(1, 1, 1, 2, 440000, '2024-02-15', '2024-02-22', 'Subject to finance approval'),
(2, 2, 2, 1, 760000, '2024-03-01', '2024-03-08', 'Subject to building inspection'),
(3, 3, 4, 3, 1150000, '2024-02-25', '2024-03-03', 'Cash offer'),
(4, 4, 6, 1, 930000, '2024-03-05', '2024-03-12', 'Subject to sale of current property'),
(5, 5, 8, 2, 515000, '2024-03-20', '2024-03-27', 'No conditions'),
(6, 6, 10, 1, 670000, '2024-03-15', '2024-03-22', 'Subject to finance approval');

-- --------------------------------------------------------

--
-- Table structure for table `offer_status`
--

CREATE TABLE `offer_status` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offer_status`
--

INSERT INTO `offer_status` (`id`, `description`) VALUES
(1, 'Pending'),
(2, 'Accepted'),
(3, 'Rejected'),
(4, 'Withdrawn'),
(5, 'Countered');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `address_line1` varchar(200) NOT NULL,
  `address_line2` varchar(200) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `property_type_id` int(11) NOT NULL,
  `property_size` int(11) DEFAULT NULL,
  `block_size` int(11) DEFAULT NULL,
  `num_bedrooms` int(11) DEFAULT NULL,
  `num_bathrooms` int(11) DEFAULT NULL,
  `num_carspaces` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `year_built` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `address_line1`, `address_line2`, `city`, `region`, `postal_code`, `property_type_id`, `property_size`, `block_size`, `num_bedrooms`, `num_bathrooms`, `num_carspaces`, `description`, `year_built`) VALUES
(1, '123 Main Street', 'Apt 4B', 'New York', 'NY', '10001', 2, 1200, NULL, 2, 2, 1, 'Modern apartment in downtown location with city views', 2018),
(2, '456 Oak Avenue', NULL, 'Los Angeles', 'CA', '90001', 1, 2500, 5000, 4, 3, 2, 'Spacious family home with large backyard', 2015),
(3, '789 Pine Road', NULL, 'Chicago', 'IL', '60601', 3, 1800, 3500, 3, 2, 2, 'Beautiful townhouse in quiet neighborhood', 2020),
(4, '321 Elm Street', NULL, 'Houston', 'TX', '77001', 1, 3000, 6000, 5, 4, 3, 'Luxury home with pool and modern amenities', 2019),
(5, '654 Maple Drive', 'Unit 12', 'Phoenix', 'AZ', '85001', 2, 950, NULL, 1, 1, 1, 'Cozy apartment perfect for singles or couples', 2021),
(6, '987 Cedar Lane', NULL, 'Philadelphia', 'PA', '19101', 4, 2200, 4000, 3, 3, 2, 'Elegant villa with garden and patio', 2017),
(7, '147 Birch Court', NULL, 'San Antonio', 'TX', '78201', 1, 2800, 5500, 4, 3, 2, 'Contemporary home in established area', 2016),
(8, '258 Willow Way', NULL, 'San Diego', 'CA', '92101', 3, 1600, 3000, 2, 2, 1, 'Modern townhouse near amenities', 2022),
(9, '369 Ash Boulevard', 'Suite 8', 'Dallas', 'TX', '75201', 2, 1100, NULL, 2, 2, 1, 'Stylish apartment with balcony', 2020),
(10, '741 Spruce Street', NULL, 'San Jose', 'CA', '95101', 1, 2400, 4500, 3, 2, 2, 'Family home with renovated kitchen', 2014);

-- --------------------------------------------------------

--
-- Table structure for table `property_employee`
--

CREATE TABLE `property_employee` (
  `property_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `role_type_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property_employee`
--

INSERT INTO `property_employee` (`property_id`, `employee_id`, `role_type_id`, `start_date`, `end_date`) VALUES
(1, 1, 3, '2024-01-15', NULL),
(2, 3, 3, '2024-02-01', NULL),
(3, 2, 2, '2024-02-10', NULL),
(4, 1, 1, '2024-01-20', NULL),
(5, 2, 2, '2024-03-01', NULL),
(6, 4, 3, '2024-02-15', NULL),
(7, 1, 1, '2023-12-01', '2024-01-15'),
(8, 6, 3, '2024-03-10', NULL),
(9, 2, 2, '2024-02-20', NULL),
(10, 3, 1, '2024-01-25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_feature`
--

CREATE TABLE `property_feature` (
  `property_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property_feature`
--

INSERT INTO `property_feature` (`property_id`, `feature_id`) VALUES
(1, 4),
(1, 7),
(1, 11),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 3),
(3, 4),
(3, 8),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 6),
(4, 9),
(5, 4),
(5, 7),
(6, 2),
(6, 4),
(6, 8),
(6, 10),
(7, 3),
(7, 4),
(7, 5),
(8, 4),
(8, 7),
(8, 11),
(9, 4),
(9, 6),
(9, 7),
(10, 2),
(10, 3),
(10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `property_type`
--

CREATE TABLE `property_type` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property_type`
--

INSERT INTO `property_type` (`id`, `description`) VALUES
(1, 'House'),
(2, 'Apartment'),
(3, 'Townhouse'),
(4, 'Villa'),
(5, 'Land'),
(6, 'Commercial');

-- --------------------------------------------------------

--
-- Table structure for table `role_type`
--

CREATE TABLE `role_type` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_type`
--

INSERT INTO `role_type` (`id`, `description`) VALUES
(1, 'Sales Agent'),
(2, 'Property Manager'),
(3, 'Listing Agent'),
(4, 'Administrator'),
(5, 'Senior Agent');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_address` (`email_address`);

--
-- Indexes for table `client_inspection`
--
ALTER TABLE `client_inspection`
  ADD PRIMARY KEY (`client_id`,`inspection_id`),
  ADD KEY `inspection_id` (`inspection_id`);

--
-- Indexes for table `client_property_interest`
--
ALTER TABLE `client_property_interest`
  ADD PRIMARY KEY (`client_id`,`property_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`),
  ADD KEY `listing_type_id` (`listing_type_id`),
  ADD KEY `responsible_employee_id` (`responsible_employee_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `contract_status_id` (`contract_status_id`);

--
-- Indexes for table `contract_status`
--
ALTER TABLE `contract_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `role_type_id` (`role_type_id`);

--
-- Indexes for table `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inspection`
--
ALTER TABLE `inspection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`),
  ADD KEY `responsible_employee_id` (`responsible_employee_id`);

--
-- Indexes for table `listing`
--
ALTER TABLE `listing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`),
  ADD KEY `listing_status_id` (`listing_status_id`),
  ADD KEY `listing_type_id` (`listing_type_id`);

--
-- Indexes for table `listing_status`
--
ALTER TABLE `listing_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_type`
--
ALTER TABLE `listing_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `property_id` (`property_id`),
  ADD KEY `offer_status_id` (`offer_status_id`);

--
-- Indexes for table `offer_status`
--
ALTER TABLE `offer_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_type_id` (`property_type_id`);

--
-- Indexes for table `property_employee`
--
ALTER TABLE `property_employee`
  ADD PRIMARY KEY (`property_id`,`employee_id`,`start_date`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `role_type_id` (`role_type_id`);

--
-- Indexes for table `property_feature`
--
ALTER TABLE `property_feature`
  ADD PRIMARY KEY (`property_id`,`feature_id`),
  ADD KEY `feature_id` (`feature_id`);

--
-- Indexes for table `property_type`
--
ALTER TABLE `property_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_type`
--
ALTER TABLE `role_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contract_status`
--
ALTER TABLE `contract_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feature`
--
ALTER TABLE `feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `inspection`
--
ALTER TABLE `inspection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `listing`
--
ALTER TABLE `listing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `listing_status`
--
ALTER TABLE `listing_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `listing_type`
--
ALTER TABLE `listing_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `offer_status`
--
ALTER TABLE `offer_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `property_type`
--
ALTER TABLE `property_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role_type`
--
ALTER TABLE `role_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_inspection`
--
ALTER TABLE `client_inspection`
  ADD CONSTRAINT `client_inspection_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `client_inspection_ibfk_2` FOREIGN KEY (`inspection_id`) REFERENCES `inspection` (`id`);

--
-- Constraints for table `client_property_interest`
--
ALTER TABLE `client_property_interest`
  ADD CONSTRAINT `client_property_interest_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `client_property_interest_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`);

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`),
  ADD CONSTRAINT `contract_ibfk_2` FOREIGN KEY (`listing_type_id`) REFERENCES `listing_type` (`id`),
  ADD CONSTRAINT `contract_ibfk_3` FOREIGN KEY (`responsible_employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `contract_ibfk_4` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `contract_ibfk_5` FOREIGN KEY (`contract_status_id`) REFERENCES `contract_status` (`id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`role_type_id`) REFERENCES `role_type` (`id`);

--
-- Constraints for table `inspection`
--
ALTER TABLE `inspection`
  ADD CONSTRAINT `inspection_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`),
  ADD CONSTRAINT `inspection_ibfk_2` FOREIGN KEY (`responsible_employee_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `listing`
--
ALTER TABLE `listing`
  ADD CONSTRAINT `listing_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`),
  ADD CONSTRAINT `listing_ibfk_2` FOREIGN KEY (`listing_status_id`) REFERENCES `listing_status` (`id`),
  ADD CONSTRAINT `listing_ibfk_3` FOREIGN KEY (`listing_type_id`) REFERENCES `listing_type` (`id`);

--
-- Constraints for table `offer`
--
ALTER TABLE `offer`
  ADD CONSTRAINT `offer_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `offer_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`),
  ADD CONSTRAINT `offer_ibfk_3` FOREIGN KEY (`offer_status_id`) REFERENCES `offer_status` (`id`);

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_ibfk_1` FOREIGN KEY (`property_type_id`) REFERENCES `property_type` (`id`);

--
-- Constraints for table `property_employee`
--
ALTER TABLE `property_employee`
  ADD CONSTRAINT `property_employee_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`),
  ADD CONSTRAINT `property_employee_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `property_employee_ibfk_3` FOREIGN KEY (`role_type_id`) REFERENCES `role_type` (`id`);

--
-- Constraints for table `property_feature`
--
ALTER TABLE `property_feature`
  ADD CONSTRAINT `property_feature_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`),
  ADD CONSTRAINT `property_feature_ibfk_2` FOREIGN KEY (`feature_id`) REFERENCES `feature` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
