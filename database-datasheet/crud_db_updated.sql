-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 02:18 PM
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
  `quantity` varchar(50) NOT NULL,
  `cost` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ID`, `company_code`, `assigned_to`, `location_n`, `model_description`, `serial_number`, `added_at`, `firstname`, `middlename`, `surname`, `con_dition`, `quantity`, `cost`) VALUES
(534, 'RETAIL-BCI001', '', 'CORPORATE', 'SGH338RPOL', 'HP COMPAQ PV0 6300 SFF', '0000-00-00 00:00:00', 'Marketing', '', 'Ojt', 'GOOD', '1', 0),
(535, 'RETAIL-BCI002', '', 'MARKETING', 'NXVEASP0398390092037600', 'TRAVELMATE P249-62-MG', '0000-00-00 00:00:00', 'Maribelle', '', 'Fernandez', 'GOOD', '1', 0),
(536, 'RETAIL-BCI003', '', 'MARKETING', '', 'IGER E1', '0000-00-00 00:00:00', 'BRYAN', '', 'ROLDAN', 'GOOD', '1', 0),
(537, 'RETAIL-BCI004', '', 'MARKETING', 'NXGFSSP01082208E027600', 'ASPRE ES1-432', '0000-00-00 00:00:00', 'ANGELICA', '', 'NAGRAMPA', 'GOOD', '1', 0),
(538, 'RETAIL-BCI005', '', 'MARKETING', 'JT009Q00200JMM7MXDOS', 'IGER E1', '0000-00-00 00:00:00', 'RYAN', '', 'JAVIER', 'GOOD', '1', 0),
(539, 'RETAIL-BCI006', '', 'MARKETING', '1S3227BK6PB958MD', '3227BK6', '0000-00-00 00:00:00', 'MICH MICHAEL', '', 'ANGELO', 'GOOD', '1', 0),
(540, 'RETAIL-BCI007', '', 'MARKETING', '', 'IGER E1', '0000-00-00 00:00:00', 'GAB', '', 'SANTIAGO', 'GOOD', '1', 0),
(541, 'RETAIL-BCI008', '', 'MARKETING', 'JT009Q00200JUH7UXCNZ', 'IGER E1', '0000-00-00 00:00:00', 'RONELLE', '', 'BIALA', 'GOOD', '1', 0),
(542, 'RETAIL-BCI009', '', 'MARKETING', 'JT009Q00200JMM8SXFTO', 'IGER E1', '0000-00-00 00:00:00', 'LIZEL', '', 'BELEN', 'GOOD', '1', 0),
(543, 'RETAIL-BCI010', '', 'MARKETING', 'NXVE65P0847241DCBA7600', 'TRAVELMATE P249-62-M', '0000-00-00 00:00:00', 'MARIA ELENA', '', 'LOSINA', 'GOOD', '1', 0),
(544, 'RETAIL-BCI011', '', 'MARKETING', '', 'ASPIRE X 1440', '0000-00-00 00:00:00', 'JUNJIE', '', 'PALMERO', 'GOOD', '1', 0),
(545, 'RETAIL-BCI012', '', 'MARKETING', 'JT009Q00200JMM7MEKMV', 'IGER E1', '0000-00-00 00:00:00', 'LESTER GLENN', '', 'DOLOR', 'GOOD', '1', 0),
(546, 'RETAIL-BCI013', '', 'MARKETING', 'JT009Q00200JMM7MXKI7', 'IGER E1', '0000-00-00 00:00:00', 'JOCELLE', '', 'ROSALES', 'GOOD', '1', 0),
(547, 'RETAIL-BCI014', '', 'MARKETING', 'NXVEASP0097260635F7600', 'TRAVELMATE P249-62-M', '0000-00-00 00:00:00', 'HERNAN', '', 'GLOBIO', 'GOOD', '1', 0),
(548, 'RETAIL-BCI015', '', 'MARKETING', '', 'ASPIRE P71470', '0000-00-00 00:00:00', 'SHANE', '', 'MORALES', 'GOOD', '1', 0),
(549, 'RETAIL-BCI016', '', 'MARKETING', 'JT009Q00200JMM7X7GE', 'IGER E1', '0000-00-00 00:00:00', 'RICKY', '', 'MOLERA', 'GOOD', '1', 0),
(550, 'RETAIL-BCI017', '', 'MARKETING', 'NXEFVSP00101002EC32NOD', 'EXTENSA 21S-21', '0000-00-00 00:00:00', 'SHARON', '', 'OMARGO', 'GOOD', '1', 0),
(551, 'RETAIL-BCI018', '', 'MARKETING', 'NXVE6SP0847241DCCE7600', 'TRAVELMATE P249-62-M', '0000-00-00 00:00:00', 'GAYLE', '', 'TRINIDAD', 'GOOD', '1', 0),
(552, 'RETAIL-BCI019', '', 'MARKETING', 'JT009Q00200JMMMEM76', 'IGER E1', '0000-00-00 00:00:00', 'ROSALIE', '', 'BABASA', 'GOOD', '1', 0),
(553, 'RETAIL-BCI020', '', 'MARKETING', 'NXGFSSPO1088D877600', 'ASPIRE ES1-432', '0000-00-00 00:00:00', 'JULIUS', '', 'CABALES', 'GOOD', '1', 0),
(554, 'RETAIL-BCI021', '', 'ACCOUNTING', '', 'VERITON X4630G', '0000-00-00 00:00:00', 'CRISTY', '', 'JAVIER', 'GOOD', '1', 0),
(555, 'RETAIL-BCI022', '', 'ACCOUNTING', 'DTX0CSPO3460802C689600', 'EXTENSA M2610', '0000-00-00 00:00:00', 'JOANNALYN', '', 'QUIMPO', 'GOOD', '1', 0),
(556, 'RETAIL-BCI023', '', 'ACCOUNTING', 'BBCK82500709690213', 'GAMDIAS MONITOR', '0000-00-00 00:00:00', 'JOANNALYN', '', 'QUIMPO', 'GOOD', '1', 0),
(557, 'RETAIL-BCI024', '', 'ACCOUNTING', '', 'GAMDIAS MONITOR', '0000-00-00 00:00:00', 'CRISTY', '', 'JAVIER', 'GOOD', '1', 0),
(558, 'RETAIL-BCI025', '', 'ACCOUNTING', 'E80726EH255246', 'Brother dcp-t720dw', '0000-00-00 00:00:00', 'ADMIN', '', '', 'GOOD', '1', 0),
(559, 'RETAIL-BCI026', '', 'ACCOUNTING', 'KNUJ12709', 'Canon PIXMA  g1010', '0000-00-00 00:00:00', 'ADMIN', '', '', 'GOOD', '1', 0),
(560, 'RETAIL-BCI027', '', 'ACCOUNTING', 'E73801FN191608', 'Brother dcp-L2540DW', '0000-00-00 00:00:00', 'ADMIN', '', '', 'GOOD', '1', 0),
(561, 'RETAIL-BCI028', '', 'ACCOUNTING', 'E78669B9H526373', 'Brother dcp-T710W', '0000-00-00 00:00:00', 'ADMIN', '', '', 'GOOD', '1', 0),
(562, 'RETAIL-BCI029', '', 'ACCOUNTING', 'F0K558971', 'Brother dcp-GX-6750', '0000-00-00 00:00:00', 'Shiedy', '', 'Adaro', 'GOOD', '1', 0),
(563, 'RETAIL-BCI030', '', 'ACCOUNTING', '87CY208882', 'LX-310 PA71A', '0000-00-00 00:00:00', 'Shiedy', '', 'Adaro', 'GOOD', '1', 0),
(564, 'RETAIL-BCI031', '', 'ACCOUNTING', 'DTBC7SP0088410C4DD3000', 'Aspire TC-860 (PC)', '0000-00-00 00:00:00', 'Shiedy', '', 'Adaro', 'GOOD', '1', 0),
(565, 'RETAIL-BCI032', '', 'ACCOUNTING', 'Q52A1JA010046', 'ENVISION H819 (MONITOR)', '0000-00-00 00:00:00', 'Shiedy', '', 'Adaro', 'GOOD', '1', 0),
(566, 'RETAIL-BCI033', '', 'ACCOUNTING', 'DTX0CSP03460802C0D9600', 'Extensa M2610 (PC)', '0000-00-00 00:00:00', 'Grace ', '', 'de luna', 'GOOD', '1', 0),
(567, 'RETAIL-BCI034', '', 'ACCOUNTING', 'BACK82500A10690461', 'ATLAS HD 276C (MONITOR)', '0000-00-00 00:00:00', 'Grace ', '', 'de luna', 'GOOD', '1', 0),
(568, 'RETAIL-BCI035', '', 'ACCOUNTING', '22601996692', 'Veriton M2610G (PC)', '0000-00-00 00:00:00', 'Nicole Ann', 'N', 'Armesis', 'GOOD', '1', 0),
(569, 'RETAIL-BCI036', '', 'ACCOUNTING', 'VH238FII2303130887', 'ATLAS VH 238F II (MONITOR)', '0000-00-00 00:00:00', 'Nicole Ann', 'N', 'Armesis', 'GOOD', '1', 0),
(570, 'RETAIL-BCI037', '', 'ACCOUNTING', '00212-352-081-568', 'Veriton X2611G (PC)', '0000-00-00 00:00:00', 'Ergine Glory', '', 'Rubio', 'GOOD', '1', 0),
(571, 'RETAIL-BCI038', '', 'ACCOUNTING', 'VH238FII2303130833', 'ATLAS VH 238F II (MONITOR)', '0000-00-00 00:00:00', 'Ergine Glory', '', 'Rubio', 'GOOD', '1', 0),
(572, 'RETAIL-BCI039', '', 'ACCOUNTING', '64100036596', 'Extensa M2610 (PC)', '0000-00-00 00:00:00', 'Rizza', '', 'Bacatin', 'GOOD', '1', 0),
(573, 'RETAIL-BCI040', '', 'ACCOUNTING', 'VH238FII2203110687', 'ATLAS VH 238F II (MONITOR)', '0000-00-00 00:00:00', 'Rizza', '', 'Bacatin', 'GOOD', '1', 0),
(574, 'RETAIL-BCI041', '', 'ACCOUNTING', '41100729096', 'Aspire TC-1770 (PC)', '0000-00-00 00:00:00', 'Arlene', '', 'Mabunga', 'GOOD', '1', 0),
(575, 'RETAIL-BCI042', '', 'ACCOUNTING', 'VH238FII2203110579', 'ATLAS VH 238F II (MONITOR)', '0000-00-00 00:00:00', 'Arlene', '', 'Mabunga', 'GOOD', '1', 0),
(576, 'RETAIL-BCI043', '', 'ACCOUNTING', 'DTVLASP03044700F4F9600', 'Veriton X4630G (PC)', '0000-00-00 00:00:00', 'Ma Teresa', '', 'Reyna', 'GOOD', '1', 0),
(577, 'RETAIL-BCI044', '', 'ACCOUNTING', 'BAIJ82801625690763', 'ATLAS HD 276CG (MONITOR)', '0000-00-00 00:00:00', 'Ma Teresa', '', 'Reyna', 'GOOD', '1', 0),
(578, 'RETAIL-BCI045', '', 'ACCOUNTING', 'DTVLASP03044700F4F9626', 'Veriton X4630G (PC)', '0000-00-00 00:00:00', 'Bianca Marie', '', 'Lamson', 'GOOD', '1', 0),
(579, 'RETAIL-BCI046', '', 'ACCOUNTING', 'MMTX5SP002345023EA2X00', 'ACER SA22Q (MONITOR)', '0000-00-00 00:00:00', 'Bianca Marie', '', 'Lamson', 'GOOD', '1', 0),
(580, 'CORP. 001', '', 'CORPORATE', 'E73801C5N940899', 'BROTHER DCP-L25400W', '0000-00-00 00:00:00', 'PRINTER', '', '', 'GOOD', '1', 0),
(581, 'CORP. 002', '', 'CORPORATE', 'E74706J7H593947', 'BROTHER DCP-T300', '0000-00-00 00:00:00', 'PRINTER', '', '', 'GOOD', '1', 0),
(582, 'CORP. 003', '', 'CORPORATE', 'E81773A3H236305', 'BROTHER MFC-J3540DW', '0000-00-00 00:00:00', 'PRINTER', '', '', 'GOOD', '1', 0),
(583, 'CORP. 004', '', 'CORPORATE', 'E80726D4H141271', 'BROHER DCP-T720DW', '0000-00-00 00:00:00', 'PRINTER', '', '', 'GOOD', '1', 0),
(584, 'CORP. 005', '', 'CORPORATE', 'E78947F8H948549', 'BROTHER MFC-T4500DW', '0000-00-00 00:00:00', 'PRINTER', '', '', 'GOOD', '1', 0),
(585, 'CORP. 006', '', 'CORPORATE', 'NXBNSP0036470AAF1340', 'ACER TMP248-M-36KA', '0000-00-00 00:00:00', 'OJT-Rhen', 'B', 'Fernandez', 'GOOD', '1', 0),
(586, 'sadas', '32024023', 'CORPORATE', 'NXEG8SP00T10415ED73400', 'ACER EX215-52-35FY', '0000-00-00 00:00:00', 'Jayrald', 'Lato', 'Pelegrinos', 'GOOD', '1', 1),
(587, 'CORP. 008', '', 'CORPORATE', 'NXEFASP00273203F4C6600', 'ACER Extensa 2519-C49F', '0000-00-00 00:00:00', 'OJT-Jc', '', '', 'GOOD', '1', 0),
(588, 'CORP. 009', '', 'CORPORATE', 'NXVBNSP016642088EB3400', 'ACER TMP248-M-37M0', '0000-00-00 00:00:00', 'LAPTOP', '', '', 'DEFECTED', '1', 0),
(589, 'CORP. 010', '', 'CORPORATE', 'E80732M0H187597', 'BROTHER MFC-T920DW', '0000-00-00 00:00:00', 'PRINTER', '', '', 'DEFECTED', '1', 0),
(590, 'CORP. 011', '', 'CORPORATE', 'DTBC7SP0118410BC9F3000', 'ACER ASPIRE TC-860', '0000-00-00 00:00:00', 'Joseph', '', 'Espiritu', 'GOOD', '1', 0),
(591, 'CORP. 012', '', 'CORPORATE', 'BBCA82509316690036', 'GAMDIAS ATLAS HD 236C', '0000-00-00 00:00:00', 'Joseph', '', 'Espiritu', 'GOOD', '1', 0),
(592, 'CORP. 013', '', 'CORPORATE', 'D3292JA346525', 'ENVISION H716W', '0000-00-00 00:00:00', 'MONITOR', '', '', 'GOOD', '1', 0),
(593, 'CORP. 014', '', 'CORPORATE', 'F4LMTF134284', 'ASUS VS197', '0000-00-00 00:00:00', 'MONITOR', '', '', 'GOOD', '1', 0),
(594, 'CORP. 015', '', 'CORPORATE', '', 'CLONE DESKTOP', '0000-00-00 00:00:00', 'Mandy', '', '', 'GOOD', '1', 0),
(595, 'CORP. 016', '', 'CORPORATE', 'HDP238CZ21081102102', 'GAMDIAS ATLAS VHD 238C', '0000-00-00 00:00:00', 'Mandy', '', '', 'GOOD', '1', 0),
(596, 'CORP. 017', '', 'CORPORATE', 'HDP238CZ21081101754', 'GAMDIAS ATLAS VHD 238C', '0000-00-00 00:00:00', 'Ms. Mhay', '', '', 'GOOD', '1', 0),
(597, 'CORP. 018', '', 'CORPORATE', 'BACA82509A29690028', 'GAMDIAS ATLAS HD 23C', '0000-00-00 00:00:00', 'ADMIN CCTV', '', '', 'GOOD', '1', 0),
(598, 'CORP. 019', '', 'CORPORATE', 'SGH411R21Z - DESKTOP', 'HP Compaq Elite 8300 Small Form Factor', '0000-00-00 00:00:00', 'Mhay CCTV', '', '', 'GOOD', '1', 0),
(599, 'CORP. 020', '', 'CORPORATE', 'DTVLASP03044700EE09600', 'ACER VERITON X4630G(VX4630G_E2)', '0000-00-00 00:00:00', 'Michael', '', '', 'GOOD', '1', 0),
(600, 'CORP. 021', '', 'CORPORATE', 'HDP238CZ21081100088', 'GAMDIAS ALTAS VHD 238C', '0000-00-00 00:00:00', 'Michael', '', '', 'GOOD', '1', 0),
(601, 'CORP. 022', '', 'CORPORATE', '2658', 'Old Desktop Clone - Cebu', '0000-00-00 00:00:00', '', '', '', 'GOOD', '1', 0),
(602, 'CORP. 023', '', 'CORPORATE', 'NXVGQSP011937007957200', 'ACER TMP2410-G2-MG-54HX', '0000-00-00 00:00:00', 'Gian', '', '', 'GOOD', '1', 0),
(603, 'CORP. 024', '', 'CORPORATE', 'JT009A00F00JMP8HUYCA', 'THUNDERROBOT 911M16', '0000-00-00 00:00:00', 'Levi', '', '', 'GOOD', '1', 0),
(604, 'CORP.025', '', 'CORPORATE', 'JB0BN000000JMPCFJ784', 'THUNDERROBOT 911MT', '0000-00-00 00:00:00', 'Leemar', '', '', 'GOOD', '1', 0),
(605, 'CORP.026', '', 'CORPORATE', 'JT009Z00S00JMM8UAW9M', 'THUNDERROBOT IGER E1', '0000-00-00 00:00:00', 'Tim', '', '', 'GOOD', '1', 0),
(606, 'CORP.027', '', 'CORPORATE', 'NXGFSSP0098110E0937600', 'ACER ES1-432-P0KC', '0000-00-00 00:00:00', 'Liza', '', '', 'GOOD', '1', 0),
(607, 'CORP.028', '', 'CORPORATE', 'NXGYBSP001817018170A6733400', 'ACER A316-41G-R5U3', '0000-00-00 00:00:00', 'Irene', '', '', 'GOOD', '1', 0),
(608, 'CORP.029', '', 'CORPORATE', 'NXVEASP0087033302E7600', 'ACER TMP249-G2-MG-33HL', '0000-00-00 00:00:00', 'Sherilyn', '', '', 'GOOD', '1', 0),
(609, 'CORP.030', '', 'CORPORATE', 'JT0009Q00200JMM8SUY8G', 'THUNDERROBOT IGER E1', '0000-00-00 00:00:00', 'Ryan T', '', '', 'GOOD', '1', 0),
(610, 'CORP.031', '', 'CORPORATE', '34100948796', 'ACER VERITON', '0000-00-00 00:00:00', 'OJT admin-Unit', '', '', 'GOOD', '1', 0),
(611, 'CORP.032', '', 'CORPORATE', 'HDP238CZ21081101117', 'GAMDIAS ATLAS VHD 238C', '0000-00-00 00:00:00', 'OJT admin-Monitor', '', '', 'GOOD', '1', 0),
(612, 'CORP.033', '', 'CORPORATE', 'C3PECJ001171', 'ASUS all-in-one PC', '0000-00-00 00:00:00', 'OJT admin-Monitor', '', '', 'GOOD', '1', 0),
(613, 'CORP.034', '', 'CORPORATE', 'JT009Z00S00JMM8UA845', 'THUNDERROBOT IGER E1', '0000-00-00 00:00:00', 'Jessa', '', '', 'GOOD', '1', 0),
(614, 'CORP.035', '', 'CORPORATE', '44700373796', 'ACER VERITON X4630G(VX4630G_E2)', '0000-00-00 00:00:00', 'Jovi', '', '', 'GOOD', '1', 0),
(615, 'CORP.036', '', 'CORPORATE', '7818ABBA001187', 'ENVISION P951wa+', '0000-00-00 00:00:00', 'Jovi', '', '', 'GOOD', '1', 0),
(616, 'CORP.037', '', 'CORPORATE', 'NXVPNSP07521406D527600', 'ACER TMP214-53-54TU', '0000-00-00 00:00:00', 'Odi', '', '', 'GOOD', '1', 0),
(617, 'CORP.038', '', 'CORPORATE', 'NXV9USP023537205F47600', 'ACER TMP246-MG-31P1', '0000-00-00 00:00:00', 'She', '', '', 'GOOD', '1', 0),
(618, 'CORP.039', '', 'CORPORATE', 'JT009Z00S00JMM8UB9QK', 'IGER E1', '0000-00-00 00:00:00', 'Noida', '', '', 'GOOD', '1', 0),
(619, 'CORP.040', '', 'CORPORATE', 'JT009Q00200JMM7MX3QC', 'IGER E1', '0000-00-00 00:00:00', 'William', '', 'Vera', 'GOOD', '1', 0),
(620, 'CORP.041', '', 'CORPORATE', 'JT009Q00200JMM8SZ61W', 'THNUNDEROBOT IGER E1 I3', '0000-00-00 00:00:00', 'Amorsolo', '', 'Meija', 'GOOD', '1', 0),
(621, 'CORP.042', '', 'CORPORATE', 'JT009Q00200JMM8SMRG9', 'THUNDEROBOT IGER1', '0000-00-00 00:00:00', 'Jennifer', '', 'Leoncio', 'GOOD', '1', 0),
(622, 'CORP.043', '', 'CORPORATE', 'JT009D00600JMN1TQZ0K', 'THUNDEROBOT', '0000-00-00 00:00:00', 'Michael Angelo', '', 'Boncodin', 'GOOD', '1', 0),
(623, 'CORP.044', '', 'CORPORATE', 'JT009Q00200JMM8SSUMN', 'THUNDEROBOT IGER1', '0000-00-00 00:00:00', 'Billie John', '', 'Libao', 'GOOD', '1', 0),
(624, 'CORP.045', '', 'CORPORATE', 'JT009Z00S00JMM89TYWA', 'THNUNDEROBOT IGER E1 ', '0000-00-00 00:00:00', 'Catherine', '', 'Ta?edo', 'GOOD', '1', 0),
(625, 'CORP.046', '', 'CORPORATE', 'NXVGTSP04592401BAD7200', 'TRAVELMATE P2410-G2-M', '0000-00-00 00:00:00', 'Karla', '', 'Usita', 'GOOD', '1', 0),
(626, 'CORP.047', '', 'CORPORATE', 'NXHUQSP005113008FB2N00', 'ACER ASPIRE A514-53', '0000-00-00 00:00:00', 'Jhulles', '', '', 'GOOD', '1', 0),
(627, 'CORP.048', '', 'CORPORATE', 'NXEFASP00271501D706600', 'ACER EX2519-C49F', '0000-00-00 00:00:00', 'Efjay', '', 'Manalastas', 'GOOD', '1', 0),
(628, 'CORP.049', '', 'CORPORATE', 'D20501966', 'HIKVISION INTERACTIVE TABLET', '0000-00-00 00:00:00', 'ADMIN', '', '', 'GOOD', '1', 0),
(629, 'CORP.050', '', 'CORPORATE', 'AH0803784', 'HIKVISION INTERACTIVE FLAT PANEL', '0000-00-00 00:00:00', 'ADMIN', '', '', 'GOOD', '1', 0);

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
  `quantity` varchar(50) NOT NULL,
  `cost` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_archive`
