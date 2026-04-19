-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2026 at 12:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_dealership_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `plate_number` varchar(15) NOT NULL,
  `model_id` int(11) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `status` enum('available','reserved','sold') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `plate_number`, `model_id`, `year`, `color`, `price`, `status`) VALUES
(50000501, 'NBQ 1234', 20000201, '2024', 'Pearl White', 950000.00, 'sold'),
(50000502, 'XYZ 9876', 20000202, '2025', 'Attitude Black', 1850000.00, 'available'),
(50000503, 'WEB 5541', 20000203, '2023', 'Red Mica', 650000.00, 'available'),
(50000504, 'LTO 1010', 20000204, '2024', 'Silver Metallic', 1200000.00, 'reserved'),
(50000505, 'THX 1138', 20000205, '2024', 'Bronze Mica', 1150000.00, 'sold'),
(50000506, 'HND 8892', 20000206, '2025', 'Modern Steel', 1600000.00, 'available'),
(50000507, 'CRV 7781', 20000207, '2024', 'Lunar Silver', 1950000.00, 'sold'),
(50000508, 'VAN 4421', 20000208, '2023', 'White', 1550000.00, 'available'),
(50000509, 'MUS 5000', 20000209, '2025', 'Race Red', 3800000.00, 'reserved'),
(50000510, 'NIS 2024', 20000210, '2024', 'Galaxy Black', 1700000.00, 'sold'),
(50000511, 'NAV 1122', 20000211, '2024', 'Forged Copper', 1650000.00, 'sold'),
(50000512, 'MIR 3344', 20000212, '2023', 'Wine Red', 720000.00, 'sold'),
(50000513, 'MON 5566', 20000213, '2024', 'White Diamond', 2100000.00, 'sold'),
(50000514, 'ERT 7788', 20000214, '2024', 'Burgundy Red', 980000.00, 'sold'),
(50000515, 'RAI 9900', 20000215, '2025', 'Turquoise', 850000.00, 'reserved'),
(50000516, 'CTY 1212', 20000216, '2024', 'Platinum White', 1050000.00, 'sold'),
(50000517, 'BRV 3434', 20000217, '2024', 'Crystal Black', 1250000.00, 'sold'),
(50000518, 'ALM 5656', 20000218, '2023', 'Pearl Gray', 880000.00, 'available'),
(50000519, 'L30 7878', 20000219, '2024', 'White', 820000.00, 'sold'),
(50000520, 'RSH 9090', 20000220, '2024', 'Dark Blue', 1100000.00, 'sold'),
(50000521, 'VIW 1111', 20000201, '2025', 'Thermalyte', 960000.00, 'sold'),
(50000522, 'FOR 2222', 20000202, '2024', 'Super White', 1820000.00, 'sold'),
(50000523, 'WIG 3333', 20000203, '2024', 'Orange Metallic', 670000.00, 'sold'),
(50000524, 'HIL 4444', 20000204, '2025', 'Emotional Red', 1250000.00, 'reserved'),
(50000525, 'INN 5555', 20000205, '2024', 'Blackish Red', 1180000.00, 'sold'),
(50000526, 'CIV 6666', 20000206, '2024', 'Sonic Gray', 1580000.00, 'sold'),
(50000527, 'CRV 7777', 20000207, '2025', 'Canyon River', 1980000.00, 'reserved'),
(50000528, 'HIA 8888', 20000208, '2024', 'Silver Mica', 1580000.00, 'sold'),
(50000529, 'MUS 9999', 20000209, '2024', 'Twister Orange', 3750000.00, 'sold'),
(50000530, 'TER 0000', 20000210, '2025', 'Forged Copper', 1750000.00, 'reserved'),
(50000531, 'AAA 1111', 20000211, '2024', 'Aspen White', 1680000.00, 'sold'),
(50000532, 'BBB 2222', 20000212, '2024', 'Cool Silver', 740000.00, 'sold'),
(50000533, 'CCC 3333', 20000213, '2025', 'Graphite Gray', 2150000.00, 'reserved'),
(50000534, 'DDD 4444', 20000214, '2024', 'Silky Silver', 995000.00, 'sold'),
(50000535, 'EEE 5555', 20000215, '2024', 'Red', 860000.00, 'sold'),
(50000536, 'FFF 6666', 20000216, '2025', 'Meteoroid Gray', 1080000.00, 'reserved'),
(50000537, 'GGG 7777', 20000217, '2024', 'Sand Khaki', 1280000.00, 'sold'),
(50000538, 'HHH 8888', 20000218, '2024', 'Radiant Red', 895000.00, 'available'),
(50000539, 'III 9999', 20000219, '2025', 'White', 840000.00, 'sold'),
(50000540, 'JJJ 0000', 20000220, '2024', 'Silver', 1120000.00, 'sold'),
(50000541, 'KKK 1111', 20000201, '2024', 'Black', 930000.00, 'available'),
(50000542, 'LLL 2222', 20000202, '2025', 'Platinum White', 1880000.00, 'reserved'),
(50000543, 'MMM 3333', 20000203, '2024', 'Yellow', 660000.00, 'sold'),
(50000544, 'NNN 4444', 20000204, '2024', 'Gray', 1220000.00, 'sold'),
(50000545, 'OOO 5555', 20000205, '2025', 'White', 1200000.00, 'reserved'),
(50000546, 'PPP 6666', 20000206, '2024', 'Red', 1560000.00, 'sold'),
(50000547, 'QQQ 7777', 20000207, '2024', 'Blue', 1940000.00, 'sold'),
(50000548, 'RRR 8888', 20000208, '2025', 'Black', 1600000.00, 'available'),
(50000549, 'SSS 9999', 20000209, '2025', 'Black', 3900000.00, 'reserved'),
(50000550, 'TTT 0000', 20000210, '2024', 'White', 1720000.00, 'sold');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `middle_name`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(30000301, 'Juan', 'Dela Cruz', 'Ponce', '09171234567', 'juan.dc@email.ph', 'Manila City', '2025-10-12 08:42:15', '2026-01-05 14:22:01'),
(30000302, 'Maria', 'Santos', 'Reyes', '09182345678', 'maria.s@email.ph', 'Quezon City', '2025-11-15 10:15:33', NULL),
(30000303, 'Jose', 'Rizal', 'Protacio', '09193456789', 'jose.rizal@email.ph', 'Calamba, Laguna', '2025-11-20 13:05:45', NULL),
(30000304, 'Elena', 'Adarna', 'Lopez', '09204567890', 'elena.a@email.ph', 'Cebu City', '2025-12-05 11:20:55', '2026-02-14 09:12:11'),
(30000305, 'Ricardo', 'Dalisay', 'Guanzon', '09215678901', 'carding.d@email.ph', 'Sampaloc, Manila', '2025-12-10 16:33:21', NULL),
(30000306, 'Liza', 'Soberano', 'Hope', '09226789012', 'liza.s@email.ph', 'Makati City', '2026-01-12 09:45:12', NULL),
(30000307, 'Enrique', 'Gil', 'Mariano', '09237890123', 'enrique.g@email.ph', 'Taguig City', '2026-01-15 15:12:30', '2026-03-01 13:40:02'),
(30000308, 'Kathryn', 'Bernardo', 'Chandria', '09248901234', 'kath.b@email.ph', 'Pasig City', '2026-01-18 08:55:01', NULL),
(30000309, 'Daniel', 'Padilla', 'Ford', '09259012345', 'dj.p@email.ph', 'North Fairview', '2026-01-20 14:20:18', '2026-03-10 11:30:55'),
(30000310, 'Vice', 'Ganda', 'Viceral', '09260123456', 'vice.g@email.ph', 'Antipolo, Rizal', '2026-01-25 10:30:25', NULL),
(30000311, 'Piolo', 'Pascual', 'Jose', '09271234511', 'piolo.p@email.ph', 'Davao City', '2026-02-01 11:12:15', '2026-04-01 09:11:00'),
(30000312, 'Bea', 'Alonzo', 'Phylbert', '09282345612', 'bea.a@email.ph', 'Zambales', '2026-02-05 13:45:00', NULL),
(30000313, 'John', 'Lloyd', 'Cruz', '09293456713', 'jl.cruz@email.ph', 'Cainta, Rizal', '2026-02-10 15:20:10', '2026-03-15 08:22:15'),
(30000314, 'Anne', 'Curtis', 'Smith', '09304567814', 'anne.c@email.ph', 'Mandaluyong City', '2026-02-12 10:05:44', NULL),
(30000315, 'Gerald', 'Anderson', 'Randolph', '09315678915', 'gerald.a@email.ph', 'General Santos', '2026-02-15 09:33:21', '2026-04-05 11:15:30'),
(30000316, 'Coco', 'Martin', 'Nacianceno', '09326789016', 'coco.m@email.ph', 'Pampanga', '2026-02-18 14:10:01', NULL),
(30000317, 'Maine', 'Mendoza', 'Nicomaine', '09337890117', 'maine.m@email.ph', 'Bulacan', '2026-02-20 08:22:45', NULL),
(30000318, 'Alden', 'Richards', 'Faulkerson', '09348901218', 'alden.r@email.ph', 'Sta. Rosa, Laguna', '2026-02-22 13:12:05', '2026-04-02 10:45:12'),
(30000319, 'Dingdong', 'Dantes', 'Sixto', '09359012319', 'dingdong.d@email.ph', 'Paranaque City', '2026-02-25 15:55:30', NULL),
(30000320, 'Marian', 'Rivera', 'Gracia', '09360123420', 'marian.r@email.ph', 'Cavite', '2026-02-28 11:40:12', '2026-03-20 14:11:05'),
(30000321, 'Sarah', 'Geronimo', 'Asher', '09371234521', 'sarah.g@email.ph', 'Valenzuela City', '2026-03-01 09:30:00', NULL),
(30000322, 'Matteo', 'Guidicelli', 'Fernan', '09382345622', 'matteo.g@email.ph', 'Cebu', '2026-03-03 10:15:55', NULL),
(30000323, 'Angel', 'Locsin', 'Colmenares', '09393456723', 'angel.l@email.ph', 'Marikina City', '2026-03-05 14:44:12', '2026-04-08 16:12:44'),
(30000324, 'Catriona', 'Gray', 'Magnayon', '09404567824', 'cat.gray@email.ph', 'Albay', '2026-03-08 11:22:10', NULL),
(30000325, 'Pia', 'Wurtzbach', 'Alonzo', '09415678925', 'pia.w@email.ph', 'Cagayan de Oro', '2026-03-10 16:10:05', NULL),
(30000326, 'Jericho', 'Rosales', 'Vibar', '09426789026', 'echo.r@email.ph', 'Bicol', '2026-03-12 08:33:55', '2026-04-02 10:05:12'),
(30000327, 'Heart', 'Evangelista', 'Ongpauco', '09437890127', 'heart.e@email.ph', 'Sorsogon', '2026-03-15 13:12:22', NULL),
(30000328, 'Nadine', 'Lustre', 'Alexis', '09448901228', 'nadine.l@email.ph', 'Quezon City', '2026-03-18 10:25:33', NULL),
(30000329, 'James', 'Reid', 'Robert', '09459012329', 'james.r@email.ph', 'Makati City', '2026-03-20 15:40:11', '2026-04-09 09:15:00'),
(30000330, 'Kim', 'Chiu', 'Kamille', '09460123430', 'kim.chiu@email.ph', 'Cebu', '2026-03-22 11:55:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `position` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `first_name`, `last_name`, `middle_name`, `position`, `phone`, `created_at`, `updated_at`) VALUES
(40000401, 'Robert', 'Duterye', 'Roa', 'Branch Manager', '09112223301', '2024-10-01 08:00:12', '2025-12-01 09:30:45'),
(40000402, 'Bong', 'Marcos', 'Romualdez', 'Senior Sales Agent', '09223334402', '2024-10-15 09:15:55', NULL),
(40000403, 'Leni', 'Robredo', 'Gerona', 'Account Specialist', '09334445503', '2024-11-01 10:20:30', '2026-01-10 14:15:22'),
(40000404, 'Risa', 'Hontiveros', 'Baraquel', 'Junior Sales Agent', '09445556604', '2024-11-15 11:10:45', NULL),
(40000405, 'Robin', 'Padilla', 'Cariño', 'Finance Officer', '09556667705', '2024-12-01 08:45:10', '2025-08-15 10:00:00'),
(40000406, 'Grace', 'Poe', 'Llamanzares', 'Sales Consultant', '09661112206', '2024-12-05 09:00:00', NULL),
(40000407, 'Nancy', 'Binay', 'Angeles', 'Customer Service', '09661112207', '2024-12-10 14:33:12', NULL),
(40000408, 'Alan', 'Cayetano', 'Peter', 'Senior Agent', '09661112208', '2024-12-15 10:11:55', '2026-02-01 13:00:11'),
(40000409, 'Pia', 'Cayetano', 'Schramm', 'Sales Agent', '09661112209', '2025-01-05 08:22:45', NULL),
(40000410, 'Jinggoy', 'Estrada', 'Ejercito', 'Marketing Lead', '09661112210', '2025-01-10 15:40:11', '2026-03-12 11:22:05'),
(40000411, 'Bato', 'Dela Rosa', 'Ronald', 'Security Supervisor', '09661112211', '2025-01-15 11:10:22', NULL),
(40000412, 'Bong', 'Go', 'Christopher', 'Agent Assistant', '09661112212', '2025-01-20 09:33:55', NULL),
(40000413, 'Imee', 'Marcos', 'Romualdez', 'Contract Specialist', '09661112213', '2025-02-01 14:20:10', '2026-04-05 10:45:12'),
(40000414, 'Migz', 'Zubiri', 'Juan', 'Sales Consultant', '09661112214', '2025-02-05 10:55:30', NULL),
(40000415, 'Joel', 'Villanueva', 'Tesdaman', 'Training Manager', '09661112215', '2025-02-10 16:12:44', '2026-01-15 09:11:33'),
(40000416, 'Francis', 'Tolentino', 'Nolasco', 'Legal Officer', '09661112216', '2025-02-15 08:33:55', NULL),
(40000417, 'Lito', 'Lapid', 'Manuel', 'Senior Agent', '09661112217', '2025-02-20 13:12:22', '2026-03-25 15:40:11'),
(40000418, 'Cynthia', 'Villar', 'Aguilar', 'Real Estate Liaison', '09661112218', '2025-02-25 10:25:33', NULL),
(40000419, 'Mark', 'Villar', 'Aguilar', 'Junior Agent', '09661112219', '2025-03-01 15:40:11', NULL),
(40000420, 'Koko', 'Pimentel', 'Aquilino', 'Compliance Officer', '09661112220', '2025-03-05 11:55:45', '2026-04-02 08:15:22'),
(40000421, 'Ramon', 'Revilla', 'Bong', 'Sales Specialist', '09661112221', '2025-03-10 09:22:45', NULL),
(40000422, 'Win', 'Gatchalian', 'Sherwin', 'Finance Manager', '09661112222', '2025-03-15 14:11:05', '2026-02-10 11:30:55'),
(40000423, 'JV', 'Ejercito', 'Estrada', 'Sales Agent', '09661112223', '2025-03-20 10:30:25', NULL),
(40000424, 'Raffy', 'Tulfo', 'Teshiba', 'Public Relations', '09661112224', '2025-03-25 15:12:30', '2026-04-09 13:40:02'),
(40000425, 'Chiz', 'Escudero', 'Francis', 'Senior Consultant', '09661112225', '2025-03-30 08:55:01', NULL),
(40000426, 'Loren', 'Legarda', 'Regina', 'Environmental Officer', '09661112226', '2025-04-01 14:20:18', '2026-03-10 10:30:25'),
(40000427, 'Antonio', 'Trillanes', 'Fuentes', 'Sales Agent', '09661112227', '2025-04-05 10:30:25', NULL),
(40000428, 'Dick', 'Gordon', 'Richard', 'Logistic Head', '09661112228', '2025-04-10 15:12:30', '2026-04-01 09:55:01'),
(40000429, 'Bam', 'Aquino', 'Paolo', 'Digital Sales', '09661112229', '2025-04-15 08:55:01', NULL),
(40000430, 'Chel', 'Diokno', 'Jose', 'Legal Liaison', '09661112230', '2025-04-20 14:20:18', '2026-04-10 14:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `financing`
--

CREATE TABLE `financing` (
  `financing_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `months_to_pay` int(11) NOT NULL,
  `downpayment` decimal(12,2) DEFAULT NULL,
  `interest_rate` decimal(12,2) NOT NULL,
  `loan_amount` decimal(12,2) DEFAULT NULL,
  `monthly_payment` decimal(12,2) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `contract_date` datetime NOT NULL,
  `remarks_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financing`
--

INSERT INTO `financing` (`financing_id`, `sale_id`, `months_to_pay`, `downpayment`, `interest_rate`, `loan_amount`, `monthly_payment`, `start_date`, `end_date`, `contract_date`, `remarks_update`) VALUES
(70000701, 60000601, 36, 190000.00, 5.00, 760000.00, 22166.67, '2026-03-15', '2029-03-15', '2026-03-01 10:30:11', '2026-03-15 09:12:44'),
(70000702, 60000602, 48, 230000.00, 6.20, 920000.00, 20355.00, '2026-04-01', '2030-04-01', '2026-03-05 14:45:55', '2026-04-01 11:20:05'),
(70000703, 60000603, 24, 390000.00, 4.50, 1560000.00, 67925.00, '2026-04-05', '2028-04-05', '2026-03-08 10:15:33', '2026-04-05 13:44:12'),
(70000704, 60000604, 60, 340000.00, 7.50, 1360000.00, 24366.67, '2026-04-10', '2031-04-10', '2026-03-10 11:55:44', '2026-04-10 08:33:55'),
(70000705, 60000605, 36, 330000.00, 5.00, 1320000.00, 38500.00, '2026-04-12', '2029-04-12', '2026-03-12 13:40:11', '2026-04-12 10:15:22'),
(70000706, 60000606, 48, 144000.00, 6.00, 576000.00, 12720.00, '2026-04-15', '2030-04-15', '2026-03-15 10:30:25', '2026-04-15 14:11:00'),
(70000707, 60000607, 12, 420000.00, 3.20, 1680000.00, 144480.00, '2026-04-18', '2027-04-18', '2026-03-18 16:12:44', '2026-04-18 08:45:10'),
(70000708, 60000608, 24, 196000.00, 4.00, 784000.00, 33973.33, '2026-04-20', '2028-04-20', '2026-03-20 09:45:12', '2026-04-20 11:33:55'),
(70000709, 60000609, 60, 210000.00, 7.00, 840000.00, 14980.00, '2026-04-22', '2031-04-22', '2026-03-22 11:10:22', '2026-04-22 13:22:05'),
(70000710, 60000610, 36, 250000.00, 5.00, 1000000.00, 29166.67, '2026-04-25', '2029-04-25', '2026-03-25 08:45:10', '2026-04-25 15:40:11'),
(70000711, 60000611, 48, 164000.00, 6.50, 656000.00, 14555.00, '2026-04-28', '2030-04-28', '2026-03-28 10:40:11', '2026-04-28 09:15:33'),
(70000712, 60000612, 24, 220000.00, 4.20, 880000.00, 38206.67, '2026-04-30', '2028-04-30', '2026-03-30 12:15:55', '2026-04-30 14:20:10'),
(70000713, 60000613, 36, 192000.00, 5.50, 768000.00, 22506.67, '2026-05-01', '2029-05-01', '2026-04-01 14:33:12', '2026-05-01 10:11:55'),
(70000714, 60000614, 60, 364000.00, 7.80, 1456000.00, 26159.47, '2026-05-02', '2031-05-02', '2026-04-02 15:10:45', '2026-05-02 16:45:12'),
(70000715, 60000615, 48, 134000.00, 6.00, 536000.00, 11836.67, '2026-05-03', '2030-05-03', '2026-04-03 14:30:25', '2026-05-03 11:22:45'),
(70000716, 60000616, 36, 236000.00, 5.20, 944000.00, 27585.78, '2026-05-04', '2029-05-04', '2026-04-04 15:40:11', '2026-05-04 09:33:55'),
(70000717, 60000617, 12, 316000.00, 3.50, 1264000.00, 109020.00, '2026-05-05', '2027-05-05', '2026-04-05 14:11:05', '2026-05-05 13:12:05'),
(70000718, 60000618, 24, 316000.00, 4.80, 1264000.00, 55194.67, '2026-05-06', '2028-05-06', '2026-04-06 09:12:33', '2026-05-06 15:55:30'),
(70000719, 60000619, 60, 750000.00, 7.20, 3000000.00, 53600.00, '2026-05-07', '2031-05-07', '2026-04-07 10:05:44', '2026-05-07 11:40:12'),
(70000720, 60000620, 36, 336000.00, 5.10, 1344000.00, 39237.33, '2026-05-08', '2029-05-08', '2026-04-08 08:33:55', '2026-05-08 14:44:12'),
(70000721, 60000621, 48, 148000.00, 6.40, 592000.00, 13122.67, '2026-05-08', '2030-05-08', '2026-04-08 14:20:18', '2026-05-08 10:15:55'),
(70000722, 60000622, 24, 199000.00, 4.40, 796000.00, 34626.00, '2026-05-09', '2028-05-09', '2026-04-09 08:45:10', '2026-05-09 11:22:10'),
(70000723, 60000623, 36, 172000.00, 5.30, 688000.00, 20124.00, '2026-05-09', '2029-05-09', '2026-04-09 11:40:12', '2026-05-09 16:10:05'),
(70000724, 60000624, 60, 256000.00, 7.10, 1024000.00, 18278.40, '2026-05-10', '2031-05-10', '2026-04-10 14:30:25', '2026-05-10 08:33:55'),
(70000725, 60000625, 48, 168000.00, 6.60, 672000.00, 14924.00, '2026-05-10', '2030-05-10', '2026-04-10 16:15:33', '2026-05-10 13:12:22'),
(70000726, 60000626, 24, 224000.00, 4.90, 896000.00, 39162.67, '2026-05-11', '2028-05-11', '2026-04-11 13:40:11', '2026-05-11 10:25:33'),
(70000727, 60000627, 36, 132000.00, 5.80, 528000.00, 15517.33, '2026-05-11', '2029-05-11', '2026-04-11 15:12:30', '2026-05-11 15:40:11'),
(70000728, 60000628, 60, 244000.00, 7.40, 976000.00, 17470.40, '2026-05-12', '2031-05-12', '2026-04-12 09:30:45', '2026-05-12 09:22:45'),
(70000729, 60000629, 36, 312000.00, 5.20, 1248000.00, 36469.33, '2026-05-12', '2029-05-12', '2026-04-12 10:55:01', '2026-05-12 10:30:25'),
(70000730, 60000630, 48, 388000.00, 6.30, 1552000.00, 34370.33, '2026-05-13', '2030-05-13', '2026-04-13 08:22:15', '2026-05-13 08:55:01');

--
-- Triggers `financing`
--
DELIMITER $$
CREATE TRIGGER `before_financing_insert` BEFORE INSERT ON `financing` FOR EACH ROW BEGIN
    DECLARE v_sale_price DECIMAL(12,2);

    SELECT total_amount INTO v_sale_price 
    FROM sale 
    WHERE sale_id = NEW.sale_id;

    SET NEW.downpayment = v_sale_price * 0.20;

    SET NEW.loan_amount = v_sale_price - NEW.downpayment;

    SET NEW.monthly_payment = (NEW.loan_amount + (NEW.loan_amount * (NEW.interest_rate / 100))) / NEW.months_to_pay;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_financing_update` BEFORE UPDATE ON `financing` FOR EACH ROW BEGIN
    DECLARE v_sale_price DECIMAL(12,2);

    SELECT total_amount INTO v_sale_price 
    FROM sale 
    WHERE sale_id = NEW.sale_id;

    SET NEW.downpayment = v_sale_price * 0.20;

    SET NEW.loan_amount = v_sale_price - NEW.downpayment;

    SET NEW.monthly_payment = (NEW.loan_amount + (NEW.loan_amount * (NEW.interest_rate / 100))) / NEW.months_to_pay;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `model_id` int(11) NOT NULL,
  `model_name` varchar(50) NOT NULL,
  `vehicle_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`model_id`, `model_name`, `vehicle_type_id`) VALUES
(20000201, 'Vios', 10000101),
(20000202, 'Fortuner', 10000102),
(20000203, 'Wigo', 10000103),
(20000204, 'Hilux', 10000104),
(20000205, 'Innova', 10000105),
(20000206, 'Civic', 10000101),
(20000207, 'CR-V', 10000102),
(20000208, 'Hiace', 10000108),
(20000209, 'Mustang', 10000106),
(20000210, 'Terra', 10000102),
(20000211, 'Navara', 10000104),
(20000212, 'Mirage G4', 10000101),
(20000213, 'Montero Sport', 10000102),
(20000214, 'Ertiga', 10000105),
(20000215, 'Raize', 10000102),
(20000216, 'City', 10000101),
(20000217, 'BR-V', 10000102),
(20000218, 'Almira', 10000101),
(20000219, 'L300', 10000108),
(20000220, 'Rush', 10000102);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `payment_type` enum('full','downpayment','installment') DEFAULT NULL,
  `payment_method` enum('cash','bank','credit card') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `sale_id`, `payment_date`, `amount_paid`, `payment_type`, `payment_method`) VALUES
(80000801, 60000601, '2026-03-01', 950000.00, 'full', 'bank'),
(80000802, 60000602, '2026-03-05', 230000.00, 'downpayment', 'cash'),
(80000803, 60000603, '2026-03-08', 390000.00, 'downpayment', 'cash'),
(80000804, 60000604, '2026-03-10', 1700000.00, 'full', 'cash'),
(80000805, 60000605, '2026-03-12', 330000.00, 'downpayment', 'credit card'),
(80000806, 60000606, '2026-03-15', 720000.00, 'full', 'credit card'),
(80000807, 60000607, '2026-03-18', 420000.00, 'downpayment', 'bank'),
(80000808, 60000608, '2026-03-20', 980000.00, 'full', 'cash'),
(80000809, 60000609, '2026-03-22', 210000.00, 'downpayment', 'bank'),
(80000810, 60000610, '2026-03-25', 250000.00, 'downpayment', 'cash'),
(80000811, 60000611, '2026-03-28', 820000.00, 'full', 'cash'),
(80000812, 60000612, '2026-03-30', 220000.00, 'downpayment', 'credit card'),
(80000813, 60000613, '2026-04-01', 960000.00, 'full', 'credit card'),
(80000814, 60000614, '2026-04-02', 364000.00, 'downpayment', 'bank'),
(80000815, 60000615, '2026-04-03', 670000.00, 'full', 'cash'),
(80000816, 60000616, '2026-04-04', 236000.00, 'downpayment', 'bank'),
(80000817, 60000617, '2026-04-05', 1580000.00, 'full', 'cash'),
(80000818, 60000618, '2026-04-06', 316000.00, 'downpayment', 'cash'),
(80000819, 60000619, '2026-04-07', 3750000.00, 'full', 'credit card'),
(80000820, 60000620, '2026-04-08', 336000.00, 'downpayment', 'bank'),
(80000821, 60000621, '2026-04-08', 740000.00, 'full', 'cash'),
(80000822, 60000622, '2026-04-09', 199000.00, 'downpayment', 'bank'),
(80000823, 60000623, '2026-04-09', 860000.00, 'full', 'credit card'),
(80000824, 60000624, '2026-04-10', 256000.00, 'downpayment', 'cash'),
(80000825, 60000625, '2026-04-10', 840000.00, 'full', 'cash'),
(80000826, 60000626, '2026-04-11', 224000.00, 'downpayment', 'bank'),
(80000827, 60000627, '2026-04-11', 660000.00, 'full', 'credit card'),
(80000828, 60000628, '2026-04-12', 244000.00, 'downpayment', 'cash'),
(80000829, 60000629, '2026-04-12', 1560000.00, 'full', 'cash'),
(80000830, 60000630, '2026-04-13', 388000.00, 'downpayment', 'bank');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `sale_date` date NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `sale_type` enum('cash','financing') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`sale_id`, `car_id`, `customer_id`, `employee_id`, `sale_date`, `total_amount`, `sale_type`, `created_at`, `updated_at`) VALUES
(60000601, 50000501, 30000301, 40000402, '2026-03-01', 950000.00, 'cash', '2026-03-01 10:15:44', '2026-03-01 16:30:22'),
(60000602, 50000505, 30000302, 40000403, '2026-03-05', 1150000.00, 'financing', '2026-03-05 14:22:10', '2026-03-06 09:15:45'),
(60000603, 50000507, 30000303, 40000404, '2026-03-08', 1950000.00, 'financing', '2026-03-08 09:12:33', '2026-03-08 17:40:11'),
(60000604, 50000510, 30000304, 40000401, '2026-03-10', 1700000.00, 'cash', '2026-03-10 11:45:12', '2026-03-10 14:20:55'),
(60000605, 50000511, 30000305, 40000406, '2026-03-12', 1650000.00, 'financing', '2026-03-12 13:22:05', '2026-03-13 10:05:30'),
(60000606, 50000512, 30000306, 40000408, '2026-03-15', 720000.00, 'cash', '2026-03-15 10:11:55', '2026-03-15 11:55:22'),
(60000607, 50000513, 30000307, 40000410, '2026-03-18', 2100000.00, 'financing', '2026-03-18 15:40:11', '2026-03-19 08:30:44'),
(60000608, 50000514, 30000308, 40000412, '2026-03-20', 980000.00, 'cash', '2026-03-20 09:33:55', '2026-03-20 16:12:10'),
(60000609, 50000516, 30000309, 40000414, '2026-03-22', 1050000.00, 'financing', '2026-03-22 10:55:30', '2026-03-22 14:45:00'),
(60000610, 50000517, 30000310, 40000416, '2026-03-25', 1250000.00, 'financing', '2026-03-25 08:33:55', '2026-03-26 10:20:15'),
(60000611, 50000519, 30000311, 40000418, '2026-03-28', 820000.00, 'cash', '2026-03-28 10:25:33', '2026-03-28 15:10:44'),
(60000612, 50000520, 30000312, 40000420, '2026-03-30', 1100000.00, 'financing', '2026-03-30 11:55:45', '2026-03-31 09:40:12'),
(60000613, 50000521, 30000313, 40000422, '2026-04-01', 960000.00, 'cash', '2026-04-01 14:11:05', '2026-04-01 16:55:30'),
(60000614, 50000522, 30000314, 40000424, '2026-04-02', 1820000.00, 'financing', '2026-04-02 15:12:30', '2026-04-03 10:20:11'),
(60000615, 50000523, 30000315, 40000426, '2026-04-03', 670000.00, 'cash', '2026-04-03 14:20:18', '2026-04-03 17:33:05'),
(60000616, 50000525, 30000316, 40000428, '2026-04-04', 1180000.00, 'financing', '2026-04-04 15:12:30', '2026-04-05 08:45:12'),
(60000617, 50000526, 30000317, 40000430, '2026-04-05', 1580000.00, 'cash', '2026-04-05 14:20:18', '2026-04-05 16:10:44'),
(60000618, 50000528, 30000318, 40000402, '2026-04-06', 1580000.00, 'financing', '2026-04-06 09:15:55', '2026-04-07 11:22:30'),
(60000619, 50000529, 30000319, 40000403, '2026-04-07', 3750000.00, 'cash', '2026-04-07 10:20:30', '2026-04-07 14:55:01'),
(60000620, 50000531, 30000320, 40000405, '2026-04-08', 1680000.00, 'financing', '2026-04-08 08:45:10', '2026-04-09 10:15:33'),
(60000621, 50000532, 30000321, 40000407, '2026-04-08', 740000.00, 'cash', '2026-04-08 14:33:12', '2026-04-08 17:05:44'),
(60000622, 50000534, 30000322, 40000409, '2026-04-09', 995000.00, 'financing', '2026-04-09 08:22:45', '2026-04-10 09:11:12'),
(60000623, 50000535, 30000323, 40000411, '2026-04-09', 860000.00, 'cash', '2026-04-09 11:10:22', '2026-04-09 15:40:01'),
(60000624, 50000537, 30000324, 40000413, '2026-04-10', 1280000.00, 'financing', '2026-04-10 14:20:10', '2026-04-10 18:33:55'),
(60000625, 50000539, 30000325, 40000415, '2026-04-10', 840000.00, 'cash', '2026-04-10 16:12:44', '2026-04-11 08:22:45'),
(60000626, 50000540, 30000326, 40000417, '2026-04-11', 1120000.00, 'financing', '2026-04-11 13:12:22', '2026-04-12 10:15:33'),
(60000627, 50000543, 30000327, 40000419, '2026-04-11', 660000.00, 'cash', '2026-04-11 15:40:11', '2026-04-11 18:22:44'),
(60000628, 50000544, 30000328, 40000421, '2026-04-12', 1220000.00, 'financing', '2026-04-12 09:22:45', '2026-04-12 14:11:05'),
(60000629, 50000546, 30000329, 40000423, '2026-04-12', 1560000.00, 'cash', '2026-04-12 10:30:25', '2026-04-12 16:45:12'),
(60000630, 50000547, 30000330, 40000425, '2026-04-13', 1940000.00, 'financing', '2026-04-13 08:55:01', '2026-04-13 13:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `vehicle_type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`vehicle_type_id`, `type_name`) VALUES
(10000101, 'Sedan'),
(10000102, 'SUV'),
(10000103, 'Hatchback'),
(10000104, 'Pickup Truck'),
(10000105, 'MPV'),
(10000106, 'Coupe'),
(10000107, 'Convertible'),
(10000108, 'Van'),
(10000109, 'Wagon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `plate_number` (`plate_number`),
  ADD KEY `model_id` (`model_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `phone` (`phone`,`email`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `financing`
--
ALTER TABLE `financing`
  ADD PRIMARY KEY (`financing_id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`model_id`),
  ADD KEY `vehicle_type_id` (`vehicle_type_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`),
  ADD UNIQUE KEY `car_id` (`car_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`vehicle_type_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`);

--
-- Constraints for table `financing`
--
ALTER TABLE `financing`
  ADD CONSTRAINT `financing_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`sale_id`);

--
-- Constraints for table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_type` (`vehicle_type_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`sale_id`);

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`),
  ADD CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `sale_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
