-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 04 Décembre 2017 à 22:50
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pagreit3_verifik8`
--
CREATE DATABASE IF NOT EXISTS `pagreit3_verifik8` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pagreit3_verifik8`;

-- --------------------------------------------------------

--
-- Structure de la table `cl_commodities`
--

DROP TABLE IF EXISTS `cl_commodities`;
CREATE TABLE `cl_commodities` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CPC_CODE` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `HS_CODE` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of phytosanitary products';

--
-- Contenu de la table `cl_commodities`
--

INSERT INTO `cl_commodities` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `CPC_CODE`, `HS_CODE`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, '0156', 'Sugar Cane', 'Sugar cane - Saccharum officinarum', '0182', '1212.99', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-09-23 10:16:35', '2017-09-23 10:16:35');

-- --------------------------------------------------------

--
-- Structure de la table `cl_company_position_types`
--

DROP TABLE IF EXISTS `cl_company_position_types`;
CREATE TABLE `cl_company_position_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_company_position_types`
--

INSERT INTO `cl_company_position_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'CEO', 'Company CEO', 'Company CEO', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2016-11-13 15:17:13', '2017-09-12 13:26:58'),
(2, 1, 'OWN', 'Company Owner', 'Small Company Owner', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2016-11-13 15:18:30', '2017-09-12 13:26:58'),
(3, 1, 'PROD', 'Production Manager', 'Production Manager', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2016-11-13 15:18:30', '2017-09-12 13:26:58'),
(4, 1, 'SALES', 'Sales Manager', 'Sales Manager', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2016-11-13 21:08:54', '2017-09-12 13:26:58'),
(5, 1, 'WORK', 'Worker', 'Worker', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2016-11-13 21:08:54', '2017-09-12 13:26:58');

-- --------------------------------------------------------

--
-- Structure de la table `cl_contract_types`
--

DROP TABLE IF EXISTS `cl_contract_types`;
CREATE TABLE `cl_contract_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='type of contracts';

--
-- Contenu de la table `cl_contract_types`
--

INSERT INTO `cl_contract_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'ORAL', 'ORAL', 'ORAL', '1', NULL, '2017-11-04 17:53:42', '2017-11-04 17:53:42'),
(2, 1, 'WRITTEN', 'WRITTEN', 'WRITTEN', '1', NULL, '2017-11-04 17:53:42', '2017-11-04 17:53:42');

-- --------------------------------------------------------

--
-- Structure de la table `cl_countries`
--

DROP TABLE IF EXISTS `cl_countries`;
CREATE TABLE `cl_countries` (
  `ID` int(11) NOT NULL COMMENT 'The COUNTRIES codelist ID',
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` char(2) CHARACTER SET utf8 NOT NULL,
  `ISO_3_CODE` char(3) CHARACTER SET utf8 DEFAULT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(128) CHARACTER SET utf8 NOT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='The COUNTRIES codelist';

--
-- Contenu de la table `cl_countries`
--

INSERT INTO `cl_countries` (`ID`, `ENABLED`, `CODE`, `ISO_3_CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'AM', 'ARM', 'Armenia', 'the Republic of Armenia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(2, 1, 'AF', 'AFG', 'Afghanistan', 'the Islamic Republic of Afghanistan', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(3, 1, 'AL', 'ALB', 'Albania', 'the Republic of Albania', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(4, 1, 'DZ', 'DZA', 'Algeria', 'the People\'s Democratic Republic of Algeria', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(5, 1, 'AS', 'ASM', 'American Samoa', 'American Samoa', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(6, 1, 'AD', 'AND', 'Andorra', 'the Principality of Andorra', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(7, 1, 'AO', 'AGO', 'Angola', 'the Republic of Angola', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(8, 1, 'AG', 'ATG', 'Antigua and Barbuda', 'Antigua and Barbuda', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(9, 1, 'AR', 'ARG', 'Argentina', 'the Argentine Republic', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(10, 1, 'AU', 'AUS', 'Australia', 'Australia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(11, 1, 'AT', 'AUT', 'Austria', 'the Republic of Austria', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(12, 1, 'BS', 'BHS', 'Bahamas', 'the Commonwealth of the Bahamas', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(13, 1, 'BH', 'BHR', 'Bahrain', 'the Kingdom of Bahrain', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(14, 1, 'BB', 'BRB', 'Barbados', 'Barbados', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(15, 1, 'BD', 'BGD', 'Bangladesh', 'the People\'s Republic of Bangladesh', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(16, 1, 'BM', 'BMU', 'Bermuda', 'Bermuda', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(17, 1, 'BT', 'BTN', 'Bhutan', 'the Kingdom of Bhutan', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(18, 1, 'BO', 'BOL', 'Bolivia (Plurinational State of)', 'the Plurinational State of Bolivia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(19, 1, 'BW', 'BWA', 'Botswana', 'the Republic of Botswana', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(20, 1, 'BR', 'BRA', 'Brazil', 'the Federative Republic of Brazil', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(21, 1, 'AW', 'ABW', 'Aruba', 'Aruba', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(22, 1, 'BZ', 'BLZ', 'Belize', 'Belize', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(23, 1, 'IO', 'IOT', 'British Indian Ocean Territory', 'British Indian Ocean Territory', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(24, 1, 'SB', 'SLB', 'Solomon Islands', 'Solomon Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(25, 1, 'BN', 'BRN', 'Brunei Darussalam', 'Brunei Darussalam', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(26, 1, 'BG', 'BGR', 'Bulgaria', 'the Republic of Bulgaria', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(27, 1, 'MM', 'MMR', 'Myanmar', 'the Republic of the Union of Myanmar', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(28, 1, 'BI', 'BDI', 'Burundi', 'the Republic of Burundi', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(29, 1, 'AQ', 'ATA', 'Antarctica', 'Antarctica', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(30, 1, 'BV', 'BVT', 'Bouvet Island', 'Bouvet Island', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(31, 1, 'CM', 'CMR', 'Cameroon', 'the Republic of Cameroon', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(32, 1, 'CA', 'CAN', 'Canada', 'Canada', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(33, 1, 'CV', 'CPV', 'Cape Verde', 'the Republic of Cape Verde', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(34, 1, 'KY', 'CYM', 'Cayman Islands', 'Cayman Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(35, 1, 'CF', 'CAF', 'Central African Republic', 'the Central African Republic', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(36, 1, 'LK', 'LKA', 'Sri Lanka', 'the Democratic Socialist Republic of Sri Lanka', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(37, 1, 'TD', 'TCD', 'Chad', 'the Republic of Chad', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(38, 1, 'CL', 'CHL', 'Chile', 'the Republic of Chile', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(39, 1, 'CN', 'CHN', 'China', 'the People\'s Republic of China', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(40, 1, 'CX', 'CXR', 'Christmas Island', 'Christmas Island', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(41, 1, 'CC', 'CCK', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(42, 1, 'CO', 'COL', 'Colombia', 'the Republic of Colombia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(43, 1, 'KM', 'COM', 'Comoros', 'the Union of the Comoros', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(44, 1, 'CG', 'COG', 'Congo', 'the Republic of the Congo', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(45, 1, 'CK', 'COK', 'Cook Islands', 'the Cook Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(46, 1, 'CR', 'CRI', 'Costa Rica', 'the Republic of Costa Rica', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(47, 1, 'CU', 'CUB', 'Cuba', 'the Republic of Cuba', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(48, 1, 'CY', 'CYP', 'Cyprus', 'the Republic of Cyprus', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(49, 1, 'AZ', 'AZE', 'Azerbaijan', 'the Republic of Azerbaijan', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(50, 1, 'BJ', 'BEN', 'Benin', 'the Republic of Benin', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(51, 1, 'DK', 'DNK', 'Denmark', 'the Kingdom of Denmark', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(52, 1, 'DM', 'DMA', 'Dominica', 'the Commonwealth of Dominica', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(53, 1, 'DO', 'DOM', 'Dominican Republic', 'the Dominican Republic', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(54, 1, 'BY', 'BLR', 'Belarus', 'the Republic of Belarus', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(55, 1, 'EC', 'ECU', 'Ecuador', 'the Republic of Ecuador', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(56, 1, 'EG', 'EGY', 'Egypt', 'the Arab Republic of Egypt', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(57, 1, 'SV', 'SLV', 'El Salvador', 'the Republic of El Salvador', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(58, 1, 'GQ', 'GNQ', 'Equatorial Guinea', 'the Republic of Equatorial Guinea', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(59, 1, 'EE', 'EST', 'Estonia', 'the Republic of Estonia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(60, 1, 'FO', 'FRO', 'Faroe Islands (Associate Member)', 'Faroe Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(61, 1, 'FK', 'FLK', 'Falkland Islands (Malvinas)', 'the Falkland Islands (Malvinas)', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(62, 1, 'FJ', 'FJI', 'Fiji', 'the Republic of Fiji', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(63, 1, 'FI', 'FIN', 'Finland', 'the Republic of Finland', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(64, 1, 'FR', 'FRA', 'France', 'the French Republic', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(65, 1, 'GF', 'GUF', 'French Guiana', 'French Guiana', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(66, 1, 'PF', 'PYF', 'French Polynesia', 'French Polynesia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(67, 1, 'TF', 'ATF', 'French Southern and Antarctic Territories', 'French Southern and Antarctic Territories', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(68, 1, 'DJ', 'DJI', 'Djibouti', 'the Republic of Djibouti', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(69, 1, 'GE', 'GEO', 'Georgia', 'Georgia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(70, 1, 'GA', 'GAB', 'Gabon', 'the Gabonese Republic', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(71, 1, 'GM', 'GMB', 'Gambia', 'the Republic of the Gambia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(72, 1, 'DE', 'DEU', 'Germany', 'the Federal Republic of Germany', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(73, 1, 'BA', 'BIH', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(74, 1, 'GH', 'GHA', 'Ghana', 'the Republic of Ghana', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(75, 1, 'GI', 'GIB', 'Gibraltar', 'Gibraltar', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(76, 1, 'KI', 'KIR', 'Kiribati', 'the Republic of Kiribati', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(77, 1, 'GR', 'GRC', 'Greece', 'the Hellenic Republic', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(78, 1, 'GL', 'GRL', 'Greenland', 'Greenland', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(79, 1, 'GD', 'GRD', 'Grenada', 'Grenada', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(80, 1, 'GP', 'GLP', 'Guadeloupe', 'Guadeloupe', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(81, 1, 'GU', 'GUM', 'Guam', 'Guam', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(82, 1, 'GT', 'GTM', 'Guatemala', 'the Republic of Guatemala', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(83, 1, 'GN', 'GIN', 'Guinea', 'the Republic of Guinea', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(84, 1, 'GY', 'GUY', 'Guyana', 'the Republic of Guyana', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(85, 1, 'HM', 'HMD', 'Heard and McDonald Islands', 'Heard Island and McDonald Island', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(86, 1, 'HT', 'HTI', 'Haiti', 'the Republic of Haiti', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(87, 1, 'VA', 'VAT', 'Holy See', 'Holy see', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(88, 1, 'HN', 'HND', 'Honduras', 'the Republic of Honduras', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(89, 1, 'HK', 'HKG', 'China, Hong Kong SAR', 'China, Hong Kong Special Administrative Region', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(90, 1, 'HU', 'HUN', 'Hungary', 'Hungary', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(91, 1, 'HR', 'HRV', 'Croatia', 'the Republic of Croatia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(92, 1, 'IS', 'ISL', 'Iceland', 'the Republic of Iceland', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(93, 1, 'IN', 'IND', 'India', 'the Republic of India', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(94, 1, 'ID', 'IDN', 'Indonesia', 'the Republic of Indonesia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(95, 1, 'IR', 'IRN', 'Iran (Islamic Republic of)', 'the Islamic Republic of Iran', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(96, 1, 'IQ', 'IRQ', 'Iraq', 'the Republic of Iraq', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(97, 1, 'IE', 'IRL', 'Ireland', 'Ireland', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(98, 1, 'IL', 'ISR', 'Israel', 'the State of Israel', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(99, 1, 'IT', 'ITA', 'Italy', 'the Republic of Italy', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(100, 1, 'CI', 'CIV', 'Côte d\'Ivoire', 'the Republic of Côte d\'Ivoire', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(101, 1, 'KZ', 'KAZ', 'Kazakhstan', 'the Republic of Kazakhstan', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(102, 1, 'JM', 'JAM', 'Jamaica', 'Jamaica', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(103, 1, 'JP', 'JPN', 'Japan', 'Japan', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(104, 1, 'JT', 'JTN', 'Johnston Island', 'Johnston Island', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(105, 1, 'JO', 'JOR', 'Jordan', 'the Hashemite Kingdom of Jordan', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(106, 1, 'KG', 'KGZ', 'Kyrgyzstan', 'the Kyrgyz Republic', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(107, 1, 'KE', 'KEN', 'Kenya', 'the Republic of Kenya', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(108, 1, 'KH', 'KHM', 'Cambodia', 'the Kingdom of Cambodia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(109, 1, 'KP', 'PRK', 'Democratic People\'s Republic of Korea', 'the Democratic People\'s Republic of Korea', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(110, 1, 'KR', 'KOR', 'Republic of Korea', 'the Republic of Korea', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(111, 1, 'KW', 'KWT', 'Kuwait', 'the State of Kuwait', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(112, 1, 'LV', 'LVA', 'Latvia', 'the Republic of Latvia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(113, 1, 'LA', 'LAO', 'Lao People\'s Democratic Republic', 'the Lao People\'s Democratic Republic', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(114, 1, 'LB', 'LBN', 'Lebanon', 'the Lebanese Republic', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(115, 1, 'LS', 'LSO', 'Lesotho', 'the Kingdom of Lesotho', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(116, 1, 'LR', 'LBR', 'Liberia', 'the Republic of Liberia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(117, 1, 'LY', 'LBY', 'Libya', 'Libya', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(118, 1, 'LI', 'LIE', 'Liechtenstein', 'the Principality of Liechtenstein', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(119, 1, 'LT', 'LTU', 'Lithuania', 'the Republic of Lithuania', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(120, 1, 'MH', 'MHL', 'Marshall Islands', 'the Republic of the Marshall Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(121, 1, 'MO', 'MAC', 'China, Macao SAR', 'China, Macao Special Administrative Region', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(122, 1, 'MG', 'MDG', 'Madagascar', 'the Republic of Madagascar', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(123, 1, 'MW', 'MWI', 'Malawi', 'the Republic of Malawi', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(124, 1, 'MY', 'MYS', 'Malaysia', 'Malaysia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(125, 1, 'MV', 'MDV', 'Maldives', 'the Republic of Maldives', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(126, 1, 'ML', 'MLI', 'Mali', 'the Republic of Mali', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(127, 1, 'MT', 'MLT', 'Malta', 'the Republic of Malta', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(128, 1, 'MQ', 'MTQ', 'Martinique', 'Martinique', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(129, 1, 'MR', 'MRT', 'Mauritania', 'the Islamic Republic of Mauritania', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(130, 1, 'MU', 'MUS', 'Mauritius', 'the Republic of Mauritius', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(131, 1, 'MX', 'MEX', 'Mexico', 'the United Mexican States', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(132, 1, 'MI', 'MID', 'Midway Islands', 'Midway Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(133, 1, 'MC', 'MCO', 'Monaco', 'the Principality of Monaco', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(134, 1, 'MN', 'MNG', 'Mongolia', 'Mongolia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(135, 1, 'MS', 'MSR', 'Montserrat', 'Montserrat', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(136, 1, 'MA', 'MAR', 'Morocco', 'the Kingdom of Morocco', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(137, 1, 'MZ', 'MOZ', 'Mozambique', 'the Republic of Mozambique', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(138, 1, 'FM', 'FSM', 'Micronesia (Federated States of)', 'the Federated States of Micronesia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(139, 1, 'MD', 'MDA', 'Republic of Moldova', 'the Republic of Moldova', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(140, 1, 'NA', 'NAM', 'Namibia', 'the Republic of Namibia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(141, 1, 'NR', 'NRU', 'Nauru', 'the Republic of Nauru', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(142, 1, 'NP', 'NPL', 'Nepal', 'the Federal Democratic Republic of Nepal', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(143, 1, 'NL', 'NLD', 'Netherlands', 'the Kingdom of the Netherlands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(144, 1, 'AN', 'ANT', 'Netherlands Antilles', 'Netherlands Antilles', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(145, 1, 'NC', 'NCL', 'New Caledonia', 'New Caledonia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(146, 1, 'MK', 'MKD', 'The former Yugoslav Republic of Macedonia', 'The former Yugoslav Republic of Macedonia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(147, 1, 'VU', 'VUT', 'Vanuatu', 'the Republic of Vanuatu', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(148, 1, 'NZ', 'NZL', 'New Zealand', 'New Zealand', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(149, 1, 'NI', 'NIC', 'Nicaragua', 'the Republic of Nicaragua', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(150, 1, 'NE', 'NER', 'Niger', 'the Republic of the Niger', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(151, 1, 'NG', 'NGA', 'Nigeria', 'the Federal Republic of Nigeria', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(152, 1, 'NU', 'NIU', 'Niue', 'Niue', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(153, 1, 'NF', 'NFK', 'Norfolk Island', 'Territory of Norfolk Island', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(154, 1, 'NO', 'NOR', 'Norway', 'the Kingdom of Norway', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(155, 1, 'MP', 'MNP', 'Northern Mariana Islands', 'The Commonwealth of the Northern Mariana Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(156, 1, 'PK', 'PAK', 'Pakistan', 'the Islamic Republic of Pakistan', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(157, 1, 'PA', 'PAN', 'Panama', 'the Republic of Panama', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(158, 1, 'CZ', 'CZE', 'Czech Republic', 'the Czech Republic', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(159, 1, 'PG', 'PNG', 'Papua New Guinea', 'Papua New Guinea', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(160, 1, 'PY', 'PRY', 'Paraguay', 'the Republic of Paraguay', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(161, 1, 'PE', 'PER', 'Peru', 'the Republic of Peru', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(162, 1, 'PH', 'PHL', 'Philippines', 'the Republic of the Philippines', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(163, 1, 'PL', 'POL', 'Poland', 'the Republic of Poland', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(164, 1, 'PT', 'PRT', 'Portugal', 'the Portuguese Republic', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(165, 1, 'GW', 'GNB', 'Guinea-Bissau', 'the Republic of Guinea-Bissau', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(166, 1, 'TL', 'TLS', 'Timor-Leste', 'the Democratic Republic of Timor-Leste', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(167, 1, 'PR', 'PRI', 'Puerto Rico', 'the Commonwealth of Puerto Rico', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(168, 1, 'ER', 'ERI', 'Eritrea', 'Eritrea', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(169, 1, 'QA', 'QAT', 'Qatar', 'the State of Qatar', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(170, 1, 'PW', 'PLW', 'Palau', 'the Republic of Palau', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(171, 1, 'ZW', 'ZWE', 'Zimbabwe', 'the Republic of Zimbabwe', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(172, 1, 'RE', 'REU', 'Réunion', 'Réunion', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(173, 1, 'RO', 'ROU', 'Romania', 'Romania', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(174, 1, 'RW', 'RWA', 'Rwanda', 'the Republic of Rwanda', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(175, 1, 'RU', 'RUS', 'Russian Federation', 'the Russian Federation', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(176, 1, 'CS', 'SCG', 'Serbia and Montenegro', 'Serbia and Montenegro', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(177, 1, 'SH', 'SHN', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(178, 1, 'KN', 'KNA', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(179, 1, 'LC', 'LCA', 'Saint Lucia', 'Saint Lucia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(180, 1, 'PM', 'SPM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(181, 1, 'VC', 'VCT', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(182, 1, 'SM', 'SMR', 'San Marino', 'the Republic of San Marino', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(183, 1, 'ST', 'STP', 'Sao Tome and Principe', 'the Democratic Republic of Sao Tome and Principe', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(184, 1, 'SA', 'SAU', 'Saudi Arabia', 'the Kingdom of Saudi Arabia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(185, 1, 'SN', 'SEN', 'Senegal', 'the Republic of Senegal', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(186, 1, 'SC', 'SYC', 'Seychelles', 'the Republic of Seychelles', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(187, 1, 'SL', 'SLE', 'Sierra Leone', 'the Republic of Sierra Leone', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(188, 1, 'SI', 'SVN', 'Slovenia', 'the Republic of Slovenia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(189, 1, 'SK', 'SVK', 'Slovakia', 'the Slovak Republic', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(190, 1, 'SG', 'SGP', 'Singapore', 'the Republic of Singapore', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(191, 1, 'SO', 'SOM', 'Somalia', 'the Somali Republic', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(192, 1, 'ZA', 'ZAF', 'South Africa', 'the Republic of South Africa', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(193, 1, 'ES', 'ESP', 'Spain', 'the Kingdom of Spain', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(194, 1, 'EH', 'ESH', 'Western Sahara', 'Western Sahara', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(195, 1, 'SD', 'SDN', 'Sudan', 'the Republic of the Sudan', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(196, 1, 'SR', 'SUR', 'Suriname', 'the Republic of Suriname', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(197, 1, 'TJ', 'TJK', 'Tajikistan', 'the Republic of Tajikistan', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(198, 1, 'SZ', 'SWZ', 'Swaziland', 'the Kingdom of Swaziland', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(199, 1, 'SE', 'SWE', 'Sweden', 'the Kingdom of Sweden', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(200, 1, 'CH', 'CHE', 'Switzerland', 'the Swiss Confederation', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(201, 1, 'SY', 'SYR', 'Syrian Arab Republic', 'the Syrian Arab Republic', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(202, 1, 'TM', 'TKM', 'Turkmenistan', 'Turkmenistan', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(203, 1, 'TW', 'TWN', 'Chinese Taipei', 'Chinese Taipei', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(204, 1, 'TZ', 'TZA', 'United Republic of Tanzania', 'the United Republic of Tanzania', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(205, 1, 'TH', 'THA', 'Thailand', 'the Kingdom of Thailand', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(206, 1, 'TG', 'TGO', 'Togo', 'the Togolese Republic', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(207, 1, 'TK', 'TKL', 'Tokelau (Associate Member)', 'Tokelau', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(208, 1, 'TO', 'TON', 'Tonga', 'the Kingdom of Tonga', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(209, 1, 'TT', 'TTO', 'Trinidad and Tobago', 'the Republic of Trinidad and Tobago', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(210, 1, 'OM', 'OMN', 'Oman', 'the Sultanate of Oman', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(211, 1, 'TN', 'TUN', 'Tunisia', 'the Republic of Tunisia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(212, 1, 'TR', 'TUR', 'Turkey', 'the Republic of Turkey', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(213, 1, 'TC', 'TCA', 'Turks and Caicos Islands', 'Turks and Caicos Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(214, 1, 'AE', 'ARE', 'United Arab Emirates', 'the United Arab Emirates', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(215, 1, 'UG', 'UGA', 'Uganda', 'the Republic of Uganda', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(216, 1, 'TV', 'TUV', 'Tuvalu', 'Tuvalu', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(217, 1, 'SU', 'SUN', 'Russia', 'Un. Sov. Soc. Rep.', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(218, 1, 'GB', 'GBR', 'United Kingdom', 'the United Kingdom of Great Britain and Northern Ireland', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(219, 1, 'UA', 'UKR', 'Ukraine', 'Ukraine', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(220, 1, 'US', 'USA', 'United States of America', 'the United States of America', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(221, 1, 'UM', 'UMI', 'US Minor Is.', 'US Minor Outlying Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(222, 1, 'BF', 'BFA', 'Burkina Faso', 'Burkina Faso', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(223, 1, 'UY', 'URY', 'Uruguay', 'the Eastern Republic of Uruguay', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(224, 1, 'UZ', 'UZB', 'Uzbekistan', 'the Republic of Uzbekistan', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(225, 1, 'VE', 'VEN', 'Venezuela (Bolivarian Republic of)', 'the Bolivarian Republic of Venezuela', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(226, 1, 'VN', 'VNM', 'Viet Nam', 'the Socialist Republic of Viet Nam', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(227, 1, 'ET', 'ETH', 'Ethiopia', 'the Federal Democratic Republic of Ethiopia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(228, 1, 'VG', 'VGB', 'British Virgin Islands', 'the British Virgin Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(229, 1, 'VI', 'VIR', 'United States Virgin Islands', 'the United States Virgin Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(230, 1, 'WK', 'WAK', 'Wake Island', 'Wake Island', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(231, 1, 'WF', 'WLF', 'Wallis and Futuna Islands', 'Wallis and Futuna Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(232, 1, 'WS', 'WSM', 'Samoa', 'the Independent State of Samoa', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(233, 1, 'YE', 'YEM', 'Yemen', 'the Republic of Yemen', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(234, 1, 'CD', 'COD', 'Democratic Republic of the Congo', 'the Democratic Republic of the Congo', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(235, 1, 'ZM', 'ZMB', 'Zambia', 'the Republic of Zambia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(236, 1, 'BE', 'BEL', 'Belgium', 'the Kingdom of Belgium', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(237, 1, 'LU', 'LUX', 'Luxembourg', 'the Grand Duchy of Luxembourg', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(238, 1, 'AI', 'AIA', 'Anguilla', 'Anguilla', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(239, 1, 'SJ', 'SJM', 'Svalbard and Jan Mayen Islands', 'Svalbard and Jan Mayen Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(240, 1, 'IM', 'IMN', 'Isle of Man', 'Isle of Man', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(241, 1, 'YT', 'MYT', 'Mayotte', 'Mayotte', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(242, 1, 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(243, 1, 'RS', 'SRB', 'Serbia', 'Serbia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(244, 1, 'ME', 'MNE', 'Montenegro', 'Montenegro', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(245, 1, 'PS', 'PSE', 'Palestine', 'Palestine', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(246, 1, 'DD', 'DDR', 'German Democratic Republic', 'German Democratic Republic', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(247, 1, 'YU', 'YUG', 'Yugoslavia', 'Socialist Federal Republic of Yugoslavia', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(248, 1, 'AX', 'ALA', 'Åland Islands', 'Åland Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(249, 1, 'BQ', 'BES', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(250, 1, 'CW', 'CUW', 'Curaçao', 'Curaçao', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(251, 1, 'GG', 'GGY', 'Guernsey', 'Bailiwick of Guernsey', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(252, 1, 'JE', 'JEY', 'Jersey', 'Bailiwick of Jersey', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(253, 1, 'PN', 'PNC', 'Pitcairn Islands', 'Pitcairn Islands', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(254, 1, 'BL', 'BLM', 'Saint Barthélemy', 'Saint Barthélemy', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(255, 1, 'MF', 'MAF', 'Saint-Martin (French Part)', 'Saint-Martin (French Part)', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(256, 1, 'SX', 'SXM', 'Sint Maarten (Dutch Part)', 'Sint Maarten (Dutch Part)', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(257, 1, 'SS', 'SSD', 'South Sudan', 'the Republic of South Sudan', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(258, 1, 'UN', 'UNK', 'Unknown / Not set', 'Unknown / Not set', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(259, 1, 'EU', 'EUR', 'European Union', 'European Union', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59');

-- --------------------------------------------------------

--
-- Structure de la table `cl_currencies`
--

DROP TABLE IF EXISTS `cl_currencies`;
CREATE TABLE `cl_currencies` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='type of contracts';

--
-- Contenu de la table `cl_currencies`
--

INSERT INTO `cl_currencies` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'BAHT', 'บาท/Baht', 'บาท/Baht', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-11-27 17:41:31', '2017-11-27 17:41:31'),
(2, 1, 'USD', 'ดอลลาร์สหรัฐ/US Dollar', 'USD', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-11-23 19:24:58', '2017-11-23 19:24:58'),
(3, 1, 'EUR', 'ยูโร/Euro', 'ยูโร/Euro', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-11-23 19:24:58', '2017-11-23 19:24:58');

-- --------------------------------------------------------

--
-- Structure de la table `cl_entity_types`
--

DROP TABLE IF EXISTS `cl_entity_types`;
CREATE TABLE `cl_entity_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `IS_COMPANY` tinyint(1) NOT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_entity_types`
--

INSERT INTO `cl_entity_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `IS_COMPANY`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'IND', 'Individual', NULL, '', NULL, NULL, NULL, NULL, NULL, 0, '1', NULL, '2014-12-31 21:00:00', '2017-09-12 13:28:43'),
(2, 1, 'FARM', 'Any type of farm', NULL, '', NULL, NULL, NULL, NULL, NULL, 0, '1', NULL, '2016-10-03 11:03:11', '2017-09-12 13:28:43'),
(5, 1, 'COOP', 'Cooperative', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43'),
(6, 1, 'FM', 'Feed Mill', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, '2017-09-12 13:28:43', '2017-09-12 13:28:43'),
(7, 1, 'LAB', 'Laboratory', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, '2017-09-12 13:28:43', '2017-09-12 13:28:43'),
(8, 1, 'COM', 'Commercial company', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43'),
(9, 1, 'GOV', 'Government Institution', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43'),
(10, 1, 'ONG', 'Non-Governmental Organization', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43'),
(99, 1, 'SYS', 'System-related entity', NULL, '', NULL, NULL, NULL, NULL, NULL, 0, '1', NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43');

-- --------------------------------------------------------

--
-- Structure de la table `cl_farm_building_types`
--

DROP TABLE IF EXISTS `cl_farm_building_types`;
CREATE TABLE `cl_farm_building_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_farm_types`
--

DROP TABLE IF EXISTS `cl_farm_types`;
CREATE TABLE `cl_farm_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_farm_types`
--

INSERT INTO `cl_farm_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'FARMAQ', 'Aquaculture Farm (growing)', NULL, '1', NULL, '2016-10-03 11:03:11', '2017-09-12 13:28:43'),
(2, 1, 'FARMAQ-H', 'Aquaculture Hatchery', NULL, '1', NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43'),
(3, 1, 'FARMAQ-M', 'Aquaculture Farm growing and hatchery', NULL, '1', NULL, '2016-10-03 11:05:46', '2017-09-12 13:28:43'),
(4, 1, 'FARMSUG', 'Sugar Farm', 'Sugar Farm production', '1', NULL, '2016-10-18 17:42:16', '2017-09-12 13:28:43');

-- --------------------------------------------------------

--
-- Structure de la table `cl_hazardous_work_type`
--

DROP TABLE IF EXISTS `cl_hazardous_work_type`;
CREATE TABLE `cl_hazardous_work_type` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of hazardous work type';

--
-- Contenu de la table `cl_hazardous_work_type`
--

INSERT INTO `cl_hazardous_work_type` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'SUGHARV', 'Sugar Cane harvester', 'Sugar Cane harvester', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-09-23 10:18:02', '2017-09-23 10:18:02'),
(2, 1, 'MANCUT', 'Manual Cutting', 'Manual Cutting', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-11-28 13:35:34', '2017-11-28 13:35:34'),
(3, 1, 'PESTSP', 'Pesticides Spraying', 'Pesticides Spraying', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-11-28 13:43:12', '2017-11-28 13:43:12'),
(4, 1, 'MECHTIL', 'Mechanical tillage', 'Mechanical tillage', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-11-28 13:43:12', '2017-11-28 13:43:12'),
(5, 1, 'FERT', 'Fertilizer Use', 'Fertilizer Use', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-11-28 13:43:12', '2017-11-28 13:43:12');

-- --------------------------------------------------------

--
-- Structure de la table `cl_hvhe_expension_types`
--

DROP TABLE IF EXISTS `cl_hvhe_expension_types`;
CREATE TABLE `cl_hvhe_expension_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `CL_COUNTRY_ID` int(11) NOT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_hvhe_expension_types`
--

INSERT INTO `cl_hvhe_expension_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `CL_COUNTRY_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'POND', 'New Pond', 'Creation of new pond', '', NULL, NULL, NULL, NULL, NULL, 235, '1', NULL, '2016-11-13 20:10:38', '2017-09-12 13:29:31'),
(2, 1, 'CANAL', 'Canal creation', 'Canal creation', '', NULL, NULL, NULL, NULL, NULL, 235, '1', NULL, '2016-11-13 20:25:06', '2017-09-12 13:29:31');

-- --------------------------------------------------------

--
-- Structure de la table `cl_languages`
--

DROP TABLE IF EXISTS `cl_languages`;
CREATE TABLE `cl_languages` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of hazardous work type';

--
-- Contenu de la table `cl_languages`
--

INSERT INTO `cl_languages` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'aa', 'Afar', 'Afar', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(2, 1, 'ab', 'Abkhazian', 'Abkhazian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(3, 1, 'ae', 'Avestan', 'Avestan', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(4, 1, 'af', 'Afrikaans', 'Afrikaans', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(5, 1, 'ak', 'Akan', 'Akan', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(6, 1, 'am', 'Amharic', 'Amharic', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(7, 1, 'an', 'Aragonese', 'Aragonese', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(8, 1, 'ar', 'Arabic', 'Arabic', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(9, 1, 'as', 'Assamese', 'Assamese', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(10, 1, 'av', 'Avaric', 'Avaric', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(11, 1, 'ay', 'Aymara', 'Aymara', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(12, 1, 'az', 'Azerbaijani', 'Azerbaijani', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(13, 1, 'ba', 'Bashkir', 'Bashkir', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(14, 1, 'be', 'Belarusian', 'Belarusian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(15, 1, 'bg', 'Bulgarian', 'Bulgarian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(16, 1, 'bh', 'Bihari languages', 'Bihari languages', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(17, 1, 'bi', 'Bislama', 'Bislama', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(18, 1, 'bm', 'Bambara', 'Bambara', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(19, 1, 'bn', 'Bengali', 'Bengali', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(20, 1, 'bo', 'Tibetan', 'Tibetan', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(21, 1, 'br', 'Breton', 'Breton', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(22, 1, 'bs', 'Bosnian', 'Bosnian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(23, 1, 'ca', 'Catalan; Valencian', 'Catalan; Valencian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(24, 1, 'ce', 'Chechen', 'Chechen', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(25, 1, 'ch', 'Chamorro', 'Chamorro', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(26, 1, 'co', 'Corsican', 'Corsican', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(27, 1, 'cr', 'Cree', 'Cree', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(28, 1, 'cs', 'Czech', 'Czech', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(29, 1, 'cu', 'Church Slavic', 'Church Slavic', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(30, 1, 'cv', 'Chuvash', 'Chuvash', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(31, 1, 'cy', 'Welsh', 'Welsh', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(32, 1, 'da', 'Danish', 'Danish', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(33, 1, 'de', 'German', 'German', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(34, 1, 'dv', 'Divehi; Dhivehi; Maldivian', 'Divehi; Dhivehi; Maldivian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(35, 1, 'dz', 'Dzongkha', 'Dzongkha', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(36, 1, 'ee', 'Ewe', 'Ewe', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(37, 1, 'el', 'Greek, Modern (1453-)', 'Greek, Modern (1453-)', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(38, 1, 'en', 'English', 'English', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(39, 1, 'eo', 'Esperanto', 'Esperanto', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(40, 1, 'es', 'Spanish; Castilian', 'Spanish; Castilian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(41, 1, 'et', 'Estonian', 'Estonian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(42, 1, 'eu', 'Basque', 'Basque', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(43, 1, 'fa', 'Persian', 'Persian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(44, 1, 'ff', 'Fulah', 'Fulah', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(45, 1, 'fi', 'Finnish', 'Finnish', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(46, 1, 'fj', 'Fijian', 'Fijian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(47, 1, 'fo', 'Faroese', 'Faroese', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(48, 1, 'fr', 'French', 'French', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(49, 1, 'fy', 'Western Frisian', 'Western Frisian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(50, 1, 'ga', 'Irish', 'Irish', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(51, 1, 'gd', 'Gaelic; Scottish Gaelic', 'Gaelic; Scottish Gaelic', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(52, 1, 'gl', 'Galician', 'Galician', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(53, 1, 'gn', 'Guarani', 'Guarani', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(54, 1, 'gu', 'Gujarati', 'Gujarati', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(55, 1, 'gv', 'Manx', 'Manx', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(56, 1, 'ha', 'Hausa', 'Hausa', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(57, 1, 'he', 'Hebrew', 'Hebrew', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(58, 1, 'hi', 'Hindi', 'Hindi', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(59, 1, 'ho', 'Hiri Motu', 'Hiri Motu', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(60, 1, 'hr', 'Croatian', 'Croatian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(61, 1, 'ht', 'Haitian; Haitian Creole', 'Haitian; Haitian Creole', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(62, 1, 'hu', 'Hungarian', 'Hungarian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(63, 1, 'hy', 'Armenian', 'Armenian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(64, 1, 'hz', 'Herero', 'Herero', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(65, 1, 'ia', 'Interlingua ', 'Interlingua ', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(66, 1, 'id', 'Indonesian', 'Indonesian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(67, 1, 'ie', 'Interlingue; Occidental', 'Interlingue; Occidental', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(68, 1, 'ig', 'Igbo', 'Igbo', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(69, 1, 'ii', 'Sichuan Yi; Nuosu', 'Sichuan Yi; Nuosu', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(70, 1, 'ik', 'Inupiaq', 'Inupiaq', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(71, 1, 'io', 'Ido', 'Ido', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(72, 1, 'is', 'Icelandic', 'Icelandic', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(73, 1, 'it', 'Italian', 'Italian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(74, 1, 'iu', 'Inuktitut', 'Inuktitut', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(75, 1, 'ja', 'Japanese', 'Japanese', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(76, 1, 'jv', 'Javanese', 'Javanese', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(77, 1, 'ka', 'Georgian', 'Georgian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(78, 1, 'kg', 'Kongo', 'Kongo', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(79, 1, 'ki', 'Kikuyu; Gikuyu', 'Kikuyu; Gikuyu', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(80, 1, 'kj', 'Kuanyama; Kwanyama', 'Kuanyama; Kwanyama', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(81, 1, 'kk', 'Kazakh', 'Kazakh', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(82, 1, 'kl', 'Kalaallisut; Greenlandic', 'Kalaallisut; Greenlandic', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(83, 1, 'km', 'Central Khmer', 'Central Khmer', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(84, 1, 'kn', 'Kannada', 'Kannada', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(85, 1, 'ko', 'Korean', 'Korean', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(86, 1, 'kr', 'Kanuri', 'Kanuri', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(87, 1, 'ks', 'Kashmiri', 'Kashmiri', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(88, 1, 'ku', 'Kurdish', 'Kurdish', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(89, 1, 'kv', 'Komi', 'Komi', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(90, 1, 'kw', 'Cornish', 'Cornish', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(91, 1, 'ky', 'Kirghiz; Kyrgyz', 'Kirghiz; Kyrgyz', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(92, 1, 'la', 'Latin', 'Latin', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(93, 1, 'lb', 'Luxembourgish; Letzeburgesch', 'Luxembourgish; Letzeburgesch', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(94, 1, 'lg', 'Ganda', 'Ganda', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(95, 1, 'li', 'Limburgan; Limburger; Limburgish', 'Limburgan; Limburger; Limburgish', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(96, 1, 'ln', 'Lingala', 'Lingala', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(97, 1, 'lo', 'Lao', 'Lao', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(98, 1, 'lt', 'Lithuanian', 'Lithuanian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(99, 1, 'lu', 'Luba-Katanga', 'Luba-Katanga', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(100, 1, 'lv', 'Latvian', 'Latvian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(101, 1, 'mg', 'Malagasy', 'Malagasy', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(102, 1, 'mh', 'Marshallese', 'Marshallese', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(103, 1, 'mi', 'Maori', 'Maori', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(104, 1, 'mk', 'Macedonian', 'Macedonian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(105, 1, 'ml', 'Malayalam', 'Malayalam', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(106, 1, 'mn', 'Mongolian', 'Mongolian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(107, 1, 'mr', 'Marathi', 'Marathi', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(108, 1, 'ms', 'Malay', 'Malay', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(109, 1, 'mt', 'Maltese', 'Maltese', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(110, 1, 'my', 'Burmese', 'Burmese', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(111, 1, 'na', 'Nauru', 'Nauru', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(112, 1, 'nb', 'BokmÃ¥l, Norwegian; Norwegian BokmÃ¥l', 'BokmÃ¥l, Norwegian; Norwegian BokmÃ¥l', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(113, 1, 'nd', 'Ndebele, North; North Ndebele', 'Ndebele, North; North Ndebele', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(114, 1, 'ne', 'Nepali', 'Nepali', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(115, 1, 'ng', 'Ndonga', 'Ndonga', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(116, 1, 'nl', 'Dutch; Flemish', 'Dutch; Flemish', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(117, 1, 'nn', 'Norwegian Nynorsk; Nynorsk, Norwegian', 'Norwegian Nynorsk; Nynorsk, Norwegian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(118, 1, 'no', 'Norwegian', 'Norwegian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(119, 1, 'nr', 'Ndebele, South; South Ndebele', 'Ndebele, South; South Ndebele', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(120, 1, 'nv', 'Navajo; Navaho', 'Navajo; Navaho', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(121, 1, 'ny', 'Chichewa; Chewa; Nyanja', 'Chichewa; Chewa; Nyanja', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(122, 1, 'oc', 'Occitan (post 1500); ProvenÃ§al', 'Occitan (post 1500); ProvenÃ§al', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(123, 1, 'oj', 'Ojibwa', 'Ojibwa', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(124, 1, 'om', 'Oromo', 'Oromo', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(125, 1, 'or', 'Oriya', 'Oriya', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(126, 1, 'os', 'Ossetian; Ossetic', 'Ossetian; Ossetic', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(127, 1, 'pa', 'Panjabi; Punjabi', 'Panjabi; Punjabi', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(128, 1, 'pi', 'Pali', 'Pali', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(129, 1, 'pl', 'Polish', 'Polish', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(130, 1, 'ps', 'Pushto; Pashto', 'Pushto; Pashto', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(131, 1, 'pt', 'Portuguese', 'Portuguese', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(132, 1, 'qu', 'Quechua', 'Quechua', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(133, 1, 'rm', 'Romansh', 'Romansh', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(134, 1, 'rn', 'Rundi', 'Rundi', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(135, 1, 'ro', 'Romanian; Moldavian; Moldovan', 'Romanian; Moldavian; Moldovan', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(136, 1, 'ru', 'Russian', 'Russian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(137, 1, 'rw', 'Kinyarwanda', 'Kinyarwanda', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(138, 1, 'sa', 'Sanskrit', 'Sanskrit', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(139, 1, 'sc', 'Sardinian', 'Sardinian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(140, 1, 'sd', 'Sindhi', 'Sindhi', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(141, 1, 'se', 'Northern Sami', 'Northern Sami', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(142, 1, 'sg', 'Sango', 'Sango', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(143, 1, 'si', 'Sinhala; Sinhalese', 'Sinhala; Sinhalese', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(144, 1, 'sk', 'Slovak', 'Slovak', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(145, 1, 'sl', 'Slovenian', 'Slovenian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(146, 1, 'sm', 'Samoan', 'Samoan', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(147, 1, 'sn', 'Shona', 'Shona', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(148, 1, 'so', 'Somali', 'Somali', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(149, 1, 'sq', 'Albanian', 'Albanian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(150, 1, 'sr', 'Serbian', 'Serbian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(151, 1, 'ss', 'Swati', 'Swati', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(152, 1, 'st', 'Sotho, Southern', 'Sotho, Southern', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(153, 1, 'su', 'Sundanese', 'Sundanese', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(154, 1, 'sv', 'Swedish', 'Swedish', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(155, 1, 'sw', 'Swahili', 'Swahili', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(156, 1, 'ta', 'Tamil', 'Tamil', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(157, 1, 'te', 'Telugu', 'Telugu', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(158, 1, 'tg', 'Tajik', 'Tajik', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(159, 1, 'th', 'Thai', 'Thai', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(160, 1, 'ti', 'Tigrinya', 'Tigrinya', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(161, 1, 'tk', 'Turkmen', 'Turkmen', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(162, 1, 'tl', 'Tagalog', 'Tagalog', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(163, 1, 'tn', 'Tswana', 'Tswana', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(164, 1, 'to', 'Tonga (Tonga Islands)', 'Tonga (Tonga Islands)', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(165, 1, 'tr', 'Turkish', 'Turkish', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(166, 1, 'ts', 'Tsonga', 'Tsonga', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(167, 1, 'tt', 'Tatar', 'Tatar', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(168, 1, 'tw', 'Twi', 'Twi', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(169, 1, 'ty', 'Tahitian', 'Tahitian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(170, 1, 'ug', 'Uighur; Uyghur', 'Uighur; Uyghur', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(171, 1, 'uk', 'Ukrainian', 'Ukrainian', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(172, 1, 'ur', 'Urdu', 'Urdu', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(173, 1, 'uz', 'Uzbek', 'Uzbek', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(174, 1, 've', 'Venda', 'Venda', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(175, 1, 'vi', 'Vietnamese', 'Vietnamese', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(176, 1, 'vo', 'VolapÃ¼k', 'VolapÃ¼k', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(177, 1, 'wa', 'Walloon', 'Walloon', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(178, 1, 'wo', 'Wolof', 'Wolof', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(179, 1, 'xh', 'Xhosa', 'Xhosa', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(180, 1, 'yi', 'Yiddish', 'Yiddish', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(181, 1, 'yo', 'Yoruba', 'Yoruba', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(182, 1, 'za', 'Zhuang; Chuang', 'Zhuang; Chuang', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(183, 1, 'zh', 'Chinese', 'Chinese', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(184, 1, 'zu', 'Zulu', 'Zulu', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19');

-- --------------------------------------------------------

--
-- Structure de la table `cl_languages_countries`
--

DROP TABLE IF EXISTS `cl_languages_countries`;
CREATE TABLE `cl_languages_countries` (
  `CL_LANGUAGE_ID` int(11) NOT NULL,
  `CL_COUNTRY_ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of languges per countries';

--
-- Contenu de la table `cl_languages_countries`
--

INSERT INTO `cl_languages_countries` (`CL_LANGUAGE_ID`, `CL_COUNTRY_ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(159, 205, 1, '159', 'Thailande official language', 'Thailande official language', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-11-04 17:08:00', '2017-11-04 17:08:00'),
(159, 209, 1, '159', '206', 'Thailande official language', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-11-04 18:08:00', '2017-11-04 18:08:00');

-- --------------------------------------------------------

--
-- Structure de la table `cl_legal_status`
--

DROP TABLE IF EXISTS `cl_legal_status`;
CREATE TABLE `cl_legal_status` (
  `ID` int(11) NOT NULL,
  `CL_COUNTRY_ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='legal status (Married, divorced etc...)';

--
-- Contenu de la table `cl_legal_status`
--

INSERT INTO `cl_legal_status` (`ID`, `CL_COUNTRY_ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 205, 1, 'SING', 'Single', 'Single', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 20022 applied to Thailand', '2017-09-23 10:50:17', '2017-09-23 10:50:17'),
(2, 205, 1, 'MARR', 'Married', 'Married', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 20022 applied to Thailand', '2017-09-23 10:50:17', '2017-09-23 10:50:17'),
(3, 205, 1, 'LDIV', 'Legally divorced', 'Legally divored', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 20022 applied to Thailand', '2017-09-23 10:51:38', '2017-09-23 10:51:38'),
(4, 205, 1, 'DIVO', 'Divorced', 'Divorced', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 20022 applied to Thailand', '2017-09-23 10:51:38', '2017-09-23 10:51:38'),
(5, 205, 1, 'WIDO', 'Widow', 'Widow', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 20022 applied to Thailand', '2017-09-23 10:52:56', '2017-09-23 10:52:56'),
(6, 205, 1, 'UNIO', 'Stable Union', 'Stable Union', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 20022 applied to Thailand', '2017-09-23 10:52:56', '2017-09-23 10:52:56'),
(7, 205, 1, 'SEPA', 'Separated', 'Separated', '', NULL, NULL, NULL, NULL, NULL, '1', 'ISO 20022 applied to Thailand', '2017-09-23 10:55:43', '2017-09-23 10:55:43');

-- --------------------------------------------------------

--
-- Structure de la table `cl_measure_types`
--

DROP TABLE IF EXISTS `cl_measure_types`;
CREATE TABLE `cl_measure_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_measure_types`
--

INSERT INTO `cl_measure_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'pH', 'pH', NULL, '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2016-10-23 17:00:47', '2017-09-12 13:30:11'),
(2, 1, 'TEMP', 'Temperature', 'Temperature', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2016-10-23 17:00:47', '2017-09-12 13:30:11'),
(3, 1, 'DO', 'Dissolved Oxygen', 'Dissolved Oxygen', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2016-10-23 17:02:34', '2017-09-12 13:30:11'),
(4, 1, 'SAL', 'Salinity', 'Salinity', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2016-10-23 17:02:34', '2017-09-12 13:30:11'),
(5, 1, 'AMMO', 'Ammonia', 'Ammonia', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2016-10-23 17:03:03', '2017-09-12 13:30:11');

-- --------------------------------------------------------

--
-- Structure de la table `cl_payment_frequencies`
--

DROP TABLE IF EXISTS `cl_payment_frequencies`;
CREATE TABLE `cl_payment_frequencies` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_payment_frequencies`
--

INSERT INTO `cl_payment_frequencies` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'DAY', 'Daily', 'Daily', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-11-23 19:36:53', '2017-11-23 19:36:53'),
(2, 1, 'WEEK', 'Weekly', 'Weekly', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-11-23 19:36:53', '2017-11-23 19:36:53'),
(3, 1, 'MON', 'Monthly', 'Monthly', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-11-23 19:36:53', '2017-11-23 19:36:53');

-- --------------------------------------------------------

--
-- Structure de la table `cl_plot_activity_types`
--

DROP TABLE IF EXISTS `cl_plot_activity_types`;
CREATE TABLE `cl_plot_activity_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_plot_activity_types`
--

INSERT INTO `cl_plot_activity_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'SOWI', 'Sowing', 'Sowing', 'Sowing', 'Sowing', 'Plantation', NULL, 'ปลูกอ้อย', NULL, '1', NULL, '2017-09-23 12:56:40', '2017-09-23 12:56:40'),
(2, 1, 'WEED', 'weeding', 'weeding', 'weeding', 'weeding', 'Désherbage', NULL, 'ฉีดยากำจัดวัชพืช', '', '1', NULL, '2017-09-23 12:56:40', '2017-09-23 12:56:40'),
(3, 1, 'HARV1', 'Harvesting', 'Harvesting', 'Harvesting', 'Harvesting', 'Récolte', NULL, 'เก็บเกี่ยว', NULL, '1', NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(4, 1, 'HARV2', 'Harvesting by hands', 'Harvesting by hands', 'Harvesting by hands', 'Harvesting by hands', 'Récolte manuelle', NULL, 'ตัดอ้อยด้วยมือ', NULL, '1', NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(5, 1, 'HARV3', 'Harvesting with machine', 'Harvesting with machine', 'Harvesting with machine', 'Harvesting with machine', 'Récolte mécanique', NULL, 'ตัดอ้อยด้วยรถตัด', NULL, '1', NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(6, 1, 'IRRI', 'Irrigation', 'Irrigation', 'Irrigation', 'Irrigation', 'Irrigation', NULL, 'ให้น้ำ', NULL, '1', NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(7, 1, 'PEST', 'Pesticide use', 'Pesticide use', 'Pesticide use', 'Pesticide use', 'Utilisation de pesticides', NULL, NULL, NULL, '1', NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(8, 1, 'HERB', 'Herbicide use', 'Herbicide use', 'Herbicide use', 'Herbicide use', 'Utilisation d\'herbicides', NULL, NULL, NULL, '1', NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(9, 1, 'FUNG', 'Fungicide use', 'Fungicide use', 'Fungicide use', 'Fungicide use', 'Utilisation de fongicides', NULL, NULL, NULL, '1', NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(10, 1, 'FERT', 'Fertilizer use', 'Fertilizer use', 'Fertilizer use', 'Fertilizer use', 'Utilisation d\'engrais', NULL, 'ใส่ปุ๋ย', NULL, '1', NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(11, 1, 'TILL', 'Soil Tillage', 'Soil tillage', 'Soil tillage', 'Soil tillage', 'Travail du sol', NULL, 'ไถ เตรียมดิน', NULL, '1', NULL, '2017-09-23 13:01:37', '2017-09-23 13:01:37'),
(12, 1, 'TRANS', 'Transport harvested crop out of field', 'Transport harvested crop out of field', 'Transport harvested crop out of field', 'Transport harvested crop out of field', 'Transport de la récolte hors du champs', NULL, 'ขับรถบรรทุก', NULL, '1', NULL, '2017-11-28 17:28:33', '2017-11-28 17:28:33'),
(99, 1, 'OTHER', 'Other', 'Other', 'Other', 'Other', 'Autres', NULL, 'อื่นๆ', NULL, '1', NULL, '2017-09-23 13:01:37', '2017-09-23 13:01:37');

-- --------------------------------------------------------

--
-- Structure de la table `cl_pond_activity_types`
--

DROP TABLE IF EXISTS `cl_pond_activity_types`;
CREATE TABLE `cl_pond_activity_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_pond_types`
--

DROP TABLE IF EXISTS `cl_pond_types`;
CREATE TABLE `cl_pond_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_pond_types`
--

INSERT INTO `cl_pond_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'RES', 'Reservoir', 'Pond as water reservoir', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-01-06 11:19:45', '2017-09-12 13:35:05'),
(2, 1, 'GROW', 'Pond for growing', 'Pond for fish growing', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-01-06 11:25:19', '2017-09-12 13:35:05'),
(3, 1, 'REP', 'Pond for reproduction', 'Pond for fish reproduction', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-01-06 11:25:19', '2017-09-12 13:35:05'),
(4, 1, 'SEW', 'Sewage Pond', 'Pond for sewage cleaning', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-01-06 11:25:19', '2017-09-12 13:35:05');

-- --------------------------------------------------------

--
-- Structure de la table `cl_products`
--

DROP TABLE IF EXISTS `cl_products`;
CREATE TABLE `cl_products` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `CL_PRODUCTS_TYPE_ID` int(11) NOT NULL,
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of phytosanitary products';

--
-- Contenu de la table `cl_products`
--

INSERT INTO `cl_products` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `CL_PRODUCTS_TYPE_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'FERT-21-0-0', 'ปุ๋ยทดลองศูนย์วิจัย 21-0-0', 'ปุ๋ยทดลองศูนย์วิจัย 21-0-0', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(2, 1, 'FERT-30-15-10', 'ปุ๋ยน้ำหยด 30-15-10', 'ปุ๋ยน้ำหยด 30-15-10', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:07:02', '2017-09-23 13:07:02'),
(3, 1, 'FERT-46-0-0', 'ปุ๋ยสูตร 46-0-0', 'ปุ๋ยสูตร 46-0-0', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(4, 1, 'FERT-25-8-5', 'ปุ๋ยน้ำหยด 25-8-5', 'ปุ๋ยน้ำหยด 25-8-5', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(5, 1, 'FERT-18-46-0', 'แม่ปุ๋ยผสม 18-46-0', 'แม่ปุ๋ยผสม 18-46-0', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(6, 1, 'FERT-21-7-18', 'ปุ๋ยสูตร 21-7-18', 'ปุ๋ยสูตร 21-7-18', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(7, 1, 'FERT-16-8-8', 'ปุ๋ยสูตร 16-8-8', 'ปุ๋ยสูตร 16-8-8', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(8, 1, 'FERT-16-16-8', 'ปุ๋ยสูตร 16-16-8', 'ปุ๋ยสูตร 16-16-8', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(9, 1, 'FERT-6-16-16', 'ปุ๋ยสูตร 16-16-16', 'ปุ๋ยสูตร 16-16-16', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(10, 1, 'FERT-16-10-0', 'ปุ๋ยสูตร 16-20-0', 'ปุ๋ยสูตร 16-20-0', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(11, 1, 'FERT-0-0-60', 'แม่ปุ๋ยสูตร 0-0-60', 'แม่ปุ๋ยสูตร 0-0-60', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(12, 1, 'FERT-0-0-50', 'ปุ๋ยน้ำหยด 0-0-50', 'ปุ๋ยน้ำหยด 0-0-50', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(13, 1, 'FERT-23-10-24', 'ปุ๋ยน้ำหยด 23-10-24', 'ปุ๋ยน้ำหยด 23-10-24', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(14, 1, 'FERT-18-8-0', 'ปุ๋ยสูตร 18-8-0', 'ปุ๋ยสูตร 18-8-0', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(15, 1, 'FERT-21-8-0', 'ปุ๋ยสูตร 21-0-0', 'ปุ๋ยสูตร 21-0-0', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(16, 1, 'FERT-SMS', 'ปุ๋ยอินทรีย์ SMS', 'ปุ๋ยอินทรีย์ SMS', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(17, 1, 'FERT-12-60-0', 'ปุ๋ยน้ำหยด 12-60-0', 'ปุ๋ยน้ำหยด 12-60-0', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(18, 1, 'FERT-16-16-8.2', 'ปุ๋ยรองพื้น 16-16-8 สปป.ลาว', 'ปุ๋ยรองพื้น 16-16-8 สปป.ลาว', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(19, 1, 'FERT-Soilmate', 'ปุ๋ยน้ำ Soilmate  b', 'ปุ๋ยน้ำSoilmate  b', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(20, 1, 'FERT-hyacinthe', 'ไฮแมก-บี', 'ไฮแมก-บี', '', NULL, NULL, NULL, NULL, NULL, 50, '1', NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07');

-- --------------------------------------------------------

--
-- Structure de la table `cl_product_types`
--

DROP TABLE IF EXISTS `cl_product_types`;
CREATE TABLE `cl_product_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `PARENT_CODE` int(11) DEFAULT NULL,
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_product_types`
--

INSERT INTO `cl_product_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `PARENT_CODE`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'DRUGCHEM', 'Drugs and Chemicals ', 'Drugs and Chemicals', '', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2016-10-23 09:13:07', '2017-09-12 13:36:24'),
(5, 1, 'PHYTO', 'Phyto Sanitary products', 'Phyto Sanitary products', '', NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, '2017-09-23 13:05:23', '2017-09-23 13:05:23'),
(50, 1, 'FERT', 'Fertilizers', 'Fertilizers', '', NULL, NULL, NULL, NULL, NULL, 5, '1', NULL, '2017-09-23 13:05:23', '2017-09-23 13:05:23'),
(60, 1, 'PEST', 'Pesticides', 'Pesticides', '', NULL, NULL, NULL, NULL, NULL, 5, '1', NULL, '2017-09-23 13:05:23', '2017-09-23 13:05:23'),
(70, 1, 'HERB', 'Herbicides', 'Herbicides', '', NULL, NULL, NULL, NULL, NULL, 5, '1', NULL, '2017-09-23 13:05:23', '2017-09-23 13:05:23'),
(80, 1, 'FONG', 'Fungicides', 'Fungicides', '', NULL, NULL, NULL, NULL, NULL, 5, '1', NULL, '2017-09-23 13:05:23', '2017-09-23 13:05:23');

-- --------------------------------------------------------

--
-- Structure de la table `cl_prod_data_entry_types`
--

DROP TABLE IF EXISTS `cl_prod_data_entry_types`;
CREATE TABLE `cl_prod_data_entry_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_prod_data_entry_types`
--

INSERT INTO `cl_prod_data_entry_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'MAN', 'Manual entry', 'Data entry is done by the user', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-09-23 11:10:25', '2017-09-23 11:10:25'),
(2, 1, 'COMP', 'Computarized', 'Date are computed by the system', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-09-23 11:10:25', '2017-09-23 11:10:25');

-- --------------------------------------------------------

--
-- Structure de la table `cl_quantity_units`
--

DROP TABLE IF EXISTS `cl_quantity_units`;
CREATE TABLE `cl_quantity_units` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `CL_QUANTITY_UNIT_TYPE_ID` int(11) NOT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_quantity_units`
--

INSERT INTO `cl_quantity_units` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `CL_QUANTITY_UNIT_TYPE_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'LBS', 'Pounds', 'Pounds (Lbs.) as a weight quantity type', '', NULL, NULL, NULL, NULL, NULL, 3, '1', 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(2, 1, 'KG', 'Kg', 'Kilograms as a weight quantity type', '', NULL, NULL, NULL, NULL, NULL, 3, '1', 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(3, 1, 'UNITS', 'Units', 'Units as quantity type', '', NULL, NULL, NULL, NULL, NULL, 4, '1', 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(4, 1, 'CASES', 'Cases', 'Cases as quantity type', '', NULL, NULL, NULL, NULL, NULL, 4, '1', 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(5, 1, 'M', 'Meters', 'Meters as length units', '', NULL, NULL, NULL, NULL, NULL, 1, '1', 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(6, 1, 'M3', 'Cubic meters', 'Cubic meters as volume units', '', NULL, NULL, NULL, NULL, NULL, 2, '1', 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(7, 1, 'FEET', 'Feet', 'Feet as length units', '', NULL, NULL, NULL, NULL, NULL, 1, '1', 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(8, 1, 'FEET3', 'Cubic feet', 'Cubic feet as volume units', '', NULL, NULL, NULL, NULL, NULL, 2, '1', 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(9, 1, 'LIT', 'Liters', 'Liters as volume units', '', NULL, NULL, NULL, NULL, NULL, 2, '1', 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(10, 1, 'GALL', 'Gallons', 'Gallons as volume units', '', NULL, NULL, NULL, NULL, NULL, 2, '1', 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(11, 1, 'MT', 'Metric tons', 'Metric tons as tonnage units', '', NULL, NULL, NULL, NULL, NULL, 5, '1', 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(12, 1, 'HRS', 'Hours', 'Hours fished', '', NULL, NULL, NULL, NULL, NULL, 6, '1', 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(13, 1, 'DAYS', 'Days', 'Days fished', '', NULL, NULL, NULL, NULL, NULL, 6, '1', 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(14, 1, 'HA', 'Hectares', 'Hectares as length units', '', NULL, NULL, NULL, NULL, NULL, 7, '1', '', '2017-01-04 14:11:35', '2017-09-12 13:32:19'),
(15, 1, 'M2', 'Square meters', 'Square meters', '', NULL, NULL, NULL, NULL, NULL, 7, '1', NULL, '2017-01-06 10:31:05', '2017-09-12 13:32:19'),
(16, 1, 'pH', 'pH', 'pH unit', '', NULL, NULL, NULL, NULL, NULL, 8, '1', NULL, '2017-01-06 10:33:18', '2017-09-12 13:32:19'),
(17, 1, 'T°C', 'Degree Celsius', 'Temperature in Celsius', '', NULL, NULL, NULL, NULL, NULL, 9, '1', NULL, '2017-01-06 10:39:41', '2017-09-12 13:32:19'),
(18, 1, 'T°F', 'Degree Fahrenheit', 'Temperature in Fahrenheit', '', NULL, NULL, NULL, NULL, NULL, 9, '1', NULL, '2017-01-06 10:40:24', '2017-09-12 13:32:19'),
(19, 1, 'PPM', 'ppm', 'Part per million', '', NULL, NULL, NULL, NULL, NULL, 8, '1', NULL, '2017-01-06 10:46:06', '2017-09-12 13:32:19'),
(20, 1, 'MG/L', 'mg/l', 'Milligram per liter ', '', NULL, NULL, NULL, NULL, NULL, 8, '1', NULL, '2017-01-06 10:46:06', '2017-09-12 13:32:19'),
(21, 1, 'PERCENT', '%', 'Percentage', '', NULL, NULL, NULL, NULL, NULL, 8, '1', NULL, '2017-01-06 10:46:06', '2017-09-12 13:32:19'),
(22, 1, 'PERTHOUS', 'ppt (‰)', 'Perthousand', '', NULL, NULL, NULL, NULL, NULL, 8, '1', NULL, '2017-01-06 10:46:06', '2017-09-12 13:32:19'),
(23, 1, 'KG/L', 'Kg/l', '\r\nKilogram per liter', '', NULL, NULL, NULL, NULL, NULL, 8, '1', NULL, '2017-01-06 10:47:54', '2017-09-12 13:32:19'),
(24, 1, 'G/L', 'g/l', 'Gram per liter', '', NULL, NULL, NULL, NULL, NULL, 8, '1', NULL, '2017-01-06 10:50:41', '2017-09-12 13:32:19'),
(25, 1, 'PSU', 'psu', 'Practical Salinity Unit', '', NULL, NULL, NULL, NULL, NULL, 8, '1', NULL, '2017-01-06 10:50:41', '2017-09-12 13:32:19'),
(26, 1, 'G/KG', 'g/Kg', 'Gram per Kilogram (Salinity unit)', '', NULL, NULL, NULL, NULL, NULL, 8, '1', NULL, '2017-01-06 10:50:41', '2017-09-12 13:32:19'),
(27, 1, 'FEET2', 'Square feet', 'Square feet as area unit', '', NULL, NULL, NULL, NULL, NULL, 7, '1', NULL, '2017-01-06 10:53:14', '2017-09-12 13:32:19'),
(28, 1, 'ACRE', 'Acre', 'Acre as area unit', '', NULL, NULL, NULL, NULL, NULL, 7, '1', NULL, '2017-01-06 10:53:40', '2017-09-12 13:32:19'),
(29, 1, 'RAI', 'Rai (area)', 'Rai area thai unit', '', NULL, NULL, NULL, NULL, NULL, 7, '1', NULL, '2017-01-09 08:16:06', '2017-09-12 13:32:19');

-- --------------------------------------------------------

--
-- Structure de la table `cl_quantity_unit_types`
--

DROP TABLE IF EXISTS `cl_quantity_unit_types`;
CREATE TABLE `cl_quantity_unit_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL,
  `CODE` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL,
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_quantity_unit_types`
--

INSERT INTO `cl_quantity_unit_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'LEN', 'Length units', 'For quantity units modeling lengths', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(2, 1, 'VOL', 'Volume', 'For quantity units modeling volumes', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(3, 1, 'WGT', 'Weight', 'For quantity units modeling weights', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(4, 1, 'ITM', 'Item', 'For quantity units modeling items', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(5, 1, 'TON', 'Tonnage', 'For quantity units modeling tonnages', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(6, 1, 'EFF', 'Effort', 'For quantity units modeling fishing effort', '', NULL, NULL, NULL, NULL, NULL, '1', 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(7, 1, 'AREA', 'Area unit', 'For quantity units modeling area or surface', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-01-05 23:00:00', '2017-09-12 13:31:44'),
(8, 1, 'PHYCHEM', 'Physics and Chemistry units', 'Any unit used in physics and Chemistry (except temperature)', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-01-05 23:00:00', '2017-09-12 13:31:44'),
(9, 1, 'TEMP', 'Temperature', 'Temperature as  measure unit', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-01-05 23:00:00', '2017-09-12 13:31:44');

-- --------------------------------------------------------

--
-- Structure de la table `cl_soil_analysis_types`
--

DROP TABLE IF EXISTS `cl_soil_analysis_types`;
CREATE TABLE `cl_soil_analysis_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of hazardous work type';

--
-- Contenu de la table `cl_soil_analysis_types`
--

INSERT INTO `cl_soil_analysis_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'GEN', 'Soil Analysis', 'Soil Analysis (no specific information known)', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-09-20 09:58:43', '2017-09-20 09:58:43');

-- --------------------------------------------------------

--
-- Structure de la table `cl_species`
--

DROP TABLE IF EXISTS `cl_species`;
CREATE TABLE `cl_species` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `SCIENTIFIC_NAME` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_species`
--

INSERT INTO `cl_species` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `SCIENTIFIC_NAME`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'VAN', 'Vannamei', 'Vannamei species', '', NULL, NULL, NULL, NULL, NULL, 'Vannamei', '1', NULL, '2017-01-01 08:02:11', '2017-09-12 13:33:00'),
(2, 1, 'MON', 'Monodon', 'Monodon species', '', NULL, NULL, NULL, NULL, NULL, 'Monodon', '1', NULL, '2017-01-01 08:02:11', '2017-09-12 13:33:00'),
(3, 1, 'TIL', 'Tilapia', 'Tilapia species', '', NULL, NULL, NULL, NULL, NULL, 'Tilapia', '1', NULL, '2017-01-01 08:02:11', '2017-09-12 13:33:00'),
(4, 1, 'MIL', 'Milkfish', 'Milkfish species', '', NULL, NULL, NULL, NULL, NULL, 'Milkfish', '1', NULL, '2017-01-01 08:02:11', '2017-09-12 13:33:00');

-- --------------------------------------------------------

--
-- Structure de la table `cl_tiling_activity_types`
--

DROP TABLE IF EXISTS `cl_tiling_activity_types`;
CREATE TABLE `cl_tiling_activity_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_tiling_activity_types`
--

INSERT INTO `cl_tiling_activity_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'SHOV', 'Manual Shoveling', 'Manual Shoveling', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-09-23 11:14:53', '2017-09-23 11:14:53'),
(2, 1, 'HOE', 'Manual hoeing', 'Manual hoeing', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-09-23 11:17:07', '2017-09-23 11:17:07'),
(3, 1, 'PLOUGH', 'Animal/mechanical ploughing', 'Animal/mechanical ploughing', '', NULL, NULL, NULL, NULL, NULL, '1', NULL, '2017-09-23 11:17:07', '2017-09-23 11:17:07');

-- --------------------------------------------------------

--
-- Structure de la table `dt_audit_bs_farm`
--

DROP TABLE IF EXISTS `dt_audit_bs_farm`;
CREATE TABLE `dt_audit_bs_farm` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `AUDIT_DATE` date NOT NULL,
  `NB_CHILD_WORKING` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `dt_farmag_plot_management`
--

DROP TABLE IF EXISTS `dt_farmag_plot_management`;
CREATE TABLE `dt_farmag_plot_management` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_PLOT_ID` int(11) NOT NULL,
  `ACTIVITY_START_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ACTIVITY_END_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CL_PLOT_ACTIVITY_TYPE_ID` int(11) NOT NULL,
  `CL_PRODUCT_ID` int(11) DEFAULT NULL,
  `MEASURE_VALUE` float DEFAULT NULL,
  `CL_MEASURE_VALUE_UNIT_ID` int(11) DEFAULT NULL,
  `ADDITIONNAL_MEASURE_VALUE` float DEFAULT NULL,
  `CL_ADDITIONNAL_MEASURE_VALUE_UNIT_ID` int(11) DEFAULT NULL,
  `CL_TILING_ACTIVITY_TYPE_ID` int(11) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `dt_farmag_plot_management`
--

INSERT INTO `dt_farmag_plot_management` (`ID`, `REG_ENTITY_FARM_PLOT_ID`, `ACTIVITY_START_DATE`, `ACTIVITY_END_DATE`, `CL_PLOT_ACTIVITY_TYPE_ID`, `CL_PRODUCT_ID`, `MEASURE_VALUE`, `CL_MEASURE_VALUE_UNIT_ID`, `ADDITIONNAL_MEASURE_VALUE`, `CL_ADDITIONNAL_MEASURE_VALUE_UNIT_ID`, `CL_TILING_ACTIVITY_TYPE_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(8, 8, '2017-11-27 18:15:23', '2017-11-27 18:15:27', 11, NULL, 0, 5, NULL, NULL, NULL, 3, '', '2017-11-27 17:16:36', '2017-11-27 17:16:36'),
(9, 8, '2017-11-29 18:16:46', '2017-11-29 18:16:49', 1, NULL, 46, 2, NULL, NULL, NULL, 3, '', '2017-11-27 17:17:15', '2017-11-27 17:17:15'),
(10, 8, '2017-11-30 18:17:31', '2017-11-30 18:17:34', 10, 9, 568, 2, NULL, NULL, NULL, 3, '', '2017-11-27 17:17:55', '2017-11-27 17:17:55'),
(11, 9, '2017-12-13 17:56:38', '2018-01-12 17:56:49', 5, NULL, 5000, 2, NULL, NULL, 3, 4, '', '2017-11-28 11:02:16', '2017-11-28 11:02:16');

-- --------------------------------------------------------

--
-- Structure de la table `dt_farmag_production`
--

DROP TABLE IF EXISTS `dt_farmag_production`;
CREATE TABLE `dt_farmag_production` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CL_PROD_DATA_ENTRY_TYPE_ID` int(11) NOT NULL DEFAULT '1' COMMENT 'is either manually entered by the user or computed by the system',
  `DATE_FROM` date NOT NULL,
  `DATE_TO` date NOT NULL,
  `CL_COMMODITIES_ID` int(11) NOT NULL,
  `PRODUCTION_QUANTITY` varchar(11) COLLATE utf8_bin NOT NULL COMMENT 'is a varchar as can be N/A',
  `CL_PRODUCTION_QUANTITY_UNIT_ID` int(11) NOT NULL,
  `UPDATER_ID` int(11) NOT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='soil analysis record';

-- --------------------------------------------------------

--
-- Structure de la table `dt_farmaq_plot_measurements`
--

DROP TABLE IF EXISTS `dt_farmaq_plot_measurements`;
CREATE TABLE `dt_farmaq_plot_measurements` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_PLOT_ID` int(11) NOT NULL,
  `MEASURE_DATE` datetime NOT NULL,
  `CL_MEASURE_TYPE_ID` int(11) NOT NULL,
  `MEASURE_VALUE` float NOT NULL,
  `CL_MEASURE_VALUE_UNIT_ID` int(11) NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `dt_farmaq_pond_management`
--

DROP TABLE IF EXISTS `dt_farmaq_pond_management`;
CREATE TABLE `dt_farmaq_pond_management` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_POND_ID` int(11) NOT NULL,
  `ACTIVITY_START_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ACTIVITY_END_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CL_POND_ACTIVITY_TYPE_ID` int(11) NOT NULL,
  `CL_PRODUCT_ID` int(11) DEFAULT NULL,
  `MEASURE_VALUE` float NOT NULL,
  `CL_MEASURE_VALUE_UNIT_ID` int(11) NOT NULL,
  `ADDITIONNAL_MEASURE_VALUE` float DEFAULT NULL,
  `CL_ADDITIONNAL_MEASURE_VALUE_UNIT_ID` int(11) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `dt_farmaq_pond_measurements`
--

DROP TABLE IF EXISTS `dt_farmaq_pond_measurements`;
CREATE TABLE `dt_farmaq_pond_measurements` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_POND_ID` int(10) NOT NULL,
  `MEASURE_DATE` datetime NOT NULL,
  `CL_MEASURE_TYPE_ID` int(11) NOT NULL,
  `MEASURE_VALUE` float NOT NULL,
  `CL_MEASURE_VALUE_UNIT_ID` int(11) NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `dt_soil_analysis`
--

DROP TABLE IF EXISTS `dt_soil_analysis`;
CREATE TABLE `dt_soil_analysis` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_PLOT_ID` int(11) NOT NULL,
  `ANALYSIS_DATE` date NOT NULL,
  `CL_SOIL_ANALYSIS_TYPE_ID` int(11) DEFAULT NULL,
  `SOIL_ANALYSIS_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'Uploaded analysis docuent URL',
  `UPDATER_ID` int(11) NOT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='soil analysis record';

-- --------------------------------------------------------

--
-- Structure de la table `dt_water_analysis`
--

DROP TABLE IF EXISTS `dt_water_analysis`;
CREATE TABLE `dt_water_analysis` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_POND_ID` int(11) DEFAULT NULL COMMENT 'Not mandatory as it can be an analysis at the farm level',
  `ANALYSIS_DATE` date NOT NULL,
  `WATER_ANALYSIS_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'uplodaded Analysis document url',
  `UPDATER_ID` int(11) NOT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='soil analysis record';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entities`
--

DROP TABLE IF EXISTS `reg_entities`;
CREATE TABLE `reg_entities` (
  `ID` int(10) NOT NULL,
  `CL_ENTITY_UID_TYPE_ID` int(11) NOT NULL DEFAULT '0',
  `IDENTIFIER` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `STANDARD_IDENTIFIER` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'An identifier such as unique national registration number or blue number in addition to a national one',
  `CL_NATIONALITY_COUNTRY_ID` int(11) DEFAULT '0',
  `NAME` varchar(256) COLLATE utf8_bin NOT NULL,
  `SURNAME` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `MIDDLE_NAME` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `SUFFIX_NAME` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ACRONYM` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `SALUTATION` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `GENDER` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `CL_ADDRESS_COUNTRY_ID` int(11) NOT NULL DEFAULT '0',
  `ADDRESS_CITY` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ADDRESS` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `ADDRESS_ZIP_CODE` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `CL_ADML1_ID` int(11) NOT NULL DEFAULT '0',
  `PHONE_NUMBER` varchar(96) COLLATE utf8_bin DEFAULT NULL,
  `MOBILE_NUMBER` varchar(96) COLLATE utf8_bin NOT NULL,
  `FAX_NUMBER` varchar(96) COLLATE utf8_bin DEFAULT NULL,
  `E_MAIL` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `INSTANT_MESSANGER` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'instant messanger ID like whatsapp, lime etc...',
  `WEBSITE` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `REGISTRATION_NUMBER` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `IMG_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `LTO_NUMBER` int(11) NOT NULL DEFAULT '0',
  `LTO_VALIDITY_DATE` date DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(1024) COLLATE utf8_bin NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `reg_entities`
--

INSERT INTO `reg_entities` (`ID`, `CL_ENTITY_UID_TYPE_ID`, `IDENTIFIER`, `STANDARD_IDENTIFIER`, `CL_NATIONALITY_COUNTRY_ID`, `NAME`, `SURNAME`, `MIDDLE_NAME`, `SUFFIX_NAME`, `ACRONYM`, `SALUTATION`, `GENDER`, `DATE_OF_BIRTH`, `CL_ADDRESS_COUNTRY_ID`, `ADDRESS_CITY`, `ADDRESS`, `ADDRESS_ZIP_CODE`, `CL_ADML1_ID`, `PHONE_NUMBER`, `MOBILE_NUMBER`, `FAX_NUMBER`, `E_MAIL`, `INSTANT_MESSANGER`, `WEBSITE`, `REGISTRATION_NUMBER`, `IMG_URL`, `LTO_NUMBER`, `LTO_VALIDITY_DATE`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(125, 1, NULL, NULL, 205, 'Yann', '', '', NULL, NULL, 'Mr.', 'M', NULL, 205, '', '', '', 0, '', '5555', '', '', NULL, NULL, '', NULL, 0, NULL, 4, '', '2017-11-27 09:12:12', '2017-11-27 09:12:12'),
(126, 2, NULL, NULL, NULL, 'TestFarm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Bangkok', '', '', 0, '', '5555', '', '', NULL, NULL, NULL, NULL, 0, NULL, 4, '', '2017-11-27 09:12:54', '2017-11-27 09:12:54'),
(127, 8, NULL, NULL, 205, 'TestCompany', NULL, NULL, NULL, '', NULL, NULL, NULL, 205, '', '', '', 0, '', '5555', '', '', NULL, NULL, '', NULL, 0, NULL, 3, '', '2017-11-27 17:14:17', '2017-11-27 17:14:17'),
(128, 1, NULL, NULL, 205, 'joe', '', '', NULL, NULL, 'Mr.', 'M', NULL, 205, '', '', '', 0, '', '555', '', '', NULL, NULL, '', NULL, 0, NULL, 3, '', '2017-11-27 17:38:24', '2017-11-27 17:38:24'),
(129, 1, NULL, NULL, 64, 'Claire', 'Le Bras', '', NULL, NULL, 'Mrs.', 'F', '1995-08-02', 64, 'Toulouse', 'Place Laganne', '', 0, '', '0689485364', '', 'claire@fairagora.com', NULL, NULL, '14', NULL, 0, NULL, 2, '', '2017-11-28 04:27:07', '2017-11-28 04:27:07'),
(130, 2, NULL, NULL, NULL, 'Sugarland1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Khon Kaen', '', '', 0, '', '0689485364', '', 'claire@fairagora.com', NULL, NULL, NULL, NULL, 0, NULL, 2, '', '2017-11-28 04:30:06', '2017-11-28 04:30:06'),
(131, 2, NULL, NULL, NULL, 'farm2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'BKK', '', '', 0, '', '555', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2017-12-04 22:41:39', '2017-12-04 22:41:39');

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farmag_details`
--

DROP TABLE IF EXISTS `reg_entity_farmag_details`;
CREATE TABLE `reg_entity_farmag_details` (
  `ID` int(10) UNSIGNED NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `IRRIGATION` tinyint(1) NOT NULL DEFAULT '0',
  `IRRIGATION_AUTHORIZATION` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farmag_plots`
--

DROP TABLE IF EXISTS `reg_entity_farmag_plots`;
CREATE TABLE `reg_entity_farmag_plots` (
  `ID` int(11) UNSIGNED NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL DEFAULT '0',
  `PLOT_NUMBER` varchar(10) COLLATE utf8_bin NOT NULL,
  `PLOT_DESCRIPTION` varchar(256) COLLATE utf8_bin NOT NULL,
  `CL_COMMODITIES_ID` int(11) NOT NULL DEFAULT '0',
  `PLOT_SIZE` double(8,2) NOT NULL DEFAULT '0.00',
  `CL_PLOT_SIZE_UNIT_ID` tinyint(1) NOT NULL DEFAULT '0',
  `IS_IRRIGATED` int(11) NOT NULL DEFAULT '0',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `CREATED_AT` timestamp NULL DEFAULT NULL,
  `UPDATED_AT` timestamp NULL DEFAULT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `reg_entity_farmag_plots`
--

INSERT INTO `reg_entity_farmag_plots` (`ID`, `REG_ENTITY_FARM_ID`, `PLOT_NUMBER`, `PLOT_DESCRIPTION`, `CL_COMMODITIES_ID`, `PLOT_SIZE`, `CL_PLOT_SIZE_UNIT_ID`, `IS_IRRIGATED`, `UPDATER_ID`, `CREATED_AT`, `UPDATED_AT`, `COMMENT`) VALUES
(8, 126, '1', 'Myplot', 1, 20.00, 29, 1, 0, NULL, NULL, NULL),
(9, 130, '1', '', 1, 90.00, 29, 1, 0, NULL, NULL, NULL),
(10, 130, '2', '', 1, 30.00, 29, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farmaq_details`
--

DROP TABLE IF EXISTS `reg_entity_farmaq_details`;
CREATE TABLE `reg_entity_farmaq_details` (
  `ID` int(10) UNSIGNED NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `ESCAPE_PREVENTION_DEVICE_URL` varchar(256) COLLATE utf8_bin NOT NULL,
  `RECORD_INSPECTION` varchar(45) COLLATE utf8_bin NOT NULL,
  `FRY_FROM_WILD` tinyint(1) NOT NULL,
  `USE_OF_ADDITIVE` tinyint(1) NOT NULL,
  `CL_FARM_PRODUCTION_TYPE_ID` int(11) NOT NULL,
  `TIDAL_FLOW_SYSTEM` tinyint(1) NOT NULL,
  `RAS` tinyint(1) NOT NULL,
  `CL_FARM_WATER_SUPPLY_ID` int(11) NOT NULL,
  `USE_FRESH_GROUNDWATER` tinyint(1) NOT NULL,
  `USE_FRESH_GROUNDWATER_URL` varchar(256) COLLATE utf8_bin NOT NULL,
  `DISHARGE_SALINE_IN_FRESH` tinyint(1) NOT NULL,
  `DISHARGE_SALINE_IN_FRESH_URL` varchar(256) COLLATE utf8_bin NOT NULL,
  `DISPOSAL_SLUDGE` varchar(256) COLLATE utf8_bin NOT NULL,
  `UPDATER_ID` int(11) NOT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farmaq_ponds`
--

DROP TABLE IF EXISTS `reg_entity_farmaq_ponds`;
CREATE TABLE `reg_entity_farmaq_ponds` (
  `ID` int(10) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL DEFAULT '0',
  `POND_NUMBER` varchar(10) COLLATE utf8_bin NOT NULL,
  `POND_DESCRIPTION` varchar(256) COLLATE utf8_bin NOT NULL,
  `CL_POND_TYPE_ID` int(11) NOT NULL DEFAULT '0',
  `CL_SPECIES_ID` int(11) NOT NULL DEFAULT '0',
  `POND_SIZE` double(8,2) NOT NULL DEFAULT '0.00',
  `CL_POND_SIZE_UNIT_ID` int(11) NOT NULL DEFAULT '0',
  `POND_VOLUME` double(8,2) NOT NULL DEFAULT '0.00',
  `CL_POND_VOLUME_UNIT_ID` int(11) NOT NULL DEFAULT '0',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farm_buildings`
--

DROP TABLE IF EXISTS `reg_entity_farm_buildings`;
CREATE TABLE `reg_entity_farm_buildings` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CL_FARM_BUILDING_TYPE_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) DEFAULT NULL,
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='description of existing other building than production (plot, barn, etc..)';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farm_details`
--

DROP TABLE IF EXISTS `reg_entity_farm_details`;
CREATE TABLE `reg_entity_farm_details` (
  `ID` int(10) UNSIGNED NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `REG_ENTITY_OWNER_ID` int(11) NOT NULL DEFAULT '0',
  `SYS_USER_FARMADMIN_ID` int(11) DEFAULT NULL,
  `SIZE` double(8,2) NOT NULL,
  `CL_SIZE_UNIT_ID` int(11) NOT NULL DEFAULT '0',
  `LONGITUDE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `LATITUDE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `AERIAL_VIEW` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `QUOTA_ID` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `WATER_USE_AUTHORIZATION` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `LAND_USE_AUTHORIZATION` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ENVIRONMENT_IMPACT_ASSESSMENT` tinyint(1) NOT NULL,
  `ENVIRONMENT_IMPACT_ASSESSMENT_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `HVH_CONSTRUCT_PERMIT` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `HVH_LAND_TITLE` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `SITING_PROTECTED_AREA` tinyint(1) NOT NULL,
  `SITING_PROTECTED_AREA_AUTHORIZATION_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `HVHE_FARM_EXPENSION` tinyint(1) NOT NULL,
  `HVHE_YES_IN_HVH` tinyint(1) NOT NULL DEFAULT '0',
  `CL_HVHE_EXPENSION_TYPE_ID` int(11) DEFAULT NULL,
  `HVHE_CANAL_RESTAURATION_PLAN` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `CUMUL_IMPACTS` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `MEMBER_COOP_ID` int(11) DEFAULT '0',
  `HAS_A_LAB` tinyint(1) NOT NULL,
  `HEALTH_MANAGEMENT_TRAINING` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `HEALTH_MANAGEMENT_PLAN` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ESCAPE_PREVENTION_DEVICE_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `RECORD_INSPECTION` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `reg_entity_farm_details`
--

INSERT INTO `reg_entity_farm_details` (`ID`, `REG_ENTITY_FARM_ID`, `REG_ENTITY_OWNER_ID`, `SYS_USER_FARMADMIN_ID`, `SIZE`, `CL_SIZE_UNIT_ID`, `LONGITUDE`, `LATITUDE`, `AERIAL_VIEW`, `QUOTA_ID`, `WATER_USE_AUTHORIZATION`, `LAND_USE_AUTHORIZATION`, `ENVIRONMENT_IMPACT_ASSESSMENT`, `ENVIRONMENT_IMPACT_ASSESSMENT_URL`, `HVH_CONSTRUCT_PERMIT`, `HVH_LAND_TITLE`, `SITING_PROTECTED_AREA`, `SITING_PROTECTED_AREA_AUTHORIZATION_URL`, `HVHE_FARM_EXPENSION`, `HVHE_YES_IN_HVH`, `CL_HVHE_EXPENSION_TYPE_ID`, `HVHE_CANAL_RESTAURATION_PLAN`, `CUMUL_IMPACTS`, `MEMBER_COOP_ID`, `HAS_A_LAB`, `HEALTH_MANAGEMENT_TRAINING`, `HEALTH_MANAGEMENT_PLAN`, `ESCAPE_PREVENTION_DEVICE_URL`, `RECORD_INSPECTION`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(52, 126, 125, NULL, 45.00, 29, '100.50176', '13.7563305', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, '', '2017-11-27 09:12:55', '2017-11-27 09:12:55'),
(53, 130, 129, NULL, 30.00, 28, '102.82362', '16.432194', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, '', '2017-11-28 04:30:06', '2017-11-28 04:30:06'),
(54, 131, 125, NULL, 45.00, 27, '100.50176', '13.7563305', NULL, 'xxxx', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, '', '2017-12-04 22:41:39', '2017-12-04 22:41:39');

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farm_details_farm_type`
--

DROP TABLE IF EXISTS `reg_entity_farm_details_farm_type`;
CREATE TABLE `reg_entity_farm_details_farm_type` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CL_FARM_TYPE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farm_facilities`
--

DROP TABLE IF EXISTS `reg_entity_farm_facilities`;
CREATE TABLE `reg_entity_farm_facilities` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `ACCESS_TOILETS` tinyint(1) NOT NULL,
  `ACCESS_TOILETS_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'Pictures of toilets',
  `ACCESS_SHOWER` tinyint(1) NOT NULL,
  `ACCESS_SHOWER_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'Picture of shower',
  `ACCESS_PRIVATE_ROOM` tinyint(1) NOT NULL,
  `ACCESS_PRIVATE_ROOM_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'Pictures of private room',
  `UPDATER_ID` int(11) DEFAULT NULL,
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='descirption of existing facilities';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farm_providers`
--

DROP TABLE IF EXISTS `reg_entity_farm_providers`;
CREATE TABLE `reg_entity_farm_providers` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `REG_ENTITY_SUPPLIER_ID` int(11) NOT NULL,
  `CL_PRODUCT_TYPES_ID` int(11) DEFAULT '1',
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `reg_entity_farm_providers`
--

INSERT INTO `reg_entity_farm_providers` (`ID`, `REG_ENTITY_FARM_ID`, `REG_ENTITY_SUPPLIER_ID`, `CL_PRODUCT_TYPES_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(14, 126, 127, 5, '1', NULL, '2017-11-27 17:14:37', '2017-11-27 17:14:37');

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farm_water_supply`
--

DROP TABLE IF EXISTS `reg_entity_farm_water_supply`;
CREATE TABLE `reg_entity_farm_water_supply` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CL_WATER_SUPPLY_TYPE_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) DEFAULT NULL,
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='description of farm water source';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_product_suppliers`
--

DROP TABLE IF EXISTS `reg_entity_product_suppliers`;
CREATE TABLE `reg_entity_product_suppliers` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ENTITY_ID` int(11) NOT NULL DEFAULT '0',
  `CL_PRODUCT_TYPES_ID` int(11) NOT NULL DEFAULT '0',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff`
--

DROP TABLE IF EXISTS `reg_entity_staff`;
CREATE TABLE `reg_entity_staff` (
  `REG_ENTITY_ID` int(10) UNSIGNED NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CL_LANGUAGE_ID` int(11) DEFAULT NULL,
  `CL_POSITION_TYPE_ID` int(11) NOT NULL,
  `CL_LEGAL_STATUS_ID` int(11) NOT NULL,
  `CHARACTERISTICS_1` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `CHARACTERISTICS_2` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `NOT_EMPLOYED_ANYMORE` tinyint(1) NOT NULL,
  `TELEPHONE_OFFICE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `MOBILE_OFFICE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_OFFICE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `FROM_LOCAL_COMMUNITY` tinyint(1) NOT NULL,
  `COMPANY_FOCAL_POINT` tinyint(4) NOT NULL,
  `WORKING_PERMIT_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of individuals and companies';

--
-- Contenu de la table `reg_entity_staff`
--

INSERT INTO `reg_entity_staff` (`REG_ENTITY_ID`, `REG_ENTITY_FARM_ID`, `CL_LANGUAGE_ID`, `CL_POSITION_TYPE_ID`, `CL_LEGAL_STATUS_ID`, `CHARACTERISTICS_1`, `CHARACTERISTICS_2`, `NOT_EMPLOYED_ANYMORE`, `TELEPHONE_OFFICE`, `MOBILE_OFFICE`, `EMAIL_OFFICE`, `FROM_LOCAL_COMMUNITY`, `COMPANY_FOCAL_POINT`, `WORKING_PERMIT_URL`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(125, 130, 159, 5, 1, NULL, NULL, 0, '', '6666888999', '', 0, 0, NULL, 4, '', '2017-11-28 10:49:02', '2017-11-28 10:49:02'),
(128, 126, 159, 5, 2, NULL, NULL, 0, '555', '', '', 0, 0, NULL, 3, '', '2017-11-27 17:38:49', '2017-11-27 17:38:49'),
(128, 130, 4, 3, 5, NULL, NULL, 0, '', '99900007776', '', 1, 0, NULL, 4, '', '2017-11-28 10:49:34', '2017-11-28 10:49:34');

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_contract`
--

DROP TABLE IF EXISTS `reg_entity_staff_contract`;
CREATE TABLE `reg_entity_staff_contract` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CONTRACT_NO` varchar(45) COLLATE utf8_bin NOT NULL,
  `CL_CONTRACT_TYPE_ID` int(11) NOT NULL,
  `CL_COMPANY_POSITION_TYPE_ID` int(11) NOT NULL,
  `DEPARTMENT` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `STARTING_DATE` date NOT NULL,
  `AGREED_END_DATE` date DEFAULT NULL,
  `ISSUANCE_DATE` date DEFAULT NULL,
  `CONTINUING_CONTRACT` tinyint(1) NOT NULL COMMENT 'No end date',
  `ACTUAL_TERMINATION_DATE` date DEFAULT NULL COMMENT 'If the contract is closed, the actuall termination date',
  `CONTRACT_DURATION` float DEFAULT NULL,
  `CONTRACT_REMUNERATION` float NOT NULL,
  `CONTRACT_REMUNERATION_CURRENCY_ID` int(11) NOT NULL,
  `CL_PAYMENT_FREQUENCY_ID` int(11) DEFAULT NULL,
  `MINIMUM_WAGES_APPLIED` tinyint(1) NOT NULL,
  `NB_HOURS_PER_DAY` int(2) DEFAULT NULL,
  `NB_DAYS_ANNUAL_LEAVE` int(3) DEFAULT NULL,
  `PAPER_CONTRACT_COPY_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `NO_ANNUAL_LEAVE_SPECIFIED` tinyint(1) DEFAULT NULL,
  `CONTRACT_IN_OTHER_LANGUAGE` tinyint(1) NOT NULL,
  `CL_COUNTRY_ID` int(11) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `reg_entity_staff_contract`
--

INSERT INTO `reg_entity_staff_contract` (`ID`, `REG_ENTITY_ID`, `REG_ENTITY_FARM_ID`, `CONTRACT_NO`, `CL_CONTRACT_TYPE_ID`, `CL_COMPANY_POSITION_TYPE_ID`, `DEPARTMENT`, `STARTING_DATE`, `AGREED_END_DATE`, `ISSUANCE_DATE`, `CONTINUING_CONTRACT`, `ACTUAL_TERMINATION_DATE`, `CONTRACT_DURATION`, `CONTRACT_REMUNERATION`, `CONTRACT_REMUNERATION_CURRENCY_ID`, `CL_PAYMENT_FREQUENCY_ID`, `MINIMUM_WAGES_APPLIED`, `NB_HOURS_PER_DAY`, `NB_DAYS_ANNUAL_LEAVE`, `PAPER_CONTRACT_COPY_URL`, `NO_ANNUAL_LEAVE_SPECIFIED`, `CONTRACT_IN_OTHER_LANGUAGE`, `CL_COUNTRY_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(6, 128, 126, '2017-01', 1, 5, NULL, '2017-01-01', '2017-11-30', NULL, 0, NULL, NULL, 5600, 2, 2, 0, 0, 0, NULL, 0, 0, NULL, 3, '', '2017-11-27 17:40:04', '2017-11-27 17:40:04'),
(8, 125, 130, '444', 1, 5, NULL, '2017-12-29', '2017-12-07', NULL, 0, NULL, NULL, 1500, 1, NULL, 0, 0, 0, NULL, 0, 0, NULL, 4, '', '2017-11-28 10:52:24', '2017-11-28 10:52:24');

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_declaration`
--

DROP TABLE IF EXISTS `reg_entity_staff_declaration`;
CREATE TABLE `reg_entity_staff_declaration` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL COMMENT 'THE FARM ID',
  `REG_ENTITY_STAFF_ID` int(11) NOT NULL COMMENT 'THE STAFF ID',
  `CL_STAFF_DECLARATION_TYPE` int(11) NOT NULL,
  `DECLARATION_DATE` date NOT NULL,
  `DECLARATION_DESCRIPTION` varchar(256) CHARACTER SET utf8 NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table to store declaration coming from external sources';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_management`
--

DROP TABLE IF EXISTS `reg_entity_staff_management`;
CREATE TABLE `reg_entity_staff_management` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `NUMBER_STAFF_FARM_AS_TODAY` int(4) NOT NULL,
  `REGULAR_WORK_START_HOUR` time NOT NULL,
  `REGULAR_WORK_END_HOUR` time NOT NULL,
  `NB_WORKERS_LIVING_IN_FARM` int(4) NOT NULL DEFAULT '0',
  `NB_WORKERS_CHILD_LIVING_IN_FARM` int(4) NOT NULL DEFAULT '0',
  `NB_WORKERS_CHILD_HELPING_IN_FARM` int(4) NOT NULL DEFAULT '0',
  `NB_WORKERS_CHILD_ENROLLED_SCHOOL` int(4) NOT NULL DEFAULT '0',
  `NB_WORKERS_MIGRANTS` int(4) NOT NULL DEFAULT '0',
  `MIMINUM_WAGES_APPLIED_TO_CONTRACT` tinyint(1) NOT NULL,
  `WORKER_OVERTIME` tinyint(1) NOT NULL,
  `IS_OVERTIME_VOLUNTARY` tinyint(1) NOT NULL,
  `NB_REST_DAYS` int(3) NOT NULL DEFAULT '0',
  `EXISTENCE_HAZARDOUS_WORK` tinyint(1) NOT NULL,
  `CL_HARZARDOUS_WORK_TYPE_ID` int(11) DEFAULT NULL,
  `EXISTENCE_FARM_POLICIES` tinyint(1) NOT NULL,
  `FARM_POLICIES` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `EXISTENCE_HEALTH_SAFETY_POLICIES` tinyint(1) NOT NULL,
  `HEALTH_SAFETY_POLICIES` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `EXISTENCE_WORK_ACCIDENT_RECORD` tinyint(1) NOT NULL,
  `WORK_ACCIDENT_RECORD` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ACCESS_TO_PROTECTIVE_EQUIPMENT` tinyint(1) NOT NULL,
  `EMPLOYER_ISSUE_RECORD` tinyint(1) NOT NULL,
  `ISSUE_RECORD_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'URL of uploaded issue record - can be a picture',
  `EXISTENCE_EXTRA_WORK_RECORD` tinyint(1) NOT NULL,
  `EXTRA_WORK_RECORD_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'URL of uploaded extra word record',
  `EXISTENCE_FREEDOM_ASSOCIATION_DISCLAIMER` tinyint(1) NOT NULL,
  `FREEDOM_ASSOCIATION_DISCLAIMER_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'URL of uploaded disclaimer - can be a picture',
  `EXISTENCE_DISCRIMINATION_REGULATION` tinyint(1) NOT NULL,
  `DISCRIMINATION_REGULATION_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'URL of uploaded discrimination record - can be a picture',
  `EXISTENCE_DISCIPLINARY_POLICIES` tinyint(1) NOT NULL,
  `DISCIPLINARY_POLICIES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'URL of uploaded Disciplinary policies ',
  `EXISTENCE_GRIEVING_SYSTEM` tinyint(1) NOT NULL,
  `GRIEVING_SYSTEM_URL` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT 'URL of uploaded grieving system description or picture',
  `PROTECTIVE_EQUIPMENT_AVAILABLE` tinyint(1) NOT NULL,
  `PROTECTIVE_EQUIPMENT_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `SAFETY_CONDITION` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'URL of uploaded safety condition - can be a picture',
  `WORKERS_REPRESENTATIVE_GROUP` tinyint(1) NOT NULL,
  `UPDATER_ID` int(11) DEFAULT NULL,
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Additional information regarding staff at the farm level';

--
-- Contenu de la table `reg_entity_staff_management`
--

INSERT INTO `reg_entity_staff_management` (`REG_ENTITY_FARM_ID`, `NUMBER_STAFF_FARM_AS_TODAY`, `REGULAR_WORK_START_HOUR`, `REGULAR_WORK_END_HOUR`, `NB_WORKERS_LIVING_IN_FARM`, `NB_WORKERS_CHILD_LIVING_IN_FARM`, `NB_WORKERS_CHILD_HELPING_IN_FARM`, `NB_WORKERS_CHILD_ENROLLED_SCHOOL`, `NB_WORKERS_MIGRANTS`, `MIMINUM_WAGES_APPLIED_TO_CONTRACT`, `WORKER_OVERTIME`, `IS_OVERTIME_VOLUNTARY`, `NB_REST_DAYS`, `EXISTENCE_HAZARDOUS_WORK`, `CL_HARZARDOUS_WORK_TYPE_ID`, `EXISTENCE_FARM_POLICIES`, `FARM_POLICIES`, `EXISTENCE_HEALTH_SAFETY_POLICIES`, `HEALTH_SAFETY_POLICIES`, `EXISTENCE_WORK_ACCIDENT_RECORD`, `WORK_ACCIDENT_RECORD`, `ACCESS_TO_PROTECTIVE_EQUIPMENT`, `EMPLOYER_ISSUE_RECORD`, `ISSUE_RECORD_URL`, `EXISTENCE_EXTRA_WORK_RECORD`, `EXTRA_WORK_RECORD_URL`, `EXISTENCE_FREEDOM_ASSOCIATION_DISCLAIMER`, `FREEDOM_ASSOCIATION_DISCLAIMER_URL`, `EXISTENCE_DISCRIMINATION_REGULATION`, `DISCRIMINATION_REGULATION_URL`, `EXISTENCE_DISCIPLINARY_POLICIES`, `DISCIPLINARY_POLICIES`, `EXISTENCE_GRIEVING_SYSTEM`, `GRIEVING_SYSTEM_URL`, `PROTECTIVE_EQUIPMENT_AVAILABLE`, `PROTECTIVE_EQUIPMENT_URL`, `SAFETY_CONDITION`, `WORKERS_REPRESENTATIVE_GROUP`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(126, 0, '08:00:00', '18:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 0, NULL, NULL, '2017-11-27 09:16:20', '2017-11-27 09:16:20'),
(130, 0, '08:00:00', '18:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 0, NULL, NULL, '2017-11-28 05:31:32', '2017-11-28 05:31:32');

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_other_attribute`
--

DROP TABLE IF EXISTS `reg_entity_staff_other_attribute`;
CREATE TABLE `reg_entity_staff_other_attribute` (
  `REG_ENTITY_ID` int(10) UNSIGNED NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `ATTRIBUTE_1_CHAR` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ATTRIBUTE_1_BOOLEAN` tinyint(1) DEFAULT NULL,
  `ATTRIBUTE_1_INT` int(11) DEFAULT NULL,
  `ATTRIBUTE_1_FLOAT` float DEFAULT NULL,
  `ATTRIBUTE_1_CL` int(11) DEFAULT NULL,
  `ATTRIBUTE_1_DATE` date DEFAULT NULL,
  `ATTRIBUTE_2_CHAR` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ATTRIBUTE_2_BOOLEAN` tinyint(1) DEFAULT NULL,
  `ATTRIBUTE_2_INT` int(11) DEFAULT NULL,
  `ATTRIBUTE_2_FLOAT` float DEFAULT NULL,
  `ATTRIBUTE_2_CL` int(11) DEFAULT NULL,
  `ATTRIBUTE_2_DATE` date DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='additional attribues for staff';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_other_attribute_definition`
--

DROP TABLE IF EXISTS `reg_entity_staff_other_attribute_definition`;
CREATE TABLE `reg_entity_staff_other_attribute_definition` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ATTRIBUTE_1_TYPE` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ATTRIBUTE_1_DESCRIPTION` tinyint(1) DEFAULT NULL,
  `ATTRIBUTE_2_TYPE` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ATTRIBUTE_2_DESCRIPTION` tinyint(1) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Store definition of additional attributes';

-- --------------------------------------------------------

--
-- Structure de la table `sys_roles`
--

DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles` (
  `ID` int(11) NOT NULL,
  `CODE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `LABEL` varchar(45) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `sys_roles`
--

INSERT INTO `sys_roles` (`ID`, `CODE`, `LABEL`) VALUES
(1, 'sadmin', 'Super Admin.'),
(2, 'country', 'Country Admin.'),
(3, 'coop', 'Cooperative Admin.'),
(4, 'farm', 'Farm Admin.');

-- --------------------------------------------------------

--
-- Structure de la table `sys_users`
--

DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `SYS_ROLE_ID` int(11) NOT NULL DEFAULT '0',
  `CL_COUNTRY_ID` int(11) DEFAULT NULL,
  `access` int(11) NOT NULL DEFAULT '0',
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `sys_users`
--

INSERT INTO `sys_users` (`id`, `name`, `email`, `password`, `remember_token`, `SYS_ROLE_ID`, `CL_COUNTRY_ID`, `access`, `CREATED_AT`, `UPDATED_AT`, `active`) VALUES
(0, 'MACHINE USER', 'gregoire@mac.comX', 'a', NULL, 2, 3, 0, '2017-10-12 21:15:38', '2017-10-12 21:15:38', 1),
(1, 'Sylvain', 'smathieu@sy2media.com', 'a', 'wn6u8ekuSSGVEkNU7iB4Ny7MoUTrg4Wr02WMX7KmhycjCQ11WAKOTEZFqahm', 1, NULL, 0, '2016-12-13 13:15:10', '2017-01-19 16:26:10', 1),
(2, 'Emmanuelle', 'emabourgois@fairagora.com', 'a', 'fEgzdBjgx4NyG88Z2nOfcSgjk0gOQy8AC7qQDHCQ9bj9p0bxEvTtOyhrEBxy', 1, NULL, 0, '2016-12-31 13:19:35', '2017-04-10 21:40:14', 1),
(3, 'Yann', 'yann.laurent@pagre-it.com', 'a', 'bYKYqJbPQyaBXur7vBYDe4Fca0U4yP0BTgK9N0BT4iGpN0lYyWkKeIIV8ZLw', 1, NULL, 0, '2016-12-31 13:20:49', '2017-09-12 06:47:48', 1),
(4, 'Pau Badia', 'contact@fairagora.com', 'a', 'CU2fh81hE2CZUUDWCqirG6m8FBhSLh6iANYqxADTafKFrMBiqzbOiUroHsgo', 1, NULL, 0, '2017-04-03 21:04:33', '2017-07-26 18:25:05', 1),
(5, 'pitch', 'ema@gmail.com', 'a', 'GFfwcVbQ31BU7mLbMwU65DiLLb9zjM7aIZ8WaDpXA62iLNDqm66ZAsPljbRY', 3, NULL, 12, '2017-04-26 21:58:09', '2017-04-26 22:01:31', 1),
(7, 'Decha Farm', 'paubadiagrimalt@gmail.com', 'a', 'Y6FRqc11PMunhPEoT9w6oTrkezUucCzkscbPZZiQdFsrcseMr4QpS5MHFqA0', 4, NULL, 3, '2017-05-01 19:52:49', '2017-05-04 20:27:55', 1),
(8, 'Tongpoon Thorasap', 'nudeerdk@gmail.com', 'a', NULL, 4, NULL, 21, '2017-05-04 20:08:30', '2017-05-04 20:12:53', 1),
(9, 'Sam Roi Yod Shrimp Farm Cooperative', 'samroiyod_coop@hotmail.com', 'a', NULL, 3, NULL, 12, '2017-05-04 20:31:08', '2017-05-04 20:31:08', 1),
(10, 'Flavie Denelle', 'flavie.denelle@gmail.com', 'a', NULL, 1, NULL, 0, '2017-07-20 20:44:30', '2017-07-20 20:44:30', 1),
(11, 'pu', 'amornratn@mitrphol.com', 'pu', NULL, 1, NULL, 0, '2017-11-24 21:40:24', '2017-11-24 21:40:24', 1),
(12, 'Jamnan', 'jamnank@mitrphol.com', 'jamnan', NULL, 1, NULL, 0, '2017-11-24 21:41:13', '2017-11-24 21:41:13', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cl_commodities`
--
ALTER TABLE `cl_commodities`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `cl_company_position_types`
--
ALTER TABLE `cl_company_position_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `POSITION_TYPES_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_company_position_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_countries`
--
ALTER TABLE `cl_countries`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UNIQUE_CL_COUNTRIES` (`CODE`,`ISO_3_CODE`),
  ADD KEY `cl_countries_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_entity_types`
--
ALTER TABLE `cl_entity_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ENTITY_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_entity_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_farm_building_types`
--
ALTER TABLE `cl_farm_building_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `QUANTITY_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_farm_building_types_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_farm_types`
--
ALTER TABLE `cl_farm_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ENTITY_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_entity_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_hazardous_work_type`
--
ALTER TABLE `cl_hazardous_work_type`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `cl_hvhe_expension_types`
--
ALTER TABLE `cl_hvhe_expension_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `HVHE_EXPENSION_TYPES_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_hvhe_expension_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_languages`
--
ALTER TABLE `cl_languages`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `cl_languages_countries`
--
ALTER TABLE `cl_languages_countries`
  ADD PRIMARY KEY (`CL_LANGUAGE_ID`,`CL_COUNTRY_ID`);

--
-- Index pour la table `cl_legal_status`
--
ALTER TABLE `cl_legal_status`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `cl_measure_types`
--
ALTER TABLE `cl_measure_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `MEASURE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_measure_type_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_plot_activity_types`
--
ALTER TABLE `cl_plot_activity_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `PLOT_TYPES_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_plot_activity_types_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_pond_activity_types`
--
ALTER TABLE `cl_pond_activity_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `MANAGEMENT_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_pond_management_types_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_pond_types`
--
ALTER TABLE `cl_pond_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `POND_TYPE_CODE_UNIQUE` (`CODE`);

--
-- Index pour la table `cl_product_types`
--
ALTER TABLE `cl_product_types`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `cl_quantity_units`
--
ALTER TABLE `cl_quantity_units`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `QUANTITY_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_quantity_units_updater_id_idx` (`UPDATER_ID`),
  ADD KEY `cl_quantity_units_quantity_unit_types_idx` (`CL_QUANTITY_UNIT_TYPE_ID`);

--
-- Index pour la table `cl_quantity_unit_types`
--
ALTER TABLE `cl_quantity_unit_types`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `cl_soil_analysis_types`
--
ALTER TABLE `cl_soil_analysis_types`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `cl_species`
--
ALTER TABLE `cl_species`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SPECIES_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_species_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `dt_audit_bs_farm`
--
ALTER TABLE `dt_audit_bs_farm`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `dt_farmag_plot_management`
--
ALTER TABLE `dt_farmag_plot_management`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `dt_farmag_production`
--
ALTER TABLE `dt_farmag_production`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `dt_farmaq_plot_measurements`
--
ALTER TABLE `dt_farmaq_plot_measurements`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CL_MEASURE_TYPE_ID` (`CL_MEASURE_TYPE_ID`),
  ADD KEY `dt_farmaq_pond_measurements_ibfk_3_idx` (`CL_MEASURE_VALUE_UNIT_ID`),
  ADD KEY `REG_ENTITY_FARM_PLOT_ID` (`REG_ENTITY_FARM_PLOT_ID`);

--
-- Index pour la table `dt_farmaq_pond_management`
--
ALTER TABLE `dt_farmaq_pond_management`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `dt_farmaq_pond_measurements`
--
ALTER TABLE `dt_farmaq_pond_measurements`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CL_MEASURE_TYPE_ID` (`CL_MEASURE_TYPE_ID`),
  ADD KEY `dt_farmaq_pond_measurements_ibfk_3_idx` (`CL_MEASURE_VALUE_UNIT_ID`),
  ADD KEY `REG_ENTITY_FARM_POND_ID` (`REG_ENTITY_FARM_POND_ID`);

--
-- Index pour la table `dt_soil_analysis`
--
ALTER TABLE `dt_soil_analysis`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `dt_water_analysis`
--
ALTER TABLE `dt_water_analysis`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `reg_entities`
--
ALTER TABLE `reg_entities`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CL_ENTITY_UID_TYPE_ID` (`CL_ENTITY_UID_TYPE_ID`);

--
-- Index pour la table `reg_entity_farmag_details`
--
ALTER TABLE `reg_entity_farmag_details`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `reg_entity_farmag_plots`
--
ALTER TABLE `reg_entity_farmag_plots`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `REG_ENTITY_FARM_ID` (`REG_ENTITY_FARM_ID`),
  ADD KEY `REG_ENTITY_FARM_ID_2` (`REG_ENTITY_FARM_ID`),
  ADD KEY `REG_ENTITY_FARM_ID_3` (`REG_ENTITY_FARM_ID`),
  ADD KEY `REG_ENTITY_FARM_ID_4` (`REG_ENTITY_FARM_ID`);

--
-- Index pour la table `reg_entity_farmaq_details`
--
ALTER TABLE `reg_entity_farmaq_details`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `reg_entity_farmaq_ponds`
--
ALTER TABLE `reg_entity_farmaq_ponds`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `REG_ENTITY_FARM_ID` (`REG_ENTITY_FARM_ID`),
  ADD KEY `REG_ENTITY_FARM_ID_2` (`REG_ENTITY_FARM_ID`);

--
-- Index pour la table `reg_entity_farm_buildings`
--
ALTER TABLE `reg_entity_farm_buildings`
  ADD PRIMARY KEY (`REG_ENTITY_FARM_ID`);

--
-- Index pour la table `reg_entity_farm_details`
--
ALTER TABLE `reg_entity_farm_details`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `reg_entity_farm_facilities`
--
ALTER TABLE `reg_entity_farm_facilities`
  ADD PRIMARY KEY (`REG_ENTITY_FARM_ID`);

--
-- Index pour la table `reg_entity_farm_providers`
--
ALTER TABLE `reg_entity_farm_providers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `REG_ENTITY_FARM_ID` (`REG_ENTITY_FARM_ID`),
  ADD KEY `REG_SEED_PROVIDER_ID` (`REG_ENTITY_SUPPLIER_ID`),
  ADD KEY `FK_CL_PRODUCTTYPE` (`CL_PRODUCT_TYPES_ID`);

--
-- Index pour la table `reg_entity_farm_water_supply`
--
ALTER TABLE `reg_entity_farm_water_supply`
  ADD PRIMARY KEY (`REG_ENTITY_FARM_ID`);

--
-- Index pour la table `reg_entity_product_suppliers`
--
ALTER TABLE `reg_entity_product_suppliers`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `reg_entity_staff`
--
ALTER TABLE `reg_entity_staff`
  ADD UNIQUE KEY `FK_COMPKEY` (`REG_ENTITY_ID`,`REG_ENTITY_FARM_ID`);

--
-- Index pour la table `reg_entity_staff_contract`
--
ALTER TABLE `reg_entity_staff_contract`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `reg_entity_staff_declaration`
--
ALTER TABLE `reg_entity_staff_declaration`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `reg_entity_staff_management`
--
ALTER TABLE `reg_entity_staff_management`
  ADD PRIMARY KEY (`REG_ENTITY_FARM_ID`);

--
-- Index pour la table `reg_entity_staff_other_attribute`
--
ALTER TABLE `reg_entity_staff_other_attribute`
  ADD PRIMARY KEY (`REG_ENTITY_ID`);

--
-- Index pour la table `reg_entity_staff_other_attribute_definition`
--
ALTER TABLE `reg_entity_staff_other_attribute_definition`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `sys_roles`
--
ALTER TABLE `sys_roles`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `sys_users`
--
ALTER TABLE `sys_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `INDX_CL_COUNTRY_ID` (`CL_COUNTRY_ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `cl_commodities`
--
ALTER TABLE `cl_commodities`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cl_company_position_types`
--
ALTER TABLE `cl_company_position_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `cl_countries`
--
ALTER TABLE `cl_countries`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The COUNTRIES codelist ID', AUTO_INCREMENT=260;
--
-- AUTO_INCREMENT pour la table `cl_entity_types`
--
ALTER TABLE `cl_entity_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT pour la table `cl_farm_building_types`
--
ALTER TABLE `cl_farm_building_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_farm_types`
--
ALTER TABLE `cl_farm_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `cl_hazardous_work_type`
--
ALTER TABLE `cl_hazardous_work_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `cl_hvhe_expension_types`
--
ALTER TABLE `cl_hvhe_expension_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `cl_languages`
--
ALTER TABLE `cl_languages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT pour la table `cl_legal_status`
--
ALTER TABLE `cl_legal_status`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `cl_measure_types`
--
ALTER TABLE `cl_measure_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `cl_plot_activity_types`
--
ALTER TABLE `cl_plot_activity_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT pour la table `cl_pond_activity_types`
--
ALTER TABLE `cl_pond_activity_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_pond_types`
--
ALTER TABLE `cl_pond_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `cl_product_types`
--
ALTER TABLE `cl_product_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT pour la table `cl_quantity_units`
--
ALTER TABLE `cl_quantity_units`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `cl_quantity_unit_types`
--
ALTER TABLE `cl_quantity_unit_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `cl_soil_analysis_types`
--
ALTER TABLE `cl_soil_analysis_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cl_species`
--
ALTER TABLE `cl_species`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `dt_farmag_plot_management`
--
ALTER TABLE `dt_farmag_plot_management`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `dt_farmag_production`
--
ALTER TABLE `dt_farmag_production`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `dt_farmaq_plot_measurements`
--
ALTER TABLE `dt_farmaq_plot_measurements`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `dt_farmaq_pond_management`
--
ALTER TABLE `dt_farmaq_pond_management`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `dt_farmaq_pond_measurements`
--
ALTER TABLE `dt_farmaq_pond_measurements`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `dt_soil_analysis`
--
ALTER TABLE `dt_soil_analysis`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `dt_water_analysis`
--
ALTER TABLE `dt_water_analysis`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `reg_entities`
--
ALTER TABLE `reg_entities`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT pour la table `reg_entity_farmag_details`
--
ALTER TABLE `reg_entity_farmag_details`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_entity_farmag_plots`
--
ALTER TABLE `reg_entity_farmag_plots`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `reg_entity_farmaq_details`
--
ALTER TABLE `reg_entity_farmaq_details`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_entity_farmaq_ponds`
--
ALTER TABLE `reg_entity_farmaq_ponds`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT pour la table `reg_entity_farm_details`
--
ALTER TABLE `reg_entity_farm_details`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT pour la table `reg_entity_farm_providers`
--
ALTER TABLE `reg_entity_farm_providers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `reg_entity_product_suppliers`
--
ALTER TABLE `reg_entity_product_suppliers`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `reg_entity_staff_contract`
--
ALTER TABLE `reg_entity_staff_contract`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `reg_entity_staff_declaration`
--
ALTER TABLE `reg_entity_staff_declaration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `reg_entity_staff_other_attribute`
--
ALTER TABLE `reg_entity_staff_other_attribute`
  MODIFY `REG_ENTITY_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_entity_staff_other_attribute_definition`
--
ALTER TABLE `reg_entity_staff_other_attribute_definition`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `sys_roles`
--
ALTER TABLE `sys_roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `sys_users`
--
ALTER TABLE `sys_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `dt_farmaq_pond_measurements`
--
ALTER TABLE `dt_farmaq_pond_measurements`
  ADD CONSTRAINT `FKF` FOREIGN KEY (`REG_ENTITY_FARM_POND_ID`) REFERENCES `reg_entity_farmaq_ponds` (`ID`);

--
-- Contraintes pour la table `reg_entities`
--
ALTER TABLE `reg_entities`
  ADD CONSTRAINT `FK_CLTYPE` FOREIGN KEY (`CL_ENTITY_UID_TYPE_ID`) REFERENCES `cl_entity_types` (`ID`);

--
-- Contraintes pour la table `reg_entity_farmag_plots`
--
ALTER TABLE `reg_entity_farmag_plots`
  ADD CONSTRAINT `FK_PLOT2FARMS` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`);

--
-- Contraintes pour la table `reg_entity_farmaq_ponds`
--
ALTER TABLE `reg_entity_farmaq_ponds`
  ADD CONSTRAINT `FK_PONDS2FARM` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`);

--
-- Contraintes pour la table `reg_entity_farm_providers`
--
ALTER TABLE `reg_entity_farm_providers`
  ADD CONSTRAINT `FK_CL_PRODUCTTYPE` FOREIGN KEY (`CL_PRODUCT_TYPES_ID`) REFERENCES `cl_product_types` (`ID`);

--
-- Contraintes pour la table `sys_users`
--
ALTER TABLE `sys_users`
  ADD CONSTRAINT `FK_CLCOUNTRY` FOREIGN KEY (`CL_COUNTRY_ID`) REFERENCES `cl_countries` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