--

INSERT INTO `tbl_archive` (`ID`, `company_code`, `assigned_to`, `location_n`, `model_description`, `serial_number`, `added_at`, `firstname`, `middlename`, `surname`, `con_dition`, `quantity`, `cost`) VALUES
(631, 'company_code', 'assigned_to', 'location_n', 'model_description', 'serial_number', '0000-00-00 00:00:00', 'firstname', 'middlename', 'surname', 'con_dition', 'quantity', 0),
(632, 'company_code', 'assigned_to', 'firstname', 'middlename', 'surname', '0000-00-00 00:00:00', 'model_description', 'serial_number', 'quantity', 'con_dition', 'added_at', 0),
(633, '2541NASDASE2', '2131231', 'ACCOUNTING', '2311NXN2N13N213NX', '3213564N6N54542322', '2024-11-07 21:11:36', 'Jayrald', 'Lato', 'Pelegrinos', 'GOOD', '2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `username`, `password`, `name`, `role`, `email`) VALUES
(1, 'user', 'user', 'Jayrald Pelegrino', 'user', '0'),
(2, 'admin', 'default', 'Administrator', 'admin', 'jayraldpelegrino26@gmail.com'),
(11, 'joseph', 'default', 'Joseph Espiritu (Admin)', 'admin', 'pelegrinojayrald@gmail.com');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=634;

--
-- AUTO_INCREMENT for table `tbl_archive`
--
ALTER TABLE `tbl_archive`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=634;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
