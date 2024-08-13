-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2024 at 04:59 PM
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
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `adoption`
--

CREATE TABLE `adoption` (
  `id` int(11) NOT NULL,
  `sl_no` varchar(255) DEFAULT NULL,
  `book_no` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `party_one` varchar(255) DEFAULT NULL,
  `party_two` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `taluk` varchar(255) DEFAULT NULL,
  `page_no` varchar(255) DEFAULT NULL,
  `page_count` varchar(255) DEFAULT NULL,
  `pdf_link` varchar(255) DEFAULT NULL,
  `child_name` varchar(255) DEFAULT NULL,
  `center` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adoption`
--

INSERT INTO `adoption` (`id`, `sl_no`, `book_no`, `date`, `party_one`, `party_two`, `address1`, `address2`, `district`, `taluk`, `page_no`, `page_count`, `pdf_link`, `child_name`, `center`, `created_on`, `modified_on`) VALUES
(2, '1', '1', '09/05/2013', 'Umesh Surya Naik,yashwanth', 'Virendra Surya Naik alias Virendra Naik', 'Madkai', 'Madkai', 'North Goa,new yasj', 'Ponda,', '32-34', '4', 'DHB-SUCCESSION1-P32-34', 'Samesh Virendra Naik', 'Dharbandora', '0000-00-00 00:00:00', '2024-07-18 22:43:48'),
(3, '2', '1', '09/05/2013', 'Urmila Umesh Naik', 'Vijita Virendra Naik', 'Madkai', 'Madkai', 'North Goa', 'Ponda', '33-34', '', 'DHB-SUCCESSION1-P32-34', '', 'Dharbandora', '0000-00-00 00:00:00', '2024-07-08 22:15:50'),
(4, '023', '21', '2024-07-17', 'sup,re', 'har,shi,tha', 'aralak', 'mysoer', 'North Goa', 'Ponda', '21-22', '2', '.pdf', 'yash', NULL, '2024-07-17 02:55:56', '2024-07-17 04:33:03');

-- --------------------------------------------------------

--
-- Table structure for table `antinuptiac`
--

CREATE TABLE `antinuptiac` (
  `id` int(11) NOT NULL,
  `sl_no` varchar(255) DEFAULT NULL,
  `book_no` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `party_one` varchar(255) DEFAULT NULL,
  `party_two` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `taluk` varchar(255) DEFAULT NULL,
  `page_no` varchar(255) DEFAULT NULL,
  `page_count` varchar(255) DEFAULT NULL,
  `pdf_link` varchar(255) DEFAULT NULL,
  `center` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deeds`
--

CREATE TABLE `deeds` (
  `id` int(11) NOT NULL,
  `sl_no` varchar(255) DEFAULT NULL,
  `book_no` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `page_count` varchar(255) DEFAULT NULL,
  `pdf_link` varchar(255) DEFAULT NULL,
  `center` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relinquishment`
--

CREATE TABLE `relinquishment` (
  `id` int(11) NOT NULL,
  `sl_no` varchar(255) DEFAULT NULL,
  `book_no` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `party_one` varchar(255) DEFAULT NULL,
  `party_two` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `taluk` varchar(255) DEFAULT NULL,
  `page_no` varchar(255) DEFAULT NULL,
  `page_count` varchar(255) DEFAULT NULL,
  `pdf_link` varchar(255) DEFAULT NULL,
  `center` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `relinquishment`
--

INSERT INTO `relinquishment` (`id`, `sl_no`, `book_no`, `date`, `party_one`, `party_two`, `address1`, `district`, `taluk`, `page_no`, `page_count`, `pdf_link`, `center`, `created_on`, `modified_on`) VALUES
(2, '1', '1', '09/04/2013', 'Jagganath @ Prasad Krishna Patil', '', 'Old Goa', 'North Goa', 'Tiswadi', '23-24', '3', 'DHB-SUCCESSION1-P23-24', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '1', '1', '09/04/2013', 'Darshana Jagganath @ Prasad Patil', '', 'Old Goa', 'North Goa', 'Tiswadi', '23-24', '', 'DHB-SUCCESSION1-P23-24', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '2', '1', '17-7-2013', 'Ranjana Shripad Khorate also known by Maiden name as Ranjan Mahadev Tendulkar alias Vilgeker ', '', 'Sacorda', 'South Goa', 'Dharbandora', '38-39', '4', 'DHB-SUCCESSION1-P38-39', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '2', '1', '17-07-2013', 'Shripad Parshuram Khorate', '', 'Sacorda', 'South Goa', 'Dharbandora', '38-39', '', 'DHB-SUCCESSION1-P38-39', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '3', '1', '21-08-2013', 'Mangala Bikaro Mesta', '', 'Sancordem', 'South Goa', 'Dharbandora', '54-55', '4', 'DHB-SUCCESSION1-P54-55', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '3', '1', '21-08-2013', 'Phati Pundalik Chari', '', 'Sancordem', 'South Goa', 'Dharbandora', '54-55', '', 'DHB-SUCCESSION1-P54-55', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '3', '1', '21-08-2013', 'Xarada Mesta', '', 'Vazare', 'Sindhudurg', 'Dodamarge', '54-55', '', 'DHB-SUCCESSION1-P54-55', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '3', '1', '21-08-2013', 'Gopal Sutar', '', 'Vazare', 'Sindhudurg', 'Dodamarge', '54-55', '', 'DHB-SUCCESSION1-P54-55', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '3', '1', '21-08-2013', 'Yamini Bhicaro Chari', '', 'Aynode', 'Sindhudurg', 'Dodamarge', '54-55', '', 'DHB-SUCCESSION1-P54-55', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '3', '1', '21-08-2013', 'Nitin Gajanan Sutar', '', 'Aynode', 'Sindhudurg', 'Dodamarge', '54-55', '', 'DHB-SUCCESSION1-P54-55', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '3', '1', '21-8-2013', 'Geeta Chari', '', 'Vasco da gama', 'North Goa', 'Mormugao', '54-55', '', 'DHB-SUCCESSION1-P54-55', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '3', '1', '21-08-2013', 'Gunjan Visvonata Chari', '', 'Vasco da gama', 'North Goa', 'Mormugao', '54-55', '', 'DHB-SUCCESSION1-P54-55', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '4', '1', '14-1-2014', 'Mono Ganes Gaocar @ Manohar Ganesh Gaonkar ', '', 'Kirlapal', 'South Goa', 'Dharbandora', '89-90', '3', 'DHB-SUCCESSION1-P89-90', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '4', '1', '14-01-2014', 'Mogre Mono Gaocar ', '', 'Kirlapal', 'South Goa', 'Dharbandora', '89-90', '', 'DHB-SUCCESSION1-P89-90', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '4', '1', '14-01-2014', 'Naraina Gones Gaocar', '', 'Kirlapal', 'South Goa', 'Dharbandora', '89-90', '', 'DHB-SUCCESSION1-P89-90', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '4', '1', '14-01-2014', 'Anuradha Naraina Gaocar', '', 'Kirlapal', 'South Goa', 'Dharbandora', '89-90', '', 'DHB-SUCCESSION1-P89-90', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '4', '1', '14-01-2014', 'Shakuntal Ganesh Gaonkar @ Geeta Suresh Bandodkar ', '', 'Kalay', 'South Goa', 'Sanguem', '89-90', '', 'DHB-SUCCESSION1-P89-90', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '4', '1', '14-01-2014', 'Suresh Naik Bandodkar ', '', 'Kalay', 'South Goa', 'Sanguem', '89-90', '', 'DHB-SUCCESSION1-P89-90', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '5', '2', '20-5-2014', 'Queenie Souza ', '', 'Agassaim', 'North Goa', 'Tiswadi', '35-36', '3', 'DHB-SUCCESSION2-P35-36', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '5', '2', '20-05-2014', 'John de Rosario Mariano ', '', 'Agassaim', 'North Goa', 'Tiswadi', '35-36', '', 'DHB-SUCCESSION2-P35-36', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '6', '2', '25-09-2014', 'Sadanand Mahadev Kudchadker ', '', 'Panjim', 'North Goa', 'Tiswadi', '81-83', '5', 'DHB-SUCCESSION2-P81-83', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '6', '2', '25-09-2014', 'Mohana Sadanand Kudchadker ', '', 'Panjim', 'North Goa', 'Tiswadi', '81-83', '', 'DHB-SUCCESSION2-P81-83', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '7', '2', '21-10-2014', 'Navroz Velci Raiyani ', '', 'Ponda', 'North Goa', 'Ponda', '92-93', '4', 'DHB-SUCCESSION2-P92-93', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '7', '2', '21-10-2014', 'Shalini N. Raiyani ', '', 'Ponda', 'North Goa', 'Ponda', '92-93', '', 'DHB-SUCCESSION2-P92-93', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, '7', '2', '21-10-2014', 'Harit @ Iqbal Velci Raiyani ', '', 'Ponda', 'North Goa', 'Ponda', '92-93', '', 'DHB-SUCCESSION2-P92-93', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, '7', '2', '21-10-2014', 'Sheerin I. Raiyani', '', 'Ponda', 'North Goa', 'Ponda', '92-93', '', 'DHB-SUCCESSION2-P92-93', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, '7', '2', '21-10-2014', 'Rashida S. Wadhawanta ', '', 'Ponda', 'North Goa', 'Ponda', '92-93', '', 'DHB-SUCCESSION2-P92-93', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, '7', '2', '21-10-2014', 'Sultan Wadhwanta', '', 'Ponda', 'North Goa', 'Ponda', '92-93', '', 'DHB-SUCCESSION2-P92-93', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, '8', '2', '21-10-2014', 'Muradali M. Rayani ', '', 'Shanti nagar', 'North Goa', 'Ponda', '94-95', '3', 'DHB-SUCCESSION2-P94-95', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, '8', '2', '21-10-2014', 'Femida M. Rayani', '', 'Shanti nagar', 'North Goa', 'Ponda', '94-95', '', 'DHB-SUCCESSION2-P94-95', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, '8', '2', '21-0-2014', 'Samira Hariyani ', '', '', '', 'Pune', '94-95', '', 'DHB-SUCCESSION2-P94-95', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, '8', '2', '21-10-2014', 'Sohel Salim Hariyani', '', '', '', 'Pune', '94-95', '', 'DHB-SUCCESSION2-P94-95', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, '9', '3', '24-11-2014', 'Ashwini Abhaykumar Patil', '', 'Sanvordem', 'South Goa', 'Sanguem', '06-May', '3', 'DHB-SUCCESSION3-P5-6', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, '9', '3', '05/01/2015', 'Vithaldas Ragunath Nagwekar', '', 'Margao', 'South Goa', 'Salcete', '09-Aug', '3', 'DHB-SUCCESSION3-P8-9', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, '9', '3', '05/01/2015', 'Shraddha Vithaldas Nagwekar', '', 'Margao', 'South Goa', 'Salcete', '09-Aug', '', 'DHB-SUCCESSION3-P8-9', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, '10', '3', '22-1-2015', 'Jose Francisco Rogue Fernandes alias Roque Francisco Fernandes', 'Luciana Fernandes', 'Sanvordem', 'South Goa', 'Sanguem', '10', '2', 'DHB-SUCCESSION3-P10', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, '11', '3', '', 'Cancelled', '', '', '', '', '22-23', '3', 'DHB-SUCCESSION3-P22-23', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, '12', '3', '', 'Cancelled', '', '', '', '', '29', '2', 'DHB-SUCCESSION3-P29', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, '13', '3', '21-01-2016', 'Lisa Maria Rebeiro ', '', 'Chicalim', 'North Goa', 'Mormugao', '34-35', '3', 'DHB-SUCCESSION3-P34-35', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, '13', '3', '21-01-2016', 'Christopher Michael Green ', '', 'Chicalim', 'North Goa', 'Mormugao', '34-35', '', 'DHB-SUCCESSION3-P34-35', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, '13', '3', '21-01-2016', 'Kay Ann Rebeiro', '', 'Chicalim', 'North Goa', 'Mormugao', '34-35', '', 'DHB-SUCCESSION3-P34-35', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, '14', '3', '31-03-2016', 'Swathy Bhasker Umarye ', '', 'Vazare', 'Sindhudurg', 'Dodamarg', '52-54', '4', 'DHB-SUCCESSION3-P52-54', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, '14', '3', '31-03-2016', 'Ramchandra Narayan Waze ', '', 'Vazare', 'Sindhudurg', 'Dodamarg', '52-54', '', 'DHB-SUCCESSION3-P52-54', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, '14', '3', '31-03-2016', 'Kalpana Bhasker Umarye alias Prachi Pradip Gobre', '', 'Velguem', 'North Goa', 'Bicholim', '52-54', '', 'DHB-SUCCESSION3-P52-54', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, '14', '3', '31-03-2016', 'Pradip Laximikant Gobre', '', 'Velguem', 'North Goa', 'Bicholim', '52-54', '', 'DHB-SUCCESSION3-P52-54', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, '14', '3', '31-03-2016', 'Archana Bhasker Umarye alias Archana Gururaj Shenvi ', '', 'Bandora', 'North Goa', 'Ponda', '52-54', '', 'DHB-SUCCESSION3-P52-54', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, '14', '3', '31-03-2016', 'Gururaj Anant Shenvi ', '', 'Bandora', 'North Goa', 'Ponda', '52-54', '', 'DHB-SUCCESSION3-P52-54', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, '15', '3', '26-4-2016', 'Puja Pandhari Ainkar alias Puja Rama Jatho ', '', 'Collem', 'South Goa', 'Dharbandora', '70-71', '3', 'DHB-SUCCESSION3-P70-71', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, '15', '3', '26-04-2016', 'Rama Babu Jatho ', '', 'Collem', 'South Goa', 'Dharbandora', '70-71', '', 'DHB-SUCCESSION3-P70-71', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, '16', '4', '28-2-2017', 'Anandi Axel Kauffmann @ Anandi Hanumant Arsekar ', '', '', '', 'Germany', '26-27', '3', 'DHB-SUCCESSION4-P26-27', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, '16', '4', '28-2-2017', 'Kauffmann Axel ', '', '', '', 'Germany', '26-27', '', 'DHB-SUCCESSION4-P26-27', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, '17', '4', '20-3-2017', 'Chitra Bhikaji Prabhu Velguenkar alias Anuradha Murudhar Thakur ', '', '', '', 'Kolhapur', '27-29', '4', 'DHB-SUCCESSION4-P27-29', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, '17', '4', '20-03-2017', 'Murudhar Prabhakar Thakur', '', '', '', 'Kolhapur', '27-29', '', 'DHB-SUCCESSION4-P27-29', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, '17', '4', '20-03-2017', 'Netra Bhikaji Prabhu Velguenkar alias Netra Uday Samant ', '', 'Dabal', 'South Goa', 'Dharbandora', '27-29', '', 'DHB-SUCCESSION4-P27-29', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, '17', '4', '20-03-2017', 'Uday Mukund Samant ', '', 'Dabal', 'South Goa', 'Dharbandora', '27-29', '', 'DHB-SUCCESSION4-P27-29', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, '18', '4', '29-5-2017', 'Rajesh Gaonkar', '', 'Sancorda', 'South Goa', 'Dharbandora', '29-31', '5', 'DHB-SUCCESSION4-P29-31', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, '18', '4', '29-05-2017', 'Anand Babuso Naik ', '', 'Sancorda', 'South Goa', 'Dharbandora', '29-31', '', 'DHB-SUCCESSION4-P29-31', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, '18', '4', '29-05-2017', 'Avinash Shendkar ', '', 'Sancordem', 'South Goa', 'Dharbandora', '29-31', '', 'DHB-SUCCESSION4-P29-31', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, '19', '4', '', 'Cancelled', '', '', '', '', '32', '2', 'DHB-SUCCESSION4-P32', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, '20', '4', '11/07/2017', 'Krishna Govind Gaunkar', 'Beby Krishna Gaunkar', 'Shetimoll ', 'South Goa', 'Dharbandora', '33-34', '4', 'DHB-SUCCESSION4-P33-34', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, '21', '4', '25-07-2017', 'Gurudas Shet Verekar ', '', 'Mollem', 'South Goa', 'Dharbandora', '35-37', '5', 'DHB-SUCCESSION4-P35-37', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, '21', '4', '25-07-2017', 'Prashat Shet Verekar ', '', 'Mollem', 'South Goa', 'Dharbandora', '35-37', '', 'DHB-SUCCESSION4-P35-37', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, '21', '4', '25-07-2017', 'Anta Chandrakant Gauns', '', 'Pilliem', 'South Goa', 'Dharbandora', '35-37', '', 'DHB-SUCCESSION4-P35-37', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, '22', '5', '', 'Cancelled', '', '', '', '', '16-18', '5', 'DHB-SUCCESSION5-P16-18', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, '23', '5', '17-2-2020', 'Prema Ramesh Kantrao Jadu alias Prema Ramesh Khantarao Jado', '', '', '', 'Karnataka', '18-19', '3', 'DHB-SUCCESSION5-P18-19', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, '23', '5', '17-2-2020', 'Pushpa Patil Ramesh Kantrao Jadu alias Pushpa Prabhakar Patil ', '', '', '', 'Karnataka', '18-19', '', 'DHB-SUCCESSION5-P18-19', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, '23', '5', '17-02-2020', 'Raju Prabhakar Patil ', '', '', '', 'Karnataka', '18-19', '', 'DHB-SUCCESSION5-P18-19', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, '24', '5', '26-2-2020', 'Sucdo Gaunkar also known as Sukdo Bodko Gaonkar, and even as Sukado Bodako Gaonkar', 'Bayulem Sadashiva Gawde also known as Bayulem Sucdo Gaonkar and even as Bayula Sukdo Gaonkar', 'Dabal', 'South Goa', 'Dharbandora', '22-24', '6', 'DHB-SUCCESSION5-P22-24', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, '25', '5', '28-2-2020', 'Roshan Gaonkar alias Roshan Barkelo Gaokar ', '', 'Dabal', 'South Goa', 'Dharbandora', '25-26', '24', 'DHB-SUCCESSION5-P25-26', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, '25', '5', '28-02-2020', 'Vishanti Gaonkar alias Vishanti Barkelo Gaonkar', '', 'Dabal', 'South Goa', 'Dharbandora', '25-26', '', 'DHB-SUCCESSION5-P25-26', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, '25', '5', '28-03-2020', 'Shilpa Barkelo Gaonkar ', '', 'Dabal', 'South Goa', 'Dharbandora', '25-26', '', 'DHB-SUCCESSION5-P25-26', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, '26', '5', '06/03/2020', 'Priti Prasad Naik formerly known as Roopa Gaude', '', 'Tamsoda', 'South Goa', 'Dharbandora', '30-36', '29', 'DHB-SUCCESSION5-P30-36', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, '26', '5', '06/03/2020', 'Prasad Suresh Naik', '', 'Tamsoda', 'South Goa', 'Dharbandora', '30-36', '', 'DHB-SUCCESSION5-P30-36', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, '26', '5', '06/03/2020', 'Uma Mukesh Betodkar, formely known as Uma Babani Gaude ', '', 'Sancordem', 'South Goa', 'Dharbandora', '30-36', '', 'DHB-SUCCESSION5-P30-36', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, '26', '5', '06/03/2020', 'Mukesh Sada Betodkar', '', 'Sancordem', 'South Goa', 'Dharbandora', '30-36', '', 'DHB-SUCCESSION5-P30-36', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, '26', '5', '06/03/2020', 'Isha Vishant Gaude, formely known as Reshma Babani Gaude ', '', 'Marcel', 'North Goa', 'Ponda', '30-36', '', 'DHB-SUCCESSION5-P30-36', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, '26', '5', '06/03/2020', 'Vishant Barkelo Gaude ', '', 'Marcel', 'North Goa', 'Ponda', '30-36', '', 'DHB-SUCCESSION5-P30-36', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, '26', '5', '06/03/2020', 'Urchita Umakant Betodkar, formely known as Punam Babani Gaude ', '', 'Sancordem', 'South Goa', 'Dharbandora', '30-36', '', 'DHB-SUCCESSION5-P30-36', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, '27', '5', '16-3-2020', 'Silvia Fernandes ', '', 'Mollem', 'South Goa', 'Dharbandora', '36-37', '3', 'DHB-SUCCESSION5-P36-37', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, '28', '5', '31-07-2020', 'Sumati Guno Gaonkar ', '', 'Daukond', 'South Goa', 'Dharbandora', '62-64', '5', 'DHB-SUCCESSION5-P62-64', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, '28', '5', '31-07-2020', 'Guno Gaonkar', '', 'Daukond', 'South Goa', 'Dharbandora', '62-64', '', 'DHB-SUCCESSION5-P62-64', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, '29', '5', '01/02/2021', 'Narsinha Pandurang Parab alias Narcinva Panduronga Porobo, alias Narsinha Parab alias Narsinh Pandurang Parab alias Narcinha Pandurang Parab alias Narcinha Pundurang Porob ', 'Rukmini alias Indumati N. Parab, aias Rukmini alias Indumati N. Porob, alias Rukmini alias Indumati N. Prabhu', 'Collem', 'South Goa', 'Dharbandora', '69-71', '5', 'DHB-SUCCESSION5-P69-71', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, '30', '6', '27-07-2022', 'Ema Jezuina Sequeira ', '', 'Dabolim', 'North Goa', 'Mormugao', '06-May', '4', 'DHB-SUCCESSION6-P5-6', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, '30', '6', '27-07-2022', 'Gorgonio Joaquim Aleixo Pereira', '', 'Dabolim', 'North Goa', 'Mormugao', '06-May', '', 'DHB-SUCCESSION6-P5-6', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, '31', '6', '12/01/2023', 'Shreya Santosh Naik', '', 'Pilliem', 'South Goa', 'Dharbandora', '08-Jul', '4', 'DHB-SUCCESSION6-P7-8', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, '31', '6', '12/01/2023', 'Shradha Pranav Salgaonkar ', '', 'Vasco da gama', 'North Goa', 'Mormugao', '08-Jul', '', 'DHB-SUCCESSION6-P7-8', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, '31', '6', '12/01/2023', 'Pranav Umesh Salgaonkar ', '', 'Vasco da gama', 'North Goa', 'Mormugao', '08-Jul', '', 'DHB-SUCCESSION6-P7-8', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, '32', '6', '27-01-2023', 'Celina Marcelina Mascarenhas ', '', 'Sanquelim', 'North Goa', 'Bicholim', '10-Sep', '3', 'DHB-SUCCESSION6-P9-10', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, '32', '6', '27-01-2023', 'Manuel Patric D\'souza ', '', 'Sanquelim', 'North Goa', 'Bicholim', '10-Sep', '', 'DHB-SUCCESSION6-P9-10', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, '33', '6', '', 'Cancelled', '', '', '', '', '16-18', '6', 'DHB-SUCCESSION6-P16-18', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, '34', '6', '06/09/2023', 'Gulabi Gaocar alias Laxmi Pundalik Sawant ', '', 'Marcela', 'North Goa', 'Ponda', '19-24', '11', 'DHB-SUCCESSION6-P19-24', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, '34', '6', '06/09/2023', 'Sanjay Pundalik Sawant', '', 'Marcela', 'North Goa', 'Ponda', '19-24', '', 'DHB-SUCCESSION6-P19-24', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, '35', '6', '11/09/2023', 'Smita Sadashiv Sane alias Meghana Deepak Marathe ', '', 'Borde', 'North Goa', 'Bicholim', '24-25', '3', 'DHB-SUCCESSION6-P24-25', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, '35', '6', '11/09/2023', 'Deepak P. Marathe ', '', 'Borde', 'North Goa', 'Bicholim', '24-25', '', 'DHB-SUCCESSION6-P24-25', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, '36', '6', '', 'Evaresto Pedro Manuel Fernandes', 'Anna Maria Siqueira ', 'Dabal', 'South Goa', 'Dharbandora', '33-34', '3', 'DHB-SUCCESSION6-P33-34', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `succession`
--

CREATE TABLE `succession` (
  `id` int(11) NOT NULL,
  `sl_no` varchar(255) DEFAULT NULL,
  `book_no` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `interested_party` varchar(255) DEFAULT NULL,
  `village_name` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `taluk` varchar(255) DEFAULT NULL,
  `page_no` varchar(255) DEFAULT NULL,
  `page_count` varchar(255) DEFAULT NULL,
  `document_attached` varchar(255) DEFAULT NULL,
  `year_endorsement` varchar(255) DEFAULT NULL,
  `pdf_link` varchar(255) DEFAULT NULL,
  `center` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `succession`
--

INSERT INTO `succession` (`id`, `sl_no`, `book_no`, `date`, `interested_party`, `village_name`, `district`, `taluk`, `page_no`, `page_count`, `document_attached`, `year_endorsement`, `pdf_link`, `center`, `created_on`, `modified_on`) VALUES
(2, '1', '1', '', '', '', '', '', '', '', 'N', 'NA', 'DHB-SUCCESSION1-CERTIFICATEFRONT', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '2', '1', '08/10/2012', 'Pravin Sakharam Sane', 'Sacorda', 'South Goa', 'Dharbandora', '03-Jan', '6', 'N', 'NA', 'DHB-SUCCESSION1-P1-3', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '3', '1', '22-10-2012', 'Pearl Lucia Piedade Costa Pereira e Viegas ', 'Nuvem', 'South Goa', 'Salcete', '06-Apr', '5', 'N', 'NA', 'DHB-SUCCESSION1-P4-6', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '4', '1', '26-10-2012', 'Neville Santan D\'Souza ', 'Valpoi', 'North Goa', 'Sattari', '08-Jun', '6', 'N', 'NA', 'DHB-SUCCESSION1-P6-8', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '5', '1', '05/12/2012', 'Rajani Rajendra Naik', 'Pontelmol', 'South Goa', 'Quepem', '10-Aug', '5', 'N', 'NA', 'DHB-SUCCESSION1-P8-10', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '6', '1', '16-01-2013', 'Goculdassa Xete Verencar alias Gokuldas Vinayak Shet Verenkar', 'Pontelmol', 'South Goa', 'Quepem', '13-Oct', '6', 'N', 'NA', 'DHB-SUCCESSION1-P10-13', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '7', '1', '05/02/2013', 'Gopinath Ladu Gaonkar ', 'Mollem', 'South Goa', 'Dharbandora', '13-15', '13', 'Y', 'NA', 'DHB-SUCCESSION1-P13-15', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '8', '1', '05/03/2013', 'Leena Gomes', 'Betoda', 'North Goa', 'Ponda', '15-16', '4', 'N', 'NA', 'DHB-SUCCESSION1-P15-16', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '9', '1', '22-03-2013', 'Ramesh Martoba Dalvi alias Ramexa Mortoba Dolvi', 'Dhavali', 'North Goa', 'Ponda', '17-18', '4', 'N', 'NA', 'DHB-SUCCESSION1-P17-18', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '10', '1', '04/04/2013', 'Deepti Damodar Fotto @ Dijot Damodar Phadte ', 'Ponda', 'North Goa', 'Ponda', '19-21', '5', 'N', 'NA', 'DHB-SUCCESSION1-P19-21', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '11', '1', '05/04/2013', 'Rajesh Balchandra Kognur ', 'Shantinagar', 'North Goa', 'Ponda', '21-23', '5', 'N', 'NA', 'DHB-SUCCESSION1-P21-23', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '12', '1', '16-04-2013', 'Shiva V.G. Dessai alias Shiva Vishnu Gaonkar', 'Mollem', 'South Goa', 'Dharbandora', '24-26', '5', 'N', 'NA', 'DHB-SUCCESSION1-P24-26', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '13', '1', '16-04-2013', 'Pratim Shankar Gaukar', 'Mollem', 'South Goa', 'Dharbandora', '26-28', '5', 'N', 'NA', 'DHB-SUCCESSION1-P26-28', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '14', '1', '17-04-2013', 'Praxanta Tulxidas Naique, alias Prashant Tulshidas Naik', 'Shantinagar', 'North Goa', 'Ponda', '28-32', '8', 'N', 'NA', 'DHB-SUCCESSION1-P28-32', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '15', '1', '13-05-2013', 'Anuradha Arjun Prabhu', 'Mardol', 'North Goa', 'Ponda', '34-36', '4', 'N', 'NA', 'DHB-SUCCESSION1-P34-36', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '16', '1', '12/06/2013', 'Gabriel Rodrigues', 'Khandepar', 'North Goa', 'Ponda', '36-38', '5', 'N', 'NA', 'DHB-SUCCESSION1-P36-38', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '17', '1', '24-07-2013', 'Anand Fondu Gaokar alias Anand Phondu Gaonkar', 'Dabal', 'South Goa', 'Dharbandora', '39-42', '6', 'N', 'NA', 'DHB-SUCCESSION1-P39-42', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '18', '1', '31-07-2013', 'Raghoba Vishram Gaonkar ', '', '', '', '42-44', '6', 'N', 'NA', 'DHB-SUCCESSION1-P42-44', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '19', '1', '31-07-2013', 'Raghoba Vishram Gaonkar ', '', '', '', '44-46', '15', 'Y', 'NA', 'DHB-SUCCESSION1-P44-46', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '20', '1', '30-07-2013', 'Lacximicanta Upi Naique Dhana Gaunco alias Sulakshana Lacximicanta Naique', 'Priol', 'North Goa', 'Ponda', '46-49', '7', 'N', 'NA', 'DHB-SUCCESSION1-P46-49', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '21', '1', '30-07-2013', 'Raghoba Vishram Gaonkar ', '', '', '', '49-51', '10', 'Y', 'NA', 'DHB-SUCCESSION1-P49-51', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '22', '1', '21-08-2013', 'Suras Bicaro Chari', 'Dabal', 'South Goa', 'Dharbandora', '52-54', '30', 'Y', 'NA', 'DHB-SUCCESSION1-P52-54', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '23', '1', '28-08-2013', 'Darshan Kanchan Revankar', 'Durgabhat', 'North Goa', 'Ponda', '55-57', '8', 'Y', 'NA', 'DHB-SUCCESSION1-P55-57', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '24', '1', '06/09/2013', 'Walty Francis Fernandes', 'Colva', 'South Goa', 'Salcete', '57-59', '5', 'N', 'NA', 'DHB-SUCCESSION1-P57-59', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, '25', '1', '03/10/2013', 'Catarina Fernandes', 'Dabal', 'South Goa', 'Dharbandora', '59-62', '22', 'Y', 'NA', 'DHB-SUCCESSION1-P59-62', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, '26', '1', '21-10-2013', 'Swarupa Laximona Lohar', 'Kakoda', 'South Goa', 'Quepem', '62-64', '10', 'Y', 'NA', 'DHB-SUCCESSION1-P62-64', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, '27', '1', '08/11/2013', 'Mario Issac Fernandes', 'Calangute', 'North Goa', 'Bardez', '64-66', '12', 'Y', 'NA', 'DHB-SUCCESSION1-P64-66', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, '28', '1', '15-11-2013', 'Onomont Namdev Sawant alias Hanumant Sauto', 'Ribandar', 'North Goa', 'Tiswadi', '66-68', '28', 'Y', 'NA', 'DHB-SUCCESSION1-P66-68', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, '29', '1', '25-11-2013', '', '', '', '', '68-72', '8', 'N', 'NA', 'DHB-SUCCESSION1-P68-72', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, '30', '1', '26-11-2013', 'Mangesh Fatti Kundaikar also known as Mengo Gaudo', 'Cundaim', 'North Goa', 'Ponda', '72-74', '13', 'Y', '01/09/2014', 'DHB-SUCCESSION1-P72-74', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, '31', '1', '28-11-2013', 'Ramakant Katkar alias Ramacanta Ananta Catcar alias Ramacanta Ananta Katcar', 'Bandora', 'North Goa', 'Ponda', '74-77', '24', 'Y', 'NA', 'DHB-SUCCESSION1-P74-77', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, '32', '1', '20-12-2013', 'Sadanand Custoba Sawant Dessai', 'Shigao', 'South Goa', 'Sanguem', '77-79', '19', 'Y', 'NA', 'DHB-SUCCESSION1-P77-79', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, '33', '1', '23-12-2013', 'Santana Dias', 'Khandepar', 'North Goa', 'Ponda', '79-82', '19', 'Y', 'NA', 'DHB-SUCCESSION1-P79-82', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, '34', '1', '30-12-2013', 'Hiru Vithal Naik', 'Collem', 'South Goa', 'Dharbandora', '82-84', '12', 'Y', 'NA', 'DHB-SUCCESSION1-P82-84', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, '35', '1', '03/01/2014', 'Navanath Prabhu', 'Ilhas', 'North Goa', 'Tiswadi', '85-87', '38', 'Y', 'NA', 'DHB-SUCCESSION1-P85-87', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, '36', '1', '07/01/2014', 'Keshav Ramesh Gaonkar Sangodkar', 'Sangod', 'South Goa', 'Dharbandora', '87-89', '13', 'Y', 'NA', 'DHB-SUCCESSION1-P87-89', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, '37', '1', '14-01-2014', 'Baequelo Gonexa Gaocar @ Barkelo Ganesh Gaonkar', 'Bandol', 'South Goa', 'Dharbandora', '90-93', '12', 'Y', 'NA', 'DHB-SUCCESSION1-P90-93', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, '38', '1', '14-02-2014', 'Jani Krishna Gawcar also known as Jani Krishna Gaocar and even as Nirmala Namdev Gaudo ', 'Sanguem', 'South Goa', 'Sanguem', '93-95', '5', 'N', 'NA', 'DHB-SUCCESSION1-P93-95', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, '39', '1', '12/03/2014', 'Benedito Rodrigues', 'Raia', 'South Goa', 'Salcete', '95-98', '6', 'N', 'NA', 'DHB-SUCCESSION1-P95-98', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, '40', '1', '', '', '', '', '', '', '', '', '', 'DHB-SUCCESSION1-CERTIFICATEBACK', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, '41', '2', '', '', '', '', '', '', '', '', '', 'DHB-SUCCESSION2-CERTIFICATEFRONT', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, '42', '2', '12/03/2014', 'Camalacanta Murari Porobo Velguencar also known as Kamalakant Murari Prabhu Velguencar and even as Kamalakant Murari Tendulkar ', 'Shiroda', 'North Goa', 'Ponda', '03-Jan', '6', 'N', 'NA', 'DHB-SUCCESSION2-P1-3', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, '43', '2', '24-03-2014', 'Hanumanta Esvonta Vosta', 'Curchorem', 'South Goa', 'Quepem', '05-Mar', '4', 'N', 'NA', 'DHB-SUCCESSION2-P3-5', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, '44', '2', '24-03-2014', 'Sushma Kashinath Bandodkar alias Vrushali Tujpal Divani alias Vereeshali T. Diwani', 'Collem', 'South Goa', 'Dharbandora', '07-May', '4', 'N', 'NA', 'DHB-SUCCESSION2-P5-7', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, '45', '2', '28-03-2014', 'Shamesh C. Porob', 'Moira', 'North Goa', 'Bardez', '09-Jul', '6', 'N', 'NA', 'DHB-SUCCESSION2-P7-9', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, '46', '2', '16-04-2014', 'Prabhakar Panduronga Amsekar', '', '', '', '11-Oct', '4', 'N', 'NA', 'DHB-SUCCESSION2-P10-11', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, '47', '2', '23-04-2014', 'Sumitra Ramexa Rauto Dessai allias Sumoti Saunto Dessai alias Sumitra Ramesh Raut Dessai', 'Assolda', 'South Goa', 'Quepem', '13-Nov', '4', 'N', 'NA', 'DHB-SUCCESSION2-P11-13', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, '48', '2', '25-04-2014', 'Humberto Marcalairus Fernandes also known as Humberto Marcal Aires Fernandes', 'Ponda', 'North Goa', 'Ponda', '13-15', '5', 'N', '07/17/2014', 'DHB-SUCCESSION2-P13-15', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, '49', '2', '30-04-2014', 'Ashvita Ashok Patil', 'Ponda', 'North Goa', 'Ponda', '15-17', '5', 'N', 'NA', 'DHB-SUCCESSION2-P15-17', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, '50', '2', '06/05/2014', 'Emiliana Maria Conceicao Rodrigues also known as Emiliana Maria Conception Rodrigues and even as Emilina Maria Dias', 'Siolim', 'North Goa', 'Bardez', '18-20', '5', 'N', 'NA', 'DHB-SUCCESSION2-P18-20', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, '51', '2', '06/05/2014', 'Ana Francisca Braganca also known as Anna Francisco Braganza e Dias even as Ana Francisca Dias ', 'Mardol', 'North Goa', 'Ponda', '20-22', '5', 'N', 'NA', 'DHB-SUCCESSION2-P20-22', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, '52', '2', '09/05/2014', 'Sumitra Ramexa Rauto Dessai allias Sumoti Saunto Dessai alias Sumitra Ramesh Raut Dessai', 'Assolda', 'South Goa', 'Quepem', '22-25', '6', 'N', 'NA', 'DHB-SUCCESSION2-P22-25', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, '53', '2', '14-05-2014', 'Ramdas Ragu Gaocar alias Ramdas Raghu Gaonkar ', 'Bethora', 'North Goa', 'Ponda', '25-27', '5', 'N', 'NA', 'DHB-SUCCESSION2-P25-27', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, '54', '2', '14-05-2014', 'Gabriel Antonio de Serpa Ubaldino Saldanha also known as Gabriel Ubaldino Antonio de Serpa Saldanha', 'Ponda', 'North Goa', 'Ponda', '27-29', '5', 'N', 'NA', 'DHB-SUCCESSION2-P27-29', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, '55', '2', '16-05-2014', '', '', '', '', '29-31', '5', 'N', 'NA', 'DHB-SUCCESSION2-P29-31', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, '56', '2', '20-05-2014', 'Manuel Antonio Dias ', 'Santa Cruz', 'North Goa', 'Ponda', '31-33', '5', 'N', 'NA', 'DHB-SUCCESSION2-P31-33', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, '57', '2', '20-05-2014', 'Fatima Dias', 'Ponda', 'North Goa', 'Ponda', '33-35', '5', 'N', 'NA', 'DHB-SUCCESSION2-P33-35', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, '58', '2', '29-05-2014', 'Krishnadev Naguesh Naik Tari', 'Taripanto', 'South Goa', 'Sanguem', '37-38', '4', 'N', 'NA', 'DHB-SUCCESSION2-P37-38', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, '59', '2', '18-06-2014', 'Mulam Mahamad Muzaror @ Mulla Mahamud Issub', 'Nuvem', 'South Goa', 'Salcete', '38-40', '5', 'N', 'NA', 'DHB-SUCCESSION2-P38-40', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, '60', '2', '20-06-2014', 'Damiana Costa alias Damiana Pais', 'Kalay', 'South Goa', 'Sanguem', '40-42', '5', 'N', 'NA', 'DHB-SUCCESSION2-P40-42', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, '61', '2', '20-06-2014', 'Tukaram Vasant Sawant Dessai ', 'Kalay', 'South Goa', 'Sanguem', '42-45', '6', 'N', 'NA', 'DHB-SUCCESSION2-P42-45', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, '62', '2', '25-06-2014', 'Jayanti Naik', 'Shiroda', 'North Goa', 'Ponda', '45-46', '4', 'N', 'NA', 'DHB-SUCCESSION2-P45-46', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, '63', '2', '26-06-2014', 'Constancio Domingos Rodrigues', 'Shiroda', 'North Goa', 'Ponda', '46-48', '4', 'N', 'NA', 'DHB-SUCCESSION2-P46-48', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, '64', '2', '30-06-2014', 'Albertina Joana Fernandes', 'Collem', 'South Goa', 'Dharbandora', '48-50', '4', 'N', 'NA', 'DHB-SUCCESSION2-P48-50', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, '65', '2', '04/07/2014', 'Alex Alves', 'Loutolim', 'South Goa', 'Salcete', '50-53', '6', 'N', 'NA', 'DHB-SUCCESSION2-P50-53', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, '66', '2', '16-07-2014', 'Peter Felix Fernandes', 'Ponda', 'North Goa', 'Ponda', '53-57', '9', 'N', 'NA', 'DHB-SUCCESSION2-P53-57', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, '67', '2', '17-07-2014', 'Cicilia Mary Pais alias Cecila Francis George ', '', '', 'Maharashtra', '57-59', '4', 'N', 'NA', 'DHB-SUCCESSION2-P57-59', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, '68', '2', '18-07-2014', 'Walty Francis Fernandes', 'Colva', 'South Goa', 'Salcete', '59-60', '3', 'N', 'NA', 'DHB-SUCCESSION2-P59-60', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, '69', '2', '23-07-2014', 'Dinesh Upaso Gaonkar ', 'Kalay', 'South Goa', 'Sanguem', '60-62', '5', 'N', 'NA', 'DHB-SUCCESSION2-P60-62', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, '70', '2', '31-07-2014', 'Jeronimo Antonio Victor Pereira', 'Mapusa', 'North Goa', 'Bardez', '62-64', '38', 'Y', 'NA', 'DHB-SUCCESSION2-P62-64', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, '71', '2', '01/08/2014', 'Radhika Mohandas Nayak', 'Ponda', 'North Goa', 'Ponda', '65-66', '4', 'N', 'NA', 'DHB-SUCCESSION2-P65-66', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, '72', '2', '01/08/2014', 'Telma Mergetina De Sa', 'Betim', 'North Goa', 'Bardez', '67-68', '14', 'Y', 'NA', 'DHB-SUCCESSION2-P67-68', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, '73', '2', '01/08/2014', '', '', '', '', '68-70', '4', 'N', 'NA', 'DHB-SUCCESSION2-P68-70', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, '74', '2', '05/08/2014', 'Paresh Naik', 'Quepem', 'South Goa', 'Quepem', '70-72', '19', 'Y', 'NA', 'DHB-SUCCESSION2-P70-72', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, '75', '2', '11/09/2014', '', '', '', '', '72-73', '9', 'Y', 'NA', 'DHB-SUCCESSION2-P72-73', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, '76', '2', '', 'Cancelled', '', '', '', '74-75', '4', '', '', 'DHB-SUCCESSION2-P74-75', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, '77', '2', '17-09-2014', 'Manoj Kalidas Dessai', 'Dabal', 'South Goa', 'Dharbandora', '76-77', '13', 'Y', 'NA', 'DHB-SUCCESSION2-P76-77', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, '78', '2', '18-09-2014', 'Rupa Sudacar Xete Parcar', 'Dabal', 'South Goa', 'Dharbandora', '78-79', '6', 'Y', 'NA', 'DHB-SUCCESSION2-P78-79', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, '79', '2', '23-09-2014', 'Dolrich Nelly Fernandes ', 'Ponda', 'North Goa', 'Ponda', '79-81', '23', 'Y', 'NA', 'DHB-SUCCESSION2-P79-81', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, '80', '2', '25-09-2014', 'Custodio Xavier Cardoso alias Cardozo ', 'Quepem', 'South Goa', 'Quepem', '84-85', '10', 'Y', 'NA', 'DHB-SUCCESSION2-P84-85', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, '81', '2', '10/10/2014', 'Balkrishna Baby Gaunkar ', 'Thatode', 'South Goa', 'Dharbandora', '85-88', '33', 'Y', 'NA', 'DHB-SUCCESSION2-P85-88', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, '82', '2', '14-10-2014', '', '', '', '', '88-90', '10', 'Y', 'NA', 'DHB-SUCCESSION2-P88-90', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, '83', '2', '17-10-2014', 'Cletus Frias Heredia ', 'Ilhas', 'North Goa', 'Tiswadi', '90-91', '15', 'Y', 'NA', 'DHB-SUCCESSION2-P90-91', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, '84', '2', '21-10-2014', '', '', '', '', '95-96', '15', 'Y', '', 'DHB-SUCCESSION2-P95-96', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, '85', '2', '21-10-2014', '', '', '', '', '97-98', '11', 'Y', '', 'DHB-SUCCESSION2-P97-98', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, '86', '2', '', 'Cancelled', '', '', '', '98-100', '4', '', '', 'DHB-SUCCESSION2-P98-100', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, '87', '2', '', '', '', '', '', '', '', '', '', 'DHB-SUCCESSION2-CERTIFICATEBACK', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, '88', '3', '', '', '', '', '', '', '', '', '', 'DHB-SUCCESSION3-CERTIFICATEFRONT', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, '89', '3', '31-10-2014', 'Silvestre Francisco Benedito Ferrao', 'Dramapur', 'South Goa', 'Salcete', '03-Jan', '4', 'N', 'NA', 'DHB-SUCCESSION3-P1-3', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, '90', '3', '31-10-2014', '', '', '', '', '04-Mar', '4', 'N', 'NA', 'DHB-SUCCESSION3-P3-4', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, '91', '3', '05/01/2015', 'Gurudassa Gaocar ', 'Collem', 'South Goa', 'Dharbandora', '08-Jun', '5', 'N', 'NA', 'DHB-SUCCESSION3-P6-8', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, '92', '3', '22-01-2015', 'Assis Vales', 'Agacaim', 'North Goa', 'Tiswadi', '12-Nov', '4', 'N', 'NA', 'DHB-SUCCESSION3-P11-12', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, '93', '3', '09/04/2015', 'Sajan Santosh Naik', 'Sanvordem', 'South Goa', 'Sanguem', '13-14', '4', 'N', 'NA', 'DHB-SUCCESSION3-P13-14', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, '94', '3', '09/04/2015', 'Arwinda Rama Naique', 'Ponda', 'North Goa', 'Ponda', '15-16', '4', 'N', 'NA', 'DHB-SUCCESSION3-P15-16', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, '95', '3', '', 'Cancelled', '', '', '', '17', '2', '', '', 'DHB-SUCCESSION3-P17', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, '96', '3', '28-04-2015', 'Aldrin Luis Dias', 'Cansaulim', 'South Goa', 'Salcete', '17-20', '6', 'N', 'NA', 'DHB-SUCCESSION3-P17-20', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, '97', '3', '29-04-2015', 'Siddhesh alias Ratnakar Balvandas Madkaikar ', 'Mardol', 'North Goa', 'Ponda', '20-21', '4', 'N', 'NA', 'DHB-SUCCESSION3-P20-21', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, '98', '3', '03/06/2015', 'Rama Venctexa Sinai Cuncoliencar ', 'Santa Cruz', 'North Goa', 'Ponda', '23-26', '8', 'N', 'NA', 'DHB-SUCCESSION3-P23-26', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, '99', '3', '08/01/2015', 'Mahanand Vishnu Golatkar alias Mahanand Vishnum Oble Golatker ', 'Parra', 'North Goa', 'Bardez', '27-28', '4', 'N', 'NA', 'DHB-SUCCESSION3-P27-28', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, '100', '3', '14-01-2016', 'Gauresh Rohidas Fadte', 'Valpoi', 'North Goa', 'Sattari', '30-31', '4', 'N', 'NA', 'DHB-SUCCESSION3-P30-31', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, '101', '3', '21-01-2016', 'Maria Leopoldina D\'Souza ', 'Chicalim', 'North Goa', 'Mormugao', '32-33', '4', 'N', 'NA', 'DHB-SUCCESSION3-P32-33', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, '102', '3', '08/02/2016', 'Alan Joe Fernandes', 'Cansaulim', 'South Goa', 'Salcete', '35-37', '5', 'N', 'NA', 'DHB-SUCCESSION3-P35-37', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, '103', '3', '10/02/2016', 'Gauri Devidas Sinai Surlacar', 'Farmagudi', 'North Goa', 'Ponda', '38-39', '5', 'N', 'NA', 'DHB-SUCCESSION3-P38-39', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, '104', '3', '19-02-2016', 'Cristina Cicilia Pereira alias Cecilia Rego', 'Merces', 'North Goa', 'Tiswadi', '40-42', '4', 'N', 'NA', 'DHB-SUCCESSION3-P40-42', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, '105', '3', '09/03/2016', 'Esvanta Visnum Naique Gauncar', 'Agonda', 'South Goa', 'Canacona ', '42-44', '5', 'N', 'NA', 'DHB-SUCCESSION3-P42-44', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, '106', '3', '18-03-2016', 'Laxminarayan Ramchandra Kamat', 'Rawanfond', 'South Goa', 'Salcete', '45-47', '27', 'Y', '04/26/2016', 'DHB-SUCCESSION3-P45-47', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, '107', '3', '28-03-2016', 'Dhavo Navto Zore', 'Collem', 'South Goa', 'Dharbandora', '48-49', '13', 'Y', 'NA', 'DHB-SUCCESSION3-P48-49', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, '108', '3', '31-03-2016', 'Ashok Bhaskar Umarye', 'Sada', 'North Goa', 'Mormugao', '50-52', '25', 'Y', 'NA', 'DHB-SUCCESSION3-P50-52', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, '109', '3', '12/04/2016', 'Pratap Naik', 'Sanvordem', 'South Goa', 'Sanguem', '54-56', '21', 'Y', 'NA', 'DHB-SUCCESSION3-P54-56', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, '110', '3', '13-04-2016', 'Malini Raghunath Sheteye Korgaonkar @ Malini Dinkar Ugvenkar ', 'Mapusa', 'North Goa', 'Bardez', '56-58', '13', 'Y', 'NA', 'DHB-SUCCESSION3-P56-58', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, '111', '3', '15-04-2016', 'Prabha Pandurang Talekar', 'Sancoale', 'North Goa', 'Bardez', '59-60', '8', 'Y', 'NA', 'DHB-SUCCESSION3-P59-60', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, '112', '3', '15-04-2016', 'Francisco Xavier Teles', 'Cortalim', 'South Goa', 'Salcete', '60-62', '16', 'Y', 'NA', 'DHB-SUCCESSION3-P60-62', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, '113', '3', '19-04-2016', 'Shalini Tukaram Naik', 'Collem', 'South Goa', 'Dharbandora', '62-64', '16', 'Y', 'NA', 'DHB-SUCCESSION3-P62-64', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, '114', '3', '25-04-2016', '', '', '', '', '65-68', '8', 'N', 'NA', 'DHB-SUCCESSION3-P65-68', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, '115', '3', '26-04-2016', 'Prasad Aikar', 'Mollem', 'South Goa', 'Dharbandora', '68-70', '4', 'N', 'NA', 'DHB-SUCCESSION3-P68-70', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, '116', '3', '03/05/2016', 'Sameer Salgaocar ', 'Chicalim', 'North Goa', 'Mormugao', '72-73', '15', 'Y', '06/09/2016', 'DHB-SUCCESSION3-P72-73', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, '117', '3', '21-06-2016', 'Maria Camelo', 'Goa Velha', 'North Goa', 'Tiswadi', '74-76', '56', 'Y', 'NA', 'DHB-SUCCESSION3-P74-76', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, '118', '3', '29-06-2016', 'Sandip Nilu Gaonkar ', 'Okamb', 'South Goa', 'Dharbandora', '77-78', '18', 'Y', 'NA', 'DHB-SUCCESSION3-P77-78', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, '119', '3', '05/07/2016', 'Yesso Budho Gaonkar ', 'Dabal', 'South Goa', 'Dharbandora', '79-80', '15', 'Y', 'NA', 'DHB-SUCCESSION3-P79-80', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, '120', '3', '11/07/2016', 'Anuja Kiran Vaidya ', 'Keri', 'North Goa', 'Ponda', '81-82', '9', 'Y', 'NA', 'DHB-SUCCESSION3-P81-82', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, '121', '3', '15-07-2016', 'Mahendra Mohan Dessai', 'Verna', 'South Goa', 'Salcete', '83-85', '46', 'Y', 'NA', 'DHB-SUCCESSION3-P83-85', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, '122', '3', '19-07-2016', 'Sayad Noor Mohamad ', 'Caranzalem', 'North Goa', 'Tiswadi', '86-87', '21', 'Y', 'NA', 'DHB-SUCCESSION3-P86-87', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, '123', '3', '', 'Cancelled', '', '', '', '88-89', '4', '', '', 'DHB-SUCCESSION3-P88-89', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, '124', '3', '28-07-2016', 'Bindesh Govind Khandeparkar', 'Collem', 'South Goa', 'Dharbandora', '90-92', '14', 'Y', 'NA', 'DHB-SUCCESSION3-P90-92', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, '125', '3', '04/08/2016', 'Pradip Vishnu Damle ', 'Tamsoda', 'South Goa', 'Dharbandora', '92-94', '5', 'N', 'NA', 'DHB-SUCCESSION3-P92-94', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, '126', '3', '10/08/2016', 'Deepak Naik', 'Dabal', 'South Goa', 'Dharbandora', '95-96', '11', 'Y', 'NA', 'DHB-SUCCESSION3-P95-96', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, '127', '4', '', '', '', '', '', '', '', '', '', 'DHB-SUCCESSION4-CERTIFICATEFRONT', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, '128', '4', '19-08-2016', 'Bharat Ramnata Prabhu Velguencar @ Bharat Ramnata Prabhu Velguemkar @ Bharat Prabhu Velguenkar', 'Fatorda', 'South Goa', 'Salcete', '05-Feb', '51', 'Y', 'NA', 'DHB-SUCCESSION4-P2-5', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, '129', '4', '23-09-2016', 'Rosy Fatima Mascarenhas', 'Collem', 'South Goa', 'Dharbandora', '07-Jun', '3', 'N', 'NA', 'DHB-SUCCESSION4-P6-7', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, '130', '4', '08/11/2016', 'Aurola Costa', 'Collem', 'South Goa', 'Dharbandora', '09-Jul', '16', 'Y', 'NA', 'DHB-SUCCESSION4-P7-9', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, '131', '4', '30-11-2016', 'Krutika Kedar Shirodkar alias Kruitika Kedar Shirodkar', 'Mapusa', 'North Goa', 'Bardez', '11-Sep', '17', 'Y', '03/02/2017', 'DHB-SUCCESSION4-P9-11', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, '132', '4', '05/12/2016', 'Sainath Prabhakar Bhagat', 'Mardol', 'North Goa', 'Ponda', '13-Nov', '4', 'N', 'NA', 'DHB-SUCCESSION4-P11-13', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, '133', '4', '08/12/2016', 'Ajit Sazroba Sardessai ', 'Caranzalem', 'North Goa', 'Tiswadi', '13-16', '6', 'N', '03/09/2017', 'DHB-SUCCESSION4-P13-16', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, '134', '4', '09/12/2016', 'Alfia Mendes', 'Goa Velha', 'North Goa', 'Tiswadi', '16-18', '5', 'N', '03/16/2017', 'DHB-SUCCESSION4-P16-18', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, '135', '4', '16-12-2016', 'Nilam Babani Gaude', 'Sancorda', 'South Goa', 'Dharbandora', '19-20', '4', 'N', 'NA', 'DHB-SUCCESSION4-P19-20', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, '136', '4', '26-12-2016', 'Shankhanath Laximan Gaunker', 'Panchwadi', 'North Goa', 'Ponda', '21-22', '31', 'Y', 'NA', 'DHB-SUCCESSION4-P21-22', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, '137', '4', '13-01-2017', 'Santosh Dattatray Mahajan', 'Tamsoda', 'South Goa', 'Dharbandora', '23-25', '6', 'N', '03/01/2017', 'DHB-SUCCESSION4-P23-25', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, '138', '4', '10/10/2017', 'Narcinva Naique alias Narcinva Savlo Naik alias Narshiva Savlo Naik', 'Collem', 'South Goa', 'Dharbandora', '37-38', '3', 'N', '11/27/2017', 'DHB-SUCCESSION4-P37-38', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, '139', '4', '', 'Cancelled', '', '', '', '39-40', '4', '', '', 'DHB-SUCCESSION4-P39-40', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, '140', '4', '22-11-2017', 'Lakshman Gowdar', 'Collem', 'South Goa', 'Dharbandora', '41-42', '4', 'N', '02/12/2018', 'DHB-SUCCESSION4-P41-42', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, '141', '4', '07/12/2017', 'Aba Yeshwant Dessai', 'Sancordem', 'South Goa', 'Dharbandora', '43-44', '4', 'N', '02/21/2018', 'DHB-SUCCESSION4-P43-44', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, '142', '4', '', 'Cancelled', '', '', '', '45', '2', '', '', 'DHB-SUCCESSION4-P45', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, '143', '4', '15-06-2018', 'Nitesh K. Gaunkar', 'Dabal', 'South Goa', 'Dharbandora', '46-47', '15', 'Y', '08/07/2018', 'DHB-SUCCESSION4-P46-47', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, '144', '4', '09/10/2019', 'Suraj Satyawan S. Bandekar ', 'Dabal', 'South Goa', 'Dharbandora', '48-49', '15', 'Y', '12/06/2019', 'DHB-SUCCESSION4-P48-49', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, '145', '5', '', '', '', '', '', '', '', '', '', 'DHB-SUCCESSION5-CERTIFICATEFRONT', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, '146', '5', '17-01-2020', 'Marcelina Deodita Rodrigues alias Marcelina Santiago ', 'Mollem', 'South Goa', 'Dharbandora', '05-Jan', '9', 'N', 'NA', 'DHB-SUCCESSION5-P1-5', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, '147', '5', '17-01-2020', 'Anita Janardhan Varconkar', '', '', '', '09-Jun', '7', 'N', '03/02/2020', 'DHB-SUCCESSION5-P6-9', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, '148', '5', '04/02/2020', 'Shubham Sandeep Desai ', 'Collem', 'South Goa', 'Dharbandora', '11-Sep', '5', 'N', '05/08/2020', 'DHB-SUCCESSION5-P9-11', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, '149', '5', '07/02/2020', 'Dnyaneshwar Tulshidas Naik', 'Pontelmol', 'South Goa', 'Quepem', '15-Dec', '8', 'N', 'NA', 'DHB-SUCCESSION5-P12-15', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, '150', '5', '21-02-2020', 'Sonali Prabhakar Amshekar', 'Margao', 'South Goa', 'Salcete', '20-21', '12', 'Y', 'NA', 'DHB-SUCCESSION5-P20-21', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, '151', '5', '03/03/2020', 'Aubrey Gregrory Almeida also known by other names, Aubrey Wilfred Almeida, Aubrey Almeida', '', '', 'Maharashtra', '27-29', '6', 'N', '06/12/2020', 'DHB-SUCCESSION5-P27-29', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, '152', '5', '17-03-2020', 'Netty Crista Gomes', 'Bandoli', 'South Goa', 'Dharbandora', '38-43', '72', 'Y', '07/27/2020', 'DHB-SUCCESSION5-P38-43', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, '153', '5', '18-03-2020', 'Prakash Tukaram Verekar ', '', '', 'Maharashtra', '44-46', '59', 'Y', '06/16/2020', 'DHB-SUCCESSION5-P44-46', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, '154', '5', '15-05-2020', 'Keshav Mohan Sawant', 'Sancordem', 'South Goa', 'Dharbandora', '46-49', '32', 'Y', '07/13/2020', 'DHB-SUCCESSION5-P46-49', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, '155', '5', '27-05-2020', 'Balappa Jamuni ', 'Codli', 'South Goa', 'Dharbandora', '49-52', '14', 'Y', '07/16/2020', 'DHB-SUCCESSION5-P49-52', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, '156', '5', '10/06/2020', 'Abhay Anil Nayak ', 'Curti', 'North Goa', 'Ponda', '52-55', '15', 'Y', '07/28/2020', 'DHB-SUCCESSION5-P52-55', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, '157', '5', '20-07-2020', 'Octaviano Antonio Valentino Fernandes', 'Dabal', 'South Goa', 'Dharbandora', '55-58', '12', 'Y', '09/07/2020', 'DHB-SUCCESSION5-P55-58', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, '158', '5', '28-07-2020', 'Shankar B. Gaonkar ', 'Dabal', 'South Goa', 'Dharbandora', '59-61', '17', 'Y', '10/06/2020', 'DHB-SUCCESSION5-P59-61', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, '159', '5', '07/09/2020', 'Panduronga Boto Upade also known as Pandurang Ganesh Upadhye alias Pandurang Upadhye ', 'Pilliem', 'South Goa', 'Dharbandora', '64-66', '13', 'Y', '10/26/2020', 'DHB-SUCCESSION5-P64-66', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, '160', '5', '21-10-2020', 'Babuso Arun Gaonkar alias Babuso Arun Gaonkar ', 'Dabal', 'South Goa', 'Dharbandora', '66-69', '16', 'Y', '12/16/2020', 'DHB-SUCCESSION5-P66-69', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, '161', '5', '', 'Cancelled', '', '', '', '71-73', '5', '', '', 'DHB-SUCCESSION5-P71-73', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, '162', '5', '08/02/2021', 'Vishant Ranganath Kandeparcar ', 'Dabal', 'South Goa', 'Dharbandora', '74-77', '33', 'Y', '06/07/2021', 'DHB-SUCCESSION5-P74-77', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, '163', '5', '30-07-2021', 'Ketan Santosh Masurkar ', 'Collem', 'South Goa', 'Dharbandora', '77-79', '9', 'Y', '09/15/2021', 'DHB-SUCCESSION5-P77-79', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, '164', '5', '17-09-2021', 'Sushant Shivrai Sawant Dessai', 'Dabal', 'South Goa', 'Dharbandora', '80-83', '8', 'N', '11/12/2021', 'DHB-SUCCESSION5-P80-83', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, '165', '5', '27-09-2021', 'Ritesh Suresh Mapari', 'Collem', 'South Goa', 'Dharbandora', '83-86', '12', 'Y', '12/09/2021', 'DHB-SUCCESSION5-P83-86', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, '166', '5', '29-09-2021', 'Pradeep Sadashive Gaonkar', 'Dabal', 'South Goa', 'Dharbandora', '86-88', '12', 'Y', '11/22/2021', 'DHB-SUCCESSION5-P86-88', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, '167', '5', '30-09-2021', 'Manoj Pandurang Upadhye', 'Pilliem', 'South Goa', 'Dharbandora', '89-91', '14', 'Y', '11/22/2021', 'DHB-SUCCESSION5-P89-91', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, '168', '5', '22-10-2021', 'Arica Isabel Fernandes', 'Mollem', 'South Goa', 'Dharbandora', '91-94', '11', 'Y', '12/30/2021', 'DHB-SUCCESSION5-P91-94', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, '169', '5', '01/04/2022', 'Eduardo Bartolomeu Sequeira ', 'Collem', 'South Goa', 'Dharbandora', '94-97', '11', 'Y', '06/18/2022', 'DHB-SUCCESSION5-P94-97', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, '170', '5', '19-05-2022', 'Cladroy Anthony D\'costa ', 'Collem', 'South Goa', 'Dharbandora', '97-100', '15', 'Y', '07/05/2022', 'DHB-SUCCESSION5-P97-100', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, '171', '5', '', '', '', '', '', '', '', '', '', 'DHB-SUCCESSION5-CERTIFICATEBACK', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, '172', '6', '', '', '', '', '', '', '', '', '', 'DHB-SUCCESSION6-CERTIFICATEFRONT', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, '173', '6', '14-06-2022', 'Oscar Alipus Raposo ', 'Dabal', 'South Goa', 'Dharbandora', '04-Jan', '13', 'Y', '08/03/2022', 'DHB-SUCCESSION6-P1-4', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, '174', '6', '02/08/2023', 'Hema Hari Apte alias Hema Hari Apate alias Nirmala Dinkar Damle', 'Tamsoda', 'South Goa', 'Dharbandora', '13-Oct', '23', 'Y', '10/10/2023', 'DHB-SUCCESSION6-P10-13', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, '175', '6', '', 'Cancelled', '', '', '', '13-15', '5', '', '', 'DHB-SUCCESSION6-P13-15', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, '176', '6', '11/09/2023', 'Tukaram Krishnanath Gaonkar', 'Gurkhem', 'South Goa', 'Dharbandora', '26-28', '8', 'Y', '11/13/2023', 'DHB-SUCCESSION6-P26-28', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, '177', '6', '11/09/2023', 'Vivek Tulshidas Dessai alias Vivekanand Tulshidas Satpalkar', 'Collem', 'South Goa', 'Dharbandora', '28-32', '22', 'Y', '11/20/2023', 'DHB-SUCCESSION6-P28-32', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, '178', '6', '', 'Cancelled', '', '', '', '34-36', '4', '', '', 'DHB-SUCCESSION6-P34-36', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, '179', '6', '15-01-2024', 'Sumedha Suresh Kalekar ', 'Aglote', 'South Goa', 'Dharbandora', '36-38', '13', 'Y', '03/27/2024', 'DHB-SUCCESSION6-P36-38', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, '180', '6', '23-01-2024', 'Ganpat Vishnu Patil', 'Sancordem', 'South Goa', 'Dharbandora', '39-41', '19', 'Y', '03/26/2024', 'DHB-SUCCESSION6-P39-41', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, '181', '6', '27-02-2024', 'Julieta Maria do Ceu Fernandes', 'Collem', 'South Goa', 'Dharbandora', '42-45', '26', 'Y', '04/24/2024', 'DHB-SUCCESSION6-P42-45', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, '182', '6', '18-03-2024', 'Manohar Ghansham Gaonkar', 'Davkond ', 'South Goa', 'Dharbandora', '45-48', '16', 'Y', '05/16/2024', 'DHB-SUCCESSION6-P45-48', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, '183', '6', '', '', '', '', '', '', '', '', '', 'DHB-SUCCESSION6-CERTIFICATEBACK', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `center` varchar(255) DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `password`, `role`, `center`, `added_by`, `created_on`, `modified_on`) VALUES
(1, 'AdminG2320', 'Admin@gmail.com', NULL, 'Admin@2023', 'SuperAdmin', NULL, NULL, '2023-11-18 10:54:52', '2023-11-18 10:54:52'),
(5, 'Dharbandora', 'dharbandora@gmail.com', '9876543210', 'Dharbandora', 'Admin', 'Dharbandora', '1', '2024-07-08 17:45:51', '2024-07-08 18:04:25'),
(6, 'Canacona', 'canacona@gmail.com', '9876543120', 'Canacona', 'Admin', 'Canacona', '1', '2024-07-08 18:20:38', '2024-07-08 18:20:38'),
(7, 'darbondar', 'darbondaruser@gmail.com', '8550812238', 'darbondar', 'User', 'Dharbandora', '5', '2024-07-23 19:00:03', '2024-07-23 19:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `wills`
--

CREATE TABLE `wills` (
  `id` int(11) NOT NULL,
  `sl_no` varchar(255) DEFAULT NULL,
  `book_no` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `name_of_testator` varchar(255) DEFAULT NULL,
  `name_of_testatrix` varchar(255) DEFAULT NULL,
  `village_name` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `taluk` varchar(255) DEFAULT NULL,
  `page_no` varchar(255) DEFAULT NULL,
  `page_count` varchar(255) DEFAULT NULL,
  `endorsement` varchar(255) DEFAULT NULL,
  `pdf_link` varchar(255) DEFAULT NULL,
  `center` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wills`
--

INSERT INTO `wills` (`id`, `sl_no`, `book_no`, `date`, `name_of_testator`, `name_of_testatrix`, `village_name`, `district`, `taluk`, `page_no`, `page_count`, `endorsement`, `pdf_link`, `center`, `created_on`, `modified_on`) VALUES
(2, '1', '1', '', 'CERTIFICATE FRONT', '', '', '', '', '', '1', '', 'DHB-WILLS1-CERTIFICATEFRONT', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '2', '1', '08/05/2013', 'Shrikant Vishnu Sane', '', 'Sancorda', 'South Goa', 'Dharbandora', '03-Jan', '4', 'No', 'DHB-WILLS1-P1-3', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '3', '1', '08/05/2013', '', 'Suvarna Shrikant Sane', 'Sancorda', 'South Goa', 'Dharbandora', '05-Mar', '5', 'No', 'DHB-WILLS1-P3-5', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '4', '1', '08/05/2013', 'Shrikant Vishnu Sane', '', 'Sancorda', 'South Goa', 'Dharbandora', '06-May', '3', 'No', 'DHB-WILLS1-P5-6', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '5', '1', '13-11-2013', 'Ashok Babuso Dessai', '', 'Fatorpa', 'South Goa', 'Quepem', '07-Jun', '4', 'No', 'DHB-WILLS1-P6-7', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '6', '1', '09/05/2014', '', 'Sumitra alias Sumati Raut Dessai', 'Assolda', 'South Goa', 'Quepem', '11-Aug', '7', 'No', 'DHB-WILLS1-P8-11', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '7', '1', '22-01-2015', '', 'Luciana Fernandes', 'Sanvordem', 'South Goa', 'Dharbandora', '13-Nov', '5', 'No', 'DHB-WILLS1-P11-13', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '8', '1', '22-01-2015', 'Jose Francisco Roque Fernandes', '', 'Sanvordem', 'South Goa', 'Dharbandora', '14-16', '5', 'No', 'DHB-WILLS1-P14-16', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '9', '1', '', 'CANCELLED', '', '', '', '', '16-17', '4', '', 'DHB-WILLS1-P16-17', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '10', '1', '', 'CANCELLED', '', '', '', '', '18-19', '4', '', 'DHB-WILLS1-P18-19', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '11', '1', '15-02-2017', 'Shantaram Nagesh Shet Verenkar', '', 'Sancorda', 'South Goa', 'Dharbandora', '20-23', '8', 'No', 'DHB-WILLS1-P20-23', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '12', '1', '11/07/2017', 'Krishna Govind Gaunkar', '', 'Dharbandora', 'South Goa', 'Dharbandora', '24-28', '9', 'No', 'DHB-WILLS1-P24-28', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '13', '1', '11/07/2017', '', 'Beby Krishna Gaunkar', 'Dharbandora', 'South Goa', 'Dharbandora', '28-32', '9', 'No', 'DHB-WILLS1-P28-32', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '14', '1', '', 'CERTIFICATE BACK', '', '', '', '', '', '1', '', 'DHB-WILLS1-CERTIFICATEBACK', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '15', '2', '', 'CERTIFICATE FRONT', '', '', '', '', '', '1', '', 'DHB-WILLS2-CERTIFICATEFRONT', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '16', '2', '26-02-2020', 'Sucdo Gaonkar alias Sukdo Bodko Gaonkar alias Sukado Bodako Gaonkar', '', 'Kirlapal', 'South Goa', 'Dharbandora', '06-Jan', '11', 'No', 'DHB-WILLS2-P1-6', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '17', '2', '26-02-2020', '', 'Bayulem Sadasiva Gawde alias Bayulem Sucdo Gaonkar alias Bayula Sukdo Gaonkar', 'Kirlapal', 'South Goa', 'Dharbandora', '11-Jul', '9', 'No', 'DHB-WILLS2-P7-11', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '18', '2', '26-02-2020', 'Babli Gaunkar alias Babli Budkco Gaunkar alias Babli Bodako Gaunkar', '', 'Kirlapal', 'South Goa', 'Dharbandora', '16-Dec', '9', 'No', 'DHB-WILLS2-P12-16', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '19', '2', '24-06-2020', 'Mahesh Ramnata Velguencar alias Maesha Ramnata Prabhu Velguencar alias Mahesh Prabhu Velgekar', '', 'Dabal', 'South Goa', 'Dharbandora', '16-18', '5', 'No', 'DHB-WILLS2-P16-18', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '20', '2', '24-06-2020', 'Ramexa Ramnata Prabhu Velguencar alias Ramesh Prabhu Velgekar', '', 'Dabal', 'South Goa', 'Dharbandora', '19-21', '5', 'No', 'DHB-WILLS2-P19-21', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '', '2', '', 'CANCELLED', '', '', '', '', '21', '1', '', 'DHB-WILLS2-P21', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '21', '2', '29-10-2020', '', 'Sundari Mairenkar alias Sundari Mayenkar', 'Collem', 'South Goa', 'Dharbandora', '21-26', '10', 'No', 'DHB-WILLS2-P21-26', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '22', '2', '10/12/2020', '', 'Isabel Dcosta', 'Collem', 'South Goa', 'Dharbandora', '26-28', '4', 'No', 'DHB-WILLS2-P26-28', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '23', '2', '', 'CANCELLED', '', '', '', '', '28-29', '2', 'No', 'DHB-WILLS2-P28-29', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, '24', '2', '01/02/2021', 'Narsinha Pandurang Parab alias Narcinva Panduronga Porobo alias Narsinha Parab alias Narcinha Pandurang Parab alias Narsinha Parab alias Narsinh Pandurang Parab alias Narcinha Pandurang Porob', '', 'Collem', 'South Goa', 'Dharbandora', '29-32', '7', 'No', 'DHB-WILLS2-P29-32', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, '25', '2', '01/02/2021', '', 'Rukmini alias Indumati N.Parab alias Rukmini alias Indumati N.Porob alias Rukmini alias Indumati N Prabhu', 'Collem', 'South Goa', 'Dharbandora', '33-36', '8', 'No', 'DHB-WILLS2-P33-36', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, '26', '2', '05/02/2021', '', 'Gopika Tolio Gaonkar', 'Mollem', 'South Goa', 'Dharbandora', '36-39', '7', 'No', 'DHB-WILLS2-P36-39', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, '27', '2', '19-03-2021', '', 'Deudita Margarite Fernandes alias Deodita Margarita Rodrigues alias Margareta Caitan Fernandes', 'Collem', 'South Goa', 'Dharbandora', '40-42', '5', 'No', 'DHB-WILLS2-P40-42', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, '28', '2', '09/06/2021', '', 'Anandi Ranganath Khandeparkar alias Anandi Rogunata Candeaparcar alias Vassanti Xamba Pednencar', 'Dabal', 'South Goa', 'Dharbandora', '42-46', '9', 'No', 'DHB-WILLS2-P42-46', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, '29', '2', '02/09/2021', '', 'Ahilyabai Putu Dessai', 'Sancordem', 'South Goa', 'Dharbandora', '47-51', '9', 'No', 'DHB-WILLS2-P47-51', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, '30', '2', '27-09-2021', '', 'Kondi Thako Rekada', 'Collem', 'South Goa', 'Dharbandora', '51-55', '9', 'No', 'DHB-WILLS2-P51-55', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, '31', '2', '12/07/2022', '', 'Lata F Bhende', 'Pilliem', 'South Goa', 'Dharbandora', '55-57', '4', 'No', 'DHB-WILLS2-P55-57', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, '32', '2', '10/10/2022', '', 'Jaya Shivram Naik', 'Collem', 'South Goa', 'Dharbandora', '57-61', '9', 'No', 'DHB-WILLS2-P57-61', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, '33', '2', '29-03-2023', '', 'Rufina Diniz', 'Collem', 'South Goa', 'Dharbandora', '61-65', '8', 'No', 'DHB-WILLS2-P61-65', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, '34', '2', '11/05/2023', '', 'Urmila Umesh Naik', 'Collem', 'South Goa', 'Dharbandora', '65-68', '7', 'No', 'DHB-WILLS2-P65-68', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, '35', '2', '15-05-2023', '', 'Yashoda Yesso Gaonkar', 'Sancordem', 'South Goa', 'Dharbandora', '69-72', '8', 'No', 'DHB-WILLS2-P69-72', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, '36', '2', '12/09/2023', '', 'Inacina Costa alias Inacinha Costa', 'Collem', 'South Goa', 'Dharbandora', '73-74', '4', 'No', 'DHB-WILLS2-P73-74', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, '37', '2', '', 'CANCELLED', '', '', '', '', '75', '1', '', 'DHB-WILLS2-P75', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, '38', '2', '16-11-2023', 'Evaresto Pedro Manoel Fernandes', '', 'Kirlapal', 'South Goa', 'Dharbandora', '75-77', '5', 'No', 'DHB-WILLS2-P75-77', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, '39', '2', '16-11-2023', '', 'Anna Maria Siqueira', 'Kirlapal', 'South Goa', 'Dharbandora', '78-80', '5', 'No', 'DHB-WILLS2-P78-80', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, '40', '2', '23-11-2023', '', 'Subadra Arjun Adarakar', 'Collem', 'South Goa', 'Dharbandora', '80-84', '9', 'No', 'DHB-WILLS2-P80-84', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, '41', '2', '10/04/2024', '', 'Rosa Maria Silveira', 'Kirlapal', 'South Goa', 'Dharbandora', '84-88', '8', 'No', 'DHB-WILLS2-P84-88', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, '42', '2', '', 'CERTIFICATE BACK', '', '', 'South Goa', 'Dharbandora', '', '1', 'No', 'DHB-WILLS2-CERTIFICATEBACK', 'Dharbandora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, '43', '2', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adoption`
--
ALTER TABLE `adoption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `antinuptiac`
--
ALTER TABLE `antinuptiac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deeds`
--
ALTER TABLE `deeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relinquishment`
--
ALTER TABLE `relinquishment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `succession`
--
ALTER TABLE `succession`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wills`
--
ALTER TABLE `wills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adoption`
--
ALTER TABLE `adoption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `antinuptiac`
--
ALTER TABLE `antinuptiac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deeds`
--
ALTER TABLE `deeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `relinquishment`
--
ALTER TABLE `relinquishment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `succession`
--
ALTER TABLE `succession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wills`
--
ALTER TABLE `wills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
