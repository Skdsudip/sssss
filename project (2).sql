-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 11:05 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(45) NOT NULL,
  `Company_name` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `Company_name`, `logo`) VALUES
(11, 'Gray', 'Gray', NULL),
(12, 'Range', 'Range', ''),
(13, 'Singer', 'Singer', ''),
(14, 'Toshiba', 'Toshiba', ''),
(15, 'test', 'test', '4efdd2f969559e8b1c92e99f32ded48e.jpg'),
(16, 'test2', 'test2', '2de40e0d504f583cda7465979f958a98.jpg'),
(17, 'ss', 'ss', '4efdd2f969559e8b1c92e99f32ded48e.jpg'),
(18, 'ff', 'f', '4efdd2f969559e8b1c92e99f32ded48e.jpg'),
(19, 'tt', 'tt', '3fb5ed13afe8714a7e5d13ee506003dd.jpg'),
(20, 'ff', 'ff', '3fb5ed13afe8714a7e5d13ee506003dd.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `insert_date` date DEFAULT NULL,
  `cartcol` varchar(45) DEFAULT NULL,
  `sku` varchar(45) DEFAULT '0',
  `price` float DEFAULT 0,
  `wo_com` int(11) DEFAULT 0,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cart_item_detais`
--

CREATE TABLE `cart_item_detais` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `insert_date` int(11) DEFAULT NULL,
  `prod_sale_price` int(11) DEFAULT NULL,
  `feature_image` varchar(45) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `produ_sale_price` varchar(45) CHARACTER SET armscii8 DEFAULT NULL,
  `service_name` varchar(45) DEFAULT NULL,
  `ser_img` varchar(45) DEFAULT NULL,
  `ser_costing` int(11) DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_item_detais`
--

INSERT INTO `cart_item_detais` (`id`, `cart_id`, `product_id`, `user_id`, `qty`, `insert_date`, `prod_sale_price`, `feature_image`, `vendor_id`, `produ_sale_price`, `service_name`, `ser_img`, `ser_costing`, `product_name`) VALUES
(0, 7, 3, 1, 1, 20220724, 20500, '9c9631977871e7b171ab46a7aa3841c0.jpg', NULL, '20500', NULL, NULL, NULL, '3 Star Split Ac Indoor Unit, Coil Material: C'),
(0, 8, NULL, 1, 1, 20220724, NULL, NULL, NULL, NULL, 'Washing Machine Repair', '590b77224ddd453743717628b34fe352.jpg', 2000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `link` varchar(100) NOT NULL,
  `menuID` int(11) DEFAULT NULL,
  `com_type` varchar(20) DEFAULT NULL,
  `com_value` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `img_logo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `title`, `parent`, `link`, `menuID`, `com_type`, `com_value`, `active`, `img_logo`) VALUES
(1, 'AC', 'AC', 0, '#', 1, NULL, NULL, 1, NULL),
(2, 'Washing Machine', 'Washing Machine', 0, '#', 1, NULL, NULL, 1, NULL),
(3, 'Refrigerator', 'Refrigerator', 0, '#', 1, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` bigint(20) NOT NULL,
  `product_Id` bigint(20) NOT NULL,
  `user_Id` bigint(20) NOT NULL,
  `sku` varchar(100) NOT NULL DEFAULT 'N',
  `price` float NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `quantity` smallint(6) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `content` text DEFAULT NULL,
  `wo_com` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `product_Id`, `user_Id`, `sku`, `price`, `discount`, `quantity`, `createdAt`, `updatedAt`, `content`, `wo_com`) VALUES
(1, 0, 1, 'N', 20300, 0, 3, '0000-00-00 00:00:00', NULL, NULL, NULL),
(2, 0, 1, 'N', 20500, 0, 2, '0000-00-00 00:00:00', NULL, NULL, NULL),
(3, 0, 1, 'N', 20500, 0, 2, '0000-00-00 00:00:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `short_desc` longtext DEFAULT NULL,
  `long_desc` longtext DEFAULT NULL,
  `reg_price` int(32) DEFAULT NULL,
  `sale_price` int(33) DEFAULT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `purchaseNote` varchar(150) DEFAULT NULL,
  `review_status` int(11) DEFAULT NULL,
  `comi_type` int(11) DEFAULT NULL,
  `comi_value` int(11) DEFAULT NULL,
  `slug` varchar(45) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `view_type` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `viewer` int(11) DEFAULT 0,
  `feature_image` varchar(100) DEFAULT NULL,
  `product_cat` int(8) NOT NULL,
  `status` int(11) DEFAULT 2,
  `insert_date` date DEFAULT NULL,
  `insert_by` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `t_stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `short_desc`, `long_desc`, `reg_price`, `sale_price`, `sku`, `brand_id`, `purchaseNote`, `review_status`, `comi_type`, `comi_value`, `slug`, `vendor_id`, `publish_date`, `view_type`, `tag_id`, `viewer`, `feature_image`, `product_cat`, `status`, `insert_date`, `insert_by`, `stock`, `t_stock`) VALUES
(1, 'VISION AC 2.0 ton CTPCI Inverter WI-FI (3D)', 'Voice control Wi-fi control\r\nDual-inverter AC +\r\nBipolar ionic generator CFC free refrigerant +\r\nTitan Gold Fin + \r\nInner groove copper tube +\r\nRust free motor & Low noise + \r\nHigh precision compressor Dual motor Compressor.', 'Function: Inverter Cooling Capacity (Ton): 2 ton Capacity (Btu/h): 24000 BTU/h\r\nWI-FI (available/not available): Available\r\n3D (Yes/No): Yes\r\nType: Split Rated cooling  power input (watt):2232(350~2450)W\r\nVoltage range: 165~265V\r\nFrequency (Hz): 50 Hz\r\nDisplay Type: Hidden Display Indoor Noise: 48 dB\r\nOutdoor Noise: 57 dB\r\nSleep Mode Timer (Yes/No): Yes\r\nCompressor Brand: GMCC Compressor Type: Rotary\r\nRefrigerant: R410a\r\nIndoor size (Net Dimensions-W*D*H):1100×333×222mm\r\nIndoor net weight (kg): 14 Kg\r\nOutdoor size (Net Dimensions-W*D*H):920×380×699 mm\r\nOutdoor net weight (kg): 36 Kg Inverter (Yes/No): Yes\r\nRemote Control (Yes/No): Yes\r\nCondenser Coil (material): Copper tube Dust Filter (Yes/No): Yes\r\nPackage Includes: Remote, Warranty card, Guaranty card & Connecting accessories\r\nColour: White (As given picture).', 77000, 76500, 'ES5001', 0, NULL, NULL, NULL, NULL, 'VISION AC 2.0 ton CTPCI Inverter WI-FI (3D)', NULL, '2022-06-10', NULL, NULL, 0, '30e62fddc14c05988b44e7c02788e187.jpg', 1, 1, '2022-06-10', 1, 10, 20),
(2, 'RE Air Conditioner Outdoor Unit, Capacity: 2 Tr', 'Usage/Application > Outdoor , \r\nBrand > RE Tech , \r\nCapacity	>2 TR ,\r\nVoltage  >220 VDC ,\r\nPower Source  > Electric ,\r\nPower >200 W ', 'Outdoor Kit Customizable for Diverse Cooling Applications.\r\nHigh Quality Marathon Fan Motors for low noise and better efficiencies*\r\nEquipped with Refrigeration Flow Controls*\r\nFully loaded with Schneider Electrical', 19000, 18500, 'ES5002', 0, NULL, NULL, NULL, NULL, 'RE Air Conditioner Outdoor Unit, Capacity: 2 ', NULL, '2022-06-10', NULL, NULL, 0, 'e343759c5f395f4a748cdc44923e7b31.jpg', 1, 1, '2022-06-10', 0, 10, 20),
(3, '3 Star Split Ac Indoor Unit, Coil Material: Copper', 'Type	Split AC\r\nBrand	Totaline (carrier)\r\nStar Rating > 3 Star , \r\nModel Name/Number	 > 1.5 Ton, \r\nCoil Material	> Copper , \r\nPower Supply Type >  ALTERNATIVE CURRENT\r\nCondenser Type > HIGH QUALITY SILVER FINN WITH COPPER', 'Our offered array consists of Split AC, Cassette AC, Ducted AC, VRV AC, VRF AC, Central Air Conditioner, Window Air Conditioner, Air Conditioner Outdoor Unit,etc.. Our offered range is manufactured and designed using quality assured components and ultra modern technology in tandem with industry set quality parameters and guidelines. Available in varied sizes and models as per the needs and demands of our customers, these products also can be customized as per the specifications of our clients. In addition to this, these offered products are provided at customers end within postulated time frame.', 21000, 20500, 'ES5003', 0, NULL, NULL, NULL, NULL, '3 Star Split Ac Indoor Unit, Coil Material: C', NULL, '2022-06-10', NULL, NULL, 0, '9c9631977871e7b171ab46a7aa3841c0.jpg', 1, 1, '2022-06-10', 1, 10, 20),
(4, 'SPORON BRASS Electronic Expansion Valve', 'Material  > BRASS ;\r\nBrand > SPORON ;  \r\nMinimum Order Quantity > 1 . ', 'The electronic expansion valve (EEV) operates with a much more sophisticated design. EEVs control the flow of refrigerant entering a direct expansion evaporator. They do this in response to signals sent to them by an electronic controller. A small motor is used to open and close the valve port', 5000, 4800, 'ES5004', 0, NULL, NULL, NULL, NULL, 'SPORON BRASS Electronic Expansion Valve', NULL, '2022-06-10', NULL, NULL, 0, '4e506140be39ef0eab4807f4ce759c44.jpg', 1, 1, '2022-06-10', 1, 10, 20),
(5, 'Air Conditioning Compressor', 'Phase > Dual Phase ;\r\nCurrent > 9.4 A ; \r\nVoltage > 380 V ;\r\nFrequency Range > 60 - 180 Hz ;\r\nMinimum Order Quantity	> 5 . ', 'The compressor is housed within the condenser unit and the component that starts the chain reaction cools the refrigerant. It should be noted that heat moves toward cooler areas. When the room temperature air passes through the evaporator unit, heat is eliminated from the air. The heat from the air passes along to the refrigerant, which is then fed into the compressor.\r\n\r\nThe refrigerant is then compressed, which condenses into a fluid, and is then released under pressure. At this point, the refrigerant is much hotter than when it came in, but the heat is then dissipated through the condenser coils. By the time it reaches the end of the loop, the refrigerant is cold again and fed into the evaporator coils. This cycle continues as long as the air conditioner is turned on. Certain HVAC systems feature compressors that reverse the process, the output becomes hot air instead of cold.', 21000, 20500, 'ES5005', 0, NULL, NULL, NULL, NULL, 'Air Conditioning Compressor', NULL, '2022-06-10', NULL, NULL, 0, 'f6d2006735f406807550a55f1df152bd.jpg', 1, 1, '2022-06-10', 1, 10, 20),
(6, 'Whirlpool Whitemagic Elite plus 6.5 Kg Fully Autom', 'Brand > Whirlpool ;\r\nCapacity(Kg)  > 7 Kg ; \r\nFunction Type > Fully Automatic ; \r\nLoading Type  > Top Loading ; \r\nModel Name/Number >  WMPRM7G ;\r\nColor > Black .', 'Basic Features\r\n\r\nIn Built Heater\r\n12 Wash programme\r\nHard water wash\r\nExpress Wash Technology\r\nZero Pressure fill technology\r\n99.9% germs & allergens free wash\r\nAdditional Features\r\n\r\nCustomised Care for Fabrics with 3 Hot Water Modes - Warm, Hot, Allergen Free, Sanitize Your Clothes with Certified Anti-bacterial Wash Cycle 5 Star Rated Washing Machine that Save More than 2 Buckets of Water with Every Wash', 16000, 15500, 'ES5006', 0, NULL, NULL, NULL, NULL, 'Whirlpool Whitemagic Elite plus 6.5 Kg Fully ', NULL, '2022-06-10', NULL, NULL, 0, '3b242ed2a9d8a848bdcd42bd5d41f0a3.jpg', 2, 1, '2022-06-10', 1, 10, 20),
(7, 'Aluminium Washing Machine Water Drain Pump univers', 'Brand > Universal all brand ; \r\nUsage/Application > Washing Machine ;\r\n Type  >  Aluminium ;\r\nPhase >  Single Phase ; ', ' We pride ourself on being a one stop shop that is able to meet all of our client’s needs. Our goal is to provide the highest quality design and installation services, on schedule, and on budget along with outstanding customer service.We understand that time and cost are crucial so we strive to go above and beyond our client’s expectations. For our customers peace of mind, we offer valuable money saving service and maintenance contracts.', 1300, 1250, 'ES5007', 0, NULL, NULL, NULL, NULL, 'Aluminium Washing Machine Water Drain Pump un', NULL, '2022-06-10', NULL, NULL, 0, '91d68a59c705ca2b6de1ff71cdb258d9.jpg', 2, 1, '2022-06-10', 1, 10, 20),
(8, 'Washing Machine Motor', 'Country of Origin	> Made in India  ; \r\nMaterial	> Cast  Iron ; \r\nFinishing > Polished ; \r\nVoltage > 120 V ; \r\nSupply Source > AC ; \r\nFrequency > 50 Hz ; \r\nSpeed (Rpm) > 1400 rpm ; \r\nPower (Watts or HP) > 2 hp ; \r\nMinimum Order Quantity > 5 Piece ', 'We pride ourself on being a one stop shop that is able to meet all of our client’s needs. Our goal is to provide the highest quality design and installation services, on schedule, and on budget along with outstanding customer service.We understand that time and cost are crucial so we strive to go above and beyond our client’s expectations. For our customers peace of mind, we offer valuable money saving service and maintenance contracts.', 1500, 1450, 'ES5008', 0, NULL, NULL, NULL, NULL, 'Washing Machine Motor', NULL, '2022-06-10', NULL, NULL, 0, '28d958bc8c79e39ff74820db6ec09c4f.jpg', 2, 1, '2022-06-10', 1, 10, 20),
(9, 'Hoshizaki 2 Door Vertical Refrigerator, Capacity: ', 'Brand > Hoshizaki ;\r\nCapacity	 > 1200 Ltr ; \r\nDoor Types > Double Door ; \r\nBody Material > Stainless Steel ;\r\nWarranty > 1 Year ; \r\nMinimum Order Quantity > 1  ', 'Highly appreciated in the market for their perfect finish and exact designs, our provided collection of products includes Refrigeration Equipment, Commercial Kitchen Equipment, Bakery Equipment, Exhaust Hood With Filter along with this we provide Kitchen Consulting Services, or many more to our respected customers. Developed and manufactured making use of supreme quality basic material, our provided collection of products is quality tested on various parameters to ensure their optimum quality standards. The basic material which we are utilizing in the manufacturing process of this product is obtained from highly reliable and genuine vendors of the market. These offered goods are highly valued among our privileged patrons for their amazing attributes. Furthermore, the offered collection of assortment can be taken in a variety of stipulations at highly inexpensive prices.', 60000, 55000, 'ES5009', 0, NULL, NULL, NULL, NULL, 'Hoshizaki 2 Door Vertical Refrigerator, Capac', NULL, '2022-06-10', NULL, NULL, 0, '18e2999891374a475d0687ca9f989d83.jpg', 3, 1, '2022-06-10', 1, 10, 20),
(10, 'Copeland Compressor', 'Size of Receiver > Standard ;\r\nCondition > New . ', 'Backed by team of professionals, we have been able to offer our clients with Reconditioned Compressor of various Brands. These compressors are disassembled, tested thoroughly and re-assembled after required replacement of parts. These products are widely appreciated for their durability, resistance against corrosion and smooth finish. Our valued clients can avail these products in different sizes and specifications that can be further customized as per their requirement.', 4000, 3800, 'ES5010', 0, NULL, NULL, NULL, NULL, 'Copeland Compressor', NULL, '2022-06-10', NULL, NULL, 0, 'd0096ec6c83575373e3a21d129ff8fef.jpg', 3, 1, '2022-06-10', 1, 10, 20),
(11, 'Radiator manual Air Heat Exchanger, for Industrial', 'Type > air cooled ;\r\nMaterial  > all ;\r\nSize > any ;\r\nCooler Type > air & oil,steam ; \r\nCoil Type > radiator ; \r\nInstallation Type	 > manual ; ', 'Being amongst the renowned organizations, we have indulged ourselves in offering an accurately designed array of Air Heat Exchanger. These Air Heat Exchangers are widely used in the industry for drying and sealing applications. These are manufactured incorporating superior quality material; these are acclaimed among customers for their matchless attributes. We incorporated latest techniques, which have helped us remaining in pace with the growing industrial developments.\r\n\r\nFeatures:\r\n-Superior functionality\r\n-Sturdy construction\r\n-Quality product\r\n \r\nAdditional Information :\r\nDelivery Time  > immitiate;\r\nProduction Capacity > 10 ;\r\nPackaging Details	 > wooden case or door delivery', 2600, 2500, 'ES5011', 0, NULL, NULL, NULL, NULL, 'Radiator manual Air Heat Exchanger, for Indus', NULL, '2022-06-10', NULL, NULL, 0, '156005c5baf40ff51a327f1c34f2975b.jpg', 3, 1, '2022-06-10', 1, 10, 20);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `ser_type` varchar(45) DEFAULT NULL,
  `service_name` varchar(45) DEFAULT NULL,
  `costing` int(11) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `insertdate` varchar(45) DEFAULT NULL,
  `desc` varchar(80) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `ser_type`, `service_name`, `costing`, `img`, `userId`, `insertdate`, `desc`, `status`) VALUES
(1, '1', 'Ac Servicing', 1500, '', 1, '2022-07-16 09:20:49', 'Good Quality Parts', 1),
(2, '2', 'Washing Machine Repair', 2000, '590b77224ddd453743717628b34fe352.jpg', 1, '2022-07-16 09:26:55', 'Good', 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_cart`
--

CREATE TABLE `service_cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `insert_date` date DEFAULT NULL,
  `cartcol` varchar(45) DEFAULT NULL,
  `sku` varchar(45) DEFAULT '0',
  `price` float DEFAULT 0,
  `wo_com` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_category`
--

CREATE TABLE `service_category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `link` varchar(100) NOT NULL,
  `menuID` int(11) DEFAULT NULL,
  `com_type` varchar(20) DEFAULT NULL,
  `com_value` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `img_logo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_category`
--

INSERT INTO `service_category` (`id`, `name`, `title`, `parent`, `link`, `menuID`, `com_type`, `com_value`, `active`, `img_logo`) VALUES
(1, 'AC', 'AC', 0, '#', 2, NULL, NULL, 1, NULL),
(2, 'Washing Machine', 'Washing Machine', 0, '#', 2, NULL, NULL, 1, NULL),
(3, 'Refrigerator', 'Refrigerator', 0, '#', 2, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shiping_address`
--

CREATE TABLE `shiping_address` (
  `id` int(11) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  `insertby` varchar(45) DEFAULT NULL,
  `insert_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shiping_address`
--

INSERT INTO `shiping_address` (`id`, `fname`, `lname`, `email`, `address`, `country`, `area`, `payment`, `insertby`, `insert_date`) VALUES
(1, ' Khandokar', 'Ahad', '', 'Gazipur\r\nbd', 'Bangladesh', 'Khagan', 'Cash On Delevary (COD)', '1', NULL),
(2, ' Khandokar', 'Ahad', '', 'Gazipur\r\nbd', 'Bangladesh', 'Khagan', 'Cash On Delevary (COD)', '1', NULL),
(3, ' Khandokar', 'Ahad', '', 'Gazipur\r\nbd', 'Bangladesh', 'Khagan', 'Cash On Delevary (COD)', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(9) UNSIGNED NOT NULL,
  `email` varchar(35) DEFAULT 'na@example.com',
  `mobile` varchar(35) DEFAULT NULL,
  `transaction` varchar(35) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `name` varchar(35) DEFAULT NULL,
  `pen_name` varchar(35) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `blood` varchar(20) DEFAULT NULL,
  `birth_date` varchar(100) DEFAULT NULL,
  `photo` varchar(300) DEFAULT NULL,
  `address_one` text DEFAULT NULL,
  `address_two` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `verification_id_no` varchar(100) DEFAULT NULL,
  `verification_type` varchar(100) DEFAULT NULL,
  `user_type` int(25) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` int(25) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `status` tinyint(2) DEFAULT 0,
  `post_ap_status` int(11) NOT NULL DEFAULT 0,
  `confirm_password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `email`, `mobile`, `transaction`, `password`, `name`, `pen_name`, `sex`, `blood`, `birth_date`, `photo`, `address_one`, `address_two`, `city`, `state`, `country`, `zip`, `verification_id_no`, `verification_type`, `user_type`, `login_time`, `logout_time`, `ip`, `status`, `post_ap_status`, `confirm_password`) VALUES
(1, 'khandokarahad316@gmail.com', '01988134127', '', '123', 'Khandokar Ahad', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-05-11 14:21:37', NULL, NULL, 1, 0, NULL),
(2, 'khandokarsabuj316@gmail.com', '01784227227', '', '00123', 'Khandokar Sabuj', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-05-11 14:22:45', NULL, NULL, 1, 0, NULL),
(3, '', '01787163545', '', '112233', 'Ahad', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-06-09 10:05:22', NULL, NULL, 1, 0, NULL),
(4, 'skdsudipdas007@gmail.com', '01784005565', '', '123456', 'sudip ', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2022-06-10 23:24:01', NULL, NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_cart_item`
-- (See below for the actual view)
--
CREATE TABLE `view_cart_item` (
`cart_id` int(11)
,`product_id` int(11)
,`user_id` int(11)
,`qty` int(11)
,`insert_date` date
,`sale_price` int(33)
,`product_name` varchar(50)
,`feature_image` varchar(100)
,`vendor_id` int(11)
,`total_price` bigint(43)
,`service_name` varchar(45)
,`service_img` varchar(45)
,`Ser_total_price` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_product_detail`
-- (See below for the actual view)
--
CREATE TABLE `view_product_detail` (
`product_id` int(11)
,`product_name` varchar(50)
,`short_desc` longtext
,`long_desc` longtext
,`brand_id` int(11)
,`purchaseNote` varchar(150)
,`review_status` int(11)
,`slug` varchar(45)
,`vendor_id` int(11)
,`publish_date` date
,`view_type` int(11)
,`tag_id` int(11)
,`viewer` int(11)
,`feature_image` varchar(100)
,`reg_price` int(32)
,`sale_price` int(33)
,`sku` varchar(50)
,`stock` int(11)
,`status` int(11)
,`t_stock` int(11)
,`insert_date` date
,`insert_by` int(11)
,`brand_name` varchar(45)
,`Company_name` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `view_cart_item`
--
DROP TABLE IF EXISTS `view_cart_item`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_cart_item`  AS SELECT `cart`.`cart_id` AS `cart_id`, `cart`.`product_id` AS `product_id`, `cart`.`user_id` AS `user_id`, `cart`.`qty` AS `qty`, `cart`.`insert_date` AS `insert_date`, `view_product_detail`.`sale_price` AS `sale_price`, `view_product_detail`.`product_name` AS `product_name`, `view_product_detail`.`feature_image` AS `feature_image`, `view_product_detail`.`vendor_id` AS `vendor_id`, `view_product_detail`.`sale_price`* `cart`.`qty` AS `total_price`, `service`.`service_name` AS `service_name`, `service`.`img` AS `service_img`, `service`.`costing`* `cart`.`qty` AS `Ser_total_price` FROM ((`cart` left join `view_product_detail` on(`view_product_detail`.`product_id` = `cart`.`product_id`)) left join `service` on(`service`.`id` = `cart`.`service_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_product_detail`
--
DROP TABLE IF EXISTS `view_product_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_product_detail`  AS SELECT `product`.`product_id` AS `product_id`, `product`.`product_name` AS `product_name`, `product`.`short_desc` AS `short_desc`, `product`.`long_desc` AS `long_desc`, `product`.`brand_id` AS `brand_id`, `product`.`purchaseNote` AS `purchaseNote`, `product`.`review_status` AS `review_status`, `product`.`slug` AS `slug`, `product`.`vendor_id` AS `vendor_id`, `product`.`publish_date` AS `publish_date`, `product`.`view_type` AS `view_type`, `product`.`tag_id` AS `tag_id`, `product`.`viewer` AS `viewer`, `product`.`feature_image` AS `feature_image`, `product`.`reg_price` AS `reg_price`, `product`.`sale_price` AS `sale_price`, `product`.`sku` AS `sku`, `product`.`stock` AS `stock`, `product`.`status` AS `status`, `product`.`t_stock` AS `t_stock`, `product`.`insert_date` AS `insert_date`, `product`.`insert_by` AS `insert_by`, `brand`.`brand_name` AS `brand_name`, `brand`.`Company_name` AS `Company_name` FROM (`product` left join `brand` on(`product`.`brand_id` = `brand`.`brand_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_cart`
--
ALTER TABLE `service_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `service_category`
--
ALTER TABLE `service_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shiping_address`
--
ALTER TABLE `shiping_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile_UNIQUE` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_cart`
--
ALTER TABLE `service_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_category`
--
ALTER TABLE `service_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shiping_address`
--
ALTER TABLE `shiping_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
