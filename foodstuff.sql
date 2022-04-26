-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2020 at 06:06 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodstuff`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `A_username` varchar(200) NOT NULL,
  `A_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`A_username`, `A_password`) VALUES
('foodstuff', 'ideasdohere');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(200) NOT NULL,
  `p_id` int(200) NOT NULL,
  `c_id` int(200) NOT NULL,
  `v_email` varchar(2000) NOT NULL,
  `qty` int(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `p_id`, `c_id`, `v_email`, `qty`) VALUES
(74, 26, 11, 'ritik@gmail.com', 1),
(75, 228, 36, 'Product From FOODSTUFF', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(200) NOT NULL,
  `cat_title` varchar(2000) NOT NULL,
  `cat_desc` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(2, 'milk', 0),
(3, 'butters', 0),
(4, 'juice', 0),
(5, 'sweets', 0),
(6, 'ice-cream', 0),
(8, 'curds', 0),
(9, 'bakery', 0),
(10, 'vegetable', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `cont_id` int(200) NOT NULL,
  `f_name` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cont_id`, `f_name`, `phone`, `email`, `message`) VALUES
(7, 'Divya', '6201255655', 'divya@gmail.com', 'Hlo!'),
(9, 'Richa jha', '87094674', 'richa@gmail.com', 'Hi I want To buy ur products.'),
(10, 'sneha', '748392018', 'sneha@gmail.com', 'hlo ! awsome service');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `c_id` int(200) unsigned NOT NULL,
  `cstr` varchar(500) NOT NULL DEFAULT 'FDSTF_CID0',
  `c_code` varchar(500) DEFAULT '0',
  `c_f_name` varchar(200) NOT NULL,
  `c_L_name` varchar(200) NOT NULL,
  `c_gen` char(10) NOT NULL,
  `c_age` int(5) NOT NULL,
  `c_phn` bigint(11) NOT NULL,
  `c_add` text NOT NULL,
  `c_city` varchar(200) NOT NULL,
  `c_state` varchar(200) NOT NULL,
  `c_pin` int(10) unsigned NOT NULL,
  `c_email` varchar(2000) NOT NULL,
  `c_img` varchar(3000) DEFAULT 'profile.png',
  `c_pass` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `cstr`, `c_code`, `c_f_name`, `c_L_name`, `c_gen`, `c_age`, `c_phn`, `c_add`, `c_city`, `c_state`, `c_pin`, `c_email`, `c_img`, `c_pass`) VALUES
(36, 'GKR_CID0', 'GKR_CID036', 'divya', 'jha', 'female', 20, 6201255655, 'teacher''s colony rajni chowk', 'purnea', 'Bihar', 854301, 'divya@gmail.com', 'Emma watson.jpg', '2b717289e448c4f616c987b953b8b84ebf538f87'),
(37, 'GKR_CID0', 'GKR_CID037', 'richa', 'jha', 'female', 22, 8709065342, 'rajni chowk', 'City', 'Bihar', 854301, 'richa@gmail.com', 'gvin.jpg', '6abfa67492625d865847950d3425e386ecc192ea'),
(39, 'GKR_CID0', 'GKR_CID039', 'juhi', 'juhi', 'female', 24, 879653421, 'rajni chowk', 'Pune', 'Bihar', 765368, 'juhi@gmail.com', '', 'cfe73546325554a0d399ff655bf98d0a257bb2b4'),
(40, 'GKR_CID0', 'GKR_CID040', 'ram', 'aggarwal', 'male', 40, 9897989774, 'ganga nager', 'Guntur', 'Manipur', 123456, 'ram@gmail.com', '', '8cb2237d0679ca88db6464eac60da96345513964'),
(41, 'GKR_CID0', 'GKR_CID041', 'Shalini', 'Sinha', 'female', 25, 9571164763, 'Shivaji colony', 'City', 'Bihar', 854301, 'shalinijha400@gmail.com', '', 'd328cfef9282983f3d77f6e74d4cede8d4f942c3'),
(42, 'GKR_CID0', 'GKR_CID042', 'Imran', 'Alam', 'male', 25, 7004154172, 'patna', 'Patna', 'Bihar', 800014, 'imranalam803@gmail.com', 'IMG_20191229_113559.jpg', 'be2ff51e0fa306f2bcb989e355f1f6aaafec3447'),
(43, 'GKR_CID0', 'GKR_CID043', 'kjdhf', 'dbf', 'female', 23, 6398469586, 'ksjdfhkjds"jfhb*.36djhv:', 'Ahmedabad', 'Maharashtra', 35604865, 'kdbkj@gmail.com', '', '957348975');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` int(200) NOT NULL,
  `empstr` varchar(500) NOT NULL DEFAULT 'FDSTF_EMPID0',
  `emp_code` varchar(600) NOT NULL,
  `emp_f_name` varchar(200) NOT NULL,
  `emp_phn` varchar(200) NOT NULL,
  `emp_email` varchar(200) NOT NULL,
  `emp_gen` char(10) NOT NULL,
  `emp_age` int(10) NOT NULL,
  `emp_pass` varchar(200) NOT NULL,
  `emp_salery` varchar(200) NOT NULL,
  `emp_add` varchar(2000) NOT NULL,
  `emp_pin` bigint(10) NOT NULL,
  `emp_adhaar` varchar(2000) NOT NULL,
  `emp_img` varchar(2000) DEFAULT NULL,
  `emp_L_name` varchar(1000) NOT NULL,
  `emp_city` varchar(1000) NOT NULL,
  `emp_state` varchar(1000) NOT NULL,
  `emp_status` varchar(200) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `empstr`, `emp_code`, `emp_f_name`, `emp_phn`, `emp_email`, `emp_gen`, `emp_age`, `emp_pass`, `emp_salery`, `emp_add`, `emp_pin`, `emp_adhaar`, `emp_img`, `emp_L_name`, `emp_city`, `emp_state`, `emp_status`) VALUES
(7, 'GKR_EMPID0', 'GKR_EMPID07', 'kriti', '987564321', 'kriti@gmail.com', 'male', 24, 'fccb5084abdda3ab8b8f340efabbe217816499a3', '', 'rajni chowk', 845301, '', '8.PNG', 'anand', 'Purnia', 'Bihar', 'Active'),
(8, 'GKR_EMPID0', 'GKR_EMPID08', 'juhi', '8760965287', 'juhi@gmail.com', 'female', 56, 'juhi', '', 'rajni chowk', 870906, '', '', 'jha', 'Purnia', 'Bihar', 'Active'),
(9, 'GKR_EMPID0', 'GKR_EMPID09', 'ramesh', '764939876', 'ramesh@gmail.com', 'male', 25, '53edd6990376d7b5f512d2b5556613ca2567f04c', '', 'rajni chowk', 854301, '36251265987', '', 'jha', 'Purnia', 'Bihar', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `o_id` int(200) NOT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `p_id` int(200) NOT NULL,
  `c_id` int(200) NOT NULL,
  `qty` int(200) DEFAULT '1',
  `order_status` varchar(200) NOT NULL DEFAULT 'Active',
  `order_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `v_email` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1 COMMENT='Order_table';

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`o_id`, `invoice_no`, `p_id`, `c_id`, `qty`, `order_status`, `order_time`, `v_email`) VALUES
(33, '20200720060037', 90, 36, 1, 'Delivered', '2020-07-20 12:30:37', 'shaurya@gmail.com'),
(34, '20200720060037', 76, 36, 1, 'Delivered', '2020-07-20 12:30:37', 'banty@gmail.com'),
(36, '20200720060037', 157, 36, 1, 'Delivered', '2020-07-20 12:30:37', 'mukeshpurnea6@gmail.com'),
(38, '20200720060037', 219, 36, 1, 'Delivered', '2020-07-20 12:30:38', 'product from FOODSTUFF'),
(39, '20200720060037', 89, 36, 1, 'Delivered', '2020-07-20 12:30:38', 'shaurya@gmail.com'),
(40, '20200720063956', 157, 36, 1, 'Delivered', '2020-07-20 13:09:56', 'mukeshpurnea6@gmail.com'),
(41, '20200720063956', 125, 36, 1, 'Delivered', '2020-07-20 13:09:56', 'shaurya@gmail.com'),
(42, '20200720071357', 157, 36, 1, 'Delivered', '2020-07-20 13:43:57', 'mukeshpurnea6@gmail.com'),
(43, '20200720071357', 219, 36, 1, 'Delivered', '2020-07-20 13:43:57', 'product from FOODSTUFF'),
(44, '20200720071357', 129, 36, 1, 'Delivered', '2020-07-20 13:43:57', 'banty@gmail.com'),
(46, '20200721073312', 52, 36, 1, 'active', '2020-07-21 05:33:12', 'shilpajha@gmail.com'),
(47, '20200721075435', 223, 36, 1, 'Delivered', '2020-07-21 05:54:35', 'shilpajha@gmail.com'),
(51, '20200721015129', 129, 36, 1, 'Delivered', '2020-07-21 11:51:29', 'banty@gmail.com'),
(55, '20200723105549', 127, 40, 7, 'Delivered', '2020-07-23 05:25:49', 'banty@gmail.com'),
(56, '20200723105549', 124, 40, 5, 'Delivered', '2020-07-23 05:25:49', 'shilpajha@gmail.com'),
(57, '20200723105549', 223, 40, 7, 'Delivered', '2020-07-23 05:25:49', 'shilpajha@gmail.com'),
(58, '20200723105549', 220, 40, 8, 'Delivered', '2020-07-23 05:25:49', 'product from FOODSTUFF'),
(59, '20200723105549', 219, 40, 1, 'Delivered', '2020-07-23 05:25:49', 'product from FOODSTUFF'),
(60, '20200725013749', 133, 40, 10, 'Active', '2020-07-25 13:37:49', 'shilpajha@gmail.com'),
(64, '20200727085519', 51, 42, 1, 'cancel', '2020-07-27 15:25:19', 'shilpajha@gmail.com'),
(65, '20200727085519', 157, 42, 1, 'Delivered', '2020-07-27 15:25:19', 'mukeshpurnea6@gmail.com'),
(66, '20200727085519', 127, 42, 1, 'Delivered', '2020-07-27 15:25:19', 'banty@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `p_id` int(200) NOT NULL,
  `pstr` varchar(500) NOT NULL DEFAULT 'FDSTF_PID00',
  `p_code` varchar(1000) NOT NULL,
  `p_name` varchar(1000) NOT NULL,
  `p_price` varchar(200) NOT NULL,
  `p_discount` varchar(3000) NOT NULL,
  `p_mfg` date DEFAULT NULL,
  `p_img` varchar(2000) DEFAULT NULL,
  `cat_title` varchar(100) DEFAULT NULL,
  `p_desc` varchar(500) DEFAULT NULL,
  `Qty` varchar(1000) NOT NULL,
  `p_status` varchar(200) NOT NULL DEFAULT 'Available',
  `p_brand` varchar(1000) NOT NULL DEFAULT '---',
  `v_email` varchar(1000) NOT NULL,
  `each_qty` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `pstr`, `p_code`, `p_name`, `p_price`, `p_discount`, `p_mfg`, `p_img`, `cat_title`, `p_desc`, `Qty`, `p_status`, `p_brand`, `v_email`, `each_qty`) VALUES
(24, 'GKR_PID00', 'GKR_PID0024', 'bakery rusk', '60', '', '2019-05-02', 'bakery rusk.jpg', 'bakery', '---', '64', 'Available', 'Sahni delight', 'ritik@gmail.com', '400g'),
(25, 'GKR_PID00', 'GKR_PID0025', 'milky mist', '79', '', '2019-06-04', 'milky milk.jpg', 'butters', '', '50', 'Available', 'Cheddar cheez', 'ritik@gmail.com', '200 g'),
(26, 'GKR_PID00', 'GKR_PID0026', 'Gourmet', '69', '', '2019-08-01', 'Gourmet.jpg', 'ice-cream', '', '45', 'Available', 'vadilal', 'ritik@gmail.com', '200 g'),
(28, 'GKR_PID00', 'GKR_PID0028', 'Amul lassi', '20', '', '2019-08-01', 'lassi amul.jpg', 'curds', 'Amul Kool Lassi is refreshing milk based natural drink. It is an easy to use delicious drink that refreshes immediately with goodness of nature.', '108', 'Available', 'Amul', 'ritik@gmail.com', '100 ml'),
(29, 'GKR_PID00', 'GKR_PID0029', 'Riovida juice', '60', '', '2019-08-03', 'Riovida juice.jpg', 'juice', 'RioVida is your answer because you couldn''t find a better antioxidant product on the market. Its power comes from the most concentrated antioxidant fruits in nature. These include blueberries, elderberries, pomegranates, and purple grapes.', '45', 'Available', '4Life', 'ritik@gmail.com', '300 ml'),
(30, 'GKR_PID00', 'GKR_PID0030', 'sudha healthy milk', '48', '', '2019-08-03', 'heldi milk.jpg', 'milk', 'Pasteurized Sudha Milk meets the FSSAI Standards for respective type of milk.', '212 kg', 'Available', 'Sudha', 'ritik@gmail.com', '1 L'),
(31, 'GKR_PID00', 'GKR_PID0031', 'Rassgulla', '120', '', '2019-08-02', 'rasssgulla.jpg', '', '', '90', 'Available', 'Sudha', 'ritik@gmail.com', ''),
(32, 'GKR_PID00', 'GKR_PID0032', 'Buah-Jambu', '110', '', '2019-07-29', 'Buah-Jambu-Agustinnesia.jpg', 'fruits', '', '500 kg', 'Available', '', 'ritik@gmail.com', ''),
(33, 'GKR_PID00', 'GKR_PID0033', 'capsicum', '100', '', '0000-00-00', 'capsicum.jpg', 'vegetable', '', '80 kg', 'Available', '', 'ritik@gmail.com', ''),
(34, 'GKR_PID00', 'GKR_PID0034', 'stacy', '65', '', '2019-08-03', 'stacy.jpg', 'bakery', '', '125', 'Available', 'stacy', 'ritik@gmail.com', ''),
(35, 'GKR_PID00', 'GKR_PID0035', 'amul lite', '35', '', '2019-07-15', 'amul lite.png', 'butters', 'this is delicious product', '321', 'Available', 'amul ', 'ritik@gmail.com', ''),
(36, 'GKR_PID00', 'GKR_PID0036', 'Buscuit', '25', '', '2019-07-23', 'buscuit.jpg', 'bakery', '', '240', 'Available', 'home bread', 'abishek@gmail.com', ''),
(37, 'GKR_PID00', 'GKR_PID0037', 'sudha butter', '70', '', '2019-07-25', 'KCHEESE 1kg.jpg', 'butters', '', '65', 'Available', 'sudha', 'abishek@gmail.com', ''),
(38, 'GKR_PID00', 'GKR_PID0038', 'Phuket', '80', '', '0000-00-00', 'phuket.jpg', 'fruits', '', '160 kg', 'Available', '', 'abishek@gmail.com', ''),
(39, 'GKR_PID00', 'GKR_PID0039', 'Cornetto', '40', '', '2019-07-30', 'cone.jpg', 'ice-cream', '', '56', 'Available', 'Sudha', 'abishek@gmail.com', ''),
(40, 'GKR_PID00', 'GKR_PID0040', 'Gowardhan rich-n-thick dahi', '65', '', '2019-08-01', 'curd1.jpeg', 'curds', '', '105', 'Available', 'Gowardhan', 'abishek@gmail.com', ''),
(41, 'GKR_PID00', 'GKR_PID0041', 'pizza chese', '45', '', '2019-06-25', 'pizza chese.jpg', 'butters', 'best quality chesse', '87', 'Available', 'amul', 'abishek@gmail.com', ''),
(42, 'GKR_PID00', 'GKR_PID0042', 'cabbage', '50', '', '0000-00-00', 'cabbage.png', 'vegetable', '', '92 kg', 'Available', '', 'abishek@gmail.com', ''),
(43, 'GKR_PID00', 'GKR_PID0043', 'Appy Fizz', '60', '', '2019-07-04', 'appy1.jpg', 'juice', '', '60', 'Available', 'appy', 'abishek@gmail.com', ''),
(46, 'GKR_PID00', 'GKR_PID0046', 'Rabri', '25', '', '2019-07-26', 'Rabri.png', 'sweets', '', '96', 'Available', 'Mother Dairy', 'abishek@gmail.com', ''),
(47, 'GKR_PID00', 'GKR_PID0047', 'Carrot', '60', '', '0000-00-00', 'carrot.jpg', 'vegetable', '', '60 kg', 'Available', '', 'abishek@gmail.com', ''),
(50, 'GKR_PID00', 'GKR_PID0050', 'Sudha smart milk', '60â‚¹', '', '2020-07-15', 'sudha-smart-milk-double-toned-milk-500x500.png', 'milk', 'The Bihar State Milk Co-Operative Federation Ltd is a dairy cooperative, established in 1983 as an enterprise of the Government of Bihar, India. It markets its products under the label "Sudha Dairy". The co-operative facilitates the procurement, processin', '40kg', 'Available', 'Sudha', 'shilpajha@gmail.com', '500g'),
(51, 'GKR_PID00', 'GKR_PID0051', 'Dark fantasy choco-fills', '60', '', '2019-08-03', 'dark-fantasy-chocofills-cream-biscuit-sunfeast-original.jpeg', 'bakery', 'Dark fantasy is a subgenre of fantasy literary, artistic, and cinematic works that incorporate darker and frightening themes of fantasy. It also often combines fantasy with elements of horror or has a gloomy, darker tone, or a sense of horror and dread.', '20 packs', 'Available', 'Sunfeast', 'shilpajha@gmail.com', ''),
(52, 'GKR_PID00', 'GKR_PID0052', 'nouriza crunchy peanut butter', '200', '', '2019-08-12', 'nouriza peanut butter.jpeg', 'butters', 'Nouriza Peanut Butter VMO Creamy is a delectable peanut butter with a scrumptious nutty aroma. ... Protein: Nouriza Peanut Butter creamy is made with 100% fine roasted peanuts with a creamy texture that melts away in your mouth. It provides fine protein t', '12 packs', 'Available', 'Healthkart', 'shilpajha@gmail.com', ''),
(55, 'GKR_PID00', 'GKR_PID0055', 'Amul masti', '80', '', '2019-08-03', 'Amul dahi.png', 'curds', 'Amul Masti Dahi is hygienically processed and packed in a reusable plastic tub as well as convenient pouch and thus free from possible adulteration. Amul Masti Dahi is high on nutrition and taste. Thick, creamy Amul Masti Dahi has a rich, glossy texture.', '50 kg', 'Available', 'Amul', 'shilpajha@gmail.com', ''),
(56, 'GKR_PID00', 'GKR_PID0056', 'Red Tomato', '40', '', '0000-00-00', 'Tomato.jpeg', 'vegetable', 'Tomato, Lycopersicum esculentum (syn. Solanum lycopersicum and Lycopersicon lycopersicum) is an herbaceous annual in the family Solanaceae grown for its edible fruit. The plant can be erect with short stems or vine-like with long, spreading stems.', '20 kg', 'Available', '---', 'shilpajha@gmail.com', ''),
(57, 'GKR_PID00', 'GKR_PID0057', 'Amrakhand cup icecream', '35', '', '2019-08-04', 'Amrakhand cup icecream.jpg', 'ice-cream', 'Amrakhand is a semi-soft sweetishÃ¢â‚¬â€œsour whole milk product prepared from lactic fermented curd.amrakhand Price in pune.', '30 packs', 'Available', 'Katraj Peswai', 'mukesh@gmail.com', ''),
(58, 'GKR_PID00', 'GKR_PID0058', 'London Dairy Ice Cream Natural', '60', '', '2019-08-03', 'Buy London Dairy Ice Cream Natural.jpg', 'ice-cream', 'London Dairy brings you a elegant combination of vanilla ice cream blended with caramel sauce for the ultimate dessert experience. It is perfect for all dessert lovers.', '30 packs', 'Available', 'London Dairy', 'mukesh@gmail.com', ''),
(59, 'GKR_PID00', 'GKR_PID0059', 'Strawberry milk', '45', '', '2019-08-04', 'Strawberry-Milk.jpg', 'milk', 'Strawberry Flavoured milks to which some flavours/colours and sugar been added. When the milk is used the minimum legal requirement for market milk', '50 packs', 'Available', 'Katraj Peswai', 'mukesh@gmail.com', ''),
(60, 'GKR_PID00', 'GKR_PID0060', 'Chocolate cup icecream', '20', '', '2019-08-04', 'Chocklate-cup-Ice-cream.jpg', 'ice-cream', 'Chocolate ice Cream Cup is available in Butterscotch,Mango,Vanilla,Pista,Chocolate & Strawberry.Ice cream available 35ml,50ml,70ml,100ml cone.', '40 packs', 'Available', 'Katraj Peswai', 'mukesh@gmail.com', ''),
(62, 'GKR_PID00', 'GKR_PID0062', 'Coconut ladoo', '120 per kg', '', '2019-08-04', 'Coconut Ladoo.jpg', 'sweets', 'Coconut ladoo are delicious sweet balls made with grated coconut, sugar & cardamom powder. These coconut laddus are a festive delight and are mostly made during festivals & celebrations.', '20kg', 'Available', '---', 'bittu@gmail.com', ''),
(63, 'GKR_PID00', 'GKR_PID0063', 'motichur Ladoo', '150 per kg', '', '2019-08-03', 'Motichur Ladoo.webp', 'sweets', 'Motichoor Ladoo or Motichur Ladoo is a round-shaped sweetmeat made from fine, tiny balls of besan. The chickpea flour globules is fried in ghee or oil, and soaked in sugar syrup', '15 kg', 'Available', 'jagdeesh sweets', 'bittu@gmail.com', ''),
(64, 'GKR_PID00', 'GKR_PID0064', 'Kaju katli', '650', '', '2019-08-03', 'kaju-barfi-sweets.jpg', 'sweets', 'Kaju katli (literally "cashew slice"), also known as kaju barfi, is an Indian dessert similar to a barfi. Kaju means cashew; Barfi is often, but not always, made by thickening milk with sugar and other ingredients (such as dry fruits and mild spices).', '10 kg', 'Available', '---', 'bittu@gmail.com', ''),
(65, 'GKR_PID00', 'GKR_PID0065', 'Rasmadhuri', '40 per piece', '', '2019-08-03', 'Rasmadhuri.jpg', 'sweets', 'It is milk made from sweet milk but it is not that sweet, because of which people like it. Anyone can eat it even after having a full diet meal. The delicacy holds special demand during wedding season. The whole process of making this dessert takes approx', '15kg', 'Available', '---', 'bittu@gmail.com', ''),
(66, 'GKR_PID00', 'GKR_PID0066', 'Rajbhog', '30 per piece', '', '2019-08-04', 'Rajbhog.jpg', 'sweets', ' Rajbhog is a traditional Bengali sweet made with paneer or chena and flavoured with saffron and rose essence.', '50 piece', 'Available', '---', 'bittu@gmail.com', ''),
(67, 'GKR_PID00', 'GKR_PID0067', 'Rose coconut ladoo', '130 per kg', '', '2019-08-04', 'Rose coconut Ladoo.jpg', 'sweets', 'These ladoos are super easy and delicious and perfect to make on this Diwali. This has a luxuriant milky flavor and an exciting mouth-feel', '20 kg', 'Available', '---', 'bittu@gmail.com', ''),
(68, 'GKR_PID00', 'GKR_PID0068', 'handmade coconut cookies', '30', '', '2019-08-06', 'handmade-coconut-cookies.jpeg', 'bakery', 'Toasted Coconut Cookies. Soft and Chewy Toasted Coconut Cookies are buttery sugar cookie with a nutty aroma. These coconut cookies are loaded with toasted coconut and crispy on the outside and soft and chewy in the middle.', '40 packs', 'Available', 'T & T', 'bittu@gmail.com', ''),
(69, 'GKR_PID00', 'GKR_PID0069', 'Fresh strawberry ice-cream', '45', '', '2019-08-03', 'fresh stawberry icecream.jpg', 'ice-cream', 'Vadilal entered the processed foods industry to optimise utilisation of its extensive cold chain network in the 1990s. It caters to the domestic and export markets with products such as frozen vegetables and ready to eat snacks, curries and breads, in add', '25 packs', 'Available', 'vadilal', 'bittu@gmail.com', ''),
(70, 'GKR_PID00', 'GKR_PID0070', 'chocolate toppings cookies', '60', '', '2019-08-06', 'chocolate topping cookies.jpeg', 'bakery', 'Ruth Graves Wakefield invented the chocolate chip cookie, and during WWII, when Massachusetts servicemen received them in care packages', '60 packs', 'Available', 'Wikifield', 'banty@gmail.com', ''),
(71, 'GKR_PID00', 'GKR_PID0071', 'chocolate-chip-cookies', '48', '', '2019-08-31', 'chocolate-chip-cookies.jpg', 'bakery', 'ItÃ¢â‚¬â„¢s difficult to imagine that the chocolate chip cookie, one of the worldÃ¢â‚¬â„¢s most beloved sweet treats, was actually invented by accident. The invention of the chocolate chip cookie happened', '26 packs', 'Available', 'Wikifield', 'banty@gmail.com', ''),
(73, 'GKR_PID00', 'GKR_PID0073', 'Pillsbury hot rolls', '30', '', '2019-09-04', 'pilsburry hot rolls.jpeg', 'bakery', 'This might just be the ultimate chocolate chip cookie recipe (besides our refrigerated dough, of course). ... Heat oven to 375Ã‚Â°F. In large bowl with electric mixer, beat granulated sugar, brown sugar and butter until light and fluffy. ... Allow cookies', '30 packs', 'Available', 'Pillsbury', 'banty@gmail.com', ''),
(74, 'GKR_PID00', 'GKR_PID0074', 'bitter melon (karela)', '30 per kg', '', '0000-00-00', 'bitter melon (karela).jpg', 'vegetable', 'Bitter Gourd is a well-liked vegetable in Asian countries, where its health benefits are famous, particularly, and its ability to lower blood glucose in diabetics.', '40 kg', 'Available', '---', 'banty@gmail.com', ''),
(75, 'GKR_PID00', 'GKR_PID0075', 'Ginger (adrakh)', '60 per kg', '', '0000-00-00', 'ginger (Adrakh).jpg', 'vegetable', 'Ginger (Zingiber officinale) is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine. It is a herbaceous perennial which grows annual pseudostems (false stems made of the rolled bases of leaves) about a met', '40 kg', 'Available', '---', 'banty@gmail.com', ''),
(76, 'GKR_PID00', 'GKR_PID0076', 'Cauli Flower (gobhi)', '40 per kg', '', '0000-00-00', 'cauliflower (gobhi).jpg', 'vegetable', 'Image result for cauliflower descriptionwww.specialtyproduce.com\r\nCauliflower is one of several vegetables in the species Brassica oleracea in the genus Brassica, which is in the family Brassicaceae. ... The cauliflower head is composed of a white inflore', '50 kg', 'Available', '---', 'banty@gmail.com', ''),
(77, 'GKR_PID00', 'GKR_PID0077', 'mixed greenstuff (Saag)', '100', '', '0000-00-00', 'green vegitables.jpg', 'vegetable', 'Saag (pronounced [saÃ‹Âg]) (Punjabi: Ã Â¨Â¸Ã Â¨Â¾Ã Â¨â€”) (Nepali: Ã Â¤Â¸Ã Â¤Â¾Ã Â¤â€”) (Odia: Ã Â¬Â¶Ã Â¬Â¾Ã Â¬â€”) or saga is a leaf-based (spinach, mustard leaf, collard greens, basella, etc.) dish eaten in the Indian subcontinent with bread such as ro', '10 kg', 'Available', '---', 'banty@gmail.com', ''),
(78, 'GKR_PID00', 'GKR_PID0078', 'Mixed vegitable combo pack', '400', '', '0000-00-00', 'mix vegitable combo pack.jpg', 'vegetable', 'Mixed Vegetables are a mixture of at least two different vegetables. They are peeled, if necessary, and prepared in bite-sized pieces if they are large vegetables. ... The vegetables in commercial Ã¢â‚¬Å“Mixed VegetablesÃ¢â‚¬Â used to be just peas and co', '50 kg', 'Available', '---', 'ravi@gmail.com', ''),
(79, 'GKR_PID00', 'GKR_PID0079', 'brocoli', '85', '', '0000-00-00', 'brocolli1.jpg', 'vegetable', 'Broccoli. ... Broccoli is classified in the Italica cultivar group of the species Brassica oleracea. Broccoli has large flower heads, usually dark green in color, arranged in a tree-like structure branching out from a thick, edible stalk which is usually', '30 kg', 'Available', '---', 'ravi@gmail.com', ''),
(83, 'GKR_PID00', 'GKR_PID0083', 'Appy Fizz', '55', '', '2019-08-09', 'Appy-Fizz.jpg', 'juice', 'Introduced in 2005, Appy Fizz is a sparkling apple juice drink available in India. Produced by ParlÃƒÂ© Agro, the largest Indian food and beverage company (who also make Frooti), Appy Fizz builds on its predecessor, Appy, which was a regular, non-carbonat', '10 packs', 'Available', 'Parle Agro', 'banty@gmail.com', ''),
(84, 'GKR_PID00', 'GKR_PID0084', 'orange, red cherry,grapes juice', '360', '', '2019-08-09', 'Serafin_modern-organic-pressed-juice (orange, red cherry,grapes juice).jpg', 'juice', 'Serafin Juice is an organic, cold-pressed and delicious line of juices created and based in San Diego, California. ... The design that was created is modern, clean and simple, much like their juices that are free of GMOs and preservatives.', '40 bottels', 'Available', 'serafin', 'banty@gmail.com', ''),
(85, 'GKR_PID00', 'GKR_PID0085', 'minute maid guava juice', '70', '', '2019-08-07', 'minute maid guava juice.png', 'juice', 'Minute Maid Guava is the top selling guava juice product in India. Get details like product information and ingredients of Minute Maid Guava Fresh Juice.', '10 bottels', 'Available', 'Minute maid', 'banty@gmail.com', ''),
(86, 'GKR_PID00', 'GKR_PID0086', 'apple  anaar orange tripack', '300', '', '2019-08-07', 'guava apple orange tripack juice.png', 'juice', 'Minute Maid Guava is the top selling guava juice product in India. Get details like product information and ingredients of Minute Maid Guava Fresh Juice.', '40 bottels', 'Available', 'Minute maid', 'banty@gmail.com', ''),
(124, 'GKR_PID00', 'GKR_PID00124', 'Good Day butter cookie', '30', '', '2019-08-07', 'butter-good-day-original.jpeg', 'bakery', 'Good day butter cookie have fun with a good day', '80 packs', 'Available', 'Britania', 'shilpajha@gmail.com', '250g'),
(127, 'GKR_PID00', 'GKR_PID00127', 'Drupe vegan almond Milk', '25', '', '2019-08-07', 'almond milk.jpeg', 'milk', 'It is made from fresh almond paste and mixed with alkaline water, which helps maintain the product PH level . Drupe Almond Milk has No preservatives. Drupe Almond Milk has 16-35 calories and is extremely low fat, easy to digest.', '60 packs', 'Available', 'Drupe', 'banty@gmail.com', '250 ml'),
(128, 'GKR_PID00', 'GKR_PID00128', 'Marigold Full Creame Milk', '40', '', '2019-08-07', 'marigold full cream.jpg', 'milk', 'It is also high in calcium and protein, containing 400mg of calcium and 10g of protein in every 200ml glass of milk. MARIGOLD HL Milk is also low in fat (99-per-cent fat-free) and low in lactose, making it more than just a glass of milk.', '10 L', 'Available', 'Marigold', 'banty@gmail.com', '1 L'),
(129, 'GKR_PID00', 'GKR_PID00129', 'Nestle A+ Nourish Toned Milk', '75', '', '2019-08-07', 'nestle a+ nourish toned-milk.jpg', 'milk', 'Milk has the goodness of Calcium and Protein that provide nourishment. NestlE a+ Nourish Milk is sourced from healthy, well fed cows. Then, this milk undergoes 61 stringent quality checks including checks for adulterants, aflatoxin and antibiotics. Follow', '20 L', 'Available', 'Nestle', 'banty@gmail.com', '1 L carton'),
(133, 'GKR_PID00', 'GKR_PID00133', 'Orange', '60', '', '0000-00-00', 'orange.jpeg', 'fruits', 'dsgffffffffffffffffffffffffffff', '30kg', 'Available', '---', 'shilpajha@gmail.com', '1 kg'),
(157, 'GKR_PID00', 'GKR_PID00157', 'Curd Bucket', '200', 'with 20% discount', '2019-08-10', '5Kgs Curd Bucket_500ml_edited_2.jpg', 'curds', 'Often curds. a substance consisting mainly of casein and the like, obtained from milk by coagulation, and used as food or made into cheese.', '80 kg', 'Available', 'bucket', 'mukeshpurnea6@gmail.com', '500 ml'),
(219, 'GKR_PID00', 'GKR_PID00219', 'Orange', '40', '', '0000-00-00', 'orange 1.jpg', 'fruits', '--', '--', 'Available', '--', 'Product From FOODSTUFF', '1 kg'),
(220, 'GKR_PID00', 'GKR_PID00220', 'Sudha smart milk', '60â‚¹', '', '0000-00-00', 'sudha-smart-milk-double-toned-milk-500x500.png', 'milk', '--', '30kg', 'Available', 'Sudha', 'Product From FOODSTUFF', '500g'),
(223, 'GKR_PID00', 'GKR_PID00223', 'besan laddoo', '120', '', '0000-00-00', 'Agarwaal-Laddu.jpg', 'sweets', '--', '--', 'Available', '--', 'shilpajha@gmail.com', '1 kg'),
(227, 'GKR_PID00', 'GKR_PID00227', 'besan laddoo', '120', '', '0000-00-00', 'besan ke laddoo.jpg', 'sweets', '--', '10 unit', 'Available', '--', 'shilpajha@gmail.com', '1 kg'),
(228, 'GKR_PID00', 'GKR_PID00228', 'paneer', '120', '', '0000-00-00', '71Y8IdjkX5L._SL1194_ - Copy.jpg', 'milk', 'knglkf,gmdbgv''asbkj"', '10 kg', 'Available', '--', 'Product From FOODSTUFF', '1 kg');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE IF NOT EXISTS `vendor` (
  `v_id` int(100) NOT NULL,
  `vstr` varchar(500) NOT NULL DEFAULT 'FDSTF_VID0',
  `v_code` varchar(600) NOT NULL,
  `v_f_name` varchar(1000) NOT NULL,
  `v_phn` bigint(20) NOT NULL,
  `v_email` varchar(1000) NOT NULL,
  `v_add` text NOT NULL,
  `v_pin` int(10) NOT NULL,
  `v_pass` varchar(500) DEFAULT NULL,
  `v_img` varchar(2000) DEFAULT NULL,
  `v_L_name` varchar(1000) NOT NULL,
  `v_age` int(20) NOT NULL,
  `v_gen` char(10) NOT NULL,
  `v_city` varchar(100) NOT NULL,
  `v_state` varchar(100) NOT NULL,
  `v_status` varchar(200) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`v_id`, `vstr`, `v_code`, `v_f_name`, `v_phn`, `v_email`, `v_add`, `v_pin`, `v_pass`, `v_img`, `v_L_name`, `v_age`, `v_gen`, `v_city`, `v_state`, `v_status`) VALUES
(6, 'GKR_VID0', 'GKR_VID06', 'shilpa', 6201255655, 'shilpajha@gmail.com', 'teachers colony, rajni chowk', 854301, '9f7138cf6f6dded54979277454b4edc6513e400e', 'Emma watson.jpg', 'jha', 20, 'female', 'Purneaa', 'Bihar', 'Active'),
(8, 'GKR_VID0', 'GKR_VID08', 'mukesh', 8739253426, 'mukesh@gmail.com', 'teachers colony, rajni chowk', 110537, '256d23ebdfeb388c10a3019a2c223ca5c90edfcc', 'Mukesh.jpeg', 'kumar', 20, 'male', 'Purnea', 'Bihar', 'Active'),
(9, 'GKR_VID0', 'GKR_VID09', 'bittu', 76234567, 'bittu@gmail.com', 'teachers colony, rajni chowk', 854301, '912ef7e89a3251690a5bd06acc9f148694b697f9', 'photo-1438798332373-fecca6ea42ce.jpeg', 'kumar', 23, 'male', 'Purnea', 'Bihar', 'Active'),
(10, 'GKR_VID0', 'GKR_VID010', 'ritika', 8084587458, 'ritik@gmail.com', 'navratan hatta, purnea', 854201, '59c5329b271a4545002914ca97211007f5a078cb', '1Armie.jpg', 'raj', 24, 'male', 'Purnea', 'Bihar', 'Active'),
(11, 'GKR_VID0', 'GKR_VID011', 'abishek ', 7058745896, 'abishek@gmail.com', 'sipahi tola, purnea', 852412, '0637f3689d2e39358cdbcae2f5dcb2b9bc8a1335', 'oakes.jpg', 'hasda', 26, 'male', 'Purnea', 'Bihar', 'Active'),
(12, 'GKR_VID0', 'GKR_VID012', 'Banty', 8545758458, 'banty@gmail.com', 'bari bazar, katihar', 854306, '9fc971d0c56457d04975da86306d64ca0684eb66', 'happu.jpg', 'chouhan', 22, 'male', 'Katihar', 'Bihar', 'Active'),
(15, 'GKR_VID0', 'GKR_VID015', 'Ravi', 9876234512, 'ravi@gmail.com', 'MG-market', 854301, 'aa153b5d1fcb55096034df7a27565f4297f195d2', '1200px-Pierre-Person.jpg', 'Raj', 35, 'male', 'Katihar', 'Bihar', 'Active'),
(18, 'GKR_VID0', 'GKR_VID018', 'Uttam', 9931926868, 'uttamsir@gmail.com', 'teachers colony, rajni chowk', 854301, 'd1fd7a9c76f9ff855a0665235144f3940b9d5022', 'cover.jpeg', 'sir', 50, 'male', 'Purnea', 'Bihar', 'Active'),
(19, 'GKR_VID0', 'GKR_VID019', 'Mukesh', 7004384071, 'mukeshpurnea6@gmail.com', 'Maranga', 854303, '119ad2c6ce1e50efcf4c16c2eac702e150a4158f', 'B612_20171218_115626-01.jpeg', 'Kumar', 21, 'male', 'Purnea', 'Bihar', 'Active'),
(20, 'GKR_VID0', 'GKR_VID020', 'divya', 6201255655, 'divyasuman164@gmail.com', 'teachers colony, rajni chowk', 854301, 'bdc7d4a93198f6a360c93c6e6b9200d729cbaff9', 'di.jpg', 'suman', 34, 'female', '', '', 'Active'),
(21, 'GKR_VID0', 'GKR_VID021', 'sneha', 25429, 'sneha@gmail.com', 'rajni chowk', 854301, 'b4728cc60f9de4a3a970e74f5b1b22b083dc651f', 'photo-1529626455594-4ff0802cfb7e.jpg', 'sree', 23, 'female', 'Purnea', 'Bihar', 'Active'),
(23, 'GKR_VID0', 'GKR_VID023', 'sipra', 870236457, 'sipra@gmail.com', 'durgapur', 854301, '58aaaa95e8d771b2590a3386afb394649ad75892', 'gvin.jpg', 'jha', 27, 'female', 'Kolkatta', 'West Bengal', 'Active'),
(25, 'GKR_VID0', 'GKR_VID025', 'Product From GHAR KA RASHAN', 0, 'Product From FOODSTUFF', '', 0, '', '', '', 0, '', '', '', 'Active'),
(26, 'GKR_VID0', 'GKR_VID026', 'juhi', 8760965287, 'juhi@gmail.com', 'rajni chowk', 854301, 'cfe73546325554a0d399ff655bf98d0a257bb2b4', '', 'jha', 24, 'female', 'Purnia', 'Bihar', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`A_username`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cont_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cont_id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(200) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `v_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
