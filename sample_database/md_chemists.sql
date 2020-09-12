-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2020 at 09:15 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `md_chemists`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `branch_location` varchar(255) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `tel_1` varchar(255) DEFAULT NULL,
  `tel_2` varchar(255) DEFAULT NULL,
  `tel_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_location`, `address`, `tel_1`, `tel_2`, `tel_3`) VALUES
(1, 'Branch#1', 'SPAR in Pepiliyana', 'No 97, Pepiliyana road, Nedimala, Dehiwala ', '+94 711342801', '+94 112519154', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `user_id`) VALUES
(0, NULL, NULL),
(87, 'Diclofenac', 1),
(88, 'Omeprazole', 0),
(89, 'Losartan', 0),
(90, 'Amox + Clav', 0),
(91, 'Pantoprazole', 0),
(92, 'Clopidogrel', 0),
(93, 'Sitagliptin', 0),
(94, 'Mefenamic Acid', 0),
(95, 'Etoricoxib', 0),
(96, 'betahistine', 0),
(97, 'Rosuvastatin', 0),
(98, 'Celecoxib', 0),
(99, 'Norethisterone', 0),
(100, 'ISMN', 0),
(101, 'Gliclazide', 0),
(102, 'Aspirine', 0),
(103, 'Metfomin', 0),
(104, 'Glucosomine', 1),
(105, 'Theophyline', 0),
(106, 'Orlistat', 0),
(107, 'Ketoprofen', 0),
(108, 'Sodium bicarbonate', 0),
(109, 'Sulphersalasine', 0),
(110, 'Rabeprazole', 0),
(111, 'Atenolol', 1),
(112, 'Baclofen', 1),
(113, 'Haematinic', 0),
(114, 'Clonazepam', 1),
(115, 'Erethromycin', 0),
(116, 'Clarethromycin', 0),
(117, 'Azithromycin', 0),
(118, 'Chlorpheniramine', 1),
(119, 'Fexofenedine', 0),
(120, 'Ranitidine', 0),
(121, 'Famotidine', 0),
(122, 'Cyproheptadine', 0),
(123, 'Co-trimoxazole', 0),
(124, 'Ondansetron', 0),
(125, 'Doxycycline', 0),
(126, 'Bupropion', 0),
(127, 'Valproate Sodium', 0),
(128, 'Toperamate', 0),
(129, 'Lamotrigine', 0),
(130, 'Sertraline', 0),
(131, 'Cetirzine', 0),
(132, 'Citalopram', 0),
(133, 'Alprazolan', 0),
(134, 'Lithium Carbonate', 0),
(135, 'Mirtazapine', 0),
(136, 'Olanzapine', 0),
(137, 'Clonazapine', 0),
(138, 'Fluoxetine', 0),
(139, 'Paroxetine', 1),
(140, 'Levodopa', 0),
(141, 'Venlafaxine', 0),
(142, 'Cefalexine', 0),
(143, 'Quetiapine', 0),
(144, 'Oxcarbazepine', 0),
(145, 'Bisacodyl', 0),
(146, 'Acyclovir', 0),
(147, 'Albuterol', 0),
(148, 'Amiodarone', 1),
(149, 'Amitriptyline', 0),
(150, 'Amlodipine', 0),
(151, 'Anastrazole', 0),
(152, 'Atorvastatine', 0),
(153, 'Prosuvastatin', 0),
(154, 'Azathioprine', 0),
(155, 'Bisoprolol', 0),
(156, 'HCT', 0),
(157, 'Hydroxychloroquinine', 0),
(158, 'Candesartan', 0),
(159, 'Enalapril', 0),
(160, 'Captopril', 0),
(161, 'Carbamazepine', 0),
(162, 'Carbidopa', 0),
(163, 'Carvedilol', 0),
(164, 'Cevimeline', 0),
(165, 'Chlordiazepoxide', 0),
(166, 'Chlopromazine', 0),
(167, 'Cholestyramine', 0),
(168, 'Clonidine', 1),
(169, 'Clotrimazole', 0),
(170, 'Diazepam', 0),
(171, 'Digoxin', 0),
(172, 'Diltiazem', 0),
(173, 'Esomeprazole', 0),
(174, 'Fenofibrate', 0),
(175, 'Ferrous Sulfate', 0),
(176, 'Finasteride', 0),
(177, 'Folic acid', 0),
(178, 'Domperidone', 1),
(179, 'Metoprolol', 0),
(180, 'Vitamins', 0),
(181, 'Telmisartan', 0),
(182, 'Indapamide', 0),
(183, 'Ranolazine', 0),
(184, 'Glimepiride', 0),
(185, 'Fusidic Acid', 0),
(186, 'Salbutamol', 0),
(187, 'Salmeterol', 0),
(188, 'Terbutaline', 1),
(189, 'Desogestrel + ethnylestradiol', 0),
(190, 'Flunarizine', 0),
(191, 'Cloxacllin', 0),
(192, 'Pioglitazone', 1),
(193, 'Prednisolone', 0),
(194, 'Itraconazole', 0),
(196, 'Ketotifen', 0),
(197, 'Montelukast', 0),
(198, 'Loratadine', 0),
(199, 'Desloratadine', 0),
(200, 'Meloxicam', 1),
(201, 'Duloxetine', 1),
(202, 'Vildagliptin', 0),
(203, 'Escitalopram', 0),
(204, 'Zolpidem', 0),
(205, 'Naproxen', 0),
(206, 'Tizanidine', 0),
(207, 'Levocetirizine', 0),
(208, 'Piroxicam', 0),
(209, 'GTN', 0),
(210, 'Fluconazole', 1),
(211, 'Risperidone', 0),
(212, 'Benzoyl Peroxide', 0),
(213, 'Cefuroxime', 1),
(214, 'Nifeditine', 1),
(215, 'Griseofulbin', 0),
(216, 'Carbocistein', 0),
(217, 'Tranexamic Acid', 0),
(218, 'Gabapentin', 1),
(219, 'Ezetimibe', 0),
(220, 'Nebivolol', 0),
(221, 'Perindopryl', 0),
(222, 'Ivabradine', 1),
(223, 'Acarbose', 0),
(224, 'Ethinylestradiol', 1),
(225, 'Budesonide', 1),
(226, 'Phenytoin', 0),
(227, 'Frusemide', 0),
(228, 'Ramipril', 0),
(229, 'Clordiazepoxide', 0),
(230, 'Empagliflozine', 0),
(231, 'Tamsulosin', 0),
(232, 'Metronidazole', 0),
(233, 'Alendronate', 0),
(234, 'Indomethacin', 1),
(235, 'Amoxicillin', 1),
(236, 'Tetracycline', 1),
(237, 'Aceclofenac', 0),
(238, 'Serratiopeptidase', 0),
(239, 'Levothyroxine', 0),
(240, 'Simvastatin', 0),
(241, 'Dosulepin', 0),
(242, 'Levofloxacin', 1),
(243, 'Pregabalin', 0),
(244, 'Methylprednisolone', 0),
(245, 'Albendazole', 0),
(246, 'Pizotifen', 0),
(247, 'Daclofen', 0),
(248, 'Dydrogesterone', 0),
(249, 'Methylphenidate', 0),
(250, 'Bromazepam', 0),
(251, 'Levonorgestrel', 1),
(252, 'Sildenafil', 0),
(253, 'Pyrantel pamoate', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) DEFAULT NULL,
  `parent_cat_id` int(11) UNSIGNED ZEROFILL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `parent_cat_id`, `user_id`) VALUES
(0, NULL, NULL, NULL),
(198, 'Antibiotics', 00000000000, 1),
(199, 'Antifungal', 00000000000, 1),
(200, 'CVS', 00000000000, 0),
(201, 'CNS', 00000000000, 0),
(202, 'GIT', 00000000000, 0),
(203, 'VITAMINS', 00000000000, 0),
(204, 'Vitamins', 00000000000, 0),
(205, 'Supplements', 00000000000, 0),
(206, 'Pain Killers', 00000000000, 0),
(207, 'DM', 00000000000, 0),
(208, 'Cream', 00000000000, 0),
(209, 'Lotion', 00000000000, 0),
(210, 'Lipid Lowering', 00000000200, 1),
(211, 'Hypertensive', 00000000200, 1),
(212, 'Respiratory', 00000000000, 0),
(213, 'Gel', 00000000000, 0),
(214, 'Ointments', 00000000000, 1),
(215, 'Antiplatelet', 00000000200, 1),
(216, 'Urinary track', 00000000000, 0),
(217, 'Devices', 00000000000, 0),
(218, 'Syrups', 00000000000, 0),
(219, 'Steroids', 00000000000, 1),
(220, 'Gastric', 00000000202, 0),
(221, 'Antihistomine', 00000000000, 0),
(222, 'Antiviral', 00000000000, 0),
(223, 'Sanitory', 00000000000, 0),
(224, 'PPI', 00000000202, 1),
(225, 'Suspension', 00000000000, 0),
(226, 'Inhaler', 00000000000, 0),
(227, 'Opthalmic', 00000000000, 1),
(228, 'Hormones', 00000000000, 0),
(229, 'Mouth Wash', 00000000000, 0),
(230, 'Nasal', 00000000000, 0),
(231, 'Powder External', 00000000000, 0),
(232, 'Ear', 00000000000, 0),
(233, 'Soap', 00000000000, 0),
(234, 'Milk Powders', 00000000205, 1),
(235, 'Lubricate', 00000000000, 1),
(236, 'Plasters', 00000000000, 1),
(237, 'Eye', 00000000000, 1),
(238, 'Suppositories', 00000000000, 0),
(239, 'Dermatology', 00000000000, 0),
(240, 'Coagulant', 00000000000, 0),
(241, 'Solution External', 00000000000, 1),
(242, 'Saline', 00000000000, 1),
(243, 'Solutions', 00000000000, 0),
(244, 'Toothpaste', 00000000000, 0),
(245, 'Arthritis', 00000000000, 0),
(246, 'Anti Parasitic', 00000000000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `phone` int(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nic` varchar(10) DEFAULT NULL,
  `registered_date` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `phone`, `email`, `nic`, `registered_date`) VALUES
(0, 'None', NULL, ' ', NULL, '2018-03-20 08:37:38'),
(1, 'Kamal', 711407405, '', '', '2020-08-22 11:10:09'),
(2, 'Mansha', 711326627, '', '', '2020-08-26 01:35:20'),
(3, 'Muditha', 777734999, '', '', '2020-08-27 10:14:06'),
(4, 'Sarath Kalyanaathne', 775891217, '', '', '2020-08-27 01:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `delete_log`
--

CREATE TABLE `delete_log` (
  `delete_log_id` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `delete_log`
--

INSERT INTO `delete_log` (`delete_log_id`, `time`, `details`, `user_id`) VALUES
(1, '2018-06-05 13:00:25', 'product_code_no :152818342438, product_name :Test, cat_name :LIGHTS AND ACCESSORIES, brand_name :Ground Audio, product_model_no :Test, supplier_name :Ground Audio, buying_price :100.00, selling_price :120.00, margin :20.00', 1),
(2, '2018-06-05 13:26:48', 'product_code_no :152818537806, product_name :test, cat_name :, brand_name :, product_model_no :, supplier_name : , buying_price :10.00, selling_price :20.00, margin :10.00', 1),
(3, '2018-06-05 16:38:26', 'product_code_no :152819408311, product_name :Test with image, cat_name :Effect lights, brand_name :NTS, product_model_no :, supplier_name :Lincoln, buying_price :500.00, selling_price :530.00, margin :30.00', 1),
(4, '2018-07-07 21:44:39', 'product_code_no :153011921435, product_name :test 4, cat_name :, brand_name :, product_model_no :, supplier_name : , buying_price :20.00, selling_price :22.00, margin :2.00', 1),
(5, '2018-07-08 01:03:55', 'product_code_no :153011770780, product_name :test 3, cat_name :LED parcans, brand_name :Max, product_model_no :, supplier_name : , buying_price :50.00, selling_price :50.00, margin :0.00', 1),
(6, '2018-07-08 01:03:55', 'product_code_no :153011638339, product_name :test 1, cat_name :LIGHTS AND ACCESSORIES, brand_name :NTS, product_model_no :asda, supplier_name : , buying_price :100.00, selling_price :120.00, margin :20.00', 1),
(7, '2018-07-09 09:09:14', 'product_code_no :153099220660, product_name :test 12, cat_name :, brand_name :, product_model_no :, supplier_name : , buying_price :520.00, selling_price :530.00, margin :10.00', 1),
(8, '2018-07-09 09:09:14', 'product_code_no :153099216329, product_name :test 10, cat_name :, brand_name :, product_model_no :, supplier_name : , buying_price :10.00, selling_price :10.00, margin :0.00', 1),
(9, '2018-07-09 09:09:14', 'product_code_no :153099219375, product_name :test 11, cat_name :, brand_name :, product_model_no :, supplier_name : , buying_price :12.00, selling_price :14.00, margin :2.00', 1),
(10, '2018-07-09 09:09:14', 'product_code_no :153011748235, product_name :test 2, cat_name :LIGHTS AND ACCESSORIES, brand_name :NTS, product_model_no :, supplier_name : , buying_price :20.00, selling_price :25.00, margin :5.00', 1),
(11, '2018-08-13 14:29:41', 'product_code_no :152819502817, product_name :Behringer Amp 1700w, cat_name :AMP, brand_name :Behringer, product_model_no :Behringer Amp 1700w, supplier_name :StrangersCMB, buying_price :38000.00, selling_price :48000.00, margin :10000.00', 2),
(12, '2018-08-13 15:22:58', 'product_code_no :153380328438, product_name :behringer 1700w, cat_name :, brand_name :Behringer, product_model_no :behringer 1700w, supplier_name :StrangersCMB, buying_price :48000.00, selling_price :38000.00, margin :-10000.00', 2),
(13, '2018-08-13 15:23:18', '', 0),
(14, '2019-11-30 11:36:42', 'product_code_no :153415061341, product_name :Behringer KM1700, cat_name :AMP, brand_name :Behringer, product_model_no :KM1700w, supplier_name :StrangersCMB, buying_price :30000.00, selling_price :40000.00, margin :10000.00', 11),
(15, '2019-11-30 11:36:42', 'product_code_no :152819539471, product_name :behringer Amp 2000w, cat_name :AMP, brand_name :Behringer, product_model_no :behringer Amp 2000w, supplier_name :StrangersCMB, buying_price :42500.00, selling_price :63000.00, margin :20500.00', 11),
(16, '2019-11-30 11:36:42', 'product_code_no :152843662379, product_name :Halogen Disco Light 75w, cat_name :Effect lights, brand_name :Ground Audio, product_model_no :Halogen Disco Light 75w, supplier_name :Ground Audio, buying_price :7000.00, selling_price :15000.00, margin :8000.00', 11),
(17, '2019-11-30 11:36:42', 'product_code_no :152990537868, product_name :Behringer UHF 501 FM Mic, cat_name :FM microphones, brand_name :Behringer, product_model_no :Behringer FM, supplier_name :Pettah, buying_price :5100.00, selling_price :10000.00, margin :4900.00', 11),
(18, '2019-11-30 11:36:42', 'product_code_no :153234051196, product_name :podium mic mx 418 pro, cat_name :MICROPHONES, brand_name :STR, product_model_no :podium podium mic mx 418 pro, supplier_name :StrangersCMB, buying_price :1200.00, selling_price :3000.00, margin :1800.00', 11),
(19, '2019-11-30 11:36:42', 'product_code_no :152827664275, product_name :Behringer FM Mic, cat_name :MICROPHONES, brand_name :Behringer, product_model_no :Behringer FM Mic, supplier_name :Baai, buying_price :4500.00, selling_price :7500.00, margin :3000.00', 11),
(20, '2019-11-30 11:36:42', 'product_code_no :152990560833, product_name :Kenwood Mic 2200, cat_name :MICROPHONES, brand_name :Kenwood, product_model_no :Kenwood Mic 2200, supplier_name :Pettah, buying_price :900.00, selling_price :2000.00, margin :1100.00', 11),
(21, '2019-11-30 11:36:42', 'product_code_no :153234069818, product_name :podium mic shure ED670, cat_name :MICROPHONES, brand_name :STR, product_model_no :podium mic shure ED670, supplier_name :StrangersCMB, buying_price :1200.00, selling_price :2000.00, margin :800.00', 11),
(22, '2019-11-30 11:36:42', 'product_code_no :152889417039, product_name :Kenwood Mic, cat_name :MICROPHONES, brand_name :Pettah Brand, product_model_no :Kenwood Mic, supplier_name :Baai, buying_price :700.00, selling_price :1500.00, margin :800.00', 11),
(23, '2019-11-30 11:36:42', 'product_code_no :152990631788, product_name :Shure Mic 418 Pro, cat_name :MICROPHONES, brand_name :Kenwood, product_model_no :Shure Mic 418 Pro, supplier_name :Pettah, buying_price :1000.00, selling_price :2000.00, margin :1000.00', 11),
(24, '2019-11-30 11:36:42', 'product_code_no :152819514140, product_name :Behringer Mixer CH4  X 1204, cat_name :MIXERS, brand_name :Behringer, product_model_no :Behringer Mixer CH4, supplier_name :StrangersCMB, buying_price :28000.00, selling_price :34600.00, margin :6600.00', 11),
(25, '2019-11-30 11:36:42', 'product_code_no :152889250013, product_name :Professional mixer 2channal, cat_name :MIXERS, brand_name :Pettah Brand, product_model_no :Professional mixer 2channal, supplier_name :Pettah, buying_price :7500.00, selling_price :11000.00, margin :3500.00', 11),
(26, '2019-11-30 11:36:42', 'product_code_no :152818984727, product_name :Behringer Mixer (xenyxx2222) CH8, cat_name :MIXERS, brand_name :Behringer, product_model_no :Behringer Mixer (xenyxx2222) CH8, supplier_name :Pettah, buying_price :37000.00, selling_price :48200.00, margin :11200.00', 11),
(27, '2019-11-30 11:36:42', 'product_code_no :153448405865, product_name :Reeloop console, cat_name :OTHERS, brand_name :NTS, product_model_no :RMP4, supplier_name :StrangersCMB, buying_price :50000.00, selling_price :75000.00, margin :25000.00', 11),
(28, '2019-11-30 11:36:42', 'product_code_no :152828741861, product_name :Sunlight  Suite 2, cat_name :OTHERS, brand_name :STR, product_model_no :Sunlight  Suite 2, supplier_name :StrangersCMB, buying_price :15000.00, selling_price :60000.00, margin :45000.00', 11),
(29, '2019-11-30 11:36:42', 'product_code_no :152818873483, product_name :Macky Thump, cat_name :Powered Speakers, brand_name :Pettah Brand, product_model_no :Macky Thump, supplier_name :Pettah, buying_price :53000.00, selling_price :65000.00, margin :12000.00', 11),
(30, '2019-11-30 11:36:42', 'product_code_no :153362163639, product_name :B&amp;C  TB 100 x 18inch, cat_name :Speakers - 18inch, brand_name :B &amp; C, product_model_no :B&amp;C  TB 100 x 18inch, supplier_name :Roshni B&amp;C, buying_price :30000.00, selling_price :42500.00, margin :12500.00', 11),
(31, '2019-11-30 11:36:42', 'product_code_no :152819663390, product_name :B&amp;C Speekers 18Inch, cat_name :Speakers - 18inch, brand_name :B &amp; C, product_model_no :B@C Speekers 18Inch, supplier_name :Roshni B&amp;C, buying_price :35000.00, selling_price :42500.00, margin :7500.00', 11),
(32, '2019-11-30 11:46:16', 'product_code_no :152844105681, product_name :Power Sokets Black, cat_name :, brand_name :, product_model_no :Power Sokets, supplier_name :, buying_price :75.00, selling_price :150.00, margin :75.00', 13),
(33, '2019-11-30 11:46:16', 'product_code_no :152844119821, product_name :Power Sorkets brown, cat_name :, brand_name :, product_model_no :Power Sorkets brown, supplier_name :, buying_price :200.00, selling_price :350.00, margin :150.00', 13),
(34, '2019-11-30 11:46:16', 'product_code_no :152913829404, product_name :440 DPH white, cat_name :, brand_name :, product_model_no :450 DPH, supplier_name :, buying_price :800.00, selling_price :1300.00, margin :500.00', 13),
(35, '2020-08-22 21:47:50', 'product_code_no :159811188351, product_name :VITACAP, cat_name :Antibiotics, brand_name :, product_model_no :VTAMINS, supplier_name :Baurs, buying_price :1000.00, selling_price :1050.00, margin :50.00', 1),
(36, '2020-08-22 21:48:02', '', 0),
(37, '2020-08-23 01:03:50', 'product_code_no :159811979337, product_name :test, cat_name :Antibiotics, brand_name :Diclofenac, product_model_no :, supplier_name : , buying_price :50.00, selling_price :70.00, margin :20.00', 1),
(38, '2020-08-23 01:03:50', 'product_code_no :159811740096, product_name :Augmentine 625, cat_name :Antibiotics, brand_name :Amox + Clav, product_model_no :, supplier_name :Baurs, buying_price :500.00, selling_price :600.00, margin :100.00', 1),
(39, '2020-08-23 01:03:50', 'product_code_no :159811761111, product_name :Claritek, cat_name :Antibiotics, brand_name :Clarethromycin, product_model_no :, supplier_name :Baurs, buying_price :100.00, selling_price :150.00, margin :50.00', 1),
(40, '2020-08-23 01:03:50', 'product_code_no :159812100495, product_name :likjiu, cat_name :CVS, brand_name :Diclofenac, product_model_no :, supplier_name : , buying_price :50.00, selling_price :70.00, margin :20.00', 1),
(41, '2020-08-27 00:50:27', 'product_code_no :159829660651, product_name :AX, cat_name :Antibiotics, brand_name :Amox + Clav, product_model_no :, supplier_name : , buying_price :10.00, selling_price :10.00, margin :0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `edit_log`
--

CREATE TABLE `edit_log` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `product_cat_id` int(11) DEFAULT NULL,
  `product_brand_id` int(11) DEFAULT NULL,
  `product_model_no` varchar(100) DEFAULT NULL,
  `product_code_no` varchar(100) DEFAULT NULL,
  `img_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `buying_price` decimal(10,2) DEFAULT NULL,
  `expenses` decimal(10,2) DEFAULT NULL,
  `selling_price` decimal(10,2) DEFAULT NULL,
  `availability` tinyint(1) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `offer_type_id` int(11) DEFAULT NULL,
  `offer_value` decimal(10,2) DEFAULT NULL,
  `discounted` decimal(10,2) DEFAULT NULL,
  `product_added_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `product_exp_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `product_condition_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `edit_log`
--

INSERT INTO `edit_log` (`product_id`, `product_name`, `product_desc`, `product_cat_id`, `product_brand_id`, `product_model_no`, `product_code_no`, `img_id`, `supplier_id`, `buying_price`, `expenses`, `selling_price`, `availability`, `tax_id`, `offer_type_id`, `offer_value`, `discounted`, `product_added_date`, `product_exp_date`, `user_id`, `product_condition_id`, `qty`, `branch_id`, `flag`) VALUES
(55, 'Stereo Silver Jack', '', 0, 0, 'Stereo Silver Jack', '152828523717', NULL, 0, '0.00', '150.00', '200.00', NULL, 0, 1, '0.00', '200.00', '2018-07-06 12:10:23', '2018-07-06 12:10:23', 2, 1, 99, 1, 1),
(54, 'Stereo  Gold Jack', '', 0, 0, 'Stereo  Gold Jack', '152828497371', NULL, 0, '0.00', '150.00', '200.00', NULL, 0, 1, '0.00', '0.00', '2018-07-06 12:10:23', '2018-07-06 12:10:23', 2, 1, 98, 1, 1),
(146, '450 DPH white', '', 0, 0, '450 DPH', '152913829404', NULL, 0, '0.00', '500.00', '1300.00', NULL, 0, 1, '0.00', '0.00', '2018-07-16 09:48:21', '2018-07-13 13:45:45', 11, 1, 5, 1, 1),
(146, '450 DPH white', '', 0, 0, '450 DPH', '152913829404', NULL, 0, '0.00', '500.00', '1300.00', NULL, 0, 1, '0.00', '0.00', '2018-07-16 09:48:36', '2018-07-13 13:45:45', 11, 1, 6, 1, 1),
(146, '440 DPH white', '', 0, 0, '450 DPH', '152913829404', NULL, 0, '0.00', '500.00', '1300.00', NULL, 0, 1, '0.00', '0.00', '2018-07-16 09:48:55', '2018-07-13 13:45:45', 11, 1, 6, 1, 1),
(17, 'Mic Stand', '', 0, 0, '', '152819399428', NULL, 0, '0.00', '800.00', '2500.00', NULL, 0, 1, '0.00', '0.00', '2018-07-13 06:39:49', '2018-07-13 06:39:49', 11, 1, 6, 1, 1),
(104, 'Table Mick Stand', '', 0, 0, 'Table Mick Stand', '152843646267', NULL, 0, '0.00', '500.00', '1000.00', NULL, 0, 1, '0.00', '0.00', '2018-06-26 18:26:22', '2018-06-26 18:26:22', 11, 1, 3, 1, 1),
(66, 'walkey talkey', '', 0, 0, 'walkey talkey', '152828781714', NULL, 0, '0.00', '8000.00', '18000.00', NULL, 0, 1, '0.00', '0.00', '2018-06-26 18:26:22', '2018-06-26 18:26:22', 11, 1, 4, 1, 1),
(66, 'walkey talkey', '', 0, 0, 'walkey talkey', '152828781714', NULL, 0, '0.00', '5000.00', '7500.00', NULL, 0, 1, '0.00', '7500.00', '2018-07-21 03:37:12', '2018-06-26 18:26:22', 2, 1, 4, 1, 1),
(66, 'walkey talkey', '', 0, 0, 'walkey talkey', '152828781714', NULL, 0, '0.00', '5000.00', '7500.00', NULL, 0, 1, '0.00', '7500.00', '2018-07-21 03:37:18', '2018-06-26 18:26:22', 2, 1, 4, 1, 1),
(116, 'Condenser 1.5', '', 0, 0, 'Condenser 1.5', '152844306314', NULL, 0, '0.00', '35.00', '130.00', NULL, 0, 1, '0.00', '0.00', '2018-07-16 06:50:58', '2018-07-16 06:50:58', 11, 1, 177, 1, 1),
(64, 'Sunlight  Suite 2', '', 0, 0, 'Sunlight  Suite 2', '152828741861', NULL, 0, '0.00', '45000.00', '60000.00', NULL, 0, 1, '0.00', '0.00', '2018-07-25 11:24:37', '2018-07-25 11:24:37', 11, 1, 0, 1, 1),
(34, 'Stop hingers', '', 0, 0, 'Stop hingers', '152826799710', NULL, 0, '0.00', '130.00', '290.00', NULL, 0, 1, '0.00', '0.00', '2018-06-26 18:26:22', '2018-06-26 18:26:22', 11, 1, 21, 1, 1),
(22, 'Pacan 9w', '', 0, 0, 'Pacan 9w', '152819596453', NULL, 0, '0.00', '2000.00', '8500.00', NULL, 0, 1, '0.00', '0.00', '2018-06-26 18:26:22', '2018-06-26 18:26:22', 11, 1, 1, 1, 1),
(166, 'behringer 1700w', '', 0, 0, 'behringer 1700w', '153380328438', NULL, 0, '0.00', '340000.00', '388000.00', NULL, 0, 1, '0.00', '0.00', '2018-08-09 14:02:05', '0000-00-00 00:00:00', 11, 1, 1, 1, 1),
(169, 'Reeloop console', '', 0, 0, 'RMP4', '153448405865', NULL, 0, '0.00', '700000.00', '750000.00', NULL, 0, 1, '0.00', '0.00', '2018-08-17 11:05:40', '0000-00-00 00:00:00', 11, 1, 1, 1, 1),
(123, 'XLR-DMX Cables', '', 0, 0, 'XLR-DMX Cables', '152888046424', NULL, 0, '0.00', '250.00', '500.00', NULL, 0, 1, '0.00', '0.00', '2018-06-26 18:26:22', '2018-06-26 18:26:22', 11, 1, 1, 1, 1),
(176, 'VITACAP', '', 0, 0, 'VTAMINS', '159811188351', NULL, 0, '0.00', '50.00', '1050.00', NULL, 0, 1, '5.00', '997.50', '2020-08-22 21:34:14', '2020-08-22 21:34:14', 1, 1, 0, 1, 1),
(178, 'Augmantine 625', '', 0, 0, '', '159811740096', NULL, 0, '0.00', '100.00', '600.00', NULL, 0, 1, '2.00', '588.00', '2020-08-22 23:06:10', '2020-08-22 23:06:10', 1, 1, 40, 1, 1),
(185, 'OMEZ 20mg', '', 0, 0, '', '159812400006', NULL, 0, '0.00', '0.00', '5.40', NULL, 0, 1, '0.00', '0.00', '2020-08-23 00:51:45', '2021-12-31 00:00:00', 1, 1, 220, 1, 1),
(184, 'Inocid 20', '', 0, 0, '', '159812378035', NULL, 0, '0.00', '0.00', '4.50', NULL, 0, 1, '0.00', '0.00', '2020-08-23 00:50:00', '2023-04-30 00:00:00', 1, 1, 600, 1, 1),
(183, 'Lomac 20mg', '', 0, 0, '', '159812352717', NULL, 0, '0.00', '0.00', '5.15', NULL, 0, 1, '0.00', '0.00', '2020-08-23 00:46:20', '2023-02-28 00:00:00', 1, 1, 200, 1, 1),
(187, 'Nexium 40mg', '', 0, 0, '', '159812445877', NULL, 0, '0.00', '0.00', '46.10', NULL, 0, 1, '0.00', '0.00', '2020-08-23 00:58:32', '2021-05-31 00:00:00', 1, 1, 42, 1, 1),
(186, 'Nexium 20mg', '', 0, 0, '', '159812411150', NULL, 0, '0.00', '0.00', '24.25', NULL, 0, 1, '0.00', '0.00', '2020-08-23 00:57:38', '2021-05-31 00:00:00', 1, 1, 42, 1, 1),
(229, 'Kalzana 500mg', '', 0, 0, '', '159812951626', NULL, 0, '0.00', '0.00', '14.56', NULL, 0, 1, '0.00', '0.00', '2020-08-23 02:22:46', '2021-09-30 00:00:00', 1, 1, 100, 1, 1),
(235, 'RanCV 500mg', '', 0, 0, '', '159813055173', NULL, 0, '0.00', '0.00', '31.66', NULL, 0, 1, '0.00', '0.00', '2020-08-23 02:40:33', '2022-09-30 00:00:00', 1, 1, 60, 1, 1),
(244, 'Soridex 250mg', '', 0, 0, '', '159813128469', NULL, 0, '0.00', '0.00', '9.85', NULL, 0, 1, '0.00', '0.00', '2020-08-23 02:52:49', '2021-12-31 00:00:00', 1, 1, 70, 1, 1),
(247, 'Powergesic - Gel', '', 0, 0, '', '159813163647', NULL, 0, '0.00', '0.00', '150.00', NULL, 0, 1, '0.00', '0.00', '2020-08-23 02:58:08', '2021-12-31 00:00:00', 1, 1, 3, 1, 1),
(248, 'Sporidex 125mg 100ml', '', 0, 0, '', '159813179682', NULL, 0, '0.00', '0.00', '318.00', NULL, 0, 1, '0.00', '0.00', '2020-08-23 03:01:44', '2021-10-31 00:00:00', 1, 1, 1, 1, 1),
(251, 'Cloderm', '', 0, 0, '', '159813217540', NULL, 0, '0.00', '0.00', '483.21', NULL, 0, 1, '0.00', '0.00', '2020-08-23 03:07:09', '2023-01-31 00:00:00', 1, 1, 2, 1, 1),
(263, 'Celox R', '', 0, 0, '', '159814462129', NULL, 0, '0.00', '0.00', '22.71', NULL, 0, 1, '0.00', '0.00', '2020-08-23 06:35:09', '2022-02-28 00:00:00', 1, 1, 50, 1, 1),
(321, 'ENAT 400', '', 0, 0, '', '159815022004', NULL, 0, '0.00', '0.00', '45.00', NULL, 0, 1, '0.00', '0.00', '2020-08-23 08:08:11', '2022-09-22 00:00:00', 1, 1, 30, 1, 1),
(321, 'ENAT 400', '', 0, 0, '', '159815022004', NULL, 0, '0.00', '0.00', '45.00', NULL, 0, 1, '0.00', '0.00', '2020-08-23 08:11:57', '2022-09-22 00:00:00', 1, 1, 330, 1, 1),
(334, 'Zyncet', '', 0, 0, '', '159815171943', NULL, 0, '0.00', '0.00', '8.96', NULL, 0, 1, '0.00', '0.00', '2020-08-23 08:33:55', '2022-10-31 00:00:00', 1, 1, 200, 1, 1),
(301, 'Lo-Kal Gold', '', 0, 0, '', '159814822494', NULL, 0, '0.00', '0.00', '5.78', NULL, 0, 1, '0.00', '0.00', '2020-08-23 07:34:49', '2022-01-31 00:00:00', 1, 1, 50, 1, 1),
(367, 'Lithosun SR', '', 0, 0, '', '159819979262', NULL, 0, '0.00', '0.00', '30.77', NULL, 0, 1, '0.00', '0.00', '2020-08-23 21:54:23', '2025-03-31 00:00:00', 1, 1, 30, 1, 1),
(376, 'Vilda 50mg', '', 0, 0, '', '159820102072', NULL, 0, '0.00', '0.00', '0.00', NULL, 0, 1, '0.00', '0.00', '2020-08-23 22:16:25', '2021-11-30 00:00:00', 1, 1, 60, 1, 1),
(349, 'Sita 50mg', '', 0, 0, '', '159819827585', NULL, 0, '0.00', '0.00', '32.60', NULL, 0, 1, '0.00', '0.00', '2020-08-23 21:29:13', '2021-10-31 00:00:00', 1, 1, 70, 1, 1),
(409, 'Deflux 10mg', '', 0, 0, '', '159820491043', NULL, 0, '0.00', '0.00', '65.00', NULL, 0, 1, '0.00', '0.00', '2020-08-23 23:20:28', '2021-10-31 00:00:00', 1, 1, 100, 1, 1),
(409, 'Deflux 10mg', '', 0, 0, '', '159820491043', NULL, 0, '0.00', '0.00', '6.50', NULL, 0, 1, '0.00', '6.50', '2020-08-23 11:21:12', '2021-10-31 00:00:00', 1, 1, 100, 1, 1),
(285, 'Cloxil 250mg', '', 0, 0, '', '159814694336', NULL, 0, '0.00', '0.00', '11.00', NULL, 0, 1, '0.00', '0.00', '2020-08-24 21:38:27', '2020-08-24 21:38:27', 1, 1, 0, 1, 1),
(339, 'Curam 375mg', '', 0, 0, '', '159815224100', NULL, 0, '0.00', '0.00', '39.04', NULL, 0, 1, '0.00', '0.00', '2020-08-24 21:32:56', '2020-08-24 21:32:56', 1, 1, 10, 1, 1),
(244, 'Sporidex 250mg', '', 0, 0, '', '159813128469', NULL, 0, '0.00', '0.00', '9.85', NULL, 0, 1, '0.00', '0.00', '2020-08-24 21:32:56', '2020-08-24 21:32:56', 1, 1, 60, 1, 1),
(363, 'Cetrizet 10mg', '', 0, 0, '', '159819945991', NULL, 0, '0.00', '0.00', '16.65', NULL, 0, 1, '0.00', '0.00', '2020-08-24 21:32:57', '2020-08-24 21:32:57', 1, 1, 90, 1, 1),
(334, 'Zyncet', '', 0, 0, '', '159815171943', NULL, 0, '0.00', '0.00', '8.96', NULL, 0, 1, '0.00', '0.00', '2020-08-24 21:32:56', '2020-08-24 21:32:56', 1, 1, 220, 1, 1),
(197, 'Clavamox 625mg', '', 0, 0, '', '159812570248', NULL, 0, '0.00', '0.00', '72.00', NULL, 0, 1, '0.00', '0.00', '2020-08-24 21:30:31', '2020-08-24 21:30:31', 1, 1, 50, 1, 1),
(430, 'GLOW', '', 0, 0, '', '159828717563', NULL, 0, '0.00', '0.00', '80.00', NULL, 0, 1, '0.00', '0.00', '2020-08-24 22:11:17', '2021-06-26 00:00:00', 1, 1, 30, 1, 1),
(416, 'Proglutrol 500mg', '', 0, 0, '', '159820571753', NULL, 0, '0.00', '0.00', '6.14', NULL, 0, 1, '0.00', '0.00', '2020-08-23 23:33:00', '2023-04-30 00:00:00', 1, 1, 100, 1, 1),
(416, 'Proglutrol 500mg', '', 0, 0, '', '159820571753', NULL, 0, '0.00', '0.00', '6.14', NULL, 0, 1, '0.00', '0.00', '2020-08-24 10:51:22', '2023-04-30 00:00:00', 1, 1, 200, 1, 1),
(437, 'deriphyllin 150mg', '', 0, 0, '', '159829009688', NULL, 0, '0.00', '0.00', '2.63', NULL, 0, 1, '0.00', '0.00', '2020-08-24 23:00:05', '2022-11-30 00:00:00', 1, 1, 300, 1, 1),
(439, 'Valparin-200', '', 0, 0, '', '159829043445', NULL, 0, '0.00', '0.00', '7.74', NULL, 0, 1, '0.00', '0.00', '2020-08-24 23:06:49', '2023-01-31 00:00:00', 1, 1, 200, 1, 1),
(439, 'Valparin 200mg', '', 0, 0, '', '159829043445', NULL, 0, '0.00', '0.00', '7.74', NULL, 0, 1, '0.00', '0.00', '2020-08-24 11:07:21', '2023-01-31 00:00:00', 1, 1, 200, 1, 1),
(435, 'Sporidex 250mg (New)', '', 0, 0, '', '159828978621', NULL, 0, '0.00', '0.00', '9.85', NULL, 0, 1, '0.00', '0.00', '2020-08-24 22:57:03', '2021-12-31 00:00:00', 1, 1, 30, 1, 1),
(249, 'Fucidin', '', 0, 0, '', '159813194705', NULL, 0, '0.00', '0.00', '529.00', NULL, 0, 1, '0.00', '0.00', '2020-08-23 03:03:53', '2022-11-30 00:00:00', 1, 1, 11, 1, 1),
(249, 'Fucidin Cream', '', 0, 0, '', '159813194705', NULL, 0, '0.00', '0.00', '529.00', NULL, 0, 1, '0.00', '0.00', '2020-08-24 11:37:33', '2022-11-30 00:00:00', 1, 1, 11, 1, 1),
(433, 'Beclomin Cream', '', 0, 0, '', '159828954205', NULL, 0, '0.00', '0.00', '215.00', NULL, 0, 1, '0.00', '0.00', '2020-08-24 22:50:49', '2022-03-31 00:00:00', 1, 1, 10, 1, 1),
(464, 'Candid V3 Vaginal', '', 0, 0, '', '159829372502', NULL, 0, '0.00', '0.00', '330.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 00:00:39', '2023-06-30 00:00:00', 1, 1, 1, 1, 1),
(451, 'Candid V6 Vaginal', '', 0, 0, '', '159829206617', NULL, 0, '0.00', '0.00', '320.00', NULL, 0, 1, '0.00', '0.00', '2020-08-24 23:33:01', '2024-02-28 00:00:00', 1, 1, 1, 1, 1),
(464, 'Candid V3 Vaginal', '', 0, 0, '', '159829372502', NULL, 0, '0.00', '0.00', '330.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 12:04:55', '2023-06-30 00:00:00', 1, 1, 1, 1, 1),
(452, 'Candid V Gel', '', 0, 0, '', '159829218176', NULL, 0, '0.00', '0.00', '430.00', NULL, 0, 1, '0.00', '0.00', '2020-08-24 23:34:07', '2022-04-30 00:00:00', 1, 1, 1, 1, 1),
(468, 'Microdox DT 100mg', '', 0, 0, '', '159829465547', NULL, 0, '0.00', '0.00', '25.78', NULL, 0, 1, '0.00', '0.00', '2020-08-25 00:15:27', '2022-05-31 00:00:00', 1, 1, 100, 1, 1),
(471, 'Betasol EyeDrop', '', 0, 0, '', '159829679040', NULL, 0, '0.00', '0.00', '203.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 00:51:41', '2022-01-31 00:00:00', 1, 1, 3, 1, 1),
(467, 'Melmet SR 500mg', '', 0, 0, '', '159829458067', NULL, 0, '0.00', '0.00', '7.57', NULL, 0, 1, '0.00', '0.00', '2020-08-25 00:14:15', '2023-04-30 00:00:00', 1, 1, 100, 1, 1),
(463, 'Benzac AC Gel', '', 0, 0, '', '159829366763', NULL, 0, '0.00', '0.00', '751.00', NULL, 0, 1, '0.00', '0.00', '2020-08-24 23:58:44', '2022-01-31 00:00:00', 1, 1, 1, 1, 1),
(283, 'Deriva - C Gel', '', 0, 0, '', '159814672117', NULL, 0, '0.00', '0.00', '1250.00', NULL, 0, 1, '0.00', '0.00', '2020-08-23 07:09:29', '2022-01-31 00:00:00', 1, 1, 1, 1, 1),
(283, 'Deriva - C Gel', '', 0, 0, '', '159814672117', NULL, 0, '0.00', '0.00', '1250.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 01:10:19', '2022-01-31 00:00:00', 1, 1, 2, 1, 1),
(283, 'Gentacil', '', 0, 0, '', '159814672117', NULL, 0, '0.00', '0.00', '1250.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 01:11:07', '2022-01-31 00:00:00', 1, 1, 2, 1, 1),
(490, 'Prodigy Test Strip', '', 0, 0, '', '159829907596', NULL, 0, '0.00', '0.00', '2725.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 01:30:07', '2022-06-30 00:00:00', 1, 1, 1, 1, 1),
(495, 'Wellman 50+', '', 0, 0, '', '159830080401', NULL, 0, '0.00', '0.00', '96.80', NULL, 0, 1, '0.00', '0.00', '2020-08-25 01:57:18', '2022-02-07 00:00:00', 1, 1, 30, 1, 1),
(499, 'Potcit-XR', '', 0, 0, '', '159830112807', NULL, 0, '0.00', '0.00', '26.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 02:03:00', '2022-05-31 00:00:00', 1, 1, 1, 1, 1),
(444, 'Zycel 200mg', '', 0, 0, '', '159829122774', NULL, 0, '0.00', '0.00', '25.00', NULL, 0, 1, '0.00', '0.00', '2020-08-24 23:18:41', '2023-01-31 00:00:00', 1, 1, 100, 1, 1),
(492, 'Perfectil Original', '', 0, 0, '', '159830062785', NULL, 0, '0.00', '0.00', '91.50', NULL, 0, 1, '0.00', '0.00', '2020-08-25 01:54:48', '2022-07-31 00:00:00', 1, 1, 30, 1, 1),
(492, 'Perfectil Original', '', 0, 0, '', '159830062785', NULL, 0, '0.00', '0.00', '91.50', NULL, 0, 1, '0.00', '0.00', '2020-08-25 02:19:27', '2022-07-31 00:00:00', 1, 1, 60, 1, 1),
(508, 'Nervijen D', '', 0, 0, '', '159830226147', NULL, 0, '0.00', '0.00', '53.20', NULL, 0, 1, '0.00', '0.00', '2020-08-25 02:22:31', '2022-01-31 00:00:00', 1, 1, 30, 1, 1),
(287, 'Kool n Fresh', '', 0, 0, '', '159814712008', NULL, 0, '0.00', '0.00', '222.00', NULL, 0, 1, '0.00', '0.00', '2020-08-23 07:16:18', '2022-05-31 00:00:00', 1, 1, 2, 1, 1),
(319, 'TOCOSOFT-400', '', 0, 0, '', '159814999039', NULL, 0, '0.00', '0.00', '11.04', NULL, 0, 1, '0.00', '0.00', '2020-08-23 08:05:41', '2021-08-31 00:00:00', 1, 1, 100, 1, 1),
(322, 'Zincovit', '', 0, 0, '', '159815029161', NULL, 0, '0.00', '0.00', '21.88', NULL, 0, 1, '0.00', '0.00', '2020-08-23 08:14:31', '2021-07-31 00:00:00', 1, 1, 480, 1, 1),
(526, 'Peritol Syrup', '', 0, 0, '', '159830407097', NULL, 0, '0.00', '0.00', '170.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 02:52:38', '2021-12-31 00:00:00', 1, 1, 50, 1, 1),
(288, 'Hexidine 160ml', '', 0, 0, '', '159814717875', NULL, 0, '0.00', '0.00', '569.00', NULL, 0, 1, '0.00', '0.00', '2020-08-23 07:17:09', '2022-04-30 00:00:00', 1, 1, 2, 1, 1),
(288, 'Hexidine 160ml', '', 0, 0, '', '159814717875', NULL, 0, '0.00', '0.00', '569.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 02:58:11', '2022-04-30 00:00:00', 1, 1, 4, 1, 1),
(289, 'Hexidine 80ml', '', 0, 0, '', '159814722905', NULL, 0, '0.00', '0.00', '310.00', NULL, 0, 1, '0.00', '0.00', '2020-08-23 07:18:58', '2022-09-30 00:00:00', 1, 1, 2, 1, 1),
(560, 'Mulax 2mg', '', 0, 0, '', '159833525257', NULL, 0, '0.00', '0.00', '35.70', NULL, 0, 1, '0.00', '0.00', '2020-08-25 11:35:52', '2024-05-31 00:00:00', 1, 1, 100, 1, 1),
(571, 'Vomvin 10mg Suppo', '', 0, 0, '', '159833675789', NULL, 0, '0.00', '0.00', '70.83', NULL, 0, 1, '0.00', '0.00', '2020-08-25 11:58:46', '0000-00-00 00:00:00', 1, 1, 6, 1, 1),
(274, 'Momate Cream', '', 0, 0, '', '159814587241', NULL, 0, '0.00', '0.00', '535.00', NULL, 0, 1, '0.00', '0.00', '2020-08-23 06:55:20', '2022-05-31 00:00:00', 1, 1, 1, 1, 1),
(278, 'Diamicron MR 630mg', '', 0, 0, '', '159814626517', NULL, 0, '0.00', '0.00', '22.93', NULL, 0, 1, '0.00', '0.00', '2020-08-23 07:02:46', '2023-01-31 00:00:00', 1, 1, 150, 1, 1),
(608, 'Cremaffin plus', '', 0, 0, '', '159834199319', NULL, 0, '0.00', '0.00', '480.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 13:24:39', '2022-12-31 00:00:00', 1, 1, 2, 1, 1),
(607, 'Cremaffin Syrup', '', 0, 0, '', '159834191359', NULL, 0, '0.00', '0.00', '363.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 13:23:13', '2022-10-31 00:00:00', 1, 1, 2, 1, 1),
(607, 'Cremaffin 225ml', '', 0, 0, '', '159834191359', NULL, 0, '0.00', '0.00', '363.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 01:32:04', '2022-10-31 00:00:00', 1, 1, 2, 1, 1),
(606, 'DIGENE Gel Mint Flavour 200ml', '', 0, 0, '', '159834156297', NULL, 0, '0.00', '0.00', '290.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 13:18:15', '2021-11-30 00:00:00', 1, 1, 2, 1, 1),
(606, 'DIGENE Gel Mint Flavour 200ml', '', 0, 0, '', '159834156297', NULL, 0, '0.00', '0.00', '290.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 03:37:48', '2021-11-30 00:00:00', 1, 1, 5, 1, 1),
(606, 'DIGENE Gel Mint Flavour 200ml', '', 0, 0, '', '159834156297', NULL, 0, '0.00', '0.00', '290.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 03:38:22', '2021-11-30 00:00:00', 1, 1, 5, 1, 1),
(606, 'DIGENE Gel Mint Flavour 200ml', '', 0, 0, '', '159834156297', NULL, 0, '0.00', '0.00', '290.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 03:39:14', '2021-11-30 00:00:00', 1, 1, 5, 1, 1),
(606, 'DIGENE Gel Mint Flavour 200ml', '', 0, 0, '', '159834156297', NULL, 0, '0.00', '0.00', '290.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 03:43:12', '2021-11-30 00:00:00', 1, 1, 5, 1, 1),
(652, 'Envas 10', '', 0, 0, '', '159835210462', NULL, 0, '0.00', '0.00', '3.55', NULL, 0, 1, '0.00', '0.00', '2020-08-25 16:13:35', '2023-03-31 00:00:00', 1, 1, 100, 1, 1),
(660, 'Framycetin Cream', '', 0, 0, '', '159835324034', NULL, 0, '0.00', '0.00', '96.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 16:33:40', '2022-11-30 00:00:00', 1, 1, 10, 1, 1),
(663, 'Cetapin XR', '', 0, 0, '', '159835367928', NULL, 0, '0.00', '0.00', '9.25', NULL, 0, 1, '0.00', '0.00', '2020-08-25 16:39:42', '2021-11-30 00:00:00', 1, 1, 180, 1, 1),
(664, 'Insulin syringe', '', 0, 0, '', '159835378274', NULL, 0, '0.00', '0.00', '36.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 16:43:15', '2023-07-31 00:00:00', 1, 1, 100, 1, 1),
(665, 'Dermaveen Cream 100ml', '', 0, 0, '', '159835399511', NULL, 0, '0.00', '0.00', '2221.11', NULL, 0, 1, '0.00', '0.00', '2020-08-25 16:44:55', '2022-08-31 00:00:00', 1, 1, 100, 1, 1),
(363, 'Cetrizet 10mg', '', 0, 0, '', '159819945991', NULL, 0, '0.00', '0.00', '16.65', NULL, 0, 1, '0.00', '0.00', '2020-08-24 09:46:24', '2020-08-24 21:32:57', 1, 1, 100, 1, 1),
(316, 'Loridin 10mg', '', 0, 0, '', '159814961238', NULL, 0, '0.00', '0.00', '17.00', NULL, 0, 1, '0.00', '0.00', '2020-08-23 07:58:17', '2022-09-30 00:00:00', 1, 1, 100, 1, 1),
(687, 'Empa 10mg', '', 0, 0, '', '159835938430', NULL, 0, '0.00', '0.00', '79.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 18:14:18', '2022-03-31 00:00:00', 1, 1, 60, 1, 1),
(687, 'Empa 10mg', '', 0, 0, '', '159835938430', NULL, 0, '0.00', '0.00', '79.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 06:21:58', '2022-03-31 00:00:00', 1, 1, 90, 1, 1),
(535, 'Solmux Syrup Pediatric', '', 0, 0, '', '159830527476', NULL, 0, '0.00', '0.00', '646.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 03:12:50', '2021-05-31 00:00:00', 1, 1, 2, 1, 1),
(535, 'Solmux Syrup Pediatric', '', 0, 0, '', '159830527476', NULL, 0, '0.00', '0.00', '646.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 06:36:29', '2021-05-31 00:00:00', 1, 1, 4, 1, 1),
(465, 'MOVCOL laxative', '', 0, 0, '', '159829384000', NULL, 0, '0.00', '0.00', '63.88', NULL, 0, 1, '0.00', '0.00', '2020-08-25 00:11:33', '2022-02-28 00:00:00', 1, 1, 10, 1, 1),
(723, 'Augmentin 375mg', '', 0, 0, '', '159836403599', NULL, 0, '0.00', '0.00', '42.52', NULL, 0, 1, '0.00', '0.00', '2020-08-25 19:31:40', '2022-07-31 00:00:00', 1, 1, 60, 1, 1),
(718, 'Amoxil  Suspension 125mg', '', 0, 0, '', '159836366236', NULL, 0, '0.00', '0.00', '270.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 19:25:10', '2022-08-31 00:00:00', 1, 1, 2, 1, 1),
(718, 'Amoxil  Suspension 125mg', '', 0, 0, '', '159836366236', NULL, 0, '0.00', '0.00', '270.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 07:42:51', '2022-08-31 00:00:00', 1, 1, 2, 1, 1),
(727, 'Tetret 250mg', '', 0, 0, '', '159836451750', NULL, 0, '0.00', '0.00', '6.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 19:39:38', '2022-04-30 00:00:00', 1, 1, 100, 1, 1),
(736, 'D max 2000', '', 0, 0, '', '159836989119', NULL, 0, '0.00', '0.00', '1600.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 21:09:32', '2021-12-31 00:00:00', 1, 1, 2, 1, 1),
(260, 'Glycinorm 40mg', '', 0, 0, '', '159814439360', NULL, 0, '0.00', '0.00', '10.76', NULL, 0, 1, '0.00', '0.00', '2020-08-23 06:31:29', '2021-11-30 00:00:00', 1, 1, 100, 1, 1),
(313, 'HEQS 200mg', '', 0, 0, '', '159814923724', NULL, 0, '0.00', '0.00', '42.08', NULL, 0, 1, '0.00', '0.00', '2020-08-23 07:52:35', '2023-03-31 00:00:00', 1, 1, 60, 1, 1),
(743, 'Deslorat', '', 0, 0, '', '159837103100', NULL, 0, '0.00', '0.00', '32.70', NULL, 0, 1, '0.00', '0.00', '2020-08-25 21:29:03', '2021-02-28 00:00:00', 1, 1, 20, 1, 1),
(743, 'Deslorat 5mg', '', 0, 0, '', '159837103100', NULL, 0, '0.00', '0.00', '32.70', NULL, 0, 1, '0.00', '0.00', '2020-08-25 09:29:44', '2021-02-28 00:00:00', 1, 1, 20, 1, 1),
(760, 'Xepat Forte Eyedrop', '', 0, 0, '', '159837212773', NULL, 0, '0.00', '0.00', '671.29', NULL, 0, 1, '0.00', '0.00', '2020-08-25 21:46:08', '2022-02-28 00:00:00', 1, 1, 2, 1, 1),
(238, 'Getryl 2mg', '', 0, 0, '', '159813092283', NULL, 0, '0.00', '0.00', '11.60', NULL, 0, 1, '0.00', '0.00', '2020-08-23 02:46:42', '2023-01-31 00:00:00', 1, 1, 20, 1, 1),
(808, 'Osiben 400mg', '', 0, 0, '', '159846287011', NULL, 0, '0.00', '0.00', '35.00', NULL, 0, 1, '0.00', '0.00', '2020-08-26 22:59:49', '2022-06-30 00:00:00', 1, 1, 40, 1, 1),
(434, 'Proglutrol 500mg', '', 0, 0, '', '159828964918', NULL, 0, '0.00', '0.00', '6.14', NULL, 0, 1, '0.00', '0.00', '2020-08-24 22:53:06', '2022-12-31 00:00:00', 1, 1, 100, 1, 1),
(434, 'Proglutrol 500mg', '', 0, 0, '', '159828964918', NULL, 0, '0.00', '0.00', '6.14', NULL, 0, 1, '0.00', '0.00', '2020-08-26 11:23:22', '2022-12-31 00:00:00', 1, 1, 200, 1, 1),
(817, 'Sustagen Vanila', '', 0, 0, '', '159846504735', NULL, 0, '0.00', '0.00', '1930.00', NULL, 0, 1, '0.00', '0.00', '2020-08-26 23:34:55', '2023-02-05 00:00:00', 1, 1, 1, 1, 1),
(826, 'Norgest 5mg', '', 0, 0, '', '159846561654', NULL, 0, '0.00', '0.00', '13.00', NULL, 0, 1, '0.00', '0.00', '2020-08-26 23:54:28', '2022-12-31 00:00:00', 1, 1, 100, 1, 1),
(830, 'Sandomigran', '', 0, 0, '', '159846681400', NULL, 0, '0.00', '0.00', '64.00', NULL, 0, 1, '0.00', '0.00', '2020-08-27 00:04:26', '2022-10-31 00:00:00', 1, 1, 30, 1, 1),
(276, 'Turbute Syrup', '', 0, 0, '', '159814614293', NULL, 0, '0.00', '0.00', '310.00', NULL, 0, 1, '0.00', '0.00', '2020-08-23 06:59:59', '2022-05-12 00:00:00', 1, 1, 1, 1, 1),
(834, 'Travatan 40mcg Eyedrop', '', 0, 0, '', '159846716660', NULL, 0, '0.00', '0.00', '1995.00', NULL, 0, 1, '0.00', '0.00', '2020-08-27 00:11:45', '2023-03-31 00:00:00', 1, 1, 30, 1, 1),
(483, 'Supricort Cream', '', 0, 0, '', '159829831335', NULL, 0, '0.00', '0.00', '0.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 01:17:08', '2022-04-30 00:00:00', 1, 1, 2, 1, 1),
(483, 'Supricort Cream', '', 0, 0, '', '159829831335', NULL, 0, '0.00', '0.00', '0.00', NULL, 0, 1, '0.00', '0.00', '2020-08-27 00:53:09', '2020-08-27 00:53:09', 1, 1, 0, 1, 1),
(483, 'Supricort Cream', '', 0, 0, '', '159829831335', NULL, 0, '0.00', '0.00', '0.00', NULL, 0, 1, '0.00', '0.00', '2020-08-27 12:53:42', '2020-08-27 00:53:09', 1, 1, 0, 1, 1),
(287, 'Kool n Fresh', '', 0, 0, '', '159814712008', NULL, 0, '0.00', '0.00', '222.00', NULL, 0, 1, '0.00', '0.00', '2020-08-27 10:19:45', '2020-08-27 10:19:45', 1, 1, 3, 1, 1),
(287, 'Kool n Fresh', '', 0, 0, '', '159814712008', NULL, 0, '0.00', '0.00', '222.00', NULL, 0, 1, '0.00', '0.00', '2020-08-27 10:24:15', '2020-08-27 10:19:45', 1, 1, 4, 1, 1),
(534, 'Enervon-C', '', 0, 0, '', '159830506370', NULL, 0, '0.00', '0.00', '1184.00', NULL, 0, 1, '0.00', '0.00', '2020-08-27 11:47:05', '2020-08-27 11:47:05', 1, 1, 1, 1, 1),
(479, 'Zycolax 5mg', '', 0, 0, '', '159829766438', NULL, 0, '0.00', '0.00', '37.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 01:05:24', '2022-05-31 00:00:00', 1, 1, 10, 1, 1),
(697, 'Phenycof Syrup', '', 0, 0, '', '159836055973', NULL, 0, '0.00', '0.00', '238.00', NULL, 0, 1, '0.00', '0.00', '2020-08-25 18:35:03', '2022-11-30 00:00:00', 1, 1, 0, 1, 1),
(223, 'Domperon ', '', 0, 0, '', '159812842647', NULL, 0, '0.00', '0.00', '64.86', NULL, 0, 1, '0.00', '0.00', '2020-08-23 02:06:05', '2024-03-31 00:00:00', 1, 1, 100, 1, 1),
(207, 'Atova 10mg', '', 0, 0, '', '159812683546', NULL, 0, '0.00', '0.00', '13.40', NULL, 0, 1, '0.00', '0.00', '2020-08-27 10:19:46', '2020-08-27 10:19:46', 1, 1, 0, 1, 1),
(864, 'Strepsils', '', 0, 0, '', '159846944967', NULL, 0, '0.00', '0.00', '10.00', NULL, 0, 1, '0.00', '0.00', '2020-08-27 17:39:55', '2020-08-27 17:39:55', 1, 1, 32, 1, 1),
(703, 'KetoPlus Shampoo', '', 0, 0, '', '159836166394', NULL, 0, '0.00', '0.00', '580.00', NULL, 0, 1, '0.00', '0.00', '2020-08-27 10:19:45', '2020-08-27 10:19:45', 1, 1, 0, 1, 1),
(812, 'Telday 40mg', '', 0, 0, '', '159846451008', NULL, 0, '0.00', '0.00', '19.46', NULL, 0, 1, '0.00', '0.00', '2020-08-26 23:26:41', '2022-02-28 00:00:00', 1, 1, 200, 1, 1),
(874, 'Pyrantin Suspension', '', 0, 0, '', '159854256762', NULL, 0, '0.00', '0.00', '210.00', NULL, 0, 1, '0.00', '0.00', '2020-08-27 21:07:40', '2022-07-18 00:00:00', 1, 1, 10, 1, 1),
(877, 'Polymycin ointment', '', 0, 0, '', '159854354927', NULL, 0, '0.00', '0.00', '180.00', NULL, 0, 1, '0.00', '0.00', '2020-08-27 21:24:02', '2022-07-30 00:00:00', 1, 1, 10, 1, 1),
(883, 'Astrocort Cream', '', 0, 0, '', '159854426351', NULL, 0, '0.00', '0.00', '180.00', NULL, 0, 1, '0.00', '0.00', '2020-08-27 21:35:49', '2022-06-18 00:00:00', 1, 1, 2, 1, 1),
(883, 'Astrocort  0.5% Cream', '', 0, 0, '', '159854426351', NULL, 0, '0.00', '0.00', '180.00', NULL, 0, 1, '0.00', '0.00', '2020-08-27 09:36:38', '2022-06-18 00:00:00', 1, 1, 2, 1, 1),
(864, 'Strepsils', '', 0, 0, '', '159846944967', NULL, 0, '0.00', '0.00', '10.00', NULL, 0, 1, '0.00', '0.00', '2020-08-27 07:16:35', '2020-08-27 17:39:55', 1, 1, 344, 1, 1),
(864, 'Strepsils', '', 0, 0, '', '159846944967', NULL, 0, '0.00', '0.00', '10.00', NULL, 0, 1, '0.00', '0.00', '2020-09-12 11:57:36', '2020-08-27 17:39:55', 1, 1, 344, 1, 1),
(864, 'Strepsils', '', 0, 0, '', '159846944967', NULL, 0, '0.00', '0.00', '10.00', NULL, 0, 1, '0.00', '0.00', '2020-09-13 12:06:55', '2020-08-27 17:39:55', 1, 1, 344, 1, 1),
(864, 'Strepsils', '', 0, 0, '', '159846944967', NULL, 0, '0.00', '0.00', '10.00', NULL, 0, 1, '0.00', '0.00', '2020-09-13 12:08:15', '2020-08-27 17:39:55', 1, 1, 344, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hold`
--

CREATE TABLE `hold` (
  `hold_id` int(11) NOT NULL,
  `customer_mobile_number` bigint(11) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `hold_items`
--

CREATE TABLE `hold_items` (
  `customer_mobile_number` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `item_count` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_price` decimal(10,2) DEFAULT NULL,
  `item_discounted_price` decimal(10,2) DEFAULT NULL,
  `item_single_total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `img_id` int(11) NOT NULL,
  `img_name` varchar(70) DEFAULT NULL,
  `img_path` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`img_id`, `img_name`, `img_path`) VALUES
(3, NULL, NULL),
(4, 'Smoke Liquid 01L-1528184660', '/uploads/2018-06-05-1528184660.jpeg'),
(5, 'Smoke Liquid 05L -1528185176', '/uploads/2018-06-05-1528185176.jpeg'),
(6, '-1528185287', '/uploads/2018-06-05-1528185287.jpeg'),
(7, 'Snow Liquid 05L-1528185518', '/uploads/2018-06-05-1528185518.jpeg'),
(8, '-1528187627', '/uploads/2018-06-05-1528187627.jpeg'),
(9, 'Bubble Mashines-1528188359', '/uploads/2018-06-05-1528188359.jpeg'),
(11, 'Bubble Liquid-1528189846', '/uploads/2018-06-05-1528189846.jpeg'),
(13, 'Mic Stand-1528190856', '/uploads/2018-06-05-1528190856.png'),
(14, '-1528192418', '/uploads/2018-06-05-1528192418.png'),
(15, 'Mic Stand-1528192995', '/uploads/2018-06-05-1528192995.png'),
(16, 'Mic Stand-1528194153', '/uploads/2018-06-05-1528194153.jpg'),
(21, 'Pacan 9w-1528196231', '/uploads/2018-06-05-1528196231.jpeg'),
(22, 'IMF Speekers-1528196632', '/uploads/2018-06-05-1528196632.jpg'),
(24, 'Powercan 3w-1528266392', '/uploads/2018-06-06-1528266392.jpeg'),
(25, 'EURO 500 4ohms-1528266587', '/uploads/2018-06-06-1528266587.jpg'),
(26, 'Tooth Nut Large-1528266786', '/uploads/2018-06-06-1528266786.jpeg'),
(27, 'AllenKey Nuts-1528266946', '/uploads/2018-06-06-1528266946.jpeg'),
(28, 'Tooth Nuts Small-1528267025', '/uploads/2018-06-06-1528267025.jpeg'),
(29, 'Euro500 8ohms-1528267370', '/uploads/2018-06-06-1528267370.jpg'),
(30, 'L Bar-1528267820', '/uploads/2018-06-06-1528267820.jpeg'),
(31, 'L Bar-1528267996', '/uploads/2018-06-06-1528267996.jpg'),
(32, 'Stop hingers-1528268384', '/uploads/2018-06-06-1528268384.gif'),
(33, 'XLR Male-1528268667', '/uploads/2018-06-06-1528268667.jpg'),
(34, 'Mono Jack-1528268829', '/uploads/2018-06-06-1528268829.jpg'),
(35, 'XLR Female-1528268899', '/uploads/2018-06-06-1528268899.jpg'),
(36, 'Handle 0032 zinc plate-1528269368', '/uploads/2018-06-06-1528269368.jpeg'),
(37, 'Handle 0048 Large-1528269481', '/uploads/2018-06-06-1528269481.jpeg'),
(38, 'L coner Small-1528270079', '/uploads/2018-06-06-1528270079.jpeg'),
(39, 'BF Locks (L)-1528274939', '/uploads/2018-06-06-1528274939.jpeg'),
(40, 'Baller Corner (small)-1528276279', '/uploads/2018-06-06-1528276279.jpg'),
(42, '2.2 Caps-1528277677', '/uploads/2018-06-06-1528277677.jpeg'),
(43, 'UA Twitter 34-1528278392', '/uploads/2018-06-06-1528278392.jpg'),
(44, 'GA 450 Tweeter -1528278896', '/uploads/2018-06-06-1528278896.jpg'),
(45, 'UA Twitters T44-1528280489', '/uploads/2018-06-06-1528280489.jpg'),
(46, 'GA 450 twitter -1528281916', '/uploads/2018-06-06-1528281916.jpg'),
(47, 'XLR Female-1528282907', '/uploads/2018-06-06-1528282907.jpg'),
(48, 'XLR Male-1528283286', '/uploads/2018-06-06-1528283286.jpg'),
(49, 'UA Twitter T72-1528284007', '/uploads/2018-06-06-1528284007.jpg'),
(50, 'Buffel Stand-1528284364', '/uploads/2018-06-06-1528284364.png'),
(51, 'Buffel Stand-1528284658', '/uploads/2018-06-06-1528284658.jpg'),
(52, 'Lazer Light-1528284973', '/uploads/2018-06-06-1528284973.jpeg'),
(53, 'Stereo  Gold Jack-1528285236', '/uploads/2018-06-06-1528285236.jpeg'),
(54, 'Stereo Silver Jack-1528285329', '/uploads/2018-06-06-1528285329.jpeg'),
(55, 'XLR to MONO Cable-1528285545', '/uploads/2018-06-06-1528285545.jpeg'),
(56, 'Stereo to Standed Cable-1528285663', '/uploads/2018-06-06-1528285663.jpeg'),
(57, 'Mono Jacks L Shape-1528285822', '/uploads/2018-06-06-1528285822.jpeg'),
(58, 'RCA To Standed Jack-1528286015', '/uploads/2018-06-06-1528286015.jpeg'),
(59, 'SP Cone Base-1528286564', '/uploads/2018-06-06-1528286564.jpg'),
(60, 'RCA Stereo To Mono-1528286852', '/uploads/2018-06-06-1528286852.jpeg'),
(61, 'Power Cone-1528287210', '/uploads/2018-06-06-1528287210.jpg'),
(62, 'Cable Tester-1528287418', '/uploads/2018-06-06-1528287418.jpeg'),
(64, 'Wireless DMX-1528287816', '/uploads/2018-06-06-1528287816.jpeg'),
(65, 'walkey talkey-1528288042', '/uploads/2018-06-06-1528288042.jpeg'),
(66, 'DMX Control-1528350235', '/uploads/2018-06-07-1528350235.jpeg'),
(67, 'FIre Gun-1528350412', '/uploads/2018-06-07-1528350412.jpg'),
(68, 'Disco Light-1528350810', '/uploads/2018-06-07-1528350810.png'),
(69, 'Double Top Net-1528351204', '/uploads/2018-06-07-1528351204.jpg'),
(70, 'Single Top Net-1528351321', '/uploads/2018-06-07-1528351321.jpeg'),
(71, 'Single Top Net 12inch-1528351540', '/uploads/2018-06-07-1528351540.jpeg'),
(72, 'Light Stand Beam-1528351786', '/uploads/2018-06-07-1528351786.jpg'),
(73, 'Disco Light-1528352069', '/uploads/2018-06-07-1528352069.png'),
(74, 'Disco Light-1528352270', '/uploads/2018-06-07-1528352270.jpg'),
(75, '2226 Spider-1528352609', '/uploads/2018-06-07-1528352609.jpeg'),
(76, '2226 Spider-1528352806', '/uploads/2018-06-07-1528352806.jpeg'),
(77, '2242 spider-1528353098', '/uploads/2018-06-07-1528353098.jpeg'),
(78, 'Dust cap 2242-1528353458', '/uploads/2018-06-07-1528353458.jpeg'),
(79, 'Challanges Dust Cap-1528354343', '/uploads/2018-06-07-1528354343.jpg'),
(80, 'SD 18 Dust Cap-1528354405', '/uploads/2018-06-07-1528354405.jpg'),
(81, 'RCA 15 Dust Cap-1528354517', '/uploads/2018-06-07-1528354517.jpg'),
(82, 'IMF 15 Dust Cap-1528354783', '/uploads/2018-06-07-1528354783.jpg'),
(83, 'Unknown Dust Cap 15-1528366757', '/uploads/2018-06-07-1528366757.jpg'),
(84, 'Unknown Dus Cap 18-1528366813', '/uploads/2018-06-07-1528366813.jpg'),
(85, 'Buffle Handle plastic-1528433399', '/uploads/2018-06-08-1528433399.jpeg'),
(86, 'Buffle Handle Metal-1528433481', '/uploads/2018-06-08-1528433481.jpg'),
(87, 'JB L Handle Metal-1528433552', '/uploads/2018-06-08-1528433552.jpg'),
(88, 'Flight Case Handle Black-1528433686', '/uploads/2018-06-08-1528433686.jpg'),
(89, 'Speaker Terminal-1528433897', '/uploads/2018-06-08-1528433897.jpg'),
(90, 'Flight Case Handle Silver Large 00058-1528433992', '/uploads/2018-06-08-1528433992.gif'),
(91, 'Euro 12 Coill-1528434103', '/uploads/2018-06-08-1528434103.jpeg'),
(92, 'Euro 15 Coill-1528434155', '/uploads/2018-06-08-1528434155.jpeg'),
(93, 'EL 1700 Coill-1528434217', '/uploads/2018-06-08-1528434217.jpeg'),
(94, 'G/A 18100 Coill-1528434297', '/uploads/2018-06-08-1528434297.jpeg'),
(95, 'MB 500 Coill-1528434428', '/uploads/2018-06-08-1528434428.jpeg'),
(96, 'Light Handle Small-1528434759', '/uploads/2018-06-08-1528434759.jpg'),
(97, 'Light Handle Large-1528434821', '/uploads/2018-06-08-1528434821.jpg'),
(98, 'L Coner Large-1528435173', '/uploads/2018-06-08-1528435173.jpg'),
(99, 'L Coner Small-1528435233', '/uploads/2018-06-08-1528435233.jpg'),
(100, 'B Coner Small-1528435600', '/uploads/2018-06-08-1528435600.jpg'),
(101, 'B Coner  Large-1528435843', '/uploads/2018-06-08-1528435843.jpg'),
(102, 'Wheel Cup-1528436016', '/uploads/2018-06-08-1528436016.jpg'),
(103, 'Strap Handle-1528436083', '/uploads/2018-06-08-1528436083.jpg'),
(104, 'BF Lock Small-1528436274', '/uploads/2018-06-08-1528436274.jpg'),
(105, 'MIC Holders-1528436462', '/uploads/2018-06-08-1528436462.jpg'),
(106, 'Table Mick Stand-1528436623', '/uploads/2018-06-08-1528436623.jpg'),
(108, 'Buffel Coners Samall-1528437838', '/uploads/2018-06-08-1528437838.jpg'),
(109, 'Plastic Buffle Coner Large-1528437955', '/uploads/2018-06-08-1528437955.jpg'),
(110, 'Plastic Buffle Coner Small-1528438006', '/uploads/2018-06-08-1528438006.jpg'),
(111, 'XLR Jacks China Male-1528440298', '/uploads/2018-06-08-1528440298.jpg'),
(112, 'XLR Jacks China Female-1528440468', '/uploads/2018-06-08-1528440468.jpg'),
(113, 'XLR Jacks Hijack China male-1528440613', '/uploads/2018-06-08-1528440613.jpg'),
(116, ' Sp Cone Base-1528442367', '/uploads/2018-06-08-1528442367.jpg'),
(117, 'Condenser 1.0-1528442989', '/uploads/2018-06-08-1528442989.jpg'),
(118, 'Condenser 1.5-1528443131', '/uploads/2018-06-08-1528443131.jpg'),
(119, 'Condenser 2.2-1528443185', '/uploads/2018-06-08-1528443185.jpg'),
(120, 'Small Diaghphram-1528875969', '/uploads/2018-06-13-1528875969.jpg'),
(121, 'Top Hat-1528876697', '/uploads/2018-06-13-1528876697.jpg'),
(122, 'Wheel (Large)-1528877192', '/uploads/2018-06-13-1528877192.jpeg'),
(123, ' Wheel (small)-1528877286', '/uploads/2018-06-13-1528877286.jpeg'),
(124, ' SP Corn Water Proof-1528880462', '/uploads/2018-06-13-1528880462.jpg'),
(125, 'XLR-DMX Cables-1528880754', '/uploads/2018-06-13-1528880754.jpeg'),
(126, 'Standed to Stereo cables -1528881492', '/uploads/2018-06-13-1528881492.jpg'),
(127, ' 888 Coil-1528882380', '/uploads/2018-06-13-1528882380.jpg'),
(128, 'D44 DPH-1528883170', '/uploads/2018-06-13-1528883170.jpg'),
(129, 'DPH 404 PA-1528883402', '/uploads/2018-06-13-1528883402.jpeg'),
(130, '750  DPH Coil-1528883560', '/uploads/2018-06-13-1528883560.jpg'),
(131, '408 DPH Coil-1528883863', '/uploads/2018-06-13-1528883863.jpg'),
(132, 'D63 DPH Coil-1528884024', '/uploads/2018-06-13-1528884024.jpeg'),
(133, ' 777 DPH -1528884955', '/uploads/2018-06-13-1528884955.jpg'),
(134, '545 DPH -1528885057', '/uploads/2018-06-13-1528885057.jpg'),
(135, 'Buffel Screw-1528886353', '/uploads/2018-06-13-1528886353.jpg'),
(136, 'Buffel Screw (large)-1528887045', '/uploads/2018-06-13-1528887045.jpg'),
(137, 'GA Hize 450 Local tweeter-1528887629', '/uploads/2018-06-13-1528887629.jpg'),
(138, 'Mic Stand-1528891478', '/uploads/2018-06-13-1528891478.jpg'),
(139, '2226 Speaker PA -1528891934', '/uploads/2018-06-13-1528891934.jpg'),
(140, 'DMX Wirless controler-1528892174', '/uploads/2018-06-13-1528892174.jpg'),
(142, 'FM Mic Eallasn ES 350-1528893496', '/uploads/2018-06-13-1528893496.jpg'),
(143, 'AMP Box-1528894169', '/uploads/2018-06-13-1528894169.jpg'),
(144, 'Kenwood Mic-1528894416', '/uploads/2018-06-13-1528894416.jpg'),
(145, '-1528894594', '/uploads/2018-06-13-1528894594.jpg'),
(146, '-1528894638', '/uploads/2018-06-13-1528894638.jpg'),
(147, 'Speaker Wire-1528894831', '/uploads/2018-06-13-1528894831.jpg'),
(148, 'Parcan 1000w-1528950360', '/uploads/2018-06-14-1528950360.jpg'),
(149, 'Parcan 1000w-1528950461', '/uploads/2018-06-14-1528950461.jpg'),
(150, 'Max Fm Mic-1528950658', '/uploads/2018-06-14-1528950658.jpg'),
(152, 'Dj Power-1529561529', '/uploads/2018-06-21-1529561529.jpg'),
(153, 'Str-1529565679', '/uploads/2018-06-21-1529565679.jpg'),
(156, 'Kenwood Mic 2200-1529905842', '/uploads/2018-06-25-1529905842.jpg'),
(158, 'Kenwood Mic 2200-1529906317', '/uploads/2018-06-25-1529906317.jpg'),
(164, 'B&C 15 inch-1531207196', '/uploads/2018-07-10-1531207196.jpg'),
(165, '777 tweeter-1532339494', '/uploads/2018-07-23-1532339494.jpg'),
(166, '777tweeter-1532340429', '/uploads/2018-07-23-1532340429.jpg'),
(169, '450 tweeter PA-1532341217', '/uploads/2018-07-23-1532341217.jpg'),
(170, 'SP cone STR-1532341772', '/uploads/2018-07-23-1532341772.jpg'),
(173, '-1534150569', '/uploads/2018-08-13-1534150569.jpg'),
(175, 'XLR TO STERIO CABLE-1534330630', '/uploads/2018-08-15-1534330630.jpeg'),
(176, 'Gayan Sandamal-1575131811', '/uploads/2019-11-30-1575131811.png'),
(181, 'uioiu -1598120998', '/uploads/2020-08-22-1598120998.jpg'),
(183, 'Lomac 20mg-1598123780', '/uploads/2020-08-22-1598123780.png'),
(184, 'OMEZ 20mg-1598124106', '/uploads/2020-08-22-1598124106.png'),
(185, 'Nexium 20mg-1598124459', '/uploads/2020-08-22-1598124459.png'),
(186, 'Pantodac 20mg-1598124799', '/uploads/2020-08-22-1598124799.png'),
(187, 'Pantodac 40mg-1598124948', '/uploads/2020-08-22-1598124948.png'),
(188, 'Betaloc ZOK 25mg-1598126736', '/uploads/2020-08-22-1598126736.png'),
(189, 'Betaloc 50mg-1598126835', '/uploads/2020-08-22-1598126835.png'),
(190, 'Atova 10mg-1598127001', '/uploads/2020-08-22-1598127001.png'),
(191, 'Atova 20mg-1598127039', '/uploads/2020-08-22-1598127039.png'),
(192, 'Rosuvas 10mg-1598127124', '/uploads/2020-08-22-1598127124.png'),
(193, 'ZYROVA 10mg-1598127237', '/uploads/2020-08-22-1598127237.png'),
(194, 'Crestor 5mg-1598127322', '/uploads/2020-08-22-1598127322.png'),
(195, 'Crestor 10mg-1598127376', '/uploads/2020-08-22-1598127376.png'),
(196, 'Zaart 50mg-1598127460', '/uploads/2020-08-22-1598127460.png'),
(197, 'Revelol 50mg-1598127534', '/uploads/2020-08-22-1598127534.png'),
(198, 'Losacar-H 10mg-1598127620', '/uploads/2020-08-22-1598127620.png'),
(199, 'Losacar 50mg()-1598127737', '/uploads/2020-08-22-1598127737.png'),
(200, 'Cardiprin 100mg-1598127854', '/uploads/2020-08-22-1598127854.png'),
(201, 'Astrix 100mg-1598127995', '/uploads/2020-08-22-1598127995.png'),
(202, 'RePACE 50mg-1598128085', '/uploads/2020-08-22-1598128085.png'),
(203, 'Atorlip 10mg-1598128313', '/uploads/2020-08-22-1598128313.png'),
(204, 'Atorlip 20mg-1598128426', '/uploads/2020-08-22-1598128426.png'),
(205, 'Domperon -1598128565', '/uploads/2020-08-22-1598128565.png'),
(206, 'Deflux 10mg-1598128636', '/uploads/2020-08-22-1598128636.png'),
(207, 'Innocid 20mg-1598128750', '/uploads/2020-08-22-1598128750.png'),
(208, 'Clopact 75mg-1598128981', '/uploads/2020-08-22-1598128981.png'),
(209, 'NOKLOT 75mg-1598129132', '/uploads/2020-08-22-1598129132.png'),
(210, 'Fincar 5mg-1598129289', '/uploads/2020-08-22-1598129289.png'),
(211, 'Kalzana 500mg-1598129567', '/uploads/2020-08-22-1598129567.png'),
(212, 'Tenolol-1598129825', '/uploads/2020-08-22-1598129825.png'),
(213, 'Angiopril 25mg-1598129960', '/uploads/2020-08-22-1598129960.png'),
(214, 'Tazloc 20mg-1598130107', '/uploads/2020-08-22-1598130107.png'),
(215, 'Natrilix SR 1.5mg-1598130494', '/uploads/2020-08-22-1598130494.png'),
(216, 'RanCV 500mg-1598130633', '/uploads/2020-08-22-1598130633.png'),
(217, 'Imdur 60mg-1598130799', '/uploads/2020-08-22-1598130799.png'),
(218, 'Gp-2 2mg-1598130923', '/uploads/2020-08-22-1598130923.png'),
(219, 'Getryl 2mg-1598131002', '/uploads/2020-08-22-1598131002.png'),
(220, 'Getryl 4mg-1598131042', '/uploads/2020-08-22-1598131042.png'),
(221, 'Euglin 2mg-1598131098', '/uploads/2020-08-22-1598131098.png'),
(222, 'Euglin 4mg-1598131137', '/uploads/2020-08-22-1598131137.png'),
(223, 'GP-1 1mg-1598131197', '/uploads/2020-08-22-1598131197.png'),
(224, 'Reclide 80mg-1598131285', '/uploads/2020-08-22-1598131285.png'),
(225, 'Soridex 250mg-1598131370', '/uploads/2020-08-22-1598131370.png'),
(226, 'Ferup-SG-1598131536', '/uploads/2020-08-22-1598131536.png'),
(227, 'Jonac - GEL-1598131636', '/uploads/2020-08-22-1598131636.png'),
(228, 'Powergesic - Gel-1598131688', '/uploads/2020-08-22-1598131688.png'),
(229, 'Sporidex 125mg 100ml-1598131905', '/uploads/2020-08-22-1598131905.png'),
(230, 'Fucidin-1598132033', '/uploads/2020-08-22-1598132033.png'),
(231, 'Cloderm-1598132175', '/uploads/2020-08-22-1598132175.png'),
(232, 'Cloderm-1598132229', '/uploads/2020-08-22-1598132229.png'),
(233, 'Beprosone Ointment-1598132372', '/uploads/2020-08-22-1598132372.png'),
(234, 'Foban Cream-1598132451', '/uploads/2020-08-22-1598132451.png'),
(235, 'Diamicron MR 60mg-1598132618', '/uploads/2020-08-22-1598132618.png'),
(236, 'Asthaline HFA 100mcg-1598132948', '/uploads/2020-08-22-1598132948.png'),
(237, 'Asthaline DP 400mcg()-1598133033', '/uploads/2020-08-22-1598133033.png'),
(238, 'Seroflo 125 HFA-1598133129', '/uploads/2020-08-22-1598133129.png'),
(239, 'Seroflo 500mcg-1598133206', '/uploads/2020-08-22-1598133206.png'),
(240, 'Allermine-1598133307', '/uploads/2020-08-22-1598133307.png'),
(241, 'Glycinorm 40mg-1598144489', '/uploads/2020-08-23-1598144489.png'),
(242, 'Glycinorm MR 40mg-1598144548', '/uploads/2020-08-23-1598144548.png'),
(243, 'Glycomet 850mg-1598144621', '/uploads/2020-08-23-1598144621.png'),
(244, 'Celox R-1598144709', '/uploads/2020-08-23-1598144709.png'),
(245, 'Cephadex 125mg 100ml-1598144901', '/uploads/2020-08-23-1598144901.png'),
(246, 'Betaloc ZOK CR 50ml-1598145009', '/uploads/2020-08-23-1598145009.png'),
(247, 'Alfacip 0.25mcg-1598145102', '/uploads/2020-08-23-1598145102.png'),
(248, 'Fybogel (Ispaghula Husk)-1598145211', '/uploads/2020-08-23-1598145211.png'),
(249, 'Reclied MR 30mg-1598145289', '/uploads/2020-08-23-1598145289.png'),
(250, 'Vitalise Gold-1598145351', '/uploads/2020-08-23-1598145351.png'),
(251, 'Zabesta 5mg-1598145440', '/uploads/2020-08-23-1598145440.png'),
(252, 'Foban Ointment-1598145509', '/uploads/2020-08-23-1598145509.png'),
(253, 'Fobancort Cream-1598145592', '/uploads/2020-08-23-1598145592.png'),
(254, 'Fucithalmic Eyedrop-1598145872', '/uploads/2020-08-23-1598145872.png'),
(255, 'Momate Cream-1598145921', '/uploads/2020-08-23-1598145921.png'),
(256, 'Femilon-1598146143', '/uploads/2020-08-23-1598146143.png'),
(257, 'Turbute Syrup-1598146199', '/uploads/2020-08-23-1598146199.png'),
(258, 'Cephadex 500mg-1598146265', '/uploads/2020-08-23-1598146265.png'),
(259, 'Diamicron MR 630mg-1598146367', '/uploads/2020-08-23-1598146367.png'),
(260, 'Sonaderm GM Cream-1598146457', '/uploads/2020-08-23-1598146457.png'),
(261, 'Volini Gel-1598146567', '/uploads/2020-08-23-1598146567.png'),
(262, 'Atacand 4mg-1598146651', '/uploads/2020-08-23-1598146651.png'),
(263, 'Atacand 8mg-1598146721', '/uploads/2020-08-23-1598146721.png'),
(264, 'Deriva - C Gel-1598146770', '/uploads/2020-08-23-1598146770.png'),
(265, 'Flunerin 10mg-1598146871', '/uploads/2020-08-23-1598146871.png'),
(266, 'Cloxil 250mg-1598146982', '/uploads/2020-08-23-1598146982.png'),
(267, 'Belcid-1598147074', '/uploads/2020-08-23-1598147074.png'),
(268, 'Kool n Fresh-1598147179', '/uploads/2020-08-23-1598147179.png'),
(269, 'Hexidine 160ml-1598147229', '/uploads/2020-08-23-1598147229.png'),
(270, 'Hexidine 80ml-1598147339', '/uploads/2020-08-23-1598147339.png'),
(271, 'Becosules-1598147401', '/uploads/2020-08-23-1598147401.png'),
(272, 'Decon 10ml-1598147482', '/uploads/2020-08-23-1598147482.png'),
(273, 'Betaserc 8mg-1598147541', '/uploads/2020-08-23-1598147541.png'),
(274, 'Betaserc 16mg-1598147592', '/uploads/2020-08-23-1598147592.png'),
(275, 'Pioz 30mg-1598147672', '/uploads/2020-08-23-1598147672.png'),
(276, 'Pioz 15mg-1598147714', '/uploads/2020-08-23-1598147714.png'),
(277, 'P-Cort Syrup-1598147802', '/uploads/2020-08-23-1598147802.png'),
(278, 'Candid Powder 100g-1598147988', '/uploads/2020-08-23-1598147988.png'),
(279, 'Candid Powder 30g-1598148016', '/uploads/2020-08-23-1598148016.png'),
(280, 'Waxsol Eardrop 10ml-1598148157', '/uploads/2020-08-23-1598148157.png'),
(281, 'CAD D 1000-1598148225', '/uploads/2020-08-23-1598148225.png'),
(282, 'Lo-Kal Gold-1598148290', '/uploads/2020-08-23-1598148290.png'),
(283, 'Vitavite-1598148385', '/uploads/2020-08-23-1598148385.png'),
(284, 'Acnex-1598148511', '/uploads/2020-08-23-1598148511.png'),
(285, 'Hidrate Soap-1598148566', '/uploads/2020-08-23-1598148566.png'),
(286, 'Peptamen 400g-1598148760', '/uploads/2020-08-23-1598148760.png'),
(287, 'Sustacal 400g-1598148801', '/uploads/2020-08-23-1598148801.png'),
(288, 'Isocal 425g-1598148864', '/uploads/2020-08-23-1598148864.png'),
(289, 'Candid Cream-1598148918', '/uploads/2020-08-23-1598148918.png'),
(290, 'Candid-D Cream-1598148962', '/uploads/2020-08-23-1598148962.png'),
(291, 'Clean Derm Gel-1598149055', '/uploads/2020-08-23-1598149055.png'),
(292, 'Nucoxia 60mg-1598149139', '/uploads/2020-08-23-1598149139.png'),
(293, 'Meftal 500-1598149237', '/uploads/2020-08-23-1598149237.png'),
(294, 'HEQS 200mg-1598149355', '/uploads/2020-08-23-1598149355.png'),
(295, 'Astifen 1mg-1598149473', '/uploads/2020-08-23-1598149473.png'),
(296, 'Montiget 10mg-1598149561', '/uploads/2020-08-23-1598149561.png'),
(297, 'Loridin 10mg-1598149698', '/uploads/2020-08-23-1598149698.png'),
(298, 'KLY 42mg-1598149966', '/uploads/2020-08-23-1598149966.png'),
(299, 'KLY 82mg-1598149990', '/uploads/2020-08-23-1598149990.png'),
(300, 'TOCOSOFT-400-1598150142', '/uploads/2020-08-23-1598150142.png'),
(301, 'Calcivita-1598150220', '/uploads/2020-08-23-1598150220.png'),
(302, 'ENAT 400-1598150292', '/uploads/2020-08-23-1598150292.png'),
(303, 'Zincovit-1598150672', '/uploads/2020-08-23-1598150672.png'),
(304, 'Zincovit-D 15ml-1598150743', '/uploads/2020-08-23-1598150743.png'),
(305, 'Zincovit-S 200ml Syrup  -1598150823', '/uploads/2020-08-23-1598150823.png'),
(306, 'Zincovit-B 200ml Syrup-1598150873', '/uploads/2020-08-23-1598150873.png'),
(307, 'Zincofer-S 200ml Liquid-1598150981', '/uploads/2020-08-23-1598150981.png'),
(308, 'Zincofer Capsules-1598151088', '/uploads/2020-08-23-1598151088.png'),
(309, 'Voltaren Suppos 12.5mg-1598151406', '/uploads/2020-08-23-1598151406.png'),
(310, 'Voltaren Suppos 25mg-1598151474', '/uploads/2020-08-23-1598151474.png'),
(311, 'Voltaren Suppos 50mg-1598151518', '/uploads/2020-08-23-1598151518.png'),
(312, 'Voltaren Suppos 100mg-1598151551', '/uploads/2020-08-23-1598151551.png'),
(313, 'Voltaren 50mg Tablets-1598151646', '/uploads/2020-08-23-1598151646.png'),
(314, 'Voltaren 75mg Tablets-1598151719', '/uploads/2020-08-23-1598151719.png'),
(315, 'Zyncet-1598151836', '/uploads/2020-08-23-1598151836.png'),
(316, 'Zincoderm-M Cream 15g-1598151955', '/uploads/2020-08-23-1598151955.png'),
(317, 'Zincoderm-S 15g Cream-1598152053', '/uploads/2020-08-23-1598152053.png'),
(318, 'Zincoderm-G 15g Cream-1598152156', '/uploads/2020-08-23-1598152156.png'),
(319, 'Livolin-1598152241', '/uploads/2020-08-23-1598152241.png'),
(320, 'Curam 375mg-1598152319', '/uploads/2020-08-23-1598152319.png'),
(321, 'Curam 625mg-1598152468', '/uploads/2020-08-23-1598152468.png'),
(322, 'Curam 60ml-1598152574', '/uploads/2020-08-23-1598152574.png'),
(323, 'Curam 100ml-1598152664', '/uploads/2020-08-23-1598152664.png'),
(324, 'Rosuvas 20mg-1598197707', '/uploads/2020-08-23-1598197707.png'),
(325, 'Melox15mg-1598197936', '/uploads/2020-08-23-1598197936.png'),
(326, 'Melox 7.5mg-1598197999', '/uploads/2020-08-23-1598197999.png'),
(327, 'Inosita 100mg-1598198121', '/uploads/2020-08-23-1598198121.png'),
(328, 'Inosita 50mg-1598198164', '/uploads/2020-08-23-1598198164.png'),
(329, 'Sita 100mg-1598198271', '/uploads/2020-08-23-1598198271.png'),
(330, 'Sita 50mg-1598198353', '/uploads/2020-08-23-1598198353.png'),
(331, 'Trevia 100g-1598198423', '/uploads/2020-08-23-1598198423.png'),
(332, 'Trevia 50g-1598198482', '/uploads/2020-08-23-1598198482.png'),
(333, 'Encorate Chrono 500mg-1598198592', '/uploads/2020-08-23-1598198592.png'),
(334, 'Encorate Chrono 300mg-1598198665', '/uploads/2020-08-23-1598198665.png'),
(335, 'Encorate Chrono 200mg-1598198724', '/uploads/2020-08-23-1598198724.png'),
(336, 'Veniz XR 75mg-1598198853', '/uploads/2020-08-23-1598198853.png'),
(337, 'Veniz XR 37.5mg-1598198892', '/uploads/2020-08-23-1598198892.png'),
(338, 'Bupron 150mg-1598199039', '/uploads/2020-08-23-1598199039.png'),
(339, 'Prodep 20mg-1598199187', '/uploads/2020-08-23-1598199187.png'),
(340, 'Duzela 30mg-1598199275', '/uploads/2020-08-23-1598199275.png'),
(341, 'Duzela 20mg-1598199330', '/uploads/2020-08-23-1598199330.png'),
(342, 'Stanlip 160mg-1598199382', '/uploads/2020-08-23-1598199382.png'),
(343, 'Syndopa 275mg-1598199460', '/uploads/2020-08-23-1598199460.png'),
(344, 'Cetrizet 10mg-1598199567', '/uploads/2020-08-23-1598199567.png'),
(345, 'Lamosyn 50mg-1598199654', '/uploads/2020-08-23-1598199654.png'),
(346, 'Alzolam 0.25mg-1598199752', '/uploads/2020-08-23-1598199752.png'),
(347, 'Alzolam 0.5mg-1598199793', '/uploads/2020-08-23-1598199793.png'),
(348, 'Lithosun SR-1598199863', '/uploads/2020-08-23-1598199863.png'),
(349, 'Oxetol 300mg-1598200096', '/uploads/2020-08-23-1598200096.png'),
(350, 'Oleanz 5mg-1598200241', '/uploads/2020-08-23-1598200241.png'),
(351, 'Oleanz Rapitab 5mg-1598200371', '/uploads/2020-08-23-1598200371.png'),
(352, 'Mirtaz 30mg-1598200468', '/uploads/2020-08-23-1598200468.png'),
(353, 'Mirtaz 15mg-1598200543', '/uploads/2020-08-23-1598200543.png'),
(354, 'Famocid 20mg-1598200731', '/uploads/2020-08-23-1598200731.png'),
(355, 'Famocid 40mg-1598200827', '/uploads/2020-08-23-1598200827.png'),
(356, 'Fastum Gel 15g-1598200960', '/uploads/2020-08-23-1598200960.png'),
(357, 'Vilda 50mg-1598201186', '/uploads/2020-08-23-1598201186.png'),
(358, 'Zosert 25mg-1598201273', '/uploads/2020-08-23-1598201273.png'),
(359, 'Zosert 50mg-1598201330', '/uploads/2020-08-23-1598201330.png'),
(360, 'Citopam 20mg-1598201467', '/uploads/2020-08-23-1598201467.png'),
(361, 'Citopam 10mg-1598201545', '/uploads/2020-08-23-1598201545.png'),
(362, 'Diprovate-N Cream-1598201621', '/uploads/2020-08-23-1598201621.png'),
(363, 'Lamosyn 25mg-1598201696', '/uploads/2020-08-23-1598201696.png'),
(364, 'Topirol 25mg-1598201868', '/uploads/2020-08-23-1598201868.png'),
(365, 'Om-3 1000mg-1598202011', '/uploads/2020-08-23-1598202011.png'),
(366, 'Om-3 500mg-1598202071', '/uploads/2020-08-23-1598202071.png'),
(367, 'Nexito 10mg-1598202339', '/uploads/2020-08-23-1598202339.png'),
(368, 'Nexito 5mg-1598202390', '/uploads/2020-08-23-1598202390.png'),
(369, 'Qutipin 25mg-1598202455', '/uploads/2020-08-23-1598202455.png'),
(370, 'Nitrest 10mg-1598202521', '/uploads/2020-08-23-1598202521.png'),
(371, 'Oxetol 150mg-1598202587', '/uploads/2020-08-23-1598202587.png'),
(372, 'Oil Of Dermae Cream-1598202685', '/uploads/2020-08-23-1598202685.png'),
(373, 'Pim E-1000-1598203043', '/uploads/2020-08-23-1598203043.png'),
(374, 'VITACAP-1598203208', '/uploads/2020-08-23-1598203208.png'),
(375, 'Becozinc-1598203422', '/uploads/2020-08-23-1598203422.png'),
(376, 'MAXX OMEGA 3-1598203616', '/uploads/2020-08-23-1598203616.png'),
(377, 'Diasure Diabetic Vanila 400g-1598203846', '/uploads/2020-08-23-1598203846.png'),
(378, 'Ensure Vanila 400g-1598203952', '/uploads/2020-08-23-1598203952.png'),
(379, 'Polybion Syrup 250ml-1598204136', '/uploads/2020-08-23-1598204136.png'),
(380, 'Concor COR 2.5mg-1598204247', '/uploads/2020-08-23-1598204247.png'),
(381, 'Concor 5mg-1598204300', '/uploads/2020-08-23-1598204300.png'),
(382, 'Nasivion (paediatric) 0.025%-1598204435', '/uploads/2020-08-23-1598204435.png'),
(383, 'Nasivion 0.05%-1598204479', '/uploads/2020-08-23-1598204479.png'),
(384, 'Cosome Syrup-1598204528', '/uploads/2020-08-23-1598204528.png'),
(385, 'Betamil Cream-1598204598', '/uploads/2020-08-23-1598204598.png'),
(386, 'Betamil M Cream-1598204628', '/uploads/2020-08-23-1598204628.png'),
(387, 'Anemidox-1598204703', '/uploads/2020-08-23-1598204703.png'),
(388, 'Neoprox 250mg-1598204854', '/uploads/2020-08-23-1598204854.png'),
(389, 'Neoprox 500mg-1598204910', '/uploads/2020-08-23-1598204910.png'),
(390, 'Deflux 10mg-1598205028', '/uploads/2020-08-23-1598205028.png'),
(391, 'Tzorel 2mg-1598205308', '/uploads/2020-08-23-1598205308.png'),
(392, 'Tzorel 4mg-1598205372', '/uploads/2020-08-23-1598205372.png'),
(393, 'Glucophage 850mg-1598205455', '/uploads/2020-08-23-1598205455.png'),
(394, 'Glucophage 500mg()-1598205533', '/uploads/2020-08-23-1598205533.png'),
(395, 'Evion 200mg-1598205613', '/uploads/2020-08-23-1598205613.png'),
(396, 'Evion 400mg-1598205717', '/uploads/2020-08-23-1598205717.png'),
(397, 'Proglutrol 500mg-1598205781', '/uploads/2020-08-23-1598205781.png'),
(398, 'Orofer Syrup-1598205894', '/uploads/2020-08-23-1598205894.png'),
(399, 'Orofer Drops-1598205941', '/uploads/2020-08-23-1598205941.png'),
(400, 'Maxepa-1598206090', '/uploads/2020-08-23-1598206090.png'),
(401, 'Tryptanol 25mg-1598206176', '/uploads/2020-08-23-1598206176.png'),
(402, 'Getcet 5mg-1598206269', '/uploads/2020-08-23-1598206269.png'),
(403, 'Pcam Gel-1598206365', '/uploads/2020-08-23-1598206365.png'),
(404, 'Zem XL 90mg-1598206426', '/uploads/2020-08-23-1598206426.png'),
(405, 'Nidonil 80mg-1598206508', '/uploads/2020-08-23-1598206508.png'),
(406, 'Nitril 0.4mg Spray-1598206645', '/uploads/2020-08-23-1598206645.png'),
(407, 'Glycomet 500mg-1598206745', '/uploads/2020-08-23-1598206745.png'),
(408, 'Glycomet SR 500mg-1598206822', '/uploads/2020-08-23-1598206822.png'),
(409, 'ABCD-1598286029', '/uploads/2020-08-24-1598286029.jpg'),
(410, 'abcd-1598286249', '/uploads/2020-08-24-1598286249.jpg'),
(411, 'GLOW Collagen-1598287176', '/uploads/2020-08-24-1598287176.png'),
(412, 'GLOW-1598287278', '/uploads/2020-08-24-1598287278.png'),
(413, 'Facia Advanced-1598289465', '/uploads/2020-08-24-1598289465.png'),
(414, 'Ginsomin-1598289542', '/uploads/2020-08-24-1598289542.png'),
(415, 'Beclomin Cream-1598289649', '/uploads/2020-08-24-1598289649.png'),
(416, 'Proglutrol 500mg-1598289786', '/uploads/2020-08-24-1598289786.png'),
(417, 'Sporidex 250mg (New)-1598290023', '/uploads/2020-08-24-1598290023.png'),
(418, 'Sporidex 500mg-1598290097', '/uploads/2020-08-24-1598290097.png'),
(419, 'deriphyllin 150mg-1598290205', '/uploads/2020-08-24-1598290205.png'),
(420, 'Deriphyllin 300mg-1598290434', '/uploads/2020-08-24-1598290434.png'),
(421, 'Valparin-200-1598290609', '/uploads/2020-08-24-1598290609.png'),
(422, 'Enhancin 375mg-1598290860', '/uploads/2020-08-24-1598290860.png'),
(423, 'Enhancin 156.25mg-1598291142', '/uploads/2020-08-24-1598291142.png'),
(424, 'Sporidex 125mg-1598291228', '/uploads/2020-08-24-1598291228.png'),
(425, 'Zycel 200mg-1598291322', '/uploads/2020-08-24-1598291322.png'),
(426, 'Zycel 100mg-1598291362', '/uploads/2020-08-24-1598291362.png'),
(427, 'Dilzem 60mg-1598291461', '/uploads/2020-08-24-1598291461.png'),
(428, 'Dilzem 30mg-1598291587', '/uploads/2020-08-24-1598291587.png'),
(429, 'Megavit-1598291647', '/uploads/2020-08-24-1598291647.png'),
(430, 'ZYROVA 5mg-1598291772', '/uploads/2020-08-24-1598291772.png'),
(431, 'Fungicon 150mg-1598292066', '/uploads/2020-08-24-1598292066.png'),
(432, 'Candid V6 Vaginal-1598292182', '/uploads/2020-08-24-1598292182.png'),
(433, 'Candid V Gel-1598292247', '/uploads/2020-08-24-1598292247.png'),
(434, 'Enderm-GM Cream-1598292322', '/uploads/2020-08-24-1598292322.png'),
(435, 'Fucidin 15g Cream-1598292613', '/uploads/2020-08-24-1598292613.png'),
(436, 'Fucidin H 5g Cream-1598292656', '/uploads/2020-08-24-1598292656.png'),
(437, 'Sazo EN 500-1598292778', '/uploads/2020-08-24-1598292778.png'),
(438, 'Canditral-1598292893', '/uploads/2020-08-24-1598292893.png'),
(439, 'Angizaar 25mg-1598293085', '/uploads/2020-08-24-1598293085.png'),
(440, 'Rispond 2mg-1598293197', '/uploads/2020-08-24-1598293197.png'),
(441, 'Rispond 1mg-1598293241', '/uploads/2020-08-24-1598293241.png'),
(442, 'Risnia 2mg-1598293280', '/uploads/2020-08-24-1598293280.png'),
(443, 'Dettol Antibacterial Plaster-1598293590', '/uploads/2020-08-24-1598293590.png'),
(444, 'Benzac AC Gel-1598293725', '/uploads/2020-08-24-1598293725.png'),
(445, 'Candid V3 Vaginal-1598293840', '/uploads/2020-08-24-1598293840.png'),
(446, 'MOVCOL laxative-1598294493', '/uploads/2020-08-24-1598294493.png'),
(447, 'Clopilet 75mg-1598294581', '/uploads/2020-08-24-1598294581.png'),
(448, 'Melmet SR 500mg-1598294655', '/uploads/2020-08-24-1598294655.png'),
(449, 'Microdox DT 100mg-1598294728', '/uploads/2020-08-24-1598294728.png'),
(450, 'Dianorm-OD 30mg-1598294838', '/uploads/2020-08-24-1598294838.png'),
(451, 'Betasol -1598294976', '/uploads/2020-08-24-1598294976.png'),
(452, 'Betasol-1598295022', '/uploads/2020-08-24-1598295022.png'),
(453, 'Betasol-1598295090', '/uploads/2020-08-24-1598295090.png'),
(454, 'Betasol-1598296433', '/uploads/2020-08-24-1598296433.png'),
(456, 'Betasol EyeDrop-1598296902', '/uploads/2020-08-24-1598296902.png'),
(457, 'Betasol-N ENT-1598296998', '/uploads/2020-08-24-1598296998.png'),
(458, 'Probeta ENT-1598297130', '/uploads/2020-08-24-1598297130.png'),
(459, 'Probeta-N ENT-1598297170', '/uploads/2020-08-24-1598297170.png'),
(460, 'Beclomin Lotion-1598297297', '/uploads/2020-08-24-1598297297.png'),
(461, 'Sitagen 100mg-1598297394', '/uploads/2020-08-24-1598297394.png'),
(462, 'Sitagen 50mg-1598297442', '/uploads/2020-08-24-1598297442.png'),
(463, 'Dianorm-OD 60mg-1598297571', '/uploads/2020-08-24-1598297571.png'),
(464, 'Zycolax 5mg-1598297725', '/uploads/2020-08-24-1598297725.png'),
(465, 'Fucicort 5mg Cream-1598297989', '/uploads/2020-08-24-1598297989.png'),
(466, 'Gentacil Drop-1598298211', '/uploads/2020-08-24-1598298211.png'),
(467, 'Zithrin 500mg-1598298313', '/uploads/2020-08-24-1598298313.png'),
(468, 'Supricort Cream-1598298428', '/uploads/2020-08-24-1598298428.png'),
(469, 'Pilex ointment-1598298526', '/uploads/2020-08-24-1598298526.png'),
(470, 'Seven Seas Evening/ Primrose oil-1598298625', '/uploads/2020-08-24-1598298625.png'),
(471, 'Seven Seas Ginkgo Max-1598298704', '/uploads/2020-08-24-1598298704.png'),
(472, 'Bio oil 60ml-1598298839', '/uploads/2020-08-24-1598298839.png'),
(473, 'Fluticone-1598298922', '/uploads/2020-08-24-1598298922.png'),
(474, 'Fluticone Nasal Spray-1598299018', '/uploads/2020-08-24-1598299018.png'),
(475, 'NNO-1598299076', '/uploads/2020-08-24-1598299076.png'),
(476, 'Prodigy Test Strip-1598299208', '/uploads/2020-08-24-1598299208.png'),
(477, 'Bactoclav 375mg-1598300628', '/uploads/2020-08-24-1598300628.png'),
(478, 'Perfectil Original-1598300689', '/uploads/2020-08-24-1598300689.png'),
(479, 'Perfectil Platinum-1598300744', '/uploads/2020-08-24-1598300744.png'),
(480, 'Wellman Original-1598300804', '/uploads/2020-08-24-1598300804.png'),
(481, 'Menopace-1598300993', '/uploads/2020-08-24-1598300993.png'),
(482, 'Osteocare Tablets-1598301063', '/uploads/2020-08-24-1598301063.png'),
(483, 'Osteocare Liquid-1598301128', '/uploads/2020-08-24-1598301128.png'),
(484, 'Renadium 600mg-1598301415', '/uploads/2020-08-24-1598301415.png'),
(485, 'Bactoclav 625mg-1598301542', '/uploads/2020-08-24-1598301542.png'),
(486, 'Jointace-1598301609', '/uploads/2020-08-24-1598301609.png'),
(487, '-1598301724', '/uploads/2020-08-24-1598301724.png'),
(488, 'Pulmocef 250mg-1598301831', '/uploads/2020-08-24-1598301831.png'),
(489, 'Allercet 5mg-1598302030', '/uploads/2020-08-24-1598302030.png'),
(490, 'Neodol-K 50mg-1598302116', '/uploads/2020-08-24-1598302116.png'),
(491, 'Wellwoman-1598302261', '/uploads/2020-08-24-1598302261.png'),
(492, 'Nervijen D-1598302352', '/uploads/2020-08-24-1598302352.png'),
(493, 'Nervijen-1598302460', '/uploads/2020-08-24-1598302460.png'),
(494, 'Bigsens XR 500mg-1598302535', '/uploads/2020-08-24-1598302535.png'),
(495, 'Pulmocef 500mg-1598302619', '/uploads/2020-08-24-1598302619.png'),
(496, 'Allercet 10mg-1598302675', '/uploads/2020-08-24-1598302675.png'),
(497, 'Phytoral Ointment-1598302752', '/uploads/2020-08-24-1598302752.png'),
(498, 'Turbute 2.5mg-1598302829', '/uploads/2020-08-24-1598302829.png'),
(499, 'Glyco-A Cream-1598302903', '/uploads/2020-08-24-1598302903.png'),
(500, 'Prednitab 5mg-1598302997', '/uploads/2020-08-24-1598302997.png'),
(501, 'Jointace Gel-1598303062', '/uploads/2020-08-24-1598303062.png'),
(502, 'Forceval-1598303201', '/uploads/2020-08-24-1598303201.png'),
(503, 'Zyncet Syrup-1598303437', '/uploads/2020-08-24-1598303437.png'),
(504, 'Astifen Syrup-1598303528', '/uploads/2020-08-24-1598303528.png'),
(505, 'Orlifit 120mg-1598303673', '/uploads/2020-08-24-1598303673.png'),
(506, 'Nucoxia 90mg-1598303837', '/uploads/2020-08-24-1598303837.png'),
(507, 'Biovita Gold-1598303906', '/uploads/2020-08-24-1598303906.png'),
(508, 'Revitiz-1598303972', '/uploads/2020-08-24-1598303972.png'),
(509, 'FreeStyle Optium Strips-1598304071', '/uploads/2020-08-24-1598304071.png'),
(510, 'Peritol Syrup-1598304158', '/uploads/2020-08-24-1598304158.png'),
(511, 'Fluoritop-1598304440', '/uploads/2020-08-24-1598304440.png'),
(512, 'Griseofred 500mg-1598304885', '/uploads/2020-08-24-1598304885.png'),
(513, 'Mucopain Gel-1598304957', '/uploads/2020-08-24-1598304957.png'),
(514, 'Hexigel Mouth-1598305064', '/uploads/2020-08-24-1598305064.png'),
(515, 'Enervon-C-1598305221', '/uploads/2020-08-24-1598305221.png'),
(516, 'Solmux Syrup Pediatric-1598305371', '/uploads/2020-08-24-1598305371.png'),
(517, 'Solmux forte Suspension-1598305446', '/uploads/2020-08-24-1598305446.png'),
(518, 'Thermoseal Dental Gel Pediatric-1598305545', '/uploads/2020-08-24-1598305545.png'),
(519, 'Growee Syrup-1598305621', '/uploads/2020-08-24-1598305621.png'),
(520, 'Megatone Syrup-1598305786', '/uploads/2020-08-24-1598305786.png'),
(521, 'Multiplex Multi vitamin Syrup-1598305886', '/uploads/2020-08-24-1598305886.png'),
(522, 'Espra 40mg-1598305975', '/uploads/2020-08-24-1598305975.png'),
(523, 'Espra 20mg-1598306019', '/uploads/2020-08-24-1598306019.png'),
(524, 'Erythrocin 500mg-1598306095', '/uploads/2020-08-24-1598306095.png'),
(525, 'Erythrocin 250mg-1598306132', '/uploads/2020-08-24-1598306132.png'),
(526, 'Erythrocin Granules-1598306199', '/uploads/2020-08-24-1598306199.png'),
(527, 'Ronex Syrup-1598306269', '/uploads/2020-08-24-1598306269.png'),
(528, 'Neuropat-1598306342', '/uploads/2020-08-24-1598306342.png'),
(529, 'Transamin 500mg-1598306513', '/uploads/2020-08-25-1598306513.png'),
(530, 'Maxit 50mg-1598306585', '/uploads/2020-08-25-1598306585.png'),
(531, 'Normozide 50mg-1598306660', '/uploads/2020-08-25-1598306660.png'),
(532, 'Alrin 120mg-1598306871', '/uploads/2020-08-25-1598306871.png'),
(533, 'Alrin 180mg-1598306941', '/uploads/2020-08-25-1598306941.png'),
(534, 'Aquarin Cream-1598334522', '/uploads/2020-08-25-1598334522.png'),
(535, 'Aquarin Fragrance Cream-1598334614', '/uploads/2020-08-25-1598334614.png'),
(536, 'Momcal-1598334784', '/uploads/2020-08-25-1598334784.png'),
(537, 'Telsart 20mg-1598334859', '/uploads/2020-08-25-1598334859.png'),
(538, 'Telsart 40mg-1598334926', '/uploads/2020-08-25-1598334926.png'),
(539, 'Gaba 100mg-1598335190', '/uploads/2020-08-25-1598335190.png'),
(540, 'Mibe 10mg-1598335252', '/uploads/2020-08-25-1598335252.png'),
(541, 'Nitrocontin 6.4mg-1598335911', '/uploads/2020-08-25-1598335911.png'),
(542, 'Nitrocontin 2.6mg-1598335954', '/uploads/2020-08-25-1598335954.png'),
(543, 'Rosiden Gel-1598336140', '/uploads/2020-08-25-1598336140.png'),
(544, 'Relaxone Plus 30gm Ointment-1598336270', '/uploads/2020-08-25-1598336270.png'),
(545, 'Nitrofiss Oinment-1598336385', '/uploads/2020-08-25-1598336385.png'),
(546, 'Beterdine Ointment-1598336468', '/uploads/2020-08-25-1598336468.png'),
(547, 'Manorest 0.25mg-1598336529', '/uploads/2020-08-25-1598336529.png'),
(548, 'Manorest 0.5mg-1598336567', '/uploads/2020-08-25-1598336567.png'),
(549, 'Nebivas 5mg-1598336679', '/uploads/2020-08-25-1598336679.png'),
(550, 'Lysine Head Lotion-1598336758', '/uploads/2020-08-25-1598336758.png'),
(551, 'Vomvin 10mg Suppo-1598336927', '/uploads/2020-08-25-1598336927.png'),
(552, 'Vomvin 60mg adult Suppo-1598337015', '/uploads/2020-08-25-1598337015.png'),
(553, 'Vomvin 30mg Children Suppo-1598337207', '/uploads/2020-08-25-1598337207.png'),
(554, 'Hilac LAX-1598337296', '/uploads/2020-08-25-1598337296.png'),
(555, 'Klaricid 250mg-1598337362', '/uploads/2020-08-25-1598337362.png'),
(556, 'Klaricid 500mg-1598337402', '/uploads/2020-08-25-1598337402.png'),
(557, 'Mumfer Syrup-1598337469', '/uploads/2020-08-25-1598337469.png'),
(558, 'Mumfer Drops-1598337508', '/uploads/2020-08-25-1598337508.png'),
(559, 'Supirocin Ointment-1598337598', '/uploads/2020-08-25-1598337598.png'),
(560, 'Flucort Ointment-1598337658', '/uploads/2020-08-25-1598337658.png'),
(561, 'Momate 15g Ointment-1598337808', '/uploads/2020-08-25-1598337808.png'),
(562, 'Momate-S Ointment 10g-1598337858', '/uploads/2020-08-25-1598337858.png'),
(563, 'Candid plus eardrop-1598337921', '/uploads/2020-08-25-1598337921.png'),
(564, 'Betadine Germicide Gargle 100ml-1598338177', '/uploads/2020-08-25-1598338177.png'),
(565, 'Betadine Germicide Gargle 50ml-1598338225', '/uploads/2020-08-25-1598338225.png'),
(566, 'Betadine Microbicidal 100ml-1598338306', '/uploads/2020-08-25-1598338306.png'),
(567, 'Betadine Microbicidal 50ml-1598338382', '/uploads/2020-08-25-1598338382.png'),
(568, 'Betadine Surgical Scrub 50ml-1598338465', '/uploads/2020-08-25-1598338465.png'),
(569, 'Diamicron 80mg-1598338798', '/uploads/2020-08-25-1598338798.png'),
(570, 'Coversyl 10mg-1598339006', '/uploads/2020-08-25-1598339006.png'),
(571, 'Coversyl 5mg-1598339070', '/uploads/2020-08-25-1598339070.png'),
(572, 'Preterax 5mg-1598339158', '/uploads/2020-08-25-1598339158.png'),
(573, 'Preterax 2.5mg-1598339203', '/uploads/2020-08-25-1598339203.png'),
(574, 'Coralan 5mg-1598339338', '/uploads/2020-08-25-1598339338.png'),
(575, 'Klean.Prep 69g-1598339420', '/uploads/2020-08-25-1598339420.png'),
(576, 'Amitone Syrup-1598340895', '/uploads/2020-08-25-1598340895.png'),
(577, 'LC 5mg-1598340988', '/uploads/2020-08-25-1598340988.png'),
(578, 'Amiton 1mg-1598341078', '/uploads/2020-08-25-1598341078.png'),
(579, 'Glucozide 80mg-1598341123', '/uploads/2020-08-25-1598341123.png'),
(580, 'Uniren Spray-1598341196', '/uploads/2020-08-25-1598341196.png'),
(581, 'Vomiz 4mg-1598341245', '/uploads/2020-08-25-1598341245.png'),
(582, 'Onetouch Select 10 strips-1598341365', '/uploads/2020-08-25-1598341365.png'),
(583, 'Onetouch Select 25 Strips-1598341428', '/uploads/2020-08-25-1598341428.png'),
(584, 'Onetouch Altra 50 Strips-1598341470', '/uploads/2020-08-25-1598341470.png'),
(585, 'BRANDS Essence of Chicken-1598341563', '/uploads/2020-08-25-1598341563.png'),
(586, 'DIGENE Gel Mint Flavour 200ml-1598341695', '/uploads/2020-08-25-1598341695.png'),
(587, 'Cremaffin Syrup-1598341846', '/uploads/2020-08-25-1598341846.png'),
(588, 'Cremaffin-1598341913', '/uploads/2020-08-25-1598341913.png'),
(589, 'Cremaffin Syrup-1598341993', '/uploads/2020-08-25-1598341993.png'),
(590, 'Cremaffin plus-1598342080', '/uploads/2020-08-25-1598342080.png'),
(591, 'Glucobay-1598342247', '/uploads/2020-08-25-1598342247.png'),
(592, 'Optive Eyedrop-1598342319', '/uploads/2020-08-25-1598342319.png'),
(593, 'Premolut N 5mg-1598342436', '/uploads/2020-08-25-1598342436.png'),
(594, 'Allergan Prednisolone-1598342599', '/uploads/2020-08-25-1598342599.png'),
(595, 'FML (fluromethlone) Eyedrop-1598342712', '/uploads/2020-08-25-1598342712.png'),
(596, 'Exopred Eyedrop-1598342801', '/uploads/2020-08-25-1598342801.png'),
(597, 'Lumigan 0.03%-1598342924', '/uploads/2020-08-25-1598342924.png'),
(598, 'Lumigan 0.01%-1598342967', '/uploads/2020-08-25-1598342967.png'),
(599, 'Acular-1598343024', '/uploads/2020-08-25-1598343024.png'),
(600, 'Acular LS-1598343072', '/uploads/2020-08-25-1598343072.png'),
(601, 'Ganfort-1598343132', '/uploads/2020-08-25-1598343132.png'),
(602, 'Alphagan P-1598343182', '/uploads/2020-08-25-1598343182.png'),
(603, 'Zymaxid-1598343223', '/uploads/2020-08-25-1598343223.png'),
(604, 'Zymar-1598343259', '/uploads/2020-08-25-1598343259.png'),
(605, 'Exocin-1598343306', '/uploads/2020-08-25-1598343306.png'),
(606, 'L-Pred-1598343352', '/uploads/2020-08-25-1598343352.png'),
(607, 'Combigen-1598343387', '/uploads/2020-08-25-1598343387.png'),
(608, 'Relestat-1598343425', '/uploads/2020-08-25-1598343425.png'),
(609, 'Diane 35-1598343596', '/uploads/2020-08-25-1598343596.png'),
(610, 'Yasmin-1598343663', '/uploads/2020-08-25-1598343663.png'),
(611, 'Acuvail-1598343775', '/uploads/2020-08-25-1598343775.png'),
(612, 'Refresh Tears-1598343835', '/uploads/2020-08-25-1598343835.png'),
(613, 'Refresh Liquigel-1598343878', '/uploads/2020-08-25-1598343878.png'),
(614, 'DIGENE Gel Mint Flavour 200ml-1598348213', '/uploads/2020-08-25-1598348213.png'),
(615, 'DIGENE Gel Mint Flavour 200ml-1598348297', '/uploads/2020-08-25-1598348297.png'),
(616, 'DIGENE Gel Mint Flavour 200ml-1598348487', '/uploads/2020-08-25-1598348487.png'),
(617, 'DIGENE Gel Mint Flavour 200ml-1598348560', '/uploads/2020-08-25-1598348560.png'),
(618, 'DIGENE Gel Mint Flavour 200 ml-1598348809', '/uploads/2020-08-25-1598348809.png'),
(619, 'aaa-1598349081', '/uploads/2020-08-25-1598349081.png'),
(620, 'aaaa-1598349107', '/uploads/2020-08-25-1598349107.png'),
(621, 'aaaaa-1598349861', '/uploads/2020-08-25-1598349861.png'),
(622, 'aaaa-1598349941', '/uploads/2020-08-25-1598349941.jpg'),
(623, 'Neo loridin-1598350520', '/uploads/2020-08-25-1598350520.png'),
(624, 'Envas 5mg-1598350635', '/uploads/2020-08-25-1598350635.png'),
(625, 'Dexaquin Ointment-1598350791', '/uploads/2020-08-25-1598350791.png'),
(626, 'Ocupres-E Eyedrop-1598350874', '/uploads/2020-08-25-1598350874.png'),
(627, 'Glenper Permethrin Cream-1598350935', '/uploads/2020-08-25-1598350935.png'),
(628, 'Deriva Aqueous Gel-1598351040', '/uploads/2020-08-25-1598351040.png'),
(629, 'Deriva MS-1598351099', '/uploads/2020-08-25-1598351099.png'),
(630, 'Formonide respi caps 400mcg-1598351299', '/uploads/2020-08-25-1598351299.png'),
(631, 'Formonide Respi Caps 200mcg-1598351394', '/uploads/2020-08-25-1598351394.png'),
(632, 'Formonide Inhaler 400mcg-1598351467', '/uploads/2020-08-25-1598351467.png'),
(633, 'Tacroz Ointment 0.1%-1598351555', '/uploads/2020-08-25-1598351555.png'),
(634, 'Tacroz Ointment 0.03%-1598351613', '/uploads/2020-08-25-1598351613.png'),
(635, 'Eptoin Phenytoin 100mg-1598351751', '/uploads/2020-08-25-1598351751.png'),
(636, 'Powercort Cream-1598351825', '/uploads/2020-08-25-1598351825.png'),
(637, 'Optive UD Eyedrop-1598351904', '/uploads/2020-08-25-1598351904.png'),
(638, 'Sucrafil-1598351973', '/uploads/2020-08-25-1598351973.png'),
(639, 'Sucrafil O Gel-1598352035', '/uploads/2020-08-25-1598352035.png'),
(640, 'Nefrosave Plus-1598352104', '/uploads/2020-08-25-1598352104.png'),
(641, 'Envas 10-1598352215', '/uploads/2020-08-25-1598352215.png'),
(642, 'Sugar Free-1598352354', '/uploads/2020-08-25-1598352354.png'),
(643, 'Domperon Syrup-1598352436', '/uploads/2020-08-25-1598352436.png'),
(644, 'Salonpas Spray-1598352626', '/uploads/2020-08-25-1598352626.png'),
(645, 'Frusemide 40mg-1598352878', '/uploads/2020-08-25-1598352878.png'),
(646, 'Clarityne 10mg-1598353029', '/uploads/2020-08-25-1598353029.png'),
(647, 'Plavix 75mg-1598353178', '/uploads/2020-08-25-1598353178.png'),
(648, 'Sofradex Cream-1598353240', '/uploads/2020-08-25-1598353240.png'),
(649, 'Framycetin Cream-1598353421', '/uploads/2020-08-25-1598353421.png'),
(650, 'Allegra 180mg-1598353615', '/uploads/2020-08-25-1598353615.png'),
(651, 'Allegra 120mg-1598353679', '/uploads/2020-08-25-1598353679.png'),
(652, 'Cetapin XR-1598353783', '/uploads/2020-08-25-1598353783.png'),
(653, 'Insulin syringe-1598353995', '/uploads/2020-08-25-1598353995.png'),
(654, 'Dermaveen Cream 100ml-1598354095', '/uploads/2020-08-25-1598354095.png'),
(655, 'Dermaveen Lotion -1598354499', '/uploads/2020-08-25-1598354499.png'),
(656, 'Dermaveen Shower and bath oil-1598354582', '/uploads/2020-08-25-1598354582.png'),
(657, 'Epilin 200mg-1598354716', '/uploads/2020-08-25-1598354716.png'),
(658, 'Fefol-1598354818', '/uploads/2020-08-25-1598354818.png'),
(659, 'Amaryl 1mg-1598354966', '/uploads/2020-08-25-1598354966.png'),
(660, 'Amaryl 2mg-1598355150', '/uploads/2020-08-25-1598355150.png'),
(661, 'Amaryl 3mg-1598355222', '/uploads/2020-08-25-1598355222.png'),
(662, 'Cardace 2.5mg-1598355637', '/uploads/2020-08-25-1598355637.png'),
(663, 'Cardace 5mg-1598356050', '/uploads/2020-08-25-1598356050.png'),
(664, 'Daonil 5mg-1598356210', '/uploads/2020-08-25-1598356210.png'),
(665, 'Nuelin SR 250-1598356432', '/uploads/2020-08-25-1598356432.png'),
(666, 'Clarityne Syrup-1598356508', '/uploads/2020-08-25-1598356508.png'),
(667, 'Librax 5mg-1598358286', '/uploads/2020-08-25-1598358286.png'),
(668, 'Nasonex Nasal Spray-1598358360', '/uploads/2020-08-25-1598358360.png'),
(669, 'Elomet Cream-1598358493', '/uploads/2020-08-25-1598358493.png'),
(670, 'Nuelin Syrup-1598358583', '/uploads/2020-08-25-1598358583.png'),
(671, 'Saline 0.9%-1598358931', '/uploads/2020-08-25-1598358931.png'),
(672, 'Becosules Syrup 200ml-1598359047', '/uploads/2020-08-25-1598359047.png'),
(673, 'Zaart 25mg-1598359115', '/uploads/2020-08-25-1598359115.png'),
(674, 'Kleen Enema-1598359232', '/uploads/2020-08-25-1598359232.png'),
(675, 'Valparin 200mg Syrup-1598359311', '/uploads/2020-08-25-1598359311.png'),
(676, 'Empa 10mg-1598359458', '/uploads/2020-08-25-1598359458.png'),
(677, 'Bestflo 0.4mg-1598359651', '/uploads/2020-08-25-1598359651.png'),
(678, 'Theofin Syrup-1598359736', '/uploads/2020-08-25-1598359736.png'),
(679, 'Nasoclear Spray-1598359882', '/uploads/2020-08-25-1598359882.png'),
(680, 'Winterpan Gel-1598360076', '/uploads/2020-08-25-1598360076.png'),
(681, 'Trasnspain Craem-1598360138', '/uploads/2020-08-25-1598360138.png'),
(682, 'Trasnspain-C Cream-1598360184', '/uploads/2020-08-25-1598360184.png'),
(683, 'Thermoseal 50g-1598360424', '/uploads/2020-08-25-1598360424.png'),
(684, 'Dentogel-1598360468', '/uploads/2020-08-25-1598360468.png'),
(685, 'Phenycof Junior Syrup-1598360560', '/uploads/2020-08-25-1598360560.png'),
(686, 'Phenycof Syrup-1598360703', '/uploads/2020-08-25-1598360703.png'),
(687, 'Salonpas Patch-1598360962', '/uploads/2020-08-25-1598360962.png'),
(688, 'Amlopress 5mg-1598361109', '/uploads/2020-08-25-1598361109.png'),
(689, 'Nicardia retard 20mg-1598361217', '/uploads/2020-08-25-1598361217.png'),
(690, 'Metrogyl 200mg-1598361356', '/uploads/2020-08-25-1598361356.png'),
(691, 'Metrogyl 400mg-1598361664', '/uploads/2020-08-25-1598361664.png'),
(692, 'KetoPlus Shampoo-1598361749', '/uploads/2020-08-25-1598361749.png'),
(693, 'Solmux Forte Suspension 60ml-1598361894', '/uploads/2020-08-25-1598361894.png'),
(694, 'Alendronate 70-1598362203', '/uploads/2020-08-25-1598362203.png'),
(695, 'Diabetasol-1598362306', '/uploads/2020-08-25-1598362306.png'),
(696, 'L-Trim Pediatric Suspension-1598362650', '/uploads/2020-08-25-1598362650.png'),
(697, 'Cutiate Cream-1598362727', '/uploads/2020-08-25-1598362727.png'),
(698, 'Cutiate Ointment-1598362775', '/uploads/2020-08-25-1598362775.png'),
(699, 'Dermovate Ointment-1598362844', '/uploads/2020-08-25-1598362844.png'),
(700, 'Betnovate-N Cream-1598362972', '/uploads/2020-08-25-1598362972.png'),
(701, 'Betnovate Cream 5g-1598363051', '/uploads/2020-08-25-1598363051.png'),
(702, 'Betnovate Ointment-1598363104', '/uploads/2020-08-25-1598363104.png'),
(703, 'Betnovate Ointment 5g-1598363163', '/uploads/2020-08-25-1598363163.png'),
(704, 'Betnovate-C Cream 5g-1598363208', '/uploads/2020-08-25-1598363208.png'),
(705, 'Amileb 10mg-1598363306', '/uploads/2020-08-25-1598363306.png'),
(706, 'Indol 25mg-1598363465', '/uploads/2020-08-25-1598363465.png'),
(707, 'Oilatum Soap-1598363525', '/uploads/2020-08-25-1598363525.png'),
(708, 'Amoxil  Suspension 125mg-1598363710', '/uploads/2020-08-25-1598363710.png'),
(709, 'Augmentin Suspension 156mg-1598363801', '/uploads/2020-08-25-1598363801.png'),
(710, 'Zinnat 500mg-1598363938', '/uploads/2020-08-25-1598363938.png'),
(711, 'Zinnat 125mg-1598363992', '/uploads/2020-08-25-1598363992.png'),
(712, 'Zinnat 250mg-1598364036', '/uploads/2020-08-25-1598364036.png'),
(713, 'Augmentin 375mg-1598364100', '/uploads/2020-08-25-1598364100.png'),
(714, 'Augmentin 625mg-1598364223', '/uploads/2020-08-25-1598364223.png'),
(715, 'Amoderm Cream 50g-1598364316', '/uploads/2020-08-25-1598364316.png'),
(716, 'Avamys Nasal Spray-1598364382', '/uploads/2020-08-25-1598364382.png'),
(717, 'Tetret 250mg-1598364579', '/uploads/2020-08-25-1598364579.png'),
(718, 'Amoxil 500mg-1598365333', '/uploads/2020-08-25-1598365333.png'),
(719, 'Amoxil 250mg-1598365383', '/uploads/2020-08-25-1598365383.png'),
(720, 'Piriton Syrup-1598366165', '/uploads/2020-08-25-1598366165.png'),
(721, 'Piriton Expectorant Syrup-1598369131', '/uploads/2020-08-25-1598369131.png'),
(722, 'Ventolin Evohaler 100mcg-1598369239', '/uploads/2020-08-25-1598369239.png'),
(723, 'Ventolin Respiratory Solution-1598369546', '/uploads/2020-08-25-1598369546.png'),
(724, 'Seretide Inhaler 125mcg-1598369835', '/uploads/2020-08-25-1598369835.png'),
(725, 'Seretide Inhaler 250mcg-1598369891', '/uploads/2020-08-25-1598369891.png'),
(726, 'D max 2000-1598369972', '/uploads/2020-08-25-1598369972.png'),
(727, 'D Max 1000-1598370113', '/uploads/2020-08-25-1598370113.png'),
(728, 'De-soft Cream-1598370213', '/uploads/2020-08-25-1598370213.png'),
(729, 'Glycinorm 80mg-1598370361', '/uploads/2020-08-25-1598370361.png'),
(730, 'Feck 100mg-1598370489', '/uploads/2020-08-25-1598370489.png'),
(731, 'IMOI 15mg-1598370657', '/uploads/2020-08-25-1598370657.png');
INSERT INTO `image` (`img_id`, `img_name`, `img_path`) VALUES
(732, 'Troken 75mg-1598371031', '/uploads/2020-08-25-1598371031.png'),
(733, 'Deslorat-1598371143', '/uploads/2020-08-25-1598371143.png'),
(734, 'Montpellier T4 100mcg-1598371373', '/uploads/2020-08-25-1598371373.png'),
(735, 'Montpellier T4 50mcg-1598371416', '/uploads/2020-08-25-1598371416.png'),
(736, 'Bigmet 500mg-1598371506', '/uploads/2020-08-25-1598371506.png'),
(737, 'Bigmet 850mg-1598371540', '/uploads/2020-08-25-1598371540.png'),
(738, 'Icon 100mg-1598371647', '/uploads/2020-08-25-1598371647.png'),
(739, 'Fusac Cream-1598371701', '/uploads/2020-08-25-1598371701.png'),
(740, 'Natasan Eyedrop-1598371750', '/uploads/2020-08-25-1598371750.png'),
(741, 'Santodex Eyedrop-1598371799', '/uploads/2020-08-25-1598371799.png'),
(742, 'Betalol Eyedrop-1598371863', '/uploads/2020-08-25-1598371863.png'),
(743, 'Tropic Eyedrop-1598371903', '/uploads/2020-08-25-1598371903.png'),
(744, 'Co-dorzal Eyedrop-1598371946', '/uploads/2020-08-25-1598371946.png'),
(745, 'Optiflur Eyedrop-1598371985', '/uploads/2020-08-25-1598371985.png'),
(746, 'Optopred Eyedrop-1598372019', '/uploads/2020-08-25-1598372019.png'),
(747, 'Ketrosan Eyedrop-1598372059', '/uploads/2020-08-25-1598372059.png'),
(748, 'Fusigel Eyedrop-1598372099', '/uploads/2020-08-25-1598372099.png'),
(749, 'Megamox Eyedrop-1598372128', '/uploads/2020-08-25-1598372128.png'),
(750, '-1598372209', '/uploads/2020-08-25-1598372209.png'),
(751, 'Hylosan Xepat Eyedrop-1598372272', '/uploads/2020-08-25-1598372272.png'),
(752, 'Germacid Cream-1598372328', '/uploads/2020-08-25-1598372328.png'),
(753, 'Germacort Cream-1598372378', '/uploads/2020-08-25-1598372378.png'),
(754, 'Gaviscon double action 300ml-1598372454', '/uploads/2020-08-25-1598372454.png'),
(755, 'Gaviscon Liquid 200ml-1598372503', '/uploads/2020-08-25-1598372503.png'),
(756, 'Omicap 20mg-1598374066', '/uploads/2020-08-25-1598374066.png'),
(757, 'Ecosprin 150mg-1598374144', '/uploads/2020-08-25-1598374144.png'),
(758, 'Ecosprin 75mg-1598374276', '/uploads/2020-08-25-1598374276.png'),
(759, 'Simvas 10mg-1598374429', '/uploads/2020-08-25-1598374429.png'),
(760, 'Simvas 20mg-1598374477', '/uploads/2020-08-25-1598374477.png'),
(761, 'Turbovas 5mg-1598374524', '/uploads/2020-08-25-1598374524.png'),
(762, 'Turbovas 10mg-1598374561', '/uploads/2020-08-25-1598374561.png'),
(763, 'Angizaar 50mg-1598374666', '/uploads/2020-08-25-1598374666.png'),
(764, 'Diabose 50mg-1598374734', '/uploads/2020-08-25-1598374734.png'),
(765, 'Dothip 25mg-1598374833', '/uploads/2020-08-25-1598374833.png'),
(766, 'Zotral 50mg-1598374908', '/uploads/2020-08-25-1598374908.png'),
(767, 'Dianorm 80mg-1598374990', '/uploads/2020-08-25-1598374990.png'),
(768, 'Aziderm Cream-1598375050', '/uploads/2020-08-25-1598375050.png'),
(769, 'Betagel-G-1598375108', '/uploads/2020-08-25-1598375108.png'),
(770, 'Steriderm-S Cream-1598375187', '/uploads/2020-08-25-1598375187.png'),
(771, 'Olamin Cream-1598375279', '/uploads/2020-08-25-1598375279.png'),
(772, 'Mupirax Ointment-1598375352', '/uploads/2020-08-25-1598375352.png'),
(773, 'Herperax Ointment-1598375445', '/uploads/2020-08-25-1598375445.png'),
(774, 'Nevox XR 500mg-1598375563', '/uploads/2020-08-25-1598375563.png'),
(775, 'Montiget 4mg-1598375688', '/uploads/2020-08-25-1598375688.png'),
(776, 'Montiget 5mg-1598375737', '/uploads/2020-08-25-1598375737.png'),
(777, 'Divoltar 50mg-1598460723', '/uploads/2020-08-26-1598460723.png'),
(778, 'Fexet 50mg-1598460781', '/uploads/2020-08-26-1598460781.png'),
(779, 'Fexet 120mg-1598460826', '/uploads/2020-08-26-1598460826.png'),
(780, 'Fexet 30mg-1598460868', '/uploads/2020-08-26-1598460868.png'),
(781, 'Leflox 250mg-1598460980', '/uploads/2020-08-26-1598460980.png'),
(782, 'Leflox 500mg-1598461033', '/uploads/2020-08-26-1598461033.png'),
(783, 'Fexet 180mg-1598461105', '/uploads/2020-08-26-1598461105.png'),
(784, 'Claritek 500mg-1598461237', '/uploads/2020-08-26-1598461237.png'),
(785, 'Claritek 250mg-1598461303', '/uploads/2020-08-26-1598461303.png'),
(786, 'Getryl 1mg-1598461372', '/uploads/2020-08-26-1598461372.png'),
(787, 'Getryl 3mg-1598461951', '/uploads/2020-08-26-1598461951.png'),
(788, 'Gabica 75mg-1598462066', '/uploads/2020-08-26-1598462066.png'),
(789, 'Gabica 50mg-1598462144', '/uploads/2020-08-26-1598462144.png'),
(790, 'Claritek Suspension 125mg-1598462219', '/uploads/2020-08-26-1598462219.png'),
(791, 'Hexilon 16mg-1598462331', '/uploads/2020-08-26-1598462331.png'),
(792, 'Hexilon 4mg-1598462426', '/uploads/2020-08-26-1598462426.png'),
(793, 'Dometic 10mg-1598462508', '/uploads/2020-08-26-1598462508.png'),
(794, 'Diaflam 50mg-1598462600', '/uploads/2020-08-26-1598462600.png'),
(795, 'Kaltrofen Gel-1598462650', '/uploads/2020-08-26-1598462650.png'),
(796, 'Montiget 4mg Pediatric Sachets-1598462763', '/uploads/2020-08-26-1598462763.png'),
(797, 'Albiotin Acne Solution-1598462824', '/uploads/2020-08-26-1598462824.png'),
(798, 'Osiben 400mg-1598462989', '/uploads/2020-08-26-1598462989.png'),
(799, 'Arkocapil-1598464211', '/uploads/2020-08-26-1598464211.png'),
(800, 'Rocaltrol 0.25mcg-1598464338', '/uploads/2020-08-26-1598464338.png'),
(801, 'Lipicard 200mg-1598464510', '/uploads/2020-08-26-1598464510.png'),
(802, 'Telday 40mg-1598464602', '/uploads/2020-08-26-1598464602.png'),
(803, 'Azee 500mg-1598464666', '/uploads/2020-08-26-1598464666.png'),
(804, 'Glitrol CR 30mg-1598464746', '/uploads/2020-08-26-1598464746.png'),
(805, 'Flexsa 750 Osteo Arthritis-1598464849', '/uploads/2020-08-26-1598464849.png'),
(806, 'Novofine 31G 6mm Insulin needle-1598465047', '/uploads/2020-08-26-1598465047.png'),
(807, 'Sustagen Vanila-1598465096', '/uploads/2020-08-26-1598465096.png'),
(808, 'Sustagen Chocolate-1598465148', '/uploads/2020-08-26-1598465148.png'),
(809, 'Enfagrow A+ Stage3-1598465243', '/uploads/2020-08-26-1598465243.png'),
(810, 'Enfagrow A+ Stage4-1598465274', '/uploads/2020-08-26-1598465274.png'),
(811, 'Enfamil A+ Stage2-1598465306', '/uploads/2020-08-26-1598465306.png'),
(812, 'Enfamil A+ Stage1-1598465351', '/uploads/2020-08-26-1598465351.png'),
(813, 'Orslim 120mg-1598465421', '/uploads/2020-08-26-1598465421.png'),
(814, 'Tegretol 200mg-1598465545', '/uploads/2020-08-26-1598465545.png'),
(815, 'Cataflam 50mg-1598465616', '/uploads/2020-08-26-1598465616.png'),
(816, 'Norgest 5mg-1598466269', '/uploads/2020-08-26-1598466269.png'),
(817, 'Topirol 50mg-1598466375', '/uploads/2020-08-26-1598466375.png'),
(818, 'Lioresal 10mg-1598466699', '/uploads/2020-08-26-1598466699.png'),
(819, 'Duphaston 10mg-1598466814', '/uploads/2020-08-26-1598466814.png'),
(820, 'Sandomigran-1598466866', '/uploads/2020-08-26-1598466866.png'),
(821, 'Lexotanil 1.5mg-1598466954', '/uploads/2020-08-26-1598466954.png'),
(822, 'Cartisafe forte MSM-1598467108', '/uploads/2020-08-26-1598467108.png'),
(823, 'Ritalin 10mg-1598467166', '/uploads/2020-08-26-1598467166.png'),
(824, 'Rivotril 2mg-1598467419', '/uploads/2020-08-26-1598467419.png'),
(825, 'Rivotril 0.5mg-1598467478', '/uploads/2020-08-26-1598467478.png'),
(826, 'Sofinox Cream-1598467549', '/uploads/2020-08-26-1598467549.png'),
(827, 'Tobradex eye Suspension-1598467654', '/uploads/2020-08-26-1598467654.png'),
(828, 'Tobradex Eye  Ointment-1598467720', '/uploads/2020-08-26-1598467720.png'),
(829, 'Azopt Eyedrop-1598467809', '/uploads/2020-08-26-1598467809.png'),
(830, 'Systane Ultra Eyedrop-1598467855', '/uploads/2020-08-26-1598467855.png'),
(831, 'Dimaat-1598467903', '/uploads/2020-08-26-1598467903.png'),
(832, 'Apdrops Eyedrop-1598467948', '/uploads/2020-08-26-1598467948.png'),
(833, 'Softdrops-1598467986', '/uploads/2020-08-26-1598467986.png'),
(834, 'Vigamox Eyedrop-1598468024', '/uploads/2020-08-26-1598468024.png'),
(835, 'Tears Naturale II-1598468071', '/uploads/2020-08-26-1598468071.png'),
(836, 'Cosopt-1598468112', '/uploads/2020-08-26-1598468112.png'),
(837, 'Olopat Eyedrop-1598468166', '/uploads/2020-08-26-1598468166.png'),
(838, 'Azarga Eyedrop-1598468210', '/uploads/2020-08-26-1598468210.png'),
(839, 'Timoptol Eyedrop-1598468273', '/uploads/2020-08-26-1598468273.png'),
(840, 'Nevanac Eyedrop-1598468319', '/uploads/2020-08-26-1598468319.png'),
(841, 'Simbrinza Eyedrop-1598468369', '/uploads/2020-08-26-1598468369.png'),
(842, 'Duotrav Eyedrop-1598468424', '/uploads/2020-08-26-1598468424.png'),
(843, 'Postinor 2-1598468585', '/uploads/2020-08-26-1598468585.png'),
(844, 'Postinor 1-1598468650', '/uploads/2020-08-26-1598468650.png'),
(845, 'Xon-Ce 500mg-1598468709', '/uploads/2020-08-26-1598468709.png'),
(846, 'Silagra 50mg-1598468861', '/uploads/2020-08-26-1598468861.png'),
(847, 'Osigra 100-1598468942', '/uploads/2020-08-26-1598468942.png'),
(848, 'Stamina Condoms-1598469058', '/uploads/2020-08-26-1598469058.png'),
(849, 'Preethi Super Condoms-1598469139', '/uploads/2020-08-26-1598469139.png'),
(850, 'Jeevanee ORS-1598469215', '/uploads/2020-08-26-1598469215.png'),
(851, 'Seven Seas Cod liver oil-1598469293', '/uploads/2020-08-26-1598469293.png'),
(852, 'Chewette 100mg-1598469377', '/uploads/2020-08-26-1598469377.png'),
(853, 'Strepsils-1598469583', '/uploads/2020-08-26-1598469583.png'),
(854, 'Eno-1598533389', '/uploads/2020-08-27-1598533389.png'),
(855, 'Eno Fruit Salt-1598533475', '/uploads/2020-08-27-1598533475.png'),
(856, 'Voltaren Emulgel 20g-1598533568', '/uploads/2020-08-27-1598533568.png'),
(857, 'Voltaren Emulgel 50g-1598533659', '/uploads/2020-08-27-1598533659.png'),
(858, 'Corsodyl 200ml-1598533971', '/uploads/2020-08-27-1598533971.png'),
(859, 'Panadol-1598542101', '/uploads/2020-08-27-1598542101.png'),
(860, 'Cough Syrup-1598542172', '/uploads/2020-08-27-1598542172.png'),
(861, 'Cloxil 500mg-1598542256', '/uploads/2020-08-27-1598542256.png'),
(862, 'Pyrantin 125mg-1598542567', '/uploads/2020-08-27-1598542567.png'),
(863, 'Pyrantin Suspension-1598542660', '/uploads/2020-08-27-1598542660.png'),
(864, 'Telday 80mg-1598543080', '/uploads/2020-08-27-1598543080.png'),
(865, 'Telday 80mg-1598543125', '/uploads/2020-08-27-1598543125.png'),
(866, 'Telday 80mg-1598543220', '/uploads/2020-08-27-1598543220.png'),
(867, 'Lorvas SR 1.5mg-1598543549', '/uploads/2020-08-27-1598543549.png'),
(868, 'Polymycin ointment-1598543642', '/uploads/2020-08-27-1598543642.png'),
(869, 'Ovron -1598543722', '/uploads/2020-08-27-1598543722.png'),
(870, 'Rapidene 500mg-1598543790', '/uploads/2020-08-27-1598543790.png'),
(871, 'Bezinc-1598543862', '/uploads/2020-08-27-1598543862.png'),
(872, 'Oraleez Mouth Sores-1598544137', '/uploads/2020-08-27-1598544137.png'),
(873, 'Tretin- A Cream-1598544263', '/uploads/2020-08-27-1598544263.png'),
(874, 'Astrocort Cream-1598544349', '/uploads/2020-08-27-1598544349.png'),
(875, 'Astrocort  1% Cream-1598544513', '/uploads/2020-08-27-1598544513.png'),
(876, 'Fusid Cream-1598544612', '/uploads/2020-08-27-1598544612.png'),
(877, 'Pirogel 0.5% Gel-1598544671', '/uploads/2020-08-27-1598544671.png'),
(878, 'Framcin Cream-1598544753', '/uploads/2020-08-27-1598544753.png'),
(879, 'Durol Adults 200ml-1598544897', '/uploads/2020-08-27-1598544897.png'),
(880, 'Durol Adults 100ml-1598544927', '/uploads/2020-08-27-1598544927.png'),
(881, 'Rapisol 120mg children-1598546127', '/uploads/2020-08-27-1598546127.png'),
(882, 'Rapisol Syrup120mg children -1598546209', '/uploads/2020-08-27-1598546209.png'),
(883, 'Rapisol 120mg Syrup Children-1598546308', '/uploads/2020-08-27-1598546308.png'),
(884, 'pregnacare-1598546398', '/uploads/2020-08-27-1598546398.png'),
(885, 'Dumasules-1598546452', '/uploads/2020-08-27-1598546452.png'),
(886, 'minterra-1598546500', '/uploads/2020-08-27-1598546500.png'),
(887, 'Peditral Liquid-1598546595', '/uploads/2020-08-27-1598546595.png'),
(888, 'Peditral sachets-1598546655', '/uploads/2020-08-27-1598546655.png'),
(889, 'Panadol Syrup 100ml-1598546750', '/uploads/2020-08-27-1598546750.png'),
(890, 'Panadol Syrup 60ml-1598546791', '/uploads/2020-08-27-1598546791.png');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_ref_no` bigint(15) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `invoice_time` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `customer_id` int(11) DEFAULT NULL,
  `item_total_discount` decimal(10,2) DEFAULT NULL,
  `item_total_price` decimal(10,2) DEFAULT NULL,
  `cash_to_change` decimal(10,2) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `loyalty_offer_rate` int(3) DEFAULT NULL,
  `loyalty_offered_price` decimal(10,2) DEFAULT NULL,
  `temp_customer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_ref_no`, `user_id`, `invoice_time`, `customer_id`, `item_total_discount`, `item_total_price`, `cash_to_change`, `balance`, `loyalty_offer_rate`, `loyalty_offered_price`, `temp_customer`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 1598499670123, 1, '2020-08-27 07:35:01', 0, '0.00', '517.02', '600.00', '82.98', 0, '0.00', 'None'),
(2, 1598499855143, 1, '2020-08-27 07:35:01', 0, '0.00', '30.00', '30.00', '0.00', 0, '0.00', 'None'),
(3, 1598500781808, 1, '2020-08-27 07:35:01', 0, '0.00', '154.10', '160.00', '5.90', 0, '0.00', 'None'),
(4, 1598500944913, 1, '2020-08-27 07:35:01', 0, '0.00', '992.88', '5000.00', '4007.12', 0, '0.00', 'None'),
(5, 1598501093977, 1, '2020-08-27 07:35:01', 0, '0.00', '92.46', '100.00', '7.54', 0, '0.00', 'None'),
(6, 1598502198883, 1, '2020-08-27 07:35:01', 0, '0.00', '2400.00', '2400.00', '0.00', 0, '0.00', 'None'),
(7, 1598503771419, 1, '2020-08-27 07:35:01', 3, '0.00', '9651.70', '9651.70', '0.00', 0, '9651.70', '777734999 (Muditha)'),
(8, 1598504837147, 1, '2020-08-27 10:25:39', 0, '0.00', '342.00', '342.00', '0.00', 0, '0.00', 'None'),
(9, 1598505025343, 1, '2020-08-27 10:25:39', 0, '0.00', '480.00', '480.00', '0.00', 0, '0.00', 'None'),
(10, 1598505642697, 1, '2020-08-27 10:25:39', 0, '0.00', '1669.50', '5000.00', '3330.50', 0, '0.00', 'None'),
(11, 1598505782409, 1, '2020-08-27 10:25:39', 0, '0.00', '90.00', '90.00', '0.00', 0, '0.00', 'None'),
(12, 1598505862994, 1, '2020-08-27 10:25:39', 0, '0.00', '32.00', '32.00', '0.00', 0, '0.00', 'None'),
(13, 1598506488168, 1, '2020-08-27 10:25:39', 0, '0.00', '166.50', '166.50', '0.00', 0, '0.00', 'None'),
(14, 1598506720425, 1, '2020-08-27 10:25:39', 0, '0.00', '800.00', '5000.00', '4200.00', 0, '0.00', 'None'),
(15, 1598506894000, 1, '2020-08-27 10:25:39', 0, '0.00', '552.00', '552.00', '0.00', 0, '0.00', 'None'),
(16, 1598508354165, 1, '2020-08-27 11:14:01', 0, '0.00', '1290.60', '1290.60', '0.00', 0, '0.00', 'None'),
(17, 1598508983644, 1, '2020-08-27 11:14:01', 0, '0.00', '1264.00', '2065.00', '801.00', 0, '0.00', 'None'),
(18, 1598509151451, 1, '2020-08-27 11:14:01', 0, '0.00', '291.90', '300.00', '8.10', 0, '0.00', 'None'),
(19, 1598509265059, 1, '2020-08-27 11:14:01', 0, '0.00', '755.00', '755.00', '0.00', 0, '0.00', 'None'),
(20, 1598509631588, 1, '2020-08-27 11:14:01', 0, '0.00', '900.00', '900.00', '0.00', 0, '0.00', 'None'),
(21, 1598509720971, 1, '2020-08-27 11:14:01', 0, '0.00', '1094.00', '1094.00', '0.00', 0, '0.00', 'None'),
(22, 1598511216117, 1, '2020-08-27 11:14:01', 0, '0.00', '2490.00', '2490.00', '0.00', 0, '0.00', 'None'),
(23, 1598513055955, 1, '2020-08-27 11:14:01', 0, '0.00', '12.00', '12.00', '0.00', 0, '0.00', 'None'),
(24, 1598513104317, 1, '2020-08-27 11:14:01', 0, '0.00', '12.00', '12.00', '0.00', 0, '0.00', 'None'),
(25, 1598513795477, 1, '2020-08-27 12:56:46', 0, '0.00', '120.00', '120.00', '0.00', 0, '0.00', 'None'),
(26, 1598514694358, 1, '2020-08-27 13:14:50', 0, '0.00', '24.00', '24.00', '0.00', 0, '0.00', 'None'),
(27, 1598515572397, 1, '2020-08-27 13:28:06', 0, '0.00', '535.80', '550.00', '14.20', 0, '0.00', 'None'),
(28, 1598515700444, 1, '2020-08-27 13:28:06', 0, '0.00', '145.60', '200.00', '54.40', 0, '0.00', 'None'),
(29, 1598516303132, 1, '2020-08-27 13:28:06', 4, '0.00', '150.00', '150.00', '0.00', 0, '150.00', '775891217 (Sarath Kalyanaathne)'),
(30, 1598516936380, 1, '2020-08-27 13:28:06', 4, '0.00', '770.00', '770.00', '0.00', 0, '770.00', '775891217 (Sarath Kalyanaathne)'),
(31, 1598517225140, 1, '2020-08-27 13:28:06', 4, '0.00', '267.90', '300.00', '32.10', 0, '267.90', '775891217 (Sarath Kalyanaathne)'),
(32, 1598517646405, 1, '2020-08-27 13:28:06', 4, '0.00', '150.00', '150.00', '0.00', 0, '150.00', '775891217 (Sarath Kalyanaathne)'),
(33, 1598518437677, 1, '2020-08-27 13:28:06', 4, '0.00', '159.30', '500.00', '340.70', 0, '159.30', '775891217 (Sarath Kalyanaathne)'),
(34, 1598521465548, 1, '2020-08-27 15:13:06', 0, '0.00', '895.50', '1000.00', '104.50', 0, '0.00', 'None'),
(35, 1598524819946, 1, '2020-08-27 15:13:06', 0, '0.00', '1246.00', '1246.00', '0.00', 0, '0.00', 'None'),
(36, 1598525093464, 1, '2020-08-27 15:13:06', 0, '0.00', '720.00', '720.00', '0.00', 0, '0.00', 'None'),
(37, 1598525417112, 1, '2020-08-27 15:13:06', 0, '0.00', '462.50', '462.50', '0.00', 0, '0.00', 'None'),
(38, 1598525549953, 1, '2020-08-27 15:13:06', 0, '0.00', '2210.40', '2210.40', '0.00', 0, '0.00', 'None'),
(39, 1598525765465, 1, '2020-08-27 15:13:06', 0, '0.00', '590.00', '590.00', '0.00', 0, '0.00', 'None'),
(40, 1598525846736, 1, '2020-08-27 15:13:06', 0, '0.00', '272.00', '272.00', '0.00', 0, '0.00', 'None'),
(41, 1598528180745, 1, '2020-08-27 16:35:50', 0, '0.00', '588.00', '588.00', '0.00', 0, '0.00', 'None'),
(42, 1598528357523, 1, '2020-08-27 16:35:50', 0, '0.00', '620.10', '620.10', '0.00', 0, '0.00', 'None'),
(43, 1598529647677, 1, '2020-08-27 17:28:57', 0, '0.00', '150.00', '150.00', '0.00', 0, '0.00', 'None'),
(44, 1598530191198, 1, '2020-08-27 17:28:57', 0, '0.00', '40.00', '40.00', '0.00', 0, '0.00', 'None'),
(45, 1598530264599, 1, '2020-08-27 17:28:57', 0, '0.00', '300.00', '300.00', '0.00', 0, '0.00', 'None'),
(46, 1598530676286, 1, '2020-08-27 17:28:57', 0, '0.00', '170.00', '170.00', '0.00', 0, '0.00', 'None'),
(47, 1598532357672, 1, '2020-08-27 17:48:36', 0, '0.00', '280.40', '1000.00', '719.60', 0, '0.00', 'None'),
(48, 1598532631169, 1, '2020-08-27 18:20:05', 0, '0.00', '612.30', '612.30', '0.00', 0, '0.00', 'None'),
(49, 1598533721078, 1, '2020-08-27 18:37:44', 0, '0.00', '303.00', '303.00', '0.00', 0, '0.00', 'None'),
(50, 1598534108528, 1, '2020-08-27 18:43:23', 0, '0.00', '362.50', '1000.00', '637.50', 0, '0.00', 'None'),
(51, 1598534187360, 1, '2020-08-27 18:43:23', 0, '0.00', '360.00', '500.00', '140.00', 0, '0.00', 'None'),
(52, 1598534330295, 1, '2020-08-27 18:43:23', 0, '0.00', '2120.00', '2120.00', '0.00', 0, '0.00', 'None'),
(53, 1598534515791, 1, '2020-08-27 18:43:23', 0, '0.00', '2350.08', '2350.08', '0.00', 0, '0.00', 'None'),
(54, 1598535175768, 1, '2020-08-27 18:59:55', 0, '0.00', '1930.00', '1930.00', '0.00', 0, '0.00', 'None'),
(55, 1598535607719, 1, '2020-08-27 18:59:55', 0, '0.00', '132.20', '132.20', '0.00', 0, '0.00', 'None'),
(56, 1598536160144, 1, '2020-08-27 19:18:47', 0, '0.00', '90.00', '100.00', '10.00', 0, '0.00', 'None'),
(57, 1598537121649, 1, '2020-08-27 19:23:19', 0, '0.00', '924.70', '924.70', '0.00', 0, '0.00', 'None'),
(58, 1598537279134, 1, '2020-08-27 19:23:19', 0, '0.00', '1105.60', '1105.60', '0.00', 0, '0.00', 'None'),
(59, 1598537527815, 1, '2020-08-27 19:23:19', 0, '0.00', '630.00', '630.00', '0.00', 0, '0.00', 'None'),
(60, 1598539766875, 1, '2020-08-27 20:09:58', 0, '0.00', '240.00', '240.00', '0.00', 0, '0.00', 'None'),
(61, 1598540814802, 1, '2020-08-27 20:09:58', 0, '0.00', '535.00', '600.00', '65.00', 0, '0.00', 'None'),
(62, 1598541024489, 1, '2020-08-27 20:09:58', 0, '0.00', '645.60', '5000.00', '4354.40', 0, '0.00', 'None'),
(63, 1598542970392, 1, '2020-08-27 21:10:51', 0, '0.00', '159.40', '560.00', '400.60', 0, '0.00', 'None'),
(64, 1598543383002, 1, '2020-08-27 21:18:28', 0, '0.00', '28.84', '40.00', '11.16', 0, '0.00', 'None'),
(65, 1598544035734, 1, '2020-08-27 21:18:28', 0, '0.00', '2850.00', '2850.00', '0.00', 0, '0.00', 'None'),
(66, 1598545139112, 1, '2020-08-27 21:46:43', 0, '0.00', '10.00', '10.00', '0.00', 0, '0.00', 'None'),
(67, 1598545555559, 1, '2020-08-27 21:46:43', 0, '0.00', '360.00', '1000.00', '640.00', 0, '0.00', 'None'),
(68, 1598545714494, 1, '2020-08-27 21:46:43', 0, '0.00', '954.10', '1000.00', '45.90', 0, '0.00', 'None'),
(69, 1598545899662, 1, '2020-08-27 21:46:43', 0, '0.00', '191.10', '1000.00', '808.90', 0, '0.00', 'None'),
(70, 1598546033710, 1, '2020-08-27 21:18:28', 0, '0.00', '461.00', '1000.00', '539.00', 0, '0.00', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `login_log`
--

CREATE TABLE `login_log` (
  `login_log_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `logout_time` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `login_log`
--

INSERT INTO `login_log` (`login_log_id`, `user_id`, `login_time`, `logout_time`) VALUES
(23, 11, '2018-05-11 16:06:00', '2018-05-11 20:36:00'),
(24, 1, '2018-05-11 20:39:50', NULL),
(25, 1, '2018-05-12 22:18:48', NULL),
(26, 1, '2018-05-13 14:36:55', NULL),
(27, 1, '2018-05-13 20:25:54', NULL),
(28, 1, '2018-05-14 20:47:36', NULL),
(29, 1, '2018-05-14 16:54:12', '2018-05-14 21:24:12'),
(30, 1, '2018-05-14 21:35:44', NULL),
(31, 1, '2018-05-16 12:04:18', '2018-05-16 16:34:18'),
(32, 2, '2018-05-21 12:20:15', NULL),
(33, 2, '2018-05-21 12:20:27', NULL),
(34, 2, '2018-05-21 13:47:21', NULL),
(35, 1, '2018-05-21 14:12:08', NULL),
(36, 2, '2018-05-21 11:48:36', '2018-05-21 16:18:36'),
(37, 1, '2018-05-21 11:42:30', '2018-05-21 16:12:30'),
(38, 11, '2018-05-21 16:19:41', NULL),
(39, 1, '2018-05-21 11:53:08', '2018-05-21 16:23:08'),
(40, 11, '2018-05-21 12:49:53', '2018-05-21 17:19:53'),
(41, 1, '2018-05-21 16:47:53', NULL),
(42, 11, '2018-05-21 12:52:01', '2018-05-21 17:22:01'),
(43, 11, '2018-05-21 14:59:44', '2018-05-21 19:29:44'),
(44, 1, '2018-05-21 19:55:08', NULL),
(45, 11, '2018-05-22 09:01:21', NULL),
(46, 11, '2018-05-22 11:49:59', NULL),
(47, 11, '2018-05-22 16:13:10', NULL),
(48, 1, '2018-05-22 12:13:01', '2018-05-22 16:43:01'),
(49, 11, '2018-05-22 12:50:44', '2018-05-22 17:20:44'),
(50, 1, '2018-05-22 12:25:28', '2018-05-22 16:55:28'),
(51, 1, '2018-05-22 16:55:32', NULL),
(52, 1, '2018-05-22 12:25:37', '2018-05-22 16:55:37'),
(53, 1, '2018-05-22 12:25:52', '2018-05-22 16:55:52'),
(54, 12, '2018-05-22 12:27:48', '2018-05-22 16:57:48'),
(55, 12, '2018-05-22 13:27:27', '2018-05-22 17:57:27'),
(56, 2, '2018-05-22 12:30:05', '2018-05-22 17:00:05'),
(57, 2, '2018-05-22 17:00:12', NULL),
(58, 1, '2018-05-22 17:57:30', NULL),
(59, 1, '2018-05-22 23:16:04', NULL),
(60, 1, '2018-05-22 23:42:03', NULL),
(61, 1, '2018-05-22 23:54:47', NULL),
(62, 1, '2018-05-23 11:10:09', NULL),
(63, 11, '2018-05-23 11:14:10', NULL),
(64, 1, '2018-05-23 12:37:14', NULL),
(65, 1, '2018-05-23 15:40:07', NULL),
(66, 1, '2018-05-23 15:47:27', NULL),
(67, 1, '2018-05-23 16:17:10', NULL),
(68, 1, '2018-05-23 23:46:02', NULL),
(69, 1, '2018-05-24 00:51:53', NULL),
(70, 1, '2018-05-24 10:53:48', NULL),
(71, 1, '2018-05-24 13:29:48', NULL),
(72, 1, '2018-05-24 20:20:42', NULL),
(73, 11, '2018-05-25 09:51:04', NULL),
(74, 1, '2018-05-25 11:28:40', '2018-05-25 15:58:40'),
(75, 1, '2018-05-25 17:34:12', '2018-05-25 22:04:12'),
(76, 1, '2018-05-27 16:04:42', NULL),
(77, 1, '2018-05-27 20:54:24', NULL),
(78, 1, '2018-05-29 23:52:01', NULL),
(79, 1, '2018-05-29 23:55:50', NULL),
(80, 1, '2018-06-02 17:28:23', NULL),
(81, 1, '2018-06-03 10:54:31', '2018-06-03 15:24:31'),
(82, 2, '2018-06-03 10:57:34', '2018-06-03 15:27:34'),
(83, 12, '2018-06-03 15:28:02', NULL),
(84, 12, '2018-06-03 11:54:10', '2018-06-03 16:24:10'),
(85, 11, '2018-06-04 10:07:33', NULL),
(86, 11, '2018-06-05 10:38:46', NULL),
(87, 11, '2018-06-05 12:15:39', NULL),
(88, 1, '2018-06-05 12:53:32', NULL),
(89, 1, '2018-06-05 13:25:53', NULL),
(90, 1, '2018-06-05 15:50:49', NULL),
(91, 11, '2018-06-06 11:51:26', NULL),
(92, 1, '2018-06-06 12:11:17', '2018-06-06 16:41:17'),
(93, 1, '2018-06-06 20:51:09', NULL),
(94, 11, '2018-06-07 11:00:16', NULL),
(95, 11, '2018-06-07 13:25:04', NULL),
(96, 11, '2018-06-07 13:36:15', NULL),
(97, 11, '2018-06-07 21:42:45', NULL),
(98, 11, '2018-06-08 10:00:18', NULL),
(99, 11, '2018-06-08 13:59:26', NULL),
(100, 11, '2018-06-09 10:47:45', NULL),
(101, 11, '2018-06-09 14:38:38', NULL),
(102, 2, '2018-06-10 10:07:35', NULL),
(103, 11, '2018-06-11 16:08:17', NULL),
(104, 1, '2018-06-12 13:06:13', NULL),
(105, 11, '2018-06-13 09:42:02', NULL),
(106, 11, '2018-06-13 13:01:45', NULL),
(107, 11, '2018-06-14 09:51:45', NULL),
(108, 1, '2018-06-14 14:17:33', NULL),
(109, 11, '2018-06-15 10:13:30', NULL),
(110, 11, '2018-06-15 15:02:20', NULL),
(111, 11, '2018-06-16 09:50:20', NULL),
(112, 11, '2018-06-16 14:03:40', NULL),
(113, 2, '2018-06-17 04:07:41', '2018-06-17 08:37:41'),
(114, 2, '2018-06-17 08:39:45', NULL),
(115, 2, '2018-06-17 10:21:01', NULL),
(116, 1, '2018-06-17 07:35:33', '2018-06-17 12:05:33'),
(117, 1, '2018-06-17 12:06:48', NULL),
(118, 1, '2018-06-17 12:12:03', NULL),
(119, 2, '2018-06-17 12:24:45', NULL),
(120, 2, '2018-06-17 13:03:53', NULL),
(121, 1, '2018-06-17 16:27:28', NULL),
(122, 1, '2018-06-17 14:49:19', '2018-06-17 19:19:19'),
(123, 11, '2018-06-18 10:35:20', NULL),
(124, 1, '2018-06-18 18:27:17', NULL),
(125, 1, '2018-06-18 18:27:57', NULL),
(126, 1, '2018-06-18 18:28:46', NULL),
(127, 2, '2018-06-19 09:25:45', NULL),
(128, 11, '2018-06-19 10:17:38', NULL),
(129, 11, '2018-06-20 09:29:41', NULL),
(130, 2, '2018-06-21 08:05:03', NULL),
(131, 2, '2018-06-21 10:15:09', NULL),
(132, 1, '2018-06-21 19:52:54', NULL),
(133, 11, '2018-06-22 11:02:58', NULL),
(134, 11, '2018-06-22 13:46:12', NULL),
(135, 2, '2018-06-24 14:03:26', NULL),
(136, 11, '2018-06-25 11:04:55', NULL),
(137, 11, '2018-06-25 11:04:58', NULL),
(138, 11, '2018-06-25 12:18:54', NULL),
(139, 2, '2018-06-25 14:08:10', NULL),
(140, 2, '2018-06-25 17:25:25', NULL),
(141, 2, '2018-06-25 19:02:55', NULL),
(142, 2, '2018-06-26 08:42:35', NULL),
(143, 2, '2018-06-26 10:25:15', NULL),
(144, 11, '2018-06-26 10:33:58', NULL),
(145, 1, '2018-06-26 22:01:04', NULL),
(146, 1, '2018-06-27 21:48:51', NULL),
(147, 2, '2018-06-28 08:01:28', NULL),
(148, 11, '2018-06-28 10:17:56', NULL),
(149, 2, '2018-06-28 13:05:30', NULL),
(150, 11, '2018-06-28 14:58:01', NULL),
(151, 11, '2018-06-29 09:33:20', NULL),
(152, 2, '2018-07-03 07:53:14', NULL),
(153, 2, '2018-07-03 08:06:19', NULL),
(154, 11, '2018-07-03 10:08:39', NULL),
(155, 2, '2018-07-03 14:15:16', NULL),
(156, 11, '2018-07-03 14:16:56', NULL),
(157, 2, '2018-07-03 20:35:23', NULL),
(158, 11, '2018-07-04 09:27:00', NULL),
(159, 2, '2018-07-05 08:21:05', NULL),
(160, 1, '2018-07-05 12:52:17', NULL),
(161, 2, '2018-07-06 09:20:30', NULL),
(162, 11, '2018-07-06 16:10:20', NULL),
(163, 1, '2018-07-06 11:56:05', '2018-07-06 16:26:05'),
(164, 11, '2018-07-06 16:17:53', NULL),
(165, 11, '2018-07-06 16:22:30', NULL),
(166, 11, '2018-07-06 16:40:48', NULL),
(167, 11, '2018-07-07 10:27:24', NULL),
(168, 11, '2018-07-07 11:18:38', NULL),
(169, 1, '2018-07-07 21:28:05', '2018-07-08 01:58:05'),
(170, 1, '2018-07-08 01:58:20', NULL),
(171, 1, '2018-07-08 11:57:07', NULL),
(172, 2, '2018-07-08 21:09:58', NULL),
(173, 2, '2018-07-09 09:08:13', NULL),
(174, 11, '2018-07-09 11:05:58', NULL),
(175, 2, '2018-07-09 11:39:28', NULL),
(176, 11, '2018-07-09 15:05:42', NULL),
(177, 1, '2018-07-09 12:38:02', '2018-07-09 17:08:02'),
(178, 1, '2018-07-09 13:06:43', '2018-07-09 17:36:43'),
(179, 11, '2018-07-10 10:05:00', NULL),
(180, 2, '2018-07-10 11:07:47', NULL),
(181, 11, '2018-07-10 12:41:18', NULL),
(182, 1, '2018-07-10 16:01:51', NULL),
(183, 1, '2018-07-10 11:37:55', '2018-07-10 16:07:55'),
(184, 11, '2018-07-11 11:24:12', NULL),
(185, 11, '2018-07-11 14:00:29', NULL),
(186, 2, '2018-07-11 14:48:28', NULL),
(187, 11, '2018-07-12 10:40:46', NULL),
(188, 11, '2018-07-13 10:15:51', NULL),
(189, 11, '2018-07-13 11:37:47', NULL),
(190, 1, '2018-07-13 13:46:44', '2018-07-13 18:16:44'),
(191, 11, '2018-07-14 11:20:48', NULL),
(192, 2, '2018-07-16 09:30:03', NULL),
(193, 11, '2018-07-16 09:44:10', NULL),
(194, 2, '2018-07-16 12:49:05', NULL),
(195, 11, '2018-07-17 10:34:19', NULL),
(196, 11, '2018-07-18 09:59:19', NULL),
(197, 11, '2018-07-19 12:24:14', NULL),
(198, 2, '2018-07-19 15:25:13', NULL),
(199, 2, '2018-07-19 16:04:35', NULL),
(200, 2, '2018-07-20 09:13:48', NULL),
(201, 11, '2018-07-20 09:43:29', NULL),
(202, 2, '2018-07-20 10:58:50', NULL),
(203, 2, '2018-07-20 13:02:54', NULL),
(204, 2, '2018-07-20 20:51:50', NULL),
(205, 11, '2018-07-21 10:25:19', NULL),
(206, 2, '2018-07-21 10:39:57', NULL),
(207, 2, '2018-07-21 14:19:53', NULL),
(208, 2, '2018-07-21 22:34:45', NULL),
(209, 1, '2018-07-22 15:19:27', NULL),
(210, 1, '2018-07-22 10:52:26', '2018-07-22 15:22:26'),
(211, 1, '2018-07-22 10:59:07', '2018-07-22 15:29:07'),
(212, 11, '2018-07-23 10:07:54', NULL),
(213, 11, '2018-07-23 15:32:34', NULL),
(214, 1, '2018-07-23 22:49:28', NULL),
(215, 11, '2018-07-24 09:55:27', NULL),
(216, 2, '2018-07-24 10:26:09', NULL),
(217, 2, '2018-07-25 07:10:07', NULL),
(218, 11, '2018-07-25 10:00:45', NULL),
(219, 11, '2018-07-25 10:00:45', NULL),
(220, 2, '2018-07-25 11:35:44', NULL),
(221, 1, '2018-07-25 15:36:55', NULL),
(222, 11, '2018-07-26 09:27:00', NULL),
(223, 2, '2018-07-26 09:41:55', NULL),
(224, 2, '2018-07-26 11:15:30', NULL),
(225, 2, '2018-07-26 17:42:56', NULL),
(226, 11, '2018-07-28 09:47:30', NULL),
(227, 2, '2018-07-28 10:25:06', NULL),
(228, 2, '2018-07-28 21:08:01', NULL),
(229, 11, '2018-07-30 11:14:49', NULL),
(230, 11, '2018-07-31 11:20:05', NULL),
(231, 11, '2018-07-31 11:25:20', NULL),
(232, 2, '2018-07-31 11:55:34', NULL),
(233, 11, '2018-08-01 12:04:34', NULL),
(234, 11, '2018-08-02 10:49:45', NULL),
(235, 11, '2018-08-02 10:51:32', NULL),
(236, 11, '2018-08-03 14:26:22', NULL),
(237, 11, '2018-08-04 10:09:49', NULL),
(238, 11, '2018-08-04 17:54:27', NULL),
(239, 2, '2018-08-07 09:09:12', NULL),
(240, 11, '2018-08-07 11:26:33', NULL),
(241, 11, '2018-08-08 10:15:17', NULL),
(242, 1, '2018-08-09 00:01:15', NULL),
(243, 11, '2018-08-09 13:48:22', NULL),
(244, 11, '2018-08-09 15:51:23', NULL),
(245, 11, '2018-08-09 15:52:28', NULL),
(246, 11, '2018-08-11 09:58:23', NULL),
(247, 11, '2018-08-13 09:30:09', '2018-08-13 14:00:09'),
(248, 2, '2018-08-13 14:00:35', NULL),
(249, 11, '2018-08-15 10:09:55', NULL),
(250, 11, '2018-08-15 16:24:32', NULL),
(251, 11, '2018-08-16 10:01:16', NULL),
(252, 11, '2018-08-16 13:12:52', NULL),
(253, 2, '2018-08-16 08:56:49', '2018-08-16 13:26:49'),
(254, 11, '2018-08-17 09:58:14', NULL),
(255, 2, '2018-08-18 11:18:57', NULL),
(256, 2, '2018-08-18 14:55:28', NULL),
(257, 11, '2018-08-20 12:11:35', NULL),
(258, 11, '2018-08-21 11:46:59', NULL),
(259, 11, '2018-08-21 11:47:05', NULL),
(260, 1, '2018-08-22 20:09:46', NULL),
(261, 11, '2018-09-03 11:30:45', NULL),
(262, 1, '2018-09-08 12:48:58', '2018-09-08 17:18:58'),
(263, 1, '2018-09-13 20:28:25', NULL),
(264, 1, '2018-09-18 14:53:21', NULL),
(265, 1, '2018-09-27 18:16:49', NULL),
(266, 1, '2018-10-09 13:28:11', '2018-10-09 17:58:11'),
(267, 2, '2018-10-10 09:49:18', '2018-10-10 14:19:18'),
(268, 1, '2018-10-10 14:11:49', NULL),
(269, 1, '2018-10-10 13:41:29', '2018-10-10 18:11:29'),
(270, 1, '2018-10-13 07:54:56', '2018-10-13 12:24:56'),
(271, 1, '2018-10-16 23:39:30', NULL),
(272, 1, '2018-10-16 23:52:10', NULL),
(273, 1, '2018-10-16 19:58:18', '2018-10-17 00:28:18'),
(274, 1, '2018-11-15 12:26:28', '2018-11-15 17:56:28'),
(275, 11, '2018-12-13 15:08:37', NULL),
(276, 1, '2019-01-02 05:46:36', '2019-01-02 11:16:36'),
(277, 1, '2019-02-19 14:06:37', '2019-02-19 19:36:37'),
(278, 11, '2019-02-20 02:41:09', '2019-02-20 08:11:09'),
(279, 11, '2019-02-20 02:47:44', '2019-02-20 08:17:44'),
(280, 2, '2019-02-20 08:30:43', NULL),
(281, 1, '2019-11-26 20:49:13', NULL),
(282, 1, '2019-11-26 20:49:43', NULL),
(283, 1, '2019-11-26 20:50:15', NULL),
(284, 1, '2019-11-26 20:50:29', NULL),
(285, 1, '2019-11-26 20:50:52', NULL),
(286, 1, '2019-11-26 20:53:17', NULL),
(287, 1, '2019-11-26 20:54:49', NULL),
(288, 1, '2019-11-26 20:54:51', NULL),
(289, 1, '2019-11-26 20:55:06', NULL),
(290, 1, '2019-11-26 20:55:38', NULL),
(291, 1, '2019-11-26 20:57:04', NULL),
(292, 1, '2019-11-26 20:57:43', NULL),
(293, 1, '2019-11-26 20:57:51', NULL),
(294, 1, '2019-11-26 20:58:40', NULL),
(295, 1, '2019-11-26 20:59:17', NULL),
(296, 1, '2019-11-26 21:02:03', '2019-11-26 21:02:03'),
(297, 1, '2019-11-26 21:03:44', NULL),
(298, 1, '2019-11-26 21:05:47', NULL),
(299, 1, '2019-11-26 21:08:00', NULL),
(300, 1, '2019-11-26 21:19:40', NULL),
(301, 1, '2019-11-26 21:22:49', NULL),
(302, 1, '2019-11-26 21:22:57', NULL),
(303, 1, '2019-11-26 21:24:00', NULL),
(304, 1, '2019-11-26 21:25:56', NULL),
(305, 1, '2019-11-26 21:26:51', NULL),
(306, 1, '2019-11-26 21:34:16', '2019-11-26 21:34:16'),
(307, 13, '2019-11-26 21:34:27', NULL),
(308, 13, '2019-11-26 21:34:38', NULL),
(309, 13, '2019-11-26 21:35:56', NULL),
(310, 1, '2019-11-26 21:36:11', NULL),
(311, 1, '2019-11-26 21:36:23', NULL),
(312, 1, '2019-11-26 21:36:57', '2019-11-26 21:36:57'),
(313, 13, '2019-11-26 21:37:06', NULL),
(314, 13, '2019-11-26 22:42:08', NULL),
(315, 1, '2019-11-27 23:46:04', NULL),
(316, 13, '2019-11-30 11:36:00', NULL),
(317, 1, '2019-11-30 22:12:25', '2019-11-30 22:12:25'),
(318, 13, '2019-11-30 21:58:38', NULL),
(319, 1, '2019-11-30 22:12:42', NULL),
(320, 13, '2019-12-10 11:09:25', NULL),
(321, 13, '2019-12-11 13:54:10', NULL),
(322, 1, '2020-01-10 16:40:35', NULL),
(323, 1, '2020-01-10 17:10:00', NULL),
(324, 1, '2020-01-11 00:02:22', NULL),
(325, 1, '2020-01-11 12:06:42', NULL),
(326, 1, '2020-01-11 22:34:00', NULL),
(327, 1, '2020-01-12 14:15:08', NULL),
(328, 1, '2020-01-12 21:51:50', NULL),
(329, 1, '2020-08-22 13:36:03', NULL),
(330, 1, '2020-08-22 14:19:04', NULL),
(331, 1, '2020-08-22 14:26:50', NULL),
(332, 1, '2020-08-22 20:04:23', NULL),
(333, 1, '2020-08-22 20:09:13', NULL),
(334, 1, '2020-08-22 20:11:58', NULL),
(335, 1, '2020-08-22 20:16:29', NULL),
(336, 1, '2020-08-22 20:27:01', NULL),
(337, 1, '2020-08-22 20:28:47', NULL),
(338, 1, '2020-08-22 20:58:11', '2020-08-22 20:58:11'),
(339, 1, '2020-08-22 20:58:14', NULL),
(340, 1, '2020-08-23 06:25:51', NULL),
(341, 1, '2020-08-23 06:35:55', NULL),
(342, 1, '2020-08-23 21:10:50', NULL),
(343, 1, '2020-08-23 21:19:15', NULL),
(344, 1, '2020-08-24 21:28:56', NULL),
(345, 1, '2020-08-24 21:53:06', NULL),
(346, 1, '2020-08-25 00:46:27', NULL),
(347, 1, '2020-08-25 11:13:32', NULL),
(348, 1, '2020-08-25 15:15:36', NULL),
(349, 1, '2020-08-25 15:52:44', NULL),
(350, 1, '2020-08-26 01:39:28', NULL),
(351, 1, '2020-08-26 21:02:06', NULL),
(352, 1, '2020-08-26 21:23:26', NULL),
(353, 1, '2020-08-26 21:32:24', NULL),
(354, 1, '2020-08-26 21:57:16', NULL),
(355, 1, '2020-08-26 22:15:55', NULL),
(356, 1, '2020-08-27 01:00:51', '2020-08-27 01:00:51'),
(357, 3, '2020-08-27 01:02:16', '2020-08-27 01:02:16'),
(358, 1, '2020-08-27 07:34:48', NULL),
(359, 1, '2020-08-27 15:12:59', NULL),
(360, 1, '2020-08-27 16:30:31', NULL),
(361, 1, '2020-08-27 17:28:48', NULL),
(362, 1, '2020-08-27 20:07:12', NULL),
(363, 1, '2020-08-27 20:08:15', NULL),
(364, 1, '2020-08-27 20:45:29', NULL),
(365, 1, '2020-08-29 11:37:56', NULL),
(366, 1, '2020-09-12 21:53:55', NULL),
(367, 1, '2020-09-12 23:07:38', NULL),
(368, 1, '2020-09-12 23:08:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `parent_menu_id` int(11) UNSIGNED ZEROFILL DEFAULT NULL,
  `menu_order` int(11) DEFAULT NULL,
  `menu_href` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `parent_menu_id`, `menu_order`, `menu_href`) VALUES
(1, 'dashaboard', 00000000000, 1, 'https://pos.nayague.com/views/dashboard/'),
(2, 'shop', 00000000000, 2, 'https://pos.nayague.com/views/shop/'),
(3, 'products', 00000000000, 3, 'https://pos.nayague.com/views/products/'),
(4, 'sub details', 00000000000, 4, NULL),
(5, 'categories', 00000000004, 1, 'https://pos.nayague.com/views/categories/'),
(6, 'suppliers', 00000000004, 2, 'https://pos.nayague.com/views/suppliers/'),
(7, 'brands', 00000000004, 3, 'https://pos.nayague.com/views/brands/'),
(8, 'tax/ vat', 00000000004, 4, 'https://pos.nayague.com/views/tax/');

-- --------------------------------------------------------

--
-- Table structure for table `offer_type`
--

CREATE TABLE `offer_type` (
  `offer_type_id` int(11) NOT NULL,
  `offer_type_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer_type`
--

INSERT INTO `offer_type` (`offer_type_id`, `offer_type_name`) VALUES
(1, 'percentage'),
(2, 'amount');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `product_cat_id` int(11) DEFAULT NULL,
  `product_brand_id` int(11) DEFAULT NULL,
  `product_model_no` varchar(100) DEFAULT NULL,
  `product_code_no` varchar(100) DEFAULT NULL,
  `img_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `buying_price` decimal(10,2) DEFAULT NULL,
  `expenses` decimal(10,2) DEFAULT NULL,
  `selling_price` decimal(10,2) DEFAULT NULL,
  `availability` tinyint(1) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `offer_type_id` int(11) DEFAULT NULL,
  `offer_value` decimal(10,2) DEFAULT NULL,
  `discounted` decimal(10,2) DEFAULT NULL,
  `product_added_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `product_exp_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `product_condition_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_desc`, `product_cat_id`, `product_brand_id`, `product_model_no`, `product_code_no`, `img_id`, `supplier_id`, `buying_price`, `expenses`, `selling_price`, `availability`, `tax_id`, `offer_type_id`, `offer_value`, `discounted`, `product_added_date`, `product_exp_date`, `user_id`, `product_condition_id`, `qty`, `branch_id`, `flag`) VALUES
(183, 'Lomac 20mg', '', 224, 88, '', '159812352717', 183, 17, '5.15', '0.00', '5.15', 1, 0, 1, '0.00', '0.00', '2020-08-23 12:54:19', '2023-02-28 00:00:00', 1, 1, 200, 1, 1),
(184, 'Inocid 20', '', 224, 88, '', '159812378035', 183, 18, '4.50', '0.00', '4.50', 1, 0, 1, '0.00', '0.00', '2020-08-23 12:53:58', '2023-04-30 00:00:00', 1, 1, 600, 1, 1),
(185, 'OMEZ 20mg', '', 224, 88, '', '159812400006', 184, 17, '5.40', '0.00', '5.40', 1, 0, 1, '0.00', '0.00', '2020-08-23 12:53:36', '2021-12-31 00:00:00', 1, 1, 220, 1, 1),
(186, 'Nexium 20mg', '', 224, 173, '', '159812411150', 185, 19, '24.25', '0.00', '24.25', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:00:51', '2021-05-31 00:00:00', 1, 1, 42, 1, 1),
(187, 'Nexium 40mg', '', 224, 173, '', '159812445877', 185, 19, '46.10', '0.00', '46.10', 1, 0, 1, '0.00', '0.00', '2020-08-27 22:04:00', '2020-08-27 22:04:00', 1, 1, 32, 1, 1),
(188, 'Pantodac 20mg', '', 224, 91, '', '159812451658', 186, 19, '20.41', '0.00', '20.41', 1, 0, 1, '0.00', '0.00', '2020-08-27 18:20:42', '2020-08-27 18:20:42', 1, 1, 120, 1, 1),
(189, 'Pantodac 40mg', '', 224, 91, '', '159812483998', 187, 19, '33.63', '0.00', '33.63', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:05:48', '2023-01-31 00:00:00', 1, 1, 150, 1, 1),
(190, 'Rabe 20mg', '', 224, 110, '', '159812494836', 187, 19, '24.50', '0.00', '24.50', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:06:43', '2022-03-31 00:00:00', 1, 1, 200, 1, 1),
(191, 'Esomac 40mg', '', 224, 173, '', '159812500339', 187, 17, '19.80', '0.00', '19.80', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:08:34', '2021-08-31 00:00:00', 1, 1, 90, 1, 1),
(192, 'Esomac 20mg', '', 224, 173, '', '159812511488', 187, 17, '14.43', '0.00', '14.43', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:10:18', '2021-10-31 00:00:00', 1, 1, 60, 1, 1),
(193, 'Pantocid 40mg', '', 224, 91, '', '159812521846', 187, 17, '33.63', '0.00', '33.63', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:12:04', '2022-01-31 00:00:00', 1, 1, 50, 1, 1),
(194, 'Happi 20mg', '', 224, 110, '', '159812532494', 187, 17, '14.92', '0.00', '14.92', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:13:15', '2023-01-31 00:00:00', 1, 1, 100, 1, 1),
(195, 'STAMLO 5mg', '', 211, 150, '', '159812539534', 187, 17, '17.89', '0.00', '17.89', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:16:37', '2021-11-30 00:00:00', 1, 1, 60, 1, 1),
(196, 'ACILOC 150mg', '', 202, 120, '', '159812559745', 187, 17, '9.08', '0.00', '9.08', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:18:22', '2023-02-28 00:00:00', 1, 1, 100, 1, 1),
(197, 'Clavamox 625mg', '', 198, 90, '', '159812570248', 187, 17, '72.00', '0.00', '72.00', 1, 0, 1, '0.00', '0.00', '2020-08-24 09:47:41', '2020-08-24 21:30:31', 1, 1, 60, 1, 1),
(205, 'Betaloc ZOK 25mg', '', 200, 179, '', '159812663058', 188, 19, '21.70', '0.00', '21.70', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:35:36', '2022-01-31 00:00:00', 1, 1, 42, 1, 1),
(206, 'Betaloc 50mg', '', 200, 179, '', '159812673667', 189, 19, '15.90', '0.00', '15.90', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:37:15', '2022-08-31 00:00:00', 1, 1, 100, 1, 1),
(207, 'Atova 10mg', '', 211, 152, '', '159812683546', 190, 0, '13.40', '0.00', '13.40', 1, 0, 1, '0.00', '0.00', '2020-08-27 07:15:42', '2020-08-27 10:19:46', 1, 1, 200, 1, 1),
(208, 'Atova 20mg', '', 211, 152, '', '159812700074', 191, 0, '21.20', '0.00', '21.20', 1, 0, 1, '0.00', '0.00', '2020-08-27 18:49:04', '2020-08-27 18:49:04', 1, 1, 0, 1, 1),
(209, 'Rosuvas 10mg', '', 210, 97, '', '159812703919', 192, 0, '44.50', '0.00', '44.50', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:42:04', '2023-01-31 00:00:00', 1, 1, 50, 1, 1),
(210, 'Rosuvas 5mg', '', 210, 97, '', '159812712424', 192, 0, '25.80', '0.00', '25.80', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:42:44', '2023-01-31 00:00:00', 1, 1, 50, 1, 1),
(211, 'ZYROVA 10mg', '', 210, 97, '', '159812716425', 193, 0, '44.44', '0.00', '44.44', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:43:56', '2021-11-30 00:00:00', 1, 1, 100, 1, 1),
(212, 'Crestor 5mg', '', 210, 97, '', '159812723675', 194, 0, '25.82', '0.00', '25.82', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:45:21', '2021-10-31 00:00:00', 1, 1, 56, 1, 1),
(213, 'Crestor 10mg', '', 210, 97, '', '159812732172', 195, 0, '44.42', '0.00', '44.42', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:46:16', '2021-06-30 00:00:00', 1, 1, 56, 1, 1),
(214, 'Zaart 50mg', '', 211, 89, '', '159812737643', 196, 0, '23.36', '0.00', '23.36', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:47:40', '2023-04-30 00:00:00', 1, 1, 700, 1, 1),
(215, 'Revelol 50mg', '', 211, 179, '', '159812746042', 197, 0, '28.70', '0.00', '28.70', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:48:54', '2023-01-31 00:00:00', 1, 1, 30, 1, 1),
(216, 'Losacar-H 10mg', '', 211, 89, '', '159812753447', 198, 0, '23.36', '0.00', '23.36', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:50:20', '2022-10-31 00:00:00', 1, 1, 200, 1, 1),
(217, 'Losacar 50mg()', '', 211, 89, '', '159812762016', 199, 0, '12.38', '0.00', '12.38', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:52:16', '2022-12-31 00:00:00', 1, 1, 315, 1, 1),
(218, 'Cardiprin 100mg', '', 215, 102, '', '159812773682', 200, 0, '5.30', '0.00', '5.30', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:54:14', '2021-11-30 00:00:00', 1, 1, 90, 1, 1),
(219, 'Astrix 100mg', '', 215, 102, '', '159812785439', 201, 0, '24.60', '0.00', '24.60', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:56:34', '2021-10-31 00:00:00', 1, 1, 28, 1, 1),
(220, 'RePACE 50mg', '', 211, 89, '', '159812799494', 202, 0, '12.37', '0.00', '12.37', 1, 0, 1, '0.00', '0.00', '2020-08-23 01:58:04', '2023-05-31 00:00:00', 1, 1, 100, 1, 1),
(221, 'Atorlip 10mg', '', 210, 152, '', '159812808469', 203, 0, '6.37', '0.00', '6.37', 1, 0, 1, '0.00', '0.00', '2020-08-27 22:01:45', '2020-08-27 22:01:45', 1, 1, 300, 1, 1),
(222, 'Atorlip 20mg', '', 210, 152, '', '159812831358', 204, 0, '10.76', '0.00', '10.76', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:03:46', '2022-10-31 00:00:00', 1, 1, 330, 1, 1),
(223, 'Domperon ', '', 202, 178, '', '159812842647', 205, 0, '6.49', '0.49', '6.49', 1, 0, 1, '0.00', '6.49', '2020-08-27 06:19:56', '2024-03-31 00:00:00', 1, 1, 70, 1, 1),
(224, 'Deflux 10mg', '', 202, 178, '', '159812856532', 206, 0, '6.50', '0.00', '6.50', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:07:15', '2021-05-31 00:00:00', 1, 1, 100, 1, 1),
(225, 'Innocid 20mg', '', 202, 88, '', '159812863592', 207, 0, '4.50', '0.00', '4.50', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:09:10', '2023-04-30 00:00:00', 1, 1, 600, 1, 1),
(226, 'Clopact 75mg', '', 215, 92, '', '159812875067', 208, 0, '21.00', '0.00', '21.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 19:42:12', '2020-08-27 19:42:12', 1, 1, 120, 1, 1),
(227, 'NOKLOT 75mg', '', 215, 102, '', '159812898100', 209, 0, '21.03', '0.00', '21.03', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:15:31', '2022-02-28 00:00:00', 1, 1, 100, 1, 1),
(228, 'Fincar 5mg', '', 216, 176, '', '159812913199', 210, 0, '26.96', '0.00', '26.96', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:18:08', '2022-04-30 00:00:00', 1, 1, 100, 1, 1),
(229, 'Kalzana', '', 204, 180, '', '159812951626', 211, 0, '14.56', '0.00', '14.56', 1, 0, 1, '0.00', '0.00', '2020-08-27 13:38:52', '2020-08-27 13:38:52', 1, 1, 90, 1, 1),
(230, 'Kalzana 500mg', '', 204, 180, '', '159812956689', 211, 0, '15.41', '0.00', '15.41', 1, 0, 1, '0.00', '0.00', '2020-08-27 09:35:10', '2020-08-27 09:35:10', 1, 1, 40, 1, 1),
(231, 'Tenolol', '', 200, 111, '', '159812969615', 212, 0, '5.03', '0.00', '5.03', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:27:04', '2022-11-30 00:00:00', 1, 1, 400, 1, 1),
(232, 'Angiopril 25mg', '', 200, 160, '', '159812982470', 213, 0, '3.00', '0.00', '3.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:29:20', '2022-10-31 00:00:00', 1, 1, 200, 1, 1),
(233, 'Tazloc 20mg', '', 211, 181, '', '159813001966', 214, 0, '12.23', '0.00', '12.23', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:31:47', '2021-10-31 00:00:00', 1, 1, 60, 1, 1),
(234, 'Natrilix SR 1.5mg', '', 211, 182, '', '159813037926', 215, 0, '34.16', '0.00', '34.16', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:38:14', '2022-01-31 00:00:00', 1, 1, 60, 1, 1),
(235, 'RanCV 500mg', '', 200, 183, '', '159813055173', 216, 0, '31.66', '0.00', '31.66', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:41:22', '2022-09-30 00:00:00', 1, 1, 60, 1, 1),
(236, 'Imdur 60mg', '', 200, 100, '', '159813063331', 217, 0, '40.40', '0.00', '40.40', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:43:18', '2022-10-31 00:00:00', 1, 1, 60, 1, 1),
(237, 'Gp-2 2mg', '', 207, 184, '', '159813083921', 218, 0, '11.61', '0.00', '11.61', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:45:22', '2021-09-30 00:00:00', 1, 1, 100, 1, 1),
(238, 'Getryl 2mg', '', 207, 184, '', '159813092283', 219, 0, '11.60', '0.00', '11.60', 1, 0, 1, '0.00', '0.00', '2020-08-26 10:41:21', '2023-01-31 00:00:00', 1, 1, 60, 1, 1),
(239, 'Getryl 4mg', '', 207, 184, '', '159813100214', 220, 0, '21.15', '0.00', '21.15', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:47:21', '2023-03-31 00:00:00', 1, 1, 20, 1, 1),
(240, 'Euglin 2mg', '', 207, 184, '', '159813104201', 221, 0, '7.83', '0.00', '7.83', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:48:17', '2023-02-28 00:00:00', 1, 1, 100, 1, 1),
(241, 'Euglin 4mg', '', 207, 184, '', '159813109794', 222, 0, '14.30', '0.00', '14.30', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:48:57', '2022-03-31 00:00:00', 1, 1, 100, 1, 1),
(242, 'GP-1 1mg', '', 207, 184, '', '159813113761', 223, 0, '8.18', '0.00', '8.18', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:49:57', '2021-06-30 00:00:00', 1, 1, 100, 1, 1),
(243, 'Reclide 80mg', '', 207, 101, '', '159813119724', 224, 0, '12.00', '0.00', '12.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:51:24', '2021-11-30 00:00:00', 1, 1, 40, 1, 1),
(244, 'Sporidex 250mg', '', 198, 142, '', '159813128469', 225, 0, '9.85', '0.00', '9.85', 1, 0, 1, '0.00', '0.00', '2020-08-24 09:46:00', '2020-08-24 21:32:56', 1, 1, 70, 1, 1),
(245, 'Ferup-SG', '', 204, 180, '', '159813136989', 226, 0, '14.58', '0.00', '14.58', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:55:35', '2021-07-31 00:00:00', 1, 1, 360, 1, 1),
(246, 'Jonac - GEL', '', 213, 87, '', '159813153592', 227, 0, '123.00', '0.00', '123.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:57:16', '2021-12-31 00:00:00', 1, 1, 11, 1, 1),
(247, 'Powergesic - GEL', '', 213, 87, '', '159813163647', 228, 0, '150.00', '0.00', '150.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 02:58:42', '2021-12-31 00:00:00', 1, 1, 3, 1, 1),
(248, 'Sporidex 125mg 100ml', '', 225, 142, '', '159813179682', 229, 0, '318.00', '0.00', '318.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 03:04:40', '2021-10-31 00:00:00', 1, 1, 1, 1, 1),
(249, 'Fucidin 5g Cream', '', 208, 185, '', '159813194705', 230, 0, '529.00', '0.00', '529.00', 1, 0, 1, '0.00', '0.00', '2020-08-24 11:38:49', '2022-11-30 00:00:00', 1, 1, 11, 1, 1),
(250, 'Cloderm', '', 208, 0, '', '159813203341', 231, 0, '483.21', '0.00', '483.21', 1, 0, 1, '0.00', '0.00', '2020-08-23 03:06:15', '2022-10-31 00:00:00', 1, 1, 2, 1, 1),
(251, 'Cloderm Oinment', '', 214, 0, '', '159813217540', 232, 0, '483.21', '0.00', '483.21', 1, 0, 1, '0.00', '0.00', '2020-08-23 03:07:50', '2023-01-31 00:00:00', 1, 1, 2, 1, 1),
(252, 'Beprosone Ointment', '', 214, 0, '', '159813222912', 233, 0, '448.11', '0.00', '448.11', 1, 0, 1, '0.00', '0.00', '2020-08-23 03:09:32', '2023-02-28 00:00:00', 1, 1, 2, 1, 1),
(253, 'Foban Cream', '', 208, 0, '', '159813237208', 234, 0, '789.75', '0.00', '789.75', 1, 0, 1, '0.00', '0.00', '2020-08-23 03:10:50', '2023-03-31 00:00:00', 1, 1, 2, 1, 1),
(254, 'Diamicron MR 60mg', '', 207, 101, '', '159813245104', 235, 0, '36.93', '0.00', '36.93', 1, 0, 1, '0.00', '0.00', '2020-08-27 09:11:25', '2020-08-27 09:11:25', 1, 1, 316, 1, 1),
(255, 'Asthaline HFA 100mcg', '', 226, 186, '', '159813287220', 236, 0, '372.00', '0.00', '372.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 03:19:08', '2021-08-31 00:00:00', 1, 1, 4, 1, 1),
(256, 'Asthaline DP 400mcg()', '', 226, 186, '', '159813294850', 237, 0, '6.60', '0.00', '6.60', 1, 0, 1, '0.00', '0.00', '2020-08-23 03:20:33', '2022-11-30 00:00:00', 1, 1, 200, 1, 1),
(257, 'Seroflo 125 HFA', '', 226, 187, '', '159813303340', 238, 0, '950.00', '0.00', '950.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 03:22:09', '2021-10-31 00:00:00', 1, 1, 2, 1, 1),
(258, 'Seroflo 500mcg', '', 226, 187, '', '159813312928', 239, 0, '19.00', '0.00', '19.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 03:23:26', '2021-08-31 00:00:00', 1, 1, 100, 1, 1),
(259, 'Allermine', '', 221, 118, '', '159813320607', 240, 0, '1.00', '0.00', '1.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:49:05', '2020-08-27 21:49:05', 1, 1, 470, 1, 1),
(260, 'Glycinorm 40mg', '', 207, 184, '', '159814439360', 241, 0, '10.76', '0.00', '10.76', 1, 0, 1, '0.00', '0.00', '2020-08-25 09:14:33', '2021-11-30 00:00:00', 1, 1, 200, 1, 1),
(261, 'Glycinorm MR 40mg', '', 207, 184, '', '159814448938', 242, 0, '14.57', '0.00', '14.57', 1, 0, 1, '0.00', '0.00', '2020-08-23 06:32:28', '2022-01-31 00:00:00', 1, 1, 30, 1, 1),
(262, 'Glycomet 850mg', '', 207, 103, '', '159814454833', 243, 0, '8.89', '0.00', '8.89', 1, 0, 1, '0.00', '0.00', '2020-08-23 06:33:41', '2022-05-31 00:00:00', 1, 1, 200, 1, 1),
(263, 'Celox R 200mg', '', 206, 98, '', '159814462129', 244, 0, '22.71', '0.00', '22.71', 1, 0, 1, '0.00', '0.00', '2020-08-23 06:36:21', '2022-02-28 00:00:00', 1, 1, 50, 1, 1),
(264, 'Cephadex 125mg 100ml', '', 225, 142, '', '159814470908', 245, 0, '180.00', '0.00', '180.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 06:38:20', '2021-08-31 00:00:00', 1, 1, 2, 1, 1),
(265, 'Betaloc ZOK CR 50ml', '', 211, 179, '', '159814490103', 246, 0, '32.50', '0.00', '32.50', 1, 0, 1, '0.00', '0.00', '2020-08-23 06:40:09', '2022-08-31 00:00:00', 1, 1, 30, 1, 1),
(266, 'Alfacip 0.25mcg', '', 204, 180, '', '159814500947', 247, 0, '14.00', '0.00', '14.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 06:41:41', '2023-02-28 00:00:00', 1, 1, 100, 1, 1),
(267, 'Fybogel (Ispaghula Husk)', '', 202, 0, '', '159814510165', 248, 0, '38.00', '0.00', '38.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 06:43:30', '2023-02-01 00:00:00', 1, 1, 20, 1, 1),
(268, 'Reclied MR 30mg', '', 207, 101, '', '159814521094', 249, 0, '12.96', '0.00', '12.96', 1, 0, 1, '0.00', '0.00', '2020-08-23 06:44:49', '2022-11-30 00:00:00', 1, 1, 40, 1, 1),
(269, 'Vitalise Gold', '', 204, 180, '', '159814528921', 250, 0, '650.00', '0.00', '650.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 06:45:50', '2021-12-12 00:00:00', 1, 1, 2, 1, 1),
(270, 'Zabesta 5mg', '', 211, 155, '', '159814535093', 251, 0, '20.67', '0.00', '20.67', 1, 0, 1, '0.00', '0.00', '2020-08-27 17:09:26', '2020-08-27 17:09:26', 1, 1, 0, 1, 1),
(271, 'Foban Ointment', '', 214, 0, '', '159814544021', 252, 0, '789.75', '0.00', '789.75', 1, 0, 1, '0.00', '0.00', '2020-08-23 06:48:28', '2023-03-31 00:00:00', 1, 1, 2, 1, 1),
(272, 'Fobancort Cream', '', 208, 0, '', '159814550891', 253, 0, '491.40', '0.00', '491.40', 1, 0, 1, '0.00', '0.00', '2020-08-23 06:49:51', '2023-01-31 00:00:00', 1, 1, 2, 1, 1),
(273, 'Fucithalmic Eyedrop', '', 227, 185, '', '159814570109', 254, 0, '819.00', '0.00', '819.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 06:54:32', '2022-06-30 00:00:00', 1, 1, 2, 1, 1),
(274, 'Momate 5g Cream', '', 208, 0, '', '159814587241', 255, 0, '535.00', '0.00', '535.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:11:45', '2022-05-31 00:00:00', 1, 1, 2, 1, 1),
(275, 'Femilon', '', 228, 189, '', '159814604809', 256, 0, '27.68', '0.00', '27.68', 1, 0, 1, '0.00', '0.00', '2020-08-23 06:59:02', '2022-12-31 00:00:00', 1, 1, 63, 1, 1),
(276, 'Turbute Syrup', '', 218, 188, '', '159814614293', 257, 0, '310.00', '0.00', '310.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 12:10:03', '2022-05-12 00:00:00', 1, 1, 2, 1, 1),
(277, 'Cephadex 500mg', '', 198, 142, '', '159814619915', 258, 0, '12.02', '0.00', '12.02', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:01:05', '2021-08-31 00:00:00', 1, 1, 100, 1, 1),
(278, 'Diamicron MR 30mg', '', 207, 101, '', '159814626517', 259, 0, '22.93', '0.00', '22.93', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:28:25', '2023-01-31 00:00:00', 1, 1, 150, 1, 1),
(279, 'Sonaderm GM Cream', '', 208, 0, '', '159814636678', 260, 0, '160.00', '0.00', '160.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:04:16', '2022-03-31 00:00:00', 1, 1, 12, 1, 1),
(280, 'Volini Gel', '', 213, 87, '', '159814645698', 261, 0, '154.00', '0.00', '154.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:06:07', '2022-04-30 00:00:00', 1, 1, 2, 1, 1),
(281, 'Atacand 4mg', '', 211, 158, '', '159814656754', 262, 0, '95.14', '0.00', '95.14', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:07:31', '2022-08-31 00:00:00', 1, 1, 28, 1, 1),
(282, 'Atacand 8mg', '', 211, 158, '', '159814665110', 263, 0, '114.41', '0.00', '114.41', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:08:41', '2022-09-30 00:00:00', 1, 1, 28, 1, 1),
(283, 'Deriva - C Gel', '', 213, 0, '', '159814672117', 264, 0, '1250.00', '0.00', '1250.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:12:05', '2022-01-31 00:00:00', 1, 1, 2, 1, 1),
(284, 'Flunerin 10mg', '', 201, 190, '', '159814681848', 265, 0, '13.73', '0.00', '13.73', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:11:10', '2023-01-31 00:00:00', 1, 1, 200, 1, 1),
(285, 'Cloxil 250mg', '', 198, 191, '', '159814694336', 266, 0, '11.00', '0.00', '11.00', 1, 0, 1, '0.00', '0.00', '2020-08-24 09:44:03', '2020-08-24 21:38:27', 1, 1, 100, 1, 1),
(286, 'Belcid', '', 202, 0, '', '159814698165', 267, 0, '355.00', '0.00', '355.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:14:34', '2023-05-18 00:00:00', 1, 1, 8, 1, 1),
(287, 'Kool n Fresh', '', 229, 0, '', '159814712008', 268, 0, '222.00', '0.00', '222.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 10:37:23', '2020-08-27 10:37:23', 1, 1, 3, 1, 1),
(288, 'Hexidine 160ml', '', 229, 0, '', '159814717875', 269, 0, '569.00', '0.00', '569.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:58:40', '2022-04-30 00:00:00', 1, 1, 4, 1, 1),
(289, 'Hexidine 80ml', '', 229, 0, '', '159814722905', 270, 0, '310.00', '0.00', '310.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:08:26', '2022-09-30 00:00:00', 1, 1, 4, 1, 1),
(290, 'Becosules', '', 204, 180, '', '159814733867', 271, 0, '12.00', '0.00', '12.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 18:46:32', '2020-08-27 18:46:32', 1, 1, 158, 1, 1),
(291, 'Decon 10ml', '', 230, 0, '', '159814743568', 272, 0, '120.00', '0.00', '120.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:21:22', '2023-11-30 00:00:00', 1, 1, 3, 1, 1),
(292, 'Betaserc 8mg', '', 201, 96, '', '159814748230', 273, 0, '31.26', '0.00', '31.26', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:22:20', '2022-02-28 00:00:00', 1, 1, 100, 1, 1),
(293, 'Betaserc 16mg', '', 201, 96, '', '159814754071', 274, 0, '59.76', '0.00', '59.76', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:23:12', '2022-10-31 00:00:00', 1, 1, 60, 1, 1),
(294, 'Pioz 30mg', '', 207, 192, '', '159814762702', 275, 0, '26.68', '0.00', '26.68', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:24:31', '2022-05-31 00:00:00', 1, 1, 50, 1, 1),
(295, 'Pioz 15mg', '', 207, 192, '', '159814767169', 276, 0, '15.08', '0.00', '15.08', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:25:14', '2022-02-28 00:00:00', 1, 1, 50, 1, 1),
(296, 'P-Cort Syrup', '', 218, 193, '', '159814777511', 277, 0, '285.00', '0.00', '285.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:26:42', '2022-01-31 00:00:00', 1, 1, 3, 1, 1),
(297, 'Candid Powder 100g', '', 231, 169, '', '159814790852', 278, 0, '388.00', '0.00', '388.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:29:48', '2023-12-31 00:00:00', 1, 1, 1, 1, 1),
(298, 'Candid Powder 30g', '', 231, 169, '', '159814798838', 279, 0, '200.00', '0.00', '200.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:30:16', '2023-01-31 00:00:00', 1, 1, 3, 1, 1),
(299, 'Waxsol Eardrop 10ml', '', 232, 0, '', '159814806384', 280, 0, '480.00', '0.00', '480.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:32:37', '2021-06-30 00:00:00', 1, 1, 2, 1, 1),
(300, 'CAD D 1000', '', 204, 180, '', '159814815758', 281, 0, '23.60', '0.00', '23.60', 1, 0, 1, '0.00', '0.00', '2020-08-27 19:35:30', '2020-08-27 19:35:30', 1, 1, 10, 1, 1),
(301, 'Lo-Kal Gold', '', 205, 0, '', '159814822494', 282, 0, '5.78', '0.00', '5.78', 1, 0, 1, '0.00', '0.00', '2020-08-23 09:20:17', '2022-01-31 00:00:00', 1, 1, 100, 1, 1),
(302, 'Vitavite', '', 204, 180, '', '159814829000', 283, 0, '1854.78', '0.00', '1854.78', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:36:24', '2021-06-14 00:00:00', 1, 1, 1, 1, 1),
(303, 'Acnex', '', 233, 0, '', '159814841017', 284, 0, '590.00', '0.00', '590.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 19:38:12', '2020-08-27 19:38:12', 1, 1, 0, 1, 1),
(304, 'Hidrate Soap', '', 233, 0, '', '159814851130', 285, 0, '590.00', '0.00', '590.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:39:26', '2022-02-28 00:00:00', 1, 1, 2, 1, 1),
(305, 'Peptamen 400g', '', 234, 0, '', '159814870295', 286, 0, '2953.57', '0.00', '2953.57', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:42:39', '2022-02-15 00:00:00', 1, 1, 1, 1, 1),
(306, 'Sustacal 400g', '', 234, 0, '', '159814875983', 287, 0, '2488.70', '0.00', '2488.70', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:43:21', '2022-01-31 00:00:00', 1, 1, 1, 1, 1),
(307, 'Isocal 425g', '', 234, 0, '', '159814880126', 288, 0, '2437.04', '0.00', '2437.04', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:44:24', '2021-11-30 00:00:00', 1, 1, 1, 1, 1),
(308, 'Candid Cream', '', 208, 169, '', '159814886409', 289, 0, '230.00', '0.00', '230.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 16:10:35', '2020-08-27 16:10:35', 1, 1, 2, 1, 1),
(309, 'Candid-D Cream', '', 208, 169, '', '159814891769', 290, 0, '245.00', '0.00', '245.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:46:02', '2022-03-31 00:00:00', 1, 1, 13, 1, 1),
(310, 'Clean Derm Gel', '', 213, 0, '', '159814896235', 291, 0, '1840.00', '0.00', '1840.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:47:34', '2024-12-31 00:00:00', 1, 1, 1, 1, 1),
(311, 'Nucoxia 60mg', '', 206, 95, '', '159814905475', 292, 0, '34.60', '0.00', '34.60', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:48:58', '2022-01-31 00:00:00', 1, 1, 100, 1, 1),
(312, 'Meftal 500', '', 206, 94, '', '159814913895', 293, 0, '12.00', '0.00', '12.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 20:19:32', '2020-08-27 20:19:32', 1, 1, 78, 1, 1),
(313, 'HCQS 200mg', '', 222, 157, '', '159814923724', 294, 0, '42.08', '0.00', '42.08', 1, 0, 1, '0.00', '0.00', '2020-08-25 09:24:01', '2023-03-31 00:00:00', 1, 1, 120, 1, 1),
(314, 'Astifen 1mg', '', 221, 196, '', '159814938292', 295, 0, '13.25', '0.00', '13.25', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:54:33', '2024-01-31 00:00:00', 1, 1, 120, 1, 1),
(315, 'Montiget 10mg', '', 212, 197, '', '159814950317', 296, 0, '24.00', '0.00', '24.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 07:56:01', '2023-01-31 00:00:00', 1, 1, 42, 1, 1),
(316, 'Loridin 10mg', '', 221, 198, '', '159814961238', 297, 0, '17.00', '0.00', '17.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 18:45:17', '2020-08-27 18:45:17', 1, 1, 180, 1, 1),
(317, 'KLY 42mg', '', 235, 0, '', '159814978838', 298, 0, '355.00', '0.00', '355.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:02:46', '2023-04-30 00:00:00', 1, 1, 1, 1, 1),
(318, 'KLY 82mg', '', 235, 0, '', '159814996631', 299, 0, '475.00', '0.00', '475.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:03:10', '2023-04-30 00:00:00', 1, 1, 1, 1, 1),
(319, 'TOCOSOFT-400', '', 204, 180, '', '159814999039', 300, 0, '11.04', '0.00', '11.04', 1, 0, 1, '0.00', '0.00', '2020-08-27 18:16:12', '2020-08-27 18:16:12', 1, 1, 590, 1, 1),
(320, 'Calcivita', '', 204, 180, '', '159815014186', 301, 0, '13.22', '0.00', '13.22', 1, 0, 1, '0.00', '0.00', '2020-08-27 19:10:17', '2020-08-27 19:10:17', 1, 1, 40, 1, 1),
(321, 'ENAT 400', '', 204, 180, '', '159815022004', 302, 0, '45.00', '0.00', '45.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 11:57:28', '2020-08-27 11:57:28', 1, 1, 310, 1, 1),
(322, 'Zincovit', '', 204, 180, '', '159815029161', 303, 0, '21.88', '0.00', '21.88', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:38:51', '2021-07-31 00:00:00', 1, 1, 570, 1, 1),
(323, 'Zincovit-D 15ml', '', 204, 180, '', '159815067176', 304, 0, '225.08', '0.00', '225.08', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:15:43', '2021-07-31 00:00:00', 1, 1, 3, 1, 1),
(324, 'Zincovit-S 200ml Syrup  ', '', 204, 180, '', '159815074313', 305, 0, '431.39', '0.00', '431.39', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:17:03', '2021-06-30 00:00:00', 1, 1, 3, 1, 1),
(325, 'Zincovit-B 200ml Syrup', '', 204, 180, '', '159815082361', 306, 0, '558.26', '0.00', '558.26', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:17:52', '2021-05-31 00:00:00', 1, 1, 3, 1, 1),
(326, 'Zincofer-S 200ml Liquid', '', 204, 180, '', '159815087293', 307, 0, '288.88', '0.00', '288.88', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:19:41', '2021-06-30 00:00:00', 1, 1, 3, 1, 1),
(327, 'Zincofer Capsules', '', 204, 180, '', '159815098156', 308, 0, '15.63', '0.00', '15.63', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:21:28', '2021-10-31 00:00:00', 1, 1, 90, 1, 1),
(328, 'Voltaren Suppos 12.5mg', '', 206, 87, '', '159815108846', 309, 0, '75.00', '0.00', '75.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:26:45', '2021-09-30 00:00:00', 1, 1, 10, 1, 1),
(329, 'Voltaren Suppos 25mg', '', 206, 87, '', '159815140568', 310, 0, '115.00', '0.00', '115.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:27:53', '2022-09-30 00:00:00', 1, 1, 10, 1, 1),
(330, 'Voltaren Suppos 50mg', '', 206, 87, '', '159815147389', 311, 0, '185.00', '0.00', '185.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:28:37', '2022-12-31 00:00:00', 1, 1, 10, 1, 1),
(331, 'Voltaren Suppos 100mg', '', 206, 87, '', '159815151781', 312, 0, '250.00', '0.00', '250.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:29:10', '2023-02-28 00:00:00', 1, 1, 5, 1, 1),
(332, 'Voltaren 50mg Tablets', '', 206, 87, '', '159815155096', 313, 0, '15.61', '0.00', '15.61', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:30:46', '2022-01-31 00:00:00', 1, 1, 100, 1, 1),
(333, 'Voltaren 75mg Tablets', '', 206, 87, '', '159815164607', 314, 0, '89.00', '0.00', '89.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:31:59', '2022-05-31 00:00:00', 1, 1, 100, 1, 1),
(334, 'Zyncet', '', 221, 131, '', '159815171943', 315, 0, '8.96', '0.00', '8.96', 1, 0, 1, '0.00', '0.00', '2020-08-24 09:47:15', '2020-08-24 21:32:56', 1, 1, 240, 1, 1),
(335, 'Zincoderm-M Cream 15g', '', 208, 0, '', '159815183591', 316, 0, '342.68', '0.00', '342.68', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:35:55', '2022-01-31 00:00:00', 1, 1, 3, 1, 1),
(336, 'Zincoderm-S 15g Cream', '', 208, 0, '', '159815195542', 317, 0, '342.68', '0.00', '342.68', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:37:33', '2022-01-31 00:00:00', 1, 1, 3, 1, 1),
(337, 'Zincoderm-G 15g Cream', '', 208, 0, '', '159815205338', 318, 0, '342.68', '0.00', '342.68', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:39:16', '2021-11-30 00:00:00', 1, 1, 3, 1, 1),
(338, 'Livolin', '', 204, 180, '', '159815215646', 319, 0, '55.00', '0.00', '55.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:40:40', '2022-02-23 00:00:00', 1, 1, 30, 1, 1),
(339, 'Curam 375mg', '', 198, 90, '', '159815224100', 320, 0, '39.04', '0.00', '39.04', 1, 0, 1, '0.00', '0.00', '2020-08-24 09:45:38', '2020-08-24 21:32:56', 1, 1, 20, 1, 1),
(340, 'Curam 625mg', '', 198, 90, '', '159815231936', 321, 0, '72.07', '0.00', '72.07', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:44:28', '2023-01-31 00:00:00', 1, 1, 12, 1, 1),
(341, 'Curam 60ml', '', 225, 90, '', '159815246828', 322, 0, '290.00', '0.00', '290.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:46:14', '2021-07-31 00:00:00', 1, 1, 1, 1, 1),
(342, 'Curam 100ml', '', 225, 90, '', '159815257426', 323, 0, '345.35', '0.00', '345.35', 1, 0, 1, '0.00', '0.00', '2020-08-23 08:47:44', '2022-11-30 00:00:00', 1, 1, 1, 1, 1),
(343, 'Rosuvas 20mg', '', 200, 97, '', '159819756829', 324, 0, '75.00', '0.00', '75.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:18:27', '2023-01-31 00:00:00', 1, 1, 30, 1, 1),
(344, 'Melox15mg', '', 206, 200, '', '159819787006', 325, 0, '9.50', '0.00', '9.50', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:22:15', '2022-09-30 00:00:00', 1, 1, 100, 1, 1),
(345, 'Melox 7.5mg', '', 206, 200, '', '159819793584', 326, 0, '6.00', '0.00', '6.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:23:18', '2022-09-30 00:00:00', 1, 1, 100, 1, 1),
(346, 'Inosita 100mg', '', 207, 93, '', '159819803849', 327, 0, '55.48', '0.00', '55.48', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:25:21', '2022-03-31 00:00:00', 1, 1, 20, 1, 1),
(347, 'Inosita 50mg', '', 207, 93, '', '159819812138', 328, 0, '32.60', '0.00', '32.60', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:26:03', '2022-04-30 00:00:00', 1, 1, 20, 1, 1),
(348, 'Sita 100mg', '', 207, 93, '', '159819816363', 329, 0, '55.48', '0.00', '55.48', 1, 0, 1, '0.00', '0.00', '2020-08-27 18:52:10', '2020-08-27 18:52:10', 1, 1, 49, 1, 1),
(349, 'Sita 50mg', '', 207, 93, '', '159819827585', 330, 0, '32.60', '0.00', '32.60', 1, 0, 1, '0.00', '0.00', '2020-08-23 11:03:32', '2021-10-31 00:00:00', 1, 1, 140, 1, 1),
(350, 'Trevia 100g', '', 207, 93, '', '159819835361', 331, 0, '54.00', '0.00', '54.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:30:22', '2022-01-31 00:00:00', 1, 1, 35, 1, 1),
(351, 'Trevia 50g', '', 207, 93, '', '159819842266', 332, 0, '32.00', '0.00', '32.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:31:21', '2022-09-30 00:00:00', 1, 1, 35, 1, 1),
(352, 'Encorate Chrono 500mg', '', 201, 127, '', '159819848192', 333, 0, '39.18', '0.00', '39.18', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:33:12', '2021-07-31 00:00:00', 1, 1, 30, 1, 1),
(353, 'Encorate Chrono 300mg', '', 201, 127, '', '159819859243', 334, 0, '26.67', '0.00', '26.67', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:34:25', '2023-02-28 00:00:00', 1, 1, 60, 1, 1),
(354, 'Encorate Chrono 200mg', '', 201, 127, '', '159819866548', 335, 0, '15.18', '0.00', '15.18', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:35:24', '2023-02-28 00:00:00', 1, 1, 60, 1, 1),
(355, 'Veniz XR 75mg', '', 201, 141, '', '159819872407', 336, 0, '33.23', '0.00', '33.23', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:37:33', '2023-01-31 00:00:00', 1, 1, 90, 1, 1),
(356, 'Veniz XR 37.5mg', '', 201, 141, '', '159819885342', 337, 0, '17.23', '0.00', '17.23', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:38:12', '2023-02-28 00:00:00', 1, 1, 60, 1, 1),
(357, 'Bupron 150mg', '', 201, 126, '', '159819889233', 338, 0, '30.77', '0.00', '30.77', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:40:39', '2023-01-31 00:00:00', 1, 1, 100, 1, 1),
(358, 'Prodep 20mg', '', 201, 138, '', '159819903961', 339, 0, '13.21', '0.00', '13.21', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:43:06', '2024-03-31 00:00:00', 1, 1, 60, 1, 1),
(359, 'Duzela 30mg', '', 201, 201, '', '159819922496', 340, 0, '44.41', '0.00', '44.41', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:44:35', '2021-11-30 00:00:00', 1, 1, 30, 1, 1),
(360, 'Duzela 20mg', '', 201, 201, '', '159819927508', 341, 0, '33.23', '0.00', '33.23', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:45:30', '2022-04-30 00:00:00', 1, 1, 60, 1, 1),
(361, 'Stanlip 160mg', '', 210, 174, '', '159819933023', 342, 0, '36.00', '0.00', '36.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:56:15', '2020-08-27 21:56:15', 1, 1, 90, 1, 1),
(362, 'Syndopa 275mg', '', 210, 140, '', '159819938260', 343, 0, '53.23', '0.00', '53.23', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:47:39', '2023-03-31 00:00:00', 1, 1, 50, 1, 1),
(363, 'Cetrizet 10mg', '', 221, 131, '', '159819945991', 344, 0, '16.65', '0.00', '16.65', 1, 0, 1, '0.00', '0.00', '2020-08-27 15:14:31', '2020-08-27 15:14:31', 1, 1, 180, 1, 1),
(364, 'Lamosyn 50mg', '', 201, 129, '', '159819956717', 345, 0, '24.02', '0.00', '24.02', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:50:54', '2022-01-31 00:00:00', 1, 1, 50, 1, 1),
(365, 'Alzolam 0.25mg', '', 201, 133, '', '159819965407', 346, 0, '7.81', '0.00', '7.81', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:52:32', '2023-04-30 00:00:00', 1, 1, 100, 1, 1),
(366, 'Alzolam 0.5mg', '', 201, 133, '', '159819975217', 347, 0, '11.90', '0.00', '11.90', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:53:12', '2023-05-31 00:00:00', 1, 1, 100, 1, 1),
(367, 'Lithosun SR 400mg', '', 201, 134, '', '159819979262', 348, 0, '30.77', '0.00', '30.77', 1, 0, 1, '0.00', '0.00', '2020-08-23 09:54:56', '2025-03-31 00:00:00', 1, 1, 30, 1, 1),
(368, 'Oxetol 300mg', '', 201, 144, '', '159819986326', 349, 0, '37.75', '0.00', '37.75', 1, 0, 1, '0.00', '0.00', '2020-08-23 21:58:15', '2021-11-30 00:00:00', 1, 1, 30, 1, 1),
(369, 'Oleanz 5mg', '', 201, 136, '', '159820009580', 350, 0, '12.01', '0.00', '12.01', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:00:40', '2022-01-31 00:00:00', 1, 1, 50, 1, 1),
(370, 'Oleanz Rapitab 5mg', '', 201, 136, '', '159820024098', 351, 0, '19.26', '0.00', '19.26', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:02:50', '2022-01-31 00:00:00', 1, 1, 50, 1, 1),
(371, 'Mirtaz 30mg', '', 201, 135, '', '159820037091', 352, 0, '64.92', '0.00', '64.92', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:04:28', '2023-04-30 00:00:00', 1, 1, 30, 1, 1),
(372, 'Mirtaz 15mg', '', 201, 135, '', '159820046808', 353, 0, '60.00', '0.00', '60.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:05:43', '2023-02-28 00:00:00', 1, 1, 30, 1, 1),
(373, 'Famocid 20mg', '', 202, 121, '', '159820054354', 354, 0, '11.33', '0.00', '11.33', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:08:50', '2023-11-30 00:00:00', 1, 1, 100, 1, 1),
(374, 'Famocid 40mg', '', 202, 121, '', '159820073067', 355, 0, '15.00', '0.00', '15.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:10:27', '2023-11-30 00:00:00', 1, 1, 100, 1, 1),
(375, 'Fastum Gel 15g', '', 213, 107, '', '159820082727', 356, 0, '385.00', '0.00', '385.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 20:37:00', '2020-08-27 20:37:00', 1, 1, 0, 1, 1),
(376, 'Vilda 50mg', '', 207, 202, '', '159820102072', 357, 0, '42.50', '0.00', '42.50', 1, 0, 1, '0.00', '42.50', '2020-08-23 10:32:46', '2021-11-30 00:00:00', 1, 1, 60, 1, 1),
(377, 'Zosert 25mg', '', 201, 130, '', '159820118595', 358, 0, '16.74', '0.00', '16.74', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:17:52', '2023-04-30 00:00:00', 1, 1, 50, 1, 1),
(378, 'Zosert 50mg', '', 201, 130, '', '159820127296', 359, 0, '29.66', '0.00', '29.66', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:18:49', '2023-05-31 00:00:00', 1, 1, 50, 1, 1),
(379, 'Citopam 20mg', '', 201, 132, '', '159820132962', 360, 0, '44.41', '0.00', '44.41', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:21:07', '2022-08-31 00:00:00', 1, 1, 30, 1, 1),
(380, 'Citopam 10mg', '', 201, 132, '', '159820146714', 361, 0, '25.43', '0.00', '25.43', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:22:24', '2022-11-30 00:00:00', 1, 1, 30, 1, 1),
(381, 'Diprovate-N Cream', '', 208, 0, '', '159820154476', 362, 0, '123.09', '0.00', '123.09', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:23:40', '2022-03-31 00:00:00', 1, 1, 3, 1, 1),
(382, 'Lamosyn 25mg', '', 201, 129, '', '159820162095', 363, 0, '13.73', '0.00', '13.73', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:24:55', '2021-08-31 00:00:00', 1, 1, 50, 1, 1),
(383, 'Topirol 25mg', '', 201, 128, '', '159820169569', 364, 0, '22.88', '0.00', '22.88', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:27:48', '2022-12-31 00:00:00', 1, 1, 150, 1, 1),
(384, 'Om-3 1000mg', '', 204, 180, '', '159820186804', 365, 0, '40.83', '0.00', '40.83', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:30:10', '2022-04-30 00:00:00', 1, 1, 90, 1, 1),
(385, 'Om-3 500mg', '', 204, 180, '', '159820201100', 366, 0, '24.16', '0.00', '24.16', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:31:10', '2022-04-30 00:00:00', 1, 1, 90, 1, 1),
(386, 'Nexito 10mg', '', 201, 203, '', '159820225559', 367, 0, '34.16', '0.00', '34.16', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:35:38', '2023-01-31 00:00:00', 1, 1, 50, 1, 1),
(387, 'Nexito 5mg', '', 201, 203, '', '159820233869', 368, 0, '19.33', '0.00', '19.33', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:36:30', '2023-01-31 00:00:00', 1, 1, 50, 1, 1),
(388, 'Qutipin 25mg', '', 201, 143, '', '159820239030', 369, 0, '22.16', '0.00', '22.16', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:37:35', '2023-02-28 00:00:00', 1, 1, 30, 1, 1),
(389, 'Nitrest 10mg', '', 201, 204, '', '159820245539', 370, 0, '35.50', '0.00', '35.50', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:38:40', '2023-11-30 00:00:00', 1, 1, 30, 1, 1),
(390, 'Oxetol 150mg', '', 201, 144, '', '159820252102', 371, 0, '24.41', '0.00', '24.41', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:39:46', '2022-03-31 00:00:00', 1, 1, 30, 1, 1),
(391, 'Oil Of Dermae Cream', '', 208, 0, '', '159820258698', 372, 0, '370.00', '0.00', '370.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:41:25', '2022-06-30 00:00:00', 1, 1, 3, 1, 1),
(392, 'Pim E-1000', '', 204, 180, '', '159820268512', 373, 0, '45.00', '0.00', '45.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:47:23', '2022-10-11 00:00:00', 1, 1, 50, 1, 1),
(393, 'VITACAP', '', 204, 180, '', '159820304305', 374, 0, '30.52', '0.00', '30.52', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:50:07', '2021-06-12 00:00:00', 1, 1, 100, 1, 1),
(394, 'Becozinc', '', 204, 180, '', '159820320795', 375, 0, '10.00', '0.00', '10.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:53:42', '2021-06-30 00:00:00', 1, 1, 120, 1, 1),
(395, 'MAXX OMEGA 3', '', 204, 180, '', '159820342210', 376, 0, '60.00', '0.00', '60.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 22:56:56', '2022-01-03 00:00:00', 1, 1, 30, 1, 1),
(396, 'Diasure Diabetic Vanila 400g', '', 234, 0, '', '159820361629', 377, 0, '2490.00', '0.00', '2490.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 12:23:46', '2020-08-27 12:23:46', 1, 1, 0, 1, 1),
(397, 'Ensure Vanila 400g', '', 234, 0, '', '159820384624', 378, 0, '2559.00', '0.00', '2559.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:02:32', '2021-09-05 00:00:00', 1, 1, 2, 1, 1),
(398, 'Polybion Syrup 250ml', '', 218, 180, '', '159820395225', 379, 0, '378.56', '0.00', '378.56', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:05:36', '2022-02-28 00:00:00', 1, 1, 3, 1, 1),
(399, 'Concor COR 2.5mg', '', 211, 155, '', '159820413629', 380, 0, '18.24', '0.00', '18.24', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:07:27', '2022-04-30 00:00:00', 1, 1, 90, 1, 1),
(400, 'Concor 5mg', '', 211, 155, '', '159820424727', 381, 0, '32.37', '0.00', '32.37', 1, 0, 1, '0.00', '0.00', '2020-08-27 19:35:30', '2020-08-27 19:35:30', 1, 1, 80, 1, 1),
(401, 'Nasivion (paediatric) 0.025%', '', 230, 0, '', '159820430020', 382, 0, '222.90', '0.00', '222.90', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:10:34', '2022-07-31 00:00:00', 1, 1, 3, 1, 1),
(402, 'Nasivion 0.05%', '', 230, 0, '', '159820443488', 383, 0, '233.02', '0.00', '233.02', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:11:18', '2022-04-30 00:00:00', 1, 1, 3, 1, 1),
(403, 'Cosome Syrup', '', 218, 0, '', '159820447864', 384, 0, '285.38', '0.00', '285.38', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:12:07', '2022-01-31 00:00:00', 1, 1, 3, 1, 1),
(404, 'Betamil Cream', '', 208, 0, '', '159820452800', 385, 0, '267.90', '0.00', '267.90', 1, 0, 1, '0.00', '0.00', '2020-08-27 13:36:29', '2020-08-27 13:36:29', 1, 1, 0, 1, 1),
(405, 'Betamil M Cream', '', 208, 0, '', '159820459839', 386, 0, '267.90', '0.00', '267.90', 1, 0, 1, '0.00', '0.00', '2020-08-27 14:03:51', '2020-08-27 14:03:51', 1, 1, 1, 1, 1),
(406, 'Anemidox', '', 204, 180, '', '159820462804', 387, 0, '14.34', '0.00', '14.34', 1, 0, 1, '0.00', '0.00', '2020-08-27 11:36:35', '2020-08-27 11:36:35', 1, 1, 0, 1, 1),
(407, 'Neoprox 250mg', '', 206, 205, '', '159820475553', 388, 0, '23.68', '0.00', '23.68', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:17:33', '2022-12-31 00:00:00', 1, 1, 60, 1, 1),
(408, 'Neoprox 500mg', '', 206, 205, '', '159820485364', 389, 0, '40.77', '0.00', '40.77', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:18:30', '2022-12-31 00:00:00', 1, 1, 60, 1, 1),
(409, 'Deflux 10mg', '', 202, 178, '', '159820491043', 390, 0, '6.50', '0.00', '6.50', 1, 0, 1, '0.00', '6.50', '2020-08-23 11:21:34', '2021-10-31 00:00:00', 1, 1, 100, 1, 1),
(410, 'Tzorel 2mg', '', 201, 206, '', '159820515552', 391, 0, '34.47', '0.00', '34.47', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:25:08', '2022-02-28 00:00:00', 1, 1, 20, 1, 1),
(411, 'Tzorel 4mg', '', 201, 206, '', '159820530863', 392, 0, '53.12', '0.00', '53.12', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:26:11', '2021-12-31 00:00:00', 1, 1, 20, 1, 1),
(412, 'Glucophage 850mg', '', 207, 103, '', '159820537175', 393, 0, '8.90', '0.00', '8.90', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:27:35', '0000-00-00 00:00:00', 1, 1, 300, 1, 1),
(413, 'Glucophage 500mg()', '', 207, 103, '', '159820545558', 394, 0, '4.75', '0.00', '4.75', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:28:52', '2024-08-31 00:00:00', 1, 1, 500, 1, 1),
(414, 'Evion 200mg', '', 204, 180, '', '159820553283', 395, 0, '10.14', '0.00', '10.14', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:30:12', '2024-07-31 00:00:00', 1, 1, 60, 1, 1),
(415, 'Evion 400mg', '', 204, 180, '', '159820561283', 396, 0, '17.18', '0.00', '17.18', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:31:57', '2022-03-31 00:00:00', 1, 1, 150, 1, 1),
(416, 'Proglutrol 500mg', '', 207, 103, '', '159820571753', 397, 0, '6.14', '0.00', '6.14', 1, 0, 1, '0.00', '0.00', '2020-08-24 10:52:19', '2023-04-30 00:00:00', 1, 1, 100, 1, 1),
(417, 'Orofer Syrup', '', 218, 180, '', '159820578083', 398, 0, '390.21', '0.00', '390.21', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:34:54', '2022-12-31 00:00:00', 1, 1, 1, 1, 1),
(418, 'Orofer Drops', '', 218, 180, '', '159820589462', 399, 0, '222.53', '0.00', '222.53', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:35:41', '2022-11-30 00:00:00', 1, 1, 1, 1, 1),
(419, 'Maxepa', '', 204, 180, '', '159820594141', 400, 0, '29.00', '0.00', '29.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:38:10', '2021-09-30 00:00:00', 1, 1, 30, 1, 1),
(420, 'Tryptanol 25mg', '', 201, 149, '', '159820609053', 401, 0, '8.30', '0.00', '8.30', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:39:35', '2023-03-31 00:00:00', 1, 1, 100, 1, 1),
(421, 'Getcet 5mg', '', 221, 207, '', '159820621315', 402, 0, '10.01', '0.00', '10.01', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:41:08', '2022-12-31 00:00:00', 1, 1, 100, 1, 1),
(422, 'Pcam Gel', '', 213, 208, '', '159820631369', 403, 0, '442.62', '0.00', '442.62', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:42:45', '2023-02-28 00:00:00', 1, 1, 1, 1, 1),
(423, 'Zem XL 90mg', '', 200, 172, '', '159820636513', 404, 0, '13.65', '0.00', '13.65', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:43:46', '2022-02-28 00:00:00', 1, 1, 100, 1, 1),
(424, 'Nidonil 80mg', '', 207, 101, '', '159820642661', 405, 0, '12.00', '0.00', '12.00', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:45:07', '2023-05-31 00:00:00', 1, 1, 30, 1, 1),
(425, 'Nitril 0.4mg Spray', '', 200, 209, '', '159820656957', 406, 0, '630.50', '0.00', '630.50', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:47:24', '2023-04-30 00:00:00', 1, 1, 1, 1, 1),
(426, 'Glycomet 500mg', '', 207, 103, '', '159820664499', 407, 0, '4.74', '0.00', '4.74', 1, 0, 1, '0.00', '0.00', '2020-08-27 14:24:19', '2020-08-27 14:24:19', 1, 1, 1080, 1, 1),
(427, 'Glycomet SR 500mg', '', 207, 103, '', '159820674485', 408, 0, '9.25', '0.00', '9.25', 1, 0, 1, '0.00', '0.00', '2020-08-23 23:50:21', '2022-04-30 00:00:00', 1, 1, 1100, 1, 1),
(428, 'abcd', '', 198, 90, '', '159828620118', 410, 0, '10.00', '0.00', '10.00', 1, 0, 1, '0.00', '0.00', '2020-08-26 23:09:21', '2020-08-26 23:09:21', 1, 1, 0, 1, 1),
(429, 'GLOW Collagen', '', 204, 180, '', '159828710646', 411, 0, '116.68', '0.00', '116.68', 1, 0, 1, '0.00', '0.00', '2020-08-24 22:09:35', '2023-06-15 00:00:00', 1, 1, 30, 1, 1),
(430, 'GLOW', '', 204, 180, '', '159828717563', 412, 0, '80.00', '0.00', '80.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 11:08:53', '2020-08-27 11:08:53', 1, 1, 50, 1, 1),
(431, 'Facia Advanced', '', 204, 180, '', '159828938741', 413, 0, '70.43', '0.00', '70.43', 1, 0, 1, '0.00', '0.00', '2020-08-24 22:47:45', '2022-08-21 00:00:00', 1, 1, 60, 1, 1),
(432, 'Ginsomin', '', 204, 180, '', '159828946543', 414, 0, '45.00', '0.00', '45.00', 1, 0, 1, '0.00', '0.00', '2020-08-24 22:49:02', '2021-09-23 00:00:00', 1, 1, 30, 1, 1),
(433, 'Beclomin Cream', '', 208, 0, '', '159828954205', 415, 0, '215.00', '0.00', '215.00', 1, 0, 1, '0.00', '0.00', '2020-08-24 11:41:44', '2022-03-31 00:00:00', 1, 1, 11, 1, 1),
(434, 'Proglutrol 500mg', '', 207, 103, '', '159828964918', 416, 0, '6.14', '0.00', '6.14', 1, 0, 1, '0.00', '0.00', '2020-08-26 11:23:28', '2022-12-31 00:00:00', 1, 1, 200, 1, 1),
(435, 'Sporidex 250mg (New)', '', 198, 142, '', '159828978621', 417, 0, '9.85', '0.00', '9.85', 1, 0, 1, '0.00', '0.00', '2020-08-24 11:36:32', '2021-12-31 00:00:00', 1, 1, 40, 1, 1),
(436, 'Sporidex 500mg', '', 198, 142, '', '159829002339', 418, 0, '18.01', '0.00', '18.01', 1, 0, 1, '0.00', '0.00', '2020-08-24 22:58:16', '2022-01-31 00:00:00', 1, 1, 110, 1, 1),
(437, 'deriphyllin 150mg', '', 212, 105, '', '159829009688', 419, 0, '2.63', '0.00', '2.63', 1, 0, 1, '0.00', '0.00', '2020-08-24 11:00:43', '2022-11-30 00:00:00', 1, 1, 300, 1, 1),
(438, 'Deriphyllin 300mg', '', 198, 105, '', '159829020550', 420, 0, '4.50', '0.00', '4.50', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:03:54', '2022-12-31 00:00:00', 1, 1, 100, 1, 1),
(439, 'Valparin 200mg', '', 201, 127, '', '159829043445', 421, 0, '7.74', '0.00', '7.74', 1, 0, 1, '0.00', '0.00', '2020-08-24 11:16:11', '2023-01-31 00:00:00', 1, 1, 300, 1, 1),
(440, 'Enhancin 375mg', '', 198, 90, '', '159829060946', 422, 0, '40.50', '0.00', '40.50', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:11:00', '2021-08-31 00:00:00', 1, 1, 20, 1, 1),
(441, 'Enhancin 625mg', '', 198, 90, '', '159829086030', 422, 0, '72.05', '0.00', '72.05', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:14:21', '0000-00-00 00:00:00', 1, 1, 10, 1, 1),
(442, 'Enhancin 156.25mg', '', 225, 90, '', '159829106148', 423, 0, '345.00', '0.00', '345.00', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:15:42', '2021-06-30 00:00:00', 1, 1, 1, 1, 1),
(443, 'Sporidex 125mg', '', 225, 142, '', '159829114243', 424, 0, '318.00', '0.00', '318.00', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:17:07', '2021-10-30 00:00:00', 1, 1, 1, 1, 1),
(444, 'Zycel 200mg', '', 206, 98, '', '159829122774', 425, 0, '25.00', '0.00', '25.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:07:37', '2023-01-31 00:00:00', 1, 1, 200, 1, 1),
(445, 'Zycel 100mg', '', 206, 98, '', '159829132198', 426, 0, '15.35', '0.00', '15.35', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:19:22', '2022-09-30 00:00:00', 1, 1, 100, 1, 1),
(446, 'Dilzem 60mg', '', 200, 172, '', '159829136250', 427, 0, '4.29', '0.00', '4.29', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:21:01', '2021-06-30 00:00:00', 1, 1, 200, 1, 1),
(447, 'Dilzem 30mg', '', 200, 172, '', '159829146129', 428, 0, '3.10', '0.00', '3.10', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:23:07', '2021-12-31 00:00:00', 1, 1, 200, 1, 1),
(448, 'Megavit', '', 204, 180, '', '159829158721', 429, 0, '26.40', '0.00', '26.40', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:24:06', '2022-01-31 00:00:00', 1, 1, 100, 1, 1),
(449, 'ZYROVA 5mg', '', 200, 97, '', '159829166138', 430, 0, '24.02', '0.00', '24.02', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:26:12', '2021-08-31 00:00:00', 1, 1, 100, 1, 1),
(450, 'Fungicon 150mg', '', 199, 210, '', '159829187361', 431, 0, '51.48', '0.00', '51.48', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:31:06', '2023-01-31 00:00:00', 1, 1, 20, 1, 1),
(451, 'Candid V6 Vaginal', '', 199, 169, '', '159829206617', 432, 0, '320.00', '0.00', '320.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:06:32', '2024-02-28 00:00:00', 1, 1, 1, 1, 1),
(452, 'Candid V Gel', '', 213, 169, '', '159829218176', 433, 0, '430.00', '0.00', '430.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:07:04', '2022-04-30 00:00:00', 1, 1, 1, 1, 1),
(453, 'Enderm-GM Cream', '', 208, 0, '', '159829224745', 434, 0, '220.00', '0.00', '220.00', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:35:22', '2022-03-31 00:00:00', 1, 1, 11, 1, 1),
(454, 'Fucidin 15g Cream', '', 208, 0, '', '159829232260', 435, 0, '801.50', '0.00', '801.50', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:40:12', '2022-10-31 00:00:00', 1, 1, 1, 1, 1),
(455, 'Fucidin H 5g Cream', '', 208, 0, '', '159829261271', 436, 0, '679.00', '0.00', '679.00', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:40:55', '2022-07-31 00:00:00', 1, 1, 1, 1, 1),
(456, 'Sazo EN 500', '', 208, 0, '', '159829265569', 437, 0, '15.75', '0.00', '15.75', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:42:58', '2023-06-05 00:00:00', 1, 1, 100, 1, 1),
(457, 'Canditral', '', 199, 194, '', '159829277822', 438, 0, '135.25', '0.00', '135.25', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:44:53', '2022-03-31 00:00:00', 1, 1, 4, 1, 1),
(458, 'Angizaar 25mg', '', 200, 89, '', '159829289345', 439, 0, '8.83', '0.00', '8.83', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:48:05', '2022-08-31 00:00:00', 1, 1, 100, 1, 1),
(459, 'Rispond 2mg', '', 201, 211, '', '159829313837', 440, 0, '11.11', '0.00', '11.11', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:49:57', '2022-08-31 00:00:00', 1, 1, 100, 1, 1),
(460, 'Rispond 1mg', '', 201, 211, '', '159829319756', 441, 0, '9.50', '0.00', '9.50', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:13:49', '2020-08-27 21:13:49', 1, 1, 90, 1, 1),
(461, 'Risnia 2mg', '', 201, 211, '', '159829324101', 442, 0, '8.29', '0.00', '8.29', 1, 0, 1, '0.00', '0.00', '2020-08-24 23:51:20', '2022-07-31 00:00:00', 1, 1, 100, 1, 1),
(462, 'Dettol Antibacterial Plaster', '', 236, 0, '', '159829342650', 443, 0, '8.00', '0.00', '8.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 11:47:05', '2020-08-27 11:47:05', 1, 1, 86, 1, 1),
(463, 'Benzac AC Gel', '', 213, 212, '', '159829366763', 444, 0, '751.00', '0.00', '751.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:06:32', '2022-01-31 00:00:00', 1, 1, 2, 1, 1),
(464, 'Candid V3 Vaginal', '', 199, 169, '', '159829372502', 445, 0, '330.00', '0.00', '330.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 16:10:35', '2020-08-27 16:10:35', 1, 1, 0, 1, 1),
(465, 'MOVCOL laxative', '', 202, 180, '', '159829384000', 446, 0, '63.88', '0.00', '63.88', 1, 0, 1, '0.00', '0.00', '2020-08-25 07:05:38', '2022-02-28 00:00:00', 1, 1, 10, 1, 1),
(466, 'Clopilet 75mg', '', 215, 92, '', '159829449333', 447, 0, '21.00', '0.00', '21.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 00:13:00', '2022-04-30 00:00:00', 1, 1, 30, 1, 1),
(467, 'Melmet SR 500mg', '', 207, 103, '', '159829458067', 448, 0, '7.57', '0.00', '7.57', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:58:44', '2023-04-30 00:00:00', 1, 1, 200, 1, 1),
(468, 'Microdox DT 100mg', '', 198, 125, '', '159829465547', 449, 0, '25.78', '0.00', '25.78', 1, 0, 1, '0.00', '0.00', '2020-08-27 19:38:11', '2020-08-27 19:38:11', 1, 1, 80, 1, 1),
(469, 'Dianorm-OD 30mg', '', 207, 101, '', '159829472785', 450, 0, '11.24', '0.00', '11.24', 1, 0, 1, '0.00', '0.00', '2020-08-25 00:17:17', '0000-00-00 00:00:00', 1, 1, 100, 1, 1);
INSERT INTO `product` (`product_id`, `product_name`, `product_desc`, `product_cat_id`, `product_brand_id`, `product_model_no`, `product_code_no`, `img_id`, `supplier_id`, `buying_price`, `expenses`, `selling_price`, `availability`, `tax_id`, `offer_type_id`, `offer_value`, `discounted`, `product_added_date`, `product_exp_date`, `user_id`, `product_condition_id`, `qty`, `branch_id`, `flag`) VALUES
(471, 'Betasol ENT', '', 227, 0, '', '159829679040', 456, 0, '203.00', '0.00', '203.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:52:11', '2022-01-31 00:00:00', 1, 1, 3, 1, 1),
(472, 'Betasol-N ENT', '', 227, 0, '', '159829690186', 457, 0, '203.00', '0.00', '203.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 00:53:18', '2022-01-31 00:00:00', 1, 1, 3, 1, 1),
(473, 'Probeta ENT', '', 227, 0, '', '159829699866', 458, 0, '201.00', '0.00', '201.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 00:55:30', '2021-10-31 00:00:00', 1, 1, 3, 1, 1),
(474, 'Probeta-N ENT', '', 227, 0, '', '159829713039', 459, 0, '207.00', '0.00', '207.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 00:56:09', '2021-12-31 00:00:00', 1, 1, 11, 1, 1),
(475, 'Beclomin Lotion', '', 209, 0, '', '159829716971', 460, 0, '220.00', '0.00', '220.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 00:58:17', '2021-11-30 00:00:00', 1, 1, 3, 1, 1),
(476, 'Sitagen 100mg', '', 207, 93, '', '159829729751', 461, 0, '54.48', '0.00', '54.48', 1, 0, 1, '0.00', '0.00', '2020-08-25 00:59:54', '2021-11-30 00:00:00', 1, 1, 30, 1, 1),
(477, 'Sitagen 50mg', '', 207, 93, '', '159829739430', 462, 0, '32.60', '0.00', '32.60', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:00:41', '2022-05-31 00:00:00', 1, 1, 30, 1, 1),
(478, 'Dianorm-OD 60mg', '', 207, 101, '', '159829744183', 463, 0, '21.60', '0.00', '21.60', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:02:51', '2022-01-31 00:00:00', 1, 1, 100, 1, 1),
(479, 'Zycolax 5mg suppos', '', 238, 145, '', '159829766438', 464, 0, '37.00', '0.00', '37.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 01:11:12', '2022-05-31 00:00:00', 1, 1, 10, 1, 1),
(480, 'Fucicort 5mg Cream', '', 208, 185, '', '159829772489', 465, 0, '679.00', '0.00', '679.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:09:48', '2022-08-31 00:00:00', 1, 1, 1, 1, 1),
(481, 'Gentacil Drop', '', 227, 0, '', '159829798881', 466, 0, '182.00', '0.00', '182.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:13:31', '2021-10-31 00:00:00', 1, 1, 3, 1, 1),
(482, 'Zithrin 500mg', '', 198, 117, '', '159829821127', 467, 0, '63.37', '0.00', '63.37', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:15:13', '2021-12-31 00:00:00', 1, 1, 36, 1, 1),
(483, 'Supricort Cream', '', 208, 0, '', '159829831335', 468, 0, '99999999.99', '0.00', '99999999.99', 0, 0, 1, '0.00', '99999999.99', '2020-08-27 12:56:31', '2020-08-27 00:53:09', 1, 1, 0, 1, 0),
(484, 'Pilex ointment', '', 214, 0, '', '159829842838', 469, 0, '475.00', '0.00', '475.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:18:46', '2023-01-30 00:00:00', 1, 1, 1, 1, 1),
(485, 'Seven Seas Evening/ Primrose oil', '', 204, 180, '', '159829852628', 470, 0, '73.68', '0.00', '73.68', 1, 0, 1, '0.00', '0.00', '2020-08-27 16:22:41', '2020-08-27 16:22:41', 1, 1, 0, 1, 1),
(486, 'Seven Seas Ginkgo Max', '', 204, 180, '', '159829862539', 471, 0, '75.73', '0.00', '75.73', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:21:44', '2021-06-30 00:00:00', 1, 1, 30, 1, 1),
(487, 'Bio oil 60ml', '', 239, 0, '', '159829876998', 472, 0, '916.00', '0.00', '916.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:23:59', '0000-00-00 00:00:00', 1, 1, 1, 1, 1),
(488, 'Fluticone Nasal Spray', '', 230, 0, '', '159829892226', 474, 0, '627.00', '0.00', '627.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:26:57', '2022-03-30 00:00:00', 1, 1, 1, 1, 1),
(489, 'NNO', '', 204, 180, '', '159829901799', 475, 0, '1100.00', '0.00', '1100.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:27:55', '2023-06-27 00:00:00', 1, 1, 1, 1, 1),
(490, 'Prodigy Test Strip', '', 217, 0, '', '159829907596', 476, 0, '54.50', '0.00', '54.50', 1, 0, 1, '0.00', '54.50', '2020-08-25 01:30:56', '2022-06-30 00:00:00', 1, 1, 50, 1, 1),
(491, 'Bactoclav 375mg', '', 198, 90, '', '159829920781', 477, 0, '39.00', '0.00', '39.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:53:47', '2021-06-30 00:00:00', 1, 1, 50, 1, 1),
(492, 'Perfectil Original', '', 204, 180, '', '159830062785', 478, 0, '91.50', '0.00', '91.50', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:21:23', '2022-07-31 00:00:00', 1, 1, 90, 1, 1),
(493, 'Perfectil Platinum', '', 204, 180, '', '159830068880', 479, 0, '148.33', '0.00', '148.33', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:55:44', '2022-12-31 00:00:00', 1, 1, 60, 1, 1),
(494, 'Wellman Original', '', 204, 180, '', '159830074418', 480, 0, '82.33', '0.00', '82.33', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:56:43', '2022-02-28 00:00:00', 1, 1, 30, 1, 1),
(495, 'Wellman 50+', '', 204, 180, '', '159830080401', 480, 0, '96.80', '0.00', '96.80', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:58:18', '2022-02-07 00:00:00', 1, 1, 30, 1, 1),
(496, 'Menopace', '', 204, 180, '', '159830083883', 481, 0, '29.33', '0.00', '29.33', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:59:52', '2022-02-06 00:00:00', 1, 1, 30, 1, 1),
(497, 'Osteocare Tablets', '', 204, 180, '', '159830099296', 482, 0, '13.33', '0.00', '13.33', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:01:03', '2023-01-06 00:00:00', 1, 1, 30, 1, 1),
(498, 'Osteocare Liquid', '', 204, 180, '', '159830106316', 483, 0, '450.00', '0.00', '450.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:02:08', '2022-11-10 00:00:00', 1, 1, 1, 1, 1),
(499, 'Potcit-XR', '', 204, 180, '', '159830112807', 483, 0, '26.00', '0.00', '26.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:03:55', '2022-05-31 00:00:00', 1, 1, 60, 1, 1),
(500, 'Renadium 600mg', '', 216, 108, '', '159830118048', 484, 0, '10.50', '0.00', '10.50', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:06:54', '2022-01-31 00:00:00', 1, 1, 200, 1, 1),
(501, 'Bactoclav 625mg', '', 198, 90, '', '159830141466', 485, 0, '60.00', '0.00', '60.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:09:01', '2021-09-30 00:00:00', 1, 1, 50, 1, 1),
(502, 'Jointace', '', 204, 180, '', '159830154178', 486, 0, '36.13', '0.00', '36.13', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:10:09', '2023-01-06 00:00:00', 1, 1, 30, 1, 1),
(504, 'Pulmocef 250mg', '', 198, 213, '', '159830177134', 488, 0, '46.50', '0.00', '46.50', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:13:50', '2021-12-31 00:00:00', 1, 1, 30, 1, 1),
(505, 'Allercet 5mg', '', 221, 131, '', '159830196965', 489, 0, '5.00', '0.00', '5.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:17:10', '2021-12-31 00:00:00', 1, 1, 100, 1, 1),
(506, 'Neodol-K 50mg', '', 206, 87, '', '159830203051', 490, 0, '11.50', '0.00', '11.50', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:18:35', '2022-12-31 00:00:00', 1, 1, 100, 1, 1),
(507, 'Wellwoman', '', 204, 180, '', '159830211593', 491, 0, '110.36', '0.00', '110.36', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:21:01', '2022-12-31 00:00:00', 1, 1, 30, 1, 1),
(508, 'Nervijen D', '', 204, 180, '', '159830226147', 492, 0, '53.20', '0.00', '53.20', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:23:17', '2022-01-31 00:00:00', 1, 1, 30, 1, 1),
(509, 'Nervijen', '', 204, 180, '', '159830235178', 493, 0, '42.53', '0.00', '42.53', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:24:20', '2022-02-28 00:00:00', 1, 1, 90, 1, 1),
(510, 'Bigsens XR 500mg', '', 207, 103, '', '159830246009', 494, 0, '7.33', '0.00', '7.33', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:25:34', '2022-09-30 00:00:00', 1, 1, 100, 1, 1),
(511, 'Pulmocef 500mg', '', 198, 213, '', '159830253496', 495, 0, '75.75', '0.00', '75.75', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:26:59', '2022-02-28 00:00:00', 1, 1, 30, 1, 1),
(512, 'Allercet 10mg', '', 221, 131, '', '159830261957', 496, 0, '7.00', '0.00', '7.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:27:54', '2022-01-31 00:00:00', 1, 1, 100, 1, 1),
(513, 'Phytoral Ointment', '', 214, 0, '', '159830267482', 497, 0, '195.00', '0.00', '195.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:29:12', '2023-05-31 00:00:00', 1, 1, 1, 1, 1),
(514, 'Turbute 2.5mg', '', 212, 188, '', '159830275214', 498, 0, '5.00', '0.00', '5.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:30:29', '2022-01-25 00:00:00', 1, 1, 100, 1, 1),
(515, 'Glyco-A Cream', '', 208, 0, '', '159830282931', 499, 0, '1800.00', '0.00', '1800.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:31:42', '2021-09-30 00:00:00', 1, 1, 100, 1, 1),
(516, 'Prednitab 5mg', '', 219, 193, '', '159830290285', 500, 0, '6.83', '0.00', '6.83', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:33:17', '2022-09-13 00:00:00', 1, 1, 30, 1, 1),
(517, 'Jointace Gel', '', 213, 0, '', '159830299754', 501, 0, '525.00', '0.00', '525.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:34:22', '2022-09-30 00:00:00', 1, 1, 1, 1, 1),
(518, 'Forceval', '', 204, 180, '', '159830306219', 502, 0, '39.50', '0.00', '39.50', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:36:40', '2021-08-31 00:00:00', 1, 1, 90, 1, 1),
(519, 'Zyncet Syrup', '', 218, 131, '', '159830320073', 503, 0, '190.56', '0.00', '190.56', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:40:37', '2023-01-31 00:00:00', 1, 1, 3, 1, 1),
(520, 'Astifen Syrup', '', 218, 196, '', '159830343739', 504, 0, '345.00', '0.00', '345.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:42:08', '2021-07-31 00:00:00', 1, 1, 3, 1, 1),
(521, 'Orlifit 120mg', '', 210, 106, '', '159830352824', 505, 0, '72.35', '0.00', '72.35', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:44:33', '2021-10-31 00:00:00', 1, 1, 20, 1, 1),
(522, 'Nucoxia 90mg', '', 206, 95, '', '159830367324', 506, 0, '45.10', '0.00', '45.10', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:47:17', '2021-12-31 00:00:00', 1, 1, 100, 1, 1),
(523, 'Biovita Gold', '', 204, 180, '', '159830383736', 507, 0, '88.00', '0.00', '88.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:48:26', '2021-06-30 00:00:00', 1, 1, 30, 1, 1),
(524, 'Revitiz', '', 204, 180, '', '159830390614', 508, 0, '83.33', '0.00', '83.33', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:49:32', '2021-09-13 00:00:00', 1, 1, 30, 1, 1),
(525, 'FreeStyle Optium Strips', '', 217, 0, '', '159830397258', 509, 0, '57.00', '0.00', '57.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:30:42', '2020-08-27 21:30:42', 1, 1, 0, 1, 1),
(526, 'Peritol Syrup', '', 218, 0, '', '159830407097', 510, 0, '170.00', '0.00', '170.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 18:16:12', '2020-08-27 18:16:12', 1, 1, 0, 1, 1),
(527, 'Tascit', '', 216, 0, '', '159830415828', 510, 0, '38.13', '0.00', '38.13', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:55:26', '2021-05-31 00:00:00', 1, 1, 30, 1, 1),
(528, 'Fluoritop', '', 229, 0, '', '159830432607', 511, 0, '405.00', '0.00', '405.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 02:57:19', '2021-11-30 00:00:00', 1, 1, 2, 1, 1),
(531, 'Griseofred 500mg', '', 199, 215, '', '159830480342', 512, 0, '21.45', '0.00', '21.45', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:04:45', '2023-04-30 00:00:00', 1, 1, 20, 1, 1),
(532, 'Mucopain Gel', '', 213, 0, '', '159830488527', 513, 0, '239.00', '0.00', '239.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:05:57', '2021-12-31 00:00:00', 1, 1, 1, 1, 1),
(533, 'Hexigel Mouth', '', 213, 0, '', '159830495718', 514, 0, '244.00', '0.00', '244.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:07:43', '2022-04-30 00:00:00', 1, 1, 1, 1, 1),
(534, 'Enervon-C', '', 204, 180, '', '159830506370', 515, 0, '39.50', '0.00', '39.50', 1, 0, 1, '0.00', '39.50', '2020-08-27 12:56:39', '2020-08-27 11:47:05', 1, 1, 28, 1, 1),
(535, 'Solmux Syrup Pediatric', '', 212, 216, '', '159830527476', 516, 0, '646.00', '0.00', '646.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 06:37:10', '2021-05-31 00:00:00', 1, 1, 4, 1, 1),
(536, 'Solmux forte Suspension', '', 212, 216, '', '159830537092', 517, 0, '741.00', '0.00', '741.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:14:05', '2022-11-30 00:00:00', 1, 1, 2, 1, 1),
(537, 'Thermoseal Dental Gel Pediatric', '', 213, 0, '', '159830544594', 518, 0, '570.00', '0.00', '570.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:15:44', '2022-01-31 00:00:00', 1, 1, 3, 1, 1),
(538, 'Growee Syrup', '', 205, 0, '', '159830554475', 519, 0, '690.00', '0.00', '690.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:17:01', '2021-09-26 00:00:00', 1, 1, 2, 1, 1),
(539, 'Megatone Syrup', '', 218, 180, '', '159830562120', 520, 0, '556.00', '0.00', '556.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:19:46', '2021-10-31 00:00:00', 1, 1, 1, 1, 1),
(540, 'Multiplex Multi vitamin Syrup', '', 218, 180, '', '159830578604', 521, 0, '444.00', '0.00', '444.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 11:11:40', '2020-08-27 11:11:40', 1, 1, 0, 1, 1),
(541, 'Espra 40mg', '', 202, 173, '', '159830588661', 522, 0, '36.50', '0.00', '36.50', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:22:55', '2022-05-31 00:00:00', 1, 1, 98, 1, 1),
(542, 'Espra 20mg', '', 202, 173, '', '159830597522', 523, 0, '18.86', '0.00', '18.86', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:23:38', '2022-04-30 00:00:00', 1, 1, 98, 1, 1),
(543, 'Erythrocin 500mg', '', 198, 115, '', '159830601881', 524, 0, '37.85', '0.00', '37.85', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:24:54', '2023-03-31 00:00:00', 1, 1, 100, 1, 1),
(544, 'Erythrocin 250mg', '', 198, 115, '', '159830609476', 525, 0, '23.90', '0.00', '23.90', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:25:31', '2023-04-30 00:00:00', 1, 1, 100, 1, 1),
(545, 'Erythrocin Granules', '', 225, 115, '', '159830613192', 526, 0, '450.00', '0.00', '450.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:26:39', '2021-10-31 00:00:00', 1, 1, 2, 1, 1),
(546, 'Ronex Syrup', '', 218, 131, '', '159830619956', 527, 0, '180.00', '0.00', '180.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:27:48', '2022-11-30 00:00:00', 1, 1, 2, 1, 1),
(547, 'Neuropat', '', 204, 180, '', '159830626889', 528, 0, '45.10', '0.00', '45.10', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:29:01', '2021-11-30 00:00:00', 1, 1, 60, 1, 1),
(548, 'Transamin 500mg', '', 240, 217, '', '159830645504', 529, 0, '49.00', '0.00', '49.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:31:52', '2024-04-30 00:00:00', 1, 1, 40, 1, 1),
(549, 'Maxit 50mg', '', 206, 87, '', '159830651274', 530, 0, '13.16', '0.00', '13.16', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:33:04', '2022-11-30 00:00:00', 1, 1, 60, 1, 1),
(550, 'Normozide 50mg', '', 211, 89, '', '159830658482', 531, 0, '22.35', '0.00', '22.35', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:34:20', '2021-08-31 00:00:00', 1, 1, 60, 1, 1),
(551, 'Alrin 120mg', '', 221, 119, '', '159830666022', 532, 0, '19.01', '0.00', '19.01', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:37:51', '2022-01-31 00:00:00', 1, 1, 100, 1, 1),
(552, 'Alrin 180mg', '', 221, 119, '', '159830687148', 533, 0, '29.20', '0.00', '29.20', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:39:01', '2022-04-30 00:00:00', 1, 1, 100, 1, 1),
(553, 'Aquarin Cream', '', 208, 0, '', '159833440061', 534, 0, '319.90', '0.00', '319.90', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:18:41', '2022-08-31 00:00:00', 1, 1, 2, 1, 1),
(554, 'Aquarin Fragrance Cream', '', 208, 0, '', '159833452177', 535, 0, '299.00', '0.00', '299.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:20:13', '2022-07-30 00:00:00', 1, 1, 2, 1, 1),
(555, 'Momcal', '', 204, 180, '', '159833461376', 536, 0, '29.50', '0.00', '29.50', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:23:03', '2023-02-24 00:00:00', 1, 1, 60, 1, 1),
(556, 'Telsart 20mg', '', 211, 181, '', '159833478386', 537, 0, '12.25', '0.00', '12.25', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:24:18', '2024-03-31 00:00:00', 1, 1, 50, 1, 1),
(557, 'Telsart 40mg', '', 211, 181, '', '159833485876', 538, 0, '19.46', '0.00', '19.46', 1, 0, 1, '0.00', '0.00', '2020-08-27 11:49:17', '2020-08-27 11:49:17', 1, 1, 85, 1, 1),
(558, 'Gaba 100mg', '', 201, 218, '', '159833512910', 539, 0, '17.00', '0.00', '17.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:29:50', '2024-02-28 00:00:00', 1, 1, 50, 1, 1),
(559, 'Mibe 10mg', '', 210, 219, '', '159833519029', 540, 0, '37.70', '0.00', '37.70', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:30:52', '2024-01-31 00:00:00', 1, 1, 100, 1, 1),
(560, 'Mulax 2mg', '', 201, 206, '', '159833525257', 540, 0, '35.70', '0.00', '35.70', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:36:41', '2024-05-31 00:00:00', 1, 1, 50, 1, 1),
(561, 'Nitrocontin 6.4mg', '', 200, 209, '', '159833555249', 541, 0, '1184.00', '0.00', '1184.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:41:51', '2022-03-31 00:00:00', 1, 1, 2, 1, 1),
(562, 'Nitrocontin 2.6mg', '', 200, 209, '', '159833591146', 542, 0, '903.00', '0.00', '903.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:42:34', '2022-04-30 00:00:00', 1, 1, 2, 1, 1),
(563, 'Rosiden Gel', '', 213, 208, '', '159833595469', 543, 0, '437.00', '0.00', '437.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:45:40', '2022-10-01 00:00:00', 1, 1, 2, 1, 1),
(564, 'Relaxone Plus 30gm Ointment', '', 214, 0, '', '159833614015', 544, 0, '240.00', '0.00', '240.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:47:50', '2022-01-31 00:00:00', 1, 1, 2, 1, 1),
(565, 'Nitrofiss Oinment', '', 214, 209, '', '159833627031', 545, 0, '650.00', '0.00', '650.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:49:45', '2021-11-30 00:00:00', 1, 1, 1, 1, 1),
(566, 'Beterdine Ointment', '', 214, 0, '', '159833638549', 546, 0, '563.00', '0.00', '563.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:51:08', '2021-11-30 00:00:00', 1, 1, 2, 1, 1),
(567, 'Manorest 0.25mg', '', 201, 133, '', '159833646841', 547, 0, '7.81', '0.00', '7.81', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:52:08', '2022-05-31 00:00:00', 1, 1, 100, 1, 1),
(568, 'Manorest 0.5mg', '', 201, 133, '', '159833652888', 548, 0, '11.90', '0.00', '11.90', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:52:46', '2023-06-30 00:00:00', 1, 1, 100, 1, 1),
(569, 'Nebivas 5mg', '', 211, 220, '', '159833656681', 549, 0, '39.60', '0.00', '39.60', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:54:38', '2023-03-31 00:00:00', 1, 1, 50, 1, 1),
(570, 'Lysine Head Lotion', '', 209, 0, '', '159833667891', 550, 0, '140.00', '0.00', '140.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 11:55:57', '2022-07-31 00:00:00', 1, 1, 5, 1, 1),
(571, 'Vomvin 10mg infant Suppo', '', 238, 178, '', '159833675789', 551, 0, '70.83', '0.00', '70.83', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:00:46', '0000-00-00 00:00:00', 1, 1, 6, 1, 1),
(572, 'Vomvin 60mg adult Suppo', '', 238, 178, '', '159833692704', 552, 0, '132.83', '0.00', '132.83', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:00:14', '2021-07-31 00:00:00', 1, 1, 6, 1, 1),
(573, 'Vomvin 30mg Children Suppo', '', 238, 178, '', '159833701472', 553, 0, '117.83', '0.00', '117.83', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:03:26', '2021-07-31 00:00:00', 1, 1, 6, 1, 1),
(574, 'Hilac LAX', '', 202, 0, '', '159833720677', 554, 0, '520.00', '0.00', '520.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:04:55', '2022-12-31 00:00:00', 1, 1, 3, 1, 1),
(575, 'Klaricid 250mg', '', 198, 115, '', '159833729593', 555, 0, '43.90', '0.00', '43.90', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:06:02', '2022-06-30 00:00:00', 1, 1, 20, 1, 1),
(576, 'Klaricid 500mg', '', 198, 115, '', '159833736226', 556, 0, '88.90', '0.00', '88.90', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:06:42', '2022-11-30 00:00:00', 1, 1, 20, 1, 1),
(577, 'Mumfer Syrup', '', 204, 180, '', '159833740251', 557, 0, '450.00', '0.00', '450.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:07:49', '2021-12-31 00:00:00', 1, 1, 1, 1, 1),
(578, 'Mumfer Drops', '', 204, 180, '', '159833746919', 558, 0, '280.00', '0.00', '280.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:08:28', '2022-02-28 00:00:00', 1, 1, 1, 1, 1),
(579, 'Supirocin Ointment', '', 214, 0, '', '159833750822', 559, 0, '374.00', '0.00', '374.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:09:57', '2022-01-31 00:00:00', 1, 1, 2, 1, 1),
(580, 'Flucort Ointment', '', 214, 0, '', '159833759796', 560, 0, '170.00', '0.00', '170.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:10:57', '2022-04-30 00:00:00', 1, 1, 1, 1, 1),
(581, 'Momate 15g Ointment', '', 214, 0, '', '159833765768', 561, 0, '1016.00', '0.00', '1016.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:13:28', '2022-04-30 00:00:00', 1, 1, 1, 1, 1),
(582, 'Momate-S Ointment 10g', '', 214, 0, '', '159833780858', 562, 0, '710.00', '0.00', '710.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:14:17', '2022-04-30 00:00:00', 1, 1, 1, 1, 1),
(583, 'Candid plus eardrop', '', 232, 169, '', '159833785782', 563, 0, '200.00', '0.00', '200.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:15:21', '2022-04-30 00:00:00', 1, 1, 1, 1, 1),
(584, 'Betadine Germicide Gargle 100ml', '', 241, 0, '', '159833805798', 564, 0, '760.00', '0.00', '760.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:19:37', '2021-07-31 00:00:00', 1, 1, 2, 1, 1),
(585, 'Betadine Germicide Gargle 50ml', '', 241, 0, '', '159833817714', 565, 0, '430.00', '0.00', '430.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:20:25', '2021-09-30 00:00:00', 1, 1, 2, 1, 1),
(586, 'Betadine Microbicidal 100ml', '', 241, 0, '', '159833822510', 566, 0, '1098.00', '0.00', '1098.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:21:46', '2021-12-31 00:00:00', 1, 1, 1, 1, 1),
(587, 'Betadine Microbicidal 50ml', '', 241, 0, '', '159833830628', 567, 0, '607.00', '0.00', '607.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:23:02', '2022-03-31 00:00:00', 1, 1, 2, 1, 1),
(588, 'Betadine Surgical Scrub 50ml', '', 241, 0, '', '159833838213', 568, 0, '668.00', '0.00', '668.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:24:25', '2021-05-31 00:00:00', 1, 1, 1, 1, 1),
(589, 'Diamicron 80mg', '', 207, 101, '', '159833846522', 569, 0, '13.60', '0.00', '13.60', 1, 0, 1, '0.00', '0.00', '2020-08-27 16:27:31', '2020-08-27 16:27:31', 1, 1, 180, 1, 1),
(590, 'Coversyl 10mg', '', 211, 221, '', '159833892307', 570, 0, '50.60', '0.00', '50.60', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:33:25', '2022-11-30 00:00:00', 1, 1, 30, 1, 1),
(591, 'Coversyl 5mg', '', 211, 221, '', '159833900585', 571, 0, '38.10', '0.00', '38.10', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:34:30', '2023-01-31 00:00:00', 1, 1, 30, 1, 1),
(592, 'Preterax 5mg', '', 211, 221, '', '159833907054', 572, 0, '46.70', '0.00', '46.70', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:35:58', '2022-10-31 00:00:00', 1, 1, 30, 1, 1),
(593, 'Preterax 2.5mg', '', 211, 221, '', '159833915818', 573, 0, '38.00', '0.00', '38.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:36:42', '2021-10-31 00:00:00', 1, 1, 30, 1, 1),
(594, 'Coralan 5mg', '', 200, 222, '', '159833927716', 574, 0, '55.60', '0.00', '55.60', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:38:58', '2022-09-30 00:00:00', 1, 1, 56, 1, 1),
(595, 'Klean.Prep 69g', '', 202, 0, '', '159833933818', 575, 0, '438.75', '0.00', '438.75', 1, 0, 1, '0.00', '0.00', '2020-08-25 12:40:20', '2022-06-30 00:00:00', 1, 1, 4, 1, 1),
(596, 'Amitone Syrup', '', 218, 196, '', '159833942020', 576, 0, '260.00', '0.00', '260.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:04:54', '2022-02-05 00:00:00', 1, 1, 2, 1, 1),
(597, 'LC 5mg', '', 221, 207, '', '159834089498', 577, 0, '12.15', '0.00', '12.15', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:06:28', '2021-09-30 00:00:00', 1, 1, 100, 1, 1),
(598, 'Amiton 1mg', '', 221, 196, '', '159834098805', 578, 0, '12.15', '0.00', '12.15', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:07:58', '2023-02-03 00:00:00', 1, 1, 100, 1, 1),
(599, 'Glucozide 80mg', '', 221, 101, '', '159834107847', 579, 0, '13.60', '0.00', '13.60', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:08:42', '2023-06-24 00:00:00', 1, 1, 100, 1, 1),
(600, 'Uniren Spray', '', 206, 87, '', '159834112268', 580, 0, '666.00', '0.00', '666.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:09:56', '2023-04-01 00:00:00', 1, 1, 2, 1, 1),
(601, 'Vomiz 4mg', '', 206, 124, '', '159834119648', 581, 0, '47.90', '0.00', '47.90', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:10:44', '2022-09-30 00:00:00', 1, 1, 100, 1, 1),
(602, 'Onetouch Select 10 strips', '', 217, 0, '', '159834124478', 582, 0, '535.00', '0.00', '535.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:59:01', '2020-08-27 21:59:01', 1, 1, 1, 1, 1),
(603, 'Onetouch Select 25 Strips', '', 217, 0, '', '159834136464', 583, 0, '1338.00', '0.00', '1338.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:13:48', '2021-11-30 00:00:00', 1, 1, 1, 1, 1),
(604, 'Onetouch Altra 50 Strips', '', 217, 0, '', '159834142857', 584, 0, '2677.00', '0.00', '2677.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:14:29', '2021-09-30 00:00:00', 1, 1, 1, 1, 1),
(605, 'BRANDS Essence of Chicken', '', 204, 180, '', '159834146983', 585, 0, '525.00', '0.00', '525.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:16:02', '2023-01-08 00:00:00', 1, 1, 6, 1, 1),
(606, 'DIGENE Gel Mint Flavour 200ml', '', 202, 0, '', '159834156297', 586, 0, '290.00', '0.00', '290.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:43:36', '2021-11-30 00:00:00', 1, 1, 5, 1, 1),
(607, 'Cremaffin 225ml', '', 218, 0, '', '159834191359', 589, 0, '363.00', '0.00', '363.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 03:04:02', '2022-10-31 00:00:00', 1, 1, 5, 1, 1),
(608, 'Cremaffin plus 225ml', '', 218, 0, '', '159834199319', 590, 0, '480.00', '0.00', '480.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 01:31:41', '2022-12-31 00:00:00', 1, 1, 2, 1, 1),
(610, 'Glucobay', '', 207, 223, '', '159834220061', 591, 0, '26.80', '0.00', '26.80', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:27:26', '2022-07-14 00:00:00', 1, 1, 100, 1, 1),
(611, 'Optive Eyedrop', '', 237, 0, '', '159834224688', 592, 0, '822.00', '0.00', '822.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:28:39', '2021-10-04 00:00:00', 1, 1, 3, 1, 1),
(612, 'Premolut N 5mg', '', 237, 99, '', '159834231953', 593, 0, '15.17', '0.00', '15.17', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:30:36', '2024-09-30 00:00:00', 1, 1, 90, 1, 1),
(613, 'Allergan Prednisolone', '', 237, 193, '', '159834243658', 594, 0, '445.00', '0.00', '445.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:33:19', '2021-08-31 00:00:00', 1, 1, 3, 1, 1),
(614, 'FML (fluromethlone) Eyedrop', '', 237, 0, '', '159834259917', 595, 0, '445.00', '0.00', '445.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:35:12', '2021-11-29 00:00:00', 1, 1, 3, 1, 1),
(615, 'Exopred Eyedrop', '', 237, 193, '', '159834271253', 596, 0, '445.00', '0.00', '445.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:36:41', '2021-12-31 00:00:00', 1, 1, 2, 1, 1),
(616, 'Lumigan 0.03%', '', 227, 0, '', '159834280135', 597, 0, '2145.00', '0.00', '2145.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:38:44', '2022-05-27 00:00:00', 1, 1, 1, 1, 1),
(617, 'Lumigan 0.01%', '', 227, 0, '', '159834292419', 598, 0, '1953.00', '0.00', '1953.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:39:26', '2022-03-31 00:00:00', 1, 1, 1, 1, 1),
(618, 'Acular', '', 227, 0, '', '159834296664', 599, 0, '561.00', '0.00', '561.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:40:24', '2022-03-07 00:00:00', 1, 1, 2, 1, 1),
(619, 'Acular LS', '', 227, 0, '', '159834302440', 600, 0, '614.00', '0.00', '614.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:41:12', '2021-07-25 00:00:00', 1, 1, 1, 1, 1),
(620, 'Ganfort', '', 227, 0, '', '159834307204', 601, 0, '2410.00', '0.00', '2410.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:42:11', '2022-04-08 00:00:00', 1, 1, 1, 1, 1),
(621, 'Alphagan P', '', 227, 0, '', '159834313189', 602, 0, '1349.00', '0.00', '1349.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:43:01', '2022-05-18 00:00:00', 1, 1, 2, 1, 1),
(622, 'Zymaxid', '', 227, 0, '', '159834318172', 603, 0, '787.00', '0.00', '787.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:43:43', '2021-12-31 00:00:00', 1, 1, 1, 1, 1),
(623, 'Zymar', '', 227, 0, '', '159834322338', 604, 0, '672.00', '0.00', '672.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:44:18', '2021-07-22 00:00:00', 1, 1, 1, 1, 1),
(624, 'Exocin', '', 227, 0, '', '159834325874', 605, 0, '336.00', '0.00', '336.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:45:05', '2022-01-31 00:00:00', 1, 1, 2, 1, 1),
(625, 'L-Pred', '', 227, 0, '', '159834330568', 606, 0, '656.00', '0.00', '656.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:45:52', '2021-08-31 00:00:00', 1, 1, 1, 1, 1),
(626, 'Combigen', '', 227, 0, '', '159834335206', 607, 0, '1633.00', '0.00', '1633.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:46:27', '2022-02-09 00:00:00', 1, 1, 1, 1, 1),
(627, 'Relestat', '', 227, 0, '', '159834338718', 608, 0, '614.00', '0.00', '614.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:47:05', '2021-07-23 00:00:00', 1, 1, 1, 1, 1),
(628, 'Diane 35', '', 228, 224, '', '159834356200', 609, 0, '52.90', '0.00', '52.90', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:49:56', '2022-08-31 00:00:00', 1, 1, 42, 1, 1),
(629, 'Yasmin', '', 228, 224, '', '159834359651', 610, 0, '84.30', '0.00', '84.30', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:51:03', '2022-08-31 00:00:00', 1, 1, 42, 1, 1),
(630, 'Acuvail', '', 227, 0, '', '159834366332', 611, 0, '450.50', '0.00', '450.50', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:52:55', '2021-09-15 00:00:00', 1, 1, 6, 1, 1),
(631, 'Refresh Tears', '', 227, 0, '', '159834377540', 612, 0, '522.00', '0.00', '522.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:53:54', '2022-01-17 00:00:00', 1, 1, 3, 1, 1),
(632, 'Refresh Liquigel', '', 227, 0, '', '159834383495', 613, 0, '752.00', '0.00', '752.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 13:54:38', '2022-04-07 00:00:00', 1, 1, 3, 1, 1),
(633, 'aaaa', '', 198, 0, '', '159834991339', 622, 0, '1.00', '1.00', '2.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 20:48:53', '2020-08-25 20:48:53', 1, 1, -3, 1, 1),
(634, 'Neo loridin', '', 221, 199, '', '159835045943', 623, 0, '21.33', '0.00', '21.33', 1, 0, 1, '0.00', '0.00', '2020-08-25 15:45:20', '2023-03-03 00:00:00', 1, 1, 30, 1, 1),
(635, 'Envas 5mg', '', 211, 159, '', '159835056585', 624, 0, '2.52', '0.00', '2.52', 1, 0, 1, '0.00', '0.00', '2020-08-25 15:47:15', '2023-06-30 00:00:00', 1, 1, 100, 1, 1),
(636, 'Dexaquin Ointment', '', 214, 0, '', '159835063539', 625, 0, '100.00', '0.00', '100.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 15:49:50', '2023-03-31 00:00:00', 1, 1, 2, 1, 1),
(637, 'Ocupres-E Eyedrop', '', 227, 0, '', '159835079094', 626, 0, '160.00', '0.00', '160.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 15:51:13', '2022-03-31 00:00:00', 1, 1, 3, 1, 1),
(638, 'Glenper Permethrin Cream', '', 208, 0, '', '159835087382', 627, 0, '380.00', '0.00', '380.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 15:52:15', '2022-05-31 00:00:00', 1, 1, 1, 1, 1),
(639, 'Deriva Aqueous Gel', '', 213, 0, '', '159835093556', 628, 0, '1120.00', '0.00', '1120.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 15:54:00', '2023-05-31 00:00:00', 1, 1, 1, 1, 1),
(640, 'Deriva MS', '', 213, 0, '', '159835104028', 629, 0, '1370.00', '0.00', '1370.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 15:54:59', '2022-04-30 00:00:00', 1, 1, 1, 1, 1),
(641, 'Formonide respi caps 400mcg', '', 212, 225, '', '159835117935', 630, 0, '20.73', '0.00', '20.73', 1, 0, 1, '0.00', '0.00', '2020-08-25 15:58:18', '2021-07-31 00:00:00', 1, 1, 2, 1, 1),
(642, 'Formonide Respi Caps 200mcg', '', 212, 225, '', '159835129864', 631, 0, '15.23', '0.00', '15.23', 1, 0, 1, '0.00', '0.00', '2020-08-25 15:59:54', '2021-08-31 00:00:00', 1, 1, 2, 1, 1),
(643, 'Formonide Inhaler 400mcg', '', 226, 225, '', '159835139417', 632, 0, '1271.00', '0.00', '1271.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:01:07', '2022-01-31 00:00:00', 1, 1, 1, 1, 1),
(644, 'Tacroz Ointment 0.1%', '', 214, 0, '', '159835146752', 633, 0, '2025.00', '0.00', '2025.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:02:35', '2021-09-30 00:00:00', 1, 1, 1, 1, 1),
(645, 'Tacroz Ointment 0.03%', '', 214, 0, '', '159835155526', 634, 0, '1245.00', '0.00', '1245.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:03:32', '2021-08-31 00:00:00', 1, 1, 1, 1, 1),
(646, 'Eptoin Phenytoin 100mg', '', 201, 226, '', '159835170789', 635, 0, '700.00', '0.00', '700.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:05:50', '2023-05-31 00:00:00', 1, 1, 1, 1, 1),
(647, 'Powercort Cream', '', 208, 0, '', '159835175078', 636, 0, '292.00', '0.00', '292.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:07:05', '2022-05-31 00:00:00', 1, 1, 2, 1, 1),
(648, 'Optive UD Eyedrop', '', 227, 0, '', '159835182543', 637, 0, '48.43', '0.00', '48.43', 1, 0, 1, '0.00', '0.00', '2020-08-27 10:19:46', '2020-08-27 10:19:46', 1, 1, 0, 1, 1),
(649, 'Sucrafil', '', 225, 0, '', '159835190451', 638, 0, '715.00', '0.00', '715.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:09:32', '2022-11-30 00:00:00', 1, 1, 1, 1, 1),
(650, 'Sucrafil O Gel', '', 225, 0, '', '159835197273', 639, 0, '578.00', '0.00', '578.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:10:35', '2023-01-31 00:00:00', 1, 1, 1, 1, 1),
(651, 'Nefrosave Plus', '', 205, 0, '', '159835203556', 640, 0, '37.53', '0.00', '37.53', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:11:44', '2022-05-31 00:00:00', 1, 1, 30, 1, 1),
(652, 'Envas 10mg', '', 211, 159, '', '159835210462', 641, 0, '3.55', '0.00', '3.55', 1, 0, 1, '0.00', '0.00', '2020-08-25 04:14:03', '2023-03-31 00:00:00', 1, 1, 100, 1, 1),
(653, 'Sugar Free', '', 207, 0, '', '159835221549', 642, 0, '330.00', '0.00', '330.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:15:54', '2021-10-17 00:00:00', 1, 1, 1, 1, 1),
(654, 'Domperon Syrup', '', 218, 178, '', '159835235449', 643, 0, '150.00', '0.00', '150.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:17:16', '2021-08-31 00:00:00', 1, 1, 1, 1, 1),
(655, 'Salonpas Spray', '', 206, 0, '', '159835243610', 644, 0, '1100.00', '0.00', '1100.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 10:19:46', '2020-08-27 10:19:46', 1, 1, 0, 1, 1),
(656, 'Frusemide 40mg', '', 211, 227, '', '159835278944', 645, 0, '2.87', '0.00', '2.87', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:24:38', '2022-10-31 00:00:00', 1, 1, 600, 1, 1),
(657, 'Clarityne 10mg', '', 221, 198, '', '159835287808', 646, 0, '66.61', '0.00', '66.61', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:27:08', '2022-09-30 00:00:00', 1, 1, 20, 1, 1),
(658, 'Plavix 75mg', '', 215, 92, '', '159835302864', 647, 0, '21.00', '0.00', '21.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 17:06:34', '2020-08-27 17:06:34', 1, 1, 112, 1, 1),
(659, 'Sofradex Cream', '', 208, 0, '', '159835317796', 648, 0, '193.00', '0.00', '193.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:30:40', '2022-05-31 00:00:00', 1, 1, 10, 1, 1),
(660, 'Soframycin Cream', '', 208, 0, '', '159835324034', 649, 0, '96.00', '0.00', '96.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 04:34:38', '2022-11-30 00:00:00', 1, 1, 10, 1, 1),
(661, 'Allegra 180mg', '', 221, 119, '', '159835352196', 650, 0, '30.30', '0.00', '30.30', 1, 0, 1, '0.00', '0.00', '2020-08-27 18:38:50', '2020-08-27 18:38:50', 1, 1, 140, 1, 1),
(662, 'Allegra 120mg', '', 221, 119, '', '159835361480', 651, 0, '23.40', '0.00', '23.40', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:37:59', '2021-12-31 00:00:00', 1, 1, 150, 1, 1),
(663, 'Cetapin XR 500mg', '', 207, 103, '', '159835367928', 652, 0, '9.25', '0.00', '9.25', 1, 0, 1, '0.00', '0.00', '2020-08-25 04:40:32', '2021-11-30 00:00:00', 1, 1, 180, 1, 1),
(664, 'Insulin syringe 6mm', '', 217, 0, '', '159835378274', 653, 0, '36.00', '0.00', '36.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 04:43:54', '2023-07-31 00:00:00', 1, 1, 100, 1, 1),
(665, 'Dermaveen Cream 100ml', '', 208, 0, '', '159835399511', 654, 0, '2221.11', '0.00', '2221.11', 1, 0, 1, '0.00', '0.00', '2020-08-25 04:45:29', '2022-08-31 00:00:00', 1, 1, 2, 1, 1),
(666, 'Dermaveen Lotion ', '', 209, 0, '', '159835409528', 655, 0, '3400.00', '0.00', '3400.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:51:38', '2022-06-30 00:00:00', 1, 1, 4, 1, 1),
(667, 'Dermaveen Shower and bath oil', '', 209, 0, '', '159835449897', 656, 0, '3179.24', '0.00', '3179.24', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:53:02', '2022-03-31 00:00:00', 1, 1, 2, 1, 1),
(668, 'Epilin 200mg', '', 201, 127, '', '159835458239', 657, 0, '9.00', '0.00', '9.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:55:16', '2022-02-28 00:00:00', 1, 1, 100, 1, 1),
(669, 'Fefol', '', 204, 180, '', '159835471635', 658, 0, '25.13', '0.00', '25.13', 1, 0, 1, '0.00', '0.00', '2020-08-25 16:56:58', '2022-12-31 00:00:00', 1, 1, 90, 1, 1),
(670, 'Amaryl 1mg', '', 207, 184, '', '159835481848', 659, 0, '8.15', '0.00', '8.15', 1, 0, 1, '0.00', '0.00', '2020-08-27 18:52:10', '2020-08-27 18:52:10', 1, 1, 0, 1, 1),
(671, 'Amaryl 2mg', '', 207, 184, '', '159835496573', 660, 0, '11.60', '0.00', '11.60', 1, 0, 1, '0.00', '0.00', '2020-08-27 18:52:10', '2020-08-27 18:52:10', 1, 1, 0, 1, 1),
(672, 'Amaryl 3mg', '', 207, 184, '', '159835515011', 661, 0, '19.45', '0.00', '19.45', 1, 0, 1, '0.00', '0.00', '2020-08-25 17:03:41', '2022-10-31 00:00:00', 1, 1, 60, 1, 1),
(673, 'Cardace 2.5mg', '', 211, 228, '', '159835545353', 662, 0, '17.95', '0.00', '17.95', 1, 0, 1, '0.00', '0.00', '2020-08-25 17:10:37', '2023-01-31 00:00:00', 1, 1, 90, 1, 1),
(674, 'Cardace 5mg', '', 211, 228, '', '159835563749', 663, 0, '29.53', '0.00', '29.53', 1, 0, 1, '0.00', '0.00', '2020-08-25 17:17:29', '2022-04-30 00:00:00', 1, 1, 90, 1, 1),
(675, 'Daonil 5mg', '', 211, 184, '', '159835604987', 664, 0, '2.64', '0.00', '2.64', 1, 0, 1, '0.00', '0.00', '2020-08-25 17:20:10', '2022-06-30 00:00:00', 1, 1, 600, 1, 1),
(676, 'Nuelin SR 250', '', 212, 105, '', '159835621056', 665, 0, '20.41', '0.00', '20.41', 1, 0, 1, '0.00', '0.00', '2020-08-25 17:23:51', '2022-01-31 00:00:00', 1, 1, 100, 1, 1),
(677, 'Clarityne Syrup', '', 218, 198, '', '159835643177', 666, 0, '626.16', '0.00', '626.16', 1, 0, 1, '0.00', '0.00', '2020-08-25 17:25:08', '2022-12-07 00:00:00', 1, 1, 1, 1, 1),
(678, 'Librax 5mg', '', 201, 165, '', '159835816925', 667, 0, '28.56', '0.00', '28.56', 1, 0, 1, '0.00', '0.00', '2020-08-27 10:19:46', '2020-08-27 10:19:46', 1, 1, 0, 1, 1),
(679, 'Nasonex Nasal Spray', '', 230, 0, '', '159835828574', 668, 0, '2624.55', '0.00', '2624.55', 1, 0, 1, '0.00', '0.00', '2020-08-25 17:55:59', '2022-11-02 00:00:00', 1, 1, 1, 1, 1),
(680, 'Elomet Cream', '', 208, 0, '', '159835835980', 669, 0, '900.30', '0.00', '900.30', 1, 0, 1, '0.00', '0.00', '2020-08-25 17:58:13', '2023-02-19 00:00:00', 1, 1, 1, 1, 1),
(681, 'Nuelin Syrup', '', 218, 105, '', '159835849337', 670, 0, '646.20', '0.00', '646.20', 1, 0, 1, '0.00', '0.00', '2020-08-25 17:59:42', '2021-11-30 00:00:00', 1, 1, 4, 1, 1),
(682, 'Saline 0.9%', '', 242, 0, '', '159835868930', 671, 0, '75.00', '0.00', '75.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:05:31', '2023-01-31 00:00:00', 1, 1, 5, 1, 1),
(683, 'Becosules Syrup 200ml', '', 218, 180, '', '159835893153', 672, 0, '435.00', '0.00', '435.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:07:27', '2021-12-05 00:00:00', 1, 1, 1, 1, 1),
(684, 'Zaart 25mg', '', 211, 89, '', '159835904741', 673, 0, '7.55', '0.00', '7.55', 1, 0, 1, '0.00', '0.00', '2020-08-27 11:51:19', '2020-08-27 11:51:19', 1, 1, 50, 1, 1),
(685, 'Kleen Enema', '', 243, 0, '', '159835919446', 674, 0, '340.00', '0.00', '340.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:10:32', '2022-06-30 00:00:00', 1, 1, 1, 1, 1),
(686, 'Valparin 200mg Syrup', '', 218, 127, '', '159835923236', 675, 0, '677.00', '0.00', '677.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:11:51', '2021-10-31 00:00:00', 1, 1, 1, 1, 1),
(687, 'Empa 10mg', '', 207, 230, '', '159835938430', 676, 0, '79.00', '0.00', '79.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 06:23:49', '2022-03-31 00:00:00', 1, 1, 90, 1, 1),
(688, 'Bestflo 0.4mg', '', 211, 231, '', '159835949190', 677, 0, '21.00', '0.00', '21.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:17:31', '2022-10-31 00:00:00', 1, 1, 60, 1, 1),
(689, 'Theofin Syrup', '', 218, 105, '', '159835965154', 678, 0, '206.00', '0.00', '206.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:18:56', '2022-01-31 00:00:00', 1, 1, 3, 1, 1),
(690, 'Nasoclear Spray', '', 230, 0, '', '159835973631', 679, 0, '159.00', '0.00', '159.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:21:21', '2021-05-31 00:00:00', 1, 1, 3, 1, 1),
(691, 'Winterpan Gel', '', 213, 0, '', '159835988177', 680, 0, '180.00', '0.00', '180.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:24:36', '2022-03-31 00:00:00', 1, 1, 3, 1, 1),
(692, 'Trasnspain Craem', '', 208, 0, '', '159836007616', 681, 0, '180.00', '0.00', '180.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:25:38', '2022-07-31 00:00:00', 1, 1, 2, 1, 1),
(693, 'Trasnspain-C Cream', '', 208, 0, '', '159836013852', 682, 0, '180.00', '0.00', '180.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:26:24', '2022-02-28 00:00:00', 1, 1, 2, 1, 1),
(694, 'Thermoseal 50g', '', 244, 0, '', '159836020519', 683, 0, '310.00', '0.00', '310.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:30:24', '2021-08-31 00:00:00', 1, 1, 2, 1, 1),
(695, 'Dentogel', '', 213, 0, '', '159836042430', 684, 0, '317.00', '0.00', '317.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:31:07', '2022-10-31 00:00:00', 1, 1, 3, 1, 1),
(696, 'Phenycof Junior Syrup', '', 218, 0, '', '159836046775', 685, 0, '169.00', '0.00', '169.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:32:39', '2022-01-31 00:00:00', 1, 1, 3, 1, 1),
(697, 'Phenycof Syrup', '', 218, 0, '', '159836055973', 686, 0, '238.00', '0.00', '238.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 04:28:45', '2022-11-30 00:00:00', 1, 1, 2, 1, 1),
(698, 'Salonpas Patch', '', 236, 0, '', '159836070316', 687, 0, '25.00', '0.00', '25.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:39:21', '2022-10-31 00:00:00', 1, 1, 50, 1, 1),
(699, 'Amlopress 5mg', '', 211, 150, '', '159836096193', 688, 0, '3.48', '0.00', '3.48', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:41:48', '2021-12-31 00:00:00', 1, 1, 200, 1, 1),
(700, 'Nicardia retard 20mg', '', 211, 214, '', '159836110885', 689, 0, '1.50', '0.00', '1.50', 1, 0, 1, '0.00', '0.00', '2020-08-27 13:48:27', '2020-08-27 13:48:27', 1, 1, 0, 1, 1),
(701, 'Metrogyl 200mg', '', 198, 232, '', '159836127329', 690, 0, '6.50', '0.00', '6.50', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:45:55', '2025-03-31 00:00:00', 1, 1, 100, 1, 1),
(702, 'Metrogyl 400mg', '', 198, 232, '', '159836135592', 691, 0, '12.01', '0.00', '12.01', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:51:03', '2025-03-31 00:00:00', 1, 1, 100, 1, 1),
(703, 'KetoPlus Shampoo', '', 209, 0, '', '159836166394', 692, 0, '580.00', '0.00', '580.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 09:02:37', '2020-08-27 10:19:45', 1, 1, 3, 1, 1),
(704, 'Solmux Forte Suspension 60ml', '', 225, 216, '', '159836174879', 693, 0, '644.00', '0.00', '644.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 18:54:54', '2022-09-30 00:00:00', 1, 1, 1, 1, 1),
(705, 'Alendronate 70', '', 245, 233, '', '159836214663', 694, 0, '487.00', '0.00', '487.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:00:02', '2022-03-31 00:00:00', 1, 1, 3, 1, 1),
(706, 'Diabetasol', '', 207, 0, '', '159836220301', 695, 0, '6.56', '0.00', '6.56', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:01:46', '2021-08-10 00:00:00', 1, 1, 100, 1, 1),
(707, 'L-Trim Pediatric Suspension', '', 225, 123, '', '159836230626', 696, 0, '115.00', '0.00', '115.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:07:30', '2023-02-28 00:00:00', 1, 1, 1, 1, 1),
(708, 'Cutiate Cream', '', 208, 0, '', '159836265030', 697, 0, '580.00', '0.00', '580.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:08:46', '2021-07-31 00:00:00', 1, 1, 2, 1, 1),
(709, 'Cutiate Ointment', '', 214, 0, '', '159836272688', 698, 0, '580.00', '0.00', '580.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:09:35', '2021-07-31 00:00:00', 1, 1, 1, 1, 1),
(710, 'Dermovate Ointment', '', 214, 0, '', '159836277522', 699, 0, '325.00', '0.00', '325.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:10:43', '2021-11-30 00:00:00', 1, 1, 2, 1, 1),
(711, 'Betnovate-N Cream', '', 208, 0, '', '159836284398', 700, 0, '260.00', '0.00', '260.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:12:52', '2021-04-30 00:00:00', 1, 1, 2, 1, 1),
(712, 'Betnovate Cream 5g', '', 208, 0, '', '159836297229', 701, 0, '135.00', '0.00', '135.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:14:11', '2021-10-31 00:00:00', 1, 1, 2, 1, 1),
(713, 'Betnovate Ointment 5g', '', 214, 0, '', '159836310427', 703, 0, '135.00', '0.00', '135.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:16:02', '2021-04-30 00:00:00', 1, 1, 2, 1, 1),
(714, 'Betnovate-C Cream 5g', '', 208, 0, '', '159836316295', 704, 0, '160.00', '0.00', '160.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:16:48', '2022-08-31 00:00:00', 1, 1, 2, 1, 1),
(715, 'Amileb 10mg', '', 201, 149, '', '159836320821', 705, 0, '1.68', '0.00', '1.68', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:18:26', '2022-06-30 00:00:00', 1, 1, 200, 1, 1),
(716, 'Indol 25mg', '', 206, 234, '', '159836337641', 706, 0, '1.85', '0.00', '1.85', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:21:05', '2023-03-31 00:00:00', 1, 1, 100, 1, 1),
(717, 'Oilatum Soap', '', 233, 0, '', '159836346522', 707, 0, '980.00', '0.00', '980.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:22:05', '2022-04-14 00:00:00', 1, 1, 2, 1, 1),
(718, 'Amoxil  Suspension 125mg', '', 225, 235, '', '159836366236', 708, 0, '270.00', '0.00', '270.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 07:43:32', '2022-08-31 00:00:00', 1, 1, 2, 1, 1),
(719, 'Augmentin Suspension 156mg', '', 225, 90, '', '159836371022', 709, 0, '345.35', '0.00', '345.35', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:26:41', '2021-07-31 00:00:00', 1, 1, 2, 1, 1),
(720, 'Zinnat 500mg', '', 198, 213, '', '159836380135', 710, 0, '80.00', '0.00', '80.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:28:58', '2022-11-30 00:00:00', 1, 1, 20, 1, 1),
(721, 'Zinnat 125mg', '', 198, 213, '', '159836393829', 711, 0, '43.00', '0.00', '43.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:29:51', '2022-10-31 00:00:00', 1, 1, 10, 1, 1),
(722, 'Zinnat 250mg', '', 198, 213, '', '159836399167', 712, 0, '50.00', '0.00', '50.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:30:35', '2022-09-30 00:00:00', 1, 1, 20, 1, 1),
(723, 'Augmentin 375mg', '', 198, 90, '', '159836403599', 713, 0, '42.52', '0.00', '42.52', 1, 0, 1, '0.00', '0.00', '2020-08-25 07:34:11', '2022-07-31 00:00:00', 1, 1, 60, 1, 1),
(724, 'Augmentin 625mg', '', 198, 90, '', '159836410021', 714, 0, '72.00', '0.00', '72.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:33:42', '2022-09-30 00:00:00', 1, 1, 84, 1, 1),
(725, 'Amoderm Cream 50g', '', 208, 0, '', '159836422291', 715, 0, '250.00', '0.00', '250.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:35:15', '2023-03-31 00:00:00', 1, 1, 2, 1, 1),
(726, 'Avamys Nasal Spray', '', 230, 0, '', '159836431568', 716, 0, '1290.00', '0.00', '1290.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:36:21', '2021-07-31 00:00:00', 1, 1, 1, 1, 1),
(727, 'Tetret 250mg', '', 198, 236, '', '159836451750', 717, 0, '6.00', '0.00', '6.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 07:47:59', '2022-04-30 00:00:00', 1, 1, 100, 1, 1),
(728, 'Amoxil 500mg', '', 198, 235, '', '159836524847', 718, 0, '26.90', '0.00', '26.90', 1, 0, 1, '0.00', '0.00', '2020-08-27 20:41:17', '2020-08-27 20:41:17', 1, 1, 66, 1, 1),
(729, 'Amoxil 250mg', '', 198, 235, '', '159836533298', 719, 0, '14.00', '0.00', '14.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 19:53:03', '2022-01-31 00:00:00', 1, 1, 100, 1, 1),
(730, 'Piriton Syrup', '', 218, 118, '', '159836538345', 720, 0, '110.00', '0.00', '110.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 20:06:04', '2022-04-30 00:00:00', 1, 1, 13, 1, 1),
(731, 'Piriton Expectorant Syrup', '', 218, 118, '', '159836903009', 721, 0, '130.00', '0.00', '130.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 20:55:31', '2021-09-30 00:00:00', 1, 1, 3, 1, 1),
(732, 'Ventolin Evohaler 100mcg', '', 226, 186, '', '159836913162', 722, 0, '349.00', '0.00', '349.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 20:57:19', '2021-10-31 00:00:00', 1, 1, 2, 1, 1),
(733, 'Ventolin Respiratory Solution', '', 212, 186, '', '159836940564', 723, 0, '390.00', '0.00', '390.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:02:26', '2023-01-31 00:00:00', 1, 1, 1, 1, 1),
(734, 'Seretide Inhaler 125mcg', '', 226, 187, '', '159836954628', 724, 0, '1050.00', '0.00', '1050.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:07:14', '2021-07-31 00:00:00', 1, 1, 2, 1, 1),
(735, 'Seretide Inhaler 250mcg', '', 226, 187, '', '159836983501', 725, 0, '1250.00', '0.00', '1250.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:08:11', '2021-09-30 00:00:00', 1, 1, 2, 1, 1),
(736, 'D max 2000', '', 204, 180, '', '159836989119', 726, 0, '32.00', '0.00', '32.00', 1, 0, 1, '0.00', '32.00', '2020-08-25 09:12:38', '2021-12-31 00:00:00', 1, 1, 100, 1, 1),
(737, 'D Max 1000', '', 204, 180, '', '159836997266', 727, 0, '28.00', '0.00', '28.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:11:52', '2021-08-31 00:00:00', 1, 1, 100, 1, 1),
(738, 'De-soft Cream', '', 208, 0, '', '159837011284', 728, 0, '230.00', '0.00', '230.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:13:33', '2022-02-28 00:00:00', 1, 1, 2, 1, 1),
(739, 'Glycinorm 80mg', '', 207, 101, '', '159837021351', 729, 0, '13.54', '0.00', '13.54', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:16:01', '2022-01-31 00:00:00', 1, 1, 100, 1, 1),
(740, 'Feck 100mg', '', 206, 237, '', '159837042279', 730, 0, '13.00', '0.00', '13.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:18:09', '2022-10-31 00:00:00', 1, 1, 30, 1, 1),
(741, 'IMOI 15mg', '', 206, 238, '', '159837055318', 731, 0, '39.30', '0.00', '39.30', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:20:56', '2021-07-31 00:00:00', 1, 1, 30, 1, 1),
(742, 'Troken 75mg', '', 215, 92, '', '159837065664', 732, 0, '21.03', '0.00', '21.03', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:27:10', '2021-11-30 00:00:00', 1, 1, 28, 1, 1),
(743, 'Deslorat 5mg', '', 221, 199, '', '159837103100', 733, 0, '32.70', '0.00', '32.70', 1, 0, 1, '0.00', '0.00', '2020-08-25 09:29:55', '2021-02-28 00:00:00', 1, 1, 20, 1, 1),
(744, 'Montpellier T4 100mcg', '', 228, 239, '', '159837126061', 734, 0, '10.94', '0.00', '10.94', 1, 0, 1, '0.00', '0.00', '2020-08-27 11:58:50', '2020-08-27 11:58:50', 1, 1, 150, 1, 1),
(745, 'Montpellier T4 50mcg', '', 228, 239, '', '159837137298', 735, 0, '6.44', '0.00', '6.44', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:13:49', '2020-08-27 21:13:49', 1, 1, 90, 1, 1),
(746, 'Bigmet 500mg', '', 207, 103, '', '159837141566', 736, 0, '4.00', '0.00', '4.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:35:06', '2022-01-31 00:00:00', 1, 1, 100, 1, 1),
(747, 'Bigmet 850mg', '', 207, 103, '', '159837150616', 737, 0, '8.00', '0.00', '8.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:35:40', '2021-10-31 00:00:00', 1, 1, 100, 1, 1),
(748, 'Icon 100mg', '', 199, 194, '', '159837154055', 738, 0, '68.60', '0.00', '68.60', 1, 0, 1, '0.00', '0.00', '2020-08-27 16:10:35', '2020-08-27 16:10:35', 1, 1, 30, 1, 1),
(749, 'Fusac Cream', '', 208, 185, '', '159837164732', 739, 0, '278.16', '0.00', '278.16', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:38:20', '2023-02-28 00:00:00', 1, 1, 1, 1, 1),
(750, 'Natasan Eyedrop', '', 227, 0, '', '159837170100', 740, 0, '693.60', '0.00', '693.60', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:39:10', '2021-10-31 00:00:00', 1, 1, 1, 1, 1),
(751, 'Santodex Eyedrop', '', 227, 0, '', '159837175045', 741, 0, '460.10', '0.00', '460.10', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:39:58', '2021-12-31 00:00:00', 1, 1, 1, 1, 1);
INSERT INTO `product` (`product_id`, `product_name`, `product_desc`, `product_cat_id`, `product_brand_id`, `product_model_no`, `product_code_no`, `img_id`, `supplier_id`, `buying_price`, `expenses`, `selling_price`, `availability`, `tax_id`, `offer_type_id`, `offer_value`, `discounted`, `product_added_date`, `product_exp_date`, `user_id`, `product_condition_id`, `qty`, `branch_id`, `flag`) VALUES
(752, 'Betalol Eyedrop', '', 227, 0, '', '159837179874', 742, 0, '300.41', '0.00', '300.41', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:41:03', '2021-11-30 00:00:00', 1, 1, 1, 1, 1),
(753, 'Tropic Eyedrop', '', 227, 0, '', '159837186331', 743, 0, '300.41', '0.00', '300.41', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:41:43', '2021-12-31 00:00:00', 1, 1, 1, 1, 1),
(754, 'Co-dorzal Eyedrop', '', 227, 0, '', '159837190319', 744, 0, '1435.03', '0.00', '1435.03', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:42:26', '2022-02-28 00:00:00', 1, 1, 1, 1, 1),
(755, 'Optiflur Eyedrop', '', 227, 0, '', '159837194660', 745, 0, '370.88', '0.00', '370.88', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:43:05', '2022-11-30 00:00:00', 1, 1, 1, 1, 1),
(756, 'Optopred Eyedrop', '', 227, 0, '', '159837198545', 746, 0, '370.88', '0.00', '370.88', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:43:39', '2022-03-31 00:00:00', 1, 1, 1, 1, 1),
(757, 'Ketrosan Eyedrop', '', 227, 0, '', '159837201918', 747, 0, '460.10', '0.00', '460.10', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:44:18', '2021-12-31 00:00:00', 1, 1, 1, 1, 1),
(758, 'Fusigel Eyedrop', '', 227, 0, '', '159837205873', 748, 0, '519.23', '0.00', '519.23', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:44:58', '2021-12-31 00:00:00', 1, 1, 1, 1, 1),
(759, 'Megamox Eyedrop', '', 227, 0, '', '159837209874', 749, 0, '556.32', '0.00', '556.32', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:45:27', '2021-10-31 00:00:00', 1, 1, 2, 1, 1),
(760, 'Xepat Forte Eyedrop', '', 227, 0, '', '159837212773', 750, 0, '671.29', '0.00', '671.29', 1, 0, 1, '0.00', '0.00', '2020-08-25 09:46:49', '2022-02-28 00:00:00', 1, 1, 1, 1, 1),
(761, 'Hylosan Xepat Eyedrop', '', 227, 0, '', '159837216865', 751, 0, '389.42', '0.00', '389.42', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:47:52', '2021-10-31 00:00:00', 1, 1, 1, 1, 1),
(762, 'Germacid Cream', '', 208, 185, '', '159837227263', 752, 0, '296.70', '0.00', '296.70', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:48:48', '2023-02-28 00:00:00', 1, 1, 1, 1, 1),
(763, 'Germacort Cream', '', 208, 185, '', '159837232830', 753, 0, '296.70', '0.00', '296.70', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:49:38', '2022-11-30 00:00:00', 1, 1, 1, 1, 1),
(764, 'Gaviscon double action 300ml', '', 202, 0, '', '159837237860', 754, 0, '530.00', '0.00', '530.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 10:19:46', '2020-08-27 10:19:46', 1, 1, 0, 1, 1),
(765, 'Gaviscon Liquid 200ml', '', 202, 0, '', '159837245390', 755, 0, '325.00', '0.00', '325.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 21:51:43', '2022-03-31 00:00:00', 1, 1, 3, 1, 1),
(766, 'Omicap 20mg', '', 202, 88, '', '159837250332', 756, 0, '5.41', '0.00', '5.41', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:17:46', '2022-10-31 00:00:00', 1, 1, 100, 1, 1),
(767, 'Ecosprin 150mg', '', 215, 102, '', '159837406615', 757, 0, '7.16', '0.00', '7.16', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:19:04', '2022-03-31 00:00:00', 1, 1, 100, 1, 1),
(768, 'Ecosprin 75mg', '', 215, 102, '', '159837414453', 758, 0, '3.60', '0.00', '3.60', 1, 0, 1, '0.00', '0.00', '2020-08-27 11:11:40', '2020-08-27 11:11:40', 1, 1, 270, 1, 1),
(769, 'Simvas 10mg', '', 210, 240, '', '159837437625', 759, 0, '22.43', '0.00', '22.43', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:23:49', '2023-05-31 00:00:00', 1, 1, 100, 1, 1),
(770, 'Simvas 20mg', '', 210, 240, '', '159837442922', 760, 0, '38.63', '0.00', '38.63', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:24:37', '2022-08-31 00:00:00', 1, 1, 100, 1, 1),
(771, 'Turbovas 5mg', '', 210, 97, '', '159837447761', 761, 0, '24.12', '0.00', '24.12', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:25:24', '2022-06-30 00:00:00', 1, 1, 100, 1, 1),
(772, 'Turbovas 10mg', '', 210, 97, '', '159837452421', 762, 0, '44.44', '0.00', '44.44', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:26:01', '2022-07-31 00:00:00', 1, 1, 100, 1, 1),
(773, 'Angizaar 50mg', '', 211, 89, '', '159837456157', 763, 0, '12.38', '0.00', '12.38', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:27:46', '2022-11-30 00:00:00', 1, 1, 100, 1, 1),
(774, 'Diabose 50mg', '', 207, 223, '', '159837466606', 764, 0, '28.44', '0.00', '28.44', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:28:53', '2022-11-30 00:00:00', 1, 1, 100, 1, 1),
(775, 'Dothip 25mg', '', 201, 241, '', '159837473404', 765, 0, '9.95', '0.00', '9.95', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:30:33', '2023-02-28 00:00:00', 1, 1, 100, 1, 1),
(776, 'Zotral 50mg', '', 201, 130, '', '159837483326', 766, 0, '30.36', '0.00', '30.36', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:31:47', '2023-04-30 00:00:00', 1, 1, 100, 1, 1),
(777, 'Dianorm 80mg', '', 207, 101, '', '159837490782', 767, 0, '12.67', '0.00', '12.67', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:33:10', '2023-11-30 00:00:00', 1, 1, 100, 1, 1),
(778, 'Aziderm Cream', '', 208, 0, '', '159837499019', 768, 0, '366.00', '0.00', '366.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:34:10', '2022-12-31 00:00:00', 1, 1, 1, 1, 1),
(779, 'Betagel-G', '', 213, 0, '', '159837505046', 769, 0, '309.10', '0.00', '309.10', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:59:01', '2020-08-27 21:59:01', 1, 1, 0, 1, 1),
(780, 'Steriderm-S Cream', '', 208, 0, '', '159837510806', 770, 0, '374.00', '0.00', '374.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:36:27', '2022-07-31 00:00:00', 1, 1, 1, 1, 1),
(781, 'Olamin Cream', '', 208, 0, '', '159837518721', 771, 0, '465.00', '0.00', '465.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:37:58', '2022-11-30 00:00:00', 1, 1, 1, 1, 1),
(782, 'Mupirax Ointment', '', 214, 0, '', '159837527871', 772, 0, '392.00', '0.00', '392.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:39:12', '2021-12-31 00:00:00', 1, 1, 2, 1, 1),
(783, 'Herperax Ointment', '', 214, 146, '', '159837536842', 773, 0, '563.00', '0.00', '563.00', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:40:44', '2023-01-31 00:00:00', 1, 1, 3, 1, 1),
(784, 'Nevox XR 500mg', '', 207, 103, '', '159837544495', 774, 0, '9.23', '0.00', '9.23', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:42:42', '2023-01-31 00:00:00', 1, 1, 150, 1, 1),
(785, 'Montiget 4mg', '', 212, 197, '', '159837556282', 775, 0, '13.72', '0.00', '13.72', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:44:48', '2021-08-31 00:00:00', 1, 1, 70, 1, 1),
(786, 'Montiget 5mg', '', 212, 197, '', '159837568855', 776, 0, '17.15', '0.00', '17.15', 1, 0, 1, '0.00', '0.00', '2020-08-25 22:45:37', '2021-11-30 00:00:00', 1, 1, 42, 1, 1),
(787, 'Divoltar 50mg', '', 206, 87, '', '159846037365', 777, 0, '15.62', '0.00', '15.62', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:22:02', '2023-09-30 00:00:00', 1, 1, 50, 1, 1),
(788, 'Fexet 50mg', '', 221, 119, '', '159846072285', 778, 0, '13.50', '0.00', '13.50', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:23:00', '2022-12-31 00:00:00', 1, 1, 20, 1, 1),
(789, 'Fexet 120mg', '', 221, 119, '', '159846078101', 779, 0, '19.25', '0.00', '19.25', 1, 0, 1, '0.00', '0.00', '2020-08-27 18:45:17', '2020-08-27 18:45:17', 1, 1, 50, 1, 1),
(790, 'Fexet 30mg', '', 221, 119, '', '159846082587', 780, 0, '8.00', '0.00', '8.00', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:24:28', '2023-01-31 00:00:00', 1, 1, 20, 1, 1),
(791, 'Leflox 250mg', '', 198, 242, '', '159846093898', 781, 0, '29.05', '0.00', '29.05', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:26:20', '2024-09-30 00:00:00', 1, 1, 20, 1, 1),
(792, 'Leflox 500mg', '', 198, 242, '', '159846098030', 782, 0, '48.05', '0.00', '48.05', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:27:13', '2024-12-31 00:00:00', 1, 1, 30, 1, 1),
(793, 'Fexet 180mg', '', 221, 119, '', '159846103341', 783, 0, '28.03', '0.00', '28.03', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:28:25', '2023-01-31 00:00:00', 1, 1, 60, 1, 1),
(794, 'Claritek 500mg', '', 198, 116, '', '159846110549', 784, 0, '88.85', '0.00', '88.85', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:30:36', '2022-10-31 00:00:00', 1, 1, 20, 1, 1),
(795, 'Claritek 250mg', '', 198, 116, '', '159846123694', 785, 0, '43.85', '0.00', '43.85', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:31:42', '2022-09-30 00:00:00', 1, 1, 20, 1, 1),
(796, 'Getryl 1mg', '', 207, 184, '', '159846130304', 786, 0, '8.18', '0.00', '8.18', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:32:51', '2023-01-31 00:00:00', 1, 1, 40, 1, 1),
(797, 'Getryl 3mg', '', 207, 184, '', '159846137203', 787, 0, '19.45', '0.00', '19.45', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:42:31', '2022-12-31 00:00:00', 1, 1, 40, 1, 1),
(798, 'Gabica 75mg', '', 201, 243, '', '159846200122', 788, 0, '17.73', '0.00', '17.73', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:44:26', '2022-02-28 00:00:00', 1, 1, 35, 1, 1),
(799, 'Gabica 50mg', '', 201, 243, '', '159846206625', 789, 0, '14.00', '0.00', '14.00', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:45:43', '2022-01-31 00:00:00', 1, 1, 35, 1, 1),
(800, 'Claritek Suspension 125mg', '', 225, 116, '', '159846214375', 790, 0, '499.00', '0.00', '499.00', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:46:59', '2021-09-30 00:00:00', 1, 1, 2, 1, 1),
(801, 'Hexilon 16mg', '', 212, 244, '', '159846225521', 791, 0, '37.13', '0.00', '37.13', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:48:51', '2021-10-31 00:00:00', 1, 1, 30, 1, 1),
(802, 'Hexilon 4mg', '', 212, 244, '', '159846233136', 792, 0, '14.22', '0.00', '14.22', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:50:26', '2021-09-30 00:00:00', 1, 1, 50, 1, 1),
(803, 'Dometic 10mg', '', 202, 178, '', '159846242631', 793, 0, '6.50', '0.00', '6.50', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:51:47', '2022-12-31 00:00:00', 1, 1, 50, 1, 1),
(804, 'Diaflam 50mg', '', 206, 87, '', '159846250781', 794, 0, '13.16', '0.00', '13.16', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:53:19', '2022-08-31 00:00:00', 1, 1, 50, 1, 1),
(805, 'Kaltrofen Gel', '', 213, 196, '', '159846259974', 795, 0, '424.50', '0.00', '424.50', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:54:10', '2021-10-31 00:00:00', 1, 1, 1, 1, 1),
(806, 'Montiget 4mg Pediatric Sachets', '', 212, 197, '', '159846265051', 796, 0, '29.50', '0.00', '29.50', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:56:02', '2021-09-30 00:00:00', 1, 1, 14, 1, 1),
(807, 'Albiotin Acne Solution', '', 241, 197, '', '159846276284', 797, 0, '880.00', '0.00', '880.00', 1, 0, 1, '0.00', '0.00', '2020-08-26 22:57:03', '2021-09-30 00:00:00', 1, 1, 1, 1, 1),
(808, 'Osiben 400mg', '', 246, 245, '', '159846287011', 798, 0, '35.00', '0.00', '35.00', 1, 0, 1, '0.00', '0.00', '2020-08-26 11:01:22', '2022-06-30 00:00:00', 1, 1, 40, 1, 1),
(809, 'Arkocapil', '', 204, 180, '', '159846407534', 799, 0, '40.17', '0.00', '40.17', 1, 0, 1, '0.00', '0.00', '2020-08-26 23:20:10', '2024-03-31 00:00:00', 1, 1, 60, 1, 1),
(810, 'Rocaltrol 0.25mcg', '', 204, 180, '', '159846421096', 800, 0, '88.10', '0.00', '88.10', 1, 0, 1, '0.00', '0.00', '2020-08-26 23:22:18', '2022-08-31 00:00:00', 1, 1, 100, 1, 1),
(811, 'Lipicard 200mg', '', 210, 174, '', '159846433849', 801, 0, '35.46', '0.00', '35.46', 1, 0, 1, '0.00', '0.00', '2020-08-27 09:32:58', '2020-08-27 09:32:58', 1, 1, 28, 1, 1),
(812, 'Telday 40mg', '', 211, 181, '', '159846451008', 802, 0, '19.46', '0.00', '19.46', 1, 0, 1, '0.00', '0.00', '2020-08-27 09:17:31', '2022-02-28 00:00:00', 1, 1, 300, 1, 1),
(813, 'Azee 500mg', '', 198, 117, '', '159846460196', 803, 0, '63.33', '0.00', '63.33', 1, 0, 1, '0.00', '0.00', '2020-08-26 23:27:45', '2021-09-30 00:00:00', 1, 1, 30, 1, 1),
(814, 'Glitrol CR 30mg', '', 207, 101, '', '159846466565', 804, 0, '11.13', '0.00', '11.13', 1, 0, 1, '0.00', '0.00', '2020-08-26 23:29:06', '2022-01-31 00:00:00', 1, 1, 100, 1, 1),
(815, 'Flexsa 750 Osteo Arthritis', '', 245, 0, '', '159846474623', 805, 0, '50.00', '0.00', '50.00', 1, 0, 1, '0.00', '0.00', '2020-08-26 23:30:48', '2022-09-30 00:00:00', 1, 1, 30, 1, 1),
(816, 'Novofine 31G 6mm Insulin needle', '', 217, 0, '', '159846484874', 806, 0, '23.50', '0.00', '23.50', 1, 0, 1, '0.00', '0.00', '2020-08-26 23:34:07', '2024-08-31 00:00:00', 1, 1, 100, 1, 1),
(817, 'Sustagen Vanila', '', 234, 0, '', '159846504735', 807, 0, '1930.00', '0.00', '1930.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 19:03:02', '2020-08-27 19:03:02', 1, 1, 0, 1, 1),
(818, 'Sustagen Chocolate', '', 234, 0, '', '159846509566', 808, 0, '1930.00', '0.00', '1930.00', 1, 0, 1, '0.00', '0.00', '2020-08-26 23:35:47', '2023-03-04 00:00:00', 1, 1, 1, 1, 1),
(819, 'Enfagrow A+ Stage3', '', 234, 0, '', '159846514785', 809, 0, '1580.00', '0.00', '1580.00', 1, 0, 1, '0.00', '0.00', '2020-08-26 23:37:23', '2022-02-05 00:00:00', 1, 1, 1, 1, 1),
(820, 'Enfagrow A+ Stage4', '', 234, 0, '', '159846524366', 810, 0, '1530.00', '0.00', '1530.00', 1, 0, 1, '0.00', '0.00', '2020-08-26 23:37:53', '2021-11-05 00:00:00', 1, 1, 1, 1, 1),
(821, 'Enfamil A+ Stage2', '', 234, 0, '', '159846527384', 811, 0, '1460.00', '0.00', '1460.00', 1, 0, 1, '0.00', '0.00', '2020-08-26 23:38:25', '2021-11-04 00:00:00', 1, 1, 1, 1, 1),
(822, 'Enfamil A+ Stage1', '', 234, 0, '', '159846530579', 812, 0, '1510.00', '0.00', '1510.00', 1, 0, 1, '0.00', '0.00', '2020-08-26 23:39:11', '2021-03-20 00:00:00', 1, 1, 1, 1, 1),
(823, 'Orslim 120mg', '', 210, 0, '', '159846535120', 813, 0, '80.00', '0.00', '80.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 09:53:25', '2020-08-27 09:53:25', 1, 1, 0, 1, 1),
(824, 'Tegretol 200mg', '', 201, 161, '', '159846542079', 814, 0, '14.42', '0.00', '14.42', 1, 0, 1, '0.00', '0.00', '2020-08-26 23:42:25', '2021-12-31 00:00:00', 1, 1, 50, 1, 1),
(825, 'Cataflam 50mg', '', 206, 87, '', '159846554542', 815, 0, '13.15', '0.00', '13.15', 1, 0, 1, '0.00', '0.00', '2020-08-26 23:43:36', '2023-01-31 00:00:00', 1, 1, 100, 1, 1),
(826, 'Norgest 5mg', '', 228, 99, '', '159846561654', 816, 0, '13.00', '0.00', '13.00', 1, 0, 1, '0.00', '0.00', '2020-08-26 11:56:43', '2022-12-31 00:00:00', 1, 1, 100, 1, 1),
(827, 'Topirol 50mg', '', 201, 128, '', '159846626905', 817, 0, '36.61', '0.00', '36.61', 1, 0, 1, '0.00', '0.00', '2020-08-26 23:56:14', '0000-00-00 00:00:00', 1, 1, 30, 1, 1),
(828, 'Lioresal 10mg', '', 206, 112, '', '159846663556', 818, 0, '89.50', '0.00', '89.50', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:01:39', '2022-10-31 00:00:00', 1, 1, 50, 1, 1),
(829, 'Duphaston 10mg', '', 228, 248, '', '159846669918', 819, 0, '145.05', '0.00', '145.05', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:03:33', '2024-08-31 00:00:00', 1, 1, 20, 1, 1),
(830, 'Sandomigran 0.5mg', '', 206, 246, '', '159846681400', 820, 0, '64.00', '0.00', '64.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 12:06:27', '2022-10-31 00:00:00', 1, 1, 30, 1, 1),
(831, 'Lexotanil 1.5mg', '', 201, 250, '', '159846686654', 821, 0, '40.00', '0.00', '40.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:05:53', '2025-01-31 00:00:00', 1, 1, 30, 1, 1),
(832, 'Cartisafe forte MSM', '', 204, 180, '', '159846705052', 822, 0, '44.20', '0.00', '44.20', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:08:27', '2022-01-31 00:00:00', 1, 1, 30, 1, 1),
(833, 'Ritalin 10mg', '', 201, 249, '', '159846710774', 823, 0, '66.03', '0.00', '66.03', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:09:26', '2022-03-31 00:00:00', 1, 1, 30, 1, 1),
(834, 'Travatan 40mcg Eyedrop', '', 227, 249, '', '159846716660', 823, 0, '1995.00', '0.00', '1995.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 12:12:16', '2023-03-31 00:00:00', 1, 1, 3, 1, 1),
(835, 'Rivotril 2mg', '', 201, 114, '', '159846730582', 824, 0, '53.62', '0.00', '53.62', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:13:39', '2025-01-31 00:00:00', 1, 1, 30, 1, 1),
(836, 'Rivotril 0.5mg', '', 201, 114, '', '159846741931', 825, 0, '24.77', '0.00', '24.77', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:14:37', '2025-05-31 00:00:00', 1, 1, 50, 1, 1),
(837, 'Sofinox Cream', '', 208, 185, '', '159846747787', 826, 0, '772.02', '0.00', '772.02', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:15:48', '2022-08-31 00:00:00', 1, 1, 2, 1, 1),
(838, 'Tobradex eye Suspension', '', 225, 185, '', '159846754879', 827, 0, '598.00', '0.00', '598.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:17:34', '2022-09-30 00:00:00', 1, 1, 2, 1, 1),
(839, 'Tobradex Eye  Ointment', '', 214, 185, '', '159846765430', 828, 0, '598.00', '0.00', '598.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:18:40', '2022-02-28 00:00:00', 1, 1, 1, 1, 1),
(840, 'Azopt Eyedrop', '', 227, 0, '', '159846772034', 829, 0, '1345.00', '0.00', '1345.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:20:09', '2021-10-31 00:00:00', 1, 1, 2, 1, 1),
(841, 'Systane Ultra Eyedrop', '', 227, 0, '', '159846780916', 830, 0, '790.00', '0.00', '790.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:20:55', '2021-06-30 00:00:00', 1, 1, 1, 1, 1),
(842, 'Dimaat', '', 227, 0, '', '159846785542', 831, 0, '1287.12', '0.00', '1287.12', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:21:43', '2022-05-31 00:00:00', 1, 1, 1, 1, 1),
(843, 'Apdrops Eyedrop', '', 227, 0, '', '159846790355', 832, 0, '623.68', '0.00', '623.68', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:22:27', '2022-08-31 00:00:00', 1, 1, 1, 1, 1),
(844, 'Softdrops', '', 227, 0, '', '159846794792', 833, 0, '514.01', '0.00', '514.01', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:23:06', '2021-10-31 00:00:00', 1, 1, 2, 1, 1),
(845, 'Vigamox Eyedrop', '', 227, 0, '', '159846798634', 834, 0, '884.00', '0.00', '884.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:23:44', '2021-10-31 00:00:00', 1, 1, 1, 1, 1),
(846, 'Tears Naturale II', '', 227, 0, '', '159846802435', 835, 0, '490.00', '0.00', '490.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 10:19:45', '2020-08-27 10:19:45', 1, 1, 0, 1, 1),
(847, 'Cosopt', '', 227, 0, '', '159846807145', 836, 0, '1920.00', '0.00', '1920.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:25:12', '2021-01-31 00:00:00', 1, 1, 1, 1, 1),
(848, 'Olopat Eyedrop', '', 227, 0, '', '159846811234', 837, 0, '685.35', '0.00', '685.35', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:26:06', '2021-12-31 00:00:00', 1, 1, 3, 1, 1),
(849, 'Azarga Eyedrop', '', 227, 0, '', '159846816656', 838, 0, '2300.00', '0.00', '2300.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:26:49', '0000-00-00 00:00:00', 1, 1, 3, 1, 1),
(850, 'Timoptol Eyedrop', '', 227, 0, '', '159846820995', 839, 0, '526.96', '0.00', '526.96', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:27:52', '2021-10-31 00:00:00', 1, 1, 1, 1, 1),
(851, 'Nevanac Eyedrop', '', 227, 0, '', '159846827280', 840, 0, '710.00', '0.00', '710.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:28:39', '2021-07-31 00:00:00', 1, 1, 1, 1, 1),
(852, 'Simbrinza Eyedrop', '', 227, 0, '', '159846831957', 841, 0, '2395.00', '0.00', '2395.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:29:28', '2022-01-31 00:00:00', 1, 1, 1, 1, 1),
(853, 'Duotrav Eyedrop', '', 227, 0, '', '159846836893', 842, 0, '2345.00', '0.00', '2345.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:30:24', '2022-01-31 00:00:00', 1, 1, 1, 1, 1),
(854, 'Postinor 2', '', 228, 251, '', '159846851951', 843, 0, '140.00', '0.00', '140.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:33:05', '2024-09-30 00:00:00', 1, 1, 30, 1, 1),
(855, 'Postinor 1', '', 228, 251, '', '159846858530', 844, 0, '180.00', '0.00', '180.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:34:09', '2025-01-31 00:00:00', 1, 1, 12, 1, 1),
(856, 'Xon-Ce 500mg', '', 204, 180, '', '159846864981', 845, 0, '15.00', '0.00', '15.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 20:37:00', '2020-08-27 20:37:00', 1, 1, 16, 1, 1),
(857, 'Silagra 50mg', '', 228, 252, '', '159846874669', 846, 0, '30.25', '0.00', '30.25', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:37:40', '2023-01-31 00:00:00', 1, 1, 40, 1, 1),
(858, 'Osigra 100', '', 228, 252, '', '159846886098', 847, 0, '50.00', '0.00', '50.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:39:01', '2022-07-31 00:00:00', 1, 1, 36, 1, 1),
(859, 'Stamina Condoms', '', 217, 0, '', '159846894175', 848, 0, '100.00', '0.00', '100.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:40:57', '2023-01-31 00:00:00', 1, 1, 24, 1, 1),
(860, 'Preethi Super Condoms', '', 217, 0, '', '159846905766', 849, 0, '50.00', '0.00', '50.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:42:19', '2024-10-31 00:00:00', 1, 1, 144, 1, 1),
(861, 'Jeevanee ORS', '', 202, 0, '', '159846913934', 850, 0, '25.00', '0.00', '25.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 10:19:46', '2020-08-27 10:19:46', 1, 1, 15, 1, 1),
(862, 'Seven Seas Cod liver oil', '', 204, 180, '', '159846921539', 851, 0, '1948.00', '0.00', '1948.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 00:44:52', '2021-08-31 00:00:00', 1, 1, 1, 1, 1),
(863, 'Chewette 100mg', '', 204, 180, '', '159846929293', 852, 0, '6.45', '0.00', '6.45', 1, 0, 1, '0.00', '0.00', '2020-08-27 19:35:30', '2020-08-27 19:35:30', 1, 1, 370, 1, 1),
(864, 'Strepsils', '', 0, 0, '', '159846944967', 853, 0, '10.00', '0.00', '10.00', 1, 0, 1, '0.00', '0.00', '2020-09-13 12:09:52', '2020-08-28 00:00:00', 1, 1, 344, 1, 1),
(865, 'Eno', '', 202, 0, '', '159853328556', 854, 0, '30.00', '0.00', '30.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 18:33:09', '2022-04-30 00:00:00', 1, 1, 30, 1, 1),
(866, 'Eno Fruit Salt', '', 202, 0, '', '159853338945', 855, 0, '35.00', '0.00', '35.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 18:34:34', '2022-07-30 00:00:00', 1, 1, 30, 1, 1),
(867, 'Voltaren Emulgel 20g', '', 213, 0, '', '159853347488', 856, 0, '359.70', '0.00', '359.70', 1, 0, 1, '0.00', '0.00', '2020-08-27 18:36:08', '2022-09-30 00:00:00', 1, 1, 1, 1, 1),
(868, 'Voltaren Emulgel 50g', '', 213, 0, '', '159853356817', 857, 0, '680.20', '0.00', '680.20', 1, 0, 1, '0.00', '0.00', '2020-08-27 18:37:38', '2021-07-31 00:00:00', 1, 1, 1, 1, 1),
(869, 'Corsodyl 200ml', '', 229, 0, '', '159853391407', 858, 0, '320.00', '0.00', '320.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 18:42:50', '2021-11-30 00:00:00', 1, 1, 2, 1, 1),
(870, 'Panadol', '', 206, 0, '', '159854194111', 859, 0, '1.57', '0.00', '1.57', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:20:22', '2020-08-27 21:20:22', 1, 1, 564, 1, 1),
(871, 'Cough Syrup', '', 218, 0, '', '159854210139', 860, 0, '430.00', '0.00', '430.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 20:59:32', '2022-05-22 00:00:00', 1, 1, 4, 1, 1),
(872, 'Cloxil 500mg', '', 198, 191, '', '159854217229', 861, 0, '21.00', '0.00', '21.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:00:55', '2022-02-03 00:00:00', 1, 1, 100, 1, 1),
(873, 'Pyrantin 125mg', '', 246, 253, '', '159854250493', 862, 0, '9.00', '0.00', '9.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:06:07', '2022-07-18 00:00:00', 1, 1, 100, 1, 1),
(874, 'Pyrantin Suspension', '', 225, 253, '', '159854256762', 863, 0, '210.00', '0.00', '210.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 09:28:17', '2022-07-18 00:00:00', 1, 1, 11, 1, 1),
(875, 'Telday 80mg', '', 211, 181, '', '159854316674', 866, 0, '36.52', '0.00', '36.52', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:16:59', '2022-02-28 00:00:00', 1, 1, 100, 1, 1),
(876, 'Lorvas SR 1.5mg', '', 211, 182, '', '159854321972', 867, 0, '24.70', '0.00', '24.70', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:22:29', '2023-02-28 00:00:00', 1, 1, 60, 1, 1),
(877, 'Polymycin ointment', '', 214, 0, '', '159854354927', 868, 0, '180.00', '0.00', '180.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 09:28:48', '2022-07-30 00:00:00', 1, 1, 11, 1, 1),
(878, 'Ovron ', '', 204, 180, '', '159854364228', 869, 0, '13.00', '0.00', '13.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:25:21', '2022-07-22 00:00:00', 1, 1, 90, 1, 1),
(879, 'Rapidene 500mg', '', 206, 0, '', '159854372198', 870, 0, '8.00', '0.00', '8.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:26:29', '2022-07-24 00:00:00', 1, 1, 480, 1, 1),
(880, 'Bezinc', '', 204, 180, '', '159854378980', 871, 0, '10.00', '0.00', '10.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:27:42', '2022-06-09 00:00:00', 1, 1, 100, 1, 1),
(881, 'Oraleez Mouth Sores', '', 206, 0, '', '159854394735', 872, 0, '210.00', '0.00', '210.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:32:16', '2022-02-04 00:00:00', 1, 1, 3, 1, 1),
(882, 'Tretin- A Cream', '', 208, 0, '', '159854413674', 873, 0, '360.00', '0.00', '360.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:34:23', '2022-06-22 00:00:00', 1, 1, 1, 1, 1),
(883, 'Astrocort  0.5% Cream', '', 208, 0, '', '159854426351', 874, 0, '180.00', '0.00', '180.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 09:36:52', '2022-06-18 00:00:00', 1, 1, 2, 1, 1),
(884, 'Astrocort  1% Cream', '', 208, 0, '', '159854442198', 875, 0, '215.00', '0.00', '215.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:38:33', '2022-07-02 00:00:00', 1, 1, 2, 1, 1),
(885, 'Fusid Cream', '', 208, 0, '', '159854451310', 876, 0, '400.00', '0.00', '400.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:40:11', '2022-08-12 00:00:00', 1, 1, 3, 1, 1),
(886, 'Pirogel 0.5% Gel', '', 213, 0, '', '159854461175', 877, 0, '180.00', '0.00', '180.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:41:11', '2021-11-07 00:00:00', 1, 1, 1, 1, 1),
(887, 'Framcin Cream', '', 208, 0, '', '159854467129', 878, 0, '110.00', '0.00', '110.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:42:33', '2022-07-13 00:00:00', 1, 1, 3, 1, 1),
(888, 'Durol Adults 200ml', '', 204, 180, '', '159854475338', 879, 0, '320.00', '0.00', '320.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:44:56', '2022-08-04 00:00:00', 1, 1, 1, 1, 1),
(889, 'Durol Adults 100ml', '', 204, 180, '', '159854489665', 880, 0, '180.00', '0.00', '180.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 21:45:26', '2022-07-02 00:00:00', 1, 1, 1, 1, 1),
(890, 'Rapisol 120mg Syrup Children', '', 218, 0, '', '159854620930', 883, 0, '190.00', '0.00', '190.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 22:08:28', '2022-05-14 00:00:00', 1, 1, 2, 1, 1),
(891, 'pregnacare', '', 204, 180, '', '159854630832', 884, 0, '22.00', '0.00', '22.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 22:09:57', '2021-09-17 00:00:00', 1, 1, 20, 1, 1),
(892, 'Dumasules', '', 204, 180, '', '159854639805', 885, 0, '14.00', '0.00', '14.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 22:10:51', '2022-03-27 00:00:00', 1, 1, 100, 1, 1),
(893, 'minterra', '', 204, 180, '', '159854645169', 886, 0, '22.00', '0.00', '22.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 22:11:39', '2022-07-21 00:00:00', 1, 1, 30, 1, 1),
(894, 'Peditral Liquid', '', 243, 0, '', '159854649973', 887, 0, '263.00', '0.00', '263.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 22:13:14', '2021-12-31 00:00:00', 1, 1, 10, 1, 1),
(895, 'Peditral sachets', '', 243, 0, '', '159854659501', 888, 0, '58.00', '0.00', '58.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 22:14:15', '2022-01-31 00:00:00', 1, 1, 20, 1, 1),
(896, 'Panadol Syrup 100ml', '', 218, 0, '', '159854665533', 889, 0, '200.00', '0.00', '200.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 22:15:50', '2022-04-30 00:00:00', 1, 1, 6, 1, 1),
(897, 'Panadol Syrup 60ml', '', 218, 0, '', '159854675047', 890, 0, '130.00', '0.00', '130.00', 1, 0, 1, '0.00', '0.00', '2020-08-27 22:16:30', '2022-03-31 00:00:00', 1, 1, 6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_condition`
--

CREATE TABLE `product_condition` (
  `product_condition_id` int(11) NOT NULL,
  `product_condition_state` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_condition`
--

INSERT INTO `product_condition` (`product_condition_id`, `product_condition_state`) VALUES
(1, 'good'),
(2, 'fair'),
(3, 'damaged');

-- --------------------------------------------------------

--
-- Table structure for table `quantity`
--

CREATE TABLE `quantity` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `branch_location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `sale_details`
--

CREATE TABLE `sale_details` (
  `sale_details_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `item_count` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_price` decimal(10,2) DEFAULT NULL,
  `item_discounted_price` decimal(10,2) DEFAULT NULL,
  `alt_notes` varchar(255) DEFAULT NULL,
  `alt_profit` decimal(10,2) DEFAULT NULL,
  `alt_buy` decimal(10,2) DEFAULT NULL,
  `alt_branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sale_details`
--

INSERT INTO `sale_details` (`sale_details_id`, `product_id`, `item_count`, `item_name`, `item_price`, `item_discounted_price`, `alt_notes`, `alt_profit`, `alt_buy`, `alt_branch_id`) VALUES
(0, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, NULL, NULL),
(6, 277, 0, 'Cephadex 500mg-', '1.00', '0.00', 'undefined', '0.00', '0.00', 0),
(6, 702, 0, 'Metrogyl 400mg-', '2.00', '0.00', 'undefined', '0.00', '0.00', 0),
(6, 277, 0, 'Cephadex 500mg-', '2.00', '0.00', 'undefined', '0.00', '0.00', 0),
(6, 244, 0, 'Sporidex 250mg-', '4.00', '0.00', 'undefined', '0.00', '0.00', 0),
(6, 441, 0, 'Enhancin 625mg-', '2.00', '0.00', 'undefined', '0.00', '0.00', 0),
(6, 277, 0, 'Cephadex 500mg-', '1.00', '0.00', 'undefined', '0.00', '0.00', 0),
(6, 441, 0, 'Enhancin 625mg-', '2.00', '0.00', 'undefined', '0.00', '0.00', 0),
(6, 244, 0, 'Sporidex 250mg-', '2.00', '0.00', 'undefined', '0.00', '0.00', 0),
(6, 440, 0, 'Enhancin 375mg-', '2.00', '0.00', 'undefined', '0.00', '0.00', 0),
(1, 254, 14, 'Diamicron MR 60mg-', '36.93', '0.00', 'undefined', '0.00', '0.00', 0),
(2, 856, 2, 'Xon-Ce 500mg-', '15.00', '0.00', 'undefined', '0.00', '0.00', 0),
(3, 230, 10, 'Kalzana 500mg-', '15.41', '0.00', 'undefined', '0.00', '0.00', 0),
(4, 811, 28, 'Lipicard 200mg-', '35.46', '0.00', 'undefined', '0.00', '0.00', 0),
(5, 230, 6, 'Kalzana 500mg-', '15.41', '0.00', 'undefined', '0.00', '0.00', 0),
(6, 823, 30, 'Orslim 120mg-', '80.00', '0.00', 'undefined', '0.00', '0.00', 0),
(7, 703, 1, 'KetoPlus Shampoo-', '580.00', '0.00', 'undefined', '0.00', '0.00', 0),
(7, 846, 2, 'Tears Naturale II-', '490.00', '0.00', 'undefined', '0.00', '0.00', 0),
(7, 287, 1, 'Kool n Fresh-', '222.00', '0.00', 'undefined', '0.00', '0.00', 0),
(7, 207, 100, 'Atova 10mg-', '13.40', '0.00', 'undefined', '0.00', '0.00', 0),
(7, 648, 30, 'Optive UD Eyedrop-', '48.43', '0.00', 'undefined', '0.00', '0.00', 0),
(7, 678, 30, 'Librax 5mg-', '28.56', '0.00', 'undefined', '0.00', '0.00', 0),
(7, 856, 12, 'Xon-Ce 500mg-', '15.00', '0.00', 'undefined', '0.00', '0.00', 0),
(7, 655, 2, 'Salonpas Spray-', '1100.00', '0.00', 'undefined', '0.00', '0.00', 0),
(7, 861, 10, 'Jeevanee ORS-', '25.00', '0.00', 'undefined', '0.00', '0.00', 0),
(7, 764, 3, 'Gaviscon double action 300ml-', '530.00', '0.00', 'undefined', '0.00', '0.00', 0),
(8, 864, 12, 'Strepsils-', '10.00', '0.00', 'undefined', '0.00', '0.00', 0),
(8, 287, 1, 'Kool n Fresh-', '222.00', '0.00', 'undefined', '0.00', '0.00', 0),
(9, 864, 48, 'Strepsils-', '10.00', '0.00', 'undefined', '0.00', '0.00', 0),
(10, 534, 1, 'Enervon-C-', '1184.00', '0.00', 'undefined', '0.00', '0.00', 0),
(10, 768, 30, 'Ecosprin 75mg-', '3.60', '0.00', 'undefined', '0.00', '0.00', 0),
(10, 684, 50, 'Zaart 25mg-', '7.55', '0.00', 'undefined', '0.00', '0.00', 0),
(11, 856, 6, 'Xon-Ce 500mg-', '15.00', '0.00', 'undefined', '0.00', '0.00', 0),
(12, 462, 4, 'Dettol Antibacterial Plaster-', '8.00', '0.00', 'undefined', '0.00', '0.00', 0),
(13, 363, 10, 'Cetrizet 10mg-', '16.65', '0.00', 'undefined', '0.00', '0.00', 0),
(14, 430, 10, 'GLOW-', '80.00', '0.00', 'undefined', '0.00', '0.00', 0),
(15, 768, 30, 'Ecosprin 75mg-', '3.60', '0.00', 'undefined', '0.00', '0.00', 0),
(15, 540, 1, 'Multiplex Multi vitamin Syrup-', '444.00', '0.00', 'undefined', '0.00', '0.00', 0),
(16, 406, 90, 'Anemidox-', '14.34', '0.00', 'undefined', '0.00', '0.00', 0),
(17, 534, 1, 'Enervon-C-', '1184.00', '0.00', 'undefined', '0.00', '0.00', 0),
(17, 462, 10, 'Dettol Antibacterial Plaster-', '8.00', '0.00', 'undefined', '0.00', '0.00', 0),
(18, 557, 15, 'Telsart 40mg-', '19.46', '0.00', 'undefined', '0.00', '0.00', 0),
(19, 684, 100, 'Zaart 25mg-', '7.55', '0.00', 'undefined', '0.00', '0.00', 0),
(20, 321, 20, 'ENAT 400-', '45.00', '0.00', 'undefined', '0.00', '0.00', 0),
(21, 744, 100, 'Montpellier T4 100mcg-', '10.94', '0.00', 'undefined', '0.00', '0.00', 0),
(22, 396, 1, 'Diasure Diabetic Vanila 400g-', '2490.00', '0.00', 'undefined', '0.00', '0.00', 0),
(23, 290, 1, 'Becosules-', '12.00', '0.00', 'undefined', '0.00', '0.00', 0),
(24, 290, 1, 'Becosules-', '12.00', '0.00', 'undefined', '0.00', '0.00', 0),
(25, 312, 10, 'Meftal 500-', '12.00', '0.00', 'undefined', '0.00', '0.00', 0),
(26, 312, 2, 'Meftal 500-', '12.00', '0.00', 'undefined', '0.00', '0.00', 0),
(27, 404, 2, 'Betamil Cream-', '267.90', '0.00', 'undefined', '0.00', '0.00', 0),
(28, 229, 10, 'Kalzana-', '14.56', '0.00', 'undefined', '0.00', '0.00', 0),
(29, 700, 100, 'Nicardia retard 20mg-', '1.50', '0.00', 'undefined', '0.00', '0.00', 0),
(30, 375, 2, 'Fastum Gel 15g-', '385.00', '0.00', 'undefined', '0.00', '0.00', 0),
(31, 405, 1, 'Betamil M Cream-', '267.90', '0.00', 'undefined', '0.00', '0.00', 0),
(32, 856, 10, 'Xon-Ce 500mg-', '15.00', '0.00', 'undefined', '0.00', '0.00', 0),
(33, 426, 20, 'Glycomet 500mg-', '4.74', '0.00', 'undefined', '0.00', '0.00', 0),
(33, 863, 10, 'Chewette 100mg-', '6.45', '0.00', 'undefined', '0.00', '0.00', 0),
(34, 290, 50, 'Becosules-', '12.00', '0.00', 'undefined', '0.00', '0.00', 0),
(34, 863, 20, 'Chewette 100mg-', '6.45', '0.00', 'undefined', '0.00', '0.00', 0),
(34, 363, 10, 'Cetrizet 10mg-', '16.65', '0.00', 'undefined', '0.00', '0.00', 0),
(35, 748, 10, 'Icon 100mg-', '68.60', '0.00', 'undefined', '0.00', '0.00', 0),
(35, 464, 1, 'Candid V3 Vaginal-', '330.00', '0.00', 'undefined', '0.00', '0.00', 0),
(35, 308, 1, 'Candid Cream-', '230.00', '0.00', 'undefined', '0.00', '0.00', 0),
(36, 290, 60, 'Becosules-', '12.00', '0.00', 'undefined', '0.00', '0.00', 0),
(37, 728, 10, 'Amoxil 500mg-', '26.90', '0.00', 'undefined', '0.00', '0.00', 0),
(37, 863, 30, 'Chewette 100mg-', '6.45', '0.00', 'undefined', '0.00', '0.00', 0),
(38, 485, 30, 'Seven Seas Evening/ Primrose oil-', '73.68', '0.00', 'undefined', '0.00', '0.00', 0),
(39, 303, 1, 'Acnex-', '590.00', '0.00', 'undefined', '0.00', '0.00', 0),
(40, 589, 20, 'Diamicron 80mg-', '13.60', '0.00', 'undefined', '0.00', '0.00', 0),
(41, 658, 28, 'Plavix 75mg-', '21.00', '0.00', 'undefined', '0.00', '0.00', 0),
(42, 270, 30, 'Zabesta 5mg-', '20.67', '0.00', 'undefined', '0.00', '0.00', 0),
(43, 856, 10, 'Xon-Ce 500mg-', '15.00', '0.00', 'undefined', '0.00', '0.00', 0),
(44, 864, 4, 'Strepsils-', '10.00', '0.00', 'undefined', '0.00', '0.00', 0),
(45, 856, 20, 'Xon-Ce 500mg-', '15.00', '0.00', 'undefined', '0.00', '0.00', 0),
(46, 316, 10, 'Loridin 10mg-', '17.00', '0.00', 'undefined', '0.00', '0.00', 0),
(47, 526, 1, 'Peritol Syrup-', '170.00', '0.00', 'undefined', '0.00', '0.00', 0),
(47, 319, 10, 'TOCOSOFT-400-', '11.04', '0.00', 'undefined', '0.00', '0.00', 0),
(48, 188, 30, 'Pantodac 20mg-', '20.41', '0.00', 'undefined', '0.00', '0.00', 0),
(49, 661, 10, 'Allegra 180mg-', '30.30', '0.00', 'undefined', '0.00', '0.00', 0),
(50, 316, 10, 'Loridin 10mg-', '17.00', '0.00', 'undefined', '0.00', '0.00', 0),
(50, 789, 10, 'Fexet 120mg-', '19.25', '0.00', 'undefined', '0.00', '0.00', 0),
(51, 290, 30, 'Becosules-', '12.00', '0.00', 'undefined', '0.00', '0.00', 0),
(52, 208, 100, 'Atova 20mg-', '21.20', '0.00', 'undefined', '0.00', '0.00', 0),
(53, 670, 60, 'Amaryl 1mg-', '8.15', '0.00', 'undefined', '0.00', '0.00', 0),
(53, 671, 60, 'Amaryl 2mg-', '11.60', '0.00', 'undefined', '0.00', '0.00', 0),
(53, 348, 21, 'Sita 100mg-', '55.48', '0.00', 'undefined', '0.00', '0.00', 0),
(54, 817, 1, 'Sustagen Vanila-', '1930.00', '0.00', 'undefined', '0.00', '0.00', 0),
(55, 320, 10, 'Calcivita-', '13.22', '0.00', 'undefined', '0.00', '0.00', 0),
(56, 856, 6, 'Xon-Ce 500mg-', '15.00', '0.00', 'undefined', '0.00', '0.00', 0),
(57, 300, 20, 'CAD D 1000-', '23.60', '0.00', 'undefined', '0.00', '0.00', 0),
(57, 863, 20, 'Chewette 100mg-', '6.45', '0.00', 'undefined', '0.00', '0.00', 0),
(57, 400, 10, 'Concor 5mg-', '32.37', '0.00', 'undefined', '0.00', '0.00', 0),
(58, 468, 20, 'Microdox DT 100mg-', '25.78', '0.00', 'undefined', '0.00', '0.00', 0),
(58, 303, 1, 'Acnex-', '590.00', '0.00', 'undefined', '0.00', '0.00', 0),
(59, 226, 30, 'Clopact 75mg-', '21.00', '0.00', 'undefined', '0.00', '0.00', 0),
(60, 312, 10, 'Meftal 500-', '12.00', '0.00', 'undefined', '0.00', '0.00', 0),
(60, 856, 8, 'Xon-Ce 500mg-', '15.00', '0.00', 'undefined', '0.00', '0.00', 0),
(61, 375, 1, 'Fastum Gel 15g-', '385.00', '0.00', 'undefined', '0.00', '0.00', 0),
(61, 856, 10, 'Xon-Ce 500mg-', '15.00', '0.00', 'undefined', '0.00', '0.00', 0),
(62, 728, 24, 'Amoxil 500mg-', '26.90', '0.00', 'undefined', '0.00', '0.00', 0),
(63, 745, 10, 'Montpellier T4 50mcg-', '6.44', '0.00', 'undefined', '0.00', '0.00', 0),
(63, 460, 10, 'Rispond 1mg-', '9.50', '0.00', 'undefined', '0.00', '0.00', 0),
(64, 259, 10, 'Allermine-', '1.00', '0.00', 'undefined', '0.00', '0.00', 0),
(64, 870, 12, 'Panadol-', '1.57', '0.00', 'undefined', '0.00', '0.00', 0),
(65, 525, 50, 'FreeStyle Optium Strips-', '57.00', '0.00', 'undefined', '0.00', '0.00', 0),
(66, 259, 10, 'Allermine-', '1.00', '0.00', 'undefined', '0.00', '0.00', 0),
(67, 361, 10, 'Stanlip 160mg-', '36.00', '0.00', 'undefined', '0.00', '0.00', 0),
(68, 779, 1, 'Betagel-G-', '309.10', '0.00', 'undefined', '0.00', '0.00', 0),
(68, 602, 1, 'Onetouch Select 10 strips-', '535.00', '0.00', 'undefined', '0.00', '0.00', 0),
(69, 221, 30, 'Atorlip 10mg-', '6.37', '0.00', 'undefined', '0.00', '0.00', 0),
(70, 187, 10, 'Nexium 40mg-', '46.10', '0.00', 'undefined', '0.00', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(50) DEFAULT NULL,
  `supplier_contact_email` varchar(50) DEFAULT NULL,
  `supplier_phone_no` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_name`, `supplier_contact_email`, `supplier_phone_no`, `user_id`) VALUES
(0, ' ', ' ', NULL, NULL),
(16, 'Baurs', 'kml@baurs.com', 112612037, 1),
(17, 'DVS', '', 0, 1),
(18, 'Suwaya Chemist', '', 0, 0),
(19, 'Upul', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `tax_id` int(11) NOT NULL,
  `tax_rate` decimal(5,2) DEFAULT NULL,
  `tax_desc` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`tax_id`, `tax_rate`, `tax_desc`, `user_id`) VALUES
(0, '0.00', 'No tax', NULL),
(1, '1.50', 'basic tax', 1),
(2, '3.00', 'normal tax', 0),
(3, '15.00', 'VAT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone` decimal(10,0) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_level_id` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `first_name`, `last_name`, `phone`, `email`, `user_level_id`, `password`, `branch_id`) VALUES
(1, 'admin', 'MD CHEMISTS', '', '772348633', 'mddistributors@hotmail.com', 0, '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'DD', 'Diswa', 'Denetthi', '112519154', 'ddemfordi@gmail.com', 1, 'f1c1592588411002af340cbaedd6fc33', 1),
(3, 'KN', 'Kamal', 'Weerasinghe', '711407405', 'kamalwpaviva@gmail.com', 13, '81dc9bdb52d04dc20036dbd8313ed055', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_access`
--

CREATE TABLE `user_access` (
  `user_access_id` int(11) NOT NULL,
  `user_level_id` int(11) DEFAULT NULL,
  `accessible_page` varchar(1000) DEFAULT NULL,
  `restricted_delete` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user_access`
--

INSERT INTO `user_access` (`user_access_id`, `user_level_id`, `accessible_page`, `restricted_delete`) VALUES
(1, 0, '/views/dashboard/, /views/user-management/, /views/user-management/add.php, /views/user-management/edit.php, /views/barcode/, /views/products/, /views/products/add.php, /views/products/edit.php, /views/categories/, /views/categories/add.php, /views/categories/edit.php, /views/suppliers/, /views/suppliers/add.php, /views/suppliers/edit.php, /views/brands/, /views/brands/add.php, /views/brands/edit.php, /views/tax/, /views/tax/add.php, /views/tax/edit.php, /views/customers/, /views/customers/add.php, /views/customers/edit.php, /views/sales/, /views/sales/add.php, /views/sales/edit.php, /views/held/, /views/resell/, /views/resell/add.php, /views/resell/edit.php, /views/shop/, /views/profile/, /views/profile/change-password.php, /views/trash/', NULL),
(2, 1, '/views/dashboard/, /views/user-management/, /views/user-management/add.php, /views/user-management/edit.php, /views/shop/, /views/products/, /views/products/add.php, /views/products/edit.php, /views/categories/, /views/categories/add.php, /views/categories/edit.php, /views/suppliers/, /views/suppliers/add.php, /views/suppliers/edit.php, /views/brands/, /views/brands/add.php, /views/brands/edit.php, /views/customers/, /views/customers/add.php, /views/customers/edit.php, /views/sales/, /views/sales/add.php, /views/sales/edit.php, /views/held/, /views/resell/, /views/resell/add.php, /views/resell/edit.php, /views/profile/, /views/profile/change-password.php, /views/trash/', NULL),
(3, 2, NULL, NULL),
(4, 3, NULL, NULL),
(5, 5, NULL, NULL),
(6, 6, NULL, NULL),
(7, 7, NULL, NULL),
(8, 9, NULL, NULL),
(9, 10, NULL, NULL),
(10, 11, NULL, NULL),
(11, 12, NULL, NULL),
(12, 13, '/views/shop/, /views/products/, /views/products/add.php, /views/products/edit.php, /views/categories/, /views/categories/add.php, /views/categories/edit.php, /views/suppliers/, /views/suppliers/add.php, /views/suppliers/edit.php, /views/brands/, /views/brands/add.php, /views/brands/edit.php, /views/held/, /views/profile/, /views/profile/change-password.php, /views/sales/, /views/trash/', 'held-actions-delete, sale-actions-delete'),
(13, 14, NULL, NULL),
(14, 15, NULL, NULL),
(15, 16, NULL, NULL),
(16, 17, NULL, NULL),
(17, 18, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_interface`
--

CREATE TABLE `user_interface` (
  `ui_id` int(11) NOT NULL,
  `ui_feature` varchar(255) DEFAULT NULL,
  `ui_feature_state` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user_interface`
--

INSERT INTO `user_interface` (`ui_id`, `ui_feature`, `ui_feature_state`) VALUES
(1, 'shop list view', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `user_level_id` int(11) NOT NULL,
  `user_level` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`user_level_id`, `user_level`) VALUES
(0, 'admin'),
(1, 'owner'),
(2, 'ceo'),
(3, 'director'),
(4, 'general manager'),
(5, 'assistant manager'),
(6, 'branch manager'),
(7, 'supervisor'),
(8, 'cheif accountant'),
(9, 'account assistant'),
(10, 'hr manager'),
(11, 'hr assistant'),
(12, 'auditor'),
(13, 'sales manager'),
(14, 'sales assistant'),
(15, 'sales representative'),
(16, 'cashier'),
(17, 'store keeper'),
(18, 'clerk');

-- --------------------------------------------------------

--
-- Table structure for table `user_ui_connector`
--

CREATE TABLE `user_ui_connector` (
  `ui_con_id` int(11) NOT NULL,
  `ui_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `delete_log`
--
ALTER TABLE `delete_log`
  ADD PRIMARY KEY (`delete_log_id`);

--
-- Indexes for table `edit_log`
--
ALTER TABLE `edit_log`
  ADD KEY `product_cat_id` (`product_cat_id`) USING BTREE,
  ADD KEY `product_brand_id` (`product_brand_id`) USING BTREE,
  ADD KEY `tax_id` (`tax_id`) USING BTREE,
  ADD KEY `offer_type_id` (`offer_type_id`) USING BTREE,
  ADD KEY `product_condition_id` (`product_condition_id`) USING BTREE,
  ADD KEY `supplier_id` (`supplier_id`) USING BTREE,
  ADD KEY `img_id_FK` (`img_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `hold`
--
ALTER TABLE `hold`
  ADD PRIMARY KEY (`hold_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `customer_id_FK` (`customer_id`);

--
-- Indexes for table `login_log`
--
ALTER TABLE `login_log`
  ADD PRIMARY KEY (`login_log_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `offer_type`
--
ALTER TABLE `offer_type`
  ADD PRIMARY KEY (`offer_type_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`product_cat_id`),
  ADD KEY `product_brand_id` (`product_brand_id`),
  ADD KEY `tax_id` (`tax_id`),
  ADD KEY `offer_type_id` (`offer_type_id`),
  ADD KEY `product_condition_id` (`product_condition_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `img_id_FK` (`img_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `product_condition`
--
ALTER TABLE `product_condition`
  ADD PRIMARY KEY (`product_condition_id`);

--
-- Indexes for table `quantity`
--
ALTER TABLE `quantity`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_level_id_FK` (`user_level_id`),
  ADD KEY `branch_id_FK` (`branch_id`);

--
-- Indexes for table `user_access`
--
ALTER TABLE `user_access`
  ADD PRIMARY KEY (`user_access_id`);

--
-- Indexes for table `user_interface`
--
ALTER TABLE `user_interface`
  ADD PRIMARY KEY (`ui_id`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`user_level_id`);

--
-- Indexes for table `user_ui_connector`
--
ALTER TABLE `user_ui_connector`
  ADD PRIMARY KEY (`ui_con_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delete_log`
--
ALTER TABLE `delete_log`
  MODIFY `delete_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `hold`
--
ALTER TABLE `hold`
  MODIFY `hold_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=891;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `login_log`
--
ALTER TABLE `login_log`
  MODIFY `login_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `offer_type`
--
ALTER TABLE `offer_type`
  MODIFY `offer_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=898;

--
-- AUTO_INCREMENT for table `product_condition`
--
ALTER TABLE `product_condition`
  MODIFY `product_condition_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quantity`
--
ALTER TABLE `quantity`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_access`
--
ALTER TABLE `user_access`
  MODIFY `user_access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_interface`
--
ALTER TABLE `user_interface`
  MODIFY `ui_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `user_level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_ui_connector`
--
ALTER TABLE `user_ui_connector`
  MODIFY `ui_con_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `customer_id_FK` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `invoice_FK` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `img_id_FK` FOREIGN KEY (`img_id`) REFERENCES `image` (`img_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `offer_type_id_FK` FOREIGN KEY (`offer_type_id`) REFERENCES `offer_type` (`offer_type_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `product_brand_id_FK` FOREIGN KEY (`product_brand_id`) REFERENCES `brand` (`brand_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `product_cat_id_FK` FOREIGN KEY (`product_cat_id`) REFERENCES `category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_condition_id_FK` FOREIGN KEY (`product_condition_id`) REFERENCES `product_condition` (`product_condition_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `supplier_id_FK` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `tax_id_FK` FOREIGN KEY (`tax_id`) REFERENCES `tax` (`tax_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `user_FK` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `branch_id_FK` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `user_level_id_FK` FOREIGN KEY (`user_level_id`) REFERENCES `user_level` (`user_level_id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
