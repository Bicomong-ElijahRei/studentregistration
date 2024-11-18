-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2024 at 06:33 AM
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
-- Database: `health_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `health_declarations`
--

CREATE TABLE `health_declarations` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `body_temperature` decimal(4,2) NOT NULL,
  `covid_diagnosed` enum('Yes','No') NOT NULL,
  `covid_vaccinated` enum('Yes','No') NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_declarations`
--

INSERT INTO `health_declarations` (`id`, `fname`, `lname`, `mobile_number`, `age`, `body_temperature`, `covid_diagnosed`, `covid_vaccinated`, `nationality`, `gender`, `username`) VALUES
(1, 'noel', 'Guirao', '05556', 7, 37.00, 'No', 'Yes', 'filipino', 'Male', ''),
(2, 'noel', 'Quezon', '0556', 27, 37.00, 'Yes', 'No', 'filipino', 'Male', ''),
(3, 'Cha', 'Reyes', '05565', 36, 37.50, 'No', '', 'Filipion', 'Male', ''),
(4, 'Cha2', 'Reyes', '05565', 36, 37.50, 'No', 'No', 'Filipino', 'Male', ''),
(5, 'Cha3', 'Reyes', '05565', 36, 37.50, 'No', '', 'Filipino', 'Male', ''),
(6, 'tutoy', 'Bolima', '091555', 5, 36.50, 'No', 'Yes', 'Filipino', 'Male', ''),
(18, 'cwada', 'wafasfwa', '13141424', 15, 12.00, 'Yes', 'Yes', 'filipino', 'Male', 'michwada'),
(19, 'Dioney', 'Gabutins', '9090909', 20, -99.00, 'No', 'No', 'CHingalingngaling', 'Male', 'Dioneyys'),
(20, 'Mamamo', 'Nagluluto', '989143143', 40, 19.00, 'No', 'Yes', 'filipino', 'Female', 'Mamamo'),
(22, 'Korean', 'Koreaboo', '143143143', 19, 99.99, 'No', 'Yes', 'chinay', 'Female', 'Korean');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `is_admin`) VALUES
(9, 'user1', '$2y$10$KzRyJyc08m5RM85.RzAosOTz7kqNEf9Wn0eXK25kIis7DWgtNhQFy', 0),
(10, 'admin', '$2y$10$YzcF3Dp.BedIYpHWyVWeKOFIR1Nl.WeKqmYPDgoqcHyDahlKnLeKG', 1),
(12, 'mich', '$2y$10$lLD/2IdNLdpZAa5B8BD5tOKqFd/zdm3fJ0KOs6JS2q.DojFSANsK.', 0),
(13, '2bg', '$2y$10$9NWjMwNRWli/0Rz2XiOYpepbnzjxkHZe1BMPwf1dSJl8ObDJVQjau', 0),
(14, '2321', '$2y$10$rFMQshGwfyhQyeszfhEYYupHVSRt1GfxidkDhHFzdP53AIWRhmuKW', 0),
(16, 'jess', '$2y$10$UI.QJL7sawlLgM8SHbBKve84ZBWv4nIeq.g1XBsOpYGpOGLF7.MaO', 0),
(19, 'michelle', '$2y$10$MNvphFNfi1N3Jm6Q7FdbK.PH5JCO2GLE6mNWJdo9OK4owCtTjqiw6', 0),
(39, 'michwada', '$2y$10$AGk6SENCJkMc2bCr4Z5Cd.WfFqjIsw7XScCuT8GYeqsp1OLGUCIru', 0),
(40, 'Dioneyys', '$2y$10$K7kfVBJ6H9KAF529RO7QlOyXQmxRg3nVwffDsyswPPAgnWYLEYtvG', 0),
(41, 'Mamamo', '$2y$10$NjHFs.40UGl9qn8RdaC8yep7nRVwOQapcsfHvxJiyswvA1qHx1p42', 0),
(42, 'Korean', '$2y$10$25nehCdCeJ2RVTk4AQulheaSylUGfsMhBrUGqS4LvBgR/r1OsVOGC', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `health_declarations`
--
ALTER TABLE `health_declarations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `health_declarations`
--
ALTER TABLE `health_declarations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
