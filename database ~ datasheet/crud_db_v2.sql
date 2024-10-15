-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2024 at 06:17 PM
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
-- Database: `crud_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `ID` int(11) NOT NULL,
  `company_code` varchar(50) NOT NULL,
  `assigned_to` varchar(255) NOT NULL,
  `location_n` varchar(20) NOT NULL,
  `model_description` varchar(255) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `added_at` datetime NOT NULL DEFAULT current_timestamp(),
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `con_dition` varchar(255) NOT NULL,
  `quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ID`, `company_code`, `assigned_to`, `location_n`, `model_description`, `serial_number`, `added_at`, `firstname`, `middlename`, `surname`, `con_dition`, `quantity`) VALUES
(228, 'RETAIL-BCI001', 'Marketing Ojt', 'MARKETING', 'SGH338RPOL', 'HP COMPAQ PV0 6300 SFF', '0000-00-00 00:00:00', '', '', '', '', ''),
(229, 'RETAIL-BCI002', 'MARIBELLE FERNANDEZ', 'MARKETING', 'NXVEASP0398390092037600', 'TRAVELMATE P249-62-MG', '0000-00-00 00:00:00', '', '', '', '', ''),
(230, 'RETAIL-BCI003', 'BRYAN ROLDAN', 'MARKETING', '', 'IGER E1', '0000-00-00 00:00:00', '', '', '', '', ''),
(231, 'RETAIL-BCI004', 'ANGELICA NAGRAMPA', 'MARKETING', 'NXGFSSP01082208E027600', 'ASPRE ES1-432', '0000-00-00 00:00:00', '', '', '', '', ''),
(232, 'RETAIL-BCI005', 'RYAN JAVIER', 'MARKETING', 'JT009Q00200JMM7MXDOS', 'IGER E1', '0000-00-00 00:00:00', '', '', '', '', ''),
(233, 'RETAIL-BCI006', 'MICH MICHAEL ANGELO', 'MARKETING', '1S3227BK6PB958MD', '3227BK6', '0000-00-00 00:00:00', '', '', '', '', ''),
(234, 'RETAIL-BCI007', 'GAB SANTIAGO', 'MARKETING', '', 'IGER E1', '0000-00-00 00:00:00', '', '', '', '', ''),
(235, 'RETAIL-BCI008', 'RONELLE BIALA', 'MARKETING', 'JT009Q00200JUH7UXCNZ', 'IGER E1', '0000-00-00 00:00:00', '', '', '', '', ''),
(236, 'RETAIL-BCI009', 'LIZEL BELEN', 'MARKETING', 'JT009Q00200JMM8SXFTO', 'IGER E1', '0000-00-00 00:00:00', '', '', '', '', ''),
(237, 'RETAIL-BCI010', 'MARIA ELENA LOSINA', 'MARKETING', 'NXVE65P0847241DCBA7600', 'TRAVELMATE P249-62-M', '0000-00-00 00:00:00', '', '', '', '', ''),
(238, 'RETAIL-BCI011', 'JUNJIE PALMERO', 'MARKETING', '', 'ASPIRE X 1440', '0000-00-00 00:00:00', '', '', '', '', ''),
(239, 'RETAIL-BCI012', 'LESTER GLENN DOLOR', 'MARKETING', 'JT009Q00200JMM7MEKMV', 'IGER E1', '0000-00-00 00:00:00', '', '', '', '', ''),
(240, 'RETAIL-BCI013', 'JOCELLE ROSALES', 'MARKETING', 'JT009Q00200JMM7MXKI7', 'IGER E1', '0000-00-00 00:00:00', '', '', '', '', ''),
(241, 'RETAIL-BCI014', 'HERNAN GLOBIO', 'MARKETING', 'NXVEASP0097260635F7600', 'TRAVELMATE P249-62-M', '0000-00-00 00:00:00', '', '', '', '', ''),
(242, 'RETAIL-BCI015', 'SHANE MORALES', 'MARKETING', '', 'ASPIRE P71470', '0000-00-00 00:00:00', '', '', '', '', ''),
(243, 'RETAIL-BCI016', 'RICKY MOLERA', 'MARKETING', 'JT009Q00200JMM7X7GE', 'IGER E1', '0000-00-00 00:00:00', '', '', '', '', ''),
(244, 'RETAIL-BCI017', 'SHARON OMARGO', 'MARKETING', 'NXEFVSP00101002EC32NOD', 'EXTENSA 21S-21', '0000-00-00 00:00:00', '', '', '', '', ''),
(245, 'RETAIL-BCI018', 'GAYLE TRINIDAD', 'MARKETING', 'NXVE6SP0847241DCCE7600', 'TRAVELMATE P249-62-M', '0000-00-00 00:00:00', '', '', '', '', ''),
(246, 'RETAIL-BCI019', 'ROSALIE BABASA ', 'MARKETING', 'JT009Q00200JMMMEM76', 'IGER E1', '0000-00-00 00:00:00', '', '', '', '', ''),
(247, 'RETAIL-BCI020', 'JULIUS CABALES', 'MARKETING', 'NXGFSSPO1088D877600', 'ASPIRE ES1-432', '0000-00-00 00:00:00', '', '', '', '', ''),
(248, 'RETAIL-BCI021', 'CRISTY JAVIER', 'ACCOUNTING', '', 'VERITON X4630G', '0000-00-00 00:00:00', '', '', '', '', ''),
(249, 'RETAIL-BCI022', 'JOANNALYN QUIMPO', 'ACCOUNTING', 'DTX0CSPO3460802C689600', 'EXTENSA M2610', '0000-00-00 00:00:00', '', '', '', '', ''),
(250, 'RETAIL-BCI023', 'JOANNALYN QUIMPO', 'ACCOUNTING', 'BBCK82500709690213', 'GAMDIAS MONITOR', '0000-00-00 00:00:00', '', '', '', '', ''),
(251, 'RETAIL-BCI024', 'CRISTY JAVIER', 'ACCOUNTING', '', 'GAMDIAS MONITOR', '0000-00-00 00:00:00', '', '', '', '', ''),
(252, 'RETAIL-BCI025', 'ADMIN', 'ACCOUNTING', 'E80726EH255246', 'Brother dcp-t720dw', '0000-00-00 00:00:00', '', '', '', '', ''),
(253, 'RETAIL-BCI026', 'ADMIN', 'ACCOUNTING', 'KNUJ12709', 'Canon PIXMA  g1010', '0000-00-00 00:00:00', '', '', '', '', ''),
(254, 'RETAIL-BCI027', 'ADMIN', 'ACCOUNTING', 'E73801FN191608', 'Brother dcp-L2540DW', '0000-00-00 00:00:00', '', '', '', '', ''),
(255, 'RETAIL-BCI028', 'ADMIN', 'ACCOUNTING', 'E78669B9H526373', 'Brother dcp-T710W', '0000-00-00 00:00:00', '', '', '', '', ''),
(256, 'RETAIL-BCI029', 'Shiedy   Adaro', 'ACCOUNTING', 'F0K558971', 'Brother dcp-GX-6750', '0000-00-00 00:00:00', '', '', '', '', ''),
(257, 'RETAIL-BCI030', 'Shiedy   Adaro', 'ACCOUNTING', '87CY208882', 'LX-310 PA71A', '0000-00-00 00:00:00', '', '', '', '', ''),
(258, 'RETAIL-BCI031', 'Shiedy   Adaro', 'ACCOUNTING', 'DTBC7SP0088410C4DD3000', 'Aspire TC-860 (PC)', '0000-00-00 00:00:00', '', '', '', '', ''),
(259, 'RETAIL-BCI032', 'Shiedy   Adaro', 'ACCOUNTING', 'Q52A1JA010046', 'ENVISION H819 (MONITOR)', '0000-00-00 00:00:00', '', '', '', '', ''),
(260, 'RETAIL-BCI033', 'Grace  de luna', 'ACCOUNTING', 'DTX0CSP03460802C0D9600', 'Extensa M2610 (PC)', '0000-00-00 00:00:00', '', '', '', '', ''),
(261, 'RETAIL-BCI034', 'Grace de luna', 'ACCOUNTING', 'BACK82500A10690461', 'ATLAS HD 276C (MONITOR)', '0000-00-00 00:00:00', '', '', '', '', ''),
(262, 'RETAIL-BCI035', 'Nicole Ann N. Armesis', 'ACCOUNTING', '22601996692', 'Veriton M2610G (PC)', '0000-00-00 00:00:00', '', '', '', '', ''),
(263, 'RETAIL-BCI036', 'Nicole Ann N. Armesis', 'ACCOUNTING', 'VH238FII2303130887', 'ATLAS VH 238F II (MONITOR)', '0000-00-00 00:00:00', '', '', '', '', ''),
(264, 'RETAIL-BCI037', 'Ergine Glory Rubio', 'ACCOUNTING', '00212-352-081-568', 'Veriton X2611G (PC)', '0000-00-00 00:00:00', '', '', '', '', ''),
(265, 'RETAIL-BCI038', 'Ergine Glory Rubio', 'ACCOUNTING', 'VH238FII2303130833', 'ATLAS VH 238F II (MONITOR)', '0000-00-00 00:00:00', '', '', '', '', ''),
(266, 'RETAIL-BCI039', 'Rizza Bacatin', 'ACCOUNTING', '64100036596', 'Extensa M2610 (PC)', '0000-00-00 00:00:00', '', '', '', '', ''),
(267, 'RETAIL-BCI040', 'Rizza Bacatin', 'ACCOUNTING', 'VH238FII2203110687', 'ATLAS VH 238F II (MONITOR)', '0000-00-00 00:00:00', '', '', '', '', ''),
(268, 'RETAIL-BCI041', 'Arlene Mabunga', 'ACCOUNTING', '41100729096', 'Aspire TC-1770 (PC)', '0000-00-00 00:00:00', '', '', '', '', ''),
(269, 'RETAIL-BCI042', 'Arlene Mabunga', 'ACCOUNTING', 'VH238FII2203110579', 'ATLAS VH 238F II (MONITOR)', '0000-00-00 00:00:00', '', '', '', '', ''),
(270, 'RETAIL-BCI043', 'Ma Teresa Reyna', 'ACCOUNTING', 'DTVLASP03044700F4F9600', 'Veriton X4630G (PC)', '0000-00-00 00:00:00', '', '', '', '', ''),
(271, 'RETAIL-BCI044', 'Ma Teresa Reyna', 'ACCOUNTING', 'BAIJ82801625690763', 'ATLAS HD 276CG (MONITOR)', '0000-00-00 00:00:00', '', '', '', '', ''),
(272, 'RETAIL-BCI045', 'Bianca Marie Lamson', 'ACCOUNTING', 'DTVLASP03044700F4F9626', 'Veriton X4630G (PC)', '0000-00-00 00:00:00', '', '', '', '', ''),
(273, 'RETAIL-BCI046', 'Bianca Marie Lamson', 'ACCOUNTING', 'MMTX5SP002345023EA2X00', 'ACER SA22Q (MONITOR)', '0000-00-00 00:00:00', '', '', '', '', ''),
(275, 'CORP. 002', 'PRINTER', 'CORPORATE', 'E74706J7H593947', 'BROTHER DCP-T300', '0000-00-00 00:00:00', '', '', '', '', ''),
(276, 'CORP. 003', 'PRINTER', 'CORPORATE', 'E81773A3H236305', 'BROTHER MFC-J3540DW', '0000-00-00 00:00:00', '', '', '', '', ''),
(277, 'CORP. 004', 'PRINTER', 'CORPORATE', 'E80726D4H141271', 'BROHER DCP-T720DW', '0000-00-00 00:00:00', '', '', '', '', ''),
(278, 'CORP. 005', 'PRINTER', 'CORPORATE', 'E78947F8H948549', 'BROTHER MFC-T4500DW', '0000-00-00 00:00:00', '', '', '', '', ''),
(279, 'CORP. 006', 'OJT-RHEN-Laptop', 'CORPORATE', 'NXBNSP0036470AAF1340', 'ACER TMP248-M-36KA', '0000-00-00 00:00:00', '', '', '', '', ''),
(280, 'CORP. 007', 'OJT-Jayrald-Laptop', 'CORPORATE', 'NXEG8SP00T10415ED73400', 'ACER EX215-52-35FY', '0000-00-00 00:00:00', '', '', '', '', ''),
(281, 'CORP. 008', 'OJT-JC-Laptop', 'CORPORATE', 'NXEFASP00273203F4C6600', 'ACER Extensa 2519-C49F', '0000-00-00 00:00:00', '', '', '', '', ''),
(282, 'CORP. 009', 'Laptop Defected', 'CORPORATE', 'NXVBNSP016642088EB3400', 'ACER TMP248-M-37M0', '0000-00-00 00:00:00', '', '', '', '', ''),
(283, 'CORP. 010', 'PRINTER Defected', 'CORPORATE', 'E80732M0H187597', 'BROTHER MFC-T920DW', '0000-00-00 00:00:00', '', '', '', '', ''),
(284, 'CORP. 011', 'Joseph Espiritu', 'CORPORATE', 'DTBC7SP0118410BC9F3000', 'ACER ASPIRE TC-860', '0000-00-00 00:00:00', '', '', '', '', ''),
(285, 'CORP. 012', 'Joseph Espiritu', 'CORPORATE', 'BBCA82509316690036', 'GAMDIAS ATLAS HD 236C', '0000-00-00 00:00:00', '', '', '', '', ''),
(286, 'CORP. 013', 'Monitor (Good Unit)', 'CORPORATE', 'D3292JA346525', 'ENVISION H716W', '0000-00-00 00:00:00', '', '', '', '', ''),
(287, 'CORP. 014', 'Monitor (Good Unit)', 'CORPORATE', 'F4LMTF134284', 'ASUS VS197', '0000-00-00 00:00:00', '', '', '', '', ''),
(288, 'CORP. 015', 'Mandy', 'CORPORATE', '', 'CLONE DESKTOP', '0000-00-00 00:00:00', '', '', '', '', ''),
(289, 'CORP. 016', 'Mandy', 'CORPORATE', 'HDP238CZ21081102102', 'GAMDIAS ATLAS VHD 238C', '0000-00-00 00:00:00', '', '', '', '', ''),
(290, 'CORP. 017', 'Ms. Mhay', 'CORPORATE', 'HDP238CZ21081101754', 'GAMDIAS ATLAS VHD 238C', '0000-00-00 00:00:00', '', '', '', '', ''),
(291, 'CORP. 018', 'ADMIN CCTV', 'CORPORATE', 'BACA82509A29690028', 'GAMDIAS ATLAS HD 23C', '0000-00-00 00:00:00', '', '', '', '', ''),
(292, 'CORP. 019', 'Ms. Mhay CCTV', 'CORPORATE', 'SGH411R21Z - DESKTOP', 'HP Compaq Elite 8300 Small Form Factor', '0000-00-00 00:00:00', '', '', '', '', ''),
(293, 'CORP. 020', 'Sir Michael', 'CORPORATE', 'DTVLASP03044700EE09600', 'ACER VERITON X4630G(VX4630G_E2)', '0000-00-00 00:00:00', '', '', '', '', ''),
(294, 'CORP. 021', 'Sir Michael', 'CORPORATE', 'HDP238CZ21081100088', 'GAMDIAS ALTAS VHD 238C', '0000-00-00 00:00:00', '', '', '', '', ''),
(295, 'CORP. 022', '', 'CORPORATE', '2658', 'Old Desktop Clone - Cebu', '0000-00-00 00:00:00', '', '', '', '', ''),
(296, 'CORP. 023', 'Sir Gian', 'CORPORATE', 'NXVGQSP011937007957200', 'ACER TMP2410-G2-MG-54HX', '0000-00-00 00:00:00', '', '', '', '', ''),
(297, 'CORP. 024', 'Sir Levi', 'CORPORATE', 'JT009A00F00JMP8HUYCA', 'THUNDERROBOT 911M16', '0000-00-00 00:00:00', '', '', '', '', ''),
(298, 'CORP.025', 'Sir Leemar', 'CORPORATE', 'JB0BN000000JMPCFJ784', 'THUNDERROBOT 911MT', '0000-00-00 00:00:00', '', '', '', '', ''),
(299, 'CORP.026', 'Ms. Tin', 'CORPORATE', 'JT009Z00S00JMM8UAW9M', 'THUNDERROBOT IGER E1', '0000-00-00 00:00:00', '', '', '', '', ''),
(300, 'CORP.027', 'Ms. Liza', 'CORPORATE', 'NXGFSSP0098110E0937600', 'ACER ES1-432-P0KC', '0000-00-00 00:00:00', '', '', '', '', ''),
(301, 'CORP.028', 'Ms. Irene', 'CORPORATE', 'NXGYBSP001817018170A6733400', 'ACER A316-41G-R5U3', '0000-00-00 00:00:00', '', '', '', '', ''),
(302, 'CORP.029', 'Ms.Sherilyn', 'CORPORATE', 'NXVEASP0087033302E7600', 'ACER TMP249-G2-MG-33HL', '0000-00-00 00:00:00', '', '', '', '', ''),
(303, 'CORP.030', 'Ryan T', 'CORPORATE', 'JT0009Q00200JMM8SUY8G', 'THUNDERROBOT IGER E1', '0000-00-00 00:00:00', '', '', '', '', ''),
(304, 'CORP.031', 'OJT admin-Unit', 'CORPORATE', '34100948796', 'ACER VERITON', '0000-00-00 00:00:00', '', '', '', '', ''),
(305, 'CORP.032', 'OJT admin-Monitor', 'CORPORATE', 'HDP238CZ21081101117', 'GAMDIAS ATLAS VHD 238C', '0000-00-00 00:00:00', '', '', '', '', ''),
(306, 'CORP.033', 'OJT-admin-Monitor with Unit', 'CORPORATE', 'C3PECJ001171', 'ASUS all-in-one PC', '0000-00-00 00:00:00', '', '', '', '', ''),
(307, 'CORP.034', 'Ms. Jessa', 'CORPORATE', 'JT009Z00S00JMM8UA845', 'THUNDERROBOT IGER E1', '0000-00-00 00:00:00', '', '', '', '', ''),
(308, 'CORP.035', 'Jovi', 'CORPORATE', '44700373796', 'ACER VERITON X4630G(VX4630G_E2)', '0000-00-00 00:00:00', '', '', '', '', ''),
(309, 'CORP.036', 'Jovi', 'CORPORATE', '7818ABBA001187', 'ENVISION P951wa+', '0000-00-00 00:00:00', '', '', '', '', ''),
(310, 'CORP.037', 'Sir Odi', 'CORPORATE', 'NXVPNSP07521406D527600', 'ACER TMP214-53-54TU', '0000-00-00 00:00:00', '', '', '', '', ''),
(311, 'CORP.038', 'She', 'CORPORATE', 'NXV9USP023537205F47600', 'ACER TMP246-MG-31P1', '0000-00-00 00:00:00', '', '', '', '', ''),
(312, 'CORP.039', 'Noida', 'CORPORATE', 'JT009Z00S00JMM8UB9QK', 'IGER E1', '0000-00-00 00:00:00', '', '', '', '', ''),
(313, 'CORP.040', 'William Vera', 'CORPORATE', 'JT009Q00200JMM7MX3QC', 'IGER E1', '0000-00-00 00:00:00', '', '', '', '', ''),
(314, 'CORP.041', 'Amorsolo Meija', 'CORPORATE', 'JT009Q00200JMM8SZ61W', 'THNUNDEROBOT IGER E1 I3', '0000-00-00 00:00:00', '', '', '', '', ''),
(315, 'CORP.042', 'Jennifer Leoncio', 'CORPORATE', 'JT009Q00200JMM8SMRG9', 'THUNDEROBOT IGER1', '0000-00-00 00:00:00', '', '', '', '', ''),
(316, 'CORP.043', 'Michael Angelo Boncodin', 'CORPORATE', 'JT009D00600JMN1TQZ0K', 'THUNDEROBOT', '0000-00-00 00:00:00', '', '', '', '', ''),
(317, 'CORP.044', 'Billie John Libao', 'CORPORATE', 'JT009Q00200JMM8SSUMN', 'THUNDEROBOT IGER1', '0000-00-00 00:00:00', '', '', '', '', ''),
(318, 'CORP.045', 'Catherine  Ta?do', 'CORPORATE', 'JT009Z00S00JMM89TYWA', 'THNUNDEROBOT IGER E1 ', '0000-00-00 00:00:00', '', '', '', '', ''),
(319, 'CORP.046', 'Karla Usita', 'CORPORATE', 'NXVGTSP04592401BAD7200', 'TRAVELMATE P2410-G2-M', '0000-00-00 00:00:00', '', '', '', '', ''),
(320, 'CORP.047', 'Jhulles', 'CORPORATE', 'NXHUQSP005113008FB2N00', 'ACER ASPIRE A514-53', '0000-00-00 00:00:00', '', '', '', '', ''),
(321, 'CORP.048', 'Efjay Manalastas', 'CORPORATE', 'NXEFASP00271501D706600', 'ACER EX2519-C49F', '0000-00-00 00:00:00', '', '', '', '', ''),
(322, 'CORP.049', 'ADMIN', 'CORPORATE', 'D20501966', 'HIKVISION INTERACTIVE TABLET', '0000-00-00 00:00:00', '', '', '', '', ''),
(323, 'CORP.050', 'ADMIN', 'CORPORATE', 'AH0803784', 'HIKVISION INTERACTIVE FLAT PANEL', '0000-00-00 00:00:00', '', '', '', '', ''),
(331, 'CORP. 001', 'PRINTER', 'CORPORATE', 'E73801C5N940899', 'BROTHER DCP-L25400W', '0000-00-00 00:00:00', 'Jeremy', 'Lato', 'Pelegrino', 'DEFECTIVE', '1'),
(335, '2541NASDASE', '231312321312', 'ACCOUNTING', '2311NXN2N13N213NX3', '3642MM244M223', '2024-10-15 23:55:16', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_archive`
--

CREATE TABLE `tbl_archive` (
  `ID` int(11) NOT NULL,
  `company_code` varchar(50) NOT NULL,
  `assigned_to` varchar(255) NOT NULL,
  `location_n` varchar(20) NOT NULL,
  `model_description` varchar(255) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `added_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `con_dition` varchar(255) NOT NULL,
  `quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `username`, `password`, `name`, `role`) VALUES
(1, 'user', 'default', 'Jayrald Pelegrino', 'user'),
(2, 'admin', 'default', 'Administrator', 'admin'),
(9, 'user2', 'default', 'Jeremy Pelegrino', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_archive`
--
ALTER TABLE `tbl_archive`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `tbl_archive`
--
ALTER TABLE `tbl_archive`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
