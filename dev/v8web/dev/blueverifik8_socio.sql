-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 22 Janvier 2018 à 21:10
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blueverifik8`
--
CREATE DATABASE IF NOT EXISTS `blueverifik8` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `blueverifik8`;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_administrative_characteristic_types`
--

CREATE TABLE `cl_app_administrative_characteristic_types` (
  `ID` int(11) NOT NULL COMMENT 'Administrative characteristic type',
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` char(2) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(128) CHARACTER SET utf8 NOT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Administrative characteristic type';

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_company_position_types`
--

CREATE TABLE `cl_app_company_position_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_app_company_position_types`
--

INSERT INTO `cl_app_company_position_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'CEO', 'Company CEO', 'Company CEO', 'Company CEO', 'Company CEO', 'PDG', NULL, 'CEO บริษัท', NULL, NULL, NULL, NULL, 1, NULL, '2016-11-13 15:17:13', '2017-09-12 13:26:58'),
(2, 1, 'OWN', 'Company Owner', 'Small Company Owner', 'Company Owner', 'Company Owner', 'Propriétaire de l\'entreprise', NULL, 'เจ้าของ บริษัท', NULL, NULL, NULL, NULL, 1, NULL, '2016-11-13 15:18:30', '2017-09-12 13:26:58'),
(3, 1, 'PROD', 'Production Manager', 'Production Manager', 'Production Manager', 'Production Manager', 'Gestionnaire de production', NULL, 'ผู้จัดการฝ่ายผลิต', NULL, NULL, NULL, NULL, 1, NULL, '2016-11-13 15:18:30', '2017-09-12 13:26:58'),
(4, 1, 'SALES', 'Sales Manager', 'Sales Manager', 'Sales Manager', 'Sales Manager', 'Responsable des ventes', NULL, 'ผู้จัดการฝ่ายขาย', NULL, NULL, NULL, NULL, 1, NULL, '2016-11-13 21:08:54', '2017-09-12 13:26:58'),
(5, 1, 'WORK', 'Worker', 'Worker', 'Worker', 'Worker', NULL, NULL, 'ผู้ปฏิบัติงาน', NULL, NULL, NULL, NULL, 1, NULL, '2016-11-13 21:08:54', '2017-09-12 13:26:58');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_contract_types`
--

CREATE TABLE `cl_app_contract_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='type of contracts';

--
-- Contenu de la table `cl_app_contract_types`
--

INSERT INTO `cl_app_contract_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'ORAL', 'ORAL', 'ORAL', 'ORAL', 'ORAL', 'ORAL', NULL, 'ทางปาก', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-04 17:53:42', '2017-11-04 17:53:42'),
(2, 1, 'WRITTEN', 'WRITTEN', 'WRITTEN', 'WRITTEN', 'WRITTEN', 'ECRIT', NULL, 'เป็นลายลักษณ์อักษร', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-04 17:53:42', '2017-11-04 17:53:42');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_deduction_salary_types`
--

CREATE TABLE `cl_app_deduction_salary_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_energy_types`
--

CREATE TABLE `cl_app_energy_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_engine_roles`
--

CREATE TABLE `cl_app_engine_roles` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_engine_types`
--

CREATE TABLE `cl_app_engine_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_entity_document_types`
--

CREATE TABLE `cl_app_entity_document_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_entity_types`
--

CREATE TABLE `cl_app_entity_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `IS_COMPANY` tinyint(1) NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_app_entity_types`
--

INSERT INTO `cl_app_entity_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `IS_COMPANY`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'IND', 'Individual', 'Individual', 'Individual', 'Individual', 'Personne', NULL, 'บุคคล', NULL, NULL, NULL, NULL, 0, 1, NULL, '2014-12-31 21:00:00', '2017-09-12 13:28:43'),
(2, 1, 'FARM', 'Any type of farm', NULL, 'Any type of farm', 'Any type of farm', 'Tout type de ferme', NULL, 'ฟาร์ม', NULL, NULL, NULL, NULL, 0, 1, NULL, '2016-10-03 11:03:11', '2017-09-12 13:28:43'),
(5, 1, 'COOP', 'Cooperative', 'Cooperative', 'Cooperative', 'Cooperative', 'Coopérative', NULL, 'สหกรณ์', NULL, NULL, NULL, NULL, 1, 1, NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43'),
(6, 1, 'FM', 'Feed Mill', 'Feed Mill', 'Feed Mill', 'Feed Mill', NULL, NULL, 'โรงงานอาหาร', NULL, NULL, NULL, NULL, 1, 1, NULL, '2017-09-12 13:28:43', '2017-09-12 13:28:43'),
(7, 1, 'LAB', 'Laboratory', 'Laboratory', 'Laboratory', 'Laboratory', 'Laboratoire', NULL, 'ห้องปฏิบัติการ', NULL, NULL, NULL, NULL, 1, 1, NULL, '2017-09-12 13:28:43', '2017-09-12 13:28:43'),
(8, 1, 'COM', 'Commercial company', 'Commercial company', 'Commercial company', 'Commercial company', 'Société privée', NULL, 'บริษัท พาณิชย์', NULL, NULL, NULL, NULL, 1, 1, NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43'),
(9, 1, 'GOV', 'Government Institution', 'Government Institution', 'Government Institution', 'Government Institution', 'Institution gouvernementale', NULL, 'Government Institution', NULL, NULL, NULL, NULL, 1, 1, NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43'),
(10, 1, 'NGO', 'Non-Governmental Organization', 'NGO', 'NGO', 'NGO', 'ONG', NULL, 'Xngkh̒kr phạtʹhnā xekchn', NULL, NULL, NULL, NULL, 1, 1, NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43'),
(99, 1, 'SYS', 'System-related entity', 'System-related entity', 'System-related entity', 'System-related entity', 'System-related entity', NULL, 'เอนทิตีที่เกี่ยวกับระบบ', NULL, NULL, NULL, NULL, 0, 1, NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_get_back_financial_deposit_reasons`
--

CREATE TABLE `cl_app_get_back_financial_deposit_reasons` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_hazardous_training_types`
--

CREATE TABLE `cl_app_hazardous_training_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_hazardous_work_type`
--

CREATE TABLE `cl_app_hazardous_work_type` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of hazardous work type';

--
-- Contenu de la table `cl_app_hazardous_work_type`
--

INSERT INTO `cl_app_hazardous_work_type` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'SUGHARV', 'Sugar Cane harvester', 'Sugar Cane harvester', 'Sugar Cane harvester', 'Sugar Cane harvester', 'Coupeur de canne à sucre', NULL, 'เครื่องเก็บเกี่ยวอ้อย', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 10:18:02', '2017-09-23 10:18:02'),
(2, 1, 'MANCUT', 'Manual Cutting', 'Manual Cutting', 'Manual Cutting', 'Manual Cutting', 'Coupe manuelle', NULL, 'ตัดด้วยมือ', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-28 13:35:34', '2017-11-28 13:35:34'),
(3, 1, 'PESTSP', 'Pesticides Spraying', 'Pesticides Spraying', 'Pesticides Spraying', 'Pesticides Spraying', NULL, NULL, 'พ่นยาฆ่าแมลง', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-28 13:43:12', '2017-11-28 13:43:12'),
(4, 1, 'MECHTIL', 'Mechanical tillage', 'Mechanical tillage', 'Mechanical tillage', 'Mechanical tillage', 'Travail du sol manuel', NULL, 'การไถพรวนแบบเครื่องกล', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-28 13:43:12', '2017-11-28 13:43:12'),
(5, 1, 'FERT', 'Fertilizer Use', 'Fertilizer Use', 'Fertilizer Use', 'Fertilizer Use', 'Utilisation d\'engrais', NULL, 'การใช้ปุ๋ย', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-28 13:43:12', '2017-11-28 13:43:12');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_hiring_restriction_types`
--

CREATE TABLE `cl_app_hiring_restriction_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_hull_types`
--

CREATE TABLE `cl_app_hull_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_hvhe_expension_types`
--

CREATE TABLE `cl_app_hvhe_expension_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `CL_COUNTRY_ID` int(11) NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_app_hvhe_expension_types`
--

INSERT INTO `cl_app_hvhe_expension_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `CL_COUNTRY_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'POND', 'New Pond', 'Creation of new pond', 'Creation of new pond', 'Creation of new pond', 'Création d\'un nouveau bassin', NULL, 'การสร้างบ่อใหม่', NULL, NULL, NULL, NULL, 235, 1, NULL, '2016-11-13 20:10:38', '2017-09-12 13:29:31'),
(2, 1, 'CANAL', 'Canal creation', 'Canal creation', 'Canal creation', 'Canal creation', 'Création d\'un canal', NULL, 'การสร้างคลอง', NULL, NULL, NULL, NULL, 235, 1, NULL, '2016-11-13 20:25:06', '2017-09-12 13:29:31');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_legal_status`
--

CREATE TABLE `cl_app_legal_status` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='legal status (Married, divorced etc...)';

--
-- Contenu de la table `cl_app_legal_status`
--

INSERT INTO `cl_app_legal_status` (`ID`, `CL_COUNTRY_ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 205, 1, 'SING', 'Single', 'Single', 'Single', 'Single', 'Célibataire', NULL, 'เดียว', NULL, NULL, NULL, NULL, 1, 'ISO 20022 applied to Thailand', '2017-09-23 10:50:17', '2017-09-23 10:50:17'),
(2, 205, 1, 'MARR', 'Married', 'Married', 'Married', 'Married', 'Marié', NULL, 'แต่งงาน', NULL, NULL, NULL, NULL, 1, 'ISO 20022 applied to Thailand', '2017-09-23 10:50:17', '2017-09-23 10:50:17'),
(3, 205, 1, 'LDIV', 'Legally divorced', 'Legally divored', 'Legally divorced', 'Legally divorced', 'Divorcé légalement', NULL, 'หย่าร้างตามกฎหมาย', NULL, NULL, NULL, NULL, 1, 'ISO 20022 applied to Thailand', '2017-09-23 10:51:38', '2017-09-23 10:51:38'),
(4, 205, 1, 'DIVO', 'Divorced', 'Divorced', 'Divorced', 'Divorced', 'Divorcé', NULL, 'การหย่าร้าง', NULL, NULL, NULL, NULL, 1, 'ISO 20022 applied to Thailand', '2017-09-23 10:51:38', '2017-09-23 10:51:38'),
(5, 205, 1, 'WIDO', 'Widow', 'Widow', 'Widow', 'Widow', 'Veuve', NULL, 'แม่หม้าย', NULL, NULL, NULL, NULL, 1, 'ISO 20022 applied to Thailand', '2017-09-23 10:52:56', '2017-09-23 10:52:56'),
(6, 205, 1, 'UNIO', 'Stable Union', 'Stable Union', 'Stable Union', 'Stable Union', 'Union stable', NULL, 'สหภาพคงที่', NULL, NULL, NULL, NULL, 1, 'ISO 20022 applied to Thailand', '2017-09-23 10:52:56', '2017-09-23 10:52:56'),
(7, 205, 1, 'SEPA', 'Separated', 'Separated', 'Separated', 'Separated', 'Séparé', NULL, 'แยกออกจากกัน', NULL, NULL, NULL, NULL, 1, 'ISO 20022 applied to Thailand', '2017-09-23 10:55:43', '2017-09-23 10:55:43');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_license_types`
--

CREATE TABLE `cl_app_license_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_locations`
--

CREATE TABLE `cl_app_locations` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CL_REF_COUNTRY_ID` int(11) DEFAULT NULL,
  `CL_REF_REGION_ID` int(11) DEFAULT NULL,
  `CL_APP_CONSTRUCTION_LOCATION_TYPE` int(11) DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='UN/CEFACT FLUX Vessel Domain: Entity used to provide information on a physical location or place of construction.';

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_location_types`
--

CREATE TABLE `cl_app_location_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_measure_types`
--

CREATE TABLE `cl_app_measure_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_app_measure_types`
--

INSERT INTO `cl_app_measure_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'pH', 'pH', 'pH', 'pH', 'pH', 'pH', NULL, 'พีเอช', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-23 17:00:47', '2017-09-12 13:30:11'),
(2, 1, 'TEMP', 'Temperature', 'Temperature', 'Temperature', 'Temperature', 'Température', NULL, 'อุณหภูมิ', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-23 17:00:47', '2017-09-12 13:30:11'),
(3, 1, 'DO', 'Dissolved Oxygen', 'Dissolved Oxygen', 'Dissolved Oxygen', 'Dissolved Oxygen', 'Oxygène dissous', NULL, 'ออกซิเจนละลาย', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-23 17:02:34', '2017-09-12 13:30:11'),
(4, 1, 'SAL', 'Salinity', 'Salinity', 'Salinity', 'Salinity', 'Salinité', NULL, 'ความเค็ม', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-23 17:02:34', '2017-09-12 13:30:11'),
(5, 1, 'AMMO', 'Ammonia', 'Ammonia', 'Ammonia', 'Ammonia', 'Ammoniac', NULL, 'สารแอมโมเนีย', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-23 17:03:03', '2017-09-12 13:30:11');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_no_early_termination_contract_reasons`
--

CREATE TABLE `cl_app_no_early_termination_contract_reasons` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_payment_debt_types`
--

CREATE TABLE `cl_app_payment_debt_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_payment_frequencies`
--

CREATE TABLE `cl_app_payment_frequencies` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_app_payment_frequencies`
--

INSERT INTO `cl_app_payment_frequencies` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'DAY', 'Daily', 'Daily', 'Daily', 'Daily', 'Journalier', NULL, 'ประจำวัน', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-23 19:36:53', '2017-11-23 19:36:53'),
(2, 1, 'WEEK', 'Weekly', 'Weekly', 'Weekly', 'Weekly', 'Hebdomadaire', NULL, 'รายสัปดาห์', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-23 19:36:53', '2017-11-23 19:36:53'),
(3, 1, 'MON', 'Monthly', 'Monthly', 'Monthly', 'Monthly', 'Mensuel', NULL, 'Monthly', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-23 19:36:53', '2017-11-23 19:36:53');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_power_units`
--

CREATE TABLE `cl_app_power_units` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_prod_data_entry_types`
--

CREATE TABLE `cl_app_prod_data_entry_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_app_prod_data_entry_types`
--

INSERT INTO `cl_app_prod_data_entry_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'MAN', 'Manual entry', 'Data entry is done by the user', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 11:10:25', '2017-09-23 11:10:25'),
(2, 1, 'COMP', 'Computarized', 'Date are computed by the system', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 11:10:25', '2017-09-23 11:10:25');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_propulsion_types`
--

CREATE TABLE `cl_app_propulsion_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_quantity_units`
--

CREATE TABLE `cl_app_quantity_units` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `CL_QUANTITY_UNIT_TYPE_ID` int(11) NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_app_quantity_units`
--

INSERT INTO `cl_app_quantity_units` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `CL_QUANTITY_UNIT_TYPE_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'LBS', 'Pounds', 'Pounds (Lbs.) as a weight quantity type', 'Pounds (Lbs.)', 'Pounds (Lbs.)', 'Livre anglaise (unité de poids)', NULL, 'ปอนด์อังกฤษ (หน่วยน้ำหนัก)', NULL, NULL, NULL, NULL, 3, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(2, 1, 'KG', 'Kg', 'Kilograms as a weight quantity type', 'Kilograms', 'Kilograms', 'Kilogrammes', NULL, 'กิโลกรัม', NULL, NULL, NULL, NULL, 3, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(3, 1, 'UNITS', 'Units', 'Units as quantity type', 'Units as quantity type', 'Units as quantity type', 'Unité (nombre)', NULL, 'หน่วย (จำนวน)', NULL, NULL, NULL, NULL, 4, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(4, 1, 'CASES', 'Cases', 'Cases as quantity type', 'Cases as quantity type', 'Cases as quantity type', 'Caisses (unité de quantité)', NULL, 'คดี (หน่วยปริมาณ)', NULL, NULL, NULL, NULL, 4, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(5, 1, 'M', 'Meters', 'Meters as length units', 'Meters', 'Meters', 'Mètres', NULL, 'เมตร', NULL, NULL, NULL, NULL, 1, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(6, 1, 'M3', 'Cubic meters', 'Cubic meters as volume units', 'Cubic meters', 'Cubic meters', 'Mètres Cubes', NULL, 'ลูกบาศก์เมตร', NULL, NULL, NULL, NULL, 2, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(7, 1, 'FEET', 'Feet', 'Feet as length units', 'Feet', 'Feet', 'Pied anglais', NULL, 'เท้าอังกฤษ', NULL, NULL, NULL, NULL, 1, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(8, 1, 'FEET3', 'Cubic feet', 'Cubic feet as volume units', 'Cubic feet', 'Cubic feet', 'Pied cube', NULL, 'ลูกบาศก์ฟุต', NULL, NULL, NULL, NULL, 2, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(9, 1, 'LIT', 'Liters', 'Liters as volume units', 'Liters', 'Liters', 'Litres', NULL, 'ลิตร', NULL, NULL, NULL, NULL, 2, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(10, 1, 'GALL', 'Gallons', 'Gallons as volume units', 'Gallons', 'Gallons', 'Galons', NULL, 'แกลลอน', NULL, NULL, NULL, NULL, 2, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(11, 1, 'MT', 'Metric tons', 'Metric tons as tonnage units', 'Metric tons', 'Metric tons', 'Tonnes métriques', NULL, 'เมตริกตัน', NULL, NULL, NULL, NULL, 5, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(12, 1, 'HRS', 'Hours', 'Hours fished', 'Hours fished', 'Hours fished', 'Heures passées à pêcher', NULL, 'เวลาที่ใช้ตกปลา', NULL, NULL, NULL, NULL, 6, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(13, 1, 'DAYS', 'Days', 'Days fished', 'Days fished', 'Days fished', 'Jours passés à pêcher', NULL, 'วันที่ใช้ตกปลา', NULL, NULL, NULL, NULL, 6, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(14, 1, 'HA', 'Hectares', 'Hectares as length units', 'Hectares ', 'Hectares ', 'Hectares ', NULL, 'เฮคเตอร์', NULL, NULL, NULL, NULL, 7, 1, '', '2017-01-04 14:11:35', '2017-09-12 13:32:19'),
(15, 1, 'M2', 'Square meters', 'Square meters', 'Square meters', 'Square meters', 'Mètres carrés', NULL, 'ตารางเมตร', NULL, NULL, NULL, NULL, 7, 1, NULL, '2017-01-06 10:31:05', '2017-09-12 13:32:19'),
(16, 1, 'pH', 'pH', 'pH unit', 'pH unit', 'pH unit', 'Unité de ph', NULL, 'หน่วย pH', NULL, NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:33:18', '2017-09-12 13:32:19'),
(17, 1, 'T°C', 'Degree Celsius', 'Temperature in Celsius', 'Degree Celsius', 'Degree Celsius', 'Degrés Celsius', NULL, 'องศาเซลเซียส', NULL, NULL, NULL, NULL, 9, 1, NULL, '2017-01-06 10:39:41', '2017-09-12 13:32:19'),
(18, 1, 'T°F', 'Degree Fahrenheit', 'Temperature in Fahrenheit', 'Degree Fahrenheit', 'Degree Fahrenheit', 'Degrés Fahrenheit', NULL, 'องศาฟาเรนไฮต์', NULL, NULL, NULL, NULL, 9, 1, NULL, '2017-01-06 10:40:24', '2017-09-12 13:32:19'),
(19, 1, 'PPM', 'ppm', 'Part per million', 'Part per million', 'Part per million', 'Partie par million', NULL, 'ส่วนต่อล้าน', NULL, NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:46:06', '2017-09-12 13:32:19'),
(20, 1, 'MG/L', 'mg/l', 'Milligram per liter ', 'mg/l', 'mg/l', 'mg/l', NULL, 'มิลลิกรัม / ลิตร', NULL, NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:46:06', '2017-09-12 13:32:19'),
(21, 1, 'PERCENT', '%', 'Percentage', '%', '%', '%', '%', '%', NULL, NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:46:06', '2017-09-12 13:32:19'),
(22, 1, 'PERTHOUS', 'ppt (‰)', 'Perthousand', 'ppt (‰)', 'ppt (‰)', 'ppt (‰)', 'ppt (‰)', 'ต่อพัน (‰)', 'ppt (‰)', NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:46:06', '2017-09-12 13:32:19'),
(23, 1, 'KG/L', 'Kg/l', '\r\nKilogram per liter', 'Kg/l', 'Kg/l', 'Kg/l', 'Kg/l', 'กก. / ลิตร', 'Kg/l', NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:47:54', '2017-09-12 13:32:19'),
(24, 1, 'G/L', 'g/l', 'g/l', 'g/l', 'g/l', 'g/l', NULL, 'g/l', NULL, NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:50:41', '2017-09-12 13:32:19'),
(25, 1, 'PSU', 'psu', 'Practical Salinity Unit', 'psu', 'psu', 'psu', NULL, 'psu', NULL, NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:50:41', '2017-09-12 13:32:19'),
(26, 1, 'G/KG', 'g/Kg', 'Gram per Kilogram (Salinity unit)', 'g/Kg', 'g/Kg', 'g/Kg', NULL, 'g/Kg', NULL, NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:50:41', '2017-09-12 13:32:19'),
(27, 1, 'FEET2', 'Square feet', 'Square feet as area unit', 'Square feet', 'Square feet', 'Pieds carrés', NULL, 'ตารางฟุต', NULL, NULL, NULL, NULL, 7, 1, NULL, '2017-01-06 10:53:14', '2017-09-12 13:32:19'),
(28, 1, 'ACRE', 'Acre', 'Acre as area unit', 'Acre', 'Acre', 'Acre', NULL, 'เอเคอร์', NULL, NULL, NULL, NULL, 7, 1, NULL, '2017-01-06 10:53:40', '2017-09-12 13:32:19'),
(29, 1, 'RAI', 'Rai (area)', 'Rai area thai unit', 'Rai area thai unit', 'Rai area thai unit', 'Rai unité de surface thai', NULL, 'ไร่', NULL, NULL, NULL, NULL, 7, 1, NULL, '2017-01-09 08:16:06', '2017-09-12 13:32:19');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_quantity_unit_types`
--

CREATE TABLE `cl_app_quantity_unit_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_app_quantity_unit_types`
--

INSERT INTO `cl_app_quantity_unit_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'LEN', 'Length units', 'For quantity units modeling lengths', 'Length units', 'Length units', 'Unités de longueur', NULL, 'หน่วยความยาว', NULL, NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(2, 1, 'VOL', 'Volume', 'For quantity units modeling volumes', 'Volume Units', 'Volume Units', 'Unités de Volume', NULL, 'ปริมาณ', NULL, NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(3, 1, 'WGT', 'Weight', 'For quantity units modeling weights', 'Weight', 'Weight', 'Unités de poids', NULL, 'หน่วยน้ำหนัก', NULL, NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(4, 1, 'ITM', 'Item Units', 'For quantity units modeling items', 'Item Units', 'Item Units', 'Unités pour les unités (éléments)', NULL, 'หน่วยสำหรับหน่วย (องค์ประกอบ)', NULL, NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(5, 1, 'TON', 'Tonnage Units (Vessel)', 'For quantity units modeling tonnages (vessel)', 'Tonnage Units (Vessel)', 'Tonnage Units (Vessel)', 'Unités de tonnage (Navire)', NULL, 'หน่วยระวางน้ำหนัก (เรือ)', NULL, NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(6, 1, 'EFF', 'Effort (Fisheries)', 'For quantity units modeling fishing effort', 'Effort (Fisheries)', 'Effort (Fisheries)', 'Effort (Pêche)', NULL, 'ความพยายาม (ตกปลา)', NULL, NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(7, 1, 'AREA', 'Area unit', 'For quantity units modeling area or surface', 'Area unit', 'Area unit', 'Unité de surface', NULL, 'หน่วยพื้นผิว', NULL, NULL, NULL, NULL, 1, NULL, '2017-01-05 23:00:00', '2017-09-12 13:31:44'),
(8, 1, 'PHYCHEM', 'Physics and Chemistry units', 'Any unit used in physics and Chemistry (except temperature)', 'Physics and Chemistry units', 'Physics and Chemistry units', 'Unités physico-chimiques', NULL, 'หน่วยกายภาพและเคมี', NULL, NULL, NULL, NULL, 1, NULL, '2017-01-05 23:00:00', '2017-09-12 13:31:44'),
(9, 1, 'TEMP', 'Temperature units', 'Temperature as  measure unit', 'Temperature units', 'Temperature units', 'Unités de température', NULL, 'หน่วยของอุณหภูมิ', NULL, NULL, NULL, NULL, 1, NULL, '2017-01-05 23:00:00', '2017-09-12 13:31:44');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_soil_analysis_types`
--

CREATE TABLE `cl_app_soil_analysis_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of hazardous work type';

--
-- Contenu de la table `cl_app_soil_analysis_types`
--

INSERT INTO `cl_app_soil_analysis_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'GEN', 'Soil Analysis', 'Soil Analysis (no specific information known)', 'Soil Analysis', 'Soil Analysis', 'Analyse de sol', NULL, 'การวิเคราะห์ดิน', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-20 09:58:43', '2017-09-20 09:58:43');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_staff_declaration_types`
--

CREATE TABLE `cl_app_staff_declaration_types` (
  `ID` int(11) NOT NULL COMMENT 'declaration type ID',
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` char(2) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(128) CHARACTER SET utf8 NOT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='contains the list of type of external staff declaration (interview, report)';

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_termination_contract_reasons`
--

CREATE TABLE `cl_app_termination_contract_reasons` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_tiling_activity_types`
--

CREATE TABLE `cl_app_tiling_activity_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_app_tiling_activity_types`
--

INSERT INTO `cl_app_tiling_activity_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'SHOV', 'Manual Shoveling', 'Manual Shoveling', 'Manual Shoveling', 'Manual Shoveling', 'Bechage manuel', NULL, 'คู่มือการพลิกคว่ำ', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 11:14:53', '2017-09-23 11:14:53'),
(2, 1, 'HOE', 'Manual hoeing', 'Manual hoeing', 'Manual hoeing', 'Manual hoeing', 'Sarclage manuel', NULL, 'คู่มือจอบ', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 11:17:07', '2017-09-23 11:17:07'),
(3, 1, 'PLOUGH', 'Animal/mechanical ploughing', 'Animal/mechanical ploughing', 'Animal/mechanical ploughing', 'Animal/mechanical ploughing', 'Labourage animal ou mécanique', NULL, 'การไถพรวนสัตว์ / กล', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 11:17:07', '2017-09-23 11:17:07');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_vessel_characteristics`
--

CREATE TABLE `cl_app_vessel_characteristics` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of vessel characteristics';

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_vessel_equipment_types`
--

CREATE TABLE `cl_app_vessel_equipment_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of vessel equipment type ';

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_vessel_historical_characteristic_types`
--

CREATE TABLE `cl_app_vessel_historical_characteristic_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` char(2) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(128) CHARACTER SET utf8 NOT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='historical vessel characteristic type';

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_vessel_operational_status`
--

CREATE TABLE `cl_app_vessel_operational_status` (
  `ID` int(11) NOT NULL COMMENT 'The REGION codelist ID',
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` char(2) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(128) CHARACTER SET utf8 NOT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='The REGION codelist';

-- --------------------------------------------------------

--
-- Structure de la table `cl_farm_building_types`
--

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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_farm_plot_activity_types`
--

CREATE TABLE `cl_farm_plot_activity_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_farm_plot_activity_types`
--

INSERT INTO `cl_farm_plot_activity_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'SOWI', 'Sowing', 'Sowing', 'Sowing', 'Sowing', 'Plantation', NULL, 'ปลูกอ้อย', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:56:40', '2017-09-23 12:56:40'),
(2, 1, 'WEED', 'weeding', 'weeding', 'weeding', 'weeding', 'Désherbage', NULL, 'ฉีดยากำจัดวัชพืช', '', NULL, NULL, NULL, 1, NULL, '2017-09-23 12:56:40', '2017-09-23 12:56:40'),
(3, 1, 'HARV1', 'Harvesting', 'Harvesting', 'Harvesting', 'Harvesting', 'Récolte', NULL, 'เก็บเกี่ยว', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(4, 1, 'HARV2', 'Harvesting by hands', 'Harvesting by hands', 'Harvesting by hands', 'Harvesting by hands', 'Récolte manuelle', NULL, 'ตัดอ้อยด้วยมือ', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(5, 1, 'HARV3', 'Harvesting with machine', 'Harvesting with machine', 'Harvesting with machine', 'Harvesting with machine', 'Récolte mécanique', NULL, 'ตัดอ้อยด้วยรถตัด', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(6, 1, 'IRRI', 'Irrigation', 'Irrigation', 'Irrigation', 'Irrigation', 'Irrigation', NULL, 'ให้น้ำ', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(7, 1, 'PEST', 'Pesticide use', 'Pesticide use', 'Pesticide use', 'Pesticide use', 'Utilisation de pesticides', NULL, 'การใช้สารกำจัดศัตรูพืช', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(8, 1, 'HERB', 'Herbicide use', 'Herbicide use', 'Herbicide use', 'Herbicide use', 'Utilisation d\'herbicides', NULL, 'การใช้สารเคมีกำจัดวัชพืช', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(9, 1, 'FUNG', 'Fungicide use', 'Fungicide use', 'Fungicide use', 'Fungicide use', 'Utilisation de fongicides', NULL, 'การใช้สารฆ่าเชื้อรา', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(10, 1, 'FERT', 'Fertilizer use', 'Fertilizer use', 'Fertilizer use', 'Fertilizer use', 'Utilisation d\'engrais', NULL, 'ใส่ปุ๋ย', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(11, 1, 'TILL', 'Soil Tillage', 'Soil tillage', 'Soil tillage', 'Soil tillage', 'Travail du sol', NULL, 'ไถ เตรียมดิน', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 13:01:37', '2017-09-23 13:01:37'),
(12, 1, 'TRANS', 'Transport harvested crop out of field', 'Transport harvested crop out of field', 'Transport harvested crop out of field', 'Transport harvested crop out of field', 'Transport de la récolte hors du champs', NULL, 'ขับรถบรรทุก', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-28 17:28:33', '2017-11-28 17:28:33'),
(99, 1, 'OTHER', 'Other', 'Other', 'Other', 'Other', 'Autres', NULL, 'อื่นๆ', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 13:01:37', '2017-09-23 13:01:37');

-- --------------------------------------------------------

--
-- Structure de la table `cl_farm_pond_activity_types`
--

CREATE TABLE `cl_farm_pond_activity_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_farm_pond_activity_types`
--

INSERT INTO `cl_farm_pond_activity_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'SEED', 'Pond Seeding', 'Pond seeding with seed/juveniles', 'Pond Seeding', 'Pond Seeding', 'Ensemmencement Bassin', 'Pond Seeding', 'การเพาะเมล็ดบ่อ', 'Pond Seeding', 'Pond Seeding', 'Pond Seeding', 'Pond Seeding', 1, NULL, '2018-01-17 09:31:45', '2018-01-17 09:31:45'),
(2, 1, 'HARV', 'Pond Harvesting', 'Pond Harvesting', 'Pond Harvesting', 'Pond Harvesting', 'Récolte du bassin', 'Pond Harvesting', 'การเก็บเกี่ยวบ่อน้ำ', 'Pond Harvesting', 'Pond Harvesting', 'Pond Harvesting', 'Pond Harvesting', 1, NULL, '2018-01-17 09:31:45', '2018-01-17 09:31:45');

-- --------------------------------------------------------

--
-- Structure de la table `cl_farm_pond_types`
--

CREATE TABLE `cl_farm_pond_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_farm_pond_types`
--

INSERT INTO `cl_farm_pond_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'RES', 'Reservoir', 'Pond as water reservoir', 'Reservoir', 'Reservoir', 'Réservoir d\'eau', 'Reservoir', 'อ่างเก็บน้ำ', 'Reservoir', 'Reservoir', 'Reservoir', 'Reservoir', 1, NULL, '2017-01-06 11:19:45', '2017-09-12 13:35:05'),
(2, 1, 'GROW', 'Pond for growing', 'Pond for fish growing', 'Pond for growing', 'Pond for growing', 'Bassin pour engraissement', 'Pond for growing', 'บ่อเพาะปลูก', 'Pond for growing', 'Pond for growing', 'Pond for growing', NULL, 1, NULL, '2017-01-06 11:25:19', '2017-09-12 13:35:05'),
(3, 1, 'REP', 'Pond for reproduction', 'Pond for fish reproduction', 'Pond for fish reproduction', 'Pond for fish reproduction', 'Bassin pour la reproduction', 'Pond for fish reproduction', 'บ่อเพื่อการสืบพันธุ์', 'Pond for fish reproduction', 'Pond for fish reproduction', 'Pond for fish reproduction', NULL, 1, NULL, '2017-01-06 11:25:19', '2017-09-12 13:35:05'),
(4, 1, 'SEW', 'Sewage Pond', 'Pond for sewage cleaning', 'Pond for sewage cleaning', 'Pond for sewage cleaning', 'Bassin d\'épandange', 'Pond for sewage cleaning', 'บ่อบำบัดน้ำเสีย', 'Pond for sewage cleaning', 'Pond for sewage cleaning', 'Pond for sewage cleaning', 'Pond for sewage cleaning', 1, NULL, '2017-01-06 11:25:19', '2017-09-12 13:35:05');

-- --------------------------------------------------------

--
-- Structure de la table `cl_farm_types`
--

CREATE TABLE `cl_farm_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_farm_types`
--

INSERT INTO `cl_farm_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'FARMAQ', 'Aquaculture Farm (growing)', 'Aquaculture Farm (growing)', 'Aquaculture Farm (growing)', 'Aquaculture Farm (growing)', 'Ferme aquacole (engraissement)', NULL, 'เพาะเลี้ยงสัตว์น้ำ (เติบโต)', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-03 11:03:11', '2017-09-12 13:28:43'),
(2, 1, 'FARMAQ-H', 'Aquaculture Hatchery', 'Aquaculture Hatchery', 'Aquaculture Hatchery', 'Aquaculture Hatchery', 'Ferme aquacole de reproduction', NULL, 'เพาะเลี้ยงสัตว์น้ำเพาะเลี้ยงสัตว์น้ำ', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43'),
(3, 1, 'FARMAQ-M', 'Aquaculture Farm growing and hatchery', 'Aquaculture Farm growing and hatchery', 'Aquaculture Farm growing and hatchery', 'Aquaculture Farm growing and hatchery', 'Ferme aquacole mixte reproduction et engraissement', NULL, 'การเพาะเลี้ยงสัตว์น้ำการเพาะเลี้ยงและการเพาะพันธุ์', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-03 11:05:46', '2017-09-12 13:28:43'),
(4, 1, 'FARMSUG', 'Sugar cane Farm', 'Sugar cane Farm production', 'Sugar cane Farm', 'Sugar cane Farm', 'Ferme canne à sucre', NULL, 'ฟาร์มอ้อย', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-18 17:42:16', '2017-09-12 13:28:43');

-- --------------------------------------------------------

--
-- Structure de la table `cl_fish_fishing_types`
--

CREATE TABLE `cl_fish_fishing_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_fish_fishing_zones`
--

CREATE TABLE `cl_fish_fishing_zones` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_admin_level_1`
--

CREATE TABLE `cl_ref_admin_level_1` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `I18N_LA` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_admin_level_2`
--

CREATE TABLE `cl_ref_admin_level_2` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `CL_ADMIN_LEVEL_1_ID` int(11) NOT NULL DEFAULT '0',
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `I18n_DEFAULT` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `I18N_LA` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_commodities`
--

CREATE TABLE `cl_ref_commodities` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of phytosanitary products';

--
-- Contenu de la table `cl_ref_commodities`
--

INSERT INTO `cl_ref_commodities` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `CPC_CODE`, `HS_CODE`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, '0156', 'Sugar Cane', 'Sugar cane - Saccharum officinarum', '0182', '1212.99', 'Sugar Cane', 'Sugar Cane', 'Sucre de Canne', NULL, 'อ้อย', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 08:16:35', '2017-09-23 08:16:35');

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_countries`
--

CREATE TABLE `cl_ref_countries` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='The COUNTRIES codelist';

--
-- Contenu de la table `cl_ref_countries`
--

INSERT INTO `cl_ref_countries` (`ID`, `ENABLED`, `CODE`, `ISO_3_CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'AM', 'ARM', 'Armenia', 'the Republic of Armenia', 'Armenia', 'Armenia', 'Armenia', 'Armenia', 'Armenia', 'Armenia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(2, 1, 'AF', 'AFG', 'Afghanistan', 'the Islamic Republic of Afghanistan', 'Afghanistan', 'Afghanistan', 'Afghanistan', 'Afghanistan', 'Afghanistan', 'Afghanistan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(3, 1, 'AL', 'ALB', 'Albania', 'the Republic of Albania', 'Albania', 'Albania', 'Albania', 'Albania', 'Albania', 'Albania', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(4, 1, 'DZ', 'DZA', 'Algeria', 'the People\'s Democratic Republic of Algeria', 'Algeria', 'Algeria', 'Algeria', 'Algeria', 'Algeria', 'Algeria', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(5, 1, 'AS', 'ASM', 'American Samoa', 'American Samoa', 'American Samoa', 'American Samoa', 'American Samoa', 'American Samoa', 'American Samoa', 'American Samoa', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(6, 1, 'AD', 'AND', 'Andorra', 'the Principality of Andorra', 'Andorra', 'Andorra', 'Andorra', 'Andorra', 'Andorra', 'Andorra', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(7, 1, 'AO', 'AGO', 'Angola', 'the Republic of Angola', 'Angola', 'Angola', 'Angola', 'Angola', 'Angola', 'Angola', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(8, 1, 'AG', 'ATG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'Antigua and Barbuda', 'Antigua and Barbuda', 'Antigua and Barbuda', 'Antigua and Barbuda', 'Antigua and Barbuda', 'Antigua and Barbuda', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(9, 1, 'AR', 'ARG', 'Argentina', 'the Argentine Republic', 'Argentina', 'Argentina', 'Argentina', 'Argentina', 'Argentina', 'Argentina', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(10, 1, 'AU', 'AUS', 'Australia', 'Australia', 'Australia', 'Australia', 'Australia', 'Australia', 'Australia', 'Australia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(11, 1, 'AT', 'AUT', 'Austria', 'the Republic of Austria', 'Austria', 'Austria', 'Austria', 'Austria', 'Austria', 'Austria', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(12, 1, 'BS', 'BHS', 'Bahamas', 'the Commonwealth of the Bahamas', 'Bahamas', 'Bahamas', 'Bahamas', 'Bahamas', 'Bahamas', 'Bahamas', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(13, 1, 'BH', 'BHR', 'Bahrain', 'the Kingdom of Bahrain', 'Bahrain', 'Bahrain', 'Bahrain', 'Bahrain', 'Bahrain', 'Bahrain', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(14, 1, 'BB', 'BRB', 'Barbados', 'Barbados', 'Barbados', 'Barbados', 'Barbados', 'Barbados', 'Barbados', 'Barbados', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(15, 1, 'BD', 'BGD', 'Bangladesh', 'the People\'s Republic of Bangladesh', 'Bangladesh', 'Bangladesh', 'Bangladesh', 'Bangladesh', 'Bangladesh', 'Bangladesh', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(16, 1, 'BM', 'BMU', 'Bermuda', 'Bermuda', 'Bermuda', 'Bermuda', 'Bermuda', 'Bermuda', 'Bermuda', 'Bermuda', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(17, 1, 'BT', 'BTN', 'Bhutan', 'the Kingdom of Bhutan', 'Bhutan', 'Bhutan', 'Bhutan', 'Bhutan', 'Bhutan', 'Bhutan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(18, 1, 'BO', 'BOL', 'Bolivia (Plurinational State of)', 'the Plurinational State of Bolivia', 'Bolivia (Plurinational State of)', 'Bolivia (Plurinational State of)', 'Bolivia (Plurinational State of)', 'Bolivia (Plurinational State of)', 'Bolivia (Plurinational State of)', 'Bolivia (Plurinational State of)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(19, 1, 'BW', 'BWA', 'Botswana', 'the Republic of Botswana', 'Botswana', 'Botswana', 'Botswana', 'Botswana', 'Botswana', 'Botswana', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(20, 1, 'BR', 'BRA', 'Brazil', 'the Federative Republic of Brazil', 'Brazil', 'Brazil', 'Brazil', 'Brazil', 'Brazil', 'Brazil', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(21, 1, 'AW', 'ABW', 'Aruba', 'Aruba', 'Aruba', 'Aruba', 'Aruba', 'Aruba', 'Aruba', 'Aruba', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(22, 1, 'BZ', 'BLZ', 'Belize', 'Belize', 'Belize', 'Belize', 'Belize', 'Belize', 'Belize', 'Belize', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(23, 1, 'IO', 'IOT', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'British Indian Ocean Territory', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(24, 1, 'SB', 'SLB', 'Solomon Islands', 'Solomon Islands', 'Solomon Islands', 'Solomon Islands', 'Solomon Islands', 'Solomon Islands', 'Solomon Islands', 'Solomon Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(25, 1, 'BN', 'BRN', 'Brunei Darussalam', 'Brunei Darussalam', 'Brunei Darussalam', 'Brunei Darussalam', 'Brunei Darussalam', 'Brunei Darussalam', 'Brunei Darussalam', 'Brunei Darussalam', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(26, 1, 'BG', 'BGR', 'Bulgaria', 'the Republic of Bulgaria', 'Bulgaria', 'Bulgaria', 'Bulgaria', 'Bulgaria', 'Bulgaria', 'Bulgaria', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(27, 1, 'MM', 'MMR', 'Myanmar', 'the Republic of the Union of Myanmar', 'Myanmar', 'Myanmar', 'Myanmar', 'Myanmar', 'Myanmar', 'Myanmar', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(28, 1, 'BI', 'BDI', 'Burundi', 'the Republic of Burundi', 'Burundi', 'Burundi', 'Burundi', 'Burundi', 'Burundi', 'Burundi', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(29, 1, 'AQ', 'ATA', 'Antarctica', 'Antarctica', 'Antarctica', 'Antarctica', 'Antarctica', 'Antarctica', 'Antarctica', 'Antarctica', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(30, 1, 'BV', 'BVT', 'Bouvet Island', 'Bouvet Island', 'Bouvet Island', 'Bouvet Island', 'Bouvet Island', 'Bouvet Island', 'Bouvet Island', 'Bouvet Island', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(31, 1, 'CM', 'CMR', 'Cameroon', 'the Republic of Cameroon', 'Cameroon', 'Cameroon', 'Cameroon', 'Cameroon', 'Cameroon', 'Cameroon', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(32, 1, 'CA', 'CAN', 'Canada', 'Canada', 'Canada', 'Canada', 'Canada', 'Canada', 'Canada', 'Canada', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(33, 1, 'CV', 'CPV', 'Cape Verde', 'the Republic of Cape Verde', 'Cape Verde', 'Cape Verde', 'Cape Verde', 'Cape Verde', 'Cape Verde', 'Cape Verde', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(34, 1, 'KY', 'CYM', 'Cayman Islands', 'Cayman Islands', 'Cayman Islands', 'Cayman Islands', 'Cayman Islands', 'Cayman Islands', 'Cayman Islands', 'Cayman Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(35, 1, 'CF', 'CAF', 'Central African Republic', 'the Central African Republic', 'Central African Republic', 'Central African Republic', 'Central African Republic', 'Central African Republic', 'Central African Republic', 'Central African Republic', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(36, 1, 'LK', 'LKA', 'Sri Lanka', 'the Democratic Socialist Republic of Sri Lanka', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(37, 1, 'TD', 'TCD', 'Chad', 'the Republic of Chad', 'Chad', 'Chad', 'Chad', 'Chad', 'Chad', 'Chad', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(38, 1, 'CL', 'CHL', 'Chile', 'the Republic of Chile', 'Chile', 'Chile', 'Chile', 'Chile', 'Chile', 'Chile', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(39, 1, 'CN', 'CHN', 'China', 'the People\'s Republic of China', 'China', 'China', 'China', 'China', 'China', 'China', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(40, 1, 'CX', 'CXR', 'Christmas Island', 'Christmas Island', 'Christmas Island', 'Christmas Island', 'Christmas Island', 'Christmas Island', 'Christmas Island', 'Christmas Island', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(41, 1, 'CC', 'CCK', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(42, 1, 'CO', 'COL', 'Colombia', 'the Republic of Colombia', 'Colombia', 'Colombia', 'Colombia', 'Colombia', 'Colombia', 'Colombia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(43, 1, 'KM', 'COM', 'Comoros', 'the Union of the Comoros', 'Comoros', 'Comoros', 'Comoros', 'Comoros', 'Comoros', 'Comoros', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(44, 1, 'CG', 'COG', 'Congo', 'the Republic of the Congo', 'Congo', 'Congo', 'Congo', 'Congo', 'Congo', 'Congo', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(45, 1, 'CK', 'COK', 'Cook Islands', 'the Cook Islands', 'Cook Islands', 'Cook Islands', 'Cook Islands', 'Cook Islands', 'Cook Islands', 'Cook Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(46, 1, 'CR', 'CRI', 'Costa Rica', 'the Republic of Costa Rica', 'Costa Rica', 'Costa Rica', 'Costa Rica', 'Costa Rica', 'Costa Rica', 'Costa Rica', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(47, 1, 'CU', 'CUB', 'Cuba', 'the Republic of Cuba', 'Cuba', 'Cuba', 'Cuba', 'Cuba', 'Cuba', 'Cuba', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(48, 1, 'CY', 'CYP', 'Cyprus', 'the Republic of Cyprus', 'Cyprus', 'Cyprus', 'Cyprus', 'Cyprus', 'Cyprus', 'Cyprus', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(49, 1, 'AZ', 'AZE', 'Azerbaijan', 'the Republic of Azerbaijan', 'Azerbaijan', 'Azerbaijan', 'Azerbaijan', 'Azerbaijan', 'Azerbaijan', 'Azerbaijan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(50, 1, 'BJ', 'BEN', 'Benin', 'the Republic of Benin', 'Benin', 'Benin', 'Benin', 'Benin', 'Benin', 'Benin', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(51, 1, 'DK', 'DNK', 'Denmark', 'the Kingdom of Denmark', 'Denmark', 'Denmark', 'Denmark', 'Denmark', 'Denmark', 'Denmark', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(52, 1, 'DM', 'DMA', 'Dominica', 'the Commonwealth of Dominica', 'Dominica', 'Dominica', 'Dominica', 'Dominica', 'Dominica', 'Dominica', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(53, 1, 'DO', 'DOM', 'Dominican Republic', 'the Dominican Republic', 'Dominican Republic', 'Dominican Republic', 'Dominican Republic', 'Dominican Republic', 'Dominican Republic', 'Dominican Republic', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(54, 1, 'BY', 'BLR', 'Belarus', 'the Republic of Belarus', 'Belarus', 'Belarus', 'Belarus', 'Belarus', 'Belarus', 'Belarus', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(55, 1, 'EC', 'ECU', 'Ecuador', 'the Republic of Ecuador', 'Ecuador', 'Ecuador', 'Ecuador', 'Ecuador', 'Ecuador', 'Ecuador', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(56, 1, 'EG', 'EGY', 'Egypt', 'the Arab Republic of Egypt', 'Egypt', 'Egypt', 'Egypt', 'Egypt', 'Egypt', 'Egypt', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(57, 1, 'SV', 'SLV', 'El Salvador', 'the Republic of El Salvador', 'El Salvador', 'El Salvador', 'El Salvador', 'El Salvador', 'El Salvador', 'El Salvador', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(58, 1, 'GQ', 'GNQ', 'Equatorial Guinea', 'the Republic of Equatorial Guinea', 'Equatorial Guinea', 'Equatorial Guinea', 'Equatorial Guinea', 'Equatorial Guinea', 'Equatorial Guinea', 'Equatorial Guinea', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(59, 1, 'EE', 'EST', 'Estonia', 'the Republic of Estonia', 'Estonia', 'Estonia', 'Estonia', 'Estonia', 'Estonia', 'Estonia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(60, 1, 'FO', 'FRO', 'Faroe Islands (Associate Member)', 'Faroe Islands', 'Faroe Islands (Associate Member)', 'Faroe Islands (Associate Member)', 'Faroe Islands (Associate Member)', 'Faroe Islands (Associate Member)', 'Faroe Islands (Associate Member)', 'Faroe Islands (Associate Member)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(61, 1, 'FK', 'FLK', 'Falkland Islands (Malvinas)', 'the Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(62, 1, 'FJ', 'FJI', 'Fiji', 'the Republic of Fiji', 'Fiji', 'Fiji', 'Fiji', 'Fiji', 'Fiji', 'Fiji', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(63, 1, 'FI', 'FIN', 'Finland', 'the Republic of Finland', 'Finland', 'Finland', 'Finland', 'Finland', 'Finland', 'Finland', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(64, 1, 'FR', 'FRA', 'France', 'the French Republic', 'France', 'France', 'France', 'France', 'France', 'France', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(65, 1, 'GF', 'GUF', 'French Guiana', 'French Guiana', 'French Guiana', 'French Guiana', 'French Guiana', 'French Guiana', 'French Guiana', 'French Guiana', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(66, 1, 'PF', 'PYF', 'French Polynesia', 'French Polynesia', 'French Polynesia', 'French Polynesia', 'French Polynesia', 'French Polynesia', 'French Polynesia', 'French Polynesia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(67, 1, 'TF', 'ATF', 'French Southern and Antarctic Territories', 'French Southern and Antarctic Territories', 'French Southern and Antarctic Territories', 'French Southern and Antarctic Territories', 'French Southern and Antarctic Territories', 'French Southern and Antarctic Territories', 'French Southern and Antarctic Territories', 'French Southern and Antarctic Territories', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(68, 1, 'DJ', 'DJI', 'Djibouti', 'the Republic of Djibouti', 'Djibouti', 'Djibouti', 'Djibouti', 'Djibouti', 'Djibouti', 'Djibouti', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(69, 1, 'GE', 'GEO', 'Georgia', 'Georgia', 'Georgia', 'Georgia', 'Georgia', 'Georgia', 'Georgia', 'Georgia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(70, 1, 'GA', 'GAB', 'Gabon', 'the Gabonese Republic', 'Gabon', 'Gabon', 'Gabon', 'Gabon', 'Gabon', 'Gabon', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(71, 1, 'GM', 'GMB', 'Gambia', 'the Republic of the Gambia', 'Gambia', 'Gambia', 'Gambia', 'Gambia', 'Gambia', 'Gambia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(72, 1, 'DE', 'DEU', 'Germany', 'the Federal Republic of Germany', 'Germany', 'Germany', 'Germany', 'Germany', 'Germany', 'Germany', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(73, 1, 'BA', 'BIH', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(74, 1, 'GH', 'GHA', 'Ghana', 'the Republic of Ghana', 'Ghana', 'Ghana', 'Ghana', 'Ghana', 'Ghana', 'Ghana', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(75, 1, 'GI', 'GIB', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Gibraltar', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(76, 1, 'KI', 'KIR', 'Kiribati', 'the Republic of Kiribati', 'Kiribati', 'Kiribati', 'Kiribati', 'Kiribati', 'Kiribati', 'Kiribati', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(77, 1, 'GR', 'GRC', 'Greece', 'the Hellenic Republic', 'Greece', 'Greece', 'Greece', 'Greece', 'Greece', 'Greece', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(78, 1, 'GL', 'GRL', 'Greenland', 'Greenland', 'Greenland', 'Greenland', 'Greenland', 'Greenland', 'Greenland', 'Greenland', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(79, 1, 'GD', 'GRD', 'Grenada', 'Grenada', 'Grenada', 'Grenada', 'Grenada', 'Grenada', 'Grenada', 'Grenada', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(80, 1, 'GP', 'GLP', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(81, 1, 'GU', 'GUM', 'Guam', 'Guam', 'Guam', 'Guam', 'Guam', 'Guam', 'Guam', 'Guam', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(82, 1, 'GT', 'GTM', 'Guatemala', 'the Republic of Guatemala', 'Guatemala', 'Guatemala', 'Guatemala', 'Guatemala', 'Guatemala', 'Guatemala', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(83, 1, 'GN', 'GIN', 'Guinea', 'the Republic of Guinea', 'Guinea', 'Guinea', 'Guinea', 'Guinea', 'Guinea', 'Guinea', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(84, 1, 'GY', 'GUY', 'Guyana', 'the Republic of Guyana', 'Guyana', 'Guyana', 'Guyana', 'Guyana', 'Guyana', 'Guyana', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(85, 1, 'HM', 'HMD', 'Heard and McDonald Islands', 'Heard Island and McDonald Island', 'Heard and McDonald Islands', 'Heard and McDonald Islands', 'Heard and McDonald Islands', 'Heard and McDonald Islands', 'Heard and McDonald Islands', 'Heard and McDonald Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(86, 1, 'HT', 'HTI', 'Haiti', 'the Republic of Haiti', 'Haiti', 'Haiti', 'Haiti', 'Haiti', 'Haiti', 'Haiti', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(87, 1, 'VA', 'VAT', 'Holy See', 'Holy see', 'Holy See', 'Holy See', 'Holy See', 'Holy See', 'Holy See', 'Holy See', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(88, 1, 'HN', 'HND', 'Honduras', 'the Republic of Honduras', 'Honduras', 'Honduras', 'Honduras', 'Honduras', 'Honduras', 'Honduras', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(89, 1, 'HK', 'HKG', 'China, Hong Kong SAR', 'China, Hong Kong Special Administrative Region', 'China, Hong Kong SAR', 'China, Hong Kong SAR', 'China, Hong Kong SAR', 'China, Hong Kong SAR', 'China, Hong Kong SAR', 'China, Hong Kong SAR', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(90, 1, 'HU', 'HUN', 'Hungary', 'Hungary', 'Hungary', 'Hungary', 'Hungary', 'Hungary', 'Hungary', 'Hungary', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(91, 1, 'HR', 'HRV', 'Croatia', 'the Republic of Croatia', 'Croatia', 'Croatia', 'Croatia', 'Croatia', 'Croatia', 'Croatia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(92, 1, 'IS', 'ISL', 'Iceland', 'the Republic of Iceland', 'Iceland', 'Iceland', 'Iceland', 'Iceland', 'Iceland', 'Iceland', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(93, 1, 'IN', 'IND', 'India', 'the Republic of India', 'India', 'India', 'India', 'India', 'India', 'India', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(94, 1, 'ID', 'IDN', 'Indonesia', 'the Republic of Indonesia', 'Indonesia', 'Indonesia', 'Indonesia', 'Indonesia', 'Indonesia', 'Indonesia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(95, 1, 'IR', 'IRN', 'Iran (Islamic Republic of)', 'the Islamic Republic of Iran', 'Iran (Islamic Republic of)', 'Iran (Islamic Republic of)', 'Iran (Islamic Republic of)', 'Iran (Islamic Republic of)', 'Iran (Islamic Republic of)', 'Iran (Islamic Republic of)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(96, 1, 'IQ', 'IRQ', 'Iraq', 'the Republic of Iraq', 'Iraq', 'Iraq', 'Iraq', 'Iraq', 'Iraq', 'Iraq', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(97, 1, 'IE', 'IRL', 'Ireland', 'Ireland', 'Ireland', 'Ireland', 'Ireland', 'Ireland', 'Ireland', 'Ireland', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(98, 1, 'IL', 'ISR', 'Israel', 'the State of Israel', 'Israel', 'Israel', 'Israel', 'Israel', 'Israel', 'Israel', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(99, 1, 'IT', 'ITA', 'Italy', 'the Republic of Italy', 'Italy', 'Italy', 'Italy', 'Italy', 'Italy', 'Italy', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(100, 1, 'CI', 'CIV', 'Côte d\'Ivoire', 'the Republic of Côte d\'Ivoire', 'Cote d\'Ivoire', 'Cote d\'Ivoire', 'Cote d\'Ivoire', 'Cote d\'Ivoire', 'Cote d\'Ivoire', 'Cote d\'Ivoire', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(101, 1, 'KZ', 'KAZ', 'Kazakhstan', 'the Republic of Kazakhstan', 'Kazakhstan', 'Kazakhstan', 'Kazakhstan', 'Kazakhstan', 'Kazakhstan', 'Kazakhstan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(102, 1, 'JM', 'JAM', 'Jamaica', 'Jamaica', 'Jamaica', 'Jamaica', 'Jamaica', 'Jamaica', 'Jamaica', 'Jamaica', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(103, 1, 'JP', 'JPN', 'Japan', 'Japan', 'Japan', 'Japan', 'Japan', 'Japan', 'Japan', 'Japan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(104, 1, 'JT', 'JTN', 'Johnston Island', 'Johnston Island', 'Johnston Island', 'Johnston Island', 'Johnston Island', 'Johnston Island', 'Johnston Island', 'Johnston Island', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(105, 1, 'JO', 'JOR', 'Jordan', 'the Hashemite Kingdom of Jordan', 'Jordan', 'Jordan', 'Jordan', 'Jordan', 'Jordan', 'Jordan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(106, 1, 'KG', 'KGZ', 'Kyrgyzstan', 'the Kyrgyz Republic', 'Kyrgyzstan', 'Kyrgyzstan', 'Kyrgyzstan', 'Kyrgyzstan', 'Kyrgyzstan', 'Kyrgyzstan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(107, 1, 'KE', 'KEN', 'Kenya', 'the Republic of Kenya', 'Kenya', 'Kenya', 'Kenya', 'Kenya', 'Kenya', 'Kenya', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(108, 1, 'KH', 'KHM', 'Cambodia', 'the Kingdom of Cambodia', 'Cambodia', 'Cambodia', 'Cambodia', 'Cambodia', 'Cambodia', 'Cambodia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(109, 1, 'KP', 'PRK', 'Democratic People\'s Republic of Korea', 'the Democratic People\'s Republic of Korea', 'Democratic People\'s Republic of Korea', 'Democratic People\'s Republic of Korea', 'Democratic People\'s Republic of Korea', 'Democratic People\'s Republic of Korea', 'Democratic People\'s Republic of Korea', 'Democratic People\'s Republic of Korea', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(110, 1, 'KR', 'KOR', 'Republic of Korea', 'the Republic of Korea', 'Republic of Korea', 'Republic of Korea', 'Republic of Korea', 'Republic of Korea', 'Republic of Korea', 'Republic of Korea', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(111, 1, 'KW', 'KWT', 'Kuwait', 'the State of Kuwait', 'Kuwait', 'Kuwait', 'Kuwait', 'Kuwait', 'Kuwait', 'Kuwait', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(112, 1, 'LV', 'LVA', 'Latvia', 'the Republic of Latvia', 'Latvia', 'Latvia', 'Latvia', 'Latvia', 'Latvia', 'Latvia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(113, 1, 'LA', 'LAO', 'Lao People\'s Democratic Republic', 'the Lao People\'s Democratic Republic', 'Lao People\'s Democratic Republic', 'Lao People\'s Democratic Republic', 'Lao People\'s Democratic Republic', 'Lao People\'s Democratic Republic', 'Lao People\'s Democratic Republic', 'Lao People\'s Democratic Republic', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(114, 1, 'LB', 'LBN', 'Lebanon', 'the Lebanese Republic', 'Lebanon', 'Lebanon', 'Lebanon', 'Lebanon', 'Lebanon', 'Lebanon', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(115, 1, 'LS', 'LSO', 'Lesotho', 'the Kingdom of Lesotho', 'Lesotho', 'Lesotho', 'Lesotho', 'Lesotho', 'Lesotho', 'Lesotho', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(116, 1, 'LR', 'LBR', 'Liberia', 'the Republic of Liberia', 'Liberia', 'Liberia', 'Liberia', 'Liberia', 'Liberia', 'Liberia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(117, 1, 'LY', 'LBY', 'Libya', 'Libya', 'Libya', 'Libya', 'Libya', 'Libya', 'Libya', 'Libya', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(118, 1, 'LI', 'LIE', 'Liechtenstein', 'the Principality of Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(119, 1, 'LT', 'LTU', 'Lithuania', 'the Republic of Lithuania', 'Lithuania', 'Lithuania', 'Lithuania', 'Lithuania', 'Lithuania', 'Lithuania', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(120, 1, 'MH', 'MHL', 'Marshall Islands', 'the Republic of the Marshall Islands', 'Marshall Islands', 'Marshall Islands', 'Marshall Islands', 'Marshall Islands', 'Marshall Islands', 'Marshall Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(121, 1, 'MO', 'MAC', 'China, Macao SAR', 'China, Macao Special Administrative Region', 'China, Macao SAR', 'China, Macao SAR', 'China, Macao SAR', 'China, Macao SAR', 'China, Macao SAR', 'China, Macao SAR', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(122, 1, 'MG', 'MDG', 'Madagascar', 'the Republic of Madagascar', 'Madagascar', 'Madagascar', 'Madagascar', 'Madagascar', 'Madagascar', 'Madagascar', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(123, 1, 'MW', 'MWI', 'Malawi', 'the Republic of Malawi', 'Malawi', 'Malawi', 'Malawi', 'Malawi', 'Malawi', 'Malawi', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(124, 1, 'MY', 'MYS', 'Malaysia', 'Malaysia', 'Malaysia', 'Malaysia', 'Malaysia', 'Malaysia', 'Malaysia', 'Malaysia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(125, 1, 'MV', 'MDV', 'Maldives', 'the Republic of Maldives', 'Maldives', 'Maldives', 'Maldives', 'Maldives', 'Maldives', 'Maldives', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(126, 1, 'ML', 'MLI', 'Mali', 'the Republic of Mali', 'Mali', 'Mali', 'Mali', 'Mali', 'Mali', 'Mali', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(127, 1, 'MT', 'MLT', 'Malta', 'the Republic of Malta', 'Malta', 'Malta', 'Malta', 'Malta', 'Malta', 'Malta', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(128, 1, 'MQ', 'MTQ', 'Martinique', 'Martinique', 'Martinique', 'Martinique', 'Martinique', 'Martinique', 'Martinique', 'Martinique', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(129, 1, 'MR', 'MRT', 'Mauritania', 'the Islamic Republic of Mauritania', 'Mauritania', 'Mauritania', 'Mauritania', 'Mauritania', 'Mauritania', 'Mauritania', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(130, 1, 'MU', 'MUS', 'Mauritius', 'the Republic of Mauritius', 'Mauritius', 'Mauritius', 'Mauritius', 'Mauritius', 'Mauritius', 'Mauritius', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(131, 1, 'MX', 'MEX', 'Mexico', 'the United Mexican States', 'Mexico', 'Mexico', 'Mexico', 'Mexico', 'Mexico', 'Mexico', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(132, 1, 'MI', 'MID', 'Midway Islands', 'Midway Islands', 'Midway Islands', 'Midway Islands', 'Midway Islands', 'Midway Islands', 'Midway Islands', 'Midway Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(133, 1, 'MC', 'MCO', 'Monaco', 'the Principality of Monaco', 'Monaco', 'Monaco', 'Monaco', 'Monaco', 'Monaco', 'Monaco', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(134, 1, 'MN', 'MNG', 'Mongolia', 'Mongolia', 'Mongolia', 'Mongolia', 'Mongolia', 'Mongolia', 'Mongolia', 'Mongolia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(135, 1, 'MS', 'MSR', 'Montserrat', 'Montserrat', 'Montserrat', 'Montserrat', 'Montserrat', 'Montserrat', 'Montserrat', 'Montserrat', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(136, 1, 'MA', 'MAR', 'Morocco', 'the Kingdom of Morocco', 'Morocco', 'Morocco', 'Morocco', 'Morocco', 'Morocco', 'Morocco', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(137, 1, 'MZ', 'MOZ', 'Mozambique', 'the Republic of Mozambique', 'Mozambique', 'Mozambique', 'Mozambique', 'Mozambique', 'Mozambique', 'Mozambique', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(138, 1, 'FM', 'FSM', 'Micronesia (Federated States of)', 'the Federated States of Micronesia', 'Micronesia (Federated States of)', 'Micronesia (Federated States of)', 'Micronesia (Federated States of)', 'Micronesia (Federated States of)', 'Micronesia (Federated States of)', 'Micronesia (Federated States of)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(139, 1, 'MD', 'MDA', 'Republic of Moldova', 'the Republic of Moldova', 'Republic of Moldova', 'Republic of Moldova', 'Republic of Moldova', 'Republic of Moldova', 'Republic of Moldova', 'Republic of Moldova', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(140, 1, 'NA', 'NAM', 'Namibia', 'the Republic of Namibia', 'Namibia', 'Namibia', 'Namibia', 'Namibia', 'Namibia', 'Namibia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(141, 1, 'NR', 'NRU', 'Nauru', 'the Republic of Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(142, 1, 'NP', 'NPL', 'Nepal', 'the Federal Democratic Republic of Nepal', 'Nepal', 'Nepal', 'Nepal', 'Nepal', 'Nepal', 'Nepal', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(143, 1, 'NL', 'NLD', 'Netherlands', 'the Kingdom of the Netherlands', 'Netherlands', 'Netherlands', 'Netherlands', 'Netherlands', 'Netherlands', 'Netherlands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(144, 1, 'AN', 'ANT', 'Netherlands Antilles', 'Netherlands Antilles', 'Netherlands Antilles', 'Netherlands Antilles', 'Netherlands Antilles', 'Netherlands Antilles', 'Netherlands Antilles', 'Netherlands Antilles', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(145, 1, 'NC', 'NCL', 'New Caledonia', 'New Caledonia', 'New Caledonia', 'New Caledonia', 'New Caledonia', 'New Caledonia', 'New Caledonia', 'New Caledonia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(146, 1, 'MK', 'MKD', 'The former Yugoslav Republic of Macedonia', 'The former Yugoslav Republic of Macedonia', 'The former Yugoslav Republic of Macedonia', 'The former Yugoslav Republic of Macedonia', 'The former Yugoslav Republic of Macedonia', 'The former Yugoslav Republic of Macedonia', 'The former Yugoslav Republic of Macedonia', 'The former Yugoslav Republic of Macedonia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(147, 1, 'VU', 'VUT', 'Vanuatu', 'the Republic of Vanuatu', 'Vanuatu', 'Vanuatu', 'Vanuatu', 'Vanuatu', 'Vanuatu', 'Vanuatu', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(148, 1, 'NZ', 'NZL', 'New Zealand', 'New Zealand', 'New Zealand', 'New Zealand', 'New Zealand', 'New Zealand', 'New Zealand', 'New Zealand', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(149, 1, 'NI', 'NIC', 'Nicaragua', 'the Republic of Nicaragua', 'Nicaragua', 'Nicaragua', 'Nicaragua', 'Nicaragua', 'Nicaragua', 'Nicaragua', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(150, 1, 'NE', 'NER', 'Niger', 'the Republic of the Niger', 'Niger', 'Niger', 'Niger', 'Niger', 'Niger', 'Niger', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(151, 1, 'NG', 'NGA', 'Nigeria', 'the Federal Republic of Nigeria', 'Nigeria', 'Nigeria', 'Nigeria', 'Nigeria', 'Nigeria', 'Nigeria', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(152, 1, 'NU', 'NIU', 'Niue', 'Niue', 'Niue', 'Niue', 'Niue', 'Niue', 'Niue', 'Niue', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(153, 1, 'NF', 'NFK', 'Norfolk Island', 'Territory of Norfolk Island', 'Norfolk Island', 'Norfolk Island', 'Norfolk Island', 'Norfolk Island', 'Norfolk Island', 'Norfolk Island', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(154, 1, 'NO', 'NOR', 'Norway', 'the Kingdom of Norway', 'Norway', 'Norway', 'Norway', 'Norway', 'Norway', 'Norway', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(155, 1, 'MP', 'MNP', 'Northern Mariana Islands', 'The Commonwealth of the Northern Mariana Islands', 'Northern Mariana Islands', 'Northern Mariana Islands', 'Northern Mariana Islands', 'Northern Mariana Islands', 'Northern Mariana Islands', 'Northern Mariana Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(156, 1, 'PK', 'PAK', 'Pakistan', 'the Islamic Republic of Pakistan', 'Pakistan', 'Pakistan', 'Pakistan', 'Pakistan', 'Pakistan', 'Pakistan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(157, 1, 'PA', 'PAN', 'Panama', 'the Republic of Panama', 'Panama', 'Panama', 'Panama', 'Panama', 'Panama', 'Panama', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(158, 1, 'CZ', 'CZE', 'Czech Republic', 'the Czech Republic', 'Czech Republic', 'Czech Republic', 'Czech Republic', 'Czech Republic', 'Czech Republic', 'Czech Republic', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(159, 1, 'PG', 'PNG', 'Papua New Guinea', 'Papua New Guinea', 'Papua New Guinea', 'Papua New Guinea', 'Papua New Guinea', 'Papua New Guinea', 'Papua New Guinea', 'Papua New Guinea', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(160, 1, 'PY', 'PRY', 'Paraguay', 'the Republic of Paraguay', 'Paraguay', 'Paraguay', 'Paraguay', 'Paraguay', 'Paraguay', 'Paraguay', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(161, 1, 'PE', 'PER', 'Peru', 'the Republic of Peru', 'Peru', 'Peru', 'Peru', 'Peru', 'Peru', 'Peru', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(162, 1, 'PH', 'PHL', 'Philippines', 'the Republic of the Philippines', 'Philippines', 'Philippines', 'Philippines', 'Philippines', 'Philippines', 'Philippines', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(163, 1, 'PL', 'POL', 'Poland', 'the Republic of Poland', 'Poland', 'Poland', 'Poland', 'Poland', 'Poland', 'Poland', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(164, 1, 'PT', 'PRT', 'Portugal', 'the Portuguese Republic', 'Portugal', 'Portugal', 'Portugal', 'Portugal', 'Portugal', 'Portugal', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(165, 1, 'GW', 'GNB', 'Guinea-Bissau', 'the Republic of Guinea-Bissau', 'Guinea-Bissau', 'Guinea-Bissau', 'Guinea-Bissau', 'Guinea-Bissau', 'Guinea-Bissau', 'Guinea-Bissau', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(166, 1, 'TL', 'TLS', 'Timor-Leste', 'the Democratic Republic of Timor-Leste', 'Timor-Leste', 'Timor-Leste', 'Timor-Leste', 'Timor-Leste', 'Timor-Leste', 'Timor-Leste', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(167, 1, 'PR', 'PRI', 'Puerto Rico', 'the Commonwealth of Puerto Rico', 'Puerto Rico', 'Puerto Rico', 'Puerto Rico', 'Puerto Rico', 'Puerto Rico', 'Puerto Rico', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(168, 1, 'ER', 'ERI', 'Eritrea', 'Eritrea', 'Eritrea', 'Eritrea', 'Eritrea', 'Eritrea', 'Eritrea', 'Eritrea', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(169, 1, 'QA', 'QAT', 'Qatar', 'the State of Qatar', 'Qatar', 'Qatar', 'Qatar', 'Qatar', 'Qatar', 'Qatar', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(170, 1, 'PW', 'PLW', 'Palau', 'the Republic of Palau', 'Palau', 'Palau', 'Palau', 'Palau', 'Palau', 'Palau', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(171, 1, 'ZW', 'ZWE', 'Zimbabwe', 'the Republic of Zimbabwe', 'Zimbabwe', 'Zimbabwe', 'Zimbabwe', 'Zimbabwe', 'Zimbabwe', 'Zimbabwe', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(172, 1, 'RE', 'REU', 'Réunion', 'Réunion', 'Réunion', 'Réunion', 'Réunion', 'Réunion', 'Réunion', 'Réunion', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(173, 1, 'RO', 'ROU', 'Romania', 'Romania', 'Romania', 'Romania', 'Romania', 'Romania', 'Romania', 'Romania', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(174, 1, 'RW', 'RWA', 'Rwanda', 'the Republic of Rwanda', 'Rwanda', 'Rwanda', 'Rwanda', 'Rwanda', 'Rwanda', 'Rwanda', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(175, 1, 'RU', 'RUS', 'Russian Federation', 'the Russian Federation', 'Russian Federation', 'Russian Federation', 'Russian Federation', 'Russian Federation', 'Russian Federation', 'Russian Federation', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(176, 1, 'CS', 'SCG', 'Serbia and Montenegro', 'Serbia and Montenegro', 'Serbia and Montenegro', 'Serbia and Montenegro', 'Serbia and Montenegro', 'Serbia and Montenegro', 'Serbia and Montenegro', 'Serbia and Montenegro', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(177, 1, 'SH', 'SHN', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(178, 1, 'KN', 'KNA', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(179, 1, 'LC', 'LCA', 'Saint Lucia', 'Saint Lucia', 'Saint Lucia', 'Saint Lucia', 'Saint Lucia', 'Saint Lucia', 'Saint Lucia', 'Saint Lucia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(180, 1, 'PM', 'SPM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(181, 1, 'VC', 'VCT', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(182, 1, 'SM', 'SMR', 'San Marino', 'the Republic of San Marino', 'San Marino', 'San Marino', 'San Marino', 'San Marino', 'San Marino', 'San Marino', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(183, 1, 'ST', 'STP', 'Sao Tome and Principe', 'the Democratic Republic of Sao Tome and Principe', 'Sao Tome and Principe', 'Sao Tome and Principe', 'Sao Tome and Principe', 'Sao Tome and Principe', 'Sao Tome and Principe', 'Sao Tome and Principe', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(184, 1, 'SA', 'SAU', 'Saudi Arabia', 'the Kingdom of Saudi Arabia', 'Saudi Arabia', 'Saudi Arabia', 'Saudi Arabia', 'Saudi Arabia', 'Saudi Arabia', 'Saudi Arabia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(185, 1, 'SN', 'SEN', 'Senegal', 'the Republic of Senegal', 'Senegal', 'Senegal', 'Senegal', 'Senegal', 'Senegal', 'Senegal', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(186, 1, 'SC', 'SYC', 'Seychelles', 'the Republic of Seychelles', 'Seychelles', 'Seychelles', 'Seychelles', 'Seychelles', 'Seychelles', 'Seychelles', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(187, 1, 'SL', 'SLE', 'Sierra Leone', 'the Republic of Sierra Leone', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(188, 1, 'SI', 'SVN', 'Slovenia', 'the Republic of Slovenia', 'Slovenia', 'Slovenia', 'Slovenia', 'Slovenia', 'Slovenia', 'Slovenia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(189, 1, 'SK', 'SVK', 'Slovakia', 'the Slovak Republic', 'Slovakia', 'Slovakia', 'Slovakia', 'Slovakia', 'Slovakia', 'Slovakia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(190, 1, 'SG', 'SGP', 'Singapore', 'the Republic of Singapore', 'Singapore', 'Singapore', 'Singapore', 'Singapore', 'Singapore', 'Singapore', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(191, 1, 'SO', 'SOM', 'Somalia', 'the Somali Republic', 'Somalia', 'Somalia', 'Somalia', 'Somalia', 'Somalia', 'Somalia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(192, 1, 'ZA', 'ZAF', 'South Africa', 'the Republic of South Africa', 'South Africa', 'South Africa', 'South Africa', 'South Africa', 'South Africa', 'South Africa', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(193, 1, 'ES', 'ESP', 'Spain', 'the Kingdom of Spain', 'Spain', 'Spain', 'Spain', 'Spain', 'Spain', 'Spain', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(194, 1, 'EH', 'ESH', 'Western Sahara', 'Western Sahara', 'Western Sahara', 'Western Sahara', 'Western Sahara', 'Western Sahara', 'Western Sahara', 'Western Sahara', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(195, 1, 'SD', 'SDN', 'Sudan', 'the Republic of the Sudan', 'Sudan', 'Sudan', 'Sudan', 'Sudan', 'Sudan', 'Sudan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(196, 1, 'SR', 'SUR', 'Suriname', 'the Republic of Suriname', 'Suriname', 'Suriname', 'Suriname', 'Suriname', 'Suriname', 'Suriname', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(197, 1, 'TJ', 'TJK', 'Tajikistan', 'the Republic of Tajikistan', 'Tajikistan', 'Tajikistan', 'Tajikistan', 'Tajikistan', 'Tajikistan', 'Tajikistan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(198, 1, 'SZ', 'SWZ', 'Swaziland', 'the Kingdom of Swaziland', 'Swaziland', 'Swaziland', 'Swaziland', 'Swaziland', 'Swaziland', 'Swaziland', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(199, 1, 'SE', 'SWE', 'Sweden', 'the Kingdom of Sweden', 'Sweden', 'Sweden', 'Sweden', 'Sweden', 'Sweden', 'Sweden', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(200, 1, 'CH', 'CHE', 'Switzerland', 'the Swiss Confederation', 'Switzerland', 'Switzerland', 'Switzerland', 'Switzerland', 'Switzerland', 'Switzerland', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(201, 1, 'SY', 'SYR', 'Syrian Arab Republic', 'the Syrian Arab Republic', 'Syrian Arab Republic', 'Syrian Arab Republic', 'Syrian Arab Republic', 'Syrian Arab Republic', 'Syrian Arab Republic', 'Syrian Arab Republic', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(202, 1, 'TM', 'TKM', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(203, 1, 'TW', 'TWN', 'Chinese Taipei', 'Chinese Taipei', 'Chinese Taipei', 'Chinese Taipei', 'Chinese Taipei', 'Chinese Taipei', 'Chinese Taipei', 'Chinese Taipei', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(204, 1, 'TZ', 'TZA', 'United Republic of Tanzania', 'the United Republic of Tanzania', 'United Republic of Tanzania', 'United Republic of Tanzania', 'United Republic of Tanzania', 'United Republic of Tanzania', 'United Republic of Tanzania', 'United Republic of Tanzania', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(205, 1, 'TH', 'THA', 'Thailand', 'the Kingdom of Thailand', 'Thailand', 'Thailand', 'Thailand', 'Thailand', 'Thailand', 'Thailand', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(206, 1, 'TG', 'TGO', 'Togo', 'the Togolese Republic', 'Togo', 'Togo', 'Togo', 'Togo', 'Togo', 'Togo', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(207, 1, 'TK', 'TKL', 'Tokelau (Associate Member)', 'Tokelau', 'Tokelau (Associate Member)', 'Tokelau (Associate Member)', 'Tokelau (Associate Member)', 'Tokelau (Associate Member)', 'Tokelau (Associate Member)', 'Tokelau (Associate Member)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(208, 1, 'TO', 'TON', 'Tonga', 'the Kingdom of Tonga', 'Tonga', 'Tonga', 'Tonga', 'Tonga', 'Tonga', 'Tonga', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(209, 1, 'TT', 'TTO', 'Trinidad and Tobago', 'the Republic of Trinidad and Tobago', 'Trinidad and Tobago', 'Trinidad and Tobago', 'Trinidad and Tobago', 'Trinidad and Tobago', 'Trinidad and Tobago', 'Trinidad and Tobago', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(210, 1, 'OM', 'OMN', 'Oman', 'the Sultanate of Oman', 'Oman', 'Oman', 'Oman', 'Oman', 'Oman', 'Oman', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59');
INSERT INTO `cl_ref_countries` (`ID`, `ENABLED`, `CODE`, `ISO_3_CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(211, 1, 'TN', 'TUN', 'Tunisia', 'the Republic of Tunisia', 'Tunisia', 'Tunisia', 'Tunisia', 'Tunisia', 'Tunisia', 'Tunisia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(212, 1, 'TR', 'TUR', 'Turkey', 'the Republic of Turkey', 'Turkey', 'Turkey', 'Turkey', 'Turkey', 'Turkey', 'Turkey', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(213, 1, 'TC', 'TCA', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Turks and Caicos Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(214, 1, 'AE', 'ARE', 'United Arab Emirates', 'the United Arab Emirates', 'United Arab Emirates', 'United Arab Emirates', 'United Arab Emirates', 'United Arab Emirates', 'United Arab Emirates', 'United Arab Emirates', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(215, 1, 'UG', 'UGA', 'Uganda', 'the Republic of Uganda', 'Uganda', 'Uganda', 'Uganda', 'Uganda', 'Uganda', 'Uganda', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(216, 1, 'TV', 'TUV', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Tuvalu', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(217, 1, 'SU', 'SUN', 'Russia', 'Un. Sov. Soc. Rep.', 'Russia', 'Russia', 'Russia', 'Russia', 'Russia', 'Russia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(218, 1, 'GB', 'GBR', 'United Kingdom', 'the United Kingdom of Great Britain and Northern Ireland', 'United Kingdom', 'United Kingdom', 'United Kingdom', 'United Kingdom', 'United Kingdom', 'United Kingdom', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(219, 1, 'UA', 'UKR', 'Ukraine', 'Ukraine', 'Ukraine', 'Ukraine', 'Ukraine', 'Ukraine', 'Ukraine', 'Ukraine', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(220, 1, 'US', 'USA', 'United States of America', 'the United States of America', 'United States of America', 'United States of America', 'United States of America', 'United States of America', 'United States of America', 'United States of America', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(221, 1, 'UM', 'UMI', 'US Minor Is.', 'US Minor Outlying Islands', 'US Minor Is.', 'US Minor Is.', 'US Minor Is.', 'US Minor Is.', 'US Minor Is.', 'US Minor Is.', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(222, 1, 'BF', 'BFA', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(223, 1, 'UY', 'URY', 'Uruguay', 'the Eastern Republic of Uruguay', 'Uruguay', 'Uruguay', 'Uruguay', 'Uruguay', 'Uruguay', 'Uruguay', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(224, 1, 'UZ', 'UZB', 'Uzbekistan', 'the Republic of Uzbekistan', 'Uzbekistan', 'Uzbekistan', 'Uzbekistan', 'Uzbekistan', 'Uzbekistan', 'Uzbekistan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(225, 1, 'VE', 'VEN', 'Venezuela (Bolivarian Republic of)', 'the Bolivarian Republic of Venezuela', 'Venezuela (Bolivarian Republic of)', 'Venezuela (Bolivarian Republic of)', 'Venezuela (Bolivarian Republic of)', 'Venezuela (Bolivarian Republic of)', 'Venezuela (Bolivarian Republic of)', 'Venezuela (Bolivarian Republic of)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(226, 1, 'VN', 'VNM', 'Viet Nam', 'the Socialist Republic of Viet Nam', 'Viet Nam', 'Viet Nam', 'Viet Nam', 'Viet Nam', 'Viet Nam', 'Viet Nam', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(227, 1, 'ET', 'ETH', 'Ethiopia', 'the Federal Democratic Republic of Ethiopia', 'Ethiopia', 'Ethiopia', 'Ethiopia', 'Ethiopia', 'Ethiopia', 'Ethiopia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(228, 1, 'VG', 'VGB', 'British Virgin Islands', 'the British Virgin Islands', 'British Virgin Islands', 'British Virgin Islands', 'British Virgin Islands', 'British Virgin Islands', 'British Virgin Islands', 'British Virgin Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(229, 1, 'VI', 'VIR', 'United States Virgin Islands', 'the United States Virgin Islands', 'United States Virgin Islands', 'United States Virgin Islands', 'United States Virgin Islands', 'United States Virgin Islands', 'United States Virgin Islands', 'United States Virgin Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(230, 1, 'WK', 'WAK', 'Wake Island', 'Wake Island', 'Wake Island', 'Wake Island', 'Wake Island', 'Wake Island', 'Wake Island', 'Wake Island', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(231, 1, 'WF', 'WLF', 'Wallis and Futuna Islands', 'Wallis and Futuna Islands', 'Wallis and Futuna Islands', 'Wallis and Futuna Islands', 'Wallis and Futuna Islands', 'Wallis and Futuna Islands', 'Wallis and Futuna Islands', 'Wallis and Futuna Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(232, 1, 'WS', 'WSM', 'Samoa', 'the Independent State of Samoa', 'Samoa', 'Samoa', 'Samoa', 'Samoa', 'Samoa', 'Samoa', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(233, 1, 'YE', 'YEM', 'Yemen', 'the Republic of Yemen', 'Yemen', 'Yemen', 'Yemen', 'Yemen', 'Yemen', 'Yemen', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(234, 1, 'CD', 'COD', 'Democratic Republic of the Congo', 'the Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(235, 1, 'ZM', 'ZMB', 'Zambia', 'the Republic of Zambia', 'Zambia', 'Zambia', 'Zambia', 'Zambia', 'Zambia', 'Zambia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(236, 1, 'BE', 'BEL', 'Belgium', 'the Kingdom of Belgium', 'Belgium', 'Belgium', 'Belgium', 'Belgium', 'Belgium', 'Belgium', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(237, 1, 'LU', 'LUX', 'Luxembourg', 'the Grand Duchy of Luxembourg', 'Luxembourg', 'Luxembourg', 'Luxembourg', 'Luxembourg', 'Luxembourg', 'Luxembourg', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(238, 1, 'AI', 'AIA', 'Anguilla', 'Anguilla', 'Anguilla', 'Anguilla', 'Anguilla', 'Anguilla', 'Anguilla', 'Anguilla', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(239, 1, 'SJ', 'SJM', 'Svalbard and Jan Mayen Islands', 'Svalbard and Jan Mayen Islands', 'Svalbard and Jan Mayen Islands', 'Svalbard and Jan Mayen Islands', 'Svalbard and Jan Mayen Islands', 'Svalbard and Jan Mayen Islands', 'Svalbard and Jan Mayen Islands', 'Svalbard and Jan Mayen Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(240, 1, 'IM', 'IMN', 'Isle of Man', 'Isle of Man', 'Isle of Man', 'Isle of Man', 'Isle of Man', 'Isle of Man', 'Isle of Man', 'Isle of Man', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(241, 1, 'YT', 'MYT', 'Mayotte', 'Mayotte', 'Mayotte', 'Mayotte', 'Mayotte', 'Mayotte', 'Mayotte', 'Mayotte', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(242, 1, 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(243, 1, 'RS', 'SRB', 'Serbia', 'Serbia', 'Serbia', 'Serbia', 'Serbia', 'Serbia', 'Serbia', 'Serbia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(244, 1, 'ME', 'MNE', 'Montenegro', 'Montenegro', 'Montenegro', 'Montenegro', 'Montenegro', 'Montenegro', 'Montenegro', 'Montenegro', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(245, 1, 'PS', 'PSE', 'Palestine', 'Palestine', 'Palestine', 'Palestine', 'Palestine', 'Palestine', 'Palestine', 'Palestine', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(246, 1, 'DD', 'DDR', 'German Democratic Republic', 'German Democratic Republic', 'German Democratic Republic', 'German Democratic Republic', 'German Democratic Republic', 'German Democratic Republic', 'German Democratic Republic', 'German Democratic Republic', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(247, 1, 'YU', 'YUG', 'Yugoslavia', 'Socialist Federal Republic of Yugoslavia', 'Yugoslavia', 'Yugoslavia', 'Yugoslavia', 'Yugoslavia', 'Yugoslavia', 'Yugoslavia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(248, 1, 'AX', 'ALA', 'Åland Islands', 'Åland Islands', 'Ã…land Islands', 'Ã…land Islands', 'Ã…land Islands', 'Ã…land Islands', 'Ã…land Islands', 'Ã…land Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(249, 1, 'BQ', 'BES', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(250, 1, 'CW', 'CUW', 'Curaçao', 'Curaçao', 'Curasao', 'Curasao', 'Curasao', 'Curasao', 'Curasao', 'Curasao', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(251, 1, 'GG', 'GGY', 'Guernsey', 'Bailiwick of Guernsey', 'Guernsey', 'Guernsey', 'Guernsey', 'Guernsey', 'Guernsey', 'Guernsey', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(252, 1, 'JE', 'JEY', 'Jersey', 'Bailiwick of Jersey', 'Jersey', 'Jersey', 'Jersey', 'Jersey', 'Jersey', 'Jersey', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(253, 1, 'PN', 'PNC', 'Pitcairn Islands', 'Pitcairn Islands', 'Pitcairn Islands', 'Pitcairn Islands', 'Pitcairn Islands', 'Pitcairn Islands', 'Pitcairn Islands', 'Pitcairn Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(254, 1, 'BL', 'BLM', 'Saint Barthélemy', 'Saint Barthélemy', 'Saint Barthélemy', 'Saint Barthélemy', 'Saint Barthélemy', 'Saint Barthélemy', 'Saint Barthélemy', 'Saint Barthélemy', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(255, 1, 'MF', 'MAF', 'Saint-Martin (French Part)', 'Saint-Martin (French Part)', 'Saint-Martin (French Part)', 'Saint-Martin (French Part)', 'Saint-Martin (French Part)', 'Saint-Martin (French Part)', 'Saint-Martin (French Part)', 'Saint-Martin (French Part)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(256, 1, 'SX', 'SXM', 'Sint Maarten (Dutch Part)', 'Sint Maarten (Dutch Part)', 'Sint Maarten (Dutch Part)', 'Sint Maarten (Dutch Part)', 'Sint Maarten (Dutch Part)', 'Sint Maarten (Dutch Part)', 'Sint Maarten (Dutch Part)', 'Sint Maarten (Dutch Part)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(257, 1, 'SS', 'SSD', 'South Sudan', 'the Republic of South Sudan', 'South Sudan', 'South Sudan', 'South Sudan', 'South Sudan', 'South Sudan', 'South Sudan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(258, 1, 'UN', 'UNK', 'Unknown / Not set', 'Unknown / Not set', 'Unknown / Not set', 'Unknown / Not set', 'Unknown / Not set', 'Unknown / Not set', 'Unknown / Not set', 'Unknown / Not set', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(259, 1, 'EU', 'EUR', 'European Union', 'European Union', 'European Union', 'European Union', 'European Union', 'European Union', 'European Union', 'European Union', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59');

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_currencies`
--

CREATE TABLE `cl_ref_currencies` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='type of contracts';

--
-- Contenu de la table `cl_ref_currencies`
--

INSERT INTO `cl_ref_currencies` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'BAHT', 'Baht', 'Baht', 'Baht', 'Baht', 'Baht', NULL, 'บาท', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-27 17:41:31', '2017-11-27 17:41:31'),
(2, 1, 'USD', 'US Dollar', 'US Dollar', 'US Dollar', 'US Dollar', 'US Dollar', NULL, 'ดอลลาร์สหรัฐ', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-23 19:24:58', '2017-11-23 19:24:58'),
(3, 1, 'EUR', 'Euro', 'Euro', 'Euro', 'Euro', 'Euro', 'Euro', 'ยูโร', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-23 19:24:58', '2017-11-23 19:24:58');

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_declaration_sources`
--

CREATE TABLE `cl_ref_declaration_sources` (
  `ID` int(11) NOT NULL COMMENT 'source of declaration ID',
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` char(2) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(128) CHARACTER SET utf8 NOT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='contains the list of sources of external declaration';

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_gears`
--

CREATE TABLE `cl_ref_gears` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_gear_characteristics`
--

CREATE TABLE `cl_ref_gear_characteristics` (
  `CL_REF_GEAR_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'A textual description of this gear characteristic.',
  `VALUE_MEASURE` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'The value, expressed as value, for this gear characteristic.',
  `CL_VALUE_MEASURE_UNIT_ID` int(11) DEFAULT NULL COMMENT 'The unit for the measure',
  `VALUE_TEXT` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'A value, expressed as text, of this gear characteristic.',
  `VALUE_CODE` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'A code specifying a value of this gear characteristic.',
  `VALUE_DATE` date DEFAULT NULL COMMENT 'The value, expressed as a date, time, date time, or other date time value, of this gear characteristic.',
  `VALUE_INDICATOR` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'The value, expressed as an indicator, for this gear characteristic.',
  `VALUE_QUANTITY` float DEFAULT NULL COMMENT 'The value, expressed as a quantity, for this gear characteristic.',
  `CL_VALUE_QUANTITY_UNIT_ID` int(11) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='UN/CEFACT FLUX Vessel Domain: Entity used to provide information on a prominent attribute or aspect related to a gear';

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_landing_sites`
--

CREATE TABLE `cl_ref_landing_sites` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CL_ADMIN_LEVEL_1_ID` int(11) NOT NULL,
  `I18n_DEFAULT` varchar(256) COLLATE utf8_bin NOT NULL COMMENT 'default label',
  `I18N_EN` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in English',
  `I18N_FR` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in French',
  `I18N_ES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Spanish',
  `I18N_TH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Thai',
  `I18N_VT` varchar(256) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'label in Vietnamese',
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_languages`
--

CREATE TABLE `cl_ref_languages` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of hazardous work type';

--
-- Contenu de la table `cl_ref_languages`
--

INSERT INTO `cl_ref_languages` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'aa', 'Afar', 'Afar', 'Afar', 'Afar', 'Afar', 'Afar', 'Afar', 'Afar', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(2, 1, 'ab', 'Abkhazian', 'Abkhazian', 'Abkhazian', 'Abkhazian', 'Abkhazian', 'Abkhazian', 'Abkhazian', 'Abkhazian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(3, 1, 'ae', 'Avestan', 'Avestan', 'Avestan', 'Avestan', 'Avestan', 'Avestan', 'Avestan', 'Avestan', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(4, 1, 'af', 'Afrikaans', 'Afrikaans', 'Afrikaans', 'Afrikaans', 'Afrikaans', 'Afrikaans', 'Afrikaans', 'Afrikaans', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(5, 1, 'ak', 'Akan', 'Akan', 'Akan', 'Akan', 'Akan', 'Akan', 'Akan', 'Akan', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(6, 1, 'am', 'Amharic', 'Amharic', 'Amharic', 'Amharic', 'Amharic', 'Amharic', 'Amharic', 'Amharic', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(7, 1, 'an', 'Aragonese', 'Aragonese', 'Aragonese', 'Aragonese', 'Aragonese', 'Aragonese', 'Aragonese', 'Aragonese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(8, 1, 'ar', 'Arabic', 'Arabic', 'Arabic', 'Arabic', 'Arabic', 'Arabic', 'Arabic', 'Arabic', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(9, 1, 'as', 'Assamese', 'Assamese', 'Assamese', 'Assamese', 'Assamese', 'Assamese', 'Assamese', 'Assamese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(10, 1, 'av', 'Avaric', 'Avaric', 'Avaric', 'Avaric', 'Avaric', 'Avaric', 'Avaric', 'Avaric', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(11, 1, 'ay', 'Aymara', 'Aymara', 'Aymara', 'Aymara', 'Aymara', 'Aymara', 'Aymara', 'Aymara', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(12, 1, 'az', 'Azerbaijani', 'Azerbaijani', 'Azerbaijani', 'Azerbaijani', 'Azerbaijani', 'Azerbaijani', 'Azerbaijani', 'Azerbaijani', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(13, 1, 'ba', 'Bashkir', 'Bashkir', 'Bashkir', 'Bashkir', 'Bashkir', 'Bashkir', 'Bashkir', 'Bashkir', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(14, 1, 'be', 'Belarusian', 'Belarusian', 'Belarusian', 'Belarusian', 'Belarusian', 'Belarusian', 'Belarusian', 'Belarusian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(15, 1, 'bg', 'Bulgarian', 'Bulgarian', 'Bulgarian', 'Bulgarian', 'Bulgarian', 'Bulgarian', 'Bulgarian', 'Bulgarian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(16, 1, 'bh', 'Bihari languages', 'Bihari languages', 'Bihari languages', 'Bihari languages', 'Bihari languages', 'Bihari languages', 'Bihari languages', 'Bihari languages', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(17, 1, 'bi', 'Bislama', 'Bislama', 'Bislama', 'Bislama', 'Bislama', 'Bislama', 'Bislama', 'Bislama', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(18, 1, 'bm', 'Bambara', 'Bambara', 'Bambara', 'Bambara', 'Bambara', 'Bambara', 'Bambara', 'Bambara', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(19, 1, 'bn', 'Bengali', 'Bengali', 'Bengali', 'Bengali', 'Bengali', 'Bengali', 'Bengali', 'Bengali', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(20, 1, 'bo', 'Tibetan', 'Tibetan', 'Tibetan', 'Tibetan', 'Tibetan', 'Tibetan', 'Tibetan', 'Tibetan', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(21, 1, 'br', 'Breton', 'Breton', 'Breton', 'Breton', 'Breton', 'Breton', 'Breton', 'Breton', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(22, 1, 'bs', 'Bosnian', 'Bosnian', 'Bosnian', 'Bosnian', 'Bosnian', 'Bosnian', 'Bosnian', 'Bosnian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(23, 1, 'ca', 'Catalan; Valencian', 'Catalan; Valencian', 'Catalan; Valencian', 'Catalan; Valencian', 'Catalan; Valencian', 'Catalan; Valencian', 'Catalan; Valencian', 'Catalan; Valencian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(24, 1, 'ce', 'Chechen', 'Chechen', 'Chechen', 'Chechen', 'Chechen', 'Chechen', 'Chechen', 'Chechen', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(25, 1, 'ch', 'Chamorro', 'Chamorro', 'Chamorro', 'Chamorro', 'Chamorro', 'Chamorro', 'Chamorro', 'Chamorro', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(26, 1, 'co', 'Corsican', 'Corsican', 'Corsican', 'Corsican', 'Corsican', 'Corsican', 'Corsican', 'Corsican', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(27, 1, 'cr', 'Cree', 'Cree', 'Cree', 'Cree', 'Cree', 'Cree', 'Cree', 'Cree', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(28, 1, 'cs', 'Czech', 'Czech', 'Czech', 'Czech', 'Czech', 'Czech', 'Czech', 'Czech', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(29, 1, 'cu', 'Church Slavic', 'Church Slavic', 'Church Slavic', 'Church Slavic', 'Church Slavic', 'Church Slavic', 'Church Slavic', 'Church Slavic', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(30, 1, 'cv', 'Chuvash', 'Chuvash', 'Chuvash', 'Chuvash', 'Chuvash', 'Chuvash', 'Chuvash', 'Chuvash', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(31, 1, 'cy', 'Welsh', 'Welsh', 'Welsh', 'Welsh', 'Welsh', 'Welsh', 'Welsh', 'Welsh', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(32, 1, 'da', 'Danish', 'Danish', 'Danish', 'Danish', 'Danish', 'Danish', 'Danish', 'Danish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(33, 1, 'de', 'German', 'German', 'German', 'German', 'German', 'German', 'German', 'German', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(34, 1, 'dv', 'Divehi; Dhivehi; Maldivian', 'Divehi; Dhivehi; Maldivian', 'Divehi; Dhivehi; Maldivian', 'Divehi; Dhivehi; Maldivian', 'Divehi; Dhivehi; Maldivian', 'Divehi; Dhivehi; Maldivian', 'Divehi; Dhivehi; Maldivian', 'Divehi; Dhivehi; Maldivian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(35, 1, 'dz', 'Dzongkha', 'Dzongkha', 'Dzongkha', 'Dzongkha', 'Dzongkha', 'Dzongkha', 'Dzongkha', 'Dzongkha', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(36, 1, 'ee', 'Ewe', 'Ewe', 'Ewe', 'Ewe', 'Ewe', 'Ewe', 'Ewe', 'Ewe', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(37, 1, 'el', 'Greek, Modern (1453-)', 'Greek, Modern (1453-)', 'Greek, Modern (1453-)', 'Greek, Modern (1453-)', 'Greek, Modern (1453-)', 'Greek, Modern (1453-)', 'Greek, Modern (1453-)', 'Greek, Modern (1453-)', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(38, 1, 'en', 'English', 'English', 'English', 'English', 'English', 'English', 'English', 'English', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(39, 1, 'eo', 'Esperanto', 'Esperanto', 'Esperanto', 'Esperanto', 'Esperanto', 'Esperanto', 'Esperanto', 'Esperanto', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(40, 1, 'es', 'Spanish; Castilian', 'Spanish; Castilian', 'Spanish; Castilian', 'Spanish; Castilian', 'Spanish; Castilian', 'Spanish; Castilian', 'Spanish; Castilian', 'Spanish; Castilian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(41, 1, 'et', 'Estonian', 'Estonian', 'Estonian', 'Estonian', 'Estonian', 'Estonian', 'Estonian', 'Estonian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(42, 1, 'eu', 'Basque', 'Basque', 'Basque', 'Basque', 'Basque', 'Basque', 'Basque', 'Basque', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(43, 1, 'fa', 'Persian', 'Persian', 'Persian', 'Persian', 'Persian', 'Persian', 'Persian', 'Persian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(44, 1, 'ff', 'Fulah', 'Fulah', 'Fulah', 'Fulah', 'Fulah', 'Fulah', 'Fulah', 'Fulah', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(45, 1, 'fi', 'Finnish', 'Finnish', 'Finnish', 'Finnish', 'Finnish', 'Finnish', 'Finnish', 'Finnish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(46, 1, 'fj', 'Fijian', 'Fijian', 'Fijian', 'Fijian', 'Fijian', 'Fijian', 'Fijian', 'Fijian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(47, 1, 'fo', 'Faroese', 'Faroese', 'Faroese', 'Faroese', 'Faroese', 'Faroese', 'Faroese', 'Faroese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(48, 1, 'fr', 'French', 'French', 'French', 'French', 'French', 'French', 'French', 'French', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(49, 1, 'fy', 'Western Frisian', 'Western Frisian', 'Western Frisian', 'Western Frisian', 'Western Frisian', 'Western Frisian', 'Western Frisian', 'Western Frisian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(50, 1, 'ga', 'Irish', 'Irish', 'Irish', 'Irish', 'Irish', 'Irish', 'Irish', 'Irish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(51, 1, 'gd', 'Gaelic; Scottish Gaelic', 'Gaelic; Scottish Gaelic', 'Gaelic; Scottish Gaelic', 'Gaelic; Scottish Gaelic', 'Gaelic; Scottish Gaelic', 'Gaelic; Scottish Gaelic', 'Gaelic; Scottish Gaelic', 'Gaelic; Scottish Gaelic', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(52, 1, 'gl', 'Galician', 'Galician', 'Galician', 'Galician', 'Galician', 'Galician', 'Galician', 'Galician', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(53, 1, 'gn', 'Guarani', 'Guarani', 'Guarani', 'Guarani', 'Guarani', 'Guarani', 'Guarani', 'Guarani', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(54, 1, 'gu', 'Gujarati', 'Gujarati', 'Gujarati', 'Gujarati', 'Gujarati', 'Gujarati', 'Gujarati', 'Gujarati', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(55, 1, 'gv', 'Manx', 'Manx', 'Manx', 'Manx', 'Manx', 'Manx', 'Manx', 'Manx', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(56, 1, 'ha', 'Hausa', 'Hausa', 'Hausa', 'Hausa', 'Hausa', 'Hausa', 'Hausa', 'Hausa', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(57, 1, 'he', 'Hebrew', 'Hebrew', 'Hebrew', 'Hebrew', 'Hebrew', 'Hebrew', 'Hebrew', 'Hebrew', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(58, 1, 'hi', 'Hindi', 'Hindi', 'Hindi', 'Hindi', 'Hindi', 'Hindi', 'Hindi', 'Hindi', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(59, 1, 'ho', 'Hiri Motu', 'Hiri Motu', 'Hiri Motu', 'Hiri Motu', 'Hiri Motu', 'Hiri Motu', 'Hiri Motu', 'Hiri Motu', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(60, 1, 'hr', 'Croatian', 'Croatian', 'Croatian', 'Croatian', 'Croatian', 'Croatian', 'Croatian', 'Croatian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(61, 1, 'ht', 'Haitian; Haitian Creole', 'Haitian; Haitian Creole', 'Haitian; Haitian Creole', 'Haitian; Haitian Creole', 'Haitian; Haitian Creole', 'Haitian; Haitian Creole', 'Haitian; Haitian Creole', 'Haitian; Haitian Creole', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(62, 1, 'hu', 'Hungarian', 'Hungarian', 'Hungarian', 'Hungarian', 'Hungarian', 'Hungarian', 'Hungarian', 'Hungarian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(63, 1, 'hy', 'Armenian', 'Armenian', 'Armenian', 'Armenian', 'Armenian', 'Armenian', 'Armenian', 'Armenian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(64, 1, 'hz', 'Herero', 'Herero', 'Herero', 'Herero', 'Herero', 'Herero', 'Herero', 'Herero', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(65, 1, 'ia', 'Interlingua ', 'Interlingua ', 'Interlingua ', 'Interlingua ', 'Interlingua ', 'Interlingua ', 'Interlingua ', 'Interlingua ', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(66, 1, 'id', 'Indonesian', 'Indonesian', 'Indonesian', 'Indonesian', 'Indonesian', 'Indonesian', 'Indonesian', 'Indonesian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(67, 1, 'ie', 'Interlingue; Occidental', 'Interlingue; Occidental', 'Interlingue; Occidental', 'Interlingue; Occidental', 'Interlingue; Occidental', 'Interlingue; Occidental', 'Interlingue; Occidental', 'Interlingue; Occidental', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(68, 1, 'ig', 'Igbo', 'Igbo', 'Igbo', 'Igbo', 'Igbo', 'Igbo', 'Igbo', 'Igbo', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(69, 1, 'ii', 'Sichuan Yi; Nuosu', 'Sichuan Yi; Nuosu', 'Sichuan Yi; Nuosu', 'Sichuan Yi; Nuosu', 'Sichuan Yi; Nuosu', 'Sichuan Yi; Nuosu', 'Sichuan Yi; Nuosu', 'Sichuan Yi; Nuosu', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(70, 1, 'ik', 'Inupiaq', 'Inupiaq', 'Inupiaq', 'Inupiaq', 'Inupiaq', 'Inupiaq', 'Inupiaq', 'Inupiaq', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(71, 1, 'io', 'Ido', 'Ido', 'Ido', 'Ido', 'Ido', 'Ido', 'Ido', 'Ido', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(72, 1, 'is', 'Icelandic', 'Icelandic', 'Icelandic', 'Icelandic', 'Icelandic', 'Icelandic', 'Icelandic', 'Icelandic', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(73, 1, 'it', 'Italian', 'Italian', 'Italian', 'Italian', 'Italian', 'Italian', 'Italian', 'Italian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(74, 1, 'iu', 'Inuktitut', 'Inuktitut', 'Inuktitut', 'Inuktitut', 'Inuktitut', 'Inuktitut', 'Inuktitut', 'Inuktitut', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(75, 1, 'ja', 'Japanese', 'Japanese', 'Japanese', 'Japanese', 'Japanese', 'Japanese', 'Japanese', 'Japanese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(76, 1, 'jv', 'Javanese', 'Javanese', 'Javanese', 'Javanese', 'Javanese', 'Javanese', 'Javanese', 'Javanese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(77, 1, 'ka', 'Georgian', 'Georgian', 'Georgian', 'Georgian', 'Georgian', 'Georgian', 'Georgian', 'Georgian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(78, 1, 'kg', 'Kongo', 'Kongo', 'Kongo', 'Kongo', 'Kongo', 'Kongo', 'Kongo', 'Kongo', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(79, 1, 'ki', 'Kikuyu; Gikuyu', 'Kikuyu; Gikuyu', 'Kikuyu; Gikuyu', 'Kikuyu; Gikuyu', 'Kikuyu; Gikuyu', 'Kikuyu; Gikuyu', 'Kikuyu; Gikuyu', 'Kikuyu; Gikuyu', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(80, 1, 'kj', 'Kuanyama; Kwanyama', 'Kuanyama; Kwanyama', 'Kuanyama; Kwanyama', 'Kuanyama; Kwanyama', 'Kuanyama; Kwanyama', 'Kuanyama; Kwanyama', 'Kuanyama; Kwanyama', 'Kuanyama; Kwanyama', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(81, 1, 'kk', 'Kazakh', 'Kazakh', 'Kazakh', 'Kazakh', 'Kazakh', 'Kazakh', 'Kazakh', 'Kazakh', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(82, 1, 'kl', 'Kalaallisut; Greenlandic', 'Kalaallisut; Greenlandic', 'Kalaallisut; Greenlandic', 'Kalaallisut; Greenlandic', 'Kalaallisut; Greenlandic', 'Kalaallisut; Greenlandic', 'Kalaallisut; Greenlandic', 'Kalaallisut; Greenlandic', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(83, 1, 'km', 'Central Khmer', 'Central Khmer', 'Central Khmer', 'Central Khmer', 'Central Khmer', 'Central Khmer', 'Central Khmer', 'Central Khmer', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(84, 1, 'kn', 'Kannada', 'Kannada', 'Kannada', 'Kannada', 'Kannada', 'Kannada', 'Kannada', 'Kannada', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(85, 1, 'ko', 'Korean', 'Korean', 'Korean', 'Korean', 'Korean', 'Korean', 'Korean', 'Korean', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(86, 1, 'kr', 'Kanuri', 'Kanuri', 'Kanuri', 'Kanuri', 'Kanuri', 'Kanuri', 'Kanuri', 'Kanuri', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(87, 1, 'ks', 'Kashmiri', 'Kashmiri', 'Kashmiri', 'Kashmiri', 'Kashmiri', 'Kashmiri', 'Kashmiri', 'Kashmiri', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(88, 1, 'ku', 'Kurdish', 'Kurdish', 'Kurdish', 'Kurdish', 'Kurdish', 'Kurdish', 'Kurdish', 'Kurdish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(89, 1, 'kv', 'Komi', 'Komi', 'Komi', 'Komi', 'Komi', 'Komi', 'Komi', 'Komi', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(90, 1, 'kw', 'Cornish', 'Cornish', 'Cornish', 'Cornish', 'Cornish', 'Cornish', 'Cornish', 'Cornish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(91, 1, 'ky', 'Kirghiz; Kyrgyz', 'Kirghiz; Kyrgyz', 'Kirghiz; Kyrgyz', 'Kirghiz; Kyrgyz', 'Kirghiz; Kyrgyz', 'Kirghiz; Kyrgyz', 'Kirghiz; Kyrgyz', 'Kirghiz; Kyrgyz', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(92, 1, 'la', 'Latin', 'Latin', 'Latin', 'Latin', 'Latin', 'Latin', 'Latin', 'Latin', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(93, 1, 'lb', 'Luxembourgish; Letzeburgesch', 'Luxembourgish; Letzeburgesch', 'Luxembourgish; Letzeburgesch', 'Luxembourgish; Letzeburgesch', 'Luxembourgish; Letzeburgesch', 'Luxembourgish; Letzeburgesch', 'Luxembourgish; Letzeburgesch', 'Luxembourgish; Letzeburgesch', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(94, 1, 'lg', 'Ganda', 'Ganda', 'Ganda', 'Ganda', 'Ganda', 'Ganda', 'Ganda', 'Ganda', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(95, 1, 'li', 'Limburgan; Limburger; Limburgish', 'Limburgan; Limburger; Limburgish', 'Limburgan; Limburger; Limburgish', 'Limburgan; Limburger; Limburgish', 'Limburgan; Limburger; Limburgish', 'Limburgan; Limburger; Limburgish', 'Limburgan; Limburger; Limburgish', 'Limburgan; Limburger; Limburgish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(96, 1, 'ln', 'Lingala', 'Lingala', 'Lingala', 'Lingala', 'Lingala', 'Lingala', 'Lingala', 'Lingala', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(97, 1, 'lo', 'Lao', 'Lao', 'Lao', 'Lao', 'Lao', 'Lao', 'Lao', 'Lao', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(98, 1, 'lt', 'Lithuanian', 'Lithuanian', 'Lithuanian', 'Lithuanian', 'Lithuanian', 'Lithuanian', 'Lithuanian', 'Lithuanian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(99, 1, 'lu', 'Luba-Katanga', 'Luba-Katanga', 'Luba-Katanga', 'Luba-Katanga', 'Luba-Katanga', 'Luba-Katanga', 'Luba-Katanga', 'Luba-Katanga', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(100, 1, 'lv', 'Latvian', 'Latvian', 'Latvian', 'Latvian', 'Latvian', 'Latvian', 'Latvian', 'Latvian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(101, 1, 'mg', 'Malagasy', 'Malagasy', 'Malagasy', 'Malagasy', 'Malagasy', 'Malagasy', 'Malagasy', 'Malagasy', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(102, 1, 'mh', 'Marshallese', 'Marshallese', 'Marshallese', 'Marshallese', 'Marshallese', 'Marshallese', 'Marshallese', 'Marshallese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(103, 1, 'mi', 'Maori', 'Maori', 'Maori', 'Maori', 'Maori', 'Maori', 'Maori', 'Maori', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(104, 1, 'mk', 'Macedonian', 'Macedonian', 'Macedonian', 'Macedonian', 'Macedonian', 'Macedonian', 'Macedonian', 'Macedonian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(105, 1, 'ml', 'Malayalam', 'Malayalam', 'Malayalam', 'Malayalam', 'Malayalam', 'Malayalam', 'Malayalam', 'Malayalam', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(106, 1, 'mn', 'Mongolian', 'Mongolian', 'Mongolian', 'Mongolian', 'Mongolian', 'Mongolian', 'Mongolian', 'Mongolian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(107, 1, 'mr', 'Marathi', 'Marathi', 'Marathi', 'Marathi', 'Marathi', 'Marathi', 'Marathi', 'Marathi', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(108, 1, 'ms', 'Malay', 'Malay', 'Malay', 'Malay', 'Malay', 'Malay', 'Malay', 'Malay', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(109, 1, 'mt', 'Maltese', 'Maltese', 'Maltese', 'Maltese', 'Maltese', 'Maltese', 'Maltese', 'Maltese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(110, 1, 'my', 'Burmese', 'Burmese', 'Burmese', 'Burmese', 'Burmese', 'Burmese', 'Burmese', 'Burmese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(111, 1, 'na', 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(112, 1, 'nb', 'BokmÃ¥l, Norwegian; Norwegian BokmÃ¥l', 'BokmÃ¥l, Norwegian; Norwegian BokmÃ¥l', 'BokmÃƒÂ¥l, Norwegian; Norwegian BokmÃƒÂ¥l', 'BokmÃƒÂ¥l, Norwegian; Norwegian BokmÃƒÂ¥l', 'BokmÃƒÂ¥l, Norwegian; Norwegian BokmÃƒÂ¥l', 'BokmÃƒÂ¥l, Norwegian; Norwegian BokmÃƒÂ¥l', 'BokmÃƒÂ¥l, Norwegian; Norwegian BokmÃƒÂ¥l', 'BokmÃƒÂ¥l, Norwegian; Norwegian BokmÃƒÂ¥l', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(113, 1, 'nd', 'Ndebele, North; North Ndebele', 'Ndebele, North; North Ndebele', 'Ndebele, North; North Ndebele', 'Ndebele, North; North Ndebele', 'Ndebele, North; North Ndebele', 'Ndebele, North; North Ndebele', 'Ndebele, North; North Ndebele', 'Ndebele, North; North Ndebele', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(114, 1, 'ne', 'Nepali', 'Nepali', 'Nepali', 'Nepali', 'Nepali', 'Nepali', 'Nepali', 'Nepali', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(115, 1, 'ng', 'Ndonga', 'Ndonga', 'Ndonga', 'Ndonga', 'Ndonga', 'Ndonga', 'Ndonga', 'Ndonga', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(116, 1, 'nl', 'Dutch; Flemish', 'Dutch; Flemish', 'Dutch; Flemish', 'Dutch; Flemish', 'Dutch; Flemish', 'Dutch; Flemish', 'Dutch; Flemish', 'Dutch; Flemish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(117, 1, 'nn', 'Norwegian Nynorsk; Nynorsk, Norwegian', 'Norwegian Nynorsk; Nynorsk, Norwegian', 'Norwegian Nynorsk; Nynorsk, Norwegian', 'Norwegian Nynorsk; Nynorsk, Norwegian', 'Norwegian Nynorsk; Nynorsk, Norwegian', 'Norwegian Nynorsk; Nynorsk, Norwegian', 'Norwegian Nynorsk; Nynorsk, Norwegian', 'Norwegian Nynorsk; Nynorsk, Norwegian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(118, 1, 'no', 'Norwegian', 'Norwegian', 'Norwegian', 'Norwegian', 'Norwegian', 'Norwegian', 'Norwegian', 'Norwegian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(119, 1, 'nr', 'Ndebele, South; South Ndebele', 'Ndebele, South; South Ndebele', 'Ndebele, South; South Ndebele', 'Ndebele, South; South Ndebele', 'Ndebele, South; South Ndebele', 'Ndebele, South; South Ndebele', 'Ndebele, South; South Ndebele', 'Ndebele, South; South Ndebele', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(120, 1, 'nv', 'Navajo; Navaho', 'Navajo; Navaho', 'Navajo; Navaho', 'Navajo; Navaho', 'Navajo; Navaho', 'Navajo; Navaho', 'Navajo; Navaho', 'Navajo; Navaho', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(121, 1, 'ny', 'Chichewa; Chewa; Nyanja', 'Chichewa; Chewa; Nyanja', 'Chichewa; Chewa; Nyanja', 'Chichewa; Chewa; Nyanja', 'Chichewa; Chewa; Nyanja', 'Chichewa; Chewa; Nyanja', 'Chichewa; Chewa; Nyanja', 'Chichewa; Chewa; Nyanja', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(122, 1, 'oc', 'Occitan (post 1500); ProvenÃ§al', 'Occitan (post 1500); ProvenÃ§al', 'Occitan (post 1500); ProvenÃƒÂ§al', 'Occitan (post 1500); ProvenÃƒÂ§al', 'Occitan (post 1500); ProvenÃƒÂ§al', 'Occitan (post 1500); ProvenÃƒÂ§al', 'Occitan (post 1500); ProvenÃƒÂ§al', 'Occitan (post 1500); ProvenÃƒÂ§al', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(123, 1, 'oj', 'Ojibwa', 'Ojibwa', 'Ojibwa', 'Ojibwa', 'Ojibwa', 'Ojibwa', 'Ojibwa', 'Ojibwa', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(124, 1, 'om', 'Oromo', 'Oromo', 'Oromo', 'Oromo', 'Oromo', 'Oromo', 'Oromo', 'Oromo', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(125, 1, 'or', 'Oriya', 'Oriya', 'Oriya', 'Oriya', 'Oriya', 'Oriya', 'Oriya', 'Oriya', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(126, 1, 'os', 'Ossetian; Ossetic', 'Ossetian; Ossetic', 'Ossetian; Ossetic', 'Ossetian; Ossetic', 'Ossetian; Ossetic', 'Ossetian; Ossetic', 'Ossetian; Ossetic', 'Ossetian; Ossetic', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(127, 1, 'pa', 'Panjabi; Punjabi', 'Panjabi; Punjabi', 'Panjabi; Punjabi', 'Panjabi; Punjabi', 'Panjabi; Punjabi', 'Panjabi; Punjabi', 'Panjabi; Punjabi', 'Panjabi; Punjabi', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(128, 1, 'pi', 'Pali', 'Pali', 'Pali', 'Pali', 'Pali', 'Pali', 'Pali', 'Pali', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(129, 1, 'pl', 'Polish', 'Polish', 'Polish', 'Polish', 'Polish', 'Polish', 'Polish', 'Polish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(130, 1, 'ps', 'Pushto; Pashto', 'Pushto; Pashto', 'Pushto; Pashto', 'Pushto; Pashto', 'Pushto; Pashto', 'Pushto; Pashto', 'Pushto; Pashto', 'Pushto; Pashto', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(131, 1, 'pt', 'Portuguese', 'Portuguese', 'Portuguese', 'Portuguese', 'Portuguese', 'Portuguese', 'Portuguese', 'Portuguese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(132, 1, 'qu', 'Quechua', 'Quechua', 'Quechua', 'Quechua', 'Quechua', 'Quechua', 'Quechua', 'Quechua', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(133, 1, 'rm', 'Romansh', 'Romansh', 'Romansh', 'Romansh', 'Romansh', 'Romansh', 'Romansh', 'Romansh', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(134, 1, 'rn', 'Rundi', 'Rundi', 'Rundi', 'Rundi', 'Rundi', 'Rundi', 'Rundi', 'Rundi', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(135, 1, 'ro', 'Romanian; Moldavian; Moldovan', 'Romanian; Moldavian; Moldovan', 'Romanian; Moldavian; Moldovan', 'Romanian; Moldavian; Moldovan', 'Romanian; Moldavian; Moldovan', 'Romanian; Moldavian; Moldovan', 'Romanian; Moldavian; Moldovan', 'Romanian; Moldavian; Moldovan', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(136, 1, 'ru', 'Russian', 'Russian', 'Russian', 'Russian', 'Russian', 'Russian', 'Russian', 'Russian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(137, 1, 'rw', 'Kinyarwanda', 'Kinyarwanda', 'Kinyarwanda', 'Kinyarwanda', 'Kinyarwanda', 'Kinyarwanda', 'Kinyarwanda', 'Kinyarwanda', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(138, 1, 'sa', 'Sanskrit', 'Sanskrit', 'Sanskrit', 'Sanskrit', 'Sanskrit', 'Sanskrit', 'Sanskrit', 'Sanskrit', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(139, 1, 'sc', 'Sardinian', 'Sardinian', 'Sardinian', 'Sardinian', 'Sardinian', 'Sardinian', 'Sardinian', 'Sardinian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(140, 1, 'sd', 'Sindhi', 'Sindhi', 'Sindhi', 'Sindhi', 'Sindhi', 'Sindhi', 'Sindhi', 'Sindhi', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(141, 1, 'se', 'Northern Sami', 'Northern Sami', 'Northern Sami', 'Northern Sami', 'Northern Sami', 'Northern Sami', 'Northern Sami', 'Northern Sami', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(142, 1, 'sg', 'Sango', 'Sango', 'Sango', 'Sango', 'Sango', 'Sango', 'Sango', 'Sango', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(143, 1, 'si', 'Sinhala; Sinhalese', 'Sinhala; Sinhalese', 'Sinhala; Sinhalese', 'Sinhala; Sinhalese', 'Sinhala; Sinhalese', 'Sinhala; Sinhalese', 'Sinhala; Sinhalese', 'Sinhala; Sinhalese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(144, 1, 'sk', 'Slovak', 'Slovak', 'Slovak', 'Slovak', 'Slovak', 'Slovak', 'Slovak', 'Slovak', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(145, 1, 'sl', 'Slovenian', 'Slovenian', 'Slovenian', 'Slovenian', 'Slovenian', 'Slovenian', 'Slovenian', 'Slovenian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(146, 1, 'sm', 'Samoan', 'Samoan', 'Samoan', 'Samoan', 'Samoan', 'Samoan', 'Samoan', 'Samoan', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(147, 1, 'sn', 'Shona', 'Shona', 'Shona', 'Shona', 'Shona', 'Shona', 'Shona', 'Shona', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(148, 1, 'so', 'Somali', 'Somali', 'Somali', 'Somali', 'Somali', 'Somali', 'Somali', 'Somali', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(149, 1, 'sq', 'Albanian', 'Albanian', 'Albanian', 'Albanian', 'Albanian', 'Albanian', 'Albanian', 'Albanian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(150, 1, 'sr', 'Serbian', 'Serbian', 'Serbian', 'Serbian', 'Serbian', 'Serbian', 'Serbian', 'Serbian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(151, 1, 'ss', 'Swati', 'Swati', 'Swati', 'Swati', 'Swati', 'Swati', 'Swati', 'Swati', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(152, 1, 'st', 'Sotho, Southern', 'Sotho, Southern', 'Sotho, Southern', 'Sotho, Southern', 'Sotho, Southern', 'Sotho, Southern', 'Sotho, Southern', 'Sotho, Southern', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(153, 1, 'su', 'Sundanese', 'Sundanese', 'Sundanese', 'Sundanese', 'Sundanese', 'Sundanese', 'Sundanese', 'Sundanese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(154, 1, 'sv', 'Swedish', 'Swedish', 'Swedish', 'Swedish', 'Swedish', 'Swedish', 'Swedish', 'Swedish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(155, 1, 'sw', 'Swahili', 'Swahili', 'Swahili', 'Swahili', 'Swahili', 'Swahili', 'Swahili', 'Swahili', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(156, 1, 'ta', 'Tamil', 'Tamil', 'Tamil', 'Tamil', 'Tamil', 'Tamil', 'Tamil', 'Tamil', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(157, 1, 'te', 'Telugu', 'Telugu', 'Telugu', 'Telugu', 'Telugu', 'Telugu', 'Telugu', 'Telugu', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(158, 1, 'tg', 'Tajik', 'Tajik', 'Tajik', 'Tajik', 'Tajik', 'Tajik', 'Tajik', 'Tajik', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(159, 1, 'th', 'Thai', 'Thai', 'Thai', 'Thai', 'Thai', 'Thai', 'Thai', 'Thai', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(160, 1, 'ti', 'Tigrinya', 'Tigrinya', 'Tigrinya', 'Tigrinya', 'Tigrinya', 'Tigrinya', 'Tigrinya', 'Tigrinya', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(161, 1, 'tk', 'Turkmen', 'Turkmen', 'Turkmen', 'Turkmen', 'Turkmen', 'Turkmen', 'Turkmen', 'Turkmen', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(162, 1, 'tl', 'Tagalog', 'Tagalog', 'Tagalog', 'Tagalog', 'Tagalog', 'Tagalog', 'Tagalog', 'Tagalog', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(163, 1, 'tn', 'Tswana', 'Tswana', 'Tswana', 'Tswana', 'Tswana', 'Tswana', 'Tswana', 'Tswana', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(164, 1, 'to', 'Tonga (Tonga Islands)', 'Tonga (Tonga Islands)', 'Tonga (Tonga Islands)', 'Tonga (Tonga Islands)', 'Tonga (Tonga Islands)', 'Tonga (Tonga Islands)', 'Tonga (Tonga Islands)', 'Tonga (Tonga Islands)', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(165, 1, 'tr', 'Turkish', 'Turkish', 'Turkish', 'Turkish', 'Turkish', 'Turkish', 'Turkish', 'Turkish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(166, 1, 'ts', 'Tsonga', 'Tsonga', 'Tsonga', 'Tsonga', 'Tsonga', 'Tsonga', 'Tsonga', 'Tsonga', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(167, 1, 'tt', 'Tatar', 'Tatar', 'Tatar', 'Tatar', 'Tatar', 'Tatar', 'Tatar', 'Tatar', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(168, 1, 'tw', 'Twi', 'Twi', 'Twi', 'Twi', 'Twi', 'Twi', 'Twi', 'Twi', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(169, 1, 'ty', 'Tahitian', 'Tahitian', 'Tahitian', 'Tahitian', 'Tahitian', 'Tahitian', 'Tahitian', 'Tahitian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(170, 1, 'ug', 'Uighur; Uyghur', 'Uighur; Uyghur', 'Uighur; Uyghur', 'Uighur; Uyghur', 'Uighur; Uyghur', 'Uighur; Uyghur', 'Uighur; Uyghur', 'Uighur; Uyghur', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(171, 1, 'uk', 'Ukrainian', 'Ukrainian', 'Ukrainian', 'Ukrainian', 'Ukrainian', 'Ukrainian', 'Ukrainian', 'Ukrainian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(172, 1, 'ur', 'Urdu', 'Urdu', 'Urdu', 'Urdu', 'Urdu', 'Urdu', 'Urdu', 'Urdu', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(173, 1, 'uz', 'Uzbek', 'Uzbek', 'Uzbek', 'Uzbek', 'Uzbek', 'Uzbek', 'Uzbek', 'Uzbek', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(174, 1, 've', 'Venda', 'Venda', 'Venda', 'Venda', 'Venda', 'Venda', 'Venda', 'Venda', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(175, 1, 'vi', 'Vietnamese', 'Vietnamese', 'Vietnamese', 'Vietnamese', 'Vietnamese', 'Vietnamese', 'Vietnamese', 'Vietnamese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(176, 1, 'vo', 'VolapÃ¼k', 'VolapÃ¼k', 'VolapÃƒÂ¼k', 'VolapÃƒÂ¼k', 'VolapÃƒÂ¼k', 'VolapÃƒÂ¼k', 'VolapÃƒÂ¼k', 'VolapÃƒÂ¼k', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(177, 1, 'wa', 'Walloon', 'Walloon', 'Walloon', 'Walloon', 'Walloon', 'Walloon', 'Walloon', 'Walloon', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(178, 1, 'wo', 'Wolof', 'Wolof', 'Wolof', 'Wolof', 'Wolof', 'Wolof', 'Wolof', 'Wolof', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(179, 1, 'xh', 'Xhosa', 'Xhosa', 'Xhosa', 'Xhosa', 'Xhosa', 'Xhosa', 'Xhosa', 'Xhosa', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(180, 1, 'yi', 'Yiddish', 'Yiddish', 'Yiddish', 'Yiddish', 'Yiddish', 'Yiddish', 'Yiddish', 'Yiddish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(181, 1, 'yo', 'Yoruba', 'Yoruba', 'Yoruba', 'Yoruba', 'Yoruba', 'Yoruba', 'Yoruba', 'Yoruba', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(182, 1, 'za', 'Zhuang; Chuang', 'Zhuang; Chuang', 'Zhuang; Chuang', 'Zhuang; Chuang', 'Zhuang; Chuang', 'Zhuang; Chuang', 'Zhuang; Chuang', 'Zhuang; Chuang', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(183, 1, 'zh', 'Chinese', 'Chinese', 'Chinese', 'Chinese', 'Chinese', 'Chinese', 'Chinese', 'Chinese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(184, 1, 'zu', 'Zulu', 'Zulu', 'Zulu', 'Zulu', 'Zulu', 'Zulu', 'Zulu', 'Zulu', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19');

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_languages_countries`
--

CREATE TABLE `cl_ref_languages_countries` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of languges per countries';

--
-- Contenu de la table `cl_ref_languages_countries`
--

INSERT INTO `cl_ref_languages_countries` (`CL_LANGUAGE_ID`, `CL_COUNTRY_ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(159, 205, 1, '159', 'Thailand official language', 'Thailand official language', 'Thailand official language', 'Thailand official language', 'Langue officielle de la Thailande', NULL, 'ภาษาไทยเป็นทางการ', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-04 17:08:00', '2017-11-04 17:08:00'),
(159, 209, 1, '159', '206', 'Thailand official language', 'Thailand official language', 'Thailand official language', 'Langue officielle de la Thailande', NULL, 'ภาษาไทยเป็นทางการ', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-04 18:08:00', '2017-11-04 18:08:00');

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_products`
--

CREATE TABLE `cl_ref_products` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `CL_PRODUCTS_TYPE_ID` int(11) NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of phytosanitary products';

--
-- Contenu de la table `cl_ref_products`
--

INSERT INTO `cl_ref_products` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `CL_PRODUCTS_TYPE_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'FERT-21-0-0', 'ปุ๋ยทดลองศูนย์วิจัย 21-0-0', 'ปุ๋ยทดลองศูนย์วิจัย 21-0-0', 'ปุ๋ยทดลองศูนย์วิจัย 21-0-0', 'ปุ๋ยทดลองศูนย์วิจัย 21-0-0', 'ปุ๋ยทดลองศูนย์วิจัย 21-0-0', 'ปุ๋ยทดลองศูนย์วิจัย 21-0-0', 'ปุ๋ยทดลองศูนย์วิจัย 21-0-0', 'ปุ๋ยทดลองศูนย์วิจัย 21-0-0', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(2, 1, 'FERT-30-15-10', 'ปุ๋ยน้ำหยด 30-15-10', 'ปุ๋ยน้ำหยด 30-15-10', 'ปุ๋ยน้ำหยด 30-15-10', 'ปุ๋ยน้ำหยด 30-15-10', 'ปุ๋ยน้ำหยด 30-15-10', 'ปุ๋ยน้ำหยด 30-15-10', 'ปุ๋ยน้ำหยด 30-15-10', 'ปุ๋ยน้ำหยด 30-15-10', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:07:02', '2017-09-23 13:07:02'),
(3, 1, 'FERT-46-0-0', 'ปุ๋ยสูตร 46-0-0', 'ปุ๋ยสูตร 46-0-0', 'ปุ๋ยสูตร 46-0-0', 'ปุ๋ยสูตร 46-0-0', 'ปุ๋ยสูตร 46-0-0', 'ปุ๋ยสูตร 46-0-0', 'ปุ๋ยสูตร 46-0-0', 'ปุ๋ยสูตร 46-0-0', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(4, 1, 'FERT-25-8-5', 'ปุ๋ยน้ำหยด 25-8-5', 'ปุ๋ยน้ำหยด 25-8-5', 'ปุ๋ยน้ำหยด 25-8-5', 'ปุ๋ยน้ำหยด 25-8-5', 'ปุ๋ยน้ำหยด 25-8-5', 'ปุ๋ยน้ำหยด 25-8-5', 'ปุ๋ยน้ำหยด 25-8-5', 'ปุ๋ยน้ำหยด 25-8-5', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(5, 1, 'FERT-18-46-0', 'แม่ปุ๋ยผสม 18-46-0', 'แม่ปุ๋ยผสม 18-46-0', 'แม่ปุ๋ยผสม 18-46-0', 'แม่ปุ๋ยผสม 18-46-0', 'แม่ปุ๋ยผสม 18-46-0', 'แม่ปุ๋ยผสม 18-46-0', 'แม่ปุ๋ยผสม 18-46-0', 'แม่ปุ๋ยผสม 18-46-0', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(6, 1, 'FERT-21-7-18', 'ปุ๋ยสูตร 21-7-18', 'ปุ๋ยสูตร 21-7-18', 'ปุ๋ยสูตร 21-7-18', 'ปุ๋ยสูตร 21-7-18', 'ปุ๋ยสูตร 21-7-18', 'ปุ๋ยสูตร 21-7-18', 'ปุ๋ยสูตร 21-7-18', 'ปุ๋ยสูตร 21-7-18', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(7, 1, 'FERT-16-8-8', 'ปุ๋ยสูตร 16-8-8', 'ปุ๋ยสูตร 16-8-8', 'ปุ๋ยสูตร 16-8-8', 'ปุ๋ยสูตร 16-8-8', 'ปุ๋ยสูตร 16-8-8', 'ปุ๋ยสูตร 16-8-8', 'ปุ๋ยสูตร 16-8-8', 'ปุ๋ยสูตร 16-8-8', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(8, 1, 'FERT-16-16-8', 'ปุ๋ยสูตร 16-16-8', 'ปุ๋ยสูตร 16-16-8', 'ปุ๋ยสูตร 16-16-8', 'ปุ๋ยสูตร 16-16-8', 'ปุ๋ยสูตร 16-16-8', 'ปุ๋ยสูตร 16-16-8', 'ปุ๋ยสูตร 16-16-8', 'ปุ๋ยสูตร 16-16-8', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(9, 1, 'FERT-6-16-16', 'ปุ๋ยสูตร 16-16-16', 'ปุ๋ยสูตร 16-16-16', 'ปุ๋ยสูตร 16-16-16', 'ปุ๋ยสูตร 16-16-16', 'ปุ๋ยสูตร 16-16-16', 'ปุ๋ยสูตร 16-16-16', 'ปุ๋ยสูตร 16-16-16', 'ปุ๋ยสูตร 16-16-16', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(10, 1, 'FERT-16-10-0', 'ปุ๋ยสูตร 16-20-0', 'ปุ๋ยสูตร 16-20-0', 'ปุ๋ยสูตร 16-20-0', 'ปุ๋ยสูตร 16-20-0', 'ปุ๋ยสูตร 16-20-0', 'ปุ๋ยสูตร 16-20-0', 'ปุ๋ยสูตร 16-20-0', 'ปุ๋ยสูตร 16-20-0', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(11, 1, 'FERT-0-0-60', 'แม่ปุ๋ยสูตร 0-0-60', 'แม่ปุ๋ยสูตร 0-0-60', 'แม่ปุ๋ยสูตร 0-0-60', 'แม่ปุ๋ยสูตร 0-0-60', 'แม่ปุ๋ยสูตร 0-0-60', 'แม่ปุ๋ยสูตร 0-0-60', 'แม่ปุ๋ยสูตร 0-0-60', 'แม่ปุ๋ยสูตร 0-0-60', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(12, 1, 'FERT-0-0-50', 'ปุ๋ยน้ำหยด 0-0-50', 'ปุ๋ยน้ำหยด 0-0-50', 'ปุ๋ยน้ำหยด 0-0-50', 'ปุ๋ยน้ำหยด 0-0-50', 'ปุ๋ยน้ำหยด 0-0-50', 'ปุ๋ยน้ำหยด 0-0-50', 'ปุ๋ยน้ำหยด 0-0-50', 'ปุ๋ยน้ำหยด 0-0-50', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(13, 1, 'FERT-23-10-24', 'ปุ๋ยน้ำหยด 23-10-24', 'ปุ๋ยน้ำหยด 23-10-24', 'ปุ๋ยน้ำหยด 23-10-24', 'ปุ๋ยน้ำหยด 23-10-24', 'ปุ๋ยน้ำหยด 23-10-24', 'ปุ๋ยน้ำหยด 23-10-24', 'ปุ๋ยน้ำหยด 23-10-24', 'ปุ๋ยน้ำหยด 23-10-24', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(14, 1, 'FERT-18-8-0', 'ปุ๋ยสูตร 18-8-0', 'ปุ๋ยสูตร 18-8-0', 'ปุ๋ยสูตร 18-8-0', 'ปุ๋ยสูตร 18-8-0', 'ปุ๋ยสูตร 18-8-0', 'ปุ๋ยสูตร 18-8-0', 'ปุ๋ยสูตร 18-8-0', 'ปุ๋ยสูตร 18-8-0', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(15, 1, 'FERT-21-8-0', 'ปุ๋ยสูตร 21-0-0', 'ปุ๋ยสูตร 21-0-0', 'ปุ๋ยสูตร 21-0-0', 'ปุ๋ยสูตร 21-0-0', 'ปุ๋ยสูตร 21-0-0', 'ปุ๋ยสูตร 21-0-0', 'ปุ๋ยสูตร 21-0-0', 'ปุ๋ยสูตร 21-0-0', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(16, 1, 'FERT-SMS', 'ปุ๋ยอินทรีย์ SMS', 'ปุ๋ยอินทรีย์ SMS', 'ปุ๋ยอินทรีย์ SMS', 'ปุ๋ยอินทรีย์ SMS', 'ปุ๋ยอินทรีย์ SMS', 'ปุ๋ยอินทรีย์ SMS', 'ปุ๋ยอินทรีย์ SMS', 'ปุ๋ยอินทรีย์ SMS', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(17, 1, 'FERT-12-60-0', 'ปุ๋ยน้ำหยด 12-60-0', 'ปุ๋ยน้ำหยด 12-60-0', 'ปุ๋ยน้ำหยด 12-60-0', 'ปุ๋ยน้ำหยด 12-60-0', 'ปุ๋ยน้ำหยด 12-60-0', 'ปุ๋ยน้ำหยด 12-60-0', 'ปุ๋ยน้ำหยด 12-60-0', 'ปุ๋ยน้ำหยด 12-60-0', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(18, 1, 'FERT-16-16-8.2', 'ปุ๋ยรองพื้น 16-16-8 สปป.ลาว', 'ปุ๋ยรองพื้น 16-16-8 สปป.ลาว', 'ปุ๋ยรองพื้น 16-16-8 สปป.ลาว', 'ปุ๋ยรองพื้น 16-16-8 สปป.ลาว', 'ปุ๋ยรองพื้น 16-16-8 สปป.ลาว', 'ปุ๋ยรองพื้น 16-16-8 สปป.ลาว', 'ปุ๋ยรองพื้น 16-16-8 สปป.ลาว', 'ปุ๋ยรองพื้น 16-16-8 สปป.ลาว', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(19, 1, 'FERT-Soilmate', 'ปุ๋ยน้ำ Soilmate  b', 'ปุ๋ยน้ำSoilmate  b', 'ปุ๋ยน้ำ Soilmate  b', 'ปุ๋ยน้ำ Soilmate  b', 'ปุ๋ยน้ำ Soilmate  b', 'ปุ๋ยน้ำ Soilmate  b', 'ปุ๋ยน้ำ Soilmate  b', 'ปุ๋ยน้ำ Soilmate  b', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(20, 1, 'FERT-hyacinthe', 'ไฮแมก-บี', 'ไฮแมก-บี', 'ไฮแมก-บี', 'ไฮแมก-บี', 'ไฮแมก-บี', 'ไฮแมก-บี', 'ไฮแมก-บี', 'ไฮแมก-บี', NULL, NULL, NULL, 50, 1, NULL, '2017-09-23 13:06:07', '2017-09-23 13:06:07'),
(22, 1, 'CHEM-THAI-2', ' บาก้าโซน / paraquot ', ' บาก้าโซน / paraquot ', 'บาก้าโซน / paraquot', 'บาก้าโซน / paraquot', 'บาก้าโซน / paraquot', 'บาก้าโซน / paraquot', 'บาก้าโซน / paraquot', 'บาก้าโซน / paraquot', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(23, 1, 'CHEM-THAI-3', ' ไซแอมซีน / atrazine', ' ไซแอมซีน / atrazine', 'ไซแอมซีน / atrazine', 'ไซแอมซีน / atrazine', 'ไซแอมซีน / atrazine', 'ไซแอมซีน / atrazine', 'ไซแอมซีน / atrazine', 'ไซแอมซีน / atrazine', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(24, 1, 'CHEM-THAI-4', ' ไซแอมทรีน / ametryn', ' ไซแอมทรีน / ametryn', 'ไซแอมทรีน / ametryn', 'ไซแอมทรีน / ametryn', 'ไซแอมทรีน / ametryn', 'ไซแอมทรีน / ametryn', 'ไซแอมทรีน / ametryn', 'ไซแอมทรีน / ametryn', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(25, 1, 'CHEM-THAI-5', ' บีเค แม็กพรี / atrazine ', ' บีเค แม็กพรี / atrazine ', 'บีเค แม็กพรี / atrazine', 'บีเค แม็กพรี / atrazine', 'บีเค แม็กพรี / atrazine', 'บีเค แม็กพรี / atrazine', 'บีเค แม็กพรี / atrazine', 'บีเค แม็กพรี / atrazine', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(26, 1, 'CHEM-THAI-6', ' บีเค แม็กโพส / ametryn', ' บีเค แม็กโพส / ametryn', 'ีเค แม็กโพส / ametryn', 'ีเค แม็กโพส / ametryn', 'ีเค แม็กโพส / ametryn', 'ีเค แม็กโพส / ametryn', 'ีเค แม็กโพส / ametryn', 'ีเค แม็กโพส / ametryn', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(27, 1, 'CHEM-THAI-7', ' บี เค เมทาล / pendimethalin +imazapic', ' บี เค เมทาล / pendimethalin +imazapic', ' บี เค เมทาล / pendimethalin +imazapic', ' บี เค เมทาล / pendimethalin +imazapic', ' บี เค เมทาล / pendimethalin +imazapic', ' บี เค เมทาล / pendimethalin +imazapic', ' บี เค เมทาล / pendimethalin +imazapic', ' บี เค เมทาล / pendimethalin +imazapic', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(28, 1, 'CHEM-THAI-8', ' บีเคเอมีน / 2,4 D dimetyl ammonium', ' บีเคเอมีน / 2,4 D dimetyl ammonium', ' บีเคเอมีน / 2,4 D dimetyl ammonium', ' บีเคเอมีน / 2,4 D dimetyl ammonium', ' บีเคเอมีน / 2,4 D dimetyl ammonium', ' บีเคเอมีน / 2,4 D dimetyl ammonium', ' บีเคเอมีน / 2,4 D dimetyl ammonium', ' บีเคเอมีน / 2,4 D dimetyl ammonium', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(29, 1, 'CHEM-THAI-9', ' อามีทรีน / ametryn', ' อามีทรีน / ametryn', 'อามีทรีน / ametryn', 'อามีทรีน / ametryn', 'อามีทรีน / ametryn', 'อามีทรีน / ametryn', 'อามีทรีน / ametryn', 'อามีทรีน / ametryn', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(30, 1, 'CHEM-THAI-10', ' แรงเจอร์เอ็กซ์ / pendimethalin +imazapic', ' แรงเจอร์เอ็กซ์ / pendimethalin +imazapic', 'แรงเจอร์เอ็กซ์ / pendimethalin +imazapic', 'แรงเจอร์เอ็กซ์ / pendimethalin +imazapic', 'แรงเจอร์เอ็กซ์ / pendimethalin +imazapic', 'แรงเจอร์เอ็กซ์ / pendimethalin +imazapic', 'แรงเจอร์เอ็กซ์ / pendimethalin +imazapic', 'แรงเจอร์เอ็กซ์ / pendimethalin +imazapic', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(31, 1, 'CHEM-THAI-11', ' บาก้าอัพ / glyphosate isopropylammonium', ' บาก้าอัพ / glyphosate isopropylammonium', 'บาก้าอัพ / glyphosate isopropylammonium', 'บาก้าอัพ / glyphosate isopropylammonium', 'บาก้าอัพ / glyphosate isopropylammonium', 'บาก้าอัพ / glyphosate isopropylammonium', 'บาก้าอัพ / glyphosate isopropylammonium', 'บาก้าอัพ / glyphosate isopropylammonium', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(32, 1, 'CHEM-THAI-12', ' ไซทรอน / triclopyr', ' ไซทรอน / triclopyr', 'ไซทรอน / triclopyr', 'ไซทรอน / triclopyr', 'ไซทรอน / triclopyr', 'ไซทรอน / triclopyr', 'ไซทรอน / triclopyr', 'ไซทรอน / triclopyr', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(33, 1, 'CHEM-THAI-13', ' ไซแอมคอมบี / ametryn+atrazine', ' ไซแอมคอมบี / ametryn+atrazine', 'ไซแอมคอมบี / ametryn+atrazine', 'ไซแอมคอมบี / ametryn+atrazine', 'ไซแอมคอมบี / ametryn+atrazine', 'ไซแอมคอมบี / ametryn+atrazine', 'ไซแอมคอมบี / ametryn+atrazine', 'ไซแอมคอมบี / ametryn+atrazine', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(34, 1, 'CHEM-THAI-14', ' Balance / isoxaflutole', ' Balance / isoxaflutole', 'Balance / isoxaflutole', 'Balance / isoxaflutole', 'Balance / isoxaflutole', 'Balance / isoxaflutole', 'Balance / isoxaflutole', 'Balance / isoxaflutole', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(35, 1, 'CHEM-THAI-15', ' บาซาเซ่ / DSMA + diuron + 2,4 D', ' บาซาเซ่ / DSMA + diuron + 2,4 D', ' บาซาเซ่ / DSMA + diuron + 2,4 D', ' บาซาเซ่ / DSMA + diuron + 2,4 D', ' บาซาเซ่ / DSMA + diuron + 2,4 D', ' บาซาเซ่ / DSMA + diuron + 2,4 D', ' บาซาเซ่ / DSMA + diuron + 2,4 D', ' บาซาเซ่ / DSMA + diuron + 2,4 D', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(36, 1, 'CHEM-THAI-16', ' ไซแอมโซน / paraquot ', ' ไซแอมโซน / paraquot ', 'ไซแอมโซน / paraquot', 'ไซแอมโซน / paraquot', 'ไซแอมโซน / paraquot', 'ไซแอมโซน / paraquot', 'ไซแอมโซน / paraquot', 'ไซแอมโซน / paraquot', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(37, 1, 'CHEM-THAI-17', ' โพลิดอล / ', ' โพลิดอล / ', 'โพลิดอล /', 'โพลิดอล /', 'โพลิดอล /', 'โพลิดอล /', 'โพลิดอล /', 'โพลิดอล /', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(38, 1, 'CHEM-THAI-18', ' คลอไฟลีฟอส / chlopyriphos + cypermetrin', ' คลอไฟลีฟอส / chlopyriphos + cypermetrin', 'คลอไฟลีฟอส / chlopyriphos + cypermetrin', 'คลอไฟลีฟอส / chlopyriphos + cypermetrin', 'คลอไฟลีฟอส / chlopyriphos + cypermetrin', 'คลอไฟลีฟอส / chlopyriphos + cypermetrin', 'คลอไฟลีฟอส / chlopyriphos + cypermetrin', 'คลอไฟลีฟอส / chlopyriphos + cypermetrin', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(39, 1, 'CHEM-THAI-19', ' อลาคลอร์ / alachlor', ' อลาคลอร์ / alachlor', 'อลาคลอร์ / alachlor', 'อลาคลอร์ / alachlor', 'อลาคลอร์ / alachlor', 'อลาคลอร์ / alachlor', 'อลาคลอร์ / alachlor', 'อลาคลอร์ / alachlor', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(40, 1, 'CHEM-THAI-20', ' อาเชทโตคลอร์ / alachlor', ' อาเชทโตคลอร์ / alachlor', ' อาเชทโตคลอร์ / alachlor', ' อาเชทโตคลอร์ / alachlor', ' อาเชทโตคลอร์ / alachlor', ' อาเชทโตคลอร์ / alachlor', ' อาเชทโตคลอร์ / alachlor', ' อาเชทโตคลอร์ / alachlor', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(41, 1, 'CHEM-THAI-21', ' ไซแอมควิก / quizalofop- P -ethyl', ' ไซแอมควิก / quizalofop- P -ethyl', ' ไซแอมควิก / quizalofop- P -ethyl', ' ไซแอมควิก / quizalofop- P -ethyl', ' ไซแอมควิก / quizalofop- P -ethyl', ' ไซแอมควิก / quizalofop- P -ethyl', ' ไซแอมควิก / quizalofop- P -ethyl', ' ไซแอมควิก / quizalofop- P -ethyl', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(42, 1, 'CHEM-THAI-22', ' ไซแอมซาแฟน / fumesafen 25% W/V SL', ' ไซแอมซาแฟน / fumesafen 25% W/V SL', 'ไซแอมซาแฟน / fumesafen 25% W/V SL', 'ไซแอมซาแฟน / fumesafen 25% W/V SL', 'ไซแอมซาแฟน / fumesafen 25% W/V SL', 'ไซแอมซาแฟน / fumesafen 25% W/V SL', 'ไซแอมซาแฟน / fumesafen 25% W/V SL', 'ไซแอมซาแฟน / fumesafen 25% W/V SL', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(43, 1, 'CHEM-THAI-23', ' ไซแอมฟอส / chlopyriphos + cypermetrin', ' ไซแอมฟอส / chlopyriphos + cypermetrin', 'ไซแอมฟอส / chlopyriphos + cypermetrin', 'ไซแอมฟอส / chlopyriphos + cypermetrin', 'ไซแอมฟอส / chlopyriphos + cypermetrin', 'ไซแอมฟอส / chlopyriphos + cypermetrin', 'ไซแอมฟอส / chlopyriphos + cypermetrin', 'ไซแอมฟอส / chlopyriphos + cypermetrin', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(44, 1, 'CHEM-THAI-24', ' ไซโครโบวเคล / ', ' ไซโครโบวเคล / ', 'ไซโครโบวเคล / ', 'ไซโครโบวเคล / ', 'ไซโครโบวเคล / ', 'ไซโครโบวเคล / ', 'ไซโครโบวเคล / ', 'ไซโครโบวเคล / ', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(45, 1, 'CHEM-THAI-25', ' ไซแอมเนทโทร / ', ' ไซแอมเนทโทร / ', 'ไซแอมเนทโทร /', 'ไซแอมเนทโทร /', 'ไซแอมเนทโทร /', 'ไซแอมเนทโทร /', 'ไซแอมเนทโทร /', 'ไซแอมเนทโทร /', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(46, 1, 'CHEM-THAI-26', ' คาโบซัลแฟน / carbosulfan', ' คาโบซัลแฟน / carbosulfan', 'คาโบซัลแฟน / carbosulfan', 'คาโบซัลแฟน / carbosulfan', 'คาโบซัลแฟน / carbosulfan', 'คาโบซัลแฟน / carbosulfan', 'คาโบซัลแฟน / carbosulfan', 'คาโบซัลแฟน / carbosulfan', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(47, 1, 'CHEM-THAI-27', ' บาก้าเคน / hexazinone ', ' บาก้าเคน / hexazinone ', 'บาก้าเคน / hexazinone', 'บาก้าเคน / hexazinone', 'บาก้าเคน / hexazinone', 'บาก้าเคน / hexazinone', 'บาก้าเคน / hexazinone', 'บาก้าเคน / hexazinone', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07'),
(48, 1, 'CHEM-THAI-28', ' ไซแอมพรี / ', ' ไซแอมพรี / ', 'ไซแอมพรี / ', 'ไซแอมพรี / ', 'ไซแอมพรี / ', 'ไซแอมพรี / ', 'ไซแอมพรี / ', 'ไซแอมพรี / ', NULL, NULL, NULL, 70, 1, NULL, '2017-09-23 11:06:07', '2017-09-23 11:06:07');

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_product_types`
--

CREATE TABLE `cl_ref_product_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `PARENT_CODE` int(11) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_ref_product_types`
--

INSERT INTO `cl_ref_product_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `PARENT_CODE`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'DRUGCHEM', 'Drugs and Chemicals ', 'Drugs and Chemicals', 'Drugs and Chemicals ', 'Drugs and Chemicals ', 'Drogues et produits chimiques', NULL, 'ยาและสารเคมี', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2016-10-23 09:13:07', '2017-09-12 13:36:24'),
(2, 1, 'DRUGS', 'Drugs for animals ', 'Drugs for animals (execpt antibiotics)', 'Drugs for animals (execpt antibiotics)', 'Drugs for animals ', 'Médicaments pour animaux', 'Drugs for animals ', 'ยาเสพติดสำหรับสัตว์', 'Drugs for animals ', 'Drugs for animals ', 'Drugs for animals ', 'Drugs for animals ', 1, 1, NULL, '2016-10-23 07:13:07', '2017-09-12 11:36:24'),
(3, 1, 'ANTIBIO', 'Antibiotics for animals ', 'Drugs for animals', 'Drugs for animals', 'Antibiotics for animals ', 'Antibiotiques pour animals ', 'Antibiotics for animals ', 'ยาปฏิชีวนะสำหรับสัตว์', 'Antibiotics for animals ', 'Antibiotics for animals ', 'Antibiotics for animals ', 'Antibiotics for animals ', 1, 1, NULL, '2016-10-23 07:13:07', '2017-09-12 11:36:24'),
(4, 1, 'SEEDSHRIMP', 'Shrimp seed', 'Shrimp seed', 'Shrimp seed', 'Shrimp seed', 'Alevins de crevettes', 'Shrimp seed', 'เมล็ดกุ้ง', 'Shrimp seed', 'Shrimp seed', 'Shrimp seed', 'Shrimp seed', 1, 1, NULL, '2016-10-23 07:13:07', '2017-09-12 11:36:24'),
(5, 1, 'PHYTO', 'Phyto Sanitary products', 'Phyto Sanitary products', 'Phyto Sanitary products', 'Phyto Sanitary products', 'Produits phytosanitaires', NULL, 'ผลิตภัณฑ์สุขอนามัยพืช', NULL, NULL, NULL, NULL, 1, 1, NULL, '2017-09-23 13:05:23', '2017-09-23 13:05:23'),
(10, 1, 'PROBIO', 'Probiotics', 'Probiotics', 'Probiotics', 'Probiotics', 'Probiotiques', 'Probiotics', 'โปรไบโอติก', 'Probiotics', 'Probiotics', 'Probiotics', 'Probiotics', NULL, 1, NULL, '2016-10-23 07:13:07', '2017-09-12 11:36:24'),
(20, 1, 'ADDI', 'Additives', 'Additives', 'Additives', 'Additives', 'Additifs', 'Additives', 'สารเติมแต่ง', 'Additives', 'Additives', 'Additives', 'Additives', NULL, 1, NULL, '2016-10-23 07:13:07', '2017-09-12 11:36:24'),
(40, 1, 'FEED', 'Feed for animals ', 'Animal feed', 'Animal feed', 'Animal feed', 'Aliments pour animaux', 'Animal feed', 'อาหารสัตว์', 'Animal feed', 'Animal feed', 'Animal feed', 'Animal feed', NULL, 1, NULL, '2016-10-23 07:13:07', '2017-09-12 11:36:24'),
(41, 1, 'FEEDFISH', 'Fish feed ', 'Fish feed', 'Fish feed', 'Fish feed', 'Aliments pour poissons', 'Fish feed', 'อาหารปลา', 'Fish feed', 'Fish feed', 'Fish feed', 'Fish feed', 40, 1, NULL, '2016-10-23 07:13:07', '2017-09-12 11:36:24'),
(42, 1, 'FEEDSHRIMP', 'Shrimp feed ', 'Shrimp feed', 'Shrimp feed', 'Shrimp feed', 'Aliments pour crevettes', 'Shrimp feed', 'อาหารกุ้ง', 'Shrimp feed', 'Shrimp feed', 'Shrimp feed', NULL, 40, 1, NULL, '2016-10-23 07:13:07', '2017-09-12 11:36:24'),
(50, 1, 'FERT', 'Fertilizers', 'Fertilizers', 'Fertilizers', 'Fertilizers', 'Engrais', NULL, 'ปุ๋ย', NULL, NULL, NULL, NULL, 5, 1, NULL, '2017-09-23 13:05:23', '2017-09-23 13:05:23'),
(60, 1, 'PEST', 'Pesticides', 'Pesticides', 'Pesticides', 'Pesticides', 'Pesticides', NULL, 'สารกำจัดศัตรูพืช', NULL, NULL, NULL, NULL, 5, 1, NULL, '2017-09-23 13:05:23', '2017-09-23 13:05:23'),
(70, 1, 'HERB', 'Herbicides', 'Herbicides', 'Herbicides', 'Herbicides', 'Herbicides', NULL, 'สารเคมีกำจัดวัชพืช', NULL, NULL, NULL, NULL, 5, 1, NULL, '2017-09-23 13:05:23', '2017-09-23 13:05:23'),
(80, 1, 'FONG', 'Fungicides', 'Fungicides', 'Fungicides', 'Fungicides', 'Fongicides', NULL, 'สารฆ่าเชื้อรา', NULL, NULL, NULL, NULL, 5, 1, NULL, '2017-09-23 13:05:23', '2017-09-23 13:05:23');

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_regions`
--

CREATE TABLE `cl_ref_regions` (
  `ID` int(11) NOT NULL COMMENT 'The REGION codelist ID',
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='The REGION codelist';

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_species`
--

CREATE TABLE `cl_ref_species` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `SCIENTIFIC_NAME` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `cl_ref_species`
--

INSERT INTO `cl_ref_species` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `SCIENTIFIC_NAME`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'VAN', 'Vannamei', 'Vannamei species', 'Vannamei species', 'Vannamei species', 'Crevettes Vannamei ', NULL, 'กุ้ง Vannamei', NULL, NULL, NULL, NULL, 'Vannamei', 1, NULL, '2017-01-01 08:02:11', '2017-09-12 13:33:00'),
(2, 1, 'MON', 'Monodon', 'Monodon species', 'Monodon species', 'Monodon species', 'Crevette Monodon', NULL, 'กุ้งกอนโดดอน', NULL, NULL, NULL, NULL, 'Monodon', 1, NULL, '2017-01-01 08:02:11', '2017-09-12 13:33:00'),
(3, 1, 'TIL', 'Tilapia', 'Tilapia species', 'Tilapia', 'Tilapia', 'Tilapia', NULL, 'Plā nil', NULL, NULL, NULL, NULL, 'Tilapia', 1, NULL, '2017-01-01 08:02:11', '2017-09-12 13:33:00'),
(4, 1, 'MIL', 'Milkfish', 'Milkfish species', 'Milkfish', 'Milkfish', 'Chanidés', NULL, 'ปลานวลจันทร์ทะเล', NULL, NULL, NULL, NULL, 'Milkfish', 1, NULL, '2017-01-01 08:02:11', '2017-09-12 13:33:00');

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_vessel_types`
--

CREATE TABLE `cl_ref_vessel_types` (
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
  `I18N_LA` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Lao',
  `I18N_ID` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in indonesian',
  `I18N_KH` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'label in Cambodian',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `dt_audit_bs_farm`
--

CREATE TABLE `dt_audit_bs_farm` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `AUDIT_DATE` date NOT NULL,
  `NB_CHILD_WORKING` int(4) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `dt_farmag_plot_management`
--

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
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `dt_farmag_plot_management`
--

INSERT INTO `dt_farmag_plot_management` (`ID`, `REG_ENTITY_FARM_PLOT_ID`, `ACTIVITY_START_DATE`, `ACTIVITY_END_DATE`, `CL_PLOT_ACTIVITY_TYPE_ID`, `CL_PRODUCT_ID`, `MEASURE_VALUE`, `CL_MEASURE_VALUE_UNIT_ID`, `ADDITIONNAL_MEASURE_VALUE`, `CL_ADDITIONNAL_MEASURE_VALUE_UNIT_ID`, `CL_TILING_ACTIVITY_TYPE_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(18, 19, '2016-06-15 07:17:00', '2016-06-22 07:17:33', 1, NULL, 0, NULL, NULL, NULL, NULL, 4, '', '2017-12-06 02:17:57', '2017-12-06 02:17:57'),
(19, 19, '2016-11-17 09:18:15', '2016-11-16 22:00:00', 6, NULL, 0, NULL, NULL, NULL, NULL, 4, '', '2017-12-06 02:18:51', '2017-12-06 02:18:51'),
(20, 19, '2016-08-10 07:19:05', '2016-08-10 20:00:00', 10, 2, 450, 2, NULL, NULL, NULL, 4, '', '2017-12-06 02:19:47', '2017-12-06 02:19:47'),
(21, 19, '2016-12-23 09:20:18', '2017-03-07 09:20:49', 4, NULL, 0, NULL, NULL, NULL, NULL, 4, '', '2017-12-06 02:21:29', '2017-12-06 02:21:29'),
(22, 19, '2017-12-05 10:41:57', '2017-12-07 10:42:07', 10, 18, 0, NULL, NULL, NULL, NULL, 4, '', '2017-12-06 03:42:27', '2017-12-06 03:42:27'),
(23, 20, '2017-12-19 11:25:33', '2017-12-20 11:25:36', 6, NULL, 0, NULL, NULL, NULL, NULL, 4, '', '2017-12-20 04:25:44', '2017-12-20 04:25:44');

-- --------------------------------------------------------

--
-- Structure de la table `dt_farmag_production`
--

CREATE TABLE `dt_farmag_production` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CL_PROD_DATA_ENTRY_TYPE_ID` int(11) NOT NULL DEFAULT '1' COMMENT 'is either manually entered by the user or computed by the system',
  `DATE_FROM` date NOT NULL,
  `DATE_TO` date NOT NULL,
  `CL_COMMODITIES_ID` int(11) NOT NULL,
  `PRODUCTION_QUANTITY` varchar(11) COLLATE utf8_bin NOT NULL COMMENT 'is a varchar as can be N/A',
  `CL_PRODUCTION_QUANTITY_UNIT_ID` int(11) NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='soil analysis record';

--
-- Contenu de la table `dt_farmag_production`
--

INSERT INTO `dt_farmag_production` (`ID`, `REG_ENTITY_FARM_ID`, `CL_PROD_DATA_ENTRY_TYPE_ID`, `DATE_FROM`, `DATE_TO`, `CL_COMMODITIES_ID`, `PRODUCTION_QUANTITY`, `CL_PRODUCTION_QUANTITY_UNIT_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(11, 135, 1, '2016-12-16', '2017-03-22', 1, '3400.0', 11, 4, '', '2017-12-06 02:14:58', '2017-12-06 02:14:58'),
(12, 135, 1, '2017-12-13', '2017-12-15', 1, '33.0', 29, 4, '', '2017-12-12 06:28:57', '2017-12-12 06:28:57'),
(13, 141, 1, '2018-01-16', '2018-01-17', 1, '450.0', 11, 3, '', '2018-01-16 08:43:45', '2018-01-16 08:43:45'),
(14, 141, 1, '2018-01-09', '2018-01-10', 1, '12.0', 11, 3, '', '2018-01-16 13:30:48', '2018-01-16 13:30:48'),
(15, 141, 1, '2018-01-02', '2018-01-03', 1, '412.0', 11, 3, '', '2018-01-16 16:17:09', '2018-01-16 16:17:09');

-- --------------------------------------------------------

--
-- Structure de la table `dt_farmaq_plot_measurements`
--

CREATE TABLE `dt_farmaq_plot_measurements` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_PLOT_ID` int(11) NOT NULL,
  `MEASURE_DATE` datetime NOT NULL,
  `CL_MEASURE_TYPE_ID` int(11) NOT NULL,
  `MEASURE_VALUE` float NOT NULL,
  `CL_MEASURE_VALUE_UNIT_ID` int(11) NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `dt_farmaq_pond_management`
--

CREATE TABLE `dt_farmaq_pond_management` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_POND_ID` int(11) NOT NULL,
  `ACTIVITY_START_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ACTIVITY_END_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CL_POND_ACTIVITY_TYPE_ID` int(11) NOT NULL,
  `CL_PRODUCT_ID` int(11) DEFAULT NULL,
  `MEASURE_VALUE` float DEFAULT NULL,
  `CL_MEASURE_VALUE_UNIT_ID` int(11) DEFAULT NULL,
  `ADDITIONNAL_MEASURE_VALUE` float DEFAULT NULL,
  `CL_ADDITIONNAL_MEASURE_VALUE_UNIT_ID` int(11) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `dt_farmaq_pond_measurements`
--

CREATE TABLE `dt_farmaq_pond_measurements` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_POND_ID` int(10) NOT NULL,
  `MEASURE_DATE` datetime NOT NULL,
  `CL_MEASURE_TYPE_ID` int(11) NOT NULL,
  `MEASURE_VALUE` float NOT NULL,
  `CL_MEASURE_VALUE_UNIT_ID` int(11) NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `dt_farmaq_production`
--

CREATE TABLE `dt_farmaq_production` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CL_PROD_DATA_ENTRY_TYPE_ID` int(11) NOT NULL DEFAULT '1' COMMENT 'is either manually entered by the user or computed by the system',
  `DATE_FROM` date NOT NULL,
  `DATE_TO` date NOT NULL,
  `CL_SPECIES_ID` int(11) NOT NULL,
  `PRODUCTION_QUANTITY` varchar(11) COLLATE utf8_bin NOT NULL COMMENT 'is a varchar as can be N/A',
  `CL_PRODUCTION_QUANTITY_UNIT_ID` int(11) NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Aquaculture farm total production';

--
-- Contenu de la table `dt_farmaq_production`
--

INSERT INTO `dt_farmaq_production` (`ID`, `REG_ENTITY_FARM_ID`, `CL_PROD_DATA_ENTRY_TYPE_ID`, `DATE_FROM`, `DATE_TO`, `CL_SPECIES_ID`, `PRODUCTION_QUANTITY`, `CL_PRODUCTION_QUANTITY_UNIT_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(13, 141, 1, '2018-01-09', '2018-01-10', 1, '12.0', 11, 3, '', '2018-01-16 16:35:44', '2018-01-16 16:35:44'),
(14, 141, 1, '2018-01-18', '2018-01-19', 2, '456.0', 11, 3, '', '2018-01-16 18:10:53', '2018-01-16 18:10:53');

-- --------------------------------------------------------

--
-- Structure de la table `dt_soil_analysis`
--

CREATE TABLE `dt_soil_analysis` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_PLOT_ID` int(11) NOT NULL,
  `ANALYSIS_DATE` date NOT NULL,
  `CL_SOIL_ANALYSIS_TYPE_ID` int(11) DEFAULT NULL,
  `SOIL_ANALYSIS_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'Uploaded analysis docuent URL',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='soil analysis record';

-- --------------------------------------------------------

--
-- Structure de la table `dt_water_analysis`
--

CREATE TABLE `dt_water_analysis` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_POND_ID` int(11) DEFAULT NULL COMMENT 'Not mandatory as it can be an analysis at the farm level',
  `ANALYSIS_DATE` date NOT NULL,
  `WATER_ANALYSIS_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'uplodaded Analysis document url',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='soil analysis record';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entities`
--

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
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `reg_entities`
--

INSERT INTO `reg_entities` (`ID`, `CL_ENTITY_UID_TYPE_ID`, `IDENTIFIER`, `STANDARD_IDENTIFIER`, `CL_NATIONALITY_COUNTRY_ID`, `NAME`, `SURNAME`, `MIDDLE_NAME`, `SUFFIX_NAME`, `ACRONYM`, `SALUTATION`, `GENDER`, `DATE_OF_BIRTH`, `CL_ADDRESS_COUNTRY_ID`, `ADDRESS_CITY`, `ADDRESS`, `ADDRESS_ZIP_CODE`, `CL_ADML1_ID`, `PHONE_NUMBER`, `MOBILE_NUMBER`, `FAX_NUMBER`, `E_MAIL`, `INSTANT_MESSANGER`, `WEBSITE`, `REGISTRATION_NUMBER`, `IMG_URL`, `LTO_NUMBER`, `LTO_VALIDITY_DATE`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(49, 1, '', NULL, 205, 'Thongdee', 'Phetpradub', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan, Moo 9, Kui Nua Subdistrict, Kui Buri District', '77150', 0, '', '0857026937', '', '', '', '', '', '', 0, NULL, 2, 'test-data', '2017-03-17 09:52:04', '2017-03-20 07:46:08'),
(134, 1, NULL, NULL, 205, 'Somchai', 'Sawaengha', '', NULL, NULL, 'Mr.', 'M', NULL, 205, '', '', '', 0, '', '98639274937', '', '', NULL, NULL, '1', NULL, 0, NULL, 4, '', '2017-12-06 01:58:50', '2017-12-06 01:58:50'),
(135, 2, NULL, NULL, NULL, 'PhuKiew SugarLand ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Chayaphum', '', '', 0, '', '9997546908', '', 'pau__badia@hotmail.com', '', NULL, NULL, NULL, 0, NULL, 4, '', '2017-12-06 02:00:12', '2017-12-06 02:00:12'),
(136, 1, NULL, NULL, 205, 'Suchard', 'Phongeun', '', NULL, NULL, 'Mr.', 'M', NULL, 205, '', '', '', 0, '', '09888777689', '', '', NULL, NULL, '', NULL, 0, NULL, 4, '', '2017-12-06 02:03:21', '2017-12-06 02:03:21'),
(137, 1, NULL, NULL, 205, 'Titiporn', 'Choteekul', '', NULL, NULL, 'Mr.', 'M', NULL, 205, '', '', '', 0, '', '09888777679', '', '', NULL, NULL, '', NULL, 0, NULL, 4, '', '2017-12-06 02:06:05', '2017-12-06 02:06:05'),
(138, 8, NULL, NULL, 205, 'Mitr Phol', NULL, NULL, NULL, 'MP', NULL, NULL, NULL, 205, '', '', '', 0, '', '09887899999', '', '', NULL, NULL, '', NULL, 0, NULL, 4, '', '2017-12-06 02:10:00', '2017-12-06 02:10:00'),
(139, 8, NULL, NULL, 205, 'ChemiAgronos Ltd.', NULL, NULL, NULL, '', NULL, NULL, NULL, 205, '', '', '', 0, '', '099999999', '', '', NULL, NULL, '', NULL, 0, NULL, 4, '', '2017-12-06 02:11:39', '2017-12-06 02:11:39'),
(141, 2, NULL, NULL, NULL, 'Somchai Sawaengha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, '???????', '', '', 0, '', '0955461566', '', '', '', NULL, NULL, NULL, 0, NULL, 13, '', '2017-12-20 02:34:51', '2017-12-20 02:34:51');

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farmag_details`
--

CREATE TABLE `reg_entity_farmag_details` (
  `ID` int(10) UNSIGNED NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `IRRIGATION` tinyint(1) NOT NULL DEFAULT '0',
  `IRRIGATION_AUTHORIZATION` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farmag_plots`
--

CREATE TABLE `reg_entity_farmag_plots` (
  `ID` int(11) UNSIGNED NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL DEFAULT '0',
  `PLOT_NUMBER` varchar(10) COLLATE utf8_bin NOT NULL,
  `PLOT_DESCRIPTION` varchar(256) COLLATE utf8_bin NOT NULL,
  `CL_COMMODITIES_ID` int(11) NOT NULL DEFAULT '0',
  `PLOT_SIZE` double(8,2) NOT NULL DEFAULT '0.00',
  `CL_PLOT_SIZE_UNIT_ID` tinyint(1) NOT NULL DEFAULT '0',
  `IS_IRRIGATED` int(11) NOT NULL DEFAULT '0',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `CREATED_AT` timestamp NULL DEFAULT NULL,
  `UPDATED_AT` timestamp NULL DEFAULT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `reg_entity_farmag_plots`
--

INSERT INTO `reg_entity_farmag_plots` (`ID`, `REG_ENTITY_FARM_ID`, `PLOT_NUMBER`, `PLOT_DESCRIPTION`, `CL_COMMODITIES_ID`, `PLOT_SIZE`, `CL_PLOT_SIZE_UNIT_ID`, `IS_IRRIGATED`, `UPDATER_ID`, `CREATED_AT`, `UPDATED_AT`, `COMMENT`) VALUES
(19, 135, '1', 'Old plot', 1, 30.00, 29, 1, 0, NULL, NULL, NULL),
(20, 135, '2', 'New plot', 1, 50.00, 29, 1, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farmaq_details`
--

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
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farmaq_ponds`
--

CREATE TABLE `reg_entity_farmaq_ponds` (
  `ID` int(10) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL DEFAULT '0',
  `POND_NUMBER` varchar(10) COLLATE utf8_bin NOT NULL,
  `POND_DESCRIPTION` varchar(256) COLLATE utf8_bin NOT NULL,
  `CL_POND_TYPE_ID` int(11) NOT NULL DEFAULT '0',
  `CL_SPECIES_ID` int(11) DEFAULT '0',
  `POND_SIZE` double(8,2) NOT NULL DEFAULT '0.00',
  `CL_POND_SIZE_UNIT_ID` int(11) NOT NULL DEFAULT '0',
  `POND_VOLUME` double(8,2) NOT NULL DEFAULT '0.00',
  `CL_POND_VOLUME_UNIT_ID` int(11) NOT NULL DEFAULT '0',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `reg_entity_farmaq_ponds`
--

INSERT INTO `reg_entity_farmaq_ponds` (`ID`, `REG_ENTITY_FARM_ID`, `POND_NUMBER`, `POND_DESCRIPTION`, `CL_POND_TYPE_ID`, `CL_SPECIES_ID`, `POND_SIZE`, `CL_POND_SIZE_UNIT_ID`, `POND_VOLUME`, `CL_POND_VOLUME_UNIT_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(176, 135, '1', 'Plot1', 2, 1, 45.00, 29, 0.00, 0, 1, NULL, '2018-01-22 18:32:15', '2018-01-22 18:32:15');

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farm_buildings`
--

CREATE TABLE `reg_entity_farm_buildings` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CL_FARM_BUILDING_TYPE_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='description of existing other building than production (plot, barn, etc..)';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farm_details`
--

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
  `ENVIRONMENT_IMPACT_ASSESSMENT` tinyint(1) NOT NULL DEFAULT '0',
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
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `reg_entity_farm_details`
--

INSERT INTO `reg_entity_farm_details` (`ID`, `REG_ENTITY_FARM_ID`, `REG_ENTITY_OWNER_ID`, `SYS_USER_FARMADMIN_ID`, `SIZE`, `CL_SIZE_UNIT_ID`, `LONGITUDE`, `LATITUDE`, `AERIAL_VIEW`, `QUOTA_ID`, `WATER_USE_AUTHORIZATION`, `LAND_USE_AUTHORIZATION`, `ENVIRONMENT_IMPACT_ASSESSMENT`, `ENVIRONMENT_IMPACT_ASSESSMENT_URL`, `HVH_CONSTRUCT_PERMIT`, `HVH_LAND_TITLE`, `SITING_PROTECTED_AREA`, `SITING_PROTECTED_AREA_AUTHORIZATION_URL`, `HVHE_FARM_EXPENSION`, `HVHE_YES_IN_HVH`, `CL_HVHE_EXPENSION_TYPE_ID`, `HVHE_CANAL_RESTAURATION_PLAN`, `CUMUL_IMPACTS`, `MEMBER_COOP_ID`, `HAS_A_LAB`, `HEALTH_MANAGEMENT_TRAINING`, `HEALTH_MANAGEMENT_PLAN`, `ESCAPE_PREVENTION_DEVICE_URL`, `RECORD_INSPECTION`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(56, 135, 134, NULL, 70.00, 29, '102.0315', '15.806817', '0_Sugarcane map.jpg', '13889332', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, '', '2017-12-06 02:00:12', '2017-12-06 02:00:12'),
(58, 141, 134, NULL, 35.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 13, '', '2017-12-20 02:34:51', '2017-12-20 02:34:51');

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farm_details_farm_type`
--

CREATE TABLE `reg_entity_farm_details_farm_type` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CL_FARM_TYPE_ID` int(11) NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farm_facilities`
--

CREATE TABLE `reg_entity_farm_facilities` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `ACCESS_TOILETS` tinyint(1) NOT NULL,
  `ACCESS_TOILETS_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'Pictures of toilets',
  `ACCESS_SHOWER` tinyint(1) NOT NULL,
  `ACCESS_SHOWER_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'Picture of shower',
  `ACCESS_PRIVATE_ROOM` tinyint(1) NOT NULL,
  `ACCESS_PRIVATE_ROOM_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'Pictures of private room',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='descirption of existing facilities';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farm_providers`
--

CREATE TABLE `reg_entity_farm_providers` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `REG_ENTITY_SUPPLIER_ID` int(11) NOT NULL,
  `CL_PRODUCT_TYPES_ID` int(11) DEFAULT '1',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `reg_entity_farm_providers`
--

INSERT INTO `reg_entity_farm_providers` (`ID`, `REG_ENTITY_FARM_ID`, `REG_ENTITY_SUPPLIER_ID`, `CL_PRODUCT_TYPES_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(17, 135, 139, 1, 1, NULL, '2017-12-06 02:13:27', '2017-12-06 02:13:27'),
(18, 135, 138, 50, 1, NULL, '2017-12-06 02:13:49', '2017-12-06 02:13:49'),
(19, 135, 138, 80, 1, NULL, '2017-12-20 02:17:38', '2017-12-20 02:17:38');

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farm_water_supply`
--

CREATE TABLE `reg_entity_farm_water_supply` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CL_WATER_SUPPLY_TYPE_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='description of farm water source';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_product_suppliers`
--

CREATE TABLE `reg_entity_product_suppliers` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ENTITY_ID` int(11) NOT NULL DEFAULT '0',
  `CL_PRODUCT_TYPES_ID` int(11) NOT NULL DEFAULT '0',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff`
--

CREATE TABLE `reg_entity_staff` (
  `REG_ENTITY_ID` int(10) UNSIGNED NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CL_LANGUAGE_ID` int(11) DEFAULT NULL,
  `CL_POSITION_TYPE_ID` int(11) NOT NULL,
  `CL_LEGAL_STATUS_ID` int(11) DEFAULT '1',
  `CHARACTERISTICS_1` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `CHARACTERISTICS_2` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `NOT_EMPLOYED_ANYMORE` tinyint(1) NOT NULL,
  `TELEPHONE_OFFICE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `MOBILE_OFFICE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_OFFICE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `FROM_LOCAL_COMMUNITY` tinyint(1) NOT NULL,
  `COMPANY_FOCAL_POINT` tinyint(1) DEFAULT '0',
  `WORKING_PERMIT_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of individuals and companies';

--
-- Contenu de la table `reg_entity_staff`
--

INSERT INTO `reg_entity_staff` (`REG_ENTITY_ID`, `REG_ENTITY_FARM_ID`, `CL_LANGUAGE_ID`, `CL_POSITION_TYPE_ID`, `CL_LEGAL_STATUS_ID`, `CHARACTERISTICS_1`, `CHARACTERISTICS_2`, `NOT_EMPLOYED_ANYMORE`, `TELEPHONE_OFFICE`, `MOBILE_OFFICE`, `EMAIL_OFFICE`, `FROM_LOCAL_COMMUNITY`, `COMPANY_FOCAL_POINT`, `WORKING_PERMIT_URL`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(49, 135, 159, 5, 4, NULL, NULL, 0, '', '09888777890', '', 1, 0, NULL, 4, '', '2017-12-06 02:08:14', '2017-12-06 02:08:14'),
(136, 135, 159, 5, 1, NULL, NULL, 0, '', '0987578906', '', 1, 0, NULL, 4, '', '2017-12-06 02:04:34', '2017-12-06 02:04:34'),
(137, 135, 159, 5, 4, NULL, NULL, 0, '', '9876545678', '', 1, 0, NULL, 4, '', '2017-12-06 02:06:46', '2017-12-06 02:06:46');

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_contract`
--

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
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_declaration`
--

CREATE TABLE `reg_entity_staff_declaration` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL COMMENT 'THE FARM ID',
  `REG_ENTITY_STAFF_ID` int(11) NOT NULL COMMENT 'THE STAFF ID',
  `CL_STAFF_DECLARATION_TYPE` int(11) NOT NULL,
  `DECLARATION_DATE` date NOT NULL,
  `DECLARATION_DESCRIPTION` varchar(256) CHARACTER SET utf8 NOT NULL,
  `CL_DECLARATION_SOURCE` int(11) NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table to store declaration coming from external sources';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_declaration_child`
--

CREATE TABLE `reg_entity_staff_declaration_child` (
  `REG_ENTITY_STAFF_DECLARATION_ID` int(11) NOT NULL COMMENT 'reference to the declaration',
  `SIGHT_CHILDREN_WORKING_IN_FARM` tinyint(1) DEFAULT NULL,
  `ARE_CHILDREN_GOING_TO_SCHOOL` tinyint(1) DEFAULT NULL,
  `IF_YES_HOW_MANY_HOURS_PER_WEEK` int(2) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table to store child declaration coming from external sources';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_declaration_disrimination`
--

CREATE TABLE `reg_entity_staff_declaration_disrimination` (
  `REG_ENTITY_STAFF_DECLARATION_ID` int(11) NOT NULL COMMENT 'reference to the declaration',
  `DISCRIMINATION_IN_HIRING` tinyint(1) DEFAULT NULL,
  `DISCRIMINATION_IN_HIRING_DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `DISCRIMINATION_IN_COMPENSATION` tinyint(1) DEFAULT NULL,
  `DISCRIMINATION_IN_COMPENSATION_DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `DISCRIMINATION_IN_ACCESS_TO_TRAINING` tinyint(1) DEFAULT NULL,
  `DISCRIMINATION_IN_ACCESS_TO_TRAINING_DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `DISCRIMINATION_IN_PROMOTION` tinyint(1) DEFAULT NULL,
  `DISCRIMINATION_IN_PROMOTION_DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `DISCRIMINATION_IN_CONTRACT_TERMINATION` tinyint(1) DEFAULT NULL,
  `DISCRIMINATION_IN_CONTRACT_TERMINATION_DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `DISCRIMINATION_IN_RETIREMENT` tinyint(1) DEFAULT NULL,
  `DISCRIMINATION_IN_RETIREMENT_DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table to store declaration about discrimination coming from external sources';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_declaration_grievance`
--

CREATE TABLE `reg_entity_staff_declaration_grievance` (
  `REG_ENTITY_STAFF_DECLARATION_ID` int(11) NOT NULL COMMENT 'reference to the declaration',
  `USE_GRIEVANCE_SYSTEM` tinyint(1) DEFAULT NULL,
  `IS_GRIEVANCE_SYSTEM_EASY_TO_USE` tinyint(1) DEFAULT NULL,
  `IS_GRIEVANCE_SYSTEM_EASY_TO_UNDERSTAND` tinyint(1) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table to store grievance declaration coming from external sources';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_declaration_remuneration`
--

CREATE TABLE `reg_entity_staff_declaration_remuneration` (
  `REG_ENTITY_STAFF_DECLARATION_ID` int(11) NOT NULL COMMENT 'reference to the declaration',
  `PAIEMENT_DELAYED` tinyint(1) DEFAULT NULL,
  `OVERTIME_TIME_PAID_AS_EXTRA` tinyint(1) DEFAULT NULL,
  `OVERTIME_TIME_PAID_MORE_THAN_NORMAL_WAGE` tinyint(1) DEFAULT NULL,
  `DEBT_WITH_EMPLOYER` tinyint(1) DEFAULT NULL,
  `CL_DEBT_TYPE_1_ID` int(11) DEFAULT NULL,
  `CL_DEBT_TYPE_2_ID` int(11) DEFAULT NULL,
  `CL_DEBT_TYPE_3_ID` int(11) DEFAULT NULL,
  `THREAT_SALARY_REDUCTION` tinyint(1) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table to store declaration about remuneration coming from external sources';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_declaration_working_hours`
--

CREATE TABLE `reg_entity_staff_declaration_working_hours` (
  `REG_ENTITY_STAFF_DECLARATION_ID` int(11) NOT NULL COMMENT 'reference to the declaration',
  `QUANTITY_REST_PER_DAY` int(2) DEFAULT NULL,
  `CL_QUANTITY_REST_PER_DAY_UNIT_ID` int(11) DEFAULT NULL,
  `QUANTITY_REST_PER_WEEK` int(2) DEFAULT NULL,
  `CL_QUANTITY_REST_PER_WEEK_UNIT_ID` int(11) DEFAULT NULL,
  `QUANTITY_OVERTIME_PER_WEEK` int(2) DEFAULT NULL,
  `CL_QUANTITY_OVERTIME_PER_WEEK_UNIT_ID` int(11) DEFAULT NULL,
  `IS_OVERTIME_VOLUNTARY` tinyint(1) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table to store declaration about remuneration coming from external sources';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_management`
--

CREATE TABLE `reg_entity_staff_management` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `NUMBER_STAFF_FARM_AS_TODAY` int(4) NOT NULL DEFAULT '0',
  `REGULAR_WORK_START_HOUR` time NOT NULL DEFAULT '00:00:00',
  `REGULAR_WORK_END_HOUR` time NOT NULL DEFAULT '00:00:00',
  `NB_WORKERS_LIVING_IN_FARM` int(4) NOT NULL DEFAULT '0',
  `NB_WORKERS_CHILD_LIVING_IN_FARM` int(4) NOT NULL DEFAULT '0',
  `NB_WORKERS_CHILD_HELPING_IN_FARM` int(4) NOT NULL DEFAULT '0',
  `NB_WORKERS_CHILD_ENROLLED_SCHOOL` int(4) NOT NULL DEFAULT '0',
  `NB_SCHOOL_IN_AREA` int(3) DEFAULT NULL,
  `NB_WORKERS_MIGRANTS` int(4) NOT NULL DEFAULT '0',
  `MIMINUM_WAGES_APPLIED_TO_CONTRACT` tinyint(1) DEFAULT NULL,
  `WORKER_OVERTIME` tinyint(1) DEFAULT NULL,
  `IS_OVERTIME_VOLUNTARY` tinyint(1) DEFAULT NULL,
  `NB_REST_DAYS` int(3) DEFAULT '0',
  `EXISTENCE_HAZARDOUS_WORK` tinyint(1) DEFAULT NULL,
  `CL_HARZARDOUS_WORK_TYPE_ID` int(11) DEFAULT '1',
  `EXISTENCE_FARM_POLICIES` tinyint(1) DEFAULT NULL,
  `FARM_POLICIES` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `EXISTENCE_HEALTH_SAFETY_POLICIES` tinyint(1) DEFAULT NULL,
  `HEALTH_SAFETY_POLICIES` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `EXISTENCE_WORK_ACCIDENT_RECORD` tinyint(1) DEFAULT NULL,
  `WORK_ACCIDENT_RECORD` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ACCESS_TO_PROTECTIVE_EQUIPMENT` tinyint(1) DEFAULT NULL,
  `EMPLOYER_ISSUE_RECORD` tinyint(1) DEFAULT NULL,
  `ISSUE_RECORD_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'URL of uploaded issue record - can be a picture',
  `EXISTENCE_EXTRA_WORK_RECORD` tinyint(1) DEFAULT NULL,
  `EXTRA_WORK_RECORD_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'URL of uploaded extra word record',
  `EXISTENCE_FREEDOM_ASSOCIATION_DISCLAIMER` tinyint(1) DEFAULT NULL,
  `FREEDOM_ASSOCIATION_DISCLAIMER_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'URL of uploaded disclaimer - can be a picture',
  `EXISTENCE_DISCRIMINATION_REGULATION` tinyint(1) DEFAULT NULL,
  `DISCRIMINATION_REGULATION_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'URL of uploaded discrimination record - can be a picture',
  `EXISTENCE_DISCIPLINARY_POLICIES` tinyint(1) DEFAULT '0',
  `DISCIPLINARY_POLICIES` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'URL of uploaded Disciplinary policies ',
  `EXISTENCE_GRIEVING_SYSTEM` tinyint(1) DEFAULT NULL,
  `GRIEVING_SYSTEM_URL` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT 'URL of uploaded grieving system description or picture',
  `PROTECTIVE_EQUIPMENT_AVAILABLE` tinyint(1) DEFAULT NULL,
  `PROTECTIVE_EQUIPMENT_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `SAFETY_CONDITION` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'URL of uploaded safety condition - can be a picture',
  `WORKERS_REPRESENTATIVE_GROUP` tinyint(1) DEFAULT '0',
  `NB_REPRESENTATIVE_GROUPS_IN_AREA` int(3) DEFAULT NULL,
  `WORKERS_MAKE_FINANCIAL_DEPOSIT` tinyint(1) DEFAULT NULL,
  `CL_GET_BACK_FINANCIAL_DEPOSIT_REASON_ID` int(11) DEFAULT NULL,
  `CL_NO_EARLY_CONTRACT_TERMINATION_REASON_ID` int(11) DEFAULT NULL,
  `CL_CONTRACT_TERMINATION_REASON_ID` int(11) DEFAULT NULL,
  `CONTRACT_TERMINATION_OTHER_REASON` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `CL_DEDUCTION_SALARY_ID_1` int(11) DEFAULT NULL,
  `CL_DEDUCTION_SALARY_ID_2` int(11) DEFAULT NULL,
  `CL_DEDUCTION_SALARY_ID_3` int(11) DEFAULT NULL,
  `CL_DEDUCTION_SALARY_ID_4` int(11) DEFAULT NULL,
  `DEDUCTION_SALARY_OTHER` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `AMOUNT_SALARY_DEDUCED_MONTH` float DEFAULT NULL,
  `PAYMENT_SLIP_PROVIDED_TO_WORKER` tinyint(1) DEFAULT NULL,
  `WORKERS_IN_DEBT` tinyint(1) DEFAULT NULL,
  `CL_PAYMENT_DEBT_TYPE_ID_1` int(11) DEFAULT NULL,
  `CL_PAYMENT_DEBT_TYPE_ID_2` int(11) DEFAULT NULL,
  `CL_PAYMENT_DEBT_TYPE_ID_3` int(11) DEFAULT NULL,
  `CL_PAYMENT_DEBT_TYPE_ID_4` int(11) DEFAULT NULL,
  `WORKERS_IN_DEBT_OTHER_STAKEHOLDER` tinyint(1) DEFAULT NULL,
  `IN_KIND_PAYMENT` tinyint(11) DEFAULT NULL,
  `IN_KIND_PAYMENT_TYPE` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `CL_HIRING_RESTRICTION_ID` int(11) DEFAULT NULL,
  `NB_MIGRANT_WORKERS` int(4) DEFAULT NULL,
  `UPDATER_ID` int(11) DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Additional information regarding staff at the farm level';

--
-- Contenu de la table `reg_entity_staff_management`
--

INSERT INTO `reg_entity_staff_management` (`REG_ENTITY_FARM_ID`, `NUMBER_STAFF_FARM_AS_TODAY`, `REGULAR_WORK_START_HOUR`, `REGULAR_WORK_END_HOUR`, `NB_WORKERS_LIVING_IN_FARM`, `NB_WORKERS_CHILD_LIVING_IN_FARM`, `NB_WORKERS_CHILD_HELPING_IN_FARM`, `NB_WORKERS_CHILD_ENROLLED_SCHOOL`, `NB_SCHOOL_IN_AREA`, `NB_WORKERS_MIGRANTS`, `MIMINUM_WAGES_APPLIED_TO_CONTRACT`, `WORKER_OVERTIME`, `IS_OVERTIME_VOLUNTARY`, `NB_REST_DAYS`, `EXISTENCE_HAZARDOUS_WORK`, `CL_HARZARDOUS_WORK_TYPE_ID`, `EXISTENCE_FARM_POLICIES`, `FARM_POLICIES`, `EXISTENCE_HEALTH_SAFETY_POLICIES`, `HEALTH_SAFETY_POLICIES`, `EXISTENCE_WORK_ACCIDENT_RECORD`, `WORK_ACCIDENT_RECORD`, `ACCESS_TO_PROTECTIVE_EQUIPMENT`, `EMPLOYER_ISSUE_RECORD`, `ISSUE_RECORD_URL`, `EXISTENCE_EXTRA_WORK_RECORD`, `EXTRA_WORK_RECORD_URL`, `EXISTENCE_FREEDOM_ASSOCIATION_DISCLAIMER`, `FREEDOM_ASSOCIATION_DISCLAIMER_URL`, `EXISTENCE_DISCRIMINATION_REGULATION`, `DISCRIMINATION_REGULATION_URL`, `EXISTENCE_DISCIPLINARY_POLICIES`, `DISCIPLINARY_POLICIES`, `EXISTENCE_GRIEVING_SYSTEM`, `GRIEVING_SYSTEM_URL`, `PROTECTIVE_EQUIPMENT_AVAILABLE`, `PROTECTIVE_EQUIPMENT_URL`, `SAFETY_CONDITION`, `WORKERS_REPRESENTATIVE_GROUP`, `NB_REPRESENTATIVE_GROUPS_IN_AREA`, `WORKERS_MAKE_FINANCIAL_DEPOSIT`, `CL_GET_BACK_FINANCIAL_DEPOSIT_REASON_ID`, `CL_NO_EARLY_CONTRACT_TERMINATION_REASON_ID`, `CL_CONTRACT_TERMINATION_REASON_ID`, `CONTRACT_TERMINATION_OTHER_REASON`, `CL_DEDUCTION_SALARY_ID_1`, `CL_DEDUCTION_SALARY_ID_2`, `CL_DEDUCTION_SALARY_ID_3`, `CL_DEDUCTION_SALARY_ID_4`, `DEDUCTION_SALARY_OTHER`, `AMOUNT_SALARY_DEDUCED_MONTH`, `PAYMENT_SLIP_PROVIDED_TO_WORKER`, `WORKERS_IN_DEBT`, `CL_PAYMENT_DEBT_TYPE_ID_1`, `CL_PAYMENT_DEBT_TYPE_ID_2`, `CL_PAYMENT_DEBT_TYPE_ID_3`, `CL_PAYMENT_DEBT_TYPE_ID_4`, `WORKERS_IN_DEBT_OTHER_STAKEHOLDER`, `IN_KIND_PAYMENT`, `IN_KIND_PAYMENT_TYPE`, `CL_HIRING_RESTRICTION_ID`, `NB_MIGRANT_WORKERS`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(135, 3, '08:00:00', '18:00:00', 0, 0, 0, 0, NULL, 0, 0, 0, 0, 4, 1, 1, 0, NULL, 0, NULL, 0, NULL, 1, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, '0_Protective equipment.jpg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-06 02:01:10', '2017-12-06 02:01:10'),
(141, 0, '08:00:00', '18:00:00', 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 02:34:54', '2017-12-20 02:34:54');

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_other_attribute`
--

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
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='additional attribues for staff';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_other_attribute_definition`
--

CREATE TABLE `reg_entity_staff_other_attribute_definition` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ATTRIBUTE_1_TYPE` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ATTRIBUTE_1_DESCRIPTION` tinyint(1) DEFAULT NULL,
  `ATTRIBUTE_2_TYPE` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ATTRIBUTE_2_DESCRIPTION` tinyint(1) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Store definition of additional attributes';

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_training`
--

CREATE TABLE `reg_entity_staff_training` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `FIRST_AID_TRAINING` tinyint(1) DEFAULT NULL,
  `HAZARDOUS_ACTIVITIES_TRAINING` tinyint(1) DEFAULT NULL,
  `CL_HAZARDOUS_ACTIVITIES_TRAINING_TYPE_ID` tinyint(1) DEFAULT NULL,
  `HAZARDOUS_ACTIVITIES_TRAINING_DATE` time DEFAULT '00:00:00',
  `NUMBER_TRAINED_STAFF` int(4) DEFAULT '0',
  `UPDATER_ID` int(11) DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='General information on staff training at the farm level';

-- --------------------------------------------------------

--
-- Structure de la table `reg_pictures`
--

CREATE TABLE `reg_pictures` (
  `ID` int(11) NOT NULL COMMENT 'The identifier of this FLUX picture.',
  `CL_PICTURE_TYPE_ID` int(11) NOT NULL DEFAULT '1' COMMENT 'The code specifying a type of FLUX picture.',
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'The textual description of this FLUX picture.',
  `TAKEN` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date, time, date time, or other date value of when this FLUX picture was created.',
  `AREA_INCLUDED` int(11) DEFAULT NULL COMMENT 'The area or location, expressed as an identifier, that is included in this FLUX picture.',
  `CL_FOR_AREA_INCLUDED` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'Name of the table used as reference for the area (country, island, etc..)',
  `IMAGE_URL` varchar(512) COLLATE utf8_bin NOT NULL COMMENT 'The link to the image (UN/CEFACT stores it as a blob)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='UN/CEFACT FLUX Vessel Domain: Entity used to provide information about a picture, such as a digital photograph, used in the context of Fisheries Languages for Universal eXchange (FLUX).';

-- --------------------------------------------------------

--
-- Structure de la table `reg_vessels`
--

CREATE TABLE `reg_vessels` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `REGISTRATION_NUMBER` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `CL_VESSEL_TYPE_ID` int(11) DEFAULT NULL,
  `COMMISSIONING` timestamp NULL DEFAULT NULL,
  `CL_APP_VESSEL_OPERATIONAL_STATUS_ID` int(11) NOT NULL COMMENT 'The code indicating the operational status for this vessel transport means, such as in service/commission, broken up, total loss, continued existence in doubt, laid-up.',
  `CL_HULL_TYPE_ID` int(11) DEFAULT NULL,
  `LOA` float UNSIGNED DEFAULT NULL,
  `CL_QUANTITY_UNIT_ID_LOA` int(11) DEFAULT NULL,
  `DRA` float UNSIGNED DEFAULT NULL,
  `CL_QUANTITY_UNIT_ID_DRA` int(11) DEFAULT NULL,
  `GT` float UNSIGNED DEFAULT NULL,
  `CL_QUANTITY_UNIT_ID_GT` int(11) DEFAULT NULL,
  `REG_VESSEL_ENGINE_ID` int(11) DEFAULT NULL,
  `REG_ENTITY_ID_OWNER` int(11) DEFAULT NULL,
  `REG_ENTITY_ID_CAPTAIN` int(11) DEFAULT NULL,
  `CL_VESSEL_ROLE_ID` int(11) DEFAULT NULL COMMENT 'The code specifying the role of this vessel transport means.',
  `SPEED` float DEFAULT NULL COMMENT 'The speed measured for this transport means vessel.',
  `CL_SPEED_UNIT_ID` int(11) DEFAULT NULL COMMENT 'Unit for the speed measured for this transport means vessel.',
  `TRAWLING_SPEED` float DEFAULT NULL COMMENT 'The trawling speed measured for this transport means vessel.',
  `CL_TRAWLING_SPEED_UNIT_ID` int(11) DEFAULT NULL COMMENT 'Unit for the trawling speed measured for this transport means vessel.',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='UN/CEFACT FLUX Vessel Domain: Entity containing the identification and characteristic information of a ship or boat.';

-- --------------------------------------------------------

--
-- Structure de la table `reg_vessel_administrative_characteristics`
--

CREATE TABLE `reg_vessel_administrative_characteristics` (
  `REG_VESSEL_ID` int(11) NOT NULL,
  `CL_ADMINISTRATIVE_CHARACTERISTIC_TYPE_ID` int(11) DEFAULT NULL COMMENT 'The code specifying a type of administrative characteristic of a vessel, such as mainland fleet, aquaculture, public aid code, administrative decision code.',
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'A textual description of this vessel administrative characteristic.',
  `VALUE_MEASURE` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'The value, expressed as value, for this vessel administrative characteristic.',
  `CL_VALUE_MEASURE_UNIT_ID` int(11) DEFAULT NULL COMMENT 'The unit for the measure',
  `VALUE_TEXT` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'A value, expressed as text, of this vessel administrative characteristic.',
  `VALUE_CODE` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'A code specifying a value of this vessel administrative characteristic.',
  `VALUE_DATE` date DEFAULT NULL COMMENT 'The value, expressed as a date, time, date time, or other date time value, of this vessel administrative characteristic.',
  `VALUE_INDICATOR` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'The value, expressed as an indicator, for this vessel administrative characteristic.',
  `VALUE_QUANTITY` float DEFAULT NULL COMMENT 'The value, expressed as a quantity, for this vessel administrative characteristic.',
  `CL_VALUE_QUANTITY_UNIT_ID` int(11) DEFAULT NULL,
  `VALUE_FLUX_BINARY_FILE` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'The value for this vessel administrative characteristic, such as radio certificate, expressed in a FLUX binary file.',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='UN/CEFACT FLUX Vessel Domain: vessel administrative characteristics';

-- --------------------------------------------------------

--
-- Structure de la table `reg_vessel_construction_event`
--

CREATE TABLE `reg_vessel_construction_event` (
  `REG_VESSEL_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CONSTRUCTION_DATE` timestamp NULL DEFAULT NULL,
  `CL_APP_LOCATION_ID` int(11) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='UN/CEFACT FLUX Vessel Domain: Entity used to provide information on a significant occurrence related to a construction of an object.';

-- --------------------------------------------------------

--
-- Structure de la table `reg_vessel_dimensions`
--

CREATE TABLE `reg_vessel_dimensions` (
  `REG_VESSEL_ID` int(11) NOT NULL,
  `CL_DIMENSION_TYPE_ID` int(11) DEFAULT NULL COMMENT 'The code specifying a type of dimension of this vessel.',
  `VALUE_MEASURE` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'The value, expressed as value, for this vessel equipment characteristic.',
  `CL_VALUE_MEASURE_UNIT_ID` int(11) DEFAULT NULL COMMENT 'The unit for the measure',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='UN/CEFACT FLUX Vessel Domain: A measure of length, tonnage, depth or breadth, expressed as type and value, for this vessel.';

-- --------------------------------------------------------

--
-- Structure de la table `reg_vessel_engines`
--

CREATE TABLE `reg_vessel_engines` (
  `REG_VESSEL_ID` int(11) NOT NULL,
  `SERIAL_NUMBER` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'The serial number identifier of this vessel engine.',
  `CL_ENGINE_TYPE_ID` int(11) NOT NULL COMMENT 'The code specifying the type of vessel engine.',
  `CL_ENGINE_ROLE_ID` int(11) NOT NULL DEFAULT '1' COMMENT 'The code specifying the role of this vessel engine, such as main or secondary.',
  `CL_PROPULSION_TYPE_ID` int(11) NOT NULL DEFAULT '1' COMMENT 'The code specifying the type of propulsion for this vessel engine.',
  `POWER` float DEFAULT NULL COMMENT 'A measure of the power produced by this vessel engine, expressed in a unit such as horsepower.',
  `CL_POWER_UNIT_ID` int(11) DEFAULT NULL COMMENT 'The code specifying the measurement method used for measuring the power of this vessel engine.',
  `CL_REG_ENTITY_MANUFACTURER_ID` int(11) DEFAULT NULL COMMENT 'The code specifying the manufacturer of this vessel engine.',
  `MANUFACTURER` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'The manufacturer, expressed as a text, of this vessel engine.',
  `MODEL` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'The model, expressed as a text, of this vessel engine.',
  `CL_REG_PICTURE_ID` int(11) DEFAULT NULL COMMENT 'A FLUX picture illustrating this vessel engine.',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='UN/CEFACT FLUX Vessel Domain: Entity used to provide information of an engine which is used to move a ship or boat.';

-- --------------------------------------------------------

--
-- Structure de la table `reg_vessel_equipments_characteristics`
--

CREATE TABLE `reg_vessel_equipments_characteristics` (
  `REG_VESSEL_ID` int(11) NOT NULL,
  `CL_EQUIPMENT_TYPE_ID` int(11) DEFAULT NULL COMMENT 'The code specifying a type of vessel equipment characteristic, such as Vessel Monitoring System (VMS), Automatic Identification System (AIS)',
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'A textual description of this vessel equipment characteristic.',
  `VALUE_MEASURE` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'The value, expressed as value, for this vessel equipment characteristic.',
  `CL_VALUE_MEASURE_UNIT_ID` int(11) DEFAULT NULL COMMENT 'The unit for the measure',
  `VALUE_TEXT` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'A value, expressed as text, of this vessel equipment characteristic.',
  `VALUE_CODE` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'A code specifying a value of this vessel equipment characteristic.',
  `VALUE_DATE` date DEFAULT NULL COMMENT 'The value, expressed as a date, time, date time, or other date time value, of this vessel equipment characteristic.',
  `VALUE_INDICATOR` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'The value, expressed as an indicator, for this vessel equipment characteristic.',
  `VALUE_QUANTITY` float DEFAULT NULL COMMENT 'The value, expressed as a quantity, for this vessel equipment characteristic.',
  `CL_VALUE_QUANTITY_UNIT_ID` int(11) DEFAULT NULL,
  `VALUE_FLUX_BINARY_FILE` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'The value for this vessel equipment characteristic, such as radio certificate, expressed in a FLUX binary file.',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='UN/CEFACT FLUX Vessel Domain: vessel equipment characteristics';

-- --------------------------------------------------------

--
-- Structure de la table `reg_vessel_event`
--

CREATE TABLE `reg_vessel_event` (
  `REG_VESSEL_ID` int(11) NOT NULL,
  `CL_EVENT_TYPE_ID` int(11) DEFAULT NULL COMMENT 'The code specifying the type for this vessel event',
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `OCCURENCE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='UN/CEFACT FLUX Vessel Domain: Entity containing information of a significant occurrence or happening related to a vessel';

-- --------------------------------------------------------

--
-- Structure de la table `reg_vessel_gears`
--

CREATE TABLE `reg_vessel_gears` (
  `REG_VESSEL_ID` int(11) NOT NULL,
  `CL_REF_GEAR_ID` int(11) NOT NULL COMMENT 'The code specifying the type of fishing gear.',
  `CL_APP_GEAR_ROLE_ID` int(11) NOT NULL DEFAULT '1' COMMENT 'The code specifying the type of fishing gear. Default is primary',
  `CL_REG_PICTURE_ID` int(11) DEFAULT NULL COMMENT 'A FLUX picture illustrating this vessel engine.',
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'A characteristic applicable to this fishing gear.',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='UN/CEFACT FLUX Vessel Domain: Entity used to provide information on the apparatus which is used for fishing.';

-- --------------------------------------------------------

--
-- Structure de la table `reg_vessel_historical_characteristics`
--

CREATE TABLE `reg_vessel_historical_characteristics` (
  `REG_VESSEL_ID` int(11) NOT NULL,
  `CL_APP_VESSEL_HISTORICAL_CHARACTERISTIC_ID` int(11) NOT NULL COMMENT 'The code specifying a type of historical characteristic of a vessel.',
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'A textual description of this vessel historical characteristic.',
  `VALUE_MEASURE` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'The value, expressed as value, for this vessel historical characteristic.',
  `CL_VALUE_MEASURE_UNIT_ID` int(11) DEFAULT NULL COMMENT 'The unit for the measure',
  `VALUE_TEXT` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'A value, expressed as text, of this vessel historical characteristic.',
  `VALUE_CODE` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'A code specifying a value of this vessel historical characteristic.',
  `VALUE_DATE` date DEFAULT NULL COMMENT 'The value, expressed as a date, time, date time, or other date time value, of this vessel historical characteristic.',
  `VALUE_INDICATOR` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'The value, expressed as an indicator, for this vessel historical characteristic.',
  `VALUE_QUANTITY` float DEFAULT NULL COMMENT 'The value, expressed as a quantity, for this vessel historical characteristic.',
  `CL_VALUE_QUANTITY_UNIT_ID` int(11) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='UN/CEFACT FLUX Vessel Domain: A prominent attribute or aspect of the history related to a particular vessel.';

-- --------------------------------------------------------

--
-- Structure de la table `reg_vessel_registration_event`
--

CREATE TABLE `reg_vessel_registration_event` (
  `REG_VESSEL_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `REGISTRATION_DATE` timestamp NULL DEFAULT NULL,
  `CL_APP_LOCATION_ID` int(11) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='UN/CEFACT FLUX Vessel Domain: Entity used to provide information on a significant occurrence related to a registration of person, animal, object or process.';

-- --------------------------------------------------------

--
-- Structure de la table `reg_vessel_technical_characteristics`
--

CREATE TABLE `reg_vessel_technical_characteristics` (
  `REG_VESSEL_ID` int(11) NOT NULL,
  `CL_APP_VESSEL_CHARACTERISTIC_ID` int(11) NOT NULL COMMENT 'The code specifying a type of vessel technical characteristic, such as maximum speed, trawling speed or hull material.',
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'A textual description of this vessel technical characteristic.',
  `VALUE_MEASURE` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'The value, expressed as value, for this vessel technical characteristic.',
  `CL_VALUE_MEASURE_UNIT_ID` int(11) DEFAULT NULL COMMENT 'The unit for the measure',
  `VALUE_TEXT` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'A value, expressed as text, of this vessel technical characteristic.',
  `VALUE_CODE` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'A code specifying a value of this vessel technical characteristic.',
  `VALUE_DATE` date DEFAULT NULL COMMENT 'The value, expressed as a date, time, date time, or other date time value, of this vessel technical characteristic.',
  `VALUE_INDICATOR` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'The value, expressed as an indicator, for this vessel technical characteristic.',
  `VALUE_QUANTITY` float DEFAULT NULL COMMENT 'The value, expressed as a quantity, for this vessel technical characteristic.',
  `CL_VALUE_QUANTITY_UNIT_ID` int(11) DEFAULT NULL,
  `VALUE_FLUX_BINARY_FILE` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'The value for this vessel technical characteristic, such as or tonnage certificate, expressed in a FLUX binary file.',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='UN/CEFACT FLUX Vessel Domain: vessel technical characteristics';

-- --------------------------------------------------------

--
-- Structure de la table `sys_roles`
--

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

CREATE TABLE `sys_users` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `SYS_ROLE_ID` int(11) NOT NULL DEFAULT '0',
  `CL_COUNTRY_ID` int(11) DEFAULT NULL,
  `REG_ENTITY_FARM_ID` int(11) DEFAULT NULL,
  `REG_ENTITY_COOP_ID` int(11) DEFAULT NULL,
  `access` int(11) NOT NULL DEFAULT '0',
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `sys_users`
--

INSERT INTO `sys_users` (`ID`, `name`, `email`, `password`, `remember_token`, `SYS_ROLE_ID`, `CL_COUNTRY_ID`, `REG_ENTITY_FARM_ID`, `REG_ENTITY_COOP_ID`, `access`, `CREATED_AT`, `UPDATED_AT`, `active`) VALUES
(0, 'MACHINE USER', 'gregoire@mac.comX', 'a', NULL, 2, 3, NULL, NULL, 0, '2017-10-12 21:15:38', '2017-10-12 21:15:38', 1),
(1, 'Sylvain', 'smathieu@sy2media.com', 'a', 'wn6u8ekuSSGVEkNU7iB4Ny7MoUTrg4Wr02WMX7KmhycjCQ11WAKOTEZFqahm', 1, NULL, NULL, NULL, 0, '2016-12-13 12:15:10', '2017-01-19 15:26:10', 1),
(2, 'Emmanuelle', 'emabourgois@fairagora.com', 'a', 'fEgzdBjgx4NyG88Z2nOfcSgjk0gOQy8AC7qQDHCQ9bj9p0bxEvTtOyhrEBxy', 1, NULL, NULL, NULL, 0, '2016-12-31 13:19:35', '2017-04-10 21:40:14', 1),
(3, 'Yann', 'yann.laurent@pagre-it.com', 'a', 'bYKYqJbPQyaBXur7vBYDe4Fca0U4yP0BTgK9N0BT4iGpN0lYyWkKeIIV8ZLw', 1, NULL, NULL, NULL, 0, '2016-12-31 13:20:49', '2017-09-12 06:47:48', 1),
(4, 'Pau Badia', 'contact@fairagora.com', 'a', 'CU2fh81hE2CZUUDWCqirG6m8FBhSLh6iANYqxADTafKFrMBiqzbOiUroHsgo', 1, NULL, NULL, NULL, 0, '2017-04-03 21:04:33', '2017-07-26 18:25:05', 1),
(5, 'pitch', 'ema@gmail.com', 'a', 'GFfwcVbQ31BU7mLbMwU65DiLLb9zjM7aIZ8WaDpXA62iLNDqm66ZAsPljbRY', 3, NULL, NULL, NULL, 12, '2017-04-26 21:58:09', '2017-04-26 22:01:31', 1),
(7, 'Decha Farm', 'paubadiagrimalt@gmail.com', 'a', 'Y6FRqc11PMunhPEoT9w6oTrkezUucCzkscbPZZiQdFsrcseMr4QpS5MHFqA0', 4, NULL, NULL, NULL, 3, '2017-05-01 17:52:49', '2017-05-04 18:27:55', 1),
(8, 'Tongpoon Thorasap', 'nudeerdk@gmail.com', 'a', NULL, 4, NULL, NULL, NULL, 21, '2017-05-04 18:08:30', '2017-05-04 18:12:53', 1),
(9, 'Sam Roi Yod Shrimp Farm Cooperative', 'samroiyod_coop@hotmail.com', 'a', NULL, 3, NULL, NULL, NULL, 12, '2017-05-04 18:31:08', '2017-05-04 18:31:08', 1),
(10, 'Flavie Denelle', 'flavie.denelle@gmail.com', 'a', NULL, 1, NULL, NULL, NULL, 0, '2017-07-20 20:44:30', '2017-07-20 20:44:30', 1),
(11, 'pu', 'amornratn@mitrphol.com', 'pu', NULL, 1, NULL, NULL, NULL, 0, '2017-11-24 21:40:24', '2017-11-24 21:40:24', 1),
(12, 'Jamnan', 'jamnank@mitrphol.com', 'jamnan', NULL, 1, NULL, NULL, NULL, 0, '2017-11-24 21:41:13', '2017-11-24 21:41:13', 1),
(13, 'Somchai Sawaengha', 'pau__badia@hotmail.com', 'a', NULL, 4, NULL, NULL, NULL, 0, '2017-12-11 03:25:01', '2017-12-11 03:25:01', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cl_app_administrative_characteristic_types`
--
ALTER TABLE `cl_app_administrative_characteristic_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UNIQUE_CL_ADMINISTRATIVE_CHARACTERISTIC_TYPE` (`CODE`),
  ADD KEY `cl_app_administrative_characteristic_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_company_position_types`
--
ALTER TABLE `cl_app_company_position_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `POSITION_TYPES_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_company_position_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_contract_types`
--
ALTER TABLE `cl_app_contract_types`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_CONTRACT_TYPE_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_deduction_salary_types`
--
ALTER TABLE `cl_app_deduction_salary_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `DEDUCTION_SALARY_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_app_deduction_salary_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_energy_types`
--
ALTER TABLE `cl_app_energy_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ENERGY_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_energy_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_engine_roles`
--
ALTER TABLE `cl_app_engine_roles`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ENGINE_ROLE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_app_engine_roles_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_engine_types`
--
ALTER TABLE `cl_app_engine_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ENGINE_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_app_engine_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_entity_document_types`
--
ALTER TABLE `cl_app_entity_document_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ENTITY_DOCUMENT_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_app_entity_document_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_entity_types`
--
ALTER TABLE `cl_app_entity_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ENTITY_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_entity_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_get_back_financial_deposit_reasons`
--
ALTER TABLE `cl_app_get_back_financial_deposit_reasons`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `FINAN_DEPOSIT_BACK_REASON_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_app_get_back_financial_deposit_reasons_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_hazardous_training_types`
--
ALTER TABLE `cl_app_hazardous_training_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `HAZARD_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_app_hazardous_training_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_hazardous_work_type`
--
ALTER TABLE `cl_app_hazardous_work_type`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_HAZ_WORK_TYPE_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_hiring_restriction_types`
--
ALTER TABLE `cl_app_hiring_restriction_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `HIRING_RESTRICTION_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_app_hiring_restriction_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_hull_types`
--
ALTER TABLE `cl_app_hull_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ITEM_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_hull_types_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_hvhe_expension_types`
--
ALTER TABLE `cl_app_hvhe_expension_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `HVHE_EXPENSION_TYPES_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_hvhe_expension_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_legal_status`
--
ALTER TABLE `cl_app_legal_status`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_LEGAL_STATUS_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_license_types`
--
ALTER TABLE `cl_app_license_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `LICENSE_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_license_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_locations`
--
ALTER TABLE `cl_app_locations`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CONSTRUCTION_LOCATION_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_app_construction_location_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_location_types`
--
ALTER TABLE `cl_app_location_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CONSTRUCTION_LOCATION_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_app_construction_location_type_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_measure_types`
--
ALTER TABLE `cl_app_measure_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `MEASURE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_measure_type_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_no_early_termination_contract_reasons`
--
ALTER TABLE `cl_app_no_early_termination_contract_reasons`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `NO_EARLY_TERMINATION_REASON_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_app_no_early_termination_contract_reasons_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_payment_debt_types`
--
ALTER TABLE `cl_app_payment_debt_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `PAYMENT_DEBT_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_app_payment_debt_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_payment_frequencies`
--
ALTER TABLE `cl_app_payment_frequencies`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_PAIEMENT_FREQ_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_power_units`
--
ALTER TABLE `cl_app_power_units`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `POWER_UNIT_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_power_units_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_prod_data_entry_types`
--
ALTER TABLE `cl_app_prod_data_entry_types`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_PROD_DATA_ENTRY_TYPE_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_propulsion_types`
--
ALTER TABLE `cl_app_propulsion_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `PROPULSION_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_app_propulsion_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_quantity_units`
--
ALTER TABLE `cl_app_quantity_units`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `QUANTITY_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_quantity_units_updater_id_idx` (`UPDATER_ID`),
  ADD KEY `cl_quantity_units_quantity_unit_types_idx` (`CL_QUANTITY_UNIT_TYPE_ID`);

--
-- Index pour la table `cl_app_quantity_unit_types`
--
ALTER TABLE `cl_app_quantity_unit_types`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_QUANTITY_UNIT_TYPE_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_soil_analysis_types`
--
ALTER TABLE `cl_app_soil_analysis_types`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_SOIL_ANALYSIS_TYPE_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_staff_declaration_types`
--
ALTER TABLE `cl_app_staff_declaration_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UNIQUE_CL_APP_STAFF_DECLARATION_TYPES` (`CODE`),
  ADD KEY `cl_app_staff_declaration_types_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_termination_contract_reasons`
--
ALTER TABLE `cl_app_termination_contract_reasons`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `TERMINATION_REASON_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_app_no_early_termination_contract_reasons_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_tiling_activity_types`
--
ALTER TABLE `cl_app_tiling_activity_types`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_TILING_ACTVITY_TYPE_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_vessel_characteristics`
--
ALTER TABLE `cl_app_vessel_characteristics`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_VESSEL_CHAR_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_vessel_equipment_types`
--
ALTER TABLE `cl_app_vessel_equipment_types`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_VESSEL_EQUIPMENT_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_vessel_historical_characteristic_types`
--
ALTER TABLE `cl_app_vessel_historical_characteristic_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UNIQUE_CL_ADMINISTRATIVE_CHARACTERISTIC_TYPE` (`CODE`),
  ADD KEY `cl_app_administrative_characteristic_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_vessel_operational_status`
--
ALTER TABLE `cl_app_vessel_operational_status`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UNIQUE_CL_VESSEL_OP_STATUS` (`CODE`),
  ADD KEY `cl_vessel_operational_status_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_farm_building_types`
--
ALTER TABLE `cl_farm_building_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `QUANTITY_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_farm_building_types_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_farm_plot_activity_types`
--
ALTER TABLE `cl_farm_plot_activity_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `PLOT_TYPES_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_plot_activity_types_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_farm_pond_activity_types`
--
ALTER TABLE `cl_farm_pond_activity_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `MANAGEMENT_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_pond_management_types_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_farm_pond_types`
--
ALTER TABLE `cl_farm_pond_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `POND_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `FK_FARM_POND_TYPE_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_farm_types`
--
ALTER TABLE `cl_farm_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ENTITY_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_entity_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_fish_fishing_types`
--
ALTER TABLE `cl_fish_fishing_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ITEM_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_fishing_type_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_fish_fishing_zones`
--
ALTER TABLE `cl_fish_fishing_zones`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CODE_UNIQUE` (`CODE`),
  ADD KEY `CL_FISHING_ZONES_TO_UPDATER_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_ref_admin_level_1`
--
ALTER TABLE `cl_ref_admin_level_1`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ADM1_CODE_UNIQUE` (`CODE`),
  ADD KEY `ref_admin_level_1_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_ref_admin_level_2`
--
ALTER TABLE `cl_ref_admin_level_2`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ADM2_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_ref_admin_level_2_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_ref_commodities`
--
ALTER TABLE `cl_ref_commodities`
  ADD KEY `FK_COMMODITIES_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_ref_countries`
--
ALTER TABLE `cl_ref_countries`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UNIQUE_CL_COUNTRIES` (`CODE`,`ISO_3_CODE`),
  ADD KEY `cl_countries_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_ref_currencies`
--
ALTER TABLE `cl_ref_currencies`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_CURRENCIES_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_ref_declaration_sources`
--
ALTER TABLE `cl_ref_declaration_sources`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UNIQUE_CL_REF_DECLARATION_SORUCES` (`CODE`),
  ADD KEY `cl_ref_declaration_sources_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_ref_gears`
--
ALTER TABLE `cl_ref_gears`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `GEAR_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_gears_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_ref_gear_characteristics`
--
ALTER TABLE `cl_ref_gear_characteristics`
  ADD PRIMARY KEY (`CL_REF_GEAR_ID`),
  ADD KEY `FK_GEAR_CHARACTERISTICS_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_ref_landing_sites`
--
ALTER TABLE `cl_ref_landing_sites`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UNIQUE_CL_LANDING_SITES` (`CODE`,`CL_ADMIN_LEVEL_1_ID`),
  ADD KEY `cl_landing_sites_updater_id_idx` (`UPDATER_ID`),
  ADD KEY `CL_LANDING_SITES_TO_CL_ISLAND_idx` (`CL_ADMIN_LEVEL_1_ID`);

--
-- Index pour la table `cl_ref_languages`
--
ALTER TABLE `cl_ref_languages`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_LANGUAGE_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_ref_languages_countries`
--
ALTER TABLE `cl_ref_languages_countries`
  ADD PRIMARY KEY (`CL_LANGUAGE_ID`,`CL_COUNTRY_ID`),
  ADD KEY `FK_LANGUAGE_COUNTRY_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_ref_products`
--
ALTER TABLE `cl_ref_products`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_PRODUCTS_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_ref_product_types`
--
ALTER TABLE `cl_ref_product_types`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_PRODUCTS_TYPE_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `cl_ref_regions`
--
ALTER TABLE `cl_ref_regions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UNIQUE_CL_REGIPN` (`CODE`,`ISO_3_CODE`),
  ADD KEY `cl_region_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_ref_species`
--
ALTER TABLE `cl_ref_species`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SPECIES_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_species_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_ref_vessel_types`
--
ALTER TABLE `cl_ref_vessel_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `VESSEL_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_vessel_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `dt_audit_bs_farm`
--
ALTER TABLE `dt_audit_bs_farm`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_DT_AUDIT_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `dt_farmag_plot_management`
--
ALTER TABLE `dt_farmag_plot_management`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_FARMAG_PLOT_MANAGEMENT_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `dt_farmag_production`
--
ALTER TABLE `dt_farmag_production`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_FARMAG_PROD_USER_idx` (`ID`,`UPDATER_ID`),
  ADD KEY `FK_FARMAG_PRODUCTION_UPDATER_ID_idx` (`UPDATER_ID`),
  ADD KEY `FK_FARMAG_PRODUCTION_QUANTITY_UNIT_idx` (`CL_PRODUCTION_QUANTITY_UNIT_ID`),
  ADD KEY `FK_FARMAG_PRODUCTION_PROD_TYPE_idx` (`CL_PROD_DATA_ENTRY_TYPE_ID`),
  ADD KEY `FK_FARMAG_PRODUCTION_FARM_ID_idx` (`REG_ENTITY_FARM_ID`);

--
-- Index pour la table `dt_farmaq_plot_measurements`
--
ALTER TABLE `dt_farmaq_plot_measurements`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CL_MEASURE_TYPE_ID` (`CL_MEASURE_TYPE_ID`),
  ADD KEY `dt_farmaq_pond_measurements_ibfk_3_idx` (`CL_MEASURE_VALUE_UNIT_ID`),
  ADD KEY `REG_ENTITY_FARM_PLOT_ID` (`REG_ENTITY_FARM_PLOT_ID`),
  ADD KEY `FK_DT_FARMAQ_PLOT_MEASUREMENT_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `dt_farmaq_pond_management`
--
ALTER TABLE `dt_farmaq_pond_management`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_DT_FARMAQ_POND_MANAGEMENT_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `dt_farmaq_pond_measurements`
--
ALTER TABLE `dt_farmaq_pond_measurements`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CL_MEASURE_TYPE_ID` (`CL_MEASURE_TYPE_ID`),
  ADD KEY `dt_farmaq_pond_measurements_ibfk_3_idx` (`CL_MEASURE_VALUE_UNIT_ID`),
  ADD KEY `REG_ENTITY_FARM_POND_ID` (`REG_ENTITY_FARM_POND_ID`),
  ADD KEY `FK_DT_FARMAQ_POND_MEASUREMENT_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `dt_farmaq_production`
--
ALTER TABLE `dt_farmaq_production`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_FARMAQ_PROD_USER_idx` (`ID`,`UPDATER_ID`),
  ADD KEY `FK_FARMAQ_PRODUCTION_UPDATER_ID_idx` (`UPDATER_ID`),
  ADD KEY `FK_FARMAQ_PRODUCTION_QUANTITY_UNIT_idx` (`CL_PRODUCTION_QUANTITY_UNIT_ID`),
  ADD KEY `FK_FARMAQ_PRODUCTION_PROD_TYPE_idx` (`CL_PROD_DATA_ENTRY_TYPE_ID`),
  ADD KEY `FK_FARMAQ_PRODUCTION_FARM_ID_idx` (`REG_ENTITY_FARM_ID`);

--
-- Index pour la table `dt_soil_analysis`
--
ALTER TABLE `dt_soil_analysis`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_DT_SOIL_ANALYSIS_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `dt_water_analysis`
--
ALTER TABLE `dt_water_analysis`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_DT_WATER_ANALYSIS_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entities`
--
ALTER TABLE `reg_entities`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CL_ENTITY_UID_TYPE_ID` (`CL_ENTITY_UID_TYPE_ID`),
  ADD KEY `FK_REG_ENTITIES_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_farmag_details`
--
ALTER TABLE `reg_entity_farmag_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_REG_ENTITY_FARMAG_DETAILS_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_farmag_plots`
--
ALTER TABLE `reg_entity_farmag_plots`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `REG_ENTITY_FARM_ID` (`REG_ENTITY_FARM_ID`),
  ADD KEY `REG_ENTITY_FARM_ID_2` (`REG_ENTITY_FARM_ID`),
  ADD KEY `REG_ENTITY_FARM_ID_3` (`REG_ENTITY_FARM_ID`),
  ADD KEY `REG_ENTITY_FARM_ID_4` (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_FARMAG_PLOTS_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_farmaq_details`
--
ALTER TABLE `reg_entity_farmaq_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_REG_ENTITY_FARMAQ_DETAILS_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_farmaq_ponds`
--
ALTER TABLE `reg_entity_farmaq_ponds`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `REG_ENTITY_FARM_ID` (`REG_ENTITY_FARM_ID`),
  ADD KEY `REG_ENTITY_FARM_ID_2` (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_FARMAQ_PONDS_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_farm_buildings`
--
ALTER TABLE `reg_entity_farm_buildings`
  ADD PRIMARY KEY (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_FARM_BUILDING_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_farm_details`
--
ALTER TABLE `reg_entity_farm_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_REG_ENTITY_FARM_DETAILS_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_farm_details_farm_type`
--
ALTER TABLE `reg_entity_farm_details_farm_type`
  ADD KEY `FK_REG_ENTITY_FARM_DETAILS_TYPE_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_farm_facilities`
--
ALTER TABLE `reg_entity_farm_facilities`
  ADD PRIMARY KEY (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_FARM_FACILITIES_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_farm_providers`
--
ALTER TABLE `reg_entity_farm_providers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `REG_ENTITY_FARM_ID` (`REG_ENTITY_FARM_ID`),
  ADD KEY `REG_SEED_PROVIDER_ID` (`REG_ENTITY_SUPPLIER_ID`),
  ADD KEY `FK_CL_PRODUCTTYPE` (`CL_PRODUCT_TYPES_ID`),
  ADD KEY `FK_REG_ENTITY_FARM_PROVIDER_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_farm_water_supply`
--
ALTER TABLE `reg_entity_farm_water_supply`
  ADD PRIMARY KEY (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_FARM_SUPPLY_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_product_suppliers`
--
ALTER TABLE `reg_entity_product_suppliers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_REG_ENTITY_PRODUCT_SUPPLIER_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_staff`
--
ALTER TABLE `reg_entity_staff`
  ADD UNIQUE KEY `FK_COMPKEY` (`REG_ENTITY_ID`,`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_staff_contract`
--
ALTER TABLE `reg_entity_staff_contract`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_CONTRACT_DETAILS_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_staff_declaration`
--
ALTER TABLE `reg_entity_staff_declaration`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_DECLARATION_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_staff_declaration_child`
--
ALTER TABLE `reg_entity_staff_declaration_child`
  ADD PRIMARY KEY (`REG_ENTITY_STAFF_DECLARATION_ID`),
  ADD KEY `FK_DECLARATION_CHILD_UPDATED_ID_idx` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_staff_declaration_disrimination`
--
ALTER TABLE `reg_entity_staff_declaration_disrimination`
  ADD PRIMARY KEY (`REG_ENTITY_STAFF_DECLARATION_ID`),
  ADD KEY `FK_DECLARATION_DISCRIMINATION_UPDATER_ID_idx` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_staff_declaration_grievance`
--
ALTER TABLE `reg_entity_staff_declaration_grievance`
  ADD PRIMARY KEY (`REG_ENTITY_STAFF_DECLARATION_ID`),
  ADD KEY `FK_DECLARATION_GRIVANCE_UPDATER_ID_idx` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_staff_declaration_remuneration`
--
ALTER TABLE `reg_entity_staff_declaration_remuneration`
  ADD PRIMARY KEY (`REG_ENTITY_STAFF_DECLARATION_ID`),
  ADD KEY `FK_DECLARATION_GRIVANCE_UPDATER_ID_idx` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_staff_declaration_working_hours`
--
ALTER TABLE `reg_entity_staff_declaration_working_hours`
  ADD PRIMARY KEY (`REG_ENTITY_STAFF_DECLARATION_ID`),
  ADD KEY `FK_DECLARATION_WORKING_HOURS_UPDATER_ID_idx` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_staff_management`
--
ALTER TABLE `reg_entity_staff_management`
  ADD PRIMARY KEY (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_MANAGEMENT_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_staff_other_attribute`
--
ALTER TABLE `reg_entity_staff_other_attribute`
  ADD PRIMARY KEY (`REG_ENTITY_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_OTHER_ATTRIBUTES_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_staff_other_attribute_definition`
--
ALTER TABLE `reg_entity_staff_other_attribute_definition`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_OTHER_ATTRIBUTES_DEF_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_staff_training`
--
ALTER TABLE `reg_entity_staff_training`
  ADD PRIMARY KEY (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_TRAINING_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_pictures`
--
ALTER TABLE `reg_pictures`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `reg_vessels`
--
ALTER TABLE `reg_vessels`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `reg_vessel_unique` (`ID`),
  ADD KEY `cl_vessel_type_reg_vessel_idx` (`CL_VESSEL_TYPE_ID`),
  ADD KEY `reg_vessels_updater_id_idx` (`UPDATER_ID`),
  ADD KEY `reg_vessels_cl_vessel_status_idx` (`CL_APP_VESSEL_OPERATIONAL_STATUS_ID`),
  ADD KEY `reg_vessel_reg_entity_owner_idx` (`REG_ENTITY_ID_OWNER`),
  ADD KEY `reg_vessels_history_reg_entity_captain` (`REG_ENTITY_ID_CAPTAIN`),
  ADD KEY `reg_vessels_history_quantity_unit_dra` (`CL_QUANTITY_UNIT_ID_DRA`),
  ADD KEY `reg_vessels_history_quantity_unit_gt` (`CL_QUANTITY_UNIT_ID_GT`),
  ADD KEY `reg_vessels_history_hull_type_idx` (`CL_HULL_TYPE_ID`),
  ADD KEY `reg_vessels_history_energy_type_idx` (`REG_VESSEL_ENGINE_ID`),
  ADD KEY `reg_vessels_history_loa_quantity_unit_idx` (`CL_QUANTITY_UNIT_ID_LOA`,`CL_QUANTITY_UNIT_ID_DRA`,`CL_QUANTITY_UNIT_ID_GT`);

--
-- Index pour la table `reg_vessel_administrative_characteristics`
--
ALTER TABLE `reg_vessel_administrative_characteristics`
  ADD PRIMARY KEY (`REG_VESSEL_ID`),
  ADD KEY `FK_REG_VESSEL_ADMIN_CHAR_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_vessel_construction_event`
--
ALTER TABLE `reg_vessel_construction_event`
  ADD PRIMARY KEY (`REG_VESSEL_ID`),
  ADD KEY `FK_REG_VESSEL_CONSTRUCTION_EVENT_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_vessel_dimensions`
--
ALTER TABLE `reg_vessel_dimensions`
  ADD PRIMARY KEY (`REG_VESSEL_ID`),
  ADD KEY `FK_REG_VESSEL_DIMENSION_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_vessel_engines`
--
ALTER TABLE `reg_vessel_engines`
  ADD PRIMARY KEY (`REG_VESSEL_ID`),
  ADD KEY `FK_REG_VESSEL_ENGINE_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_vessel_equipments_characteristics`
--
ALTER TABLE `reg_vessel_equipments_characteristics`
  ADD PRIMARY KEY (`REG_VESSEL_ID`),
  ADD KEY `FK_REG_VESSEL_EQUIPMENT_CHAR_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_vessel_event`
--
ALTER TABLE `reg_vessel_event`
  ADD PRIMARY KEY (`REG_VESSEL_ID`),
  ADD KEY `FK_REG_VESSEL_EVENT_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_vessel_gears`
--
ALTER TABLE `reg_vessel_gears`
  ADD PRIMARY KEY (`REG_VESSEL_ID`),
  ADD KEY `FK_REG_VESSEL_GEAR_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_vessel_historical_characteristics`
--
ALTER TABLE `reg_vessel_historical_characteristics`
  ADD PRIMARY KEY (`REG_VESSEL_ID`),
  ADD KEY `FK_REG_VESSEL_HISTORICAL_CHAR_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_vessel_registration_event`
--
ALTER TABLE `reg_vessel_registration_event`
  ADD PRIMARY KEY (`REG_VESSEL_ID`),
  ADD KEY `FK_REG_VESSEL_REGISTRATION_EVENT_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_vessel_technical_characteristics`
--
ALTER TABLE `reg_vessel_technical_characteristics`
  ADD PRIMARY KEY (`REG_VESSEL_ID`),
  ADD KEY `FK_REG_VESSEL_TECHNICAL_CHAR_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `sys_roles`
--
ALTER TABLE `sys_roles`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `sys_users`
--
ALTER TABLE `sys_users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `INDX_CL_COUNTRY_ID` (`CL_COUNTRY_ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `cl_app_administrative_characteristic_types`
--
ALTER TABLE `cl_app_administrative_characteristic_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Administrative characteristic type';
--
-- AUTO_INCREMENT pour la table `cl_app_company_position_types`
--
ALTER TABLE `cl_app_company_position_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `cl_app_deduction_salary_types`
--
ALTER TABLE `cl_app_deduction_salary_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_energy_types`
--
ALTER TABLE `cl_app_energy_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_engine_roles`
--
ALTER TABLE `cl_app_engine_roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_engine_types`
--
ALTER TABLE `cl_app_engine_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_entity_document_types`
--
ALTER TABLE `cl_app_entity_document_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_entity_types`
--
ALTER TABLE `cl_app_entity_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT pour la table `cl_app_get_back_financial_deposit_reasons`
--
ALTER TABLE `cl_app_get_back_financial_deposit_reasons`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_hazardous_training_types`
--
ALTER TABLE `cl_app_hazardous_training_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_hazardous_work_type`
--
ALTER TABLE `cl_app_hazardous_work_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `cl_app_hiring_restriction_types`
--
ALTER TABLE `cl_app_hiring_restriction_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_hull_types`
--
ALTER TABLE `cl_app_hull_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_hvhe_expension_types`
--
ALTER TABLE `cl_app_hvhe_expension_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `cl_app_legal_status`
--
ALTER TABLE `cl_app_legal_status`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `cl_app_license_types`
--
ALTER TABLE `cl_app_license_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_locations`
--
ALTER TABLE `cl_app_locations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_location_types`
--
ALTER TABLE `cl_app_location_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_measure_types`
--
ALTER TABLE `cl_app_measure_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `cl_app_no_early_termination_contract_reasons`
--
ALTER TABLE `cl_app_no_early_termination_contract_reasons`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_payment_debt_types`
--
ALTER TABLE `cl_app_payment_debt_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_power_units`
--
ALTER TABLE `cl_app_power_units`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_propulsion_types`
--
ALTER TABLE `cl_app_propulsion_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_quantity_units`
--
ALTER TABLE `cl_app_quantity_units`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `cl_app_quantity_unit_types`
--
ALTER TABLE `cl_app_quantity_unit_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `cl_app_soil_analysis_types`
--
ALTER TABLE `cl_app_soil_analysis_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cl_app_staff_declaration_types`
--
ALTER TABLE `cl_app_staff_declaration_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'declaration type ID';
--
-- AUTO_INCREMENT pour la table `cl_app_termination_contract_reasons`
--
ALTER TABLE `cl_app_termination_contract_reasons`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_vessel_characteristics`
--
ALTER TABLE `cl_app_vessel_characteristics`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_vessel_equipment_types`
--
ALTER TABLE `cl_app_vessel_equipment_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_vessel_historical_characteristic_types`
--
ALTER TABLE `cl_app_vessel_historical_characteristic_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_vessel_operational_status`
--
ALTER TABLE `cl_app_vessel_operational_status`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The REGION codelist ID';
--
-- AUTO_INCREMENT pour la table `cl_farm_building_types`
--
ALTER TABLE `cl_farm_building_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_farm_plot_activity_types`
--
ALTER TABLE `cl_farm_plot_activity_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT pour la table `cl_farm_pond_activity_types`
--
ALTER TABLE `cl_farm_pond_activity_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `cl_farm_pond_types`
--
ALTER TABLE `cl_farm_pond_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `cl_farm_types`
--
ALTER TABLE `cl_farm_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `cl_fish_fishing_types`
--
ALTER TABLE `cl_fish_fishing_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_fish_fishing_zones`
--
ALTER TABLE `cl_fish_fishing_zones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_ref_admin_level_1`
--
ALTER TABLE `cl_ref_admin_level_1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_ref_admin_level_2`
--
ALTER TABLE `cl_ref_admin_level_2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_ref_countries`
--
ALTER TABLE `cl_ref_countries`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The COUNTRIES codelist ID', AUTO_INCREMENT=260;
--
-- AUTO_INCREMENT pour la table `cl_ref_declaration_sources`
--
ALTER TABLE `cl_ref_declaration_sources`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'source of declaration ID';
--
-- AUTO_INCREMENT pour la table `cl_ref_gears`
--
ALTER TABLE `cl_ref_gears`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_ref_landing_sites`
--
ALTER TABLE `cl_ref_landing_sites`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_ref_languages`
--
ALTER TABLE `cl_ref_languages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT pour la table `cl_ref_product_types`
--
ALTER TABLE `cl_ref_product_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT pour la table `cl_ref_regions`
--
ALTER TABLE `cl_ref_regions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The REGION codelist ID';
--
-- AUTO_INCREMENT pour la table `cl_ref_species`
--
ALTER TABLE `cl_ref_species`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `cl_ref_vessel_types`
--
ALTER TABLE `cl_ref_vessel_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `dt_farmag_plot_management`
--
ALTER TABLE `dt_farmag_plot_management`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `dt_farmag_production`
--
ALTER TABLE `dt_farmag_production`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `dt_farmaq_plot_measurements`
--
ALTER TABLE `dt_farmaq_plot_measurements`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `dt_farmaq_pond_management`
--
ALTER TABLE `dt_farmaq_pond_management`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `dt_farmaq_pond_measurements`
--
ALTER TABLE `dt_farmaq_pond_measurements`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `dt_farmaq_production`
--
ALTER TABLE `dt_farmaq_production`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `dt_soil_analysis`
--
ALTER TABLE `dt_soil_analysis`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `dt_water_analysis`
--
ALTER TABLE `dt_water_analysis`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_entities`
--
ALTER TABLE `reg_entities`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT pour la table `reg_entity_farmag_details`
--
ALTER TABLE `reg_entity_farmag_details`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_entity_farmag_plots`
--
ALTER TABLE `reg_entity_farmag_plots`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `reg_entity_farmaq_details`
--
ALTER TABLE `reg_entity_farmaq_details`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_entity_farmaq_ponds`
--
ALTER TABLE `reg_entity_farmaq_ponds`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
--
-- AUTO_INCREMENT pour la table `reg_entity_farm_details`
--
ALTER TABLE `reg_entity_farm_details`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT pour la table `reg_entity_farm_providers`
--
ALTER TABLE `reg_entity_farm_providers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `reg_entity_product_suppliers`
--
ALTER TABLE `reg_entity_product_suppliers`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_entity_staff_contract`
--
ALTER TABLE `reg_entity_staff_contract`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_entity_staff_declaration`
--
ALTER TABLE `reg_entity_staff_declaration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
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
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `cl_app_administrative_characteristic_types`
--
ALTER TABLE `cl_app_administrative_characteristic_types`
  ADD CONSTRAINT `FK_ADMIN_CHAR_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_company_position_types`
--
ALTER TABLE `cl_app_company_position_types`
  ADD CONSTRAINT `FK_COMP_POS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_contract_types`
--
ALTER TABLE `cl_app_contract_types`
  ADD CONSTRAINT `FK_CONTRACT_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_deduction_salary_types`
--
ALTER TABLE `cl_app_deduction_salary_types`
  ADD CONSTRAINT `FK_DEDUCTION_SALARY_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_energy_types`
--
ALTER TABLE `cl_app_energy_types`
  ADD CONSTRAINT `FK_ENERGY_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_engine_roles`
--
ALTER TABLE `cl_app_engine_roles`
  ADD CONSTRAINT `FK_ENGINE_ROLE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_engine_types`
--
ALTER TABLE `cl_app_engine_types`
  ADD CONSTRAINT `FK_ENGINE_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_entity_document_types`
--
ALTER TABLE `cl_app_entity_document_types`
  ADD CONSTRAINT `FK_ENTITY_DOCUMENT_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_entity_types`
--
ALTER TABLE `cl_app_entity_types`
  ADD CONSTRAINT `FK_ENTITY_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_get_back_financial_deposit_reasons`
--
ALTER TABLE `cl_app_get_back_financial_deposit_reasons`
  ADD CONSTRAINT `FK_FINAN_DEPOSIT_BACK_REASON_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_hazardous_training_types`
--
ALTER TABLE `cl_app_hazardous_training_types`
  ADD CONSTRAINT `FK_HAZARD_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_hazardous_work_type`
--
ALTER TABLE `cl_app_hazardous_work_type`
  ADD CONSTRAINT `FK_HAZ_WORK_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_hiring_restriction_types`
--
ALTER TABLE `cl_app_hiring_restriction_types`
  ADD CONSTRAINT `FK_HIRING_RESTRICTION_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_hull_types`
--
ALTER TABLE `cl_app_hull_types`
  ADD CONSTRAINT `FK_HULL_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_hvhe_expension_types`
--
ALTER TABLE `cl_app_hvhe_expension_types`
  ADD CONSTRAINT `FK_HVHE_EXP_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_legal_status`
--
ALTER TABLE `cl_app_legal_status`
  ADD CONSTRAINT `FK_LEGAL_STATUS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_license_types`
--
ALTER TABLE `cl_app_license_types`
  ADD CONSTRAINT `FK_LICENCE_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_locations`
--
ALTER TABLE `cl_app_locations`
  ADD CONSTRAINT `FK_LCOATION_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_location_types`
--
ALTER TABLE `cl_app_location_types`
  ADD CONSTRAINT `FK_LOCATION_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_measure_types`
--
ALTER TABLE `cl_app_measure_types`
  ADD CONSTRAINT `FK_MEASURE_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_no_early_termination_contract_reasons`
--
ALTER TABLE `cl_app_no_early_termination_contract_reasons`
  ADD CONSTRAINT `FK_NO_EARLY_TERMINATION_REASON_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_payment_debt_types`
--
ALTER TABLE `cl_app_payment_debt_types`
  ADD CONSTRAINT `FK_PAYMENT_DEBT_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_payment_frequencies`
--
ALTER TABLE `cl_app_payment_frequencies`
  ADD CONSTRAINT `FK_PAIEMENT_FREQ_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_power_units`
--
ALTER TABLE `cl_app_power_units`
  ADD CONSTRAINT `FK_POWER_UNIT_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_prod_data_entry_types`
--
ALTER TABLE `cl_app_prod_data_entry_types`
  ADD CONSTRAINT `FK_PROD_DATA_ENTRY_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_propulsion_types`
--
ALTER TABLE `cl_app_propulsion_types`
  ADD CONSTRAINT `FK_PROPULSION_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_quantity_units`
--
ALTER TABLE `cl_app_quantity_units`
  ADD CONSTRAINT `FK_QUANTITY_UNIT_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_quantity_unit_types`
--
ALTER TABLE `cl_app_quantity_unit_types`
  ADD CONSTRAINT `FK_QUANTITY_UNIT_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_soil_analysis_types`
--
ALTER TABLE `cl_app_soil_analysis_types`
  ADD CONSTRAINT `FK_SOIL_ANALYSIS_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_staff_declaration_types`
--
ALTER TABLE `cl_app_staff_declaration_types`
  ADD CONSTRAINT `FKSTAFF_DECLARATION_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_termination_contract_reasons`
--
ALTER TABLE `cl_app_termination_contract_reasons`
  ADD CONSTRAINT `FK_TERMINATION_REASON_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_tiling_activity_types`
--
ALTER TABLE `cl_app_tiling_activity_types`
  ADD CONSTRAINT `FK_TILING_ACTVITY_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_vessel_characteristics`
--
ALTER TABLE `cl_app_vessel_characteristics`
  ADD CONSTRAINT `FK_VESSEL_CHAR_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_vessel_equipment_types`
--
ALTER TABLE `cl_app_vessel_equipment_types`
  ADD CONSTRAINT `FK_VESSEL_EQUIPMENT_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_vessel_historical_characteristic_types`
--
ALTER TABLE `cl_app_vessel_historical_characteristic_types`
  ADD CONSTRAINT `FK_VESSEL_HISTORICAL_CHAR_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_vessel_operational_status`
--
ALTER TABLE `cl_app_vessel_operational_status`
  ADD CONSTRAINT `FK_VESSEL_OPERATIONAL_STATUS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_farm_building_types`
--
ALTER TABLE `cl_farm_building_types`
  ADD CONSTRAINT `FK_FARM_BUILDING_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_farm_plot_activity_types`
--
ALTER TABLE `cl_farm_plot_activity_types`
  ADD CONSTRAINT `FK_FARM_PLOT_ACTIVITY_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_farm_pond_activity_types`
--
ALTER TABLE `cl_farm_pond_activity_types`
  ADD CONSTRAINT `FK_FARM_POND_ACTIVITY_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_farm_pond_types`
--
ALTER TABLE `cl_farm_pond_types`
  ADD CONSTRAINT `FK_FARM_POND_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_farm_types`
--
ALTER TABLE `cl_farm_types`
  ADD CONSTRAINT `FK_FARM_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_fish_fishing_types`
--
ALTER TABLE `cl_fish_fishing_types`
  ADD CONSTRAINT `FK_FISH_FISHING_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_fish_fishing_zones`
--
ALTER TABLE `cl_fish_fishing_zones`
  ADD CONSTRAINT `FK_FISH_FISHING_ZONE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_admin_level_1`
--
ALTER TABLE `cl_ref_admin_level_1`
  ADD CONSTRAINT `FK_ADMIN1_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_admin_level_2`
--
ALTER TABLE `cl_ref_admin_level_2`
  ADD CONSTRAINT `FK_ADMIN2_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_commodities`
--
ALTER TABLE `cl_ref_commodities`
  ADD CONSTRAINT `FK_COMMODITIES_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_countries`
--
ALTER TABLE `cl_ref_countries`
  ADD CONSTRAINT `FK_COUNTRIES_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_currencies`
--
ALTER TABLE `cl_ref_currencies`
  ADD CONSTRAINT `FK_CURRENCIES_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_declaration_sources`
--
ALTER TABLE `cl_ref_declaration_sources`
  ADD CONSTRAINT `FK_DECLARATION_SOURCE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_gears`
--
ALTER TABLE `cl_ref_gears`
  ADD CONSTRAINT `FK_GEARS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_gear_characteristics`
--
ALTER TABLE `cl_ref_gear_characteristics`
  ADD CONSTRAINT `FK_GEAR_CHARACTERISTICS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_landing_sites`
--
ALTER TABLE `cl_ref_landing_sites`
  ADD CONSTRAINT `FK_ADMIN1` FOREIGN KEY (`CL_ADMIN_LEVEL_1_ID`) REFERENCES `cl_ref_admin_level_1` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_LANDING_SITES_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_languages`
--
ALTER TABLE `cl_ref_languages`
  ADD CONSTRAINT `FK_LANGUAGE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_languages_countries`
--
ALTER TABLE `cl_ref_languages_countries`
  ADD CONSTRAINT `FK_LANGUAGE_COUNTRY_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_products`
--
ALTER TABLE `cl_ref_products`
  ADD CONSTRAINT `FK_PRODUCTS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_product_types`
--
ALTER TABLE `cl_ref_product_types`
  ADD CONSTRAINT `FK_PRODUCTS_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_regions`
--
ALTER TABLE `cl_ref_regions`
  ADD CONSTRAINT `FK_REGION_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_species`
--
ALTER TABLE `cl_ref_species`
  ADD CONSTRAINT `FK_SPECIES_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_vessel_types`
--
ALTER TABLE `cl_ref_vessel_types`
  ADD CONSTRAINT `FK_VESSEL_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `dt_audit_bs_farm`
--
ALTER TABLE `dt_audit_bs_farm`
  ADD CONSTRAINT `FK_DT_AUDIT_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `dt_farmag_plot_management`
--
ALTER TABLE `dt_farmag_plot_management`
  ADD CONSTRAINT `FK_FARMAG_PLOT_MANAGEMENT_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `dt_farmag_production`
--
ALTER TABLE `dt_farmag_production`
  ADD CONSTRAINT `FK_DT_FARMAG_PRODUCTION_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_FARMAG_PRODUCTION_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_FARMAG_PRODUCTION_PROD_TYPE` FOREIGN KEY (`CL_PROD_DATA_ENTRY_TYPE_ID`) REFERENCES `cl_app_prod_data_entry_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_FARMAG_PRODUCTION_QUANTITY_UNIT` FOREIGN KEY (`CL_PRODUCTION_QUANTITY_UNIT_ID`) REFERENCES `cl_app_quantity_units` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_FARMAG_PRODUCTION_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `dt_farmaq_plot_measurements`
--
ALTER TABLE `dt_farmaq_plot_measurements`
  ADD CONSTRAINT `FK_DT_FARMAQ_PLOT_MEASUREMENT_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `dt_farmaq_pond_management`
--
ALTER TABLE `dt_farmaq_pond_management`
  ADD CONSTRAINT `FK_DT_FARMAQ_POND_MANAGEMENT_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `dt_farmaq_pond_measurements`
--
ALTER TABLE `dt_farmaq_pond_measurements`
  ADD CONSTRAINT `FKF` FOREIGN KEY (`REG_ENTITY_FARM_POND_ID`) REFERENCES `reg_entity_farmaq_ponds` (`ID`),
  ADD CONSTRAINT `FK_DT_FARMAQ_POND_MEASUREMENT_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `dt_farmaq_production`
--
ALTER TABLE `dt_farmaq_production`
  ADD CONSTRAINT `FK_DT_FARMAQ_PRODUCTION_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_FARMAQ_PRODUCTION_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_FARMAQ_PRODUCTION_PROD_TYPE` FOREIGN KEY (`CL_PROD_DATA_ENTRY_TYPE_ID`) REFERENCES `cl_app_prod_data_entry_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_FARMAQ_PRODUCTION_QUANTITY_UNIT` FOREIGN KEY (`CL_PRODUCTION_QUANTITY_UNIT_ID`) REFERENCES `cl_app_quantity_units` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_FARMAQ_PRODUCTION_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `dt_soil_analysis`
--
ALTER TABLE `dt_soil_analysis`
  ADD CONSTRAINT `FK_DT_SOIL_ANALYSIS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `dt_water_analysis`
--
ALTER TABLE `dt_water_analysis`
  ADD CONSTRAINT `FK_DT_WATER_ANALYSIS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entities`
--
ALTER TABLE `reg_entities`
  ADD CONSTRAINT `FK_CLTYPE` FOREIGN KEY (`CL_ENTITY_UID_TYPE_ID`) REFERENCES `cl_app_entity_types` (`ID`),
  ADD CONSTRAINT `FK_REG_ENTITIES_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farmag_details`
--
ALTER TABLE `reg_entity_farmag_details`
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAG_DETAILS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farmag_plots`
--
ALTER TABLE `reg_entity_farmag_plots`
  ADD CONSTRAINT `FK_PLOT2FARMS` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`),
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAG_PLOTS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farmaq_details`
--
ALTER TABLE `reg_entity_farmaq_details`
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAQ_DETAILS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farmaq_ponds`
--
ALTER TABLE `reg_entity_farmaq_ponds`
  ADD CONSTRAINT `FK_PONDS2FARM` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`),
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAQ_PONDS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farm_buildings`
--
ALTER TABLE `reg_entity_farm_buildings`
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_BUILDING_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farm_details`
--
ALTER TABLE `reg_entity_farm_details`
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_DETAILS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farm_details_farm_type`
--
ALTER TABLE `reg_entity_farm_details_farm_type`
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_DETAILS_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farm_facilities`
--
ALTER TABLE `reg_entity_farm_facilities`
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_FACILITIES_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farm_providers`
--
ALTER TABLE `reg_entity_farm_providers`
  ADD CONSTRAINT `FK_CL_PRODUCTTYPE` FOREIGN KEY (`CL_PRODUCT_TYPES_ID`) REFERENCES `cl_ref_product_types` (`ID`),
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_PROVIDER_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farm_water_supply`
--
ALTER TABLE `reg_entity_farm_water_supply`
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_SUPPLY_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_product_suppliers`
--
ALTER TABLE `reg_entity_product_suppliers`
  ADD CONSTRAINT `FK_REG_ENTITY_PRODUCT_SUPPLIER_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff`
--
ALTER TABLE `reg_entity_staff`
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff_contract`
--
ALTER TABLE `reg_entity_staff_contract`
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_CONTRACT_DETAILS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff_declaration`
--
ALTER TABLE `reg_entity_staff_declaration`
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_DECLARATION_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff_declaration_child`
--
ALTER TABLE `reg_entity_staff_declaration_child`
  ADD CONSTRAINT `FK_DECLARATION_CHILD` FOREIGN KEY (`REG_ENTITY_STAFF_DECLARATION_ID`) REFERENCES `reg_entity_staff_declaration` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DECLARATION_CHILD_UPDATED_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff_declaration_disrimination`
--
ALTER TABLE `reg_entity_staff_declaration_disrimination`
  ADD CONSTRAINT `FK_DECLARATION_DISCRIMINATION_UNIK` FOREIGN KEY (`REG_ENTITY_STAFF_DECLARATION_ID`) REFERENCES `reg_entity_staff_declaration` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DECLARATION_DISCRIMINATION_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff_declaration_grievance`
--
ALTER TABLE `reg_entity_staff_declaration_grievance`
  ADD CONSTRAINT `FK_DECLARATION_GRIEVANCE_UNIK` FOREIGN KEY (`REG_ENTITY_STAFF_DECLARATION_ID`) REFERENCES `reg_entity_staff_declaration` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DECLARATION_GRIVANCE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff_declaration_remuneration`
--
ALTER TABLE `reg_entity_staff_declaration_remuneration`
  ADD CONSTRAINT `FK_DECLARATION_REMUNERATION_UNIK` FOREIGN KEY (`REG_ENTITY_STAFF_DECLARATION_ID`) REFERENCES `reg_entity_staff_declaration` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DECLARATION_REMUNERATION_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff_declaration_working_hours`
--
ALTER TABLE `reg_entity_staff_declaration_working_hours`
  ADD CONSTRAINT `FK_DECLARATION_WORKING_HOURS_UNIK` FOREIGN KEY (`REG_ENTITY_STAFF_DECLARATION_ID`) REFERENCES `reg_entity_staff_declaration` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DECLARATION_WORKING_HOURS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff_management`
--
ALTER TABLE `reg_entity_staff_management`
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_MANAGEMENT_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff_other_attribute`
--
ALTER TABLE `reg_entity_staff_other_attribute`
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_OTHER_ATTRIBUTES_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff_other_attribute_definition`
--
ALTER TABLE `reg_entity_staff_other_attribute_definition`
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_OTHER_ATTRIBUTES_DEF_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff_training`
--
ALTER TABLE `reg_entity_staff_training`
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_TRAINING_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_vessels`
--
ALTER TABLE `reg_vessels`
  ADD CONSTRAINT `FK_REG_VESSEL_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_vessel_administrative_characteristics`
--
ALTER TABLE `reg_vessel_administrative_characteristics`
  ADD CONSTRAINT `FK_REG_VESSEL_ADMIN_CHAR_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_vessel_construction_event`
--
ALTER TABLE `reg_vessel_construction_event`
  ADD CONSTRAINT `FK_REG_VESSEL_CONSTRUCTION_EVENT_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_vessel_dimensions`
--
ALTER TABLE `reg_vessel_dimensions`
  ADD CONSTRAINT `FK_REG_VESSEL_DIMENSION_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_vessel_engines`
--
ALTER TABLE `reg_vessel_engines`
  ADD CONSTRAINT `FK_REG_VESSEL_ENGINE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_vessel_equipments_characteristics`
--
ALTER TABLE `reg_vessel_equipments_characteristics`
  ADD CONSTRAINT `FK_REG_VESSEL_EQUIPMENT_CHAR_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_vessel_event`
--
ALTER TABLE `reg_vessel_event`
  ADD CONSTRAINT `FK_REG_VESSEL_EVENT_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_vessel_gears`
--
ALTER TABLE `reg_vessel_gears`
  ADD CONSTRAINT `FK_REG_VESSEL_GEAR_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_vessel_historical_characteristics`
--
ALTER TABLE `reg_vessel_historical_characteristics`
  ADD CONSTRAINT `FK_REG_VESSEL_HISTORICAL_CHAR_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_vessel_registration_event`
--
ALTER TABLE `reg_vessel_registration_event`
  ADD CONSTRAINT `FK_REG_VESSEL_REGISTRATION_EVENT_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_vessel_technical_characteristics`
--
ALTER TABLE `reg_vessel_technical_characteristics`
  ADD CONSTRAINT `FK_REG_VESSEL_TECHNICAL_CHAR_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `sys_users`
--
ALTER TABLE `sys_users`
  ADD CONSTRAINT `FK_CLCOUNTRY` FOREIGN KEY (`CL_COUNTRY_ID`) REFERENCES `cl_ref_countries` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
