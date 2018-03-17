-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Sam 17 Mars 2018 à 06:25
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

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
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Administrative characteristic type';

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_company_position_types`
--

CREATE TABLE `cl_app_company_position_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_app_company_position_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'CEO', 1, 'Company CEO', 'Company CEO', 'Company CEO', 'Company CEO', 'PDG', NULL, 'CEO บริษัท', NULL, NULL, NULL, NULL, 1, NULL, '2016-11-13 15:17:13', '2017-09-12 13:26:58'),
(2, 1, 'OWN', 1, 'Company Owner', 'Small Company Owner', 'Company Owner', 'Company Owner', 'Propriétaire de l\'entreprise', NULL, 'เจ้าของ บริษัท', NULL, NULL, NULL, NULL, 1, NULL, '2016-11-13 15:18:30', '2017-09-12 13:26:58'),
(3, 1, 'PROD', 1, 'Production Manager', 'Production Manager', 'Production Manager', 'Production Manager', 'Gestionnaire de production', NULL, 'ผู้จัดการฝ่ายผลิต', NULL, NULL, NULL, NULL, 1, NULL, '2016-11-13 15:18:30', '2017-09-12 13:26:58'),
(4, 1, 'SALES', 1, 'Sales Manager', 'Sales Manager', 'Sales Manager', 'Sales Manager', 'Responsable des ventes', NULL, 'ผู้จัดการฝ่ายขาย', NULL, NULL, NULL, NULL, 1, NULL, '2016-11-13 21:08:54', '2017-09-12 13:26:58'),
(5, 1, 'WORK', 1, 'Worker', 'Worker', 'Worker', 'Worker', NULL, NULL, 'ผู้ปฏิบัติงาน', NULL, NULL, NULL, NULL, 1, NULL, '2016-11-13 21:08:54', '2017-09-12 13:26:58');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_contract_types`
--

CREATE TABLE `cl_app_contract_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_app_contract_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'ORAL', 1, 'ORAL', 'ORAL', 'ORAL', 'ORAL', 'ORAL', NULL, 'ทางปาก', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-04 17:53:42', '2017-11-04 17:53:42'),
(2, 1, 'WRITTEN', 1, 'WRITTEN', 'WRITTEN', 'WRITTEN', 'WRITTEN', 'ECRIT', NULL, 'เป็นลายลักษณ์อักษร', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-04 17:53:42', '2017-11-04 17:53:42');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_debt_types`
--

CREATE TABLE `cl_app_debt_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

--
-- Contenu de la table `cl_app_debt_types`
--

INSERT INTO `cl_app_debt_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'CASH', 1, 'Debt in Cash', 'Debt in Cash', 'Debt in Cash', 'Debt in Cash', 'Dette en liquide', 'Debt in Cash', 'หนี้สินในรูปเงินสด', 'Debt in Cash', 'Debt in Cash', 'Debt in Cash', 'Debt in Cash', 1, NULL, '2018-01-29 15:30:05', '2018-01-29 15:30:05'),
(2, 1, 'TRAVEL', 1, 'Payment for travel', 'Payment for travel', 'Payment for travel', 'Payment for travel', 'Paiement voyage', 'Payment for travel', 'การชำระเงินค่าเดินทาง', 'Payment for travel', 'Payment for travel', 'Payment for travel', 'Payment for travel', 1, NULL, '2018-01-29 15:31:44', '2018-01-29 15:31:44'),
(3, 1, 'MEDIC', 1, 'Payment for medical expenses', 'Payment for medical expenses', 'Payment for medical expenses', 'Payment for medical expenses', 'Paiement frais médicaux', 'Payment for medical expenses', 'การชำระค่ารักษาพยาบาล', 'Payment for medical expenses', 'Payment for medical expenses', 'Payment for medical expenses', 'Payment for medical expenses', 1, NULL, '2018-01-29 15:33:04', '2018-01-29 15:33:04');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_declaration_sources_types`
--

CREATE TABLE `cl_app_declaration_sources_types` (
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
-- Contenu de la table `cl_app_declaration_sources_types`
--

INSERT INTO `cl_app_declaration_sources_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'ULULA', 'ULULA', 'ULULA', 'ULULA', 'ULULA', 'ULULA', 'ULULA', 'ULULA', 'ULULA', 'ULULA', 'ULULA', 'ULULA', 1, NULL, '2018-01-29 15:50:35', '2018-01-29 15:50:35');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_deduction_salary_types`
--

CREATE TABLE `cl_app_deduction_salary_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

--
-- Contenu de la table `cl_app_deduction_salary_types`
--

INSERT INTO `cl_app_deduction_salary_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'ACCOM', 1, 'Accommodation', 'Accommodation', 'Accommodation', 'Accommodation', 'Logement', 'Accommodation', 'ที่พัก', 'Accommodation', 'Accommodation', 'Accommodation', 'Accommodation', 1, NULL, '2018-01-27 05:46:58', '2018-01-27 05:46:58'),
(2, 1, 'TRANSPFEE', 1, 'Transportation fee', 'Transportation fee', 'Transportation fee', 'Transportation fee', 'Frais de transport', 'Transportation fee', 'ค่าขนส่ง', 'Transportation fee', 'Transportation fee', 'Transportation fee', 'Transportation fee', 1, NULL, '2018-01-27 05:46:58', '2018-01-27 05:46:58'),
(3, 1, 'FOOD', 1, 'Food fee', 'Food fee', 'Food fee', 'Food fee', 'Frais de Nourriture', 'Food fee', 'ค่าอาหาร', 'Food fee', 'Food fee', 'Food fee', 'Food fee', 1, NULL, '2018-01-29 15:40:25', '2018-01-29 15:40:25'),
(4, 1, 'OTHER', 1, 'Other', 'Other', 'Other', 'Other', 'Autres', 'Other', 'อื่น ๆ', 'Other', 'Other', 'Other', 'Other', 1, NULL, '2018-01-29 15:41:47', '2018-01-29 15:41:47');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_energy_types`
--

CREATE TABLE `cl_app_energy_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

--
-- Contenu de la table `cl_app_entity_document_types`
--

INSERT INTO `cl_app_entity_document_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'IDCARD', 1, 'ID card', 'ID card', 'ID card', 'ID card', 'Carte d\'identité', 'ID card', 'บัตรประชาชน', 'ID card', 'ID card', 'ID card', 'ID card', 1, NULL, '2018-01-27 05:34:34', '2018-01-27 05:34:34'),
(2, 1, 'PASSPORT', 1, 'Passport', 'Passport', 'Passport', 'Passport', 'Passport', 'Passport', 'Passport', 'หนังสือเดินทาง', 'Passport', 'Passport', 'Passport', 1, NULL, '2018-01-27 05:34:34', '2018-01-27 05:34:34'),
(3, 1, 'DRIVINGL', 1, 'Driving License', 'Driving License', 'Driving License', 'Driving License', 'Permis de conduire', 'Driving License', 'ใบขับขี่', 'Driving License', 'Driving License', 'Driving License', 'Driving License', 1, NULL, '2018-01-29 15:53:32', '2018-01-29 15:53:32'),
(4, 1, 'WORKPERMIT', 1, 'Work Permit', 'Work Permit', 'Work Permit', 'Work Permit', 'Permis de travail', 'Work Permit', 'ใบอนุญาตทำงาน', 'Work Permit', 'Work Permit', 'Work Permit', 'Work Permit', 1, NULL, '2018-01-29 15:53:32', '2018-01-29 15:53:32');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_entity_types`
--

CREATE TABLE `cl_app_entity_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_app_entity_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `IS_COMPANY`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'IND', 1, 'Individual', 'Individual', 'Individual', 'Individual', 'Personne', NULL, 'บุคคล', NULL, NULL, NULL, NULL, 0, 1, NULL, '2014-12-31 21:00:00', '2017-09-12 13:28:43'),
(2, 1, 'FARM', 1, 'Any type of farm', NULL, 'Any type of farm', 'Any type of farm', 'Tout type de ferme', NULL, 'ฟาร์ม', NULL, NULL, NULL, NULL, 0, 1, NULL, '2016-10-03 11:03:11', '2017-09-12 13:28:43'),
(5, 1, 'COOP', 1, 'Cooperative', 'Cooperative', 'Cooperative', 'Cooperative', 'Coopérative', NULL, 'สหกรณ์', NULL, NULL, NULL, NULL, 1, 1, NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43'),
(6, 1, 'FM', 1, 'Feed Mill', 'Feed Mill', 'Feed Mill', 'Feed Mill', NULL, NULL, 'โรงงานอาหาร', NULL, NULL, NULL, NULL, 1, 1, NULL, '2017-09-12 13:28:43', '2017-09-12 13:28:43'),
(7, 1, 'LAB', 1, 'Laboratory', 'Laboratory', 'Laboratory', 'Laboratory', 'Laboratoire', NULL, 'ห้องปฏิบัติการ', NULL, NULL, NULL, NULL, 1, 1, NULL, '2017-09-12 13:28:43', '2017-09-12 13:28:43'),
(8, 1, 'COM', 1, 'Commercial company', 'Commercial company', 'Commercial company', 'Commercial company', 'Société privée', NULL, 'บริษัท พาณิชย์', NULL, NULL, NULL, NULL, 1, 1, NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43'),
(9, 1, 'GOV', 1, 'Government Institution', 'Government Institution', 'Government Institution', 'Government Institution', 'Institution gouvernementale', NULL, 'Government Institution', NULL, NULL, NULL, NULL, 1, 1, NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43'),
(10, 1, 'NGO', 1, 'Non-Governmental Organization', 'NGO', 'NGO', 'NGO', 'ONG', NULL, 'Xngkh̒kr phạtʹhnā xekchn', NULL, NULL, NULL, NULL, 1, 1, NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43'),
(99, 1, 'SYS', 1, 'System-related entity', 'System-related entity', 'System-related entity', 'System-related entity', 'System-related entity', NULL, 'เอนทิตีที่เกี่ยวกับระบบ', NULL, NULL, NULL, NULL, 0, 1, NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_fresh_water_sypply_types`
--

CREATE TABLE `cl_app_fresh_water_sypply_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
-- Structure de la table `cl_app_get_back_financial_deposit_reasons`
--

CREATE TABLE `cl_app_get_back_financial_deposit_reasons` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

--
-- Contenu de la table `cl_app_get_back_financial_deposit_reasons`
--

INSERT INTO `cl_app_get_back_financial_deposit_reasons` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'ENDCONTRACT', 1, 'At the end of the contract', 'At the end of the contract', 'At the end of the contract', 'At the end of the contract', 'A la fin du contrat', 'At the end of the contract', 'เมื่อสิ้นสุดสัญญา', 'At the end of the contract', 'At the end of the contract', 'At the end of the contract', 'At the end of the contract', 1, NULL, '2018-01-27 05:25:08', '2018-01-27 05:25:08'),
(2, 1, 'DURINGCONTRACT', 1, 'During contract', 'During contract', 'During contract', 'During contract', 'Pendant la durée du contrat', 'During contract', 'ระหว่างที่อยู่ในสัญญา', 'During contract', 'During contract', 'During contract', 'During contract', 1, NULL, '2018-01-29 15:56:11', '2018-01-29 15:56:11'),
(3, 1, 'LEAVINGFARM', 1, 'When leaving the farm', 'When leaving the farm', 'When leaving the farm', 'When leaving the farm', 'En quittant la ferme', 'When leaving the farm', 'เมื่ออกจากงาน', 'When leaving the farm', 'When leaving the farm', 'When leaving the farm', 'When leaving the farm', 1, NULL, '2018-01-29 20:14:46', '2018-01-29 20:14:46'),
(99, 1, 'OTHER', 1, 'Other', 'Other (specify)', 'Other (specify)', 'Other (specify)', 'Autre (Préciser)', 'Other (specify)', 'อื่น ๆ (ระบุ)', 'Other (specify)', 'Other (specify)', 'Other (specify)', 'Other (specify)', 1, NULL, '2018-01-29 20:14:46', '2018-01-29 20:14:46');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_hazardous_training_types`
--

CREATE TABLE `cl_app_hazardous_training_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

--
-- Contenu de la table `cl_app_hazardous_training_types`
--

INSERT INTO `cl_app_hazardous_training_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'FILETFISH', 1, 'Processing Fish (Cutting / fillet) ', 'Processing Fish (Cutting / fillet) ', 'Processing Fish (Cutting / fillet) ', 'Processing Fish (Cutting / fillet) ', 'Transformer le poisson ( découpe / filet)', 'Processing Fish (Cutting / fillet) ', 'การประมวลผลปลา (ตัด / เนื้อ)', 'Processing Fish (Cutting / fillet) ', 'Processing Fish (Cutting / fillet) ', 'Processing Fish (Cutting / fillet) ', 'Processing Fish (Cutting / fillet) ', 1, NULL, '2018-01-29 15:58:15', '2018-01-29 15:58:15'),
(99, 1, 'NONE', 1, 'None', 'None', 'None', 'None', 'Aucun', 'None', 'ไม่มี', 'None', 'None', 'None', 'None', 1, NULL, '2018-01-29 16:05:04', '2018-01-29 16:05:04');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_hazardous_work_type`
--

CREATE TABLE `cl_app_hazardous_work_type` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CL_ENTITY_TYPE_ID` int(11) DEFAULT NULL COMMENT 'A possible restriction of the type of hazardous work per entity type',
  `CL_FARM_TYPE_ID` int(11) DEFAULT NULL COMMENT 'Additional restrictions to farm type (for agriculture or aquaculture)',
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

INSERT INTO `cl_app_hazardous_work_type` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `CL_ENTITY_TYPE_ID`, `CL_FARM_TYPE_ID`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'PONDSTOCK', 1, 'Pond Stocking', 'Pond Stocking', NULL, NULL, 'Pond Stocking', 'Pond Stocking', 'Pond Stocking', 'Pond Stocking', 'การปล่อยลูกพัน', 'Pond Stocking', 'Pond Stocking', 'Pond Stocking', 'Pond Stocking', 1, NULL, '2017-09-23 10:18:02', '2017-09-23 10:18:02'),
(2, 1, 'PONDHARV', 1, 'Pond Harvesting', 'Pond Harvesting', NULL, NULL, 'Pond Harvesting', 'Pond Harvesting', 'Récolte du bassin', 'Pond Harvesting', 'การเก็บเกี่ยวผลผลิตเมื่อครบรอบการเลี้ยง', 'Pond Harvesting', 'Pond Harvesting', 'Pond Harvesting', 'Pond Harvesting', 1, NULL, '2018-01-17 09:31:45', '2018-01-17 09:31:45'),
(3, 1, 'FEEDUSE', 1, 'Feeding', 'Feeding', NULL, NULL, 'Feeding', 'Feeding', 'Nourrir', 'Feeding', 'การให้อาหาร', 'Feeding', 'Feeding', 'Feeding', 'Feeding', 1, NULL, '2018-01-29 20:16:39', '2018-01-29 20:16:39'),
(4, 1, 'ADDITIVEUSE', 1, 'Distribution of Additive', 'Distribution of Additive', NULL, NULL, 'Distribution of Additive', 'Distribution of Additive', 'Distribution d\'additifs', 'Distribution of Additive', 'การใช้ยาสารเคมีหรือผลิตภัณฑ์อื่นๆในบ่อเลี้ยง', 'Distribution of Additive', 'Distribution of Additive', 'Distribution of Additive', 'Distribution of Additive', 3, NULL, '2018-02-21 17:13:11', '2018-02-21 17:13:11'),
(5, 1, 'ANTIBIOUSE', 1, 'Distribution of Antibiotics', 'Distribution of Antibiotics', NULL, NULL, 'Distribution of Antibiotics', 'Distribution of Antibiotics', 'Distribution d\'antibiotics', 'Distribution of Antibiotics', 'การใช้ยาปฎิชีวนะในบ่อเลี้ยง', 'Distribution of Antibiotics', 'Distribution of Antibiotics', 'Distribution of Antibiotics', 'Distribution of Antibiotics', 3, NULL, '2018-02-21 16:13:11', '2018-02-21 16:13:11'),
(6, 1, 'PONDLIME', 1, 'Pond liming', 'Pond liming', NULL, NULL, 'Pond liming', 'Pond liming', 'Chaulage du bassin', 'Pond liming', 'การใช้ปูนในบ่อเลี้ยง', 'Pond liming', 'Pond liming', 'Pond liming', 'Pond liming', 3, NULL, '2018-02-21 16:13:11', '2018-02-21 16:13:11'),
(7, 1, 'PONDWASH', 1, 'Pond washing', 'Pond washing', NULL, NULL, 'Pond washing', 'Pond washing', 'Nettoyage du bassin', 'Pond washing', 'การทำความสะอาดบ่อเลี้ยง', 'Pond washing', 'Pond washing', 'Pond washing ', 'Pond washing', 3, NULL, '2018-02-21 16:13:11', '2018-02-21 16:13:11'),
(8, 1, 'PONDMAINT', 1, 'Pond maintenance', 'Pond maintenance  ', NULL, NULL, 'Pond maintenance', 'Pond maintenance', 'Nettoyage du bassin', 'Pond maintenance', 'การทำความสะอาดบ่อเลี้ยง', 'Pond maintenance', 'Pond maintenance', 'Pond maintenance', 'Pond maintenance', 3, NULL, '2018-02-21 16:13:11', '2018-02-21 16:13:11'),
(9, 1, 'FERTUSE', 1, 'Pond Fertilizing', 'Pond Fertilizing  ', NULL, NULL, 'Pond Fertilizing', 'Pond Fertilizing', 'Fertilisation du bassin', 'Pond Fertilizing', 'การหมักบ่อเลี้ยง', 'Pond Fertilizing', 'Pond Fertilizing', 'Pond Fertilizing', 'Pond Fertilizing', 3, NULL, '2018-02-21 16:13:11', '2018-02-21 16:13:11'),
(10, 1, 'PONDLEVEL', 1, 'Pond leveling', 'Pond leveling  ', NULL, NULL, 'Pond leveling', 'Pond leveling', 'Mise à niveau du bassin', 'Pond leveling', 'การหมักบ่อเลี้ยง', 'Pond leveling', 'Pond leveling', 'Pond Fertilizing', 'Pond leveling', 3, NULL, '2018-02-21 16:13:11', '2018-02-21 16:13:11'),
(99, 1, 'NONE', 1, 'none', 'none', NULL, NULL, 'none', 'none', 'none', 'none', '	\r\nไม่มี', 'none', 'none', 'none', 'none', 1, NULL, '2018-01-29 16:07:18', '2018-01-29 16:07:18');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_hiring_restriction_types`
--

CREATE TABLE `cl_app_hiring_restriction_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

--
-- Contenu de la table `cl_app_hiring_restriction_types`
--

INSERT INTO `cl_app_hiring_restriction_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'GENDER', 1, 'Gender Restriction ', 'Gender Restriction ', 'Gender Restriction ', 'Gender Restriction ', 'Restriction sur le genre', 'Gender Restriction ', 'ข้อ จำกัด เรื่องเพศ', 'Gender Restriction ', 'Gender Restriction ', 'Gender Restriction ', 'Gender Restriction ', 1, NULL, '2018-01-29 20:00:53', '2018-01-29 20:00:53'),
(2, 1, 'RELIGION', 1, 'Religion restriction', 'Religion restriction', 'Religion restriction', 'Religion restriction', 'Restirctions dues à la religion', 'Religion restriction', 'ข้อ จำกัด ของศาสนา', 'Religion restriction', 'Religion restriction', 'Religion restriction', 'Religion restriction', 1, NULL, '2018-01-29 20:00:53', '2018-01-29 20:00:53'),
(3, 1, 'AGE', 1, 'Age restriction', 'Age restriction', 'Age restriction', 'Age restriction', 'Restrictions liées à l\'age', 'Age restriction', 'ข้อ จำกัด ด้านอายุ', 'Age restriction', 'Age restriction', 'Age restriction', 'v', 1, NULL, '2018-01-29 20:02:37', '2018-01-29 20:02:37'),
(4, 1, 'NONE', 1, 'None', 'None', 'None', 'None', 'Aucune', 'None', 'ไม่มี', 'None', 'None', 'None', 'None', 1, NULL, '2018-01-29 20:02:37', '2018-01-29 20:02:37'),
(5, 1, 'OTHER', 1, 'Other', 'Other', 'Other', 'Other', 'Autres', 'Other', 'อื่น ๆ', 'Other', 'Other', 'Other', 'Other', 1, NULL, '2018-01-29 20:05:09', '2018-01-29 20:05:09');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_hull_types`
--

CREATE TABLE `cl_app_hull_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_app_hvhe_expension_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `CL_COUNTRY_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'POND', 1, 'New Pond', 'Creation of new pond', 'Creation of new pond', 'Creation of new pond', 'Création d\'un nouveau bassin', NULL, 'การสร้างบ่อใหม่', NULL, NULL, NULL, NULL, 235, 1, NULL, '2016-11-13 20:10:38', '2017-09-12 13:29:31'),
(2, 1, 'CANAL', 1, 'Canal creation', 'Canal creation', 'Canal creation', 'Canal creation', 'Création d\'un canal', NULL, 'การสร้างคลอง', NULL, NULL, NULL, NULL, 235, 1, NULL, '2016-11-13 20:25:06', '2017-09-12 13:29:31');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_legal_status`
--

CREATE TABLE `cl_app_legal_status` (
  `ID` int(11) NOT NULL,
  `CL_COUNTRY_ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_app_legal_status` (`ID`, `CL_COUNTRY_ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 205, 1, 'SING', 1, 'Single', 'Single', 'Single', 'Single', 'Célibataire', NULL, 'เดียว', NULL, NULL, NULL, NULL, 1, 'ISO 20022 applied to Thailand', '2017-09-23 10:50:17', '2017-09-23 10:50:17'),
(2, 205, 1, 'MARR', 1, 'Married', 'Married', 'Married', 'Married', 'Marié', NULL, 'แต่งงาน', NULL, NULL, NULL, NULL, 1, 'ISO 20022 applied to Thailand', '2017-09-23 10:50:17', '2017-09-23 10:50:17'),
(3, 205, 1, 'LDIV', 1, 'Legally divorced', 'Legally divored', 'Legally divorced', 'Legally divorced', 'Divorcé légalement', NULL, 'หย่าร้างตามกฎหมาย', NULL, NULL, NULL, NULL, 1, 'ISO 20022 applied to Thailand', '2017-09-23 10:51:38', '2017-09-23 10:51:38'),
(4, 205, 1, 'DIVO', 1, 'Divorced', 'Divorced', 'Divorced', 'Divorced', 'Divorcé', NULL, 'การหย่าร้าง', NULL, NULL, NULL, NULL, 1, 'ISO 20022 applied to Thailand', '2017-09-23 10:51:38', '2017-09-23 10:51:38'),
(5, 205, 1, 'WIDO', 1, 'Widow', 'Widow', 'Widow', 'Widow', 'Veuve', NULL, 'แม่หม้าย', NULL, NULL, NULL, NULL, 1, 'ISO 20022 applied to Thailand', '2017-09-23 10:52:56', '2017-09-23 10:52:56'),
(6, 205, 1, 'UNIO', 1, 'Stable Union', 'Stable Union', 'Stable Union', 'Stable Union', 'Union stable', NULL, 'สหภาพคงที่', NULL, NULL, NULL, NULL, 1, 'ISO 20022 applied to Thailand', '2017-09-23 10:52:56', '2017-09-23 10:52:56'),
(7, 205, 1, 'SEPA', 1, 'Separated', 'Separated', 'Separated', 'Separated', 'Séparé', NULL, 'แยกออกจากกัน', NULL, NULL, NULL, NULL, 1, 'ISO 20022 applied to Thailand', '2017-09-23 10:55:43', '2017-09-23 10:55:43');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_license_types`
--

CREATE TABLE `cl_app_license_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_app_measure_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'pH', 1, 'pH', 'pH', 'pH', 'pH', 'pH', NULL, 'พีเอช', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-23 17:00:47', '2017-09-12 13:30:11'),
(2, 1, 'TEMP', 1, 'Temperature', 'Temperature', 'Temperature', 'Temperature', 'Température', NULL, 'อุณหภูมิ', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-23 17:00:47', '2017-09-12 13:30:11'),
(3, 1, 'DO', 1, 'Dissolved Oxygen', 'Dissolved Oxygen', 'Dissolved Oxygen', 'Dissolved Oxygen', 'Oxygène dissous', NULL, 'ออกซิเจนละลาย', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-23 17:02:34', '2017-09-12 13:30:11'),
(4, 1, 'SAL', 1, 'Salinity', 'Salinity', 'Salinity', 'Salinity', 'Salinité', NULL, 'ความเค็ม', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-23 17:02:34', '2017-09-12 13:30:11'),
(5, 1, 'AMMO', 1, 'Ammonia', 'Ammonia', 'Ammonia', 'Ammonia', 'Ammoniac', NULL, 'สารแอมโมเนีย', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-23 17:03:03', '2017-09-12 13:30:11');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_no_early_termination_contract_reasons`
--

CREATE TABLE `cl_app_no_early_termination_contract_reasons` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

--
-- Contenu de la table `cl_app_no_early_termination_contract_reasons`
--

INSERT INTO `cl_app_no_early_termination_contract_reasons` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'FININCENTIVE', 1, 'Financial Incentive (lump sum)', 'Financial Incentive (lump sum)', 'Financial Incentive (lump sum)', 'Financial Incentive (lump sum)', 'Incitations financières (Montant fixe)', 'Financial Incentive (lump sum)', 'สิ่งจูงใจทางการเงิน (เงินก้อน)', 'Financial Incentive (lump sum)', 'Financial Incentive (lump sum)', 'Financial Incentive (lump sum)', 'Financial Incentive (lump sum)', 1, NULL, '2018-01-29 16:09:21', '2018-01-29 16:09:21'),
(2, 1, 'INCRESALARY', 1, 'Increase salary', 'Increase salary', 'Increase salary', 'Increase salary', 'Augmentation de salaire', 'Increase salary', 'เพิ่มเงินเดือน', 'Increase salary', 'Increase salary', 'Increase salary', 'Increase salary', 1, NULL, '2018-01-29 16:10:17', '2018-01-29 16:10:17');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_payment_debt_types`
--

CREATE TABLE `cl_app_payment_debt_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

--
-- Contenu de la table `cl_app_payment_debt_types`
--

INSERT INTO `cl_app_payment_debt_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'MONTHFEE', 1, 'Month fixed fee deducted from salary', 'Month fixed fee deducted from salary', 'Month fixed fee deducted from salary', 'Month fixed fee deducted from salary', 'Retenue mensuelle sur salaire', 'Month fixed fee deducted from salary', 'ค่าคงที่เดือนที่หักจากเงินเดือน', 'Month fixed fee deducted from salary', 'Month fixed fee deducted from salary', 'Month fixed fee deducted from salary', 'Month fixed fee deducted from salary', 1, NULL, '2018-01-29 16:13:45', '2018-01-29 16:13:45'),
(2, 1, 'PAYMENTHALFCONT', 1, 'Payment at half contract', 'Payment at half contract', 'Payment at half contract', 'Payment at half contract', 'Paiement à la moitié du contrat', 'Payment at half contract', 'ชำระเงินตามสัญญาครึ่งหนึ่ง', 'Payment at half contract', 'Payment at half contract', 'Payment at half contract', 'Payment at half contract', 1, NULL, '2018-01-29 16:13:45', '2018-01-29 16:13:45'),
(3, 1, 'WORKMORE', 1, 'Days worked for free at the end of the contract', 'Days worked for free at the end of the contract', 'Days worked for free at the end of the contract', 'Days worked for free at the end of the contract', 'Jours travaillés sans rémunération à la fin du contrat', 'Days worked for free at the end of the contract', 'วันทำงานฟรีเมื่อสิ้นสุดสัญญา', 'Days worked for free at the end of the contract', 'Days worked for free at the end of the contract', 'Days worked for free at the end of the contract', 'Days worked for free at the end of the contract', 1, NULL, '2018-01-29 16:15:25', '2018-01-29 16:15:25');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_payment_frequencies`
--

CREATE TABLE `cl_app_payment_frequencies` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_app_payment_frequencies` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'DAY', 1, 'Daily', 'Daily', 'Daily', 'Daily', 'Journalier', NULL, 'ประจำวัน', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-23 19:36:53', '2017-11-23 19:36:53'),
(2, 1, 'WEEK', 1, 'Weekly', 'Weekly', 'Weekly', 'Weekly', 'Hebdomadaire', NULL, 'รายสัปดาห์', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-23 19:36:53', '2017-11-23 19:36:53'),
(3, 1, 'MON', 1, 'Monthly', 'Monthly', 'Monthly', 'Monthly', 'Mensuel', NULL, 'รายเดือน', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-23 19:36:53', '2017-11-23 19:36:53');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_power_units`
--

CREATE TABLE `cl_app_power_units` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_app_prod_data_entry_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'MAN', 1, 'Manual entry', 'Data entry is done by the user', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 11:10:25', '2017-09-23 11:10:25'),
(2, 1, 'COMP', 1, 'Computarized', 'Date are computed by the system', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 11:10:25', '2017-09-23 11:10:25');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_propulsion_types`
--

CREATE TABLE `cl_app_propulsion_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_app_quantity_units` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `CL_QUANTITY_UNIT_TYPE_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'LBS', 1, 'Pounds', 'Pounds (Lbs.) as a weight quantity type', 'Pounds (Lbs.)', 'Pounds (Lbs.)', 'Livre anglaise (unité de poids)', NULL, 'ปอนด์อังกฤษ (หน่วยน้ำหนัก)', NULL, NULL, NULL, NULL, 3, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(2, 1, 'KG', 1, 'Kg', 'Kilograms as a weight quantity type', 'Kilograms', 'Kilograms', 'Kilogrammes', NULL, 'กิโลกรัม', NULL, NULL, NULL, NULL, 3, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(3, 1, 'UNITS', 1, 'Units', 'Units as quantity type', 'Units as quantity type', 'Units as quantity type', 'Unité (nombre)', NULL, 'หน่วย (จำนวน)', NULL, NULL, NULL, NULL, 4, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(4, 1, 'CASES', 1, 'Cases', 'Cases as quantity type', 'Cases as quantity type', 'Cases as quantity type', 'Caisses (unité de quantité)', NULL, 'คดี (หน่วยปริมาณ)', NULL, NULL, NULL, NULL, 4, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(5, 1, 'M', 1, 'Meters', 'Meters as length units', 'Meters', 'Meters', 'Mètres', NULL, 'เมตร', NULL, NULL, NULL, NULL, 1, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(6, 1, 'M3', 1, 'Cubic meters', 'Cubic meters as volume units', 'Cubic meters', 'Cubic meters', 'Mètres Cubes', NULL, 'ลูกบาศก์เมตร', NULL, NULL, NULL, NULL, 2, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(7, 1, 'FEET', 1, 'Feet', 'Feet as length units', 'Feet', 'Feet', 'Pied anglais', NULL, 'เท้าอังกฤษ', NULL, NULL, NULL, NULL, 1, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(8, 1, 'FEET3', 1, 'Cubic feet', 'Cubic feet as volume units', 'Cubic feet', 'Cubic feet', 'Pied cube', NULL, 'ลูกบาศก์ฟุต', NULL, NULL, NULL, NULL, 2, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(9, 1, 'LIT', 1, 'Liters', 'Liters as volume units', 'Liters', 'Liters', 'Litres', NULL, 'ลิตร', NULL, NULL, NULL, NULL, 2, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(10, 1, 'GALL', 1, 'Gallons', 'Gallons as volume units', 'Gallons', 'Gallons', 'Galons', NULL, 'แกลลอน', NULL, NULL, NULL, NULL, 2, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(11, 1, 'MT', 1, 'Metric tons', 'Metric tons as tonnage units', 'Metric tons', 'Metric tons', 'Tonnes métriques', NULL, 'เมตริกตัน', NULL, NULL, NULL, NULL, 5, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(12, 1, 'HRS', 1, 'Hours', 'Hours fished', 'Hours fished', 'Hours fished', 'Heures passées à pêcher', NULL, 'เวลาที่ใช้ตกปลา', NULL, NULL, NULL, NULL, 6, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(13, 1, 'DAYS', 1, 'Days', 'Days fished', 'Days fished', 'Days fished', 'Jours passés à pêcher', NULL, 'วันที่ใช้ตกปลา', NULL, NULL, NULL, NULL, 6, 1, 'Initial import', '2014-12-31 18:00:00', '2017-09-12 13:32:19'),
(14, 1, 'HA', 1, 'Hectares', 'Hectares as length units', 'Hectares ', 'Hectares ', 'Hectares ', NULL, 'เฮคเตอร์', NULL, NULL, NULL, NULL, 7, 1, '', '2017-01-04 14:11:35', '2017-09-12 13:32:19'),
(15, 1, 'M2', 1, 'Square meters', 'Square meters', 'Square meters', 'Square meters', 'Mètres carrés', NULL, 'ตารางเมตร', NULL, NULL, NULL, NULL, 7, 1, NULL, '2017-01-06 10:31:05', '2017-09-12 13:32:19'),
(16, 1, 'pH', 1, 'pH', 'pH unit', 'pH unit', 'pH unit', 'Unité de ph', NULL, 'หน่วย pH', NULL, NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:33:18', '2017-09-12 13:32:19'),
(17, 1, 'T°C', 1, 'Degree Celsius', 'Temperature in Celsius', 'Degree Celsius', 'Degree Celsius', 'Degrés Celsius', NULL, 'องศาเซลเซียส', NULL, NULL, NULL, NULL, 9, 1, NULL, '2017-01-06 10:39:41', '2017-09-12 13:32:19'),
(18, 1, 'T°F', 1, 'Degree Fahrenheit', 'Temperature in Fahrenheit', 'Degree Fahrenheit', 'Degree Fahrenheit', 'Degrés Fahrenheit', NULL, 'องศาฟาเรนไฮต์', NULL, NULL, NULL, NULL, 9, 1, NULL, '2017-01-06 10:40:24', '2017-09-12 13:32:19'),
(19, 1, 'PPM', 1, 'ppm', 'Part per million', 'Part per million', 'Part per million', 'Partie par million', NULL, 'ส่วนต่อล้าน', NULL, NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:46:06', '2017-09-12 13:32:19'),
(20, 1, 'MG/L', 1, 'mg/l', 'Milligram per liter ', 'mg/l', 'mg/l', 'mg/l', NULL, 'มิลลิกรัม / ลิตร', NULL, NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:46:06', '2017-09-12 13:32:19'),
(21, 1, 'PERCENT', 1, '%', 'Percentage', '%', '%', '%', '%', '%', NULL, NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:46:06', '2017-09-12 13:32:19'),
(22, 1, 'PERTHOUS', 1, 'ppt (‰)', 'Perthousand', 'ppt (‰)', 'ppt (‰)', 'ppt (‰)', 'ppt (‰)', 'ต่อพัน (‰)', 'ppt (‰)', NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:46:06', '2017-09-12 13:32:19'),
(23, 1, 'KG/L', 1, 'Kg/l', '\r\nKilogram per liter', 'Kg/l', 'Kg/l', 'Kg/l', 'Kg/l', 'กก. / ลิตร', 'Kg/l', NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:47:54', '2017-09-12 13:32:19'),
(24, 1, 'G/L', 1, 'g/l', 'g/l', 'g/l', 'g/l', 'g/l', NULL, 'g/l', NULL, NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:50:41', '2017-09-12 13:32:19'),
(25, 1, 'PSU', 1, 'psu', 'Practical Salinity Unit', 'psu', 'psu', 'psu', NULL, 'psu', NULL, NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:50:41', '2017-09-12 13:32:19'),
(26, 1, 'G/KG', 1, 'g/Kg', 'Gram per Kilogram (Salinity unit)', 'g/Kg', 'g/Kg', 'g/Kg', NULL, 'g/Kg', NULL, NULL, NULL, NULL, 8, 1, NULL, '2017-01-06 10:50:41', '2017-09-12 13:32:19'),
(27, 1, 'FEET2', 1, 'Square feet', 'Square feet as area unit', 'Square feet', 'Square feet', 'Pieds carrés', NULL, 'ตารางฟุต', NULL, NULL, NULL, NULL, 7, 1, NULL, '2017-01-06 10:53:14', '2017-09-12 13:32:19'),
(28, 1, 'ACRE', 1, 'Acre', 'Acre as area unit', 'Acre', 'Acre', 'Acre', NULL, 'เอเคอร์', NULL, NULL, NULL, NULL, 7, 1, NULL, '2017-01-06 10:53:40', '2017-09-12 13:32:19'),
(29, 1, 'RAI', 1, 'Rai (area)', 'Rai area thai unit', 'Rai area thai unit', 'Rai area thai unit', 'Rai unité de surface thai', NULL, 'ไร่', NULL, NULL, NULL, NULL, 7, 1, NULL, '2017-01-09 08:16:06', '2017-09-12 13:32:19');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_quantity_unit_types`
--

CREATE TABLE `cl_app_quantity_unit_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL,
  `CODE` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_app_quantity_unit_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'LEN', 1, 'Length units', 'For quantity units modeling lengths', 'Length units', 'Length units', 'Unités de longueur', NULL, 'หน่วยความยาว', NULL, NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(2, 1, 'VOL', 1, 'Volume', 'For quantity units modeling volumes', 'Volume Units', 'Volume Units', 'Unités de Volume', NULL, 'ปริมาณ', NULL, NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(3, 1, 'WGT', 1, 'Weight', 'For quantity units modeling weights', 'Weight', 'Weight', 'Unités de poids', NULL, 'หน่วยน้ำหนัก', NULL, NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(4, 1, 'ITM', 1, 'Item Units', 'For quantity units modeling items', 'Item Units', 'Item Units', 'Unités pour les unités (éléments)', NULL, 'หน่วยสำหรับหน่วย (องค์ประกอบ)', NULL, NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(5, 1, 'TON', 1, 'Tonnage Units (Vessel)', 'For quantity units modeling tonnages (vessel)', 'Tonnage Units (Vessel)', 'Tonnage Units (Vessel)', 'Unités de tonnage (Navire)', NULL, 'หน่วยระวางน้ำหนัก (เรือ)', NULL, NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(6, 1, 'EFF', 1, 'Effort (Fisheries)', 'For quantity units modeling fishing effort', 'Effort (Fisheries)', 'Effort (Fisheries)', 'Effort (Pêche)', NULL, 'ความพยายาม (ตกปลา)', NULL, NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 23:00:00', '2017-09-12 13:31:44'),
(7, 1, 'AREA', 1, 'Area unit', 'For quantity units modeling area or surface', 'Area unit', 'Area unit', 'Unité de surface', NULL, 'หน่วยพื้นผิว', NULL, NULL, NULL, NULL, 1, NULL, '2017-01-05 23:00:00', '2017-09-12 13:31:44'),
(8, 1, 'PHYCHEM', 1, 'Physics and Chemistry units', 'Any unit used in physics and Chemistry (except temperature)', 'Physics and Chemistry units', 'Physics and Chemistry units', 'Unités physico-chimiques', NULL, 'หน่วยกายภาพและเคมี', NULL, NULL, NULL, NULL, 1, NULL, '2017-01-05 23:00:00', '2017-09-12 13:31:44'),
(9, 1, 'TEMP', 1, 'Temperature units', 'Temperature as  measure unit', 'Temperature units', 'Temperature units', 'Unités de température', NULL, 'หน่วยของอุณหภูมิ', NULL, NULL, NULL, NULL, 1, NULL, '2017-01-05 23:00:00', '2017-09-12 13:31:44');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_soil_analysis_types`
--

CREATE TABLE `cl_app_soil_analysis_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_app_soil_analysis_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'GEN', 1, 'Soil Analysis', 'Soil Analysis (no specific information known)', 'Soil Analysis', 'Soil Analysis', 'Analyse de sol', NULL, 'การวิเคราะห์ดิน', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-20 09:58:43', '2017-09-20 09:58:43');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_staff_declaration_types`
--

CREATE TABLE `cl_app_staff_declaration_types` (
  `ID` int(11) NOT NULL COMMENT 'declaration type ID',
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` char(2) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

--
-- Contenu de la table `cl_app_termination_contract_reasons`
--

INSERT INTO `cl_app_termination_contract_reasons` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'BADWORK', 1, 'Not satisfactory work', 'Not satisfactory work', 'Not satisfactory work', 'Not satisfactory work', 'Travail non satisfaisant', 'Not satisfactory work', 'ไม่น่าพอใจงาน', 'Not satisfactory work', 'Not satisfactory work', 'Not satisfactory work', 'Not satisfactory work', 1, NULL, '2018-01-29 16:17:50', '2018-01-29 16:17:50'),
(2, 1, 'SICK', 1, 'Long period of sickness', 'Long period of sickness', 'Long period of sickness', 'Long period of sickness', 'Longues périodes de maladie', 'Long period of sickness', 'ระยะเวลาการป่วยเป็นเวลานาน', 'Long period of sickness', 'Long period of sickness', 'Long period of sickness', 'Long period of sickness', 1, NULL, '2018-01-29 16:17:50', '2018-01-29 16:17:50'),
(3, 1, 'NORESPECT', 1, 'Lack of respect for employer', 'Lack of respect for employer', 'Lack of respect for employer', 'Lack of respect for employer', 'Manque de respect envers l\'employeur', 'Lack of respect for employer', 'ขาดความเคารพต่อนายจ้าง', 'Lack of respect for employer', 'Lack of respect for employer', 'Lack of respect for employer', 'Lack of respect for employer', 1, NULL, '2018-01-29 16:18:44', '2018-01-29 16:18:44'),
(99, 1, 'OTHER', 1, 'Other', 'Other', 'Other', 'Other', 'Autre', 'Other', 'อื่น ๆ', 'Other', 'Other', 'Other', NULL, 1, NULL, '2018-01-29 16:19:19', '2018-01-29 16:19:19');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_tiling_activity_types`
--

CREATE TABLE `cl_app_tiling_activity_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_app_tiling_activity_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'SHOV', 1, 'Manual Shoveling', 'Manual Shoveling', 'Manual Shoveling', 'Manual Shoveling', 'Bechage manuel', NULL, 'คู่มือการพลิกคว่ำ', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 11:14:53', '2017-09-23 11:14:53'),
(2, 1, 'HOE', 1, 'Manual hoeing', 'Manual hoeing', 'Manual hoeing', 'Manual hoeing', 'Sarclage manuel', NULL, 'คู่มือจอบ', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 11:17:07', '2017-09-23 11:17:07'),
(3, 1, 'PLOUGH', 1, 'Animal/mechanical ploughing', 'Animal/mechanical ploughing', 'Animal/mechanical ploughing', 'Animal/mechanical ploughing', 'Labourage animal ou mécanique', NULL, 'การไถพรวนสัตว์ / กล', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 11:17:07', '2017-09-23 11:17:07');

-- --------------------------------------------------------

--
-- Structure de la table `cl_app_vessel_characteristics`
--

CREATE TABLE `cl_app_vessel_characteristics` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
-- Structure de la table `cl_app_water_supply_types`
--

CREATE TABLE `cl_app_water_supply_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
-- Structure de la table `cl_farm_building_types`
--

CREATE TABLE `cl_farm_building_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_farm_plot_activity_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'SOWI', 1, 'Sowing', 'Sowing', 'Sowing', 'Sowing', 'Plantation', NULL, 'ปลูกอ้อย', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:56:40', '2017-09-23 12:56:40'),
(2, 1, 'WEED', 1, 'weeding', 'weeding', 'weeding', 'weeding', 'Désherbage', NULL, 'ฉีดยากำจัดวัชพืช', '', NULL, NULL, NULL, 1, NULL, '2017-09-23 12:56:40', '2017-09-23 12:56:40'),
(3, 1, 'HARV1', 1, 'Harvesting', 'Harvesting', 'Harvesting', 'Harvesting', 'Récolte', NULL, 'เก็บเกี่ยว', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(4, 1, 'HARV2', 1, 'Harvesting by hands', 'Harvesting by hands', 'Harvesting by hands', 'Harvesting by hands', 'Récolte manuelle', NULL, 'ตัดอ้อยด้วยมือ', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(5, 1, 'HARV3', 1, 'Harvesting with machine', 'Harvesting with machine', 'Harvesting with machine', 'Harvesting with machine', 'Récolte mécanique', NULL, 'ตัดอ้อยด้วยรถตัด', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(6, 1, 'IRRI', 1, 'Irrigation', 'Irrigation', 'Irrigation', 'Irrigation', 'Irrigation', NULL, 'ให้น้ำ', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(7, 1, 'PEST', 1, 'Pesticide use', 'Pesticide use', 'Pesticide use', 'Pesticide use', 'Utilisation de pesticides', NULL, 'การใช้สารกำจัดศัตรูพืช', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(8, 1, 'HERB', 1, 'Herbicide use', 'Herbicide use', 'Herbicide use', 'Herbicide use', 'Utilisation d\'herbicides', NULL, 'การใช้สารเคมีกำจัดวัชพืช', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(9, 1, 'FUNG', 1, 'Fungicide use', 'Fungicide use', 'Fungicide use', 'Fungicide use', 'Utilisation de fongicides', NULL, 'การใช้สารฆ่าเชื้อรา', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(10, 1, 'FERT', 1, 'Fertilizer use', 'Fertilizer use', 'Fertilizer use', 'Fertilizer use', 'Utilisation d\'engrais', NULL, 'ใส่ปุ๋ย', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 12:59:56', '2017-09-23 12:59:56'),
(11, 1, 'TILL', 1, 'Soil Tillage', 'Soil tillage', 'Soil tillage', 'Soil tillage', 'Travail du sol', NULL, 'ไถ เตรียมดิน', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 13:01:37', '2017-09-23 13:01:37'),
(12, 1, 'TRANS', 1, 'Transport harvested crop out of field', 'Transport harvested crop out of field', 'Transport harvested crop out of field', 'Transport harvested crop out of field', 'Transport de la récolte hors du champs', NULL, 'ขับรถบรรทุก', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-28 17:28:33', '2017-11-28 17:28:33'),
(99, 1, 'OTHER', 1, 'Other', 'Other', 'Other', 'Other', 'Autres', NULL, 'อื่นๆ', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 13:01:37', '2017-09-23 13:01:37');

-- --------------------------------------------------------

--
-- Structure de la table `cl_farm_pond_activity_types`
--

CREATE TABLE `cl_farm_pond_activity_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_farm_pond_activity_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'PONDSTOCK', 1, 'Pond Stocking ', 'Pond Stocking with seed/juveniles', 'Pond Stocking ', 'Pond Stocking ', 'Ensemmencement Bassin', 'Pond Stocking ', 'การปล่อยลูกพันธ์ุ', 'Pond Stocking ', 'Pond Stocking ', 'Pond Stocking ', 'Pond Stocking ', 1, NULL, '2018-01-17 09:31:45', '2018-01-17 09:31:45'),
(2, 1, 'PONDHARV', 1, 'Pond Harvesting', 'Pond Harvesting', 'Pond Harvesting', 'Pond Harvesting', 'Récolte du bassin', 'Pond Harvesting', 'การเก็บเกี่ยวผลผลิตเมื่อครบรอบการเลี้ยง', 'Pond Harvesting', 'Pond Harvesting', 'Pond Harvesting', 'Pond Harvesting', 1, NULL, '2018-01-17 09:31:45', '2018-01-17 09:31:45'),
(3, 1, 'FEEDUSE', 1, 'Feeding', 'Feeding', 'Feeding', 'Feeding', 'Nourrir', 'Feeding', 'การให้อาหาร', 'Feeding', 'Feeding', 'Feeding', 'Feeding', 1, NULL, '2018-01-29 20:16:39', '2018-01-29 20:16:39'),
(4, 1, 'ADDITIVEUSE', 1, 'Distribution of Additive', 'Distribution of Additive', 'Distribution of Additive', 'Distribution of Additive', 'Distribution d\'additifs', 'Distribution of Additive', 'การใช้ยาสารเคมีหรือผลิตภัณฑ์อื่นๆในบ่อเลี้ยง', 'Distribution of Additive', 'Distribution of Additive', 'Distribution of Additive', 'Distribution of Additive', 3, NULL, '2018-02-21 17:13:11', '2018-02-21 17:13:11'),
(5, 1, 'ANTIBIOUSE', 1, 'Distribution of Antibiotics', 'Distribution of Antibiotics', 'Distribution of Antibiotics', 'Distribution of Antibiotics', 'Distribution d\'antibiotics', 'Distribution of Antibiotics', 'การใช้ยาปฎิชีวนะในบ่อเลี้ยง', 'Distribution of Antibiotics', 'Distribution of Antibiotics', 'Distribution of Antibiotics', 'Distribution of Antibiotics', 3, NULL, '2018-02-21 16:13:11', '2018-02-21 16:13:11'),
(6, 1, 'PONDLIME', 1, 'Pond liming', 'Pond liming', 'Pond liming', 'Pond liming', 'Chaulage du bassin', 'Pond liming', 'การใช้ปูนในบ่อเลี้ยง', 'Pond liming', 'Pond liming', 'Pond liming', 'Pond liming', 3, NULL, '2018-02-21 16:13:11', '2018-02-21 16:13:11'),
(7, 1, 'PONDWASH', 1, 'Pond washing', 'Pond washing', 'Pond washing', 'Pond washing', 'Nettoyage du bassin', 'Pond washing', 'การทำความสะอาดบ่อเลี้ยง', 'Pond washing', 'Pond washing', 'Pond washing ', 'Pond washing', 3, NULL, '2018-02-21 16:13:11', '2018-02-21 16:13:11'),
(8, 1, 'PONDMAINT', 1, 'Pond maintenance', 'Pond maintenance  ', 'Pond maintenance', 'Pond maintenance', 'Nettoyage du bassin', 'Pond maintenance', 'การทำความสะอาดบ่อเลี้ยง', 'Pond maintenance', 'Pond maintenance', 'Pond maintenance', 'Pond maintenance', 3, NULL, '2018-02-21 16:13:11', '2018-02-21 16:13:11'),
(9, 1, 'FERTUSE', 1, 'Pond Fertilizing', 'Pond Fertilizing  ', 'Pond Fertilizing', 'Pond Fertilizing', 'Fertilisation du bassin', 'Pond Fertilizing', 'การหมักบ่อเลี้ยง', 'Pond Fertilizing', 'Pond Fertilizing', 'Pond Fertilizing', 'Pond Fertilizing', 3, NULL, '2018-02-21 16:13:11', '2018-02-21 16:13:11'),
(10, 1, 'PONDLEVEL', 1, 'Pond leveling', 'Pond leveling  ', 'Pond leveling', 'Pond leveling', 'Mise à niveau du bassin', 'Pond leveling', 'การหมักบ่อเลี้ยง', 'Pond leveling', 'Pond leveling', 'Pond Fertilizing', 'Pond leveling', 3, NULL, '2018-02-21 16:13:11', '2018-02-21 16:13:11');

-- --------------------------------------------------------

--
-- Structure de la table `cl_farm_pond_types`
--

CREATE TABLE `cl_farm_pond_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_farm_pond_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'RES', 1, 'Reservoir', 'Pond as water reservoir', 'Reservoir', 'Reservoir', 'Réservoir d\'eau', 'Reservoir', 'อ่างเก็บน้ำ', 'Reservoir', 'Reservoir', 'Reservoir', 'Reservoir', 1, NULL, '2017-01-06 11:19:45', '2017-09-12 13:35:05'),
(2, 1, 'GROW', 1, 'Pond for growing', 'Pond for fish growing', 'Pond for growing', 'Pond for growing', 'Bassin pour engraissement', 'Pond for growing', 'บ่อเพาะปลูก', 'Pond for growing', 'Pond for growing', 'Pond for growing', NULL, 1, NULL, '2017-01-06 11:25:19', '2017-09-12 13:35:05'),
(3, 1, 'REP', 1, 'Pond for reproduction', 'Pond for fish reproduction', 'Pond for fish reproduction', 'Pond for fish reproduction', 'Bassin pour la reproduction', 'Pond for fish reproduction', 'บ่อเพื่อการสืบพันธุ์', 'Pond for fish reproduction', 'Pond for fish reproduction', 'Pond for fish reproduction', NULL, 1, NULL, '2017-01-06 11:25:19', '2017-09-12 13:35:05'),
(4, 1, 'SEW', 1, 'Sewage Pond', 'Pond for sewage cleaning', 'Pond for sewage cleaning', 'Pond for sewage cleaning', 'Bassin d\'épandange', 'Pond for sewage cleaning', 'บ่อบำบัดน้ำเสีย', 'Pond for sewage cleaning', 'Pond for sewage cleaning', 'Pond for sewage cleaning', 'Pond for sewage cleaning', 1, NULL, '2017-01-06 11:25:19', '2017-09-12 13:35:05');

-- --------------------------------------------------------

--
-- Structure de la table `cl_farm_production_types`
--

CREATE TABLE `cl_farm_production_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
-- Structure de la table `cl_farm_types`
--

CREATE TABLE `cl_farm_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_farm_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'FARMAQ', 1, 'Aquaculture Farm (growing)', 'Aquaculture Farm (growing)', 'Aquaculture Farm (growing)', 'Aquaculture Farm (growing)', 'Ferme aquacole (engraissement)', NULL, 'เพาะเลี้ยงสัตว์น้ำ (เติบโต)', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-03 11:03:11', '2017-09-12 13:28:43'),
(2, 1, 'FARMAQ-H', 1, 'Aquaculture Hatchery', 'Aquaculture Hatchery', 'Aquaculture Hatchery', 'Aquaculture Hatchery', 'Ferme aquacole de reproduction', NULL, 'เพาะเลี้ยงสัตว์น้ำเพาะเลี้ยงสัตว์น้ำ', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43'),
(3, 1, 'FARMAQ-M', 1, 'Aquaculture Farm growing and hatchery', 'Aquaculture Farm growing and hatchery', 'Aquaculture Farm growing and hatchery', 'Aquaculture Farm growing and hatchery', 'Ferme aquacole mixte reproduction et engraissement', NULL, 'การเพาะเลี้ยงสัตว์น้ำการเพาะเลี้ยงและการเพาะพันธุ์', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-03 11:05:46', '2017-09-12 13:28:43'),
(4, 1, 'FARMSUG', 1, 'Sugar cane Farm', 'Sugar cane Farm production', 'Sugar cane Farm', 'Sugar cane Farm', 'Ferme canne à sucre', NULL, 'ฟาร์มอ้อย', NULL, NULL, NULL, NULL, 1, NULL, '2016-10-18 17:42:16', '2017-09-12 13:28:43');

-- --------------------------------------------------------

--
-- Structure de la table `cl_fish_fishing_types`
--

CREATE TABLE `cl_fish_fishing_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_ref_commodities` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `CPC_CODE`, `HS_CODE`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, '0156', 1, 'Sugar Cane', 'Sugar cane - Saccharum officinarum', '0182', '1212.99', 'Sugar Cane', 'Sugar Cane', 'Sucre de Canne', NULL, 'อ้อย', NULL, NULL, NULL, NULL, 1, NULL, '2017-09-23 08:16:35', '2017-09-23 08:16:35');

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_countries`
--

CREATE TABLE `cl_ref_countries` (
  `ID` int(11) NOT NULL COMMENT 'The COUNTRIES codelist ID',
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` char(2) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_ref_countries` (`ID`, `ENABLED`, `CODE`, `RANKING`, `ISO_3_CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'AM', 1, 'ARM', 'Armenia', 'the Republic of Armenia', 'Armenia', 'Armenia', 'Armenia', 'Armenia', 'Armenia', 'Armenia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(2, 1, 'AF', 1, 'AFG', 'Afghanistan', 'the Islamic Republic of Afghanistan', 'Afghanistan', 'Afghanistan', 'Afghanistan', 'Afghanistan', 'Afghanistan', 'Afghanistan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(3, 1, 'AL', 1, 'ALB', 'Albania', 'the Republic of Albania', 'Albania', 'Albania', 'Albania', 'Albania', 'Albania', 'Albania', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(4, 1, 'DZ', 1, 'DZA', 'Algeria', 'the People\'s Democratic Republic of Algeria', 'Algeria', 'Algeria', 'Algeria', 'Algeria', 'Algeria', 'Algeria', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(5, 1, 'AS', 1, 'ASM', 'American Samoa', 'American Samoa', 'American Samoa', 'American Samoa', 'American Samoa', 'American Samoa', 'American Samoa', 'American Samoa', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(6, 1, 'AD', 1, 'AND', 'Andorra', 'the Principality of Andorra', 'Andorra', 'Andorra', 'Andorra', 'Andorra', 'Andorra', 'Andorra', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(7, 1, 'AO', 1, 'AGO', 'Angola', 'the Republic of Angola', 'Angola', 'Angola', 'Angola', 'Angola', 'Angola', 'Angola', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(8, 1, 'AG', 1, 'ATG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'Antigua and Barbuda', 'Antigua and Barbuda', 'Antigua and Barbuda', 'Antigua and Barbuda', 'Antigua and Barbuda', 'Antigua and Barbuda', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(9, 1, 'AR', 1, 'ARG', 'Argentina', 'the Argentine Republic', 'Argentina', 'Argentina', 'Argentina', 'Argentina', 'Argentina', 'Argentina', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(10, 1, 'AU', 1, 'AUS', 'Australia', 'Australia', 'Australia', 'Australia', 'Australia', 'Australia', 'Australia', 'Australia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(11, 1, 'AT', 1, 'AUT', 'Austria', 'the Republic of Austria', 'Austria', 'Austria', 'Austria', 'Austria', 'Austria', 'Austria', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(12, 1, 'BS', 1, 'BHS', 'Bahamas', 'the Commonwealth of the Bahamas', 'Bahamas', 'Bahamas', 'Bahamas', 'Bahamas', 'Bahamas', 'Bahamas', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(13, 1, 'BH', 1, 'BHR', 'Bahrain', 'the Kingdom of Bahrain', 'Bahrain', 'Bahrain', 'Bahrain', 'Bahrain', 'Bahrain', 'Bahrain', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(14, 1, 'BB', 1, 'BRB', 'Barbados', 'Barbados', 'Barbados', 'Barbados', 'Barbados', 'Barbados', 'Barbados', 'Barbados', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(15, 1, 'BD', 1, 'BGD', 'Bangladesh', 'the People\'s Republic of Bangladesh', 'Bangladesh', 'Bangladesh', 'Bangladesh', 'Bangladesh', 'Bangladesh', 'Bangladesh', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(16, 1, 'BM', 1, 'BMU', 'Bermuda', 'Bermuda', 'Bermuda', 'Bermuda', 'Bermuda', 'Bermuda', 'Bermuda', 'Bermuda', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(17, 1, 'BT', 1, 'BTN', 'Bhutan', 'the Kingdom of Bhutan', 'Bhutan', 'Bhutan', 'Bhutan', 'Bhutan', 'Bhutan', 'Bhutan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(18, 1, 'BO', 1, 'BOL', 'Bolivia (Plurinational State of)', 'the Plurinational State of Bolivia', 'Bolivia (Plurinational State of)', 'Bolivia (Plurinational State of)', 'Bolivia (Plurinational State of)', 'Bolivia (Plurinational State of)', 'Bolivia (Plurinational State of)', 'Bolivia (Plurinational State of)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(19, 1, 'BW', 1, 'BWA', 'Botswana', 'the Republic of Botswana', 'Botswana', 'Botswana', 'Botswana', 'Botswana', 'Botswana', 'Botswana', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(20, 1, 'BR', 1, 'BRA', 'Brazil', 'the Federative Republic of Brazil', 'Brazil', 'Brazil', 'Brazil', 'Brazil', 'Brazil', 'Brazil', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(21, 1, 'AW', 1, 'ABW', 'Aruba', 'Aruba', 'Aruba', 'Aruba', 'Aruba', 'Aruba', 'Aruba', 'Aruba', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(22, 1, 'BZ', 1, 'BLZ', 'Belize', 'Belize', 'Belize', 'Belize', 'Belize', 'Belize', 'Belize', 'Belize', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(23, 1, 'IO', 1, 'IOT', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'British Indian Ocean Territory', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(24, 1, 'SB', 1, 'SLB', 'Solomon Islands', 'Solomon Islands', 'Solomon Islands', 'Solomon Islands', 'Solomon Islands', 'Solomon Islands', 'Solomon Islands', 'Solomon Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(25, 1, 'BN', 1, 'BRN', 'Brunei Darussalam', 'Brunei Darussalam', 'Brunei Darussalam', 'Brunei Darussalam', 'Brunei Darussalam', 'Brunei Darussalam', 'Brunei Darussalam', 'Brunei Darussalam', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(26, 1, 'BG', 1, 'BGR', 'Bulgaria', 'the Republic of Bulgaria', 'Bulgaria', 'Bulgaria', 'Bulgaria', 'Bulgaria', 'Bulgaria', 'Bulgaria', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(27, 1, 'MM', 1, 'MMR', 'Myanmar', 'the Republic of the Union of Myanmar', 'Myanmar', 'Myanmar', 'Myanmar', 'Myanmar', 'Myanmar', 'Myanmar', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(28, 1, 'BI', 1, 'BDI', 'Burundi', 'the Republic of Burundi', 'Burundi', 'Burundi', 'Burundi', 'Burundi', 'Burundi', 'Burundi', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(29, 1, 'AQ', 1, 'ATA', 'Antarctica', 'Antarctica', 'Antarctica', 'Antarctica', 'Antarctica', 'Antarctica', 'Antarctica', 'Antarctica', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(30, 1, 'BV', 1, 'BVT', 'Bouvet Island', 'Bouvet Island', 'Bouvet Island', 'Bouvet Island', 'Bouvet Island', 'Bouvet Island', 'Bouvet Island', 'Bouvet Island', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(31, 1, 'CM', 1, 'CMR', 'Cameroon', 'the Republic of Cameroon', 'Cameroon', 'Cameroon', 'Cameroon', 'Cameroon', 'Cameroon', 'Cameroon', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(32, 1, 'CA', 1, 'CAN', 'Canada', 'Canada', 'Canada', 'Canada', 'Canada', 'Canada', 'Canada', 'Canada', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(33, 1, 'CV', 1, 'CPV', 'Cape Verde', 'the Republic of Cape Verde', 'Cape Verde', 'Cape Verde', 'Cape Verde', 'Cape Verde', 'Cape Verde', 'Cape Verde', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(34, 1, 'KY', 1, 'CYM', 'Cayman Islands', 'Cayman Islands', 'Cayman Islands', 'Cayman Islands', 'Cayman Islands', 'Cayman Islands', 'Cayman Islands', 'Cayman Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(35, 1, 'CF', 1, 'CAF', 'Central African Republic', 'the Central African Republic', 'Central African Republic', 'Central African Republic', 'Central African Republic', 'Central African Republic', 'Central African Republic', 'Central African Republic', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(36, 1, 'LK', 1, 'LKA', 'Sri Lanka', 'the Democratic Socialist Republic of Sri Lanka', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(37, 1, 'TD', 1, 'TCD', 'Chad', 'the Republic of Chad', 'Chad', 'Chad', 'Chad', 'Chad', 'Chad', 'Chad', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(38, 1, 'CL', 1, 'CHL', 'Chile', 'the Republic of Chile', 'Chile', 'Chile', 'Chile', 'Chile', 'Chile', 'Chile', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(39, 1, 'CN', 1, 'CHN', 'China', 'the People\'s Republic of China', 'China', 'China', 'China', 'China', 'China', 'China', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(40, 1, 'CX', 1, 'CXR', 'Christmas Island', 'Christmas Island', 'Christmas Island', 'Christmas Island', 'Christmas Island', 'Christmas Island', 'Christmas Island', 'Christmas Island', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(41, 1, 'CC', 1, 'CCK', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(42, 1, 'CO', 1, 'COL', 'Colombia', 'the Republic of Colombia', 'Colombia', 'Colombia', 'Colombia', 'Colombia', 'Colombia', 'Colombia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(43, 1, 'KM', 1, 'COM', 'Comoros', 'the Union of the Comoros', 'Comoros', 'Comoros', 'Comoros', 'Comoros', 'Comoros', 'Comoros', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(44, 1, 'CG', 1, 'COG', 'Congo', 'the Republic of the Congo', 'Congo', 'Congo', 'Congo', 'Congo', 'Congo', 'Congo', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(45, 1, 'CK', 1, 'COK', 'Cook Islands', 'the Cook Islands', 'Cook Islands', 'Cook Islands', 'Cook Islands', 'Cook Islands', 'Cook Islands', 'Cook Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(46, 1, 'CR', 1, 'CRI', 'Costa Rica', 'the Republic of Costa Rica', 'Costa Rica', 'Costa Rica', 'Costa Rica', 'Costa Rica', 'Costa Rica', 'Costa Rica', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(47, 1, 'CU', 1, 'CUB', 'Cuba', 'the Republic of Cuba', 'Cuba', 'Cuba', 'Cuba', 'Cuba', 'Cuba', 'Cuba', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(48, 1, 'CY', 1, 'CYP', 'Cyprus', 'the Republic of Cyprus', 'Cyprus', 'Cyprus', 'Cyprus', 'Cyprus', 'Cyprus', 'Cyprus', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(49, 1, 'AZ', 1, 'AZE', 'Azerbaijan', 'the Republic of Azerbaijan', 'Azerbaijan', 'Azerbaijan', 'Azerbaijan', 'Azerbaijan', 'Azerbaijan', 'Azerbaijan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(50, 1, 'BJ', 1, 'BEN', 'Benin', 'the Republic of Benin', 'Benin', 'Benin', 'Benin', 'Benin', 'Benin', 'Benin', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(51, 1, 'DK', 1, 'DNK', 'Denmark', 'the Kingdom of Denmark', 'Denmark', 'Denmark', 'Denmark', 'Denmark', 'Denmark', 'Denmark', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(52, 1, 'DM', 1, 'DMA', 'Dominica', 'the Commonwealth of Dominica', 'Dominica', 'Dominica', 'Dominica', 'Dominica', 'Dominica', 'Dominica', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(53, 1, 'DO', 1, 'DOM', 'Dominican Republic', 'the Dominican Republic', 'Dominican Republic', 'Dominican Republic', 'Dominican Republic', 'Dominican Republic', 'Dominican Republic', 'Dominican Republic', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(54, 1, 'BY', 1, 'BLR', 'Belarus', 'the Republic of Belarus', 'Belarus', 'Belarus', 'Belarus', 'Belarus', 'Belarus', 'Belarus', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(55, 1, 'EC', 1, 'ECU', 'Ecuador', 'the Republic of Ecuador', 'Ecuador', 'Ecuador', 'Ecuador', 'Ecuador', 'Ecuador', 'Ecuador', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(56, 1, 'EG', 1, 'EGY', 'Egypt', 'the Arab Republic of Egypt', 'Egypt', 'Egypt', 'Egypt', 'Egypt', 'Egypt', 'Egypt', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(57, 1, 'SV', 1, 'SLV', 'El Salvador', 'the Republic of El Salvador', 'El Salvador', 'El Salvador', 'El Salvador', 'El Salvador', 'El Salvador', 'El Salvador', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(58, 1, 'GQ', 1, 'GNQ', 'Equatorial Guinea', 'the Republic of Equatorial Guinea', 'Equatorial Guinea', 'Equatorial Guinea', 'Equatorial Guinea', 'Equatorial Guinea', 'Equatorial Guinea', 'Equatorial Guinea', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(59, 1, 'EE', 1, 'EST', 'Estonia', 'the Republic of Estonia', 'Estonia', 'Estonia', 'Estonia', 'Estonia', 'Estonia', 'Estonia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(60, 1, 'FO', 1, 'FRO', 'Faroe Islands (Associate Member)', 'Faroe Islands', 'Faroe Islands (Associate Member)', 'Faroe Islands (Associate Member)', 'Faroe Islands (Associate Member)', 'Faroe Islands (Associate Member)', 'Faroe Islands (Associate Member)', 'Faroe Islands (Associate Member)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(61, 1, 'FK', 1, 'FLK', 'Falkland Islands (Malvinas)', 'the Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(62, 1, 'FJ', 1, 'FJI', 'Fiji', 'the Republic of Fiji', 'Fiji', 'Fiji', 'Fiji', 'Fiji', 'Fiji', 'Fiji', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(63, 1, 'FI', 1, 'FIN', 'Finland', 'the Republic of Finland', 'Finland', 'Finland', 'Finland', 'Finland', 'Finland', 'Finland', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(64, 1, 'FR', 1, 'FRA', 'France', 'the French Republic', 'France', 'France', 'France', 'France', 'France', 'France', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(65, 1, 'GF', 1, 'GUF', 'French Guiana', 'French Guiana', 'French Guiana', 'French Guiana', 'French Guiana', 'French Guiana', 'French Guiana', 'French Guiana', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(66, 1, 'PF', 1, 'PYF', 'French Polynesia', 'French Polynesia', 'French Polynesia', 'French Polynesia', 'French Polynesia', 'French Polynesia', 'French Polynesia', 'French Polynesia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(67, 1, 'TF', 1, 'ATF', 'French Southern and Antarctic Territories', 'French Southern and Antarctic Territories', 'French Southern and Antarctic Territories', 'French Southern and Antarctic Territories', 'French Southern and Antarctic Territories', 'French Southern and Antarctic Territories', 'French Southern and Antarctic Territories', 'French Southern and Antarctic Territories', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(68, 1, 'DJ', 1, 'DJI', 'Djibouti', 'the Republic of Djibouti', 'Djibouti', 'Djibouti', 'Djibouti', 'Djibouti', 'Djibouti', 'Djibouti', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(69, 1, 'GE', 1, 'GEO', 'Georgia', 'Georgia', 'Georgia', 'Georgia', 'Georgia', 'Georgia', 'Georgia', 'Georgia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(70, 1, 'GA', 1, 'GAB', 'Gabon', 'the Gabonese Republic', 'Gabon', 'Gabon', 'Gabon', 'Gabon', 'Gabon', 'Gabon', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(71, 1, 'GM', 1, 'GMB', 'Gambia', 'the Republic of the Gambia', 'Gambia', 'Gambia', 'Gambia', 'Gambia', 'Gambia', 'Gambia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(72, 1, 'DE', 1, 'DEU', 'Germany', 'the Federal Republic of Germany', 'Germany', 'Germany', 'Germany', 'Germany', 'Germany', 'Germany', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(73, 1, 'BA', 1, 'BIH', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(74, 1, 'GH', 1, 'GHA', 'Ghana', 'the Republic of Ghana', 'Ghana', 'Ghana', 'Ghana', 'Ghana', 'Ghana', 'Ghana', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(75, 1, 'GI', 1, 'GIB', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Gibraltar', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(76, 1, 'KI', 1, 'KIR', 'Kiribati', 'the Republic of Kiribati', 'Kiribati', 'Kiribati', 'Kiribati', 'Kiribati', 'Kiribati', 'Kiribati', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(77, 1, 'GR', 1, 'GRC', 'Greece', 'the Hellenic Republic', 'Greece', 'Greece', 'Greece', 'Greece', 'Greece', 'Greece', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(78, 1, 'GL', 1, 'GRL', 'Greenland', 'Greenland', 'Greenland', 'Greenland', 'Greenland', 'Greenland', 'Greenland', 'Greenland', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(79, 1, 'GD', 1, 'GRD', 'Grenada', 'Grenada', 'Grenada', 'Grenada', 'Grenada', 'Grenada', 'Grenada', 'Grenada', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(80, 1, 'GP', 1, 'GLP', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(81, 1, 'GU', 1, 'GUM', 'Guam', 'Guam', 'Guam', 'Guam', 'Guam', 'Guam', 'Guam', 'Guam', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(82, 1, 'GT', 1, 'GTM', 'Guatemala', 'the Republic of Guatemala', 'Guatemala', 'Guatemala', 'Guatemala', 'Guatemala', 'Guatemala', 'Guatemala', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(83, 1, 'GN', 1, 'GIN', 'Guinea', 'the Republic of Guinea', 'Guinea', 'Guinea', 'Guinea', 'Guinea', 'Guinea', 'Guinea', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(84, 1, 'GY', 1, 'GUY', 'Guyana', 'the Republic of Guyana', 'Guyana', 'Guyana', 'Guyana', 'Guyana', 'Guyana', 'Guyana', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(85, 1, 'HM', 1, 'HMD', 'Heard and McDonald Islands', 'Heard Island and McDonald Island', 'Heard and McDonald Islands', 'Heard and McDonald Islands', 'Heard and McDonald Islands', 'Heard and McDonald Islands', 'Heard and McDonald Islands', 'Heard and McDonald Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(86, 1, 'HT', 1, 'HTI', 'Haiti', 'the Republic of Haiti', 'Haiti', 'Haiti', 'Haiti', 'Haiti', 'Haiti', 'Haiti', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(87, 1, 'VA', 1, 'VAT', 'Holy See', 'Holy see', 'Holy See', 'Holy See', 'Holy See', 'Holy See', 'Holy See', 'Holy See', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(88, 1, 'HN', 1, 'HND', 'Honduras', 'the Republic of Honduras', 'Honduras', 'Honduras', 'Honduras', 'Honduras', 'Honduras', 'Honduras', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(89, 1, 'HK', 1, 'HKG', 'China, Hong Kong SAR', 'China, Hong Kong Special Administrative Region', 'China, Hong Kong SAR', 'China, Hong Kong SAR', 'China, Hong Kong SAR', 'China, Hong Kong SAR', 'China, Hong Kong SAR', 'China, Hong Kong SAR', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(90, 1, 'HU', 1, 'HUN', 'Hungary', 'Hungary', 'Hungary', 'Hungary', 'Hungary', 'Hungary', 'Hungary', 'Hungary', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(91, 1, 'HR', 1, 'HRV', 'Croatia', 'the Republic of Croatia', 'Croatia', 'Croatia', 'Croatia', 'Croatia', 'Croatia', 'Croatia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(92, 1, 'IS', 1, 'ISL', 'Iceland', 'the Republic of Iceland', 'Iceland', 'Iceland', 'Iceland', 'Iceland', 'Iceland', 'Iceland', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(93, 1, 'IN', 1, 'IND', 'India', 'the Republic of India', 'India', 'India', 'India', 'India', 'India', 'India', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(94, 1, 'ID', 1, 'IDN', 'Indonesia', 'the Republic of Indonesia', 'Indonesia', 'Indonesia', 'Indonesia', 'Indonesia', 'Indonesia', 'Indonesia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(95, 1, 'IR', 1, 'IRN', 'Iran (Islamic Republic of)', 'the Islamic Republic of Iran', 'Iran (Islamic Republic of)', 'Iran (Islamic Republic of)', 'Iran (Islamic Republic of)', 'Iran (Islamic Republic of)', 'Iran (Islamic Republic of)', 'Iran (Islamic Republic of)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(96, 1, 'IQ', 1, 'IRQ', 'Iraq', 'the Republic of Iraq', 'Iraq', 'Iraq', 'Iraq', 'Iraq', 'Iraq', 'Iraq', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(97, 1, 'IE', 1, 'IRL', 'Ireland', 'Ireland', 'Ireland', 'Ireland', 'Ireland', 'Ireland', 'Ireland', 'Ireland', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(98, 1, 'IL', 1, 'ISR', 'Israel', 'the State of Israel', 'Israel', 'Israel', 'Israel', 'Israel', 'Israel', 'Israel', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(99, 1, 'IT', 1, 'ITA', 'Italy', 'the Republic of Italy', 'Italy', 'Italy', 'Italy', 'Italy', 'Italy', 'Italy', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(100, 1, 'CI', 1, 'CIV', 'Côte d\'Ivoire', 'the Republic of Côte d\'Ivoire', 'Cote d\'Ivoire', 'Cote d\'Ivoire', 'Cote d\'Ivoire', 'Cote d\'Ivoire', 'Cote d\'Ivoire', 'Cote d\'Ivoire', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(101, 1, 'KZ', 1, 'KAZ', 'Kazakhstan', 'the Republic of Kazakhstan', 'Kazakhstan', 'Kazakhstan', 'Kazakhstan', 'Kazakhstan', 'Kazakhstan', 'Kazakhstan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(102, 1, 'JM', 1, 'JAM', 'Jamaica', 'Jamaica', 'Jamaica', 'Jamaica', 'Jamaica', 'Jamaica', 'Jamaica', 'Jamaica', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(103, 1, 'JP', 1, 'JPN', 'Japan', 'Japan', 'Japan', 'Japan', 'Japan', 'Japan', 'Japan', 'Japan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(104, 1, 'JT', 1, 'JTN', 'Johnston Island', 'Johnston Island', 'Johnston Island', 'Johnston Island', 'Johnston Island', 'Johnston Island', 'Johnston Island', 'Johnston Island', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(105, 1, 'JO', 1, 'JOR', 'Jordan', 'the Hashemite Kingdom of Jordan', 'Jordan', 'Jordan', 'Jordan', 'Jordan', 'Jordan', 'Jordan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(106, 1, 'KG', 1, 'KGZ', 'Kyrgyzstan', 'the Kyrgyz Republic', 'Kyrgyzstan', 'Kyrgyzstan', 'Kyrgyzstan', 'Kyrgyzstan', 'Kyrgyzstan', 'Kyrgyzstan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(107, 1, 'KE', 1, 'KEN', 'Kenya', 'the Republic of Kenya', 'Kenya', 'Kenya', 'Kenya', 'Kenya', 'Kenya', 'Kenya', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(108, 1, 'KH', 1, 'KHM', 'Cambodia', 'the Kingdom of Cambodia', 'Cambodia', 'Cambodia', 'Cambodia', 'Cambodia', 'Cambodia', 'Cambodia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(109, 1, 'KP', 1, 'PRK', 'Democratic People\'s Republic of Korea', 'the Democratic People\'s Republic of Korea', 'Democratic People\'s Republic of Korea', 'Democratic People\'s Republic of Korea', 'Democratic People\'s Republic of Korea', 'Democratic People\'s Republic of Korea', 'Democratic People\'s Republic of Korea', 'Democratic People\'s Republic of Korea', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(110, 1, 'KR', 1, 'KOR', 'Republic of Korea', 'the Republic of Korea', 'Republic of Korea', 'Republic of Korea', 'Republic of Korea', 'Republic of Korea', 'Republic of Korea', 'Republic of Korea', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(111, 1, 'KW', 1, 'KWT', 'Kuwait', 'the State of Kuwait', 'Kuwait', 'Kuwait', 'Kuwait', 'Kuwait', 'Kuwait', 'Kuwait', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(112, 1, 'LV', 1, 'LVA', 'Latvia', 'the Republic of Latvia', 'Latvia', 'Latvia', 'Latvia', 'Latvia', 'Latvia', 'Latvia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(113, 1, 'LA', 1, 'LAO', 'Lao People\'s Democratic Republic', 'the Lao People\'s Democratic Republic', 'Lao People\'s Democratic Republic', 'Lao People\'s Democratic Republic', 'Lao People\'s Democratic Republic', 'Lao People\'s Democratic Republic', 'Lao People\'s Democratic Republic', 'Lao People\'s Democratic Republic', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(114, 1, 'LB', 1, 'LBN', 'Lebanon', 'the Lebanese Republic', 'Lebanon', 'Lebanon', 'Lebanon', 'Lebanon', 'Lebanon', 'Lebanon', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(115, 1, 'LS', 1, 'LSO', 'Lesotho', 'the Kingdom of Lesotho', 'Lesotho', 'Lesotho', 'Lesotho', 'Lesotho', 'Lesotho', 'Lesotho', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(116, 1, 'LR', 1, 'LBR', 'Liberia', 'the Republic of Liberia', 'Liberia', 'Liberia', 'Liberia', 'Liberia', 'Liberia', 'Liberia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(117, 1, 'LY', 1, 'LBY', 'Libya', 'Libya', 'Libya', 'Libya', 'Libya', 'Libya', 'Libya', 'Libya', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(118, 1, 'LI', 1, 'LIE', 'Liechtenstein', 'the Principality of Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(119, 1, 'LT', 1, 'LTU', 'Lithuania', 'the Republic of Lithuania', 'Lithuania', 'Lithuania', 'Lithuania', 'Lithuania', 'Lithuania', 'Lithuania', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(120, 1, 'MH', 1, 'MHL', 'Marshall Islands', 'the Republic of the Marshall Islands', 'Marshall Islands', 'Marshall Islands', 'Marshall Islands', 'Marshall Islands', 'Marshall Islands', 'Marshall Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(121, 1, 'MO', 1, 'MAC', 'China, Macao SAR', 'China, Macao Special Administrative Region', 'China, Macao SAR', 'China, Macao SAR', 'China, Macao SAR', 'China, Macao SAR', 'China, Macao SAR', 'China, Macao SAR', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(122, 1, 'MG', 1, 'MDG', 'Madagascar', 'the Republic of Madagascar', 'Madagascar', 'Madagascar', 'Madagascar', 'Madagascar', 'Madagascar', 'Madagascar', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(123, 1, 'MW', 1, 'MWI', 'Malawi', 'the Republic of Malawi', 'Malawi', 'Malawi', 'Malawi', 'Malawi', 'Malawi', 'Malawi', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(124, 1, 'MY', 1, 'MYS', 'Malaysia', 'Malaysia', 'Malaysia', 'Malaysia', 'Malaysia', 'Malaysia', 'Malaysia', 'Malaysia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(125, 1, 'MV', 1, 'MDV', 'Maldives', 'the Republic of Maldives', 'Maldives', 'Maldives', 'Maldives', 'Maldives', 'Maldives', 'Maldives', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(126, 1, 'ML', 1, 'MLI', 'Mali', 'the Republic of Mali', 'Mali', 'Mali', 'Mali', 'Mali', 'Mali', 'Mali', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(127, 1, 'MT', 1, 'MLT', 'Malta', 'the Republic of Malta', 'Malta', 'Malta', 'Malta', 'Malta', 'Malta', 'Malta', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(128, 1, 'MQ', 1, 'MTQ', 'Martinique', 'Martinique', 'Martinique', 'Martinique', 'Martinique', 'Martinique', 'Martinique', 'Martinique', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(129, 1, 'MR', 1, 'MRT', 'Mauritania', 'the Islamic Republic of Mauritania', 'Mauritania', 'Mauritania', 'Mauritania', 'Mauritania', 'Mauritania', 'Mauritania', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(130, 1, 'MU', 1, 'MUS', 'Mauritius', 'the Republic of Mauritius', 'Mauritius', 'Mauritius', 'Mauritius', 'Mauritius', 'Mauritius', 'Mauritius', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(131, 1, 'MX', 1, 'MEX', 'Mexico', 'the United Mexican States', 'Mexico', 'Mexico', 'Mexico', 'Mexico', 'Mexico', 'Mexico', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(132, 1, 'MI', 1, 'MID', 'Midway Islands', 'Midway Islands', 'Midway Islands', 'Midway Islands', 'Midway Islands', 'Midway Islands', 'Midway Islands', 'Midway Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(133, 1, 'MC', 1, 'MCO', 'Monaco', 'the Principality of Monaco', 'Monaco', 'Monaco', 'Monaco', 'Monaco', 'Monaco', 'Monaco', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(134, 1, 'MN', 1, 'MNG', 'Mongolia', 'Mongolia', 'Mongolia', 'Mongolia', 'Mongolia', 'Mongolia', 'Mongolia', 'Mongolia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(135, 1, 'MS', 1, 'MSR', 'Montserrat', 'Montserrat', 'Montserrat', 'Montserrat', 'Montserrat', 'Montserrat', 'Montserrat', 'Montserrat', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(136, 1, 'MA', 1, 'MAR', 'Morocco', 'the Kingdom of Morocco', 'Morocco', 'Morocco', 'Morocco', 'Morocco', 'Morocco', 'Morocco', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(137, 1, 'MZ', 1, 'MOZ', 'Mozambique', 'the Republic of Mozambique', 'Mozambique', 'Mozambique', 'Mozambique', 'Mozambique', 'Mozambique', 'Mozambique', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(138, 1, 'FM', 1, 'FSM', 'Micronesia (Federated States of)', 'the Federated States of Micronesia', 'Micronesia (Federated States of)', 'Micronesia (Federated States of)', 'Micronesia (Federated States of)', 'Micronesia (Federated States of)', 'Micronesia (Federated States of)', 'Micronesia (Federated States of)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(139, 1, 'MD', 1, 'MDA', 'Republic of Moldova', 'the Republic of Moldova', 'Republic of Moldova', 'Republic of Moldova', 'Republic of Moldova', 'Republic of Moldova', 'Republic of Moldova', 'Republic of Moldova', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(140, 1, 'NA', 1, 'NAM', 'Namibia', 'the Republic of Namibia', 'Namibia', 'Namibia', 'Namibia', 'Namibia', 'Namibia', 'Namibia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(141, 1, 'NR', 1, 'NRU', 'Nauru', 'the Republic of Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(142, 1, 'NP', 1, 'NPL', 'Nepal', 'the Federal Democratic Republic of Nepal', 'Nepal', 'Nepal', 'Nepal', 'Nepal', 'Nepal', 'Nepal', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(143, 1, 'NL', 1, 'NLD', 'Netherlands', 'the Kingdom of the Netherlands', 'Netherlands', 'Netherlands', 'Netherlands', 'Netherlands', 'Netherlands', 'Netherlands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(144, 1, 'AN', 1, 'ANT', 'Netherlands Antilles', 'Netherlands Antilles', 'Netherlands Antilles', 'Netherlands Antilles', 'Netherlands Antilles', 'Netherlands Antilles', 'Netherlands Antilles', 'Netherlands Antilles', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(145, 1, 'NC', 1, 'NCL', 'New Caledonia', 'New Caledonia', 'New Caledonia', 'New Caledonia', 'New Caledonia', 'New Caledonia', 'New Caledonia', 'New Caledonia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(146, 1, 'MK', 1, 'MKD', 'The former Yugoslav Republic of Macedonia', 'The former Yugoslav Republic of Macedonia', 'The former Yugoslav Republic of Macedonia', 'The former Yugoslav Republic of Macedonia', 'The former Yugoslav Republic of Macedonia', 'The former Yugoslav Republic of Macedonia', 'The former Yugoslav Republic of Macedonia', 'The former Yugoslav Republic of Macedonia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(147, 1, 'VU', 1, 'VUT', 'Vanuatu', 'the Republic of Vanuatu', 'Vanuatu', 'Vanuatu', 'Vanuatu', 'Vanuatu', 'Vanuatu', 'Vanuatu', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(148, 1, 'NZ', 1, 'NZL', 'New Zealand', 'New Zealand', 'New Zealand', 'New Zealand', 'New Zealand', 'New Zealand', 'New Zealand', 'New Zealand', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(149, 1, 'NI', 1, 'NIC', 'Nicaragua', 'the Republic of Nicaragua', 'Nicaragua', 'Nicaragua', 'Nicaragua', 'Nicaragua', 'Nicaragua', 'Nicaragua', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(150, 1, 'NE', 1, 'NER', 'Niger', 'the Republic of the Niger', 'Niger', 'Niger', 'Niger', 'Niger', 'Niger', 'Niger', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(151, 1, 'NG', 1, 'NGA', 'Nigeria', 'the Federal Republic of Nigeria', 'Nigeria', 'Nigeria', 'Nigeria', 'Nigeria', 'Nigeria', 'Nigeria', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(152, 1, 'NU', 1, 'NIU', 'Niue', 'Niue', 'Niue', 'Niue', 'Niue', 'Niue', 'Niue', 'Niue', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(153, 1, 'NF', 1, 'NFK', 'Norfolk Island', 'Territory of Norfolk Island', 'Norfolk Island', 'Norfolk Island', 'Norfolk Island', 'Norfolk Island', 'Norfolk Island', 'Norfolk Island', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(154, 1, 'NO', 1, 'NOR', 'Norway', 'the Kingdom of Norway', 'Norway', 'Norway', 'Norway', 'Norway', 'Norway', 'Norway', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(155, 1, 'MP', 1, 'MNP', 'Northern Mariana Islands', 'The Commonwealth of the Northern Mariana Islands', 'Northern Mariana Islands', 'Northern Mariana Islands', 'Northern Mariana Islands', 'Northern Mariana Islands', 'Northern Mariana Islands', 'Northern Mariana Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(156, 1, 'PK', 1, 'PAK', 'Pakistan', 'the Islamic Republic of Pakistan', 'Pakistan', 'Pakistan', 'Pakistan', 'Pakistan', 'Pakistan', 'Pakistan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(157, 1, 'PA', 1, 'PAN', 'Panama', 'the Republic of Panama', 'Panama', 'Panama', 'Panama', 'Panama', 'Panama', 'Panama', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(158, 1, 'CZ', 1, 'CZE', 'Czech Republic', 'the Czech Republic', 'Czech Republic', 'Czech Republic', 'Czech Republic', 'Czech Republic', 'Czech Republic', 'Czech Republic', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(159, 1, 'PG', 1, 'PNG', 'Papua New Guinea', 'Papua New Guinea', 'Papua New Guinea', 'Papua New Guinea', 'Papua New Guinea', 'Papua New Guinea', 'Papua New Guinea', 'Papua New Guinea', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(160, 1, 'PY', 1, 'PRY', 'Paraguay', 'the Republic of Paraguay', 'Paraguay', 'Paraguay', 'Paraguay', 'Paraguay', 'Paraguay', 'Paraguay', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(161, 1, 'PE', 1, 'PER', 'Peru', 'the Republic of Peru', 'Peru', 'Peru', 'Peru', 'Peru', 'Peru', 'Peru', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(162, 1, 'PH', 1, 'PHL', 'Philippines', 'the Republic of the Philippines', 'Philippines', 'Philippines', 'Philippines', 'Philippines', 'Philippines', 'Philippines', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(163, 1, 'PL', 1, 'POL', 'Poland', 'the Republic of Poland', 'Poland', 'Poland', 'Poland', 'Poland', 'Poland', 'Poland', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(164, 1, 'PT', 1, 'PRT', 'Portugal', 'the Portuguese Republic', 'Portugal', 'Portugal', 'Portugal', 'Portugal', 'Portugal', 'Portugal', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(165, 1, 'GW', 1, 'GNB', 'Guinea-Bissau', 'the Republic of Guinea-Bissau', 'Guinea-Bissau', 'Guinea-Bissau', 'Guinea-Bissau', 'Guinea-Bissau', 'Guinea-Bissau', 'Guinea-Bissau', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(166, 1, 'TL', 1, 'TLS', 'Timor-Leste', 'the Democratic Republic of Timor-Leste', 'Timor-Leste', 'Timor-Leste', 'Timor-Leste', 'Timor-Leste', 'Timor-Leste', 'Timor-Leste', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(167, 1, 'PR', 1, 'PRI', 'Puerto Rico', 'the Commonwealth of Puerto Rico', 'Puerto Rico', 'Puerto Rico', 'Puerto Rico', 'Puerto Rico', 'Puerto Rico', 'Puerto Rico', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(168, 1, 'ER', 1, 'ERI', 'Eritrea', 'Eritrea', 'Eritrea', 'Eritrea', 'Eritrea', 'Eritrea', 'Eritrea', 'Eritrea', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(169, 1, 'QA', 1, 'QAT', 'Qatar', 'the State of Qatar', 'Qatar', 'Qatar', 'Qatar', 'Qatar', 'Qatar', 'Qatar', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(170, 1, 'PW', 1, 'PLW', 'Palau', 'the Republic of Palau', 'Palau', 'Palau', 'Palau', 'Palau', 'Palau', 'Palau', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(171, 1, 'ZW', 1, 'ZWE', 'Zimbabwe', 'the Republic of Zimbabwe', 'Zimbabwe', 'Zimbabwe', 'Zimbabwe', 'Zimbabwe', 'Zimbabwe', 'Zimbabwe', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(172, 1, 'RE', 1, 'REU', 'Réunion', 'Réunion', 'Réunion', 'Réunion', 'Réunion', 'Réunion', 'Réunion', 'Réunion', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(173, 1, 'RO', 1, 'ROU', 'Romania', 'Romania', 'Romania', 'Romania', 'Romania', 'Romania', 'Romania', 'Romania', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(174, 1, 'RW', 1, 'RWA', 'Rwanda', 'the Republic of Rwanda', 'Rwanda', 'Rwanda', 'Rwanda', 'Rwanda', 'Rwanda', 'Rwanda', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(175, 1, 'RU', 1, 'RUS', 'Russian Federation', 'the Russian Federation', 'Russian Federation', 'Russian Federation', 'Russian Federation', 'Russian Federation', 'Russian Federation', 'Russian Federation', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(176, 1, 'CS', 1, 'SCG', 'Serbia and Montenegro', 'Serbia and Montenegro', 'Serbia and Montenegro', 'Serbia and Montenegro', 'Serbia and Montenegro', 'Serbia and Montenegro', 'Serbia and Montenegro', 'Serbia and Montenegro', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(177, 1, 'SH', 1, 'SHN', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(178, 1, 'KN', 1, 'KNA', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(179, 1, 'LC', 1, 'LCA', 'Saint Lucia', 'Saint Lucia', 'Saint Lucia', 'Saint Lucia', 'Saint Lucia', 'Saint Lucia', 'Saint Lucia', 'Saint Lucia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(180, 1, 'PM', 1, 'SPM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(181, 1, 'VC', 1, 'VCT', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(182, 1, 'SM', 1, 'SMR', 'San Marino', 'the Republic of San Marino', 'San Marino', 'San Marino', 'San Marino', 'San Marino', 'San Marino', 'San Marino', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(183, 1, 'ST', 1, 'STP', 'Sao Tome and Principe', 'the Democratic Republic of Sao Tome and Principe', 'Sao Tome and Principe', 'Sao Tome and Principe', 'Sao Tome and Principe', 'Sao Tome and Principe', 'Sao Tome and Principe', 'Sao Tome and Principe', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(184, 1, 'SA', 1, 'SAU', 'Saudi Arabia', 'the Kingdom of Saudi Arabia', 'Saudi Arabia', 'Saudi Arabia', 'Saudi Arabia', 'Saudi Arabia', 'Saudi Arabia', 'Saudi Arabia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(185, 1, 'SN', 1, 'SEN', 'Senegal', 'the Republic of Senegal', 'Senegal', 'Senegal', 'Senegal', 'Senegal', 'Senegal', 'Senegal', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(186, 1, 'SC', 1, 'SYC', 'Seychelles', 'the Republic of Seychelles', 'Seychelles', 'Seychelles', 'Seychelles', 'Seychelles', 'Seychelles', 'Seychelles', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(187, 1, 'SL', 1, 'SLE', 'Sierra Leone', 'the Republic of Sierra Leone', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(188, 1, 'SI', 1, 'SVN', 'Slovenia', 'the Republic of Slovenia', 'Slovenia', 'Slovenia', 'Slovenia', 'Slovenia', 'Slovenia', 'Slovenia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(189, 1, 'SK', 1, 'SVK', 'Slovakia', 'the Slovak Republic', 'Slovakia', 'Slovakia', 'Slovakia', 'Slovakia', 'Slovakia', 'Slovakia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(190, 1, 'SG', 1, 'SGP', 'Singapore', 'the Republic of Singapore', 'Singapore', 'Singapore', 'Singapore', 'Singapore', 'Singapore', 'Singapore', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(191, 1, 'SO', 1, 'SOM', 'Somalia', 'the Somali Republic', 'Somalia', 'Somalia', 'Somalia', 'Somalia', 'Somalia', 'Somalia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(192, 1, 'ZA', 1, 'ZAF', 'South Africa', 'the Republic of South Africa', 'South Africa', 'South Africa', 'South Africa', 'South Africa', 'South Africa', 'South Africa', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(193, 1, 'ES', 1, 'ESP', 'Spain', 'the Kingdom of Spain', 'Spain', 'Spain', 'Spain', 'Spain', 'Spain', 'Spain', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(194, 1, 'EH', 1, 'ESH', 'Western Sahara', 'Western Sahara', 'Western Sahara', 'Western Sahara', 'Western Sahara', 'Western Sahara', 'Western Sahara', 'Western Sahara', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(195, 1, 'SD', 1, 'SDN', 'Sudan', 'the Republic of the Sudan', 'Sudan', 'Sudan', 'Sudan', 'Sudan', 'Sudan', 'Sudan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(196, 1, 'SR', 1, 'SUR', 'Suriname', 'the Republic of Suriname', 'Suriname', 'Suriname', 'Suriname', 'Suriname', 'Suriname', 'Suriname', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(197, 1, 'TJ', 1, 'TJK', 'Tajikistan', 'the Republic of Tajikistan', 'Tajikistan', 'Tajikistan', 'Tajikistan', 'Tajikistan', 'Tajikistan', 'Tajikistan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(198, 1, 'SZ', 1, 'SWZ', 'Swaziland', 'the Kingdom of Swaziland', 'Swaziland', 'Swaziland', 'Swaziland', 'Swaziland', 'Swaziland', 'Swaziland', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(199, 1, 'SE', 1, 'SWE', 'Sweden', 'the Kingdom of Sweden', 'Sweden', 'Sweden', 'Sweden', 'Sweden', 'Sweden', 'Sweden', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(200, 1, 'CH', 1, 'CHE', 'Switzerland', 'the Swiss Confederation', 'Switzerland', 'Switzerland', 'Switzerland', 'Switzerland', 'Switzerland', 'Switzerland', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(201, 1, 'SY', 1, 'SYR', 'Syrian Arab Republic', 'the Syrian Arab Republic', 'Syrian Arab Republic', 'Syrian Arab Republic', 'Syrian Arab Republic', 'Syrian Arab Republic', 'Syrian Arab Republic', 'Syrian Arab Republic', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(202, 1, 'TM', 1, 'TKM', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(203, 1, 'TW', 1, 'TWN', 'Chinese Taipei', 'Chinese Taipei', 'Chinese Taipei', 'Chinese Taipei', 'Chinese Taipei', 'Chinese Taipei', 'Chinese Taipei', 'Chinese Taipei', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(204, 1, 'TZ', 1, 'TZA', 'United Republic of Tanzania', 'the United Republic of Tanzania', 'United Republic of Tanzania', 'United Republic of Tanzania', 'United Republic of Tanzania', 'United Republic of Tanzania', 'United Republic of Tanzania', 'United Republic of Tanzania', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(205, 1, 'TH', 1, 'THA', 'Thailand', 'the Kingdom of Thailand', 'Thailand', 'Thailand', 'Thailand', 'Thailand', 'Thailand', 'Thailand', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(206, 1, 'TG', 1, 'TGO', 'Togo', 'the Togolese Republic', 'Togo', 'Togo', 'Togo', 'Togo', 'Togo', 'Togo', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(207, 1, 'TK', 1, 'TKL', 'Tokelau (Associate Member)', 'Tokelau', 'Tokelau (Associate Member)', 'Tokelau (Associate Member)', 'Tokelau (Associate Member)', 'Tokelau (Associate Member)', 'Tokelau (Associate Member)', 'Tokelau (Associate Member)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59');
INSERT INTO `cl_ref_countries` (`ID`, `ENABLED`, `CODE`, `RANKING`, `ISO_3_CODE`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(208, 1, 'TO', 1, 'TON', 'Tonga', 'the Kingdom of Tonga', 'Tonga', 'Tonga', 'Tonga', 'Tonga', 'Tonga', 'Tonga', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(209, 1, 'TT', 1, 'TTO', 'Trinidad and Tobago', 'the Republic of Trinidad and Tobago', 'Trinidad and Tobago', 'Trinidad and Tobago', 'Trinidad and Tobago', 'Trinidad and Tobago', 'Trinidad and Tobago', 'Trinidad and Tobago', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(210, 1, 'OM', 1, 'OMN', 'Oman', 'the Sultanate of Oman', 'Oman', 'Oman', 'Oman', 'Oman', 'Oman', 'Oman', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(211, 1, 'TN', 1, 'TUN', 'Tunisia', 'the Republic of Tunisia', 'Tunisia', 'Tunisia', 'Tunisia', 'Tunisia', 'Tunisia', 'Tunisia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(212, 1, 'TR', 1, 'TUR', 'Turkey', 'the Republic of Turkey', 'Turkey', 'Turkey', 'Turkey', 'Turkey', 'Turkey', 'Turkey', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(213, 1, 'TC', 1, 'TCA', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Turks and Caicos Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(214, 1, 'AE', 1, 'ARE', 'United Arab Emirates', 'the United Arab Emirates', 'United Arab Emirates', 'United Arab Emirates', 'United Arab Emirates', 'United Arab Emirates', 'United Arab Emirates', 'United Arab Emirates', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(215, 1, 'UG', 1, 'UGA', 'Uganda', 'the Republic of Uganda', 'Uganda', 'Uganda', 'Uganda', 'Uganda', 'Uganda', 'Uganda', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(216, 1, 'TV', 1, 'TUV', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Tuvalu', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(217, 1, 'SU', 1, 'SUN', 'Russia', 'Un. Sov. Soc. Rep.', 'Russia', 'Russia', 'Russia', 'Russia', 'Russia', 'Russia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(218, 1, 'GB', 1, 'GBR', 'United Kingdom', 'the United Kingdom of Great Britain and Northern Ireland', 'United Kingdom', 'United Kingdom', 'United Kingdom', 'United Kingdom', 'United Kingdom', 'United Kingdom', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(219, 1, 'UA', 1, 'UKR', 'Ukraine', 'Ukraine', 'Ukraine', 'Ukraine', 'Ukraine', 'Ukraine', 'Ukraine', 'Ukraine', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(220, 1, 'US', 1, 'USA', 'United States of America', 'the United States of America', 'United States of America', 'United States of America', 'United States of America', 'United States of America', 'United States of America', 'United States of America', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(221, 1, 'UM', 1, 'UMI', 'US Minor Is.', 'US Minor Outlying Islands', 'US Minor Is.', 'US Minor Is.', 'US Minor Is.', 'US Minor Is.', 'US Minor Is.', 'US Minor Is.', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(222, 1, 'BF', 1, 'BFA', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(223, 1, 'UY', 1, 'URY', 'Uruguay', 'the Eastern Republic of Uruguay', 'Uruguay', 'Uruguay', 'Uruguay', 'Uruguay', 'Uruguay', 'Uruguay', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(224, 1, 'UZ', 1, 'UZB', 'Uzbekistan', 'the Republic of Uzbekistan', 'Uzbekistan', 'Uzbekistan', 'Uzbekistan', 'Uzbekistan', 'Uzbekistan', 'Uzbekistan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(225, 1, 'VE', 1, 'VEN', 'Venezuela (Bolivarian Republic of)', 'the Bolivarian Republic of Venezuela', 'Venezuela (Bolivarian Republic of)', 'Venezuela (Bolivarian Republic of)', 'Venezuela (Bolivarian Republic of)', 'Venezuela (Bolivarian Republic of)', 'Venezuela (Bolivarian Republic of)', 'Venezuela (Bolivarian Republic of)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(226, 1, 'VN', 1, 'VNM', 'Viet Nam', 'the Socialist Republic of Viet Nam', 'Viet Nam', 'Viet Nam', 'Viet Nam', 'Viet Nam', 'Viet Nam', 'Viet Nam', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(227, 1, 'ET', 1, 'ETH', 'Ethiopia', 'the Federal Democratic Republic of Ethiopia', 'Ethiopia', 'Ethiopia', 'Ethiopia', 'Ethiopia', 'Ethiopia', 'Ethiopia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(228, 1, 'VG', 1, 'VGB', 'British Virgin Islands', 'the British Virgin Islands', 'British Virgin Islands', 'British Virgin Islands', 'British Virgin Islands', 'British Virgin Islands', 'British Virgin Islands', 'British Virgin Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(229, 1, 'VI', 1, 'VIR', 'United States Virgin Islands', 'the United States Virgin Islands', 'United States Virgin Islands', 'United States Virgin Islands', 'United States Virgin Islands', 'United States Virgin Islands', 'United States Virgin Islands', 'United States Virgin Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(230, 1, 'WK', 1, 'WAK', 'Wake Island', 'Wake Island', 'Wake Island', 'Wake Island', 'Wake Island', 'Wake Island', 'Wake Island', 'Wake Island', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(231, 1, 'WF', 1, 'WLF', 'Wallis and Futuna Islands', 'Wallis and Futuna Islands', 'Wallis and Futuna Islands', 'Wallis and Futuna Islands', 'Wallis and Futuna Islands', 'Wallis and Futuna Islands', 'Wallis and Futuna Islands', 'Wallis and Futuna Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(232, 1, 'WS', 1, 'WSM', 'Samoa', 'the Independent State of Samoa', 'Samoa', 'Samoa', 'Samoa', 'Samoa', 'Samoa', 'Samoa', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(233, 1, 'YE', 1, 'YEM', 'Yemen', 'the Republic of Yemen', 'Yemen', 'Yemen', 'Yemen', 'Yemen', 'Yemen', 'Yemen', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(234, 1, 'CD', 1, 'COD', 'Democratic Republic of the Congo', 'the Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(235, 1, 'ZM', 1, 'ZMB', 'Zambia', 'the Republic of Zambia', 'Zambia', 'Zambia', 'Zambia', 'Zambia', 'Zambia', 'Zambia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(236, 1, 'BE', 1, 'BEL', 'Belgium', 'the Kingdom of Belgium', 'Belgium', 'Belgium', 'Belgium', 'Belgium', 'Belgium', 'Belgium', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(237, 1, 'LU', 1, 'LUX', 'Luxembourg', 'the Grand Duchy of Luxembourg', 'Luxembourg', 'Luxembourg', 'Luxembourg', 'Luxembourg', 'Luxembourg', 'Luxembourg', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(238, 1, 'AI', 1, 'AIA', 'Anguilla', 'Anguilla', 'Anguilla', 'Anguilla', 'Anguilla', 'Anguilla', 'Anguilla', 'Anguilla', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(239, 1, 'SJ', 1, 'SJM', 'Svalbard and Jan Mayen Islands', 'Svalbard and Jan Mayen Islands', 'Svalbard and Jan Mayen Islands', 'Svalbard and Jan Mayen Islands', 'Svalbard and Jan Mayen Islands', 'Svalbard and Jan Mayen Islands', 'Svalbard and Jan Mayen Islands', 'Svalbard and Jan Mayen Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(240, 1, 'IM', 1, 'IMN', 'Isle of Man', 'Isle of Man', 'Isle of Man', 'Isle of Man', 'Isle of Man', 'Isle of Man', 'Isle of Man', 'Isle of Man', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(241, 1, 'YT', 1, 'MYT', 'Mayotte', 'Mayotte', 'Mayotte', 'Mayotte', 'Mayotte', 'Mayotte', 'Mayotte', 'Mayotte', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(242, 1, 'GS', 1, 'SGS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(243, 1, 'RS', 1, 'SRB', 'Serbia', 'Serbia', 'Serbia', 'Serbia', 'Serbia', 'Serbia', 'Serbia', 'Serbia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(244, 1, 'ME', 1, 'MNE', 'Montenegro', 'Montenegro', 'Montenegro', 'Montenegro', 'Montenegro', 'Montenegro', 'Montenegro', 'Montenegro', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(245, 1, 'PS', 1, 'PSE', 'Palestine', 'Palestine', 'Palestine', 'Palestine', 'Palestine', 'Palestine', 'Palestine', 'Palestine', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(246, 1, 'DD', 1, 'DDR', 'German Democratic Republic', 'German Democratic Republic', 'German Democratic Republic', 'German Democratic Republic', 'German Democratic Republic', 'German Democratic Republic', 'German Democratic Republic', 'German Democratic Republic', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(247, 1, 'YU', 1, 'YUG', 'Yugoslavia', 'Socialist Federal Republic of Yugoslavia', 'Yugoslavia', 'Yugoslavia', 'Yugoslavia', 'Yugoslavia', 'Yugoslavia', 'Yugoslavia', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(248, 1, 'AX', 1, 'ALA', 'Åland Islands', 'Åland Islands', 'Ã…land Islands', 'Ã…land Islands', 'Ã…land Islands', 'Ã…land Islands', 'Ã…land Islands', 'Ã…land Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(249, 1, 'BQ', 1, 'BES', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(250, 1, 'CW', 1, 'CUW', 'Curaçao', 'Curaçao', 'Curasao', 'Curasao', 'Curasao', 'Curasao', 'Curasao', 'Curasao', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(251, 1, 'GG', 1, 'GGY', 'Guernsey', 'Bailiwick of Guernsey', 'Guernsey', 'Guernsey', 'Guernsey', 'Guernsey', 'Guernsey', 'Guernsey', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(252, 1, 'JE', 1, 'JEY', 'Jersey', 'Bailiwick of Jersey', 'Jersey', 'Jersey', 'Jersey', 'Jersey', 'Jersey', 'Jersey', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(253, 1, 'PN', 1, 'PNC', 'Pitcairn Islands', 'Pitcairn Islands', 'Pitcairn Islands', 'Pitcairn Islands', 'Pitcairn Islands', 'Pitcairn Islands', 'Pitcairn Islands', 'Pitcairn Islands', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(254, 1, 'BL', 1, 'BLM', 'Saint Barthélemy', 'Saint Barthélemy', 'Saint Barthélemy', 'Saint Barthélemy', 'Saint Barthélemy', 'Saint Barthélemy', 'Saint Barthélemy', 'Saint Barthélemy', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(255, 1, 'MF', 1, 'MAF', 'Saint-Martin (French Part)', 'Saint-Martin (French Part)', 'Saint-Martin (French Part)', 'Saint-Martin (French Part)', 'Saint-Martin (French Part)', 'Saint-Martin (French Part)', 'Saint-Martin (French Part)', 'Saint-Martin (French Part)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(256, 1, 'SX', 1, 'SXM', 'Sint Maarten (Dutch Part)', 'Sint Maarten (Dutch Part)', 'Sint Maarten (Dutch Part)', 'Sint Maarten (Dutch Part)', 'Sint Maarten (Dutch Part)', 'Sint Maarten (Dutch Part)', 'Sint Maarten (Dutch Part)', 'Sint Maarten (Dutch Part)', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(257, 1, 'SS', 1, 'SSD', 'South Sudan', 'the Republic of South Sudan', 'South Sudan', 'South Sudan', 'South Sudan', 'South Sudan', 'South Sudan', 'South Sudan', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(258, 1, 'UN', 1, 'UNK', 'Unknown / Not set', 'Unknown / Not set', 'Unknown / Not set', 'Unknown / Not set', 'Unknown / Not set', 'Unknown / Not set', 'Unknown / Not set', 'Unknown / Not set', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59'),
(259, 1, 'EU', 1, 'EUR', 'European Union', 'European Union', 'European Union', 'European Union', 'European Union', 'European Union', 'European Union', 'European Union', NULL, NULL, NULL, 1, 'Initial import', '2014-12-31 22:00:00', '2017-09-12 13:27:59');

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_currencies`
--

CREATE TABLE `cl_ref_currencies` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_ref_currencies` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'BAHT', 1, 'Baht', 'Baht', 'Baht', 'Baht', 'Baht', NULL, 'บาท', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-27 17:41:31', '2017-11-27 17:41:31'),
(2, 1, 'USD', 1, 'US Dollar', 'US Dollar', 'US Dollar', 'US Dollar', 'US Dollar', NULL, 'ดอลลาร์สหรัฐ', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-23 19:24:58', '2017-11-23 19:24:58'),
(3, 1, 'EUR', 1, 'Euro', 'Euro', 'Euro', 'Euro', 'Euro', 'Euro', 'ยูโร', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-23 19:24:58', '2017-11-23 19:24:58');

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_declaration_sources`
--

CREATE TABLE `cl_ref_declaration_sources` (
  `ID` int(11) NOT NULL COMMENT 'source of declaration ID',
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` char(2) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_ref_languages` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'aa', 1, 'Afar', 'Afar', 'Afar', 'Afar', 'Afar', 'Afar', 'Afar', 'Afar', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(2, 1, 'ab', 1, 'Abkhazian', 'Abkhazian', 'Abkhazian', 'Abkhazian', 'Abkhazian', 'Abkhazian', 'Abkhazian', 'Abkhazian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(3, 1, 'ae', 1, 'Avestan', 'Avestan', 'Avestan', 'Avestan', 'Avestan', 'Avestan', 'Avestan', 'Avestan', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(4, 1, 'af', 1, 'Afrikaans', 'Afrikaans', 'Afrikaans', 'Afrikaans', 'Afrikaans', 'Afrikaans', 'Afrikaans', 'Afrikaans', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(5, 1, 'ak', 1, 'Akan', 'Akan', 'Akan', 'Akan', 'Akan', 'Akan', 'Akan', 'Akan', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(6, 1, 'am', 1, 'Amharic', 'Amharic', 'Amharic', 'Amharic', 'Amharic', 'Amharic', 'Amharic', 'Amharic', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(7, 1, 'an', 1, 'Aragonese', 'Aragonese', 'Aragonese', 'Aragonese', 'Aragonese', 'Aragonese', 'Aragonese', 'Aragonese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(8, 1, 'ar', 1, 'Arabic', 'Arabic', 'Arabic', 'Arabic', 'Arabic', 'Arabic', 'Arabic', 'Arabic', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(9, 1, 'as', 1, 'Assamese', 'Assamese', 'Assamese', 'Assamese', 'Assamese', 'Assamese', 'Assamese', 'Assamese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(10, 1, 'av', 1, 'Avaric', 'Avaric', 'Avaric', 'Avaric', 'Avaric', 'Avaric', 'Avaric', 'Avaric', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(11, 1, 'ay', 1, 'Aymara', 'Aymara', 'Aymara', 'Aymara', 'Aymara', 'Aymara', 'Aymara', 'Aymara', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(12, 1, 'az', 1, 'Azerbaijani', 'Azerbaijani', 'Azerbaijani', 'Azerbaijani', 'Azerbaijani', 'Azerbaijani', 'Azerbaijani', 'Azerbaijani', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(13, 1, 'ba', 1, 'Bashkir', 'Bashkir', 'Bashkir', 'Bashkir', 'Bashkir', 'Bashkir', 'Bashkir', 'Bashkir', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(14, 1, 'be', 1, 'Belarusian', 'Belarusian', 'Belarusian', 'Belarusian', 'Belarusian', 'Belarusian', 'Belarusian', 'Belarusian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(15, 1, 'bg', 1, 'Bulgarian', 'Bulgarian', 'Bulgarian', 'Bulgarian', 'Bulgarian', 'Bulgarian', 'Bulgarian', 'Bulgarian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(16, 1, 'bh', 1, 'Bihari languages', 'Bihari languages', 'Bihari languages', 'Bihari languages', 'Bihari languages', 'Bihari languages', 'Bihari languages', 'Bihari languages', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(17, 1, 'bi', 1, 'Bislama', 'Bislama', 'Bislama', 'Bislama', 'Bislama', 'Bislama', 'Bislama', 'Bislama', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(18, 1, 'bm', 1, 'Bambara', 'Bambara', 'Bambara', 'Bambara', 'Bambara', 'Bambara', 'Bambara', 'Bambara', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(19, 1, 'bn', 1, 'Bengali', 'Bengali', 'Bengali', 'Bengali', 'Bengali', 'Bengali', 'Bengali', 'Bengali', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(20, 1, 'bo', 1, 'Tibetan', 'Tibetan', 'Tibetan', 'Tibetan', 'Tibetan', 'Tibetan', 'Tibetan', 'Tibetan', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(21, 1, 'br', 1, 'Breton', 'Breton', 'Breton', 'Breton', 'Breton', 'Breton', 'Breton', 'Breton', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(22, 1, 'bs', 1, 'Bosnian', 'Bosnian', 'Bosnian', 'Bosnian', 'Bosnian', 'Bosnian', 'Bosnian', 'Bosnian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(23, 1, 'ca', 1, 'Catalan; Valencian', 'Catalan; Valencian', 'Catalan; Valencian', 'Catalan; Valencian', 'Catalan; Valencian', 'Catalan; Valencian', 'Catalan; Valencian', 'Catalan; Valencian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(24, 1, 'ce', 1, 'Chechen', 'Chechen', 'Chechen', 'Chechen', 'Chechen', 'Chechen', 'Chechen', 'Chechen', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(25, 1, 'ch', 1, 'Chamorro', 'Chamorro', 'Chamorro', 'Chamorro', 'Chamorro', 'Chamorro', 'Chamorro', 'Chamorro', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(26, 1, 'co', 1, 'Corsican', 'Corsican', 'Corsican', 'Corsican', 'Corsican', 'Corsican', 'Corsican', 'Corsican', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(27, 1, 'cr', 1, 'Cree', 'Cree', 'Cree', 'Cree', 'Cree', 'Cree', 'Cree', 'Cree', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(28, 1, 'cs', 1, 'Czech', 'Czech', 'Czech', 'Czech', 'Czech', 'Czech', 'Czech', 'Czech', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(29, 1, 'cu', 1, 'Church Slavic', 'Church Slavic', 'Church Slavic', 'Church Slavic', 'Church Slavic', 'Church Slavic', 'Church Slavic', 'Church Slavic', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(30, 1, 'cv', 1, 'Chuvash', 'Chuvash', 'Chuvash', 'Chuvash', 'Chuvash', 'Chuvash', 'Chuvash', 'Chuvash', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(31, 1, 'cy', 1, 'Welsh', 'Welsh', 'Welsh', 'Welsh', 'Welsh', 'Welsh', 'Welsh', 'Welsh', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(32, 1, 'da', 1, 'Danish', 'Danish', 'Danish', 'Danish', 'Danish', 'Danish', 'Danish', 'Danish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(33, 1, 'de', 1, 'German', 'German', 'German', 'German', 'German', 'German', 'German', 'German', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(34, 1, 'dv', 1, 'Divehi; Dhivehi; Maldivian', 'Divehi; Dhivehi; Maldivian', 'Divehi; Dhivehi; Maldivian', 'Divehi; Dhivehi; Maldivian', 'Divehi; Dhivehi; Maldivian', 'Divehi; Dhivehi; Maldivian', 'Divehi; Dhivehi; Maldivian', 'Divehi; Dhivehi; Maldivian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(35, 1, 'dz', 1, 'Dzongkha', 'Dzongkha', 'Dzongkha', 'Dzongkha', 'Dzongkha', 'Dzongkha', 'Dzongkha', 'Dzongkha', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(36, 1, 'ee', 1, 'Ewe', 'Ewe', 'Ewe', 'Ewe', 'Ewe', 'Ewe', 'Ewe', 'Ewe', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(37, 1, 'el', 1, 'Greek, Modern (1453-)', 'Greek, Modern (1453-)', 'Greek, Modern (1453-)', 'Greek, Modern (1453-)', 'Greek, Modern (1453-)', 'Greek, Modern (1453-)', 'Greek, Modern (1453-)', 'Greek, Modern (1453-)', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(38, 1, 'en', 1, 'English', 'English', 'English', 'English', 'English', 'English', 'English', 'English', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(39, 1, 'eo', 1, 'Esperanto', 'Esperanto', 'Esperanto', 'Esperanto', 'Esperanto', 'Esperanto', 'Esperanto', 'Esperanto', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(40, 1, 'es', 1, 'Spanish; Castilian', 'Spanish; Castilian', 'Spanish; Castilian', 'Spanish; Castilian', 'Spanish; Castilian', 'Spanish; Castilian', 'Spanish; Castilian', 'Spanish; Castilian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(41, 1, 'et', 1, 'Estonian', 'Estonian', 'Estonian', 'Estonian', 'Estonian', 'Estonian', 'Estonian', 'Estonian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(42, 1, 'eu', 1, 'Basque', 'Basque', 'Basque', 'Basque', 'Basque', 'Basque', 'Basque', 'Basque', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(43, 1, 'fa', 1, 'Persian', 'Persian', 'Persian', 'Persian', 'Persian', 'Persian', 'Persian', 'Persian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(44, 1, 'ff', 1, 'Fulah', 'Fulah', 'Fulah', 'Fulah', 'Fulah', 'Fulah', 'Fulah', 'Fulah', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(45, 1, 'fi', 1, 'Finnish', 'Finnish', 'Finnish', 'Finnish', 'Finnish', 'Finnish', 'Finnish', 'Finnish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(46, 1, 'fj', 1, 'Fijian', 'Fijian', 'Fijian', 'Fijian', 'Fijian', 'Fijian', 'Fijian', 'Fijian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(47, 1, 'fo', 1, 'Faroese', 'Faroese', 'Faroese', 'Faroese', 'Faroese', 'Faroese', 'Faroese', 'Faroese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(48, 1, 'fr', 1, 'French', 'French', 'French', 'French', 'French', 'French', 'French', 'French', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(49, 1, 'fy', 1, 'Western Frisian', 'Western Frisian', 'Western Frisian', 'Western Frisian', 'Western Frisian', 'Western Frisian', 'Western Frisian', 'Western Frisian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(50, 1, 'ga', 1, 'Irish', 'Irish', 'Irish', 'Irish', 'Irish', 'Irish', 'Irish', 'Irish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(51, 1, 'gd', 1, 'Gaelic; Scottish Gaelic', 'Gaelic; Scottish Gaelic', 'Gaelic; Scottish Gaelic', 'Gaelic; Scottish Gaelic', 'Gaelic; Scottish Gaelic', 'Gaelic; Scottish Gaelic', 'Gaelic; Scottish Gaelic', 'Gaelic; Scottish Gaelic', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(52, 1, 'gl', 1, 'Galician', 'Galician', 'Galician', 'Galician', 'Galician', 'Galician', 'Galician', 'Galician', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(53, 1, 'gn', 1, 'Guarani', 'Guarani', 'Guarani', 'Guarani', 'Guarani', 'Guarani', 'Guarani', 'Guarani', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(54, 1, 'gu', 1, 'Gujarati', 'Gujarati', 'Gujarati', 'Gujarati', 'Gujarati', 'Gujarati', 'Gujarati', 'Gujarati', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(55, 1, 'gv', 1, 'Manx', 'Manx', 'Manx', 'Manx', 'Manx', 'Manx', 'Manx', 'Manx', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(56, 1, 'ha', 1, 'Hausa', 'Hausa', 'Hausa', 'Hausa', 'Hausa', 'Hausa', 'Hausa', 'Hausa', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(57, 1, 'he', 1, 'Hebrew', 'Hebrew', 'Hebrew', 'Hebrew', 'Hebrew', 'Hebrew', 'Hebrew', 'Hebrew', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(58, 1, 'hi', 1, 'Hindi', 'Hindi', 'Hindi', 'Hindi', 'Hindi', 'Hindi', 'Hindi', 'Hindi', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(59, 1, 'ho', 1, 'Hiri Motu', 'Hiri Motu', 'Hiri Motu', 'Hiri Motu', 'Hiri Motu', 'Hiri Motu', 'Hiri Motu', 'Hiri Motu', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(60, 1, 'hr', 1, 'Croatian', 'Croatian', 'Croatian', 'Croatian', 'Croatian', 'Croatian', 'Croatian', 'Croatian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(61, 1, 'ht', 1, 'Haitian; Haitian Creole', 'Haitian; Haitian Creole', 'Haitian; Haitian Creole', 'Haitian; Haitian Creole', 'Haitian; Haitian Creole', 'Haitian; Haitian Creole', 'Haitian; Haitian Creole', 'Haitian; Haitian Creole', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(62, 1, 'hu', 1, 'Hungarian', 'Hungarian', 'Hungarian', 'Hungarian', 'Hungarian', 'Hungarian', 'Hungarian', 'Hungarian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(63, 1, 'hy', 1, 'Armenian', 'Armenian', 'Armenian', 'Armenian', 'Armenian', 'Armenian', 'Armenian', 'Armenian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(64, 1, 'hz', 1, 'Herero', 'Herero', 'Herero', 'Herero', 'Herero', 'Herero', 'Herero', 'Herero', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(65, 1, 'ia', 1, 'Interlingua ', 'Interlingua ', 'Interlingua ', 'Interlingua ', 'Interlingua ', 'Interlingua ', 'Interlingua ', 'Interlingua ', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(66, 1, 'id', 1, 'Indonesian', 'Indonesian', 'Indonesian', 'Indonesian', 'Indonesian', 'Indonesian', 'Indonesian', 'Indonesian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(67, 1, 'ie', 1, 'Interlingue; Occidental', 'Interlingue; Occidental', 'Interlingue; Occidental', 'Interlingue; Occidental', 'Interlingue; Occidental', 'Interlingue; Occidental', 'Interlingue; Occidental', 'Interlingue; Occidental', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(68, 1, 'ig', 1, 'Igbo', 'Igbo', 'Igbo', 'Igbo', 'Igbo', 'Igbo', 'Igbo', 'Igbo', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(69, 1, 'ii', 1, 'Sichuan Yi; Nuosu', 'Sichuan Yi; Nuosu', 'Sichuan Yi; Nuosu', 'Sichuan Yi; Nuosu', 'Sichuan Yi; Nuosu', 'Sichuan Yi; Nuosu', 'Sichuan Yi; Nuosu', 'Sichuan Yi; Nuosu', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(70, 1, 'ik', 1, 'Inupiaq', 'Inupiaq', 'Inupiaq', 'Inupiaq', 'Inupiaq', 'Inupiaq', 'Inupiaq', 'Inupiaq', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(71, 1, 'io', 1, 'Ido', 'Ido', 'Ido', 'Ido', 'Ido', 'Ido', 'Ido', 'Ido', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(72, 1, 'is', 1, 'Icelandic', 'Icelandic', 'Icelandic', 'Icelandic', 'Icelandic', 'Icelandic', 'Icelandic', 'Icelandic', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(73, 1, 'it', 1, 'Italian', 'Italian', 'Italian', 'Italian', 'Italian', 'Italian', 'Italian', 'Italian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(74, 1, 'iu', 1, 'Inuktitut', 'Inuktitut', 'Inuktitut', 'Inuktitut', 'Inuktitut', 'Inuktitut', 'Inuktitut', 'Inuktitut', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(75, 1, 'ja', 1, 'Japanese', 'Japanese', 'Japanese', 'Japanese', 'Japanese', 'Japanese', 'Japanese', 'Japanese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(76, 1, 'jv', 1, 'Javanese', 'Javanese', 'Javanese', 'Javanese', 'Javanese', 'Javanese', 'Javanese', 'Javanese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(77, 1, 'ka', 1, 'Georgian', 'Georgian', 'Georgian', 'Georgian', 'Georgian', 'Georgian', 'Georgian', 'Georgian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(78, 1, 'kg', 1, 'Kongo', 'Kongo', 'Kongo', 'Kongo', 'Kongo', 'Kongo', 'Kongo', 'Kongo', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(79, 1, 'ki', 1, 'Kikuyu; Gikuyu', 'Kikuyu; Gikuyu', 'Kikuyu; Gikuyu', 'Kikuyu; Gikuyu', 'Kikuyu; Gikuyu', 'Kikuyu; Gikuyu', 'Kikuyu; Gikuyu', 'Kikuyu; Gikuyu', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(80, 1, 'kj', 1, 'Kuanyama; Kwanyama', 'Kuanyama; Kwanyama', 'Kuanyama; Kwanyama', 'Kuanyama; Kwanyama', 'Kuanyama; Kwanyama', 'Kuanyama; Kwanyama', 'Kuanyama; Kwanyama', 'Kuanyama; Kwanyama', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(81, 1, 'kk', 1, 'Kazakh', 'Kazakh', 'Kazakh', 'Kazakh', 'Kazakh', 'Kazakh', 'Kazakh', 'Kazakh', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(82, 1, 'kl', 1, 'Kalaallisut; Greenlandic', 'Kalaallisut; Greenlandic', 'Kalaallisut; Greenlandic', 'Kalaallisut; Greenlandic', 'Kalaallisut; Greenlandic', 'Kalaallisut; Greenlandic', 'Kalaallisut; Greenlandic', 'Kalaallisut; Greenlandic', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(83, 1, 'km', 1, 'Central Khmer', 'Central Khmer', 'Central Khmer', 'Central Khmer', 'Central Khmer', 'Central Khmer', 'Central Khmer', 'Central Khmer', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(84, 1, 'kn', 1, 'Kannada', 'Kannada', 'Kannada', 'Kannada', 'Kannada', 'Kannada', 'Kannada', 'Kannada', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(85, 1, 'ko', 1, 'Korean', 'Korean', 'Korean', 'Korean', 'Korean', 'Korean', 'Korean', 'Korean', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(86, 1, 'kr', 1, 'Kanuri', 'Kanuri', 'Kanuri', 'Kanuri', 'Kanuri', 'Kanuri', 'Kanuri', 'Kanuri', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(87, 1, 'ks', 1, 'Kashmiri', 'Kashmiri', 'Kashmiri', 'Kashmiri', 'Kashmiri', 'Kashmiri', 'Kashmiri', 'Kashmiri', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(88, 1, 'ku', 1, 'Kurdish', 'Kurdish', 'Kurdish', 'Kurdish', 'Kurdish', 'Kurdish', 'Kurdish', 'Kurdish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(89, 1, 'kv', 1, 'Komi', 'Komi', 'Komi', 'Komi', 'Komi', 'Komi', 'Komi', 'Komi', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(90, 1, 'kw', 1, 'Cornish', 'Cornish', 'Cornish', 'Cornish', 'Cornish', 'Cornish', 'Cornish', 'Cornish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(91, 1, 'ky', 1, 'Kirghiz; Kyrgyz', 'Kirghiz; Kyrgyz', 'Kirghiz; Kyrgyz', 'Kirghiz; Kyrgyz', 'Kirghiz; Kyrgyz', 'Kirghiz; Kyrgyz', 'Kirghiz; Kyrgyz', 'Kirghiz; Kyrgyz', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(92, 1, 'la', 1, 'Latin', 'Latin', 'Latin', 'Latin', 'Latin', 'Latin', 'Latin', 'Latin', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(93, 1, 'lb', 1, 'Luxembourgish; Letzeburgesch', 'Luxembourgish; Letzeburgesch', 'Luxembourgish; Letzeburgesch', 'Luxembourgish; Letzeburgesch', 'Luxembourgish; Letzeburgesch', 'Luxembourgish; Letzeburgesch', 'Luxembourgish; Letzeburgesch', 'Luxembourgish; Letzeburgesch', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(94, 1, 'lg', 1, 'Ganda', 'Ganda', 'Ganda', 'Ganda', 'Ganda', 'Ganda', 'Ganda', 'Ganda', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(95, 1, 'li', 1, 'Limburgan; Limburger; Limburgish', 'Limburgan; Limburger; Limburgish', 'Limburgan; Limburger; Limburgish', 'Limburgan; Limburger; Limburgish', 'Limburgan; Limburger; Limburgish', 'Limburgan; Limburger; Limburgish', 'Limburgan; Limburger; Limburgish', 'Limburgan; Limburger; Limburgish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(96, 1, 'ln', 1, 'Lingala', 'Lingala', 'Lingala', 'Lingala', 'Lingala', 'Lingala', 'Lingala', 'Lingala', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(97, 1, 'lo', 1, 'Lao', 'Lao', 'Lao', 'Lao', 'Lao', 'Lao', 'Lao', 'Lao', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(98, 1, 'lt', 1, 'Lithuanian', 'Lithuanian', 'Lithuanian', 'Lithuanian', 'Lithuanian', 'Lithuanian', 'Lithuanian', 'Lithuanian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(99, 1, 'lu', 1, 'Luba-Katanga', 'Luba-Katanga', 'Luba-Katanga', 'Luba-Katanga', 'Luba-Katanga', 'Luba-Katanga', 'Luba-Katanga', 'Luba-Katanga', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(100, 1, 'lv', 1, 'Latvian', 'Latvian', 'Latvian', 'Latvian', 'Latvian', 'Latvian', 'Latvian', 'Latvian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(101, 1, 'mg', 1, 'Malagasy', 'Malagasy', 'Malagasy', 'Malagasy', 'Malagasy', 'Malagasy', 'Malagasy', 'Malagasy', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(102, 1, 'mh', 1, 'Marshallese', 'Marshallese', 'Marshallese', 'Marshallese', 'Marshallese', 'Marshallese', 'Marshallese', 'Marshallese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(103, 1, 'mi', 1, 'Maori', 'Maori', 'Maori', 'Maori', 'Maori', 'Maori', 'Maori', 'Maori', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(104, 1, 'mk', 1, 'Macedonian', 'Macedonian', 'Macedonian', 'Macedonian', 'Macedonian', 'Macedonian', 'Macedonian', 'Macedonian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(105, 1, 'ml', 1, 'Malayalam', 'Malayalam', 'Malayalam', 'Malayalam', 'Malayalam', 'Malayalam', 'Malayalam', 'Malayalam', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(106, 1, 'mn', 1, 'Mongolian', 'Mongolian', 'Mongolian', 'Mongolian', 'Mongolian', 'Mongolian', 'Mongolian', 'Mongolian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(107, 1, 'mr', 1, 'Marathi', 'Marathi', 'Marathi', 'Marathi', 'Marathi', 'Marathi', 'Marathi', 'Marathi', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(108, 1, 'ms', 1, 'Malay', 'Malay', 'Malay', 'Malay', 'Malay', 'Malay', 'Malay', 'Malay', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(109, 1, 'mt', 1, 'Maltese', 'Maltese', 'Maltese', 'Maltese', 'Maltese', 'Maltese', 'Maltese', 'Maltese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(110, 1, 'my', 1, 'Burmese', 'Burmese', 'Burmese', 'Burmese', 'Burmese', 'Burmese', 'Burmese', 'Burmese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(111, 1, 'na', 1, 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(112, 1, 'nb', 1, 'BokmÃ¥l, Norwegian; Norwegian BokmÃ¥l', 'BokmÃ¥l, Norwegian; Norwegian BokmÃ¥l', 'BokmÃƒÂ¥l, Norwegian; Norwegian BokmÃƒÂ¥l', 'BokmÃƒÂ¥l, Norwegian; Norwegian BokmÃƒÂ¥l', 'BokmÃƒÂ¥l, Norwegian; Norwegian BokmÃƒÂ¥l', 'BokmÃƒÂ¥l, Norwegian; Norwegian BokmÃƒÂ¥l', 'BokmÃƒÂ¥l, Norwegian; Norwegian BokmÃƒÂ¥l', 'BokmÃƒÂ¥l, Norwegian; Norwegian BokmÃƒÂ¥l', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(113, 1, 'nd', 1, 'Ndebele, North; North Ndebele', 'Ndebele, North; North Ndebele', 'Ndebele, North; North Ndebele', 'Ndebele, North; North Ndebele', 'Ndebele, North; North Ndebele', 'Ndebele, North; North Ndebele', 'Ndebele, North; North Ndebele', 'Ndebele, North; North Ndebele', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(114, 1, 'ne', 1, 'Nepali', 'Nepali', 'Nepali', 'Nepali', 'Nepali', 'Nepali', 'Nepali', 'Nepali', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(115, 1, 'ng', 1, 'Ndonga', 'Ndonga', 'Ndonga', 'Ndonga', 'Ndonga', 'Ndonga', 'Ndonga', 'Ndonga', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(116, 1, 'nl', 1, 'Dutch; Flemish', 'Dutch; Flemish', 'Dutch; Flemish', 'Dutch; Flemish', 'Dutch; Flemish', 'Dutch; Flemish', 'Dutch; Flemish', 'Dutch; Flemish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(117, 1, 'nn', 1, 'Norwegian Nynorsk; Nynorsk, Norwegian', 'Norwegian Nynorsk; Nynorsk, Norwegian', 'Norwegian Nynorsk; Nynorsk, Norwegian', 'Norwegian Nynorsk; Nynorsk, Norwegian', 'Norwegian Nynorsk; Nynorsk, Norwegian', 'Norwegian Nynorsk; Nynorsk, Norwegian', 'Norwegian Nynorsk; Nynorsk, Norwegian', 'Norwegian Nynorsk; Nynorsk, Norwegian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(118, 1, 'no', 1, 'Norwegian', 'Norwegian', 'Norwegian', 'Norwegian', 'Norwegian', 'Norwegian', 'Norwegian', 'Norwegian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(119, 1, 'nr', 1, 'Ndebele, South; South Ndebele', 'Ndebele, South; South Ndebele', 'Ndebele, South; South Ndebele', 'Ndebele, South; South Ndebele', 'Ndebele, South; South Ndebele', 'Ndebele, South; South Ndebele', 'Ndebele, South; South Ndebele', 'Ndebele, South; South Ndebele', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(120, 1, 'nv', 1, 'Navajo; Navaho', 'Navajo; Navaho', 'Navajo; Navaho', 'Navajo; Navaho', 'Navajo; Navaho', 'Navajo; Navaho', 'Navajo; Navaho', 'Navajo; Navaho', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(121, 1, 'ny', 1, 'Chichewa; Chewa; Nyanja', 'Chichewa; Chewa; Nyanja', 'Chichewa; Chewa; Nyanja', 'Chichewa; Chewa; Nyanja', 'Chichewa; Chewa; Nyanja', 'Chichewa; Chewa; Nyanja', 'Chichewa; Chewa; Nyanja', 'Chichewa; Chewa; Nyanja', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(122, 1, 'oc', 1, 'Occitan (post 1500); ProvenÃ§al', 'Occitan (post 1500); ProvenÃ§al', 'Occitan (post 1500); ProvenÃƒÂ§al', 'Occitan (post 1500); ProvenÃƒÂ§al', 'Occitan (post 1500); ProvenÃƒÂ§al', 'Occitan (post 1500); ProvenÃƒÂ§al', 'Occitan (post 1500); ProvenÃƒÂ§al', 'Occitan (post 1500); ProvenÃƒÂ§al', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(123, 1, 'oj', 1, 'Ojibwa', 'Ojibwa', 'Ojibwa', 'Ojibwa', 'Ojibwa', 'Ojibwa', 'Ojibwa', 'Ojibwa', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(124, 1, 'om', 1, 'Oromo', 'Oromo', 'Oromo', 'Oromo', 'Oromo', 'Oromo', 'Oromo', 'Oromo', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(125, 1, 'or', 1, 'Oriya', 'Oriya', 'Oriya', 'Oriya', 'Oriya', 'Oriya', 'Oriya', 'Oriya', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(126, 1, 'os', 1, 'Ossetian; Ossetic', 'Ossetian; Ossetic', 'Ossetian; Ossetic', 'Ossetian; Ossetic', 'Ossetian; Ossetic', 'Ossetian; Ossetic', 'Ossetian; Ossetic', 'Ossetian; Ossetic', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(127, 1, 'pa', 1, 'Panjabi; Punjabi', 'Panjabi; Punjabi', 'Panjabi; Punjabi', 'Panjabi; Punjabi', 'Panjabi; Punjabi', 'Panjabi; Punjabi', 'Panjabi; Punjabi', 'Panjabi; Punjabi', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(128, 1, 'pi', 1, 'Pali', 'Pali', 'Pali', 'Pali', 'Pali', 'Pali', 'Pali', 'Pali', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(129, 1, 'pl', 1, 'Polish', 'Polish', 'Polish', 'Polish', 'Polish', 'Polish', 'Polish', 'Polish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(130, 1, 'ps', 1, 'Pushto; Pashto', 'Pushto; Pashto', 'Pushto; Pashto', 'Pushto; Pashto', 'Pushto; Pashto', 'Pushto; Pashto', 'Pushto; Pashto', 'Pushto; Pashto', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(131, 1, 'pt', 1, 'Portuguese', 'Portuguese', 'Portuguese', 'Portuguese', 'Portuguese', 'Portuguese', 'Portuguese', 'Portuguese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(132, 1, 'qu', 1, 'Quechua', 'Quechua', 'Quechua', 'Quechua', 'Quechua', 'Quechua', 'Quechua', 'Quechua', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(133, 1, 'rm', 1, 'Romansh', 'Romansh', 'Romansh', 'Romansh', 'Romansh', 'Romansh', 'Romansh', 'Romansh', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(134, 1, 'rn', 1, 'Rundi', 'Rundi', 'Rundi', 'Rundi', 'Rundi', 'Rundi', 'Rundi', 'Rundi', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(135, 1, 'ro', 1, 'Romanian; Moldavian; Moldovan', 'Romanian; Moldavian; Moldovan', 'Romanian; Moldavian; Moldovan', 'Romanian; Moldavian; Moldovan', 'Romanian; Moldavian; Moldovan', 'Romanian; Moldavian; Moldovan', 'Romanian; Moldavian; Moldovan', 'Romanian; Moldavian; Moldovan', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(136, 1, 'ru', 1, 'Russian', 'Russian', 'Russian', 'Russian', 'Russian', 'Russian', 'Russian', 'Russian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(137, 1, 'rw', 1, 'Kinyarwanda', 'Kinyarwanda', 'Kinyarwanda', 'Kinyarwanda', 'Kinyarwanda', 'Kinyarwanda', 'Kinyarwanda', 'Kinyarwanda', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(138, 1, 'sa', 1, 'Sanskrit', 'Sanskrit', 'Sanskrit', 'Sanskrit', 'Sanskrit', 'Sanskrit', 'Sanskrit', 'Sanskrit', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(139, 1, 'sc', 1, 'Sardinian', 'Sardinian', 'Sardinian', 'Sardinian', 'Sardinian', 'Sardinian', 'Sardinian', 'Sardinian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(140, 1, 'sd', 1, 'Sindhi', 'Sindhi', 'Sindhi', 'Sindhi', 'Sindhi', 'Sindhi', 'Sindhi', 'Sindhi', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(141, 1, 'se', 1, 'Northern Sami', 'Northern Sami', 'Northern Sami', 'Northern Sami', 'Northern Sami', 'Northern Sami', 'Northern Sami', 'Northern Sami', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(142, 1, 'sg', 1, 'Sango', 'Sango', 'Sango', 'Sango', 'Sango', 'Sango', 'Sango', 'Sango', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(143, 1, 'si', 1, 'Sinhala; Sinhalese', 'Sinhala; Sinhalese', 'Sinhala; Sinhalese', 'Sinhala; Sinhalese', 'Sinhala; Sinhalese', 'Sinhala; Sinhalese', 'Sinhala; Sinhalese', 'Sinhala; Sinhalese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(144, 1, 'sk', 1, 'Slovak', 'Slovak', 'Slovak', 'Slovak', 'Slovak', 'Slovak', 'Slovak', 'Slovak', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(145, 1, 'sl', 1, 'Slovenian', 'Slovenian', 'Slovenian', 'Slovenian', 'Slovenian', 'Slovenian', 'Slovenian', 'Slovenian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(146, 1, 'sm', 1, 'Samoan', 'Samoan', 'Samoan', 'Samoan', 'Samoan', 'Samoan', 'Samoan', 'Samoan', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(147, 1, 'sn', 1, 'Shona', 'Shona', 'Shona', 'Shona', 'Shona', 'Shona', 'Shona', 'Shona', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(148, 1, 'so', 1, 'Somali', 'Somali', 'Somali', 'Somali', 'Somali', 'Somali', 'Somali', 'Somali', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(149, 1, 'sq', 1, 'Albanian', 'Albanian', 'Albanian', 'Albanian', 'Albanian', 'Albanian', 'Albanian', 'Albanian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(150, 1, 'sr', 1, 'Serbian', 'Serbian', 'Serbian', 'Serbian', 'Serbian', 'Serbian', 'Serbian', 'Serbian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(151, 1, 'ss', 1, 'Swati', 'Swati', 'Swati', 'Swati', 'Swati', 'Swati', 'Swati', 'Swati', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(152, 1, 'st', 1, 'Sotho, Southern', 'Sotho, Southern', 'Sotho, Southern', 'Sotho, Southern', 'Sotho, Southern', 'Sotho, Southern', 'Sotho, Southern', 'Sotho, Southern', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(153, 1, 'su', 1, 'Sundanese', 'Sundanese', 'Sundanese', 'Sundanese', 'Sundanese', 'Sundanese', 'Sundanese', 'Sundanese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(154, 1, 'sv', 1, 'Swedish', 'Swedish', 'Swedish', 'Swedish', 'Swedish', 'Swedish', 'Swedish', 'Swedish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(155, 1, 'sw', 1, 'Swahili', 'Swahili', 'Swahili', 'Swahili', 'Swahili', 'Swahili', 'Swahili', 'Swahili', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(156, 1, 'ta', 1, 'Tamil', 'Tamil', 'Tamil', 'Tamil', 'Tamil', 'Tamil', 'Tamil', 'Tamil', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(157, 1, 'te', 1, 'Telugu', 'Telugu', 'Telugu', 'Telugu', 'Telugu', 'Telugu', 'Telugu', 'Telugu', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(158, 1, 'tg', 1, 'Tajik', 'Tajik', 'Tajik', 'Tajik', 'Tajik', 'Tajik', 'Tajik', 'Tajik', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(159, 1, 'th', 1, 'Thai', 'Thai', 'Thai', 'Thai', 'Thai', 'Thai', 'Thai', 'Thai', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(160, 1, 'ti', 1, 'Tigrinya', 'Tigrinya', 'Tigrinya', 'Tigrinya', 'Tigrinya', 'Tigrinya', 'Tigrinya', 'Tigrinya', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(161, 1, 'tk', 1, 'Turkmen', 'Turkmen', 'Turkmen', 'Turkmen', 'Turkmen', 'Turkmen', 'Turkmen', 'Turkmen', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(162, 1, 'tl', 1, 'Tagalog', 'Tagalog', 'Tagalog', 'Tagalog', 'Tagalog', 'Tagalog', 'Tagalog', 'Tagalog', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(163, 1, 'tn', 1, 'Tswana', 'Tswana', 'Tswana', 'Tswana', 'Tswana', 'Tswana', 'Tswana', 'Tswana', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(164, 1, 'to', 1, 'Tonga (Tonga Islands)', 'Tonga (Tonga Islands)', 'Tonga (Tonga Islands)', 'Tonga (Tonga Islands)', 'Tonga (Tonga Islands)', 'Tonga (Tonga Islands)', 'Tonga (Tonga Islands)', 'Tonga (Tonga Islands)', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(165, 1, 'tr', 1, 'Turkish', 'Turkish', 'Turkish', 'Turkish', 'Turkish', 'Turkish', 'Turkish', 'Turkish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(166, 1, 'ts', 1, 'Tsonga', 'Tsonga', 'Tsonga', 'Tsonga', 'Tsonga', 'Tsonga', 'Tsonga', 'Tsonga', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(167, 1, 'tt', 1, 'Tatar', 'Tatar', 'Tatar', 'Tatar', 'Tatar', 'Tatar', 'Tatar', 'Tatar', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(168, 1, 'tw', 1, 'Twi', 'Twi', 'Twi', 'Twi', 'Twi', 'Twi', 'Twi', 'Twi', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(169, 1, 'ty', 1, 'Tahitian', 'Tahitian', 'Tahitian', 'Tahitian', 'Tahitian', 'Tahitian', 'Tahitian', 'Tahitian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(170, 1, 'ug', 1, 'Uighur; Uyghur', 'Uighur; Uyghur', 'Uighur; Uyghur', 'Uighur; Uyghur', 'Uighur; Uyghur', 'Uighur; Uyghur', 'Uighur; Uyghur', 'Uighur; Uyghur', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(171, 1, 'uk', 1, 'Ukrainian', 'Ukrainian', 'Ukrainian', 'Ukrainian', 'Ukrainian', 'Ukrainian', 'Ukrainian', 'Ukrainian', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(172, 1, 'ur', 1, 'Urdu', 'Urdu', 'Urdu', 'Urdu', 'Urdu', 'Urdu', 'Urdu', 'Urdu', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(173, 1, 'uz', 1, 'Uzbek', 'Uzbek', 'Uzbek', 'Uzbek', 'Uzbek', 'Uzbek', 'Uzbek', 'Uzbek', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(174, 1, 've', 1, 'Venda', 'Venda', 'Venda', 'Venda', 'Venda', 'Venda', 'Venda', 'Venda', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(175, 1, 'vi', 1, 'Vietnamese', 'Vietnamese', 'Vietnamese', 'Vietnamese', 'Vietnamese', 'Vietnamese', 'Vietnamese', 'Vietnamese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(176, 1, 'vo', 1, 'VolapÃ¼k', 'VolapÃ¼k', 'VolapÃƒÂ¼k', 'VolapÃƒÂ¼k', 'VolapÃƒÂ¼k', 'VolapÃƒÂ¼k', 'VolapÃƒÂ¼k', 'VolapÃƒÂ¼k', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(177, 1, 'wa', 1, 'Walloon', 'Walloon', 'Walloon', 'Walloon', 'Walloon', 'Walloon', 'Walloon', 'Walloon', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(178, 1, 'wo', 1, 'Wolof', 'Wolof', 'Wolof', 'Wolof', 'Wolof', 'Wolof', 'Wolof', 'Wolof', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(179, 1, 'xh', 1, 'Xhosa', 'Xhosa', 'Xhosa', 'Xhosa', 'Xhosa', 'Xhosa', 'Xhosa', 'Xhosa', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(180, 1, 'yi', 1, 'Yiddish', 'Yiddish', 'Yiddish', 'Yiddish', 'Yiddish', 'Yiddish', 'Yiddish', 'Yiddish', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(181, 1, 'yo', 1, 'Yoruba', 'Yoruba', 'Yoruba', 'Yoruba', 'Yoruba', 'Yoruba', 'Yoruba', 'Yoruba', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(182, 1, 'za', 1, 'Zhuang; Chuang', 'Zhuang; Chuang', 'Zhuang; Chuang', 'Zhuang; Chuang', 'Zhuang; Chuang', 'Zhuang; Chuang', 'Zhuang; Chuang', 'Zhuang; Chuang', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(183, 1, 'zh', 1, 'Chinese', 'Chinese', 'Chinese', 'Chinese', 'Chinese', 'Chinese', 'Chinese', 'Chinese', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19'),
(184, 1, 'zu', 1, 'Zulu', 'Zulu', 'Zulu', 'Zulu', 'Zulu', 'Zulu', 'Zulu', 'Zulu', NULL, NULL, NULL, 1, 'ISO 639-2', '2017-11-23 10:16:19', '2017-11-23 10:16:19');

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_languages_countries`
--

CREATE TABLE `cl_ref_languages_countries` (
  `CL_LANGUAGE_ID` int(11) NOT NULL,
  `CL_COUNTRY_ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_ref_languages_countries` (`CL_LANGUAGE_ID`, `CL_COUNTRY_ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(159, 205, 1, '159', 1, 'Thailand official language', 'Thailand official language', 'Thailand official language', 'Thailand official language', 'Langue officielle de la Thailande', NULL, 'ภาษาไทยเป็นทางการ', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-04 17:08:00', '2017-11-04 17:08:00'),
(159, 209, 1, '159', 1, '206', 'Thailand official language', 'Thailand official language', 'Thailand official language', 'Langue officielle de la Thailande', NULL, 'ภาษาไทยเป็นทางการ', NULL, NULL, NULL, NULL, 1, NULL, '2017-11-04 18:08:00', '2017-11-04 18:08:00');

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_products`
--

CREATE TABLE `cl_ref_products` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `CL_RECOMMAND_UNIT_ID` int(11) DEFAULT NULL COMMENT 'The recommanded unit for this product (example: kg / litre etc...) to preload the unit in the selection',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of phytosanitary products';

--
-- Contenu de la table `cl_ref_products`
--

INSERT INTO `cl_ref_products` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `CL_PRODUCTS_TYPE_ID`, `CL_RECOMMAND_UNIT_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, '1', 1, 'Shrimp food', 'Shrimp food', 'Shrimp food', 'Shrimp food', 'Shrimp food', 'Shrimp food', 'Shrimp food', 'Shrimp food', 'Shrimp food', 'Shrimp food', 'Shrimp food', 42, 2, 1, NULL, '2018-01-29 20:24:14', '2018-01-29 20:24:14'),
(2, 1, 'TILFOOD', 1, 'Tilapia food', 'Tilapia food', 'Tilapia food', 'Tilapia food', 'Tilapia food', 'Tilapia food', 'Tilapia food', 'Tilapia food', 'Tilapia food', 'Tilapia food', 'Tilapia food', 41, 2, 1, NULL, '2018-01-29 20:25:00', '2018-01-29 20:25:00'),
(3, 1, 'TU01', 1, 'Thai union antiobatics product 1', 'Thai union antiobatics product 1', 'Thai union antiobatics product 1', 'Thai union antiobatics product 1', 'Thai union antiobatics product 1', 'Thai union antiobatics product 1', 'Thai union antiobatics product 1', 'Thai union antiobatics product 1', 'Thai union antiobatics product 1', 'Thai union antiobatics product 1', 'Thai union antiobatics product 1', 3, 2, 1, NULL, '2018-02-21 17:02:31', '2018-02-21 17:02:31'),
(4, 1, 'THANT2', 1, 'Thai union antiobatics product 2', 'Thai union antiobatics product 2', 'Thai union antiobatics product 2', 'Thai union antiobatics product 2', 'Thai union antiobatics product 2', 'Thai union antiobatics product 2', 'Thai union antiobatics product 2', 'Thai union antiobatics product 2', 'Thai union antiobatics product 2', 'Thai union antiobatics product 2', 'Thai union antiobatics product 2', 3, 2, 1, NULL, '2018-02-21 17:04:04', '2018-02-21 17:04:04'),
(5, 1, 'SEED', 1, 'Seed from thai union hatchery', 'Seed from thai union hatchery', 'Seed from thai union hatchery', 'Seed from thai union hatchery', 'Seed from thai union hatchery', 'Seed from thai union hatchery', 'Seed from thai union hatchery', 'Seed from thai union hatchery', 'Seed from thai union hatchery', 'Seed from thai union hatchery', 'Seed from thai union hatchery', 4, 2, 1, NULL, '2018-02-21 17:06:15', '2018-02-21 17:06:15');

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_product_types`
--

CREATE TABLE `cl_ref_product_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CL_RECOMAND_QUANTITY_UNIT_ID` int(11) DEFAULT NULL COMMENT 'Recommanded unit type (volume etc) to enable filtering of proposed units',
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

INSERT INTO `cl_ref_product_types` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `CL_RECOMAND_QUANTITY_UNIT_ID`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `PARENT_CODE`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'DRUGCHEM', 1, 'Drugs and Chemicals ', 'Drugs and Chemicals', NULL, 'Drugs and Chemicals ', 'Drugs and Chemicals ', 'Drogues et produits chimiques', NULL, 'ยาและสารเคมี', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2016-10-23 09:13:07', '2017-09-12 13:36:24'),
(2, 1, 'DRUGS', 1, 'Drugs for animals ', 'Drugs for animals (execpt antibiotics)', NULL, 'Drugs for animals (execpt antibiotics)', 'Drugs for animals ', 'Médicaments pour animaux', 'Drugs for animals ', 'ยาเสพติดสำหรับสัตว์', 'Drugs for animals ', 'Drugs for animals ', 'Drugs for animals ', 'Drugs for animals ', 1, 1, NULL, '2016-10-23 07:13:07', '2017-09-12 11:36:24'),
(3, 1, 'ANTIBIO', 1, 'Antibiotics for animals ', 'Drugs for animals', NULL, 'Drugs for animals', 'Antibiotics for animals ', 'Antibiotiques pour animals ', 'Antibiotics for animals ', 'ยาปฏิชีวนะสำหรับสัตว์', 'Antibiotics for animals ', 'Antibiotics for animals ', 'Antibiotics for animals ', 'Antibiotics for animals ', 1, 1, NULL, '2016-10-23 07:13:07', '2017-09-12 11:36:24'),
(4, 1, 'SEED', 1, 'Seed for pond stocking', 'Seed for pond stocking', NULL, 'Seed for pond stocking', 'Seed for pond stocking', 'Alevins pour l\'ensemmencement de bassins', 'Seed for pond stocking', 'เมล็ดกุ้ง', 'Seed for pond stocking', 'Seed for pond stocking', 'Seed for pond stocking', 'Seed for pond stocking', 1, 1, NULL, '2016-10-23 07:13:07', '2017-09-12 11:36:24'),
(5, 1, 'PHYTO', 1, 'Phyto Sanitary products', 'Phyto Sanitary products', NULL, 'Phyto Sanitary products', 'Phyto Sanitary products', 'Produits phytosanitaires', NULL, 'ผลิตภัณฑ์สุขอนามัยพืช', NULL, NULL, NULL, NULL, 1, 1, NULL, '2017-09-23 13:05:23', '2017-09-23 13:05:23'),
(10, 1, 'PROBIO', 1, 'Probiotics', 'Probiotics', NULL, 'Probiotics', 'Probiotics', 'Probiotiques', 'Probiotics', 'โปรไบโอติก', 'Probiotics', 'Probiotics', 'Probiotics', 'Probiotics', NULL, 1, NULL, '2016-10-23 07:13:07', '2017-09-12 11:36:24'),
(20, 1, 'ADDI', 1, 'Additives', 'Additives', NULL, 'Additives', 'Additives', 'Additifs', 'Additives', 'สารเติมแต่ง', 'Additives', 'Additives', 'Additives', 'Additives', NULL, 1, NULL, '2016-10-23 07:13:07', '2017-09-12 11:36:24'),
(40, 1, 'FEED', 1, 'Feed for animals ', 'Animal feed', NULL, 'Animal feed', 'Animal feed', 'Aliments pour animaux', 'Animal feed', 'อาหารสัตว์', 'Animal feed', 'Animal feed', 'Animal feed', 'Animal feed', NULL, 1, NULL, '2016-10-23 07:13:07', '2017-09-12 11:36:24'),
(41, 1, 'FEEDFISH', 1, 'Fish feed ', 'Fish feed', NULL, 'Fish feed', 'Fish feed', 'Aliments pour poissons', 'Fish feed', 'อาหารปลา', 'Fish feed', 'Fish feed', 'Fish feed', 'Fish feed', 40, 1, NULL, '2016-10-23 07:13:07', '2017-09-12 11:36:24'),
(42, 1, 'FEEDSHRIMP', 1, 'Shrimp feed ', 'Shrimp feed', NULL, 'Shrimp feed', 'Shrimp feed', 'Aliments pour crevettes', 'Shrimp feed', 'อาหารกุ้ง', 'Shrimp feed', 'Shrimp feed', 'Shrimp feed', NULL, 40, 1, NULL, '2016-10-23 07:13:07', '2017-09-12 11:36:24'),
(50, 1, 'FERT', 1, 'Fertilizers', 'Fertilizers', NULL, 'Fertilizers', 'Fertilizers', 'Engrais', NULL, 'ปุ๋ย', NULL, NULL, NULL, NULL, 5, 1, NULL, '2017-09-23 13:05:23', '2017-09-23 13:05:23'),
(60, 1, 'PEST', 1, 'Pesticides', 'Pesticides', NULL, 'Pesticides', 'Pesticides', 'Pesticides', NULL, 'สารกำจัดศัตรูพืช', NULL, NULL, NULL, NULL, 5, 1, NULL, '2017-09-23 13:05:23', '2017-09-23 13:05:23'),
(70, 1, 'HERB', 1, 'Herbicides', 'Herbicides', NULL, 'Herbicides', 'Herbicides', 'Herbicides', NULL, 'สารเคมีกำจัดวัชพืช', NULL, NULL, NULL, NULL, 5, 1, NULL, '2017-09-23 13:05:23', '2017-09-23 13:05:23'),
(80, 1, 'FONG', 1, 'Fungicides', 'Fungicides', NULL, 'Fungicides', 'Fungicides', 'Fongicides', NULL, 'สารฆ่าเชื้อรา', NULL, NULL, NULL, NULL, 5, 1, NULL, '2017-09-23 13:05:23', '2017-09-23 13:05:23'),
(100, 1, 'LIME', 1, 'Lime / whitewash family', 'Lime / whitewash family', NULL, 'Lime / whitewash family', 'Lime / whitewash family', 'Lime / whitewash family', 'Lime / whitewash family', 'Lime / whitewash family', 'Lime / whitewash family', 'Lime / whitewash family', 'Lime / whitewash family', 'Lime / whitewash family', NULL, 3, NULL, '2018-02-22 13:44:09', '2018-02-22 13:44:09');

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_regions`
--

CREATE TABLE `cl_ref_regions` (
  `ID` int(11) NOT NULL COMMENT 'The REGION codelist ID',
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` char(2) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

INSERT INTO `cl_ref_species` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `SCIENTIFIC_NAME`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'VAN', 1, 'Vannamei', 'Vannamei species', 'Vannamei species', 'Vannamei species', 'Crevettes Vannamei ', NULL, 'กุ้ง Vannamei', NULL, NULL, NULL, NULL, 'Vannamei', 1, NULL, '2017-01-01 08:02:11', '2017-09-12 13:33:00'),
(2, 1, 'MON', 1, 'Monodon', 'Monodon species', 'Monodon species', 'Monodon species', 'Crevette Monodon', NULL, 'กุ้งกอนโดดอน', NULL, NULL, NULL, NULL, 'Monodon', 1, NULL, '2017-01-01 08:02:11', '2017-09-12 13:33:00'),
(3, 1, 'TIL', 1, 'Tilapia', 'Tilapia species', 'Tilapia', 'Tilapia', 'Tilapia', NULL, 'Plā nil', NULL, NULL, NULL, NULL, 'Tilapia', 1, NULL, '2017-01-01 08:02:11', '2017-09-12 13:33:00'),
(4, 1, 'MIL', 1, 'Milkfish', 'Milkfish species', 'Milkfish', 'Milkfish', 'Chanidés', NULL, 'ปลานวลจันทร์ทะเล', NULL, NULL, NULL, NULL, 'Milkfish', 1, NULL, '2017-01-01 08:02:11', '2017-09-12 13:33:00');

-- --------------------------------------------------------

--
-- Structure de la table `cl_ref_vessel_types`
--

CREATE TABLE `cl_ref_vessel_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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

--
-- Contenu de la table `dt_farmaq_pond_management`
--

INSERT INTO `dt_farmaq_pond_management` (`ID`, `REG_ENTITY_FARM_POND_ID`, `ACTIVITY_START_DATE`, `ACTIVITY_END_DATE`, `CL_POND_ACTIVITY_TYPE_ID`, `CL_PRODUCT_ID`, `MEASURE_VALUE`, `CL_MEASURE_VALUE_UNIT_ID`, `ADDITIONNAL_MEASURE_VALUE`, `CL_ADDITIONNAL_MEASURE_VALUE_UNIT_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 176, '2018-01-02 07:25:17', '2018-01-03 07:25:19', 3, 1, 45, 2, NULL, NULL, 3, '', '2018-01-29 19:25:27', '2018-01-29 19:25:27'),
(2, 178, '2016-02-09 10:18:20', '2016-02-09 01:19:36', 1, NULL, 30000, 3, NULL, NULL, 4, '', '2018-02-16 03:20:01', '2018-02-16 03:20:01'),
(3, 178, '2016-02-15 10:20:27', '2016-02-15 11:20:44', 3, 1, 15, 2, NULL, NULL, 4, '', '2018-02-16 03:21:37', '2018-02-16 03:21:37'),
(4, 178, '2016-02-24 10:22:02', '2016-02-24 11:22:18', 3, 1, 17, 2, NULL, NULL, 4, '', '2018-02-16 03:22:45', '2018-02-16 03:22:45'),
(5, 178, '2016-03-08 10:26:29', '2016-03-08 11:26:42', 3, 1, 20, 2, NULL, NULL, 4, '', '2018-02-16 03:27:21', '2018-02-16 03:27:21'),
(6, 178, '2016-03-22 10:27:34', '2016-03-22 11:00:00', 3, 1, 22, 2, NULL, NULL, 4, '', '2018-02-16 03:28:13', '2018-02-16 03:28:13'),
(7, 178, '2016-03-31 09:28:39', '2016-03-31 03:29:00', 3, 1, 24, 2, NULL, NULL, 4, '', '2018-02-16 03:29:23', '2018-02-16 03:29:23'),
(8, 178, '2016-04-05 09:29:37', '2016-04-05 10:00:00', 3, 1, 25, 2, NULL, NULL, 4, '', '2018-02-16 03:30:06', '2018-02-16 03:30:06'),
(9, 178, '2016-04-20 09:30:16', '2016-04-20 10:00:00', 3, 1, 30, 2, NULL, NULL, 4, '', '2018-02-16 03:30:50', '2018-02-16 03:30:50'),
(10, 178, '2016-05-11 09:31:50', '2016-05-11 10:00:00', 3, 1, 35, 2, NULL, NULL, 4, '', '2018-02-16 03:32:17', '2018-02-16 03:32:17'),
(11, 178, '2016-06-02 09:32:30', '2016-06-02 10:00:00', 3, 1, 45, 2, NULL, NULL, 4, '', '2018-02-16 03:33:00', '2018-02-16 03:33:00'),
(12, 178, '2016-06-27 09:33:18', '2016-06-26 23:33:00', 3, 1, 50, 2, NULL, NULL, 4, '', '2018-02-16 03:33:56', '2018-02-16 03:33:56'),
(13, 178, '2016-06-29 09:34:19', '2016-07-01 09:34:41', 2, NULL, 7, 11, NULL, NULL, 4, '', '2018-02-16 03:35:15', '2018-02-16 03:35:15'),
(14, 178, '2016-11-25 08:46:46', '2016-11-25 11:00:00', 3, 1, 600, 2, NULL, NULL, 4, '', '2018-02-16 04:05:52', '2018-02-16 04:05:52'),
(15, 178, '2016-09-13 06:50:03', '2016-09-13 10:00:00', 1, NULL, 30000, 3, NULL, NULL, 4, '', '2018-02-16 06:50:43', '2018-02-16 06:50:43'),
(17, 178, '2016-11-28 01:51:07', '2016-11-29 11:00:00', 2, NULL, 4, 11, NULL, NULL, 4, '', '2018-02-16 06:52:54', '2018-02-16 06:52:54');

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

--
-- Contenu de la table `dt_farmaq_pond_measurements`
--

INSERT INTO `dt_farmaq_pond_measurements` (`ID`, `REG_ENTITY_FARM_POND_ID`, `MEASURE_DATE`, `CL_MEASURE_TYPE_ID`, `MEASURE_VALUE`, `CL_MEASURE_VALUE_UNIT_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 178, '2016-02-03 11:37:06', 5, 0.03, 20, 4, '', '2018-02-16 03:39:21', '2018-02-16 03:39:21'),
(2, 178, '2016-02-24 11:39:43', 5, 0.25, 20, 4, '', '2018-02-16 03:40:21', '2018-02-16 03:40:21'),
(3, 178, '2016-03-08 11:40:33', 5, 0.15, 20, 4, '', '2018-02-16 03:41:11', '2018-02-16 03:41:11'),
(4, 178, '2016-04-10 11:41:45', 5, 0.3, 20, 4, '', '2018-02-16 03:42:13', '2018-02-16 03:42:13'),
(5, 178, '2016-05-11 11:42:28', 5, 0.25, 20, 4, '', '2018-02-16 03:42:49', '2018-02-16 03:42:49'),
(6, 178, '2016-06-08 11:42:59', 5, 0.4, 20, 4, '', '2018-02-16 03:43:22', '2018-02-16 03:43:22'),
(7, 178, '2016-06-29 11:43:39', 5, 0.5, 20, 4, '', '2018-02-16 03:44:09', '2018-02-16 03:44:09'),
(8, 178, '2016-09-09 11:54:35', 5, 0.02, 20, 4, '', '2018-02-16 03:55:21', '2018-02-16 03:55:21'),
(9, 178, '2016-09-09 12:00:00', 2, 31, 17, 4, '', '2018-02-16 03:58:08', '2018-02-16 03:58:08'),
(10, 178, '2016-02-03 12:00:00', 2, 26, 17, 4, '', '2018-02-16 03:58:40', '2018-02-16 03:58:40'),
(11, 178, '2016-02-24 12:00:00', 2, 26, 17, 4, '', '2018-02-16 03:59:07', '2018-02-16 03:59:07'),
(12, 178, '2016-03-08 12:00:00', 2, 26.5, 17, 4, '', '2018-02-16 03:59:48', '2018-02-16 03:59:48'),
(13, 178, '2016-04-10 12:00:00', 2, 32, 17, 4, '', '2018-02-16 04:00:29', '2018-02-16 04:00:29'),
(14, 178, '2016-05-11 12:00:00', 2, 33, 17, 4, '', '2018-02-16 04:01:03', '2018-02-16 04:01:03'),
(15, 178, '2016-06-08 12:00:00', 2, 34, 17, 4, '', '2018-02-16 04:01:36', '2018-02-16 04:01:36'),
(16, 178, '2016-06-29 12:00:00', 2, 33.5, 17, 4, '', '2018-02-16 04:02:26', '2018-02-16 04:02:26'),
(17, 182, '2018-03-05 10:08:31', 1, 8, 16, 13, '', '2018-03-16 03:09:03', '2018-03-16 03:09:03');

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
(15, 144, 1, '2016-02-09', '2016-07-01', 1, '12.0', 11, 4, '', '2018-02-16 02:32:14', '2018-02-16 02:32:14'),
(16, 144, 1, '2016-09-13', '2016-11-29', 1, '8.0', 11, 4, '', '2018-02-16 02:33:49', '2018-02-16 02:33:49'),
(17, 144, 1, '2017-01-25', '2017-05-29', 1, '6.5', 11, 4, '', '2018-02-16 02:35:09', '2018-02-16 02:35:09'),
(18, 144, 1, '2017-08-07', '2017-12-21', 1, '12.5', 11, 4, '', '2018-02-16 02:36:17', '2018-02-16 02:36:17');

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
-- Structure de la table `jt_plot_activity_product_types`
--

CREATE TABLE `jt_plot_activity_product_types` (
  `CL_FARM_PLOT_ACTIVITY_ID` int(11) NOT NULL,
  `CL_PRODUCT_TYPE_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='type of contracts';

-- --------------------------------------------------------

--
-- Structure de la table `jt_pond_activity_product_types`
--

CREATE TABLE `jt_pond_activity_product_types` (
  `CL_FARM_POND_ACTIVITY_ID` int(11) NOT NULL,
  `CL_PRODUCT_TYPE_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='type of contracts';

--
-- Contenu de la table `jt_pond_activity_product_types`
--

INSERT INTO `jt_pond_activity_product_types` (`CL_FARM_POND_ACTIVITY_ID`, `CL_PRODUCT_TYPE_ID`, `DESCRIPTION`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 4, 'Seed for pond stocking', 3, NULL, '2018-02-21 17:50:59', '2018-02-21 17:50:59'),
(3, 40, 'Feeding fish / shrimp', 3, NULL, '2018-02-21 17:54:41', '2018-02-21 17:54:41'),
(3, 41, 'Feeding shrimp', 3, NULL, '2018-02-22 13:30:19', '2018-02-22 13:30:19'),
(3, 42, 'Feeding fish', 3, NULL, '2018-02-22 13:30:19', '2018-02-22 13:30:19'),
(4, 20, 'Addiditive use', 3, NULL, '2018-02-22 13:40:11', '2018-02-22 13:40:11'),
(5, 3, 'Antibiotics use', 3, NULL, '2018-02-22 13:40:57', '2018-02-22 13:40:57'),
(9, 50, 'Fertilizer use', 3, NULL, '2018-02-22 13:41:38', '2018-02-22 13:41:38');

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
(1, 1, NULL, NULL, 205, 'Tew', '', '', NULL, NULL, 'Mr.', 'M', NULL, 205, '', '', '', 0, '', 'TBC', '', '', NULL, NULL, '', NULL, 0, NULL, 3, '', '2018-01-16 19:49:55', '2018-01-16 19:49:55'),
(2, 2, NULL, NULL, NULL, 'Tew Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Chantaburi', 'Khung district, Chantaburi province', '', 0, '', 'TBC', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-16 19:50:36', '2018-01-16 19:50:36'),
(3, 1, NULL, NULL, 108, 'Trane', '', '', NULL, NULL, 'Mr.', 'M', NULL, 205, '', '', '', 0, '', 'TBC', '', '', NULL, NULL, '', NULL, 0, NULL, 3, '', '2018-01-16 19:52:03', '2018-01-16 19:52:03'),
(4, 8, NULL, NULL, 205, 'Andaman Seafood CO.,LTD.', NULL, NULL, NULL, '', NULL, NULL, NULL, 205, 'Bangkok', 'SUIT 216/44,49 L.P.N. TOWER 21TH FLOOR , NONGLINCHEE RD.,CHONGNONSEE, YANNAWA', '10120', 0, '66 2285 2450-1', '66 7783 5579-80', '66 2285 2911', 'group@andaman-food.com', NULL, NULL, '1', NULL, 0, NULL, 3, '', '2018-01-16 19:53:36', '2018-01-16 19:53:36'),
(5, 5, NULL, NULL, 94, 'Atina Farms Cooperative', NULL, NULL, NULL, '', NULL, NULL, NULL, 94, '', '', '', 0, '', 'TBC', '', '', NULL, NULL, '2', NULL, 0, NULL, 3, '', '2018-01-16 19:54:13', '2018-01-16 19:54:13'),
(6, 5, NULL, NULL, 205, 'Sam Roi Yot Shrimp Farm Cooperative', NULL, NULL, NULL, '', NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', '', '', 0, '', 'TBC', '', '', NULL, NULL, '3', NULL, 0, NULL, 3, '', '2018-01-16 19:54:53', '2018-01-16 19:54:53'),
(7, 8, NULL, NULL, 205, 'Thai Union Feed Mill Co., Ltd.', NULL, NULL, NULL, '', NULL, NULL, NULL, 205, 'Samutsakorn', '89/1 Moo 2, Rama II Road, Kalong Subdistrict, Muang District', '74000', 0, '66 (0) 3481-6500', '66 (0) 63 230 9410', '66 (0) 3481-6629', 'Yurachat.Sangsingkaew@thaiunion.com', NULL, NULL, '4', NULL, 0, NULL, 3, '', '2018-01-16 19:55:36', '2018-01-16 19:55:36'),
(8, 8, NULL, NULL, 205, 'Thai Union Hatchery Co., Ltd.', NULL, NULL, NULL, '', NULL, NULL, NULL, 205, 'Phang Nga', '42 Moo 14, Kokkloy Sub-district, Takuatung District', '82140', 0, '66 (0) 7658-4000-27', '66 (0) 7658-4000-27', '66 (0) 7658-4028-9', 'Yurachat.Sangsingkaew@thaiunion.com', NULL, NULL, '5', NULL, 0, NULL, 3, '', '2018-01-16 19:56:20', '2018-01-16 19:56:20'),
(9, 1, '', NULL, 205, 'Jaruk', 'Prapom', '', '', '', 'Mr.', 'M', NULL, 205, '', '', '', 0, '', 'TBC', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-11 07:40:35', '2017-01-11 07:40:35'),
(10, 1, '', NULL, 108, 'Tew Worker 2', '', '', '', '', 'Mrs.', 'F', NULL, 205, '', '', '', 0, '', 'TBC', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-11 08:20:55', '2017-01-11 08:20:55'),
(11, 1, '', NULL, 205, 'Decha', 'Barnleudech', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0898364133', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-11 14:10:47', '2017-01-20 10:16:44'),
(12, 1, '', NULL, 205, 'Ning Nong (Nickname)', '', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', 'TBC', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-11 14:22:26', '2017-01-20 10:17:21'),
(13, 1, '', NULL, 205, 'Chen', 'Huaheng', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0861757989', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 07:37:54', '2017-01-20 09:14:09'),
(14, 1, '', NULL, 205, 'Naiyana', 'Phuengphakdi', '', '', '', 'Mrs.', 'F', NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '', 0, '', '0892595298', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 07:59:40', '2017-01-20 10:03:46'),
(15, 1, '', NULL, 205, 'Thongthern', 'Phuangphet', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0984295819', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 08:07:42', '2017-01-20 08:18:37'),
(16, 1, '', NULL, 205, 'Seri', 'Kochio', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0852162592', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 08:13:02', '2017-01-20 10:06:32'),
(17, 1, '', NULL, 205, 'Sunan', 'Rakyim', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0852661378', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 08:16:37', '2017-01-20 10:12:46'),
(18, 1, '', NULL, 205, 'Somsak', 'Thongtun', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0839746629', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 08:21:22', '2017-01-20 10:10:30'),
(19, 1, '', NULL, 205, 'Bunloed', 'Phuengphakdi', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0870722281', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 08:38:33', '2017-01-20 09:03:21'),
(20, 1, '', NULL, 205, 'Vichai', 'Huaheng', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0860366905', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 08:55:03', '2017-01-20 07:37:47'),
(21, 1, '', NULL, 205, 'Man ', 'Temta', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0951085528', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 09:01:24', '2017-01-20 07:41:44'),
(22, 1, '', NULL, 205, 'Arnon', 'Manesuwan', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0927010684', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 09:08:35', '2017-01-20 07:50:04'),
(23, 1, '', NULL, 205, 'Oangchan', 'Mansuwan', '', '', '', 'Mrs.', 'F', NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0927010684', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 09:14:18', '2017-01-20 07:52:23'),
(24, 1, '', NULL, 205, 'Sangat', 'Chaibun', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0822494743', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 10:26:27', '2017-01-20 09:12:49'),
(25, 1, '', NULL, 205, 'Somchai', 'Loekam', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0898296805', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 10:41:10', '2017-01-20 08:57:52'),
(26, 1, '', NULL, 205, 'Phuvadon', 'Phetpradub', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 9, Kui Nua Subdistrict, Kui Buri District', '77150', 0, '', '0843196654', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 10:46:34', '2017-01-20 08:54:26'),
(27, 1, '', NULL, 205, 'Thongdee', 'Phetpradub', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 9, Kui Nua Subdistrict, Kui Buri District', '77150', 0, '', '0857026937', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 10:52:04', '2017-01-20 08:46:08'),
(28, 1, '', NULL, 205, 'Thongpoon ', 'Torrasap', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 9, Kui Nua Subdistrict, Kui Buri District', '77150', 0, '', '0849715564', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 10:56:42', '2017-01-20 08:43:20'),
(29, 1, '', NULL, 205, 'Samran', 'Hatsadam', '', '', '', 'Mrs.', 'F', NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0822414116', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 11:00:54', '2017-01-20 08:38:55'),
(30, 1, '', NULL, 205, 'Tongchai', 'Thorasab', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 9, Kui Nua Subdistrict, Kui Buri District', '77150', 0, '', '0810110371', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 11:06:26', '2017-01-20 08:37:38'),
(31, 1, '', NULL, 205, 'Prakit', 'Uthaitipwuttikorn', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0910123417', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 11:11:06', '2017-01-20 08:30:29'),
(32, 1, '', NULL, 205, 'Prani', 'Yamyai', '', '', '', 'Mrs.', 'F', NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0844139444', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 11:17:46', '2017-01-20 08:26:02'),
(33, 1, '', NULL, 205, 'Chomkhan', 'Meuansuwan', '', '', '', 'Mrs.', 'F', NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0822408337', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 11:23:11', '2017-01-20 08:04:58'),
(34, 1, '', NULL, 205, 'Pathomkan', 'Yimyai', '', '', '', 'Mrs.', 'F', NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0819952083', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 11:30:15', '2017-01-20 08:04:07'),
(35, 1, '', NULL, 205, 'Prachern', 'Yimyai', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0804322933', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 11:36:17', '2017-01-20 07:54:26'),
(36, 1, '', NULL, 205, 'Somphan', 'Laosuan', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0870067416', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 12:14:03', '2017-01-20 07:25:22'),
(37, 1, '', NULL, 205, 'Somkhit ', 'Phuangphae', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0877178509', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 12:20:55', '2017-01-18 09:08:22'),
(38, 1, '', NULL, 205, 'Sayan', 'Bunma', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0891582857', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 12:23:30', '2017-01-18 09:10:03'),
(39, 1, '', NULL, 205, 'Somnuek', 'Loekam', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0897412416', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 12:24:48', '2017-01-18 07:58:27'),
(40, 1, '', NULL, 205, 'Siri', 'Ainpasit', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0840154443', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 12:26:18', '2017-01-18 07:56:46'),
(41, 1, '', NULL, 205, 'Saman', ' Sukkrom', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0811912347', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 12:27:26', '2017-01-18 07:54:29'),
(42, 1, '', NULL, 205, 'Woravit', 'Rodbowonwittahaya', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0833175803', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 12:28:36', '2017-01-18 07:43:13'),
(43, 1, '', NULL, 205, 'Somsong ', 'Nessuwan', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0890764380', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 12:29:45', '2017-01-18 07:33:36'),
(44, 1, '', NULL, 205, 'Setthakit ', 'Laochuan', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District', '77150', 0, '', '0983705194', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 12:30:51', '2017-01-18 06:55:28'),
(45, 1, '', NULL, 205, 'Nuengruethai', 'Gojiw', '', '', '', 'Mrs.', 'F', NULL, 205, '', '', '', 0, '', '0833175449', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 12:34:11', '2017-01-17 12:34:11'),
(46, 1, '', NULL, 205, 'Lamphu', 'Vasayangkui', '', '', '', 'Mrs.', 'F', NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0957956624', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 12:36:13', '2017-01-18 09:11:37'),
(47, 1, '', NULL, 205, 'Rawisara', 'Authaithipwutthikon', '', '', '', 'Mrs.', 'F', NULL, 205, '', '', '', 0, '', '0874141765', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 12:38:56', '2017-01-17 12:41:52'),
(48, 1, '', NULL, 205, 'Ratchaset', 'Wongsawat', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', '111 Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0863264268', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 12:45:21', '2017-01-18 09:25:08'),
(49, 1, '', NULL, 205, 'Supot', 'Yudee', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0877178509', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 13:03:36', '2017-01-18 08:00:27'),
(50, 1, '', NULL, 205, 'Phanjaporn', 'Bunma', '', '', '', 'Mr.', 'M', NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0888498838', '', '', NULL, '', '', '', 0, NULL, 2, '', '2017-01-17 13:20:12', '2017-01-18 07:52:12'),
(51, 2, NULL, NULL, NULL, 'Decha Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0898364133', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:22:16', '2018-01-17 09:22:16'),
(52, 2, NULL, NULL, NULL, 'Naiyana Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0892595298', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:24:28', '2018-01-17 09:24:28'),
(53, 2, NULL, NULL, NULL, 'Chen Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0861757989', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:25:44', '2018-01-17 09:25:44'),
(54, 2, NULL, NULL, NULL, 'Thongthern Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0984295819', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:26:44', '2018-01-17 09:26:44'),
(55, 2, NULL, NULL, NULL, 'Seri Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0852162592', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:27:42', '2018-01-17 09:27:42'),
(56, 2, NULL, NULL, NULL, 'Sunan Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0852661378', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:28:46', '2018-01-17 09:28:46'),
(57, 2, NULL, NULL, NULL, 'Somsak Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Samkrat Tai, Kui Buri', '77150', 0, '', '0839746629', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:29:42', '2018-01-17 09:29:42'),
(58, 2, NULL, NULL, NULL, 'Somphan Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0870067416', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:30:48', '2018-01-17 09:30:48'),
(59, 2, NULL, NULL, NULL, 'Sangat Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0822494743', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:32:18', '2018-01-17 09:32:18'),
(60, 2, NULL, NULL, NULL, 'Vichai Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0860366905', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:33:18', '2018-01-17 09:33:18'),
(61, 2, NULL, NULL, NULL, 'Man Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0951085528', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:34:13', '2018-01-17 09:34:13'),
(62, 2, NULL, NULL, NULL, 'Arnon Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0927010684', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:35:29', '2018-01-17 09:35:29'),
(63, 2, NULL, NULL, NULL, 'Oangchan Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0927010684', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:41:57', '2018-01-17 09:41:57'),
(64, 2, NULL, NULL, NULL, 'Bunloed Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0870722281', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:43:29', '2018-01-17 09:43:29'),
(65, 2, NULL, NULL, NULL, 'Somchai Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0898296805', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:44:16', '2018-01-17 09:44:16'),
(66, 2, NULL, NULL, NULL, 'Phuvadon Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 9, Kui Nua Subdistrict, Kui Buri District', '77150', 0, '', '0843196654', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:45:30', '2018-01-17 09:45:30'),
(67, 2, NULL, NULL, NULL, 'Thongdee Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 9, Kui Nua Subdistrict, Kui Buri District', '77150', 0, '', '0857026937', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:46:34', '2018-01-17 09:46:34'),
(68, 2, NULL, NULL, NULL, 'Thongpoon Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 9, Kui Nua Subdistrict, Kui Buri District', '77150', 0, '', '0849715564', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:47:29', '2018-01-17 09:47:29'),
(69, 2, NULL, NULL, NULL, 'Samran Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0822414116', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:48:42', '2018-01-17 09:48:42'),
(70, 2, NULL, NULL, NULL, 'Tongchai Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 9, Kui Nua Subdistrict, Kui Buri District', '77150', 0, '', '0810110371', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:49:51', '2018-01-17 09:49:51'),
(71, 2, NULL, NULL, NULL, 'Prakit Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0910123417', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:50:43', '2018-01-17 09:50:43'),
(72, 2, NULL, NULL, NULL, 'Prani Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0844139444', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 09:51:33', '2018-01-17 09:51:33'),
(73, 2, NULL, NULL, NULL, 'Chomkhan Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0822408337', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 10:48:04', '2018-01-17 10:48:04'),
(74, 2, NULL, NULL, NULL, 'Patomkan Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Samkrat Tai, Kui Buri', '77180', 0, '', '0819952083', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 10:49:29', '2018-01-17 10:49:29'),
(75, 2, NULL, NULL, NULL, 'Prachern Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0804322933', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 10:50:31', '2018-01-17 10:50:31'),
(76, 2, NULL, NULL, NULL, 'Somkhit Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0877178509', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 10:51:37', '2018-01-17 10:51:37'),
(77, 2, NULL, NULL, NULL, 'Sayan Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0891582857', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 10:52:55', '2018-01-17 10:52:55'),
(78, 2, NULL, NULL, NULL, 'Somnuek Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0897412416', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 10:54:02', '2018-01-17 10:54:02'),
(79, 2, NULL, NULL, NULL, 'Siri Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0947374352', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 10:55:22', '2018-01-17 10:55:22'),
(80, 2, NULL, NULL, NULL, 'Saman Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao District, Sam Roi Yot', '77180', 0, '', '0811912347', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 10:56:40', '2018-01-17 10:56:40'),
(81, 2, NULL, NULL, NULL, 'Woravit Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0833175803', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 10:57:41', '2018-01-17 10:57:41'),
(82, 2, NULL, NULL, NULL, 'Somsong Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0890764380', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 10:58:49', '2018-01-17 10:58:49'),
(83, 2, NULL, NULL, NULL, 'Setthakit Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0983705194', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 10:59:56', '2018-01-17 10:59:56'),
(84, 2, NULL, NULL, NULL, 'Nuengruethai Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Samkrat Tai, Kui Buri', '77150', 0, '', '0833175449', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 11:00:48', '2018-01-17 11:00:48'),
(85, 2, NULL, NULL, NULL, 'Lamphu Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 5, Rai Mai Subdistrict, Sam Roi Yot District', '77180', 0, '', '0957956624', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 11:01:44', '2018-01-17 11:01:44'),
(86, 2, NULL, NULL, NULL, 'Rawisara Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 1, Sam Krathai Subdistrict, Kui Buri District ', '77150', 0, '', '0874141765', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 11:02:45', '2018-01-17 11:02:45'),
(87, 2, NULL, NULL, NULL, 'Farm Thung Ngan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', '111 Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0863264268', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 11:03:51', '2018-01-17 11:03:51'),
(88, 2, NULL, NULL, NULL, 'Supot Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0877178509', '', '', '', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 11:04:47', '2018-01-17 11:04:47'),
(89, 2, NULL, NULL, NULL, 'Phanjaporn Farm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Prachuap Khiri Khan', 'Moo 2, Rai Kao Subdistrict, Sam Roi Yot District', '77180', 0, '', '0888498838', '', '', 'เลือกสหกรณ์', NULL, NULL, NULL, 0, NULL, 3, '', '2018-01-17 11:05:48', '2018-01-17 11:05:48'),
(143, 1, NULL, NULL, 193, 'Pau', 'Badia', '', NULL, NULL, 'Mr.', 'M', '1990-10-12', 205, '', '', '', 0, '', '0955461566', '', '', NULL, NULL, '', NULL, 0, NULL, 4, '', '2018-02-16 01:19:47', '2018-02-16 01:19:47'),
(144, 2, NULL, NULL, NULL, 'Happy Shrimp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Bangkok', '3/1 Shinawatra Bldg., Sukhumvit Soi 23, Asok', '10200', 0, '', '0955461566', '', 'pau@fairagora.com', '', NULL, NULL, NULL, 0, NULL, 4, '', '2018-02-16 01:21:23', '2018-02-16 01:21:23'),
(145, 1, NULL, NULL, 205, 'Happy worker ', '1', '', NULL, NULL, 'Mr.', 'M', '2005-02-17', 205, '', '', '', 0, '', '0955461566', '', '', NULL, NULL, '', NULL, 0, NULL, 4, '', '2018-02-16 01:47:35', '2018-02-16 01:47:35'),
(146, 1, NULL, NULL, 27, 'Happy worker', '2', '', NULL, NULL, 'Mr.', 'M', NULL, 205, '', '', '', 0, '', '0955461566', '', '', NULL, NULL, '', NULL, 0, NULL, 4, '', '2018-02-16 01:49:34', '2018-02-16 01:49:34'),
(147, 2, NULL, NULL, NULL, 'Somchai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Phuket', '', '', 0, '', '0955461566', '', '', '', NULL, NULL, NULL, 0, NULL, 13, '', '2018-03-15 06:49:45', '2018-03-15 06:49:45'),
(148, 1, NULL, NULL, 205, 'Somchai', 'Sawaengsha', '', NULL, NULL, 'Mr.', 'M', NULL, 205, '', '', '', 0, '', '0955461566', '', '', NULL, NULL, '', NULL, 0, NULL, 13, '', '2018-03-15 06:51:42', '2018-03-15 06:51:42'),
(149, 2, NULL, NULL, NULL, 'Somchai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Phuket', '', '', 0, '', '0955461566', '', '', '', NULL, NULL, NULL, 0, NULL, 13, '', '2018-03-15 06:52:08', '2018-03-15 06:52:08'),
(150, 5, NULL, NULL, 205, 'TSM', NULL, NULL, NULL, '', NULL, NULL, NULL, 205, '', '', '', 0, '', '0989625695', '', '', NULL, NULL, '', NULL, 0, NULL, 5, '', '2018-03-15 07:05:33', '2018-03-15 07:05:33'),
(151, 2, NULL, NULL, NULL, 'Somchai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 'Phang Nga', '', '', 0, '', '0955461566', '', '', '', NULL, NULL, NULL, 0, NULL, 5, '', '2018-03-15 07:06:50', '2018-03-15 07:06:50'),
(152, 1, NULL, NULL, 205, 'Somchai', 'Sawaengha', '', NULL, NULL, 'Mr.', 'M', NULL, 205, '', '', '', 0, '', '0955461566', '', '', NULL, NULL, '', NULL, 0, NULL, 4, '', '2018-03-15 07:19:57', '2018-03-15 07:19:57');

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_facilities`
--

CREATE TABLE `reg_entity_facilities` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `ACCESS_TOILETS` tinyint(1) NOT NULL,
  `ACCESS_TOILETS_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'Pictures of toilets',
  `ACCESS_SHOWER` tinyint(1) NOT NULL,
  `ACCESS_SHOWER_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'Picture of shower',
  `ACCESS_TO_FREE_DRINKING` tinyint(1) DEFAULT NULL,
  `ACCESS_TO_FREE_DRINKING_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ACCESS_REST_ROOM` tinyint(1) NOT NULL,
  `ACCESS_REST_ROOM_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'Pictures of private room',
  `PRESENCE_FIRST_AID_KIT` tinyint(1) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='descirption of existing facilities';

--
-- Contenu de la table `reg_entity_facilities`
--

INSERT INTO `reg_entity_facilities` (`REG_ENTITY_FARM_ID`, `ACCESS_TOILETS`, `ACCESS_TOILETS_URL`, `ACCESS_SHOWER`, `ACCESS_SHOWER_URL`, `ACCESS_TO_FREE_DRINKING`, `ACCESS_TO_FREE_DRINKING_URL`, `ACCESS_REST_ROOM`, `ACCESS_REST_ROOM_URL`, `PRESENCE_FIRST_AID_KIT`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(2, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 4, '', '2018-02-12 01:52:09', '2018-02-12 01:52:09'),
(51, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 4, '', '2018-02-10 02:15:20', '2018-02-10 02:15:20'),
(58, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 3, '', '2018-02-08 09:43:04', '2018-02-08 09:43:04'),
(89, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 3, '', '2018-02-08 11:42:43', '2018-02-08 11:42:43'),
(144, 1, 'Toilet.jpg', 1, 'Shower.jpg', 1, 'free drinking.jpg', 1, 'Rest Room.jpg', 0, 4, '', '2018-02-16 01:21:33', '2018-02-16 01:21:33'),
(149, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 13, '', '2018-03-15 06:52:16', '2018-03-15 06:52:16'),
(151, 0, NULL, 0, NULL, 0, NULL, 1, NULL, 0, 13, '', '2018-03-16 03:24:16', '2018-03-16 03:24:16');

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
  `PLOT_DESCRIPTION` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `CL_COMMODITIES_ID` int(11) NOT NULL DEFAULT '0',
  `PLOT_SIZE` double(8,2) NOT NULL DEFAULT '0.00',
  `CL_PLOT_SIZE_UNIT_ID` int(11) NOT NULL DEFAULT '0',
  `IS_IRRIGATED` int(11) NOT NULL DEFAULT '0',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_farmaq_details`
--

CREATE TABLE `reg_entity_farmaq_details` (
  `ID` int(10) UNSIGNED NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `ESCAPE_PREVENTION_DEVICE_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `RECORD_INSPECTION` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `FRY_FROM_WILD` tinyint(1) DEFAULT NULL,
  `USE_OF_ADDITIVE` tinyint(1) DEFAULT NULL,
  `CL_FARM_PRODUCTION_TYPE_ID` int(11) DEFAULT NULL,
  `TIDAL_FLOW_SYSTEM` tinyint(1) DEFAULT NULL,
  `RAS` tinyint(1) DEFAULT NULL,
  `CL_FARM_WATER_SUPPLY_ID` int(11) DEFAULT NULL,
  `USE_FRESH_GROUNDWATER` tinyint(1) DEFAULT NULL,
  `USE_FRESH_GROUNDWATER_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `DISHARGE_SALINE_IN_FRESH` tinyint(1) DEFAULT NULL,
  `DISHARGE_SALINE_IN_FRESH_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `DISPOSAL_SLUDGE` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
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
  `CL_POND_SIZE_UNIT_ID` int(11) DEFAULT NULL,
  `POND_VOLUME` double(8,2) DEFAULT '0.00',
  `CL_POND_VOLUME_UNIT_ID` int(11) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `reg_entity_farmaq_ponds`
--

INSERT INTO `reg_entity_farmaq_ponds` (`ID`, `REG_ENTITY_FARM_ID`, `POND_NUMBER`, `POND_DESCRIPTION`, `CL_POND_TYPE_ID`, `CL_SPECIES_ID`, `POND_SIZE`, `CL_POND_SIZE_UNIT_ID`, `POND_VOLUME`, `CL_POND_VOLUME_UNIT_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 2, '1', 'Growing-out pond', 2, 1, 5.00, 29, NULL, NULL, 2, '', '2017-01-11 08:05:28', '2017-01-11 09:44:11'),
(2, 2, '2', 'Growing-out pond', 2, 1, 5.00, 29, NULL, NULL, 2, '', '2017-01-11 08:06:33', '2017-01-11 08:54:06'),
(3, 2, '3', 'Growing-out pond', 2, 1, 6.00, 29, NULL, NULL, 2, '', '2017-01-11 08:08:32', '2017-01-11 08:54:10'),
(4, 2, '4', 'Growing-out pond', 2, 1, 8.00, 29, NULL, NULL, 2, '', '2017-01-11 08:09:06', '2017-01-11 08:54:15'),
(5, 2, '5', 'Reservoir pond', 1, NULL, 12.00, 29, NULL, NULL, 2, '', '2017-01-11 08:11:07', '2017-01-11 08:52:55'),
(6, 2, '6', 'Reservoir pond', 1, NULL, 6.00, 29, NULL, NULL, 2, '', '2017-01-11 08:12:28', '2017-01-11 08:53:42'),
(7, 2, '7', 'Sediment pond', 4, NULL, 5.00, 29, NULL, NULL, 2, '', '2017-01-11 08:13:52', '2017-01-11 08:13:52'),
(8, 51, '1', 'Growing-out pond', 2, 1, 3.92, 29, NULL, NULL, 2, '', '2017-01-11 14:39:22', '2017-01-17 12:06:44'),
(9, 51, '2', 'Growing-out pond', 2, 1, 3.06, 29, NULL, NULL, 2, '', '2017-01-11 14:39:46', '2017-01-17 12:06:53'),
(10, 51, '3', 'Growing-out pond', 2, 1, 2.87, 29, NULL, NULL, 2, '', '2017-01-11 14:40:11', '2017-01-17 12:07:11'),
(11, 51, '4', 'Growing fish (recycling water)', 2, 4, 4.88, 29, NULL, NULL, 2, '', '2017-01-11 14:49:40', '2017-01-17 12:07:51'),
(12, 51, '5', 'Reservoir pond', 1, NULL, 3.68, 29, NULL, NULL, 2, '', '2017-01-11 14:50:39', '2017-01-17 12:08:58'),
(18, 52, '1', 'Growing', 2, 1, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:01:35', '2017-01-17 08:01:35'),
(19, 52, '2', 'Recycling pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:03:10', '2017-01-17 08:03:10'),
(20, 54, '1', 'Growing', 2, 1, 2.00, 29, NULL, NULL, 2, '', '2017-01-17 08:09:04', '2017-01-17 11:56:35'),
(21, 54, '2', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:09:26', '2017-01-17 08:09:26'),
(22, 54, '3', 'empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:10:00', '2017-01-17 08:10:00'),
(23, 54, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:10:25', '2017-01-17 08:10:25'),
(24, 55, '1', 'Growing', 2, 1, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:13:56', '2017-01-17 08:13:56'),
(25, 55, '2', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:14:23', '2017-01-17 08:14:23'),
(26, 55, '3', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:14:55', '2017-01-17 08:14:55'),
(27, 56, '1', 'Growing', 2, 1, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:17:37', '2017-01-17 08:17:37'),
(28, 56, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:18:02', '2017-01-17 08:18:02'),
(29, 56, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:18:34', '2017-01-17 08:18:34'),
(30, 57, '1', 'Growing', 2, 1, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:22:22', '2017-01-17 08:22:22'),
(31, 57, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:22:39', '2017-01-17 08:22:39'),
(32, 57, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:23:01', '2017-01-17 08:23:01'),
(33, 57, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:23:27', '2017-01-17 08:23:27'),
(34, 58, '1', 'Growing', 2, 1, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:26:53', '2017-01-17 08:26:53'),
(35, 58, '2', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:27:19', '2017-01-17 08:27:19'),
(36, 58, '3', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:28:03', '2017-01-17 08:28:03'),
(37, 58, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:28:25', '2017-01-17 08:28:25'),
(38, 58, '5', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:28:47', '2017-01-17 08:28:47'),
(39, 58, '6', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:29:16', '2017-01-17 08:29:16'),
(40, 58, '7', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:29:49', '2017-01-17 08:29:49'),
(41, 59, '1', 'Growing', 2, 1, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:39:25', '2017-01-17 08:39:25'),
(42, 59, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:40:41', '2017-01-17 08:40:41'),
(43, 59, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:41:07', '2017-01-17 08:41:07'),
(44, 59, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:41:27', '2017-01-17 08:41:27'),
(45, 59, '5', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:41:46', '2017-01-17 08:41:46'),
(46, 60, '1', 'Growing ', 2, 1, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:56:26', '2017-01-17 08:56:26'),
(47, 60, '2', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:56:43', '2017-01-17 08:56:43'),
(48, 60, '3', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:57:23', '2017-01-17 08:57:23'),
(49, 60, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:57:49', '2017-01-17 08:57:49'),
(50, 60, '5', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:58:10', '2017-01-17 08:58:10'),
(51, 60, '6', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:58:30', '2017-01-17 08:58:30'),
(52, 60, '7', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:58:53', '2017-01-17 08:58:53'),
(53, 60, '8', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 08:59:16', '2017-01-17 08:59:16'),
(54, 61, '1', 'Growing', 2, 1, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 09:04:00', '2017-01-17 09:04:00'),
(55, 61, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 09:04:35', '2017-01-17 09:04:35'),
(56, 61, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 09:04:59', '2017-01-17 09:04:59'),
(57, 61, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 09:05:26', '2017-01-17 09:05:26'),
(58, 61, '5', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 09:05:57', '2017-01-17 09:05:57'),
(59, 62, '1', 'Growing', 2, 1, 2.25, 29, NULL, NULL, 2, '', '2017-01-17 09:09:33', '2017-01-17 09:09:33'),
(60, 62, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 09:09:48', '2017-01-17 09:09:48'),
(61, 62, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 09:10:20', '2017-01-17 09:12:08'),
(62, 62, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 09:12:23', '2017-01-17 09:12:23'),
(63, 63, '1', 'growing', 2, 1, 2.50, 29, NULL, NULL, 2, '', '2017-01-17 09:15:26', '2017-01-17 09:15:26'),
(64, 63, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 09:15:39', '2017-01-17 09:15:39'),
(65, 63, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 09:16:06', '2017-01-17 09:16:06'),
(66, 63, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 09:16:30', '2017-01-17 09:16:30'),
(67, 64, '1', 'Growing', 3, 1, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:32:46', '2017-01-17 10:32:46'),
(68, 64, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:33:53', '2017-01-17 10:33:53'),
(69, 64, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:34:27', '2017-01-17 10:34:27'),
(70, 64, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:34:55', '2017-01-17 10:34:55'),
(71, 64, '5', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:35:20', '2017-01-17 10:35:20'),
(72, 64, '6', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:35:42', '2017-01-17 10:35:42'),
(73, 64, '7', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:36:02', '2017-01-17 10:36:02'),
(74, 64, '8', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:36:34', '2017-01-17 10:36:34'),
(75, 64, '9', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:37:07', '2017-01-17 10:37:07'),
(76, 64, '10', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:37:47', '2017-01-17 10:37:47'),
(77, 64, '11', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:38:08', '2017-01-17 10:38:08'),
(78, 65, '1', 'Growing', 2, 1, 2.25, 29, NULL, NULL, 2, '', '2017-01-17 10:42:04', '2017-01-17 10:42:04'),
(79, 65, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:42:19', '2017-01-17 10:42:19'),
(80, 65, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:42:52', '2017-01-17 10:42:52'),
(81, 65, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:43:12', '2017-01-17 10:43:12'),
(82, 66, '1', 'Growing', 2, 1, 2.30, 29, NULL, NULL, 2, '', '2017-01-17 10:47:22', '2017-01-17 10:47:22'),
(83, 66, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:47:37', '2017-01-17 10:47:37'),
(84, 66, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:47:58', '2017-01-17 10:47:58'),
(85, 66, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:48:45', '2017-01-17 10:48:45'),
(86, 67, '1', 'Growing', 2, 1, 1.15, 29, NULL, NULL, 2, '', '2017-01-17 10:53:09', '2017-01-17 10:53:09'),
(87, 67, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:53:31', '2017-01-17 10:53:31'),
(88, 67, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:53:52', '2017-01-17 10:53:52'),
(89, 67, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:54:12', '2017-01-17 10:54:12'),
(90, 68, '1', 'Growing', 2, 1, 2.65, 29, NULL, NULL, 2, '', '2017-01-17 10:57:26', '2017-01-17 10:57:26'),
(91, 68, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:57:42', '2017-01-17 10:57:42'),
(92, 68, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:58:05', '2017-01-17 10:58:05'),
(93, 68, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 10:58:33', '2017-01-17 10:58:33'),
(94, 69, '1', 'Growing', 2, 1, 2.35, 29, NULL, NULL, 2, '', '2017-01-17 11:01:52', '2017-01-17 11:01:52'),
(95, 69, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:02:13', '2017-01-17 11:02:13'),
(96, 69, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:02:40', '2017-01-17 11:02:40'),
(97, 70, '1', 'Growing', 2, 1, 2.00, 29, NULL, NULL, 2, '', '2017-01-17 11:07:15', '2017-01-17 11:07:15'),
(98, 70, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:07:32', '2017-01-17 11:07:32'),
(99, 70, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:07:54', '2017-01-17 11:07:54'),
(100, 70, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:08:15', '2017-01-17 11:08:15'),
(101, 71, '1', 'Growing ', 2, 1, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:11:50', '2017-01-17 11:11:50'),
(102, 71, '2', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:12:14', '2017-01-17 11:12:14'),
(103, 72, '1', 'Growing', 2, 1, 4.00, 29, NULL, NULL, 2, '', '2017-01-17 11:18:37', '2017-01-17 11:18:37'),
(104, 72, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:18:59', '2017-01-17 11:18:59'),
(105, 72, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:19:42', '2017-01-17 11:19:42'),
(106, 72, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:20:00', '2017-01-17 11:20:00'),
(107, 72, '5', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:20:26', '2017-01-17 11:20:26'),
(108, 72, '6', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:21:04', '2017-01-17 11:21:04'),
(109, 73, '1', 'Growing', 2, 1, 2.75, 29, NULL, NULL, 2, '', '2017-01-17 11:24:49', '2017-01-17 11:24:49'),
(110, 73, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:25:02', '2017-01-17 11:25:02'),
(111, 73, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:25:46', '2017-01-17 11:25:46'),
(112, 73, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:28:11', '2017-01-17 11:28:11'),
(113, 74, '1', 'Growing ', 2, 1, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:31:05', '2017-01-17 11:31:05'),
(114, 74, '2', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:31:20', '2017-01-17 11:31:20'),
(115, 74, '3', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:31:39', '2017-01-17 11:31:39'),
(116, 75, '1', 'Growing', 2, 1, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:37:33', '2017-01-17 11:37:33'),
(117, 75, '2', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:56:01', '2017-01-17 11:56:01'),
(118, 75, '3', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:57:07', '2017-01-17 11:57:07'),
(119, 75, '4', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:58:00', '2017-01-17 11:58:00'),
(120, 75, '5', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 11:58:25', '2017-01-17 11:58:25'),
(121, 51, '6', 'Reservoir pond', 1, NULL, 2.81, 29, NULL, NULL, 2, '', '2017-01-17 12:09:19', '2017-01-17 12:09:19'),
(122, 51, '7', 'Reservoir pond', 1, NULL, 4.33, 29, NULL, NULL, 2, '', '2017-01-17 12:10:05', '2017-01-17 12:10:05'),
(123, 86, '1', 'Growing', 2, 1, 2.71, 29, NULL, NULL, 2, '', '2017-01-17 12:39:21', '2017-01-17 12:39:21'),
(124, 86, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 12:39:35', '2017-01-17 12:39:35'),
(125, 86, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 12:40:04', '2017-01-17 12:40:04'),
(126, 87, '1', 'Growing ', 2, 1, 3.07, 29, NULL, NULL, 2, '', '2017-01-17 12:46:50', '2017-01-17 12:46:50'),
(127, 87, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 12:47:08', '2017-01-17 12:47:08'),
(128, 87, '3', 'Sludge ++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 12:47:39', '2017-01-17 12:47:39'),
(129, 87, '4', 'Sludge +', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 12:48:03', '2017-01-17 12:48:03'),
(130, 85, '1', 'Growig', 2, 1, 2.30, 29, NULL, NULL, 2, '', '2017-01-17 12:53:22', '2017-01-17 12:53:22'),
(131, 85, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 12:53:41', '2017-01-17 12:53:41'),
(132, 85, '3', 'Sludge ++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 12:54:03', '2017-01-17 12:54:03'),
(133, 85, '4', 'Sludge +', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 12:54:26', '2017-01-17 12:54:26'),
(134, 77, '1', 'Growing', 2, 1, 2.00, 29, NULL, NULL, 2, '', '2017-01-17 12:58:02', '2017-01-17 12:58:02'),
(135, 77, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 12:58:19', '2017-01-17 12:58:19'),
(136, 77, '3', 'Sludge ++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 12:58:44', '2017-01-17 12:58:44'),
(137, 77, '4', 'Sludge +', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 12:59:09', '2017-01-17 12:59:09'),
(138, 76, '1', 'Growing', 2, 1, 2.32, 29, NULL, NULL, 2, '', '2017-01-17 13:00:28', '2017-01-17 13:00:28'),
(139, 76, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 13:00:40', '2017-01-17 13:00:40'),
(140, 76, '3', 'Sludge ++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 13:01:01', '2017-01-17 13:01:01'),
(141, 76, '4', 'Sludge +', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 13:01:24', '2017-01-17 13:01:24'),
(142, 88, '1', 'Growing', 2, 1, 2.50, 29, NULL, NULL, 2, '', '2017-01-17 13:05:02', '2017-01-17 13:05:02'),
(143, 88, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 13:05:29', '2017-01-17 13:05:29'),
(144, 88, '3', 'Sludge ++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 13:05:53', '2017-01-17 13:05:53'),
(145, 88, '4', 'Sludge +', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 13:06:12', '2017-01-17 13:06:12'),
(146, 78, '1', 'Growing', 2, 1, 2.00, 29, NULL, NULL, 2, '', '2017-01-17 13:08:45', '2017-01-17 13:08:45'),
(147, 78, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 13:08:58', '2017-01-17 13:08:58'),
(148, 78, '3', 'Sludge ++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 13:09:20', '2017-01-17 13:09:20'),
(149, 78, '4', 'Sludge +', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 13:09:42', '2017-01-17 13:09:42'),
(150, 79, '1', 'Growing', 2, 1, 2.75, 29, NULL, NULL, 2, '', '2017-01-17 13:12:30', '2017-01-17 13:12:30'),
(151, 79, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 13:12:43', '2017-01-17 13:12:43'),
(152, 79, '3', 'Sludge ++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 13:13:12', '2017-01-17 13:13:12'),
(153, 79, '4', 'Sludge +', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 13:14:10', '2017-01-17 13:14:10'),
(154, 80, '1', 'Growing', 2, 1, 2.00, 29, NULL, NULL, 2, '', '2017-01-17 13:15:19', '2017-01-17 13:15:19'),
(155, 80, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 13:15:35', '2017-01-17 13:15:35'),
(156, 80, '3', 'Sludge ++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 13:17:44', '2017-01-17 13:17:44'),
(157, 80, '4', 'Sludge +', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-17 13:18:07', '2017-01-17 13:18:07'),
(158, 83, '1', 'Growing', 2, 1, 2.50, 29, NULL, NULL, 2, '', '2017-01-18 06:46:44', '2017-01-18 06:46:44'),
(161, 83, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-18 06:48:44', '2017-01-18 06:49:35'),
(162, 83, '3', 'Recycling water pond', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-18 06:50:36', '2017-01-18 06:50:36'),
(163, 82, '1', 'Growing', 2, 1, 2.50, 29, NULL, NULL, 2, '', '2017-01-18 07:05:55', '2017-01-18 07:05:55'),
(164, 82, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-18 07:11:35', '2017-01-18 07:11:35'),
(165, 82, '3', 'Sludge ++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-18 07:12:08', '2017-01-18 07:12:08'),
(166, 82, '4', 'Sludge +', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-18 07:13:02', '2017-01-18 07:13:02'),
(167, 81, '1', 'Growing', 2, 1, 2.00, 29, NULL, NULL, 2, '', '2017-01-18 07:41:06', '2017-01-18 07:41:06'),
(168, 81, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-18 07:41:29', '2017-01-18 07:41:29'),
(169, 81, '3', 'Sludge ++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-18 07:41:56', '2017-01-18 07:41:56'),
(170, 81, '4', 'Sludge +', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-18 07:42:26', '2017-01-18 07:42:26'),
(171, 89, '1', 'Growing', 2, 1, 2.30, 29, NULL, NULL, 2, '', '2017-01-18 07:45:47', '2017-01-18 07:45:47'),
(172, 89, '2', 'Sludge +++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-18 07:46:04', '2017-01-18 07:46:04'),
(173, 89, '3', 'Sludge ++', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-18 07:48:13', '2017-01-18 07:48:13'),
(174, 89, '4', 'Sludge +', 4, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-18 07:51:35', '2017-01-18 07:51:35'),
(175, 60, '9', 'Empty pond', 1, NULL, 0.00, 29, NULL, NULL, 2, '', '2017-01-20 07:33:49', '2017-01-20 07:33:49'),
(178, 144, '1', '', 2, 1, 3.00, 29, 0.00, NULL, 1, NULL, '2018-02-16 02:37:56', '2018-02-16 02:37:56'),
(179, 144, '2', '', 2, 1, 2.50, 29, 0.00, NULL, 1, NULL, '2018-02-16 02:38:23', '2018-02-16 02:38:23'),
(180, 144, '3', '', 1, NULL, 5.00, 29, 0.00, NULL, 1, NULL, '2018-02-16 02:39:01', '2018-02-16 02:39:01'),
(181, 144, '4', '', 4, NULL, 2.00, 29, 0.00, NULL, 1, NULL, '2018-02-16 02:41:34', '2018-02-16 02:41:34'),
(182, 151, '1', 'Old pond', 2, 1, 3.00, 29, 0.00, NULL, 1, NULL, '2018-03-16 03:04:46', '2018-03-16 03:04:46');

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
-- Structure de la table `reg_entity_farm_buyers`
--

CREATE TABLE `reg_entity_farm_buyers` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `REG_ENTITY_BUYER_ID` int(11) NOT NULL,
  `CL_PRODUCT_TYPES_ID` int(11) DEFAULT '1',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `STAKEHOLDER_MEETING_PARTICIPATION` tinyint(1) DEFAULT '0',
  `STAKEHOLDER_MEETING_DATE` date DEFAULT NULL,
  `STAKEHOLDER_MEETING_LOCATION` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `MEMBER_OF_ASSOCIATION` tinyint(1) DEFAULT '0',
  `COMMITTED_TO_SUSTAINABLE_PRACTICES` tinyint(1) DEFAULT NULL,
  `COMMITTED_TO_SUSTAINABLE_PRACTICES_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `reg_entity_farm_details`
--

INSERT INTO `reg_entity_farm_details` (`ID`, `REG_ENTITY_FARM_ID`, `REG_ENTITY_OWNER_ID`, `SYS_USER_FARMADMIN_ID`, `SIZE`, `CL_SIZE_UNIT_ID`, `LONGITUDE`, `LATITUDE`, `AERIAL_VIEW`, `QUOTA_ID`, `WATER_USE_AUTHORIZATION`, `LAND_USE_AUTHORIZATION`, `ENVIRONMENT_IMPACT_ASSESSMENT`, `ENVIRONMENT_IMPACT_ASSESSMENT_URL`, `HVH_CONSTRUCT_PERMIT`, `HVH_LAND_TITLE`, `SITING_PROTECTED_AREA`, `SITING_PROTECTED_AREA_AUTHORIZATION_URL`, `HVHE_FARM_EXPENSION`, `HVHE_YES_IN_HVH`, `CL_HVHE_EXPENSION_TYPE_ID`, `HVHE_CANAL_RESTAURATION_PLAN`, `CUMUL_IMPACTS`, `MEMBER_COOP_ID`, `HAS_A_LAB`, `HEALTH_MANAGEMENT_TRAINING`, `HEALTH_MANAGEMENT_PLAN`, `ESCAPE_PREVENTION_DEVICE_URL`, `RECORD_INSPECTION`, `STAKEHOLDER_MEETING_PARTICIPATION`, `STAKEHOLDER_MEETING_DATE`, `STAKEHOLDER_MEETING_LOCATION`, `MEMBER_OF_ASSOCIATION`, `COMMITTED_TO_SUSTAINABLE_PRACTICES`, `COMMITTED_TO_SUSTAINABLE_PRACTICES_URL`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(59, 2, 1, NULL, 83.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-16 19:50:36', '2018-01-16 19:50:36'),
(60, 51, 11, NULL, 34.03, 29, '99.910355', '12.227958', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:22:16', '2018-01-17 09:22:16'),
(61, 52, 14, NULL, 0.00, 29, '98.36361', '8.689209', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:24:28', '2018-01-17 09:24:28'),
(62, 53, 13, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:25:44', '2018-01-17 09:25:44'),
(63, 54, 15, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:26:44', '2018-01-17 09:26:44'),
(64, 55, 16, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:27:42', '2018-01-17 09:27:42'),
(65, 56, 17, NULL, 0.00, 29, '99.9457', '12.201573', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:28:46', '2018-01-17 09:28:46'),
(66, 57, 18, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:29:42', '2018-01-17 09:29:42'),
(67, 58, 36, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:30:48', '2018-01-17 09:30:48'),
(68, 59, 24, NULL, 0.00, 29, '99.9457', '12.201573', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:32:18', '2018-01-17 09:32:18'),
(69, 60, 20, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:33:18', '2018-01-17 09:33:18'),
(70, 61, 21, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:34:13', '2018-01-17 09:34:13'),
(71, 62, 22, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:35:29', '2018-01-17 09:35:29'),
(72, 63, 23, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:41:57', '2018-01-17 09:41:57'),
(73, 64, 19, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:43:29', '2018-01-17 09:43:29'),
(74, 65, 25, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:44:16', '2018-01-17 09:44:16'),
(75, 66, 26, NULL, 0.00, 29, '99.46396', '11.113116', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:45:30', '2018-01-17 09:45:30'),
(76, 67, 27, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:46:34', '2018-01-17 09:46:34'),
(77, 68, 28, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:47:29', '2018-01-17 09:47:29'),
(78, 69, 29, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:48:42', '2018-01-17 09:48:42'),
(79, 70, 30, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:49:51', '2018-01-17 09:49:51'),
(80, 71, 31, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:50:43', '2018-01-17 09:50:43'),
(81, 72, 32, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 09:51:33', '2018-01-17 09:51:33'),
(82, 73, 33, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 10:48:05', '2018-01-17 10:48:05'),
(83, 74, 34, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 10:49:29', '2018-01-17 10:49:29'),
(84, 75, 35, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 10:50:31', '2018-01-17 10:50:31'),
(85, 76, 37, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 10:51:37', '2018-01-17 10:51:37'),
(86, 77, 38, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 10:52:55', '2018-01-17 10:52:55'),
(87, 78, 39, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 10:54:02', '2018-01-17 10:54:02'),
(88, 79, 40, NULL, 0.00, 29, '100.99254', '15.870032', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 10:55:22', '2018-01-17 10:55:22'),
(89, 80, 41, NULL, 0.00, 29, '99.9457', '12.201573', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 10:56:40', '2018-01-17 10:56:40'),
(90, 81, 42, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 10:57:41', '2018-01-17 10:57:41'),
(91, 82, 43, NULL, 0.00, 29, '99.9457', '12.201573', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 10:58:49', '2018-01-17 10:58:49'),
(92, 83, 44, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 10:59:56', '2018-01-17 10:59:56'),
(93, 84, 45, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 11:00:48', '2018-01-17 11:00:48'),
(94, 85, 46, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 11:01:44', '2018-01-17 11:01:44'),
(95, 86, 47, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 11:02:45', '2018-01-17 11:02:45'),
(96, 87, 48, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 11:03:51', '2018-01-17 11:03:51'),
(97, 88, 49, NULL, 0.00, 29, '99.9457', '12.201573', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 11:04:47', '2018-01-17 11:04:47'),
(98, 89, 50, NULL, 0.00, 29, '99.9457', '12.201573', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 3, '', '2018-01-17 11:05:48', '2018-01-17 11:05:48'),
(99, 144, 143, NULL, 15.00, 29, '100.56526', '13.738981', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, '2017-12-09', 'Trat', 1, NULL, NULL, 4, '', '2018-02-16 01:21:23', '2018-02-16 01:21:23'),
(100, 147, 25, NULL, 23.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, '', 0, NULL, NULL, 13, '', '2018-03-15 06:49:45', '2018-03-15 06:49:45'),
(101, 149, 148, NULL, 0.00, 29, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, '', 0, NULL, NULL, 13, '', '2018-03-15 06:52:08', '2018-03-15 06:52:08'),
(102, 151, 152, NULL, 10.00, 29, NULL, NULL, 'tahiti requin gris.jpg', '', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 150, 0, NULL, NULL, NULL, NULL, 0, NULL, '', 0, NULL, NULL, 5, '', '2018-03-15 07:06:50', '2018-03-15 07:06:50');

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
(20, 2, 7, 42, 1, NULL, '2018-01-16 20:09:55', '2018-01-16 20:09:55'),
(21, 2, 8, 4, 1, NULL, '2018-01-16 20:10:13', '2018-01-16 20:10:13'),
(23, 144, 7, 42, 1, NULL, '2018-02-16 02:30:38', '2018-02-16 02:30:38'),
(24, 144, 8, 4, 1, NULL, '2018-02-16 02:30:46', '2018-02-16 02:30:46');

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
-- Structure de la table `reg_entity_hazardous_work`
--

CREATE TABLE `reg_entity_hazardous_work` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CL_APP_HAZARDOUS_WORK_TYPE_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of hazardous work done in a farm, in a plant etc...';

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
  `REG_ENTITY_ID` int(11) NOT NULL,
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
(3, 2, 83, 5, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-16 19:52:20', '2018-01-16 19:52:20'),
(11, 51, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:22:58', '2018-01-17 09:22:58'),
(12, 51, 159, 3, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:22:41', '2018-01-17 09:22:41'),
(13, 53, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:26:00', '2018-01-17 09:26:00'),
(14, 52, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:24:51', '2018-01-17 09:24:51'),
(15, 54, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:27:00', '2018-01-17 09:27:00'),
(16, 55, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:27:54', '2018-01-17 09:27:54'),
(17, 56, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:29:00', '2018-01-17 09:29:00'),
(18, 57, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:29:55', '2018-01-17 09:29:55'),
(19, 64, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:43:42', '2018-01-17 09:43:42'),
(20, 60, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:33:34', '2018-01-17 09:33:34'),
(21, 61, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:34:26', '2018-01-17 09:34:26'),
(22, 62, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:35:45', '2018-01-17 09:35:45'),
(23, 63, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:42:53', '2018-01-17 09:42:53'),
(24, 59, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:32:30', '2018-01-17 09:32:30'),
(25, 65, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:44:30', '2018-01-17 09:44:30'),
(26, 66, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:45:44', '2018-01-17 09:45:44'),
(27, 67, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:46:50', '2018-01-17 09:46:50'),
(28, 68, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:47:51', '2018-01-17 09:47:51'),
(29, 69, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:48:58', '2018-01-17 09:48:58'),
(30, 70, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:50:04', '2018-01-17 09:50:04'),
(31, 71, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:50:54', '2018-01-17 09:50:54'),
(32, 72, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:51:52', '2018-01-17 09:51:52'),
(33, 73, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 10:48:18', '2018-01-17 10:48:18'),
(34, 74, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 10:49:44', '2018-01-17 10:49:44'),
(35, 75, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 10:50:50', '2018-01-17 10:50:50'),
(36, 58, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 09:31:24', '2018-01-17 09:31:24'),
(37, 76, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 10:52:04', '2018-01-17 10:52:04'),
(38, 77, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 10:53:14', '2018-01-17 10:53:14'),
(39, 78, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 10:54:25', '2018-01-17 10:54:25'),
(40, 79, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 10:55:35', '2018-01-17 10:55:35'),
(41, 80, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 10:56:56', '2018-01-17 10:56:56'),
(42, 81, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 10:57:59', '2018-01-17 10:57:59'),
(43, 82, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 10:59:10', '2018-01-17 10:59:10'),
(44, 83, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 11:00:10', '2018-01-17 11:00:10'),
(45, 84, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 11:01:02', '2018-01-17 11:01:02'),
(46, 85, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 11:02:08', '2018-01-17 11:02:08'),
(47, 86, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 11:03:04', '2018-01-17 11:03:04'),
(48, 87, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 11:04:03', '2018-01-17 11:04:03'),
(49, 88, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 11:04:58', '2018-01-17 11:04:58'),
(50, 89, 159, 1, NULL, NULL, NULL, 0, '', '', '', 0, 0, NULL, 3, '', '2018-01-17 11:06:01', '2018-01-17 11:06:01'),
(145, 144, 159, 5, NULL, NULL, NULL, 0, '', '0955461566', '', 1, 0, NULL, 4, '', '2018-02-16 01:48:52', '2018-02-16 01:48:52'),
(146, 144, 110, 5, NULL, NULL, NULL, 0, '', '0955461566', '', 1, 0, NULL, 4, '', '2018-02-16 01:51:08', '2018-02-16 01:51:08');

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

--
-- Contenu de la table `reg_entity_staff_contract`
--

INSERT INTO `reg_entity_staff_contract` (`ID`, `REG_ENTITY_ID`, `REG_ENTITY_FARM_ID`, `CONTRACT_NO`, `CL_CONTRACT_TYPE_ID`, `CL_COMPANY_POSITION_TYPE_ID`, `DEPARTMENT`, `STARTING_DATE`, `AGREED_END_DATE`, `ISSUANCE_DATE`, `CONTINUING_CONTRACT`, `ACTUAL_TERMINATION_DATE`, `CONTRACT_DURATION`, `CONTRACT_REMUNERATION`, `CONTRACT_REMUNERATION_CURRENCY_ID`, `CL_PAYMENT_FREQUENCY_ID`, `MINIMUM_WAGES_APPLIED`, `NB_HOURS_PER_DAY`, `NB_DAYS_ANNUAL_LEAVE`, `PAPER_CONTRACT_COPY_URL`, `NO_ANNUAL_LEAVE_SPECIFIED`, `CONTRACT_IN_OTHER_LANGUAGE`, `CL_COUNTRY_ID`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 145, 144, '1', 1, 5, NULL, '2016-01-04', NULL, NULL, 0, NULL, NULL, 8500, 1, 3, 0, 0, 0, NULL, 0, 0, NULL, 4, '', '2018-02-20 03:46:06', '2018-02-20 03:46:06');

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
  `REGULAR_WORK_START_HOUR` time DEFAULT '00:00:00',
  `REGULAR_WORK_END_HOUR` time DEFAULT '00:00:00',
  `NB_WORKERS_LIVING_IN_FARM` int(4) DEFAULT '0',
  `NB_WORKERS_CHILD_LIVING_IN_FARM` int(4) DEFAULT '0',
  `NB_WORKERS_CHILD_HELPING_IN_FARM` int(4) DEFAULT '0',
  `NB_WORKERS_CHILD_ENROLLED_SCHOOL` int(4) DEFAULT '0',
  `NB_SCHOOL_IN_AREA` int(3) DEFAULT NULL,
  `NB_WORKERS_MIGRANTS` int(4) DEFAULT '0',
  `MIMINUM_WAGES_APPLIED_TO_CONTRACT` tinyint(1) DEFAULT NULL,
  `JOIN_WORKERS_REPRESENTATIVE_GROUP` tinyint(4) DEFAULT '0',
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
  `RECORD_GRIEVING_SYSTEM` tinyint(1) DEFAULT '0',
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
  `WORKER_HURT` tinyint(1) DEFAULT '0',
  `WORKER_HURT_EXPLANATION` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ANY_CONTRACT_SIGNED_WITH_WORKERS` bit(1) DEFAULT NULL,
  `KEEP_WORKER_DOCUMENTS_SAFEKEEPING` bit(1) DEFAULT NULL,
  `STAFF_HIRED_DIRECTY` bit(1) DEFAULT NULL,
  `STAFF_HIRED_THROUGH_AGENT` bit(1) DEFAULT NULL,
  `CL_KEPT_WORKER_ENTITY_DOCUMENT_TYPE_ID_1` bigint(20) DEFAULT NULL,
  `CL_KEPT_WORKER_ENTITY_DOCUMENT_TYPE_ID_2` bigint(20) DEFAULT NULL,
  `CL_KEPT_WORKER_ENTITY_DOCUMENT_TYPE_ID_3` bigint(20) DEFAULT NULL,
  `CL_KEPT_WORKER_ENTITY_DOCUMENT_TYPE_ID_4` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Additional information regarding staff at the farm level';

--
-- Contenu de la table `reg_entity_staff_management`
--

INSERT INTO `reg_entity_staff_management` (`REG_ENTITY_FARM_ID`, `NUMBER_STAFF_FARM_AS_TODAY`, `REGULAR_WORK_START_HOUR`, `REGULAR_WORK_END_HOUR`, `NB_WORKERS_LIVING_IN_FARM`, `NB_WORKERS_CHILD_LIVING_IN_FARM`, `NB_WORKERS_CHILD_HELPING_IN_FARM`, `NB_WORKERS_CHILD_ENROLLED_SCHOOL`, `NB_SCHOOL_IN_AREA`, `NB_WORKERS_MIGRANTS`, `MIMINUM_WAGES_APPLIED_TO_CONTRACT`, `JOIN_WORKERS_REPRESENTATIVE_GROUP`, `WORKER_OVERTIME`, `IS_OVERTIME_VOLUNTARY`, `NB_REST_DAYS`, `EXISTENCE_HAZARDOUS_WORK`, `CL_HARZARDOUS_WORK_TYPE_ID`, `EXISTENCE_FARM_POLICIES`, `FARM_POLICIES`, `EXISTENCE_HEALTH_SAFETY_POLICIES`, `HEALTH_SAFETY_POLICIES`, `EXISTENCE_WORK_ACCIDENT_RECORD`, `WORK_ACCIDENT_RECORD`, `ACCESS_TO_PROTECTIVE_EQUIPMENT`, `EMPLOYER_ISSUE_RECORD`, `ISSUE_RECORD_URL`, `EXISTENCE_EXTRA_WORK_RECORD`, `EXTRA_WORK_RECORD_URL`, `EXISTENCE_FREEDOM_ASSOCIATION_DISCLAIMER`, `FREEDOM_ASSOCIATION_DISCLAIMER_URL`, `EXISTENCE_DISCRIMINATION_REGULATION`, `DISCRIMINATION_REGULATION_URL`, `EXISTENCE_DISCIPLINARY_POLICIES`, `DISCIPLINARY_POLICIES`, `EXISTENCE_GRIEVING_SYSTEM`, `GRIEVING_SYSTEM_URL`, `RECORD_GRIEVING_SYSTEM`, `PROTECTIVE_EQUIPMENT_AVAILABLE`, `PROTECTIVE_EQUIPMENT_URL`, `SAFETY_CONDITION`, `WORKERS_REPRESENTATIVE_GROUP`, `NB_REPRESENTATIVE_GROUPS_IN_AREA`, `WORKERS_MAKE_FINANCIAL_DEPOSIT`, `CL_GET_BACK_FINANCIAL_DEPOSIT_REASON_ID`, `CL_NO_EARLY_CONTRACT_TERMINATION_REASON_ID`, `CL_CONTRACT_TERMINATION_REASON_ID`, `CONTRACT_TERMINATION_OTHER_REASON`, `CL_DEDUCTION_SALARY_ID_1`, `CL_DEDUCTION_SALARY_ID_2`, `CL_DEDUCTION_SALARY_ID_3`, `CL_DEDUCTION_SALARY_ID_4`, `DEDUCTION_SALARY_OTHER`, `AMOUNT_SALARY_DEDUCED_MONTH`, `PAYMENT_SLIP_PROVIDED_TO_WORKER`, `WORKERS_IN_DEBT`, `CL_PAYMENT_DEBT_TYPE_ID_1`, `CL_PAYMENT_DEBT_TYPE_ID_2`, `CL_PAYMENT_DEBT_TYPE_ID_3`, `CL_PAYMENT_DEBT_TYPE_ID_4`, `WORKERS_IN_DEBT_OTHER_STAKEHOLDER`, `IN_KIND_PAYMENT`, `IN_KIND_PAYMENT_TYPE`, `CL_HIRING_RESTRICTION_ID`, `NB_MIGRANT_WORKERS`, `WORKER_HURT`, `WORKER_HURT_EXPLANATION`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`, `ANY_CONTRACT_SIGNED_WITH_WORKERS`, `KEEP_WORKER_DOCUMENTS_SAFEKEEPING`, `STAFF_HIRED_DIRECTY`, `STAFF_HIRED_THROUGH_AGENT`, `CL_KEPT_WORKER_ENTITY_DOCUMENT_TYPE_ID_1`, `CL_KEPT_WORKER_ENTITY_DOCUMENT_TYPE_ID_2`, `CL_KEPT_WORKER_ENTITY_DOCUMENT_TYPE_ID_3`, `CL_KEPT_WORKER_ENTITY_DOCUMENT_TYPE_ID_4`) VALUES
(2, 0, '08:00:00', '18:00:00', 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, '2018-01-16 19:50:43', '2018-01-16 19:50:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 0, '08:00:00', '18:00:00', 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, '2018-02-10 02:14:24', '2018-02-10 02:14:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 0, '08:00:00', '18:00:00', 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, '2018-02-08 09:42:59', '2018-02-08 09:42:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 0, '08:00:00', '18:00:00', 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, '2018-01-17 12:00:44', '2018-01-17 12:00:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 0, '08:00:00', '18:00:00', 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, '2018-01-17 09:51:33', '2018-01-17 09:51:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 0, '08:00:00', '18:00:00', 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, '2018-01-17 10:48:06', '2018-01-17 10:48:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 10, '08:00:00', '18:00:00', 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 1, NULL, '2018-02-16 12:46:30', '2018-02-16 12:46:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 0, '08:00:00', '18:00:00', 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, '2018-01-17 10:59:57', '2018-01-17 10:59:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 0, '08:00:00', '18:00:00', 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 1, NULL, '2018-02-16 12:46:07', '2018-02-16 12:46:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 0, '08:00:00', '18:00:00', 0, 0, 0, 0, 0, NULL, 0, 1, 0, 0, 0, 0, 1, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 1, NULL, NULL, NULL, 0, 0, 1, 1, 1, 99, 'another reason', NULL, NULL, NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, '', NULL, 0, 0, '', 1, NULL, '2018-02-06 03:32:07', '2018-02-06 03:32:07', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL),
(144, 2, '08:00:00', '18:00:00', 0, 0, 0, 0, 2, NULL, 0, 1, 0, 0, 6, 0, 1, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 1, NULL, 1, NULL, NULL, NULL, 1, 0, 0, NULL, 1, NULL, '', NULL, NULL, NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, '', 2, 15, 0, '', 1, NULL, '2018-02-16 01:21:46', '2018-02-16 01:21:46', b'1', b'0', b'1', b'0', NULL, NULL, NULL, NULL),
(151, 0, '08:00:00', '18:00:00', 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, '2018-03-16 03:24:27', '2018-03-16 03:24:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
-- Structure de la table `reg_entity_staff_safety`
--

CREATE TABLE `reg_entity_staff_safety` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `SAFETY_EQUIPMENT_IN_FARM` tinyint(1) DEFAULT NULL,
  `WORKERS_USE_SAFETY_EQUIPMENT` tinyint(1) DEFAULT NULL,
  `FREE_SAFETY_EQUIPMENT` tinyint(1) DEFAULT NULL,
  `NUMBER_TRAINED_STAFF` int(4) DEFAULT '0',
  `PREVENTION_ACCIDENT_MEASURES` tinyint(1) DEFAULT NULL,
  `UPDATER_ID` int(11) DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='General information on staff safety at the farm level';

--
-- Contenu de la table `reg_entity_staff_safety`
--

INSERT INTO `reg_entity_staff_safety` (`REG_ENTITY_FARM_ID`, `SAFETY_EQUIPMENT_IN_FARM`, `WORKERS_USE_SAFETY_EQUIPMENT`, `FREE_SAFETY_EQUIPMENT`, `NUMBER_TRAINED_STAFF`, `PREVENTION_ACCIDENT_MEASURES`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(2, NULL, NULL, NULL, 0, NULL, 4, '', '2018-02-12 01:54:20', '2018-02-12 01:54:20'),
(51, NULL, NULL, NULL, 0, NULL, 4, '', '2018-02-10 02:16:43', '2018-02-10 02:16:43'),
(58, NULL, NULL, NULL, 0, NULL, 3, '', '2018-02-08 09:43:09', '2018-02-08 09:43:09'),
(89, NULL, NULL, NULL, 0, NULL, 3, '', '2018-02-08 11:44:04', '2018-02-08 11:44:04'),
(144, 1, 0, 1, 1, 0, 4, '', '2018-02-16 02:00:31', '2018-02-16 02:00:31'),
(151, NULL, NULL, NULL, 0, NULL, 13, '', '2018-03-16 03:34:45', '2018-03-16 03:34:45');

-- --------------------------------------------------------

--
-- Structure de la table `reg_entity_staff_training`
--

CREATE TABLE `reg_entity_staff_training` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `FIRST_AID_TRAINING` tinyint(1) DEFAULT NULL,
  `HAZARDOUS_ACTIVITIES_TRAINING` tinyint(1) DEFAULT NULL,
  `CL_HAZARDOUS_ACTIVITIES_TRAINING_TYPE_ID` int(11) DEFAULT NULL,
  `HAZARDOUS_ACTIVITIES_TRAINING_DATE` date DEFAULT NULL,
  `HAZARDOUS_ACTIVITIES_NUMBER_TRAINED_STAFF` int(4) DEFAULT '0',
  `UPDATER_ID` int(11) DEFAULT '1',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='General information on staff training at the farm level';

--
-- Contenu de la table `reg_entity_staff_training`
--

INSERT INTO `reg_entity_staff_training` (`REG_ENTITY_FARM_ID`, `FIRST_AID_TRAINING`, `HAZARDOUS_ACTIVITIES_TRAINING`, `CL_HAZARDOUS_ACTIVITIES_TRAINING_TYPE_ID`, `HAZARDOUS_ACTIVITIES_TRAINING_DATE`, `HAZARDOUS_ACTIVITIES_NUMBER_TRAINED_STAFF`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(2, NULL, NULL, NULL, NULL, 0, 4, '', '2018-02-12 01:54:57', '2018-02-12 01:54:57'),
(89, NULL, NULL, NULL, NULL, 0, 3, '', '2018-02-11 07:07:23', '2018-02-11 07:07:23'),
(144, 0, 1, NULL, NULL, 0, 4, '', '2018-02-16 02:02:52', '2018-02-16 02:02:52'),
(151, NULL, NULL, NULL, NULL, 0, 13, '', '2018-03-16 03:34:55', '2018-03-16 03:34:55');

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
-- Structure de la table `sys_pages`
--

CREATE TABLE `sys_pages` (
  `ID` int(11) NOT NULL COMMENT 'list of system pages',
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `SYS_PAGE_DOMAIN_ID` int(11) NOT NULL,
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
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of system pages';

--
-- Contenu de la table `sys_pages`
--

INSERT INTO `sys_pages` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `SYS_PAGE_DOMAIN_ID`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'COMPEDITOR', 1, 'Company editor', 1, 'Company editor', 'Company editor', 'Company editor', 'Company editor', 'Company editor', 'Company editor', 'Company editor', 'Company editor', 'Company editor', 'Company editor', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(2, 1, 'COMPBROWSER', 2, 'Company browser', 1, 'Company browser', 'Company browser', 'Company browser', 'Company browser', 'Company browser', 'Company browser', 'Company browser', 'Company browser', 'Company browser', 'Company browser', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(3, 1, '', 3, 'Farm listing', 2, 'Farm listing', 'Farm listing', 'Farm listing', 'Farm listing', 'Farm listing', 'Farm listing', 'Farm listing', 'Farm listing', 'Farm listing', 'Farm listing', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(4, 1, 'FARMDASH', 4, 'Farm dashboard', 2, 'Farm dashboard', 'Farm dashboard', 'Farm dashboard', 'Farm dashboard', 'Farm dashboard', 'Farm dashboard', 'Farm dashboard', 'Farm dashboard', 'Farm dashboard', 'Farm dashboard', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(5, 1, 'FARMCREATE', 5, 'Farm create', 2, 'Farm create', 'Farm create', 'Farm create', 'Farm create', 'Farm create', 'Farm create', 'Farm create', 'Farm create', 'Farm create', 'Farm create', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(6, 1, 'FARMFACILITY', 6, 'Farm facility', 2, 'Farm facility', 'Farm facility', 'Farm facility', 'Farm facility', 'Farm facility', 'Farm facility', 'Farm facility', 'Farm facility', 'Farm facility', 'Farm facility', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(7, 1, 'FARMSTAFFINFO', 7, 'Farm staff general info', 2, 'Farm staff general info', 'Farm staff general info', 'Farm staff general info', 'Farm staff general info', 'Farm staff general info', 'Farm staff general info', 'Farm staff general info', 'Farm staff general info', 'Farm staff general info', 'Farm staff general info', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(8, 1, 'FARMSTAFF', 8, 'Farm staff', 2, 'Farm staff', 'Farm staff', 'Farm staff', 'Farm staff', 'Farm staff', 'Farm staff', 'Farm staff', 'Farm staff', 'Farm staff', 'Farm staff', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(9, 1, 'FARMHIRING', 9, 'Farm hiring', 2, 'Farm hiring', 'Farm hiring', 'Farm hiring', 'Farm hiring', 'Farm hiring', 'Farm hiring', 'Farm hiring', 'Farm hiring', 'Farm hiring', 'Farm hiring', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(10, 1, 'FARMSAFETY', 10, 'Farm safety', 2, 'Farm safety', 'Farm safety', 'Farm safety', 'Farm safety', 'Farm safety', 'Farm safety', 'Farm safety', 'Farm safety', 'Farm safety', 'Farm safety', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(11, 1, 'FARMTRAIN', 11, 'Farm training', 2, 'Farm training', 'Farm training', 'Farm training', 'Farm training', 'Farm training', 'Farm training', 'Farm training', 'Farm training', 'Farm training', 'Farm training', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(12, 1, 'FARMENV', 12, 'Farm environemental details', 2, 'Farm environemental details', 'Farm environemental details', 'Farm environemental details', 'Farm environemental details', 'Farm environemental details', 'Farm environemental details', 'Farm environemental details', 'Farm environemental details', 'Farm environemental details', 'Farm environemental details', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(13, 1, 'FARMSUPPLIER', 13, 'Farm supplier', 2, 'Farm supplier', 'Farm supplier', 'Farm supplier', 'Farm supplier', 'Farm supplier', 'Farm supplier', 'Farm supplier', 'Farm supplier', 'Farm supplier', 'Farm supplier', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(14, 1, 'FARMPROD', 14, 'Farm production', 2, 'Farm production', 'Farm production', 'Farm production', 'Farm production', 'Farm production', 'Farm production', 'Farm production', 'Farm production', 'Farm production', 'Farm production', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(15, 1, 'FARMBUYER', 15, 'Farm Buyer', 2, 'Farm Buyer', 'Farm Buyer', 'Farm Buyer', 'Farm Buyer', 'Farm Buyer', 'Farm Buyer', 'Farm Buyer', 'Farm Buyer', 'Farm Buyer', 'Farm Buyer', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(16, 1, 'FARMPLOTLIST', 16, 'Farm plots listing in Farm', 2, 'Farm plots listing in Farm', 'Farm plots listing in Farm', 'Farm plots listing in Farm', 'Farm plots listing in Farm', 'Farm plots listing in Farm', 'Farm plots listing in Farm', 'Farm plots listing in Farm', 'Farm plots listing in Farm', 'Farm plots listing in Farm', 'Farm plots listing in Farm', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(17, 1, 'PLOTBROWSER', 17, 'Farm plots all plots/browser', 2, 'Farm plots all plots/browser', 'Farm plots all plots/browser', 'Farm plots all plots/browser', 'Farm plots all plots/browser', 'Farm plots all plots/browser', 'Farm plots all plots/browser', 'Farm plots all plots/browser', 'Farm plots all plots/browser', 'Farm plots all plots/browser', 'Farm plots all plots/browser', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(18, 1, 'PLOTACTIVITY', 18, 'Farm plots plots activity', 2, 'Farm plots plots activity', 'Farm plots plots activity', 'Farm plots plots activity', 'Farm plots plots activity', 'Farm plots plots activity', 'Farm plots plots activity', 'Farm plots plots activity', 'Farm plots plots activity', 'Farm plots plots activity', 'Farm plots plots activity', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(19, 1, 'PLOTMEASURE', 19, 'Farm plots plots measures', 2, 'Farm plots plots measures', 'Farm plots plots measures', 'Farm plots plots measures', 'Farm plots plots measures', 'Farm plots plots measures', 'Farm plots plots measures', 'Farm plots plots measures', 'Farm plots plots measures', 'Farm plots plots measures', 'Farm plots plots measures', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(20, 1, 'PONDFARMLIST', 20, 'Farm ponds listing in Farm', 2, 'Farm ponds listing in Farm', 'Farm ponds listing in Farm', 'Farm ponds listing in Farm', 'Farm ponds listing in Farm', 'Farm ponds listing in Farm', 'Farm ponds listing in Farm', 'Farm ponds listing in Farm', 'Farm ponds listing in Farm', 'Farm ponds listing in Farm', 'Farm ponds listing in Farm', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(21, 1, 'PONDBROWSER', 21, 'Farm ponds all plots/browser', 2, 'Farm ponds all plots/browser', 'Farm ponds all plots/browser', 'Farm ponds all plots/browser', 'Farm ponds all plots/browser', 'Farm ponds all plots/browser', 'Farm ponds all plots/browser', 'Farm ponds all plots/browser', 'Farm ponds all plots/browser', 'Farm ponds all plots/browser', 'Farm ponds all plots/browser', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(22, 1, 'PONDACTIVTY', 22, 'Farm ponds ponds activity', 2, 'Farm ponds ponds activity', 'Farm ponds ponds activity', 'Farm ponds ponds activity', 'Farm ponds ponds activity', 'Farm ponds ponds activity', 'Farm ponds ponds activity', 'Farm ponds ponds activity', 'Farm ponds ponds activity', 'Farm ponds ponds activity', 'Farm ponds ponds activity', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(23, 1, 'PONDMEASURE', 23, 'Farm ponds ponds measures', 2, 'Farm ponds ponds measures', 'Farm ponds ponds measures', 'Farm ponds ponds measures', 'Farm ponds ponds measures', 'Farm ponds ponds measures', 'Farm ponds ponds measures', 'Farm ponds ponds measures', 'Farm ponds ponds measures', 'Farm ponds ponds measures', 'Farm ponds ponds measures', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(24, 1, 'INDEDITOR', 24, 'Individual editor', 3, 'Individual editor', 'Individual editor', 'Individual editor', 'Individual editor', 'Individual editor', 'Individual editor', 'Individual editor', 'Individual editor', 'Individual editor', 'Individual editor', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(25, 1, 'INDBROWSER', 25, 'Individual browser', 3, 'Individual browser', 'Individual browser', 'Individual browser', 'Individual browser', 'Individual browser', 'Individual browser', 'Individual browser', 'Individual browser', 'Individual browser', 'Individual browser', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(26, 1, 'SUPPEDITOR', 26, 'Supplier editor', 4, 'Supplier editor', 'Supplier editor', 'Supplier editor', 'Supplier editor', 'Supplier editor', 'Supplier editor', 'Supplier editor', 'Supplier editor', 'Supplier editor', 'Supplier editor', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(27, 1, 'SUPBROWSER', 27, 'Supplier browser', 4, 'Supplier browser', 'Supplier browser', 'Supplier browser', 'Supplier browser', 'Supplier browser', 'Supplier browser', 'Supplier browser', 'Supplier browser', 'Supplier browser', 'Supplier browser', 3, NULL, '2018-02-18 07:16:55', '2018-02-18 07:16:55'),
(28, 1, 'SUPDATA', 28, 'Supplier Data', 4, 'Supplier Data', 'Supplier Data', 'Supplier Data', 'Supplier Data', 'Supplier Data', 'Supplier Data', 'Supplier Data', 'Supplier Data', 'Supplier Data', 'Supplier Data', 3, NULL, '2018-02-18 07:16:56', '2018-02-18 07:16:56'),
(29, 1, 'SUDDASH', 29, 'Supplier dashboard', 4, 'Supplier dashboard', 'Supplier dashboard', 'Supplier dashboard', 'Supplier dashboard', 'Supplier dashboard', 'Supplier dashboard', 'Supplier dashboard', 'Supplier dashboard', 'Supplier dashboard', 'Supplier dashboard', 3, NULL, '2018-02-18 07:16:56', '2018-02-18 07:16:56'),
(30, 1, 'BUYEREDITORI', 30, 'Buyer editor', 5, 'Buyer editor', 'Buyer editor', 'Buyer editor', 'Buyer editor', 'Buyer editor', 'Buyer editor', 'Buyer editor', 'Buyer editor', 'Buyer editor', 'Buyer editor', 3, NULL, '2018-02-18 07:16:56', '2018-02-18 07:16:56'),
(31, 1, 'BUYERBROWSER', 31, 'Buyer browser', 5, 'Buyer browser', 'Buyer browser', 'Buyer browser', 'Buyer browser', 'Buyer browser', 'Buyer browser', 'Buyer browser', 'Buyer browser', 'Buyer browser', 'Buyer browser', 3, NULL, '2018-02-18 07:16:56', '2018-02-18 07:16:56'),
(32, 1, 'BUYERDATA', 32, 'Buyer data', 5, 'Buyer data', 'Buyer data', 'Buyer data', 'Buyer data', 'Buyer data', 'Buyer data', 'Buyer data', 'Buyer data', 'Buyer data', 'Buyer data', 3, NULL, '2018-02-18 07:16:56', '2018-02-18 07:16:56'),
(33, 1, 'BUYERDASH', 33, 'Buyer dashboard', 5, 'Buyer dashboard', 'Buyer dashboard', 'Buyer dashboard', 'Buyer dashboard', 'Buyer dashboard', 'Buyer dashboard', 'Buyer dashboard', 'Buyer dashboard', 'Buyer dashboard', 'Buyer dashboard', 3, NULL, '2018-02-18 07:16:56', '2018-02-18 07:16:56'),
(34, 1, 'USEREDITOR', 34, 'User editor', 6, 'User editor', 'User editor', 'User editor', 'User editor', 'User editor', 'User editor', 'User editor', 'User editor', 'User editor', 'User editor', 3, NULL, '2018-02-18 07:16:56', '2018-02-18 07:16:56'),
(35, 1, 'USERBROWSER', 35, 'User browser', 6, 'User browser', 'User browser', 'User browser', 'User browser', 'User browser', 'User browser', 'User browser', 'User browser', 'User browser', 'User browser', 3, NULL, '2018-02-18 07:16:56', '2018-02-18 07:16:56'),
(36, 1, 'COOPDATA', 36, 'Cooperative data for cooperative', 8, 'Cooperative data for cooperative', 'Cooperative data for cooperative', 'Cooperative data for cooperative', 'Cooperative data for cooperative', 'Cooperative data for cooperative', 'Cooperative data for cooperative', 'Cooperative data for cooperative', 'Cooperative data for cooperative', 'Cooperative data for cooperative', 'Cooperative data for cooperative', 3, NULL, '2018-02-18 07:16:56', '2018-02-18 07:16:56'),
(37, 1, 'COOPDASH', 37, 'Cooperative dashboard for cooperative', 8, 'Cooperative dashboard for cooperative', 'Cooperative dashboard for cooperative', 'Cooperative dashboard for cooperative', 'Cooperative dashboard for cooperative', 'Cooperative dashboard for cooperative', 'Cooperative dashboard for cooperative', 'Cooperative dashboard for cooperative', 'Cooperative dashboard for cooperative', 'Cooperative dashboard for cooperative', 'Cooperative dashboard for cooperative', 3, NULL, '2018-02-18 07:16:56', '2018-02-18 07:16:56'),
(38, 1, 'ADMINREFDATA', 38, 'Admin Reference data management', 7, 'Admin Reference data management', 'Admin Reference data management', 'Admin Reference data management', 'Admin Reference data management', 'Admin Reference data management', 'Admin Reference data management', 'Admin Reference data management', 'Admin Reference data management', 'Admin Reference data management', 'Admin Reference data management', 3, NULL, '2018-02-18 07:16:56', '2018-02-18 07:16:56');

-- --------------------------------------------------------

--
-- Structure de la table `sys_page_domains`
--

CREATE TABLE `sys_page_domains` (
  `ID` int(11) NOT NULL COMMENT 'list of system page domains',
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of system page domains';

--
-- Contenu de la table `sys_page_domains`
--

INSERT INTO `sys_page_domains` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'COMP', 1, 'Companies', 'Companies', 'Companies', 'Companies', 'Companies', 'Companies', 'Companies', 'Companies', 'Companies', 'Companies', 'Companies', 3, 'Companies', '2018-02-17 05:09:12', '2018-02-17 05:09:12'),
(2, 1, 'FARM', 1, 'Farm', 'Farm', 'Farm', 'Farm', 'Farm', 'Farm', 'Farm', 'Farm', 'Farm', 'Farm', 'Farm', 3, NULL, '2018-02-17 05:11:23', '2018-02-17 05:11:23'),
(3, 1, 'INDIV', 1, 'Individual', 'Individual', 'Individual', 'Individual', 'Individual', 'Individual', 'Individual', 'Individual', 'Individual', 'Individual', 'Individual', 3, NULL, '2018-02-17 05:14:49', '2018-02-17 05:14:49'),
(4, 1, 'SUPPLIER', 1, 'Supplier', 'Supplier', 'Supplier', 'Supplier', 'Supplier', 'Supplier', 'Supplier', 'Supplier', 'Supplier', 'Supplier', 'Supplier', 3, NULL, '2018-02-17 05:14:49', '2018-02-17 05:14:49'),
(5, 1, 'BUYER', 1, 'Buyer', 'Buyer', 'Buyer', 'Buyer', 'Buyer', 'Buyer', 'Buyer', 'Buyer', 'Buyer', 'Buyer', 'Buyer', 3, NULL, '2018-02-17 05:14:49', '2018-02-17 05:14:49'),
(6, 1, 'USER', 1, 'User', 'User', 'User', 'User', 'User', 'User', 'User', 'User', 'User', 'User', 'User', 3, NULL, '2018-02-17 05:14:49', '2018-02-17 05:14:49'),
(7, 1, 'ADMIN', 1, 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', 3, NULL, '2018-02-17 05:14:49', '2018-02-17 05:14:49'),
(8, 1, 'COOP', 1, 'Cooperative', 'Cooperative', 'Cooperative', 'Cooperative', 'Cooperative', 'Cooperative', 'Cooperative', 'Cooperative', 'Cooperative', 'Cooperative', 'Cooperative', 3, NULL, '2018-02-18 06:46:24', '2018-02-18 06:46:24');

-- --------------------------------------------------------

--
-- Structure de la table `sys_rights`
--

CREATE TABLE `sys_rights` (
  `ID` int(11) NOT NULL COMMENT 'list of users rights',
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of users rights';

--
-- Contenu de la table `sys_rights`
--

INSERT INTO `sys_rights` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'A', 1, 'Full access - no restriction', 'Full access - no restriction', 'Full access - no restriction', 'Full access - no restriction', 'Full access - no restriction', 'Full access - no restriction', 'Full access - no restriction', 'Full access - no restriction', 'Full access - no restriction', 'Full access - no restriction', 'Full access - no restriction', 3, NULL, '2018-02-18 07:18:56', '2018-02-18 07:18:56'),
(2, 1, 'V', 2, 'View all available information', 'View all available information but can\'t edit any', 'View all available information', 'View all available information', 'View all available information', 'View all available information', 'View all available information', 'View all available information', 'View all available information', 'View all available information', 'View all available information', 3, NULL, '2018-02-18 07:24:53', '2018-02-18 07:24:53'),
(3, 1, 'AF', 3, 'Full access to all data of all the farms of the farm owners', 'Full access to all data of all the farms of the farm owners', 'Full access to all data of all the farms of the farm owners', 'Full access to all data of all the farms of the farm owners', 'Full access to all data of all the farms of the farm owners', 'Full access to all data of all the farms of the farm owners', 'Full access to all data of all the farms of the farm owners', 'Full access to all data of all the farms of the farm owners', 'Full access to all data of all the farms of the farm owners', 'Full access to all data of all the farms of the farm owners', 'Full access to all data of all the farms of the farm owners', 3, NULL, '2018-02-18 07:20:43', '2018-02-18 07:20:43'),
(4, 1, 'VF', 4, 'Only view data of the selected farm(s) ', 'Only view data of the farms of owner / cooperative / buyer or supplier', 'Only view data of the selected farm(s) ', 'Only view data of the selected farm(s) ', 'Only view data of the selected farm(s) ', 'Only view data of the selected farm(s) ', 'Only view data of the selected farm(s) ', 'Only view data of the selected farm(s) ', 'Only view data of the selected farm(s) ', 'Only view data of the selected farm(s) ', 'Only view data of the selected farm(s) ', 3, 'Only view data of the selected farm(s) ', '2018-02-18 07:22:59', '2018-02-18 07:22:59'),
(5, 1, 'X', 5, 'Access denied', 'Access denied', 'Access denied', 'Access denied', 'Access denied', 'Access denied', 'Access denied', 'Access denied', 'Access denied', 'Access denied', 'Access denied', 0, NULL, '2018-02-18 07:28:10', '2018-02-18 07:28:10');

-- --------------------------------------------------------

--
-- Structure de la table `sys_roles`
--

CREATE TABLE `sys_roles` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `RANKING` int(6) NOT NULL DEFAULT '1',
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
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `sys_roles`
--

INSERT INTO `sys_roles` (`ID`, `ENABLED`, `CODE`, `RANKING`, `NAME`, `DESCRIPTION`, `I18n_DEFAULT`, `I18N_EN`, `I18N_FR`, `I18N_ES`, `I18N_TH`, `I18N_VT`, `I18N_LA`, `I18N_ID`, `I18N_KH`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'sadmin', 1, 'Super Admin.', 'Is the system super admin', 'Super Admin.', 'Super Admin.', 'Super Admin.', 'Super Admin.', 'Super Admin.', 'Super Admin.', 'Super Admin.', 'Super Admin.', 'Super Admin.', 3, NULL, '2018-02-17 05:24:24', '2018-02-17 05:24:24'),
(2, 0, 'country', 1, 'Country Admin.', 'Is the admin for a given country (not implemented yet', 'Country Admin.', 'Country Admin.', 'Country Admin.', 'Country Admin.', 'Country Admin.', 'Country Admin.', 'Country Admin.', 'Country Admin.', 'Country Admin.', 3, NULL, '2018-02-17 05:24:24', '2018-02-17 05:24:24'),
(3, 1, 'coop', 1, 'Cooperative user.', 'Is the cooperative user - can manage its cooperatives and the associated farms', 'Cooperative user.', 'Cooperative user.', 'Cooperative user.', 'Cooperative user.', 'Cooperative user.', 'Cooperative user.', 'Cooperative user.', 'Cooperative user.', 'Cooperative user.', 3, NULL, '2018-02-17 05:24:24', '2018-02-17 05:24:24'),
(4, 1, 'farm', 1, 'Farm owner', 'Is the farm owner: has full access to his farm(s)', 'Farm owner', 'Farm owner', 'Farm owner', 'Farm owner', 'Farm owner', 'Farm owner', 'Farm owner', 'Farm owner', 'Farm owner', 3, NULL, '2018-02-17 05:24:24', '2018-02-17 05:24:24'),
(5, 1, 'BUYER', 1, 'Buyer', 'Buyer (can be a processing plant, group of processing plants, can be a production buyer- is not a cooperative)', 'Buyer', 'Buyer', 'Buyer', 'Buyer', 'Buyer', 'Buyer', 'Buyer', 'Buyer', 'Buyer', 3, NULL, '2018-02-18 07:32:18', '2018-02-18 07:32:18'),
(6, 1, 'FARMMANAGER', 1, 'Farm Manager.', 'Is the manager of the farm; can view farm profiles - has limited access in modification (adding data for instance)', 'Farm Manager.', 'Farm Manager.', 'Farm Manager.', 'Farm Manager.', 'Farm Manager.', 'Farm Manager.', 'Farm Manager.', 'Farm Manager.', 'Farm Manager.', 3, NULL, '2018-02-18 07:39:24', '2018-02-18 07:39:24'),
(7, 1, 'SUPPLIER', 1, 'Supplier.', 'Is the supplier of the farms. Can view the farms it is supplying goods to- can add some data related to its business', 'Supplier.', 'Supplier.', 'Supplier.', 'Supplier.', 'Supplier.', 'Supplier.', 'Supplier.', 'Supplier.', 'Supplier.', 0, NULL, '2018-02-18 07:39:24', '2018-02-18 07:39:24'),
(8, 0, 'RETAIL', 1, 'Retail user.', 'is the user from retailer that needs to have access to dashboards to assess compliance to the standard', 'Retail user.', 'Retail user.', 'Retail user.', 'Retail user.', 'Retail user.', 'Retail user.', 'Retail user.', 'Retail user.', 'Retail user.', 3, NULL, '2018-02-18 07:43:11', '2018-02-18 07:43:11');

-- --------------------------------------------------------

--
-- Structure de la table `sys_users`
--

CREATE TABLE `sys_users` (
  `ID` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `SYS_ROLE_ID` int(11) NOT NULL DEFAULT '0',
  `CL_COUNTRY_ID` int(11) DEFAULT NULL,
  `REG_ENTITY_FARM_ID` int(11) DEFAULT NULL,
  `REG_ENTITY_COOP_ID` int(11) DEFAULT NULL,
  `REG_ENTITY_BUYER_ID` int(11) DEFAULT NULL,
  `REG_ENTITY_SUPPLIER_ID` int(11) DEFAULT NULL,
  `access` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `sys_users`
--

INSERT INTO `sys_users` (`ID`, `name`, `email`, `password`, `remember_token`, `SYS_ROLE_ID`, `CL_COUNTRY_ID`, `REG_ENTITY_FARM_ID`, `REG_ENTITY_COOP_ID`, `REG_ENTITY_BUYER_ID`, `REG_ENTITY_SUPPLIER_ID`, `access`, `active`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(0, 'test-country', 'country@yahoo.fr', 'a', NULL, 2, 205, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2017-10-12 21:15:38', '2017-10-12 21:15:38'),
(1, 'Sylvain', 'smathieu@sy2media.com', 'a', 'wn6u8ekuSSGVEkNU7iB4Ny7MoUTrg4Wr02WMX7KmhycjCQ11WAKOTEZFqahm', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2016-12-13 12:15:10', '2017-01-19 15:26:10'),
(2, 'Emmanuelle', 'emabourgois@fairagora.com', 'a', 'fEgzdBjgx4NyG88Z2nOfcSgjk0gOQy8AC7qQDHCQ9bj9p0bxEvTtOyhrEBxy', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2016-12-31 13:19:35', '2017-04-10 21:40:14'),
(3, 'Yann', 'yann.laurent@pagre-it.com', 'a', 'bYKYqJbPQyaBXur7vBYDe4Fca0U4yP0BTgK9N0BT4iGpN0lYyWkKeIIV8ZLw', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2016-12-31 13:20:49', '2017-09-12 06:47:48'),
(4, 'Pau Badia', 'contact@fairagora.com', 'a', 'CU2fh81hE2CZUUDWCqirG6m8FBhSLh6iANYqxADTafKFrMBiqzbOiUroHsgo', 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2017-04-03 21:04:33', '2017-07-26 18:25:05'),
(5, 'pitch', 'ema@gmail.com', 'a', 'GFfwcVbQ31BU7mLbMwU65DiLLb9zjM7aIZ8WaDpXA62iLNDqm66ZAsPljbRY', 3, NULL, NULL, NULL, NULL, NULL, 12, 1, 0, NULL, '2017-04-26 21:58:09', '2017-04-26 22:01:31'),
(7, 'Decha Farm', 'paubadiagrimalt@gmail.com', 'a', 'Y6FRqc11PMunhPEoT9w6oTrkezUucCzkscbPZZiQdFsrcseMr4QpS5MHFqA0', 4, NULL, NULL, NULL, NULL, NULL, 3, 1, 0, NULL, '2017-05-01 17:52:49', '2017-05-04 18:27:55'),
(8, 'Tongpoon Thorasap', 'nudeerdk@gmail.com', 'a', NULL, 4, NULL, NULL, NULL, NULL, NULL, 21, 1, 0, NULL, '2017-05-04 18:08:30', '2017-05-04 18:12:53'),
(9, 'Sam Roi Yod Shrimp Farm Cooperative', 'samroiyod_coop@hotmail.com', 'a', NULL, 3, NULL, NULL, NULL, NULL, NULL, 12, 1, 0, NULL, '2017-05-04 18:31:08', '2017-05-04 18:31:08'),
(10, 'Flavie Denelle', 'flavie.denelle@gmail.com', 'a', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2017-07-20 20:44:30', '2017-07-20 20:44:30'),
(11, 'pu', 'amornratn@mitrphol.com', 'pu', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2017-11-24 21:40:24', '2017-11-24 21:40:24'),
(12, 'Jamnan', 'jamnank@mitrphol.com', 'jamnan', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2017-11-24 21:41:13', '2017-11-24 21:41:13'),
(13, 'Somchai Sawaengha', 'pau__badia@hotmail.com', 'a', NULL, 4, NULL, 151, NULL, NULL, NULL, 0, 1, 0, NULL, '2017-12-11 03:25:01', '2017-12-11 03:25:01'),
(19, 'TSM', 'pau@fairagora.com', 'a', NULL, 3, NULL, NULL, 150, NULL, NULL, 0, 1, 0, NULL, '2018-03-15 07:08:15', '2018-03-15 07:08:15');

-- --------------------------------------------------------

--
-- Structure de la table `sys_users_rights`
--

CREATE TABLE `sys_users_rights` (
  `ID` int(11) NOT NULL COMMENT 'USER rights management per page',
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `SYS_ROLE_ID` int(11) NOT NULL,
  `SYS_PAGE_ID` int(11) NOT NULL,
  `SYS_RIGHT_ID` int(11) NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='USER rights management per page';

--
-- Contenu de la table `sys_users_rights`
--

INSERT INTO `sys_users_rights` (`ID`, `ENABLED`, `SYS_ROLE_ID`, `SYS_PAGE_ID`, `SYS_RIGHT_ID`, `NAME`, `DESCRIPTION`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 1, 1, 1, 'Super Admin - Company editor', 'Management of Company editor by Super Admin', 3, NULL, '2018-02-18 08:03:37', '2018-02-18 08:03:37'),
(2, 1, 1, 2, 1, 'Super Admin - Company browser', 'Management of Company browser by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(3, 1, 1, 3, 1, 'Super Admin - Farm listing', 'Management of Farm listing by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(4, 1, 1, 4, 1, 'Super Admin - Farm dashboard', 'Management of Farm dashboard by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(5, 1, 1, 5, 1, 'Super Admin - Farm create', 'Management of Farm create by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(6, 1, 1, 6, 1, 'Super Admin - Farm facility', 'Management of Farm facility by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(7, 1, 1, 7, 1, 'Super Admin - Farm staff general info', 'Management of Farm staff general info by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(8, 1, 1, 8, 1, 'Super Admin - Farm staff', 'Management of Farm staff by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(9, 1, 1, 9, 1, 'Super Admin - Farm hiring', 'Management of Farm hiring by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(10, 1, 1, 10, 1, 'Super Admin - Farm safety', 'Management of Farm safety by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(11, 1, 1, 11, 1, 'Super Admin - Farm training', 'Management of Farm training by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(12, 1, 1, 12, 1, 'Super Admin - Farm environemental details', 'Management of Farm environemental details by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(13, 1, 1, 13, 1, 'Super Admin - Farm supplier', 'Management of Farm supplier by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(14, 1, 1, 14, 1, 'Super Admin - Farm production', 'Management of Farm production by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(15, 1, 1, 15, 1, 'Super Admin - Farm Buyer', 'Management of Farm Buyer by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(16, 1, 1, 16, 1, 'Super Admin - Farm plots listing in Farm', 'Management of Farm plots listing in Farm by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(17, 1, 1, 17, 1, 'Super Admin - Farm plots all plots/browser', 'Management of Farm plots all plots/browser by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(18, 1, 1, 18, 1, 'Super Admin - Farm plots plots activity', 'Management of Farm plots plots activity by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(19, 1, 1, 19, 1, 'Super Admin - Farm plots plots measures', 'Management of Farm plots plots measures by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(20, 1, 1, 20, 1, 'Super Admin - Farm ponds listing in Farm', 'Management of Farm ponds listing in Farm by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(21, 1, 1, 21, 1, 'Super Admin - Farm ponds all plots/browser', 'Management of Farm ponds all plots/browser by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(22, 1, 1, 22, 1, 'Super Admin - Farm ponds ponds activity', 'Management of Farm ponds ponds activity by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(23, 1, 1, 23, 1, 'Super Admin - Farm ponds ponds measures', 'Management of Farm ponds ponds measures by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(24, 1, 1, 24, 1, 'Super Admin - Individual editor', 'Management of Individual editor by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(25, 1, 1, 25, 1, 'Super Admin - Individual browser', 'Management of Individual browser by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(26, 1, 1, 26, 1, 'Super Admin - Supplier editor', 'Management of Supplier editor by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(27, 1, 1, 27, 1, 'Super Admin - Supplier browser', 'Management of Supplier browser by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(28, 1, 1, 28, 1, 'Super Admin - Supplier Data', 'Management of Supplier Data by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(29, 1, 1, 29, 1, 'Super Admin - Supplier dashboard', 'Management of Supplier dashboard by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(30, 1, 1, 30, 1, 'Super Admin - Buyer editor', 'Management of Buyer editor by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(31, 1, 1, 31, 1, 'Super Admin - Buyer browser', 'Management of Buyer browser by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(32, 1, 1, 32, 1, 'Super Admin - Buyer data', 'Management of Buyer data by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(33, 1, 1, 33, 1, 'Super Admin - Buyer dashboard', 'Management of Buyer dashboard by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(34, 1, 1, 34, 1, 'Super Admin - User editor', 'Management of User editor by Super Admin', 3, NULL, '2018-02-18 08:08:04', '2018-02-18 08:08:04'),
(35, 1, 1, 35, 1, 'Super Admin - User browser', 'Management of User browser by Super Admin', 3, NULL, '2018-02-18 08:08:05', '2018-02-18 08:08:05'),
(36, 1, 1, 36, 1, 'Super Admin - Cooperative data for cooperative', 'Management of Cooperative data for cooperative by Super Admin', 3, NULL, '2018-02-18 08:08:05', '2018-02-18 08:08:05'),
(37, 1, 1, 37, 1, 'Super Admin - Cooperative dashboard for cooperative', 'Management of Cooperative dashboard for cooperative by Super Admin', 3, NULL, '2018-02-18 08:08:05', '2018-02-18 08:08:05'),
(38, 1, 1, 38, 1, 'Super Admin - Admin Reference data management', 'Management of Admin Reference data management by Super Admin', 3, NULL, '2018-02-18 08:08:05', '2018-02-18 08:08:05'),
(39, 1, 4, 1, 2, 'Farm Owner - Company editor', 'Management of Company editor by Farm Owner', 3, NULL, '2018-02-18 08:09:55', '2018-02-18 08:09:55'),
(40, 1, 4, 2, 2, 'Farm Owner - Company browser', 'Management of Company browser by Farm Owner', 3, NULL, '2018-02-18 08:09:55', '2018-02-18 08:09:55'),
(41, 1, 4, 3, 3, 'Farm Owner - Farm listing', 'Management of Farm listing by Farm Owner', 3, NULL, '2018-02-18 08:09:55', '2018-02-18 08:09:55'),
(42, 1, 4, 4, 3, 'Farm Owner - Farm dashboard', 'Management of Farm dashboard by Farm Owner', 3, NULL, '2018-02-18 08:09:55', '2018-02-18 08:09:55'),
(43, 1, 4, 5, 3, 'Farm Owner - Farm create', 'Management of Farm create by Farm Owner', 3, NULL, '2018-02-18 08:09:55', '2018-02-18 08:09:55'),
(44, 1, 4, 6, 3, 'Farm Owner - Farm facility', 'Management of Farm facility by Farm Owner', 3, NULL, '2018-02-18 08:09:55', '2018-02-18 08:09:55'),
(45, 1, 4, 7, 3, 'Farm Owner - Farm staff general info', 'Management of Farm staff general info by Farm Owner', 3, NULL, '2018-02-18 08:09:55', '2018-02-18 08:09:55'),
(46, 1, 4, 8, 3, 'Farm Owner - Farm staff', 'Management of Farm staff by Farm Owner', 3, NULL, '2018-02-18 08:09:55', '2018-02-18 08:09:55'),
(47, 1, 4, 9, 3, 'Farm Owner - Farm hiring', 'Management of Farm hiring by Farm Owner', 3, NULL, '2018-02-18 08:09:55', '2018-02-18 08:09:55'),
(48, 1, 4, 10, 3, 'Farm Owner - Farm safety', 'Management of Farm safety by Farm Owner', 3, NULL, '2018-02-18 08:09:55', '2018-02-18 08:09:55'),
(49, 1, 4, 11, 3, 'Farm Owner - Farm training', 'Management of Farm training by Farm Owner', 3, NULL, '2018-02-18 08:09:55', '2018-02-18 08:09:55'),
(50, 1, 4, 12, 3, 'Farm Owner - Farm environemental details', 'Management of Farm environemental details by Farm Owner', 3, NULL, '2018-02-18 08:09:55', '2018-02-18 08:09:55'),
(51, 1, 4, 13, 3, 'Farm Owner - Farm supplier', 'Management of Farm supplier by Farm Owner', 3, NULL, '2018-02-18 08:09:55', '2018-02-18 08:09:55'),
(52, 1, 4, 14, 3, 'Farm Owner - Farm production', 'Management of Farm production by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(53, 1, 4, 15, 3, 'Farm Owner - Farm Buyer', 'Management of Farm Buyer by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(54, 1, 4, 16, 3, 'Farm Owner - Farm plots listing in Farm', 'Management of Farm plots listing in Farm by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(55, 1, 4, 17, 3, 'Farm Owner - Farm plots all plots/browser', 'Management of Farm plots all plots/browser by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(56, 1, 4, 18, 3, 'Farm Owner - Farm plots plots activity', 'Management of Farm plots plots activity by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(57, 1, 4, 19, 3, 'Farm Owner - Farm plots plots measures', 'Management of Farm plots plots measures by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(58, 1, 4, 20, 3, 'Farm Owner - Farm ponds listing in Farm', 'Management of Farm ponds listing in Farm by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(59, 1, 4, 21, 3, 'Farm Owner - Farm ponds all plots/browser', 'Management of Farm ponds all plots/browser by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(60, 1, 4, 22, 3, 'Farm Owner - Farm ponds ponds activity', 'Management of Farm ponds ponds activity by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(61, 1, 4, 23, 3, 'Farm Owner - Farm ponds ponds measures', 'Management of Farm ponds ponds measures by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(62, 1, 4, 24, 3, 'Farm Owner - Individual editor', 'Management of Individual editor by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(63, 1, 4, 25, 4, 'Farm Owner - Individual browser', 'Management of Individual browser by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(64, 1, 4, 26, 3, 'Farm Owner - Supplier editor', 'Management of Supplier editor by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(65, 1, 4, 27, 4, 'Farm Owner - Supplier browser', 'Management of Supplier browser by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(66, 1, 4, 28, 4, 'Farm Owner - Supplier Data', 'Management of Supplier Data by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(67, 1, 4, 29, 4, 'Farm Owner - Supplier dashboard', 'Management of Supplier dashboard by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(68, 1, 4, 30, 3, 'Farm Owner - Buyer editor', 'Management of Buyer editor by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(69, 1, 4, 31, 4, 'Farm Owner - Buyer browser', 'Management of Buyer browser by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(70, 1, 4, 32, 4, 'Farm Owner - Buyer data', 'Management of Buyer data by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(71, 1, 4, 33, 4, 'Farm Owner - Buyer dashboard', 'Management of Buyer dashboard by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(72, 1, 4, 34, 3, 'Farm Owner - User editor', 'Management of User editor by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(74, 1, 4, 36, 2, 'Farm Owner - Cooperative data for cooperative', 'Management of Cooperative data for cooperative by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(75, 1, 4, 37, 2, 'Farm Owner - Cooperative dashboard for cooperative', 'Management of Cooperative dashboard for cooperative by Farm Owner', 3, NULL, '2018-02-18 08:09:56', '2018-02-18 08:09:56'),
(77, 1, 6, 1, 5, 'Farm Manager - Company editor', 'Management of Company editor by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(78, 1, 6, 2, 5, 'Farm Manager - Company browser', 'Management of Company browser by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(79, 1, 6, 3, 4, 'Farm Manager - Farm listing', 'Management of Farm listing by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(80, 1, 6, 4, 4, 'Farm Manager - Farm dashboard', 'Management of Farm dashboard by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(81, 1, 6, 5, 4, 'Farm Manager - Farm create', 'Management of Farm create by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(82, 1, 6, 6, 4, 'Farm Manager - Farm facility', 'Management of Farm facility by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(83, 1, 6, 7, 4, 'Farm Manager - Farm staff general info', 'Management of Farm staff general info by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(84, 1, 6, 8, 4, 'Farm Manager - Farm staff', 'Management of Farm staff by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(85, 1, 6, 9, 4, 'Farm Manager - Farm hiring', 'Management of Farm hiring by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(86, 1, 6, 10, 4, 'Farm Manager - Farm safety', 'Management of Farm safety by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(87, 1, 6, 11, 4, 'Farm Manager - Farm training', 'Management of Farm training by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(88, 1, 6, 12, 4, 'Farm Manager - Farm environemental details', 'Management of Farm environemental details by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(89, 1, 6, 13, 4, 'Farm Manager - Farm supplier', 'Management of Farm supplier by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(90, 1, 6, 14, 4, 'Farm Manager - Farm production', 'Management of Farm production by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(91, 1, 6, 15, 4, 'Farm Manager - Farm Buyer', 'Management of Farm Buyer by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(92, 1, 6, 16, 3, 'Farm Manager - Farm plots listing in Farm', 'Management of Farm plots listing in Farm by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(93, 1, 6, 17, 3, 'Farm Manager - Farm plots all plots/browser', 'Management of Farm plots all plots/browser by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(94, 1, 6, 18, 3, 'Farm Manager - Farm plots plots activity', 'Management of Farm plots plots activity by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(95, 1, 6, 19, 3, 'Farm Manager - Farm plots plots measures', 'Management of Farm plots plots measures by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(96, 1, 6, 20, 3, 'Farm Manager - Farm ponds listing in Farm', 'Management of Farm ponds listing in Farm by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(97, 1, 6, 21, 3, 'Farm Manager - Farm ponds all plots/browser', 'Management of Farm ponds all plots/browser by Farm Manager', 3, NULL, '2018-02-18 08:12:06', '2018-02-18 08:12:06'),
(98, 1, 6, 22, 3, 'Farm Manager - Farm ponds ponds activity', 'Management of Farm ponds ponds activity by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(99, 1, 6, 23, 3, 'Farm Manager - Farm ponds ponds measures', 'Management of Farm ponds ponds measures by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(100, 1, 6, 24, 5, 'Farm Manager - Individual editor', 'Management of Individual editor by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(101, 1, 6, 25, 5, 'Farm Manager - Individual browser', 'Management of Individual browser by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(102, 1, 6, 26, 5, 'Farm Manager - Supplier editor', 'Management of Supplier editor by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(103, 1, 6, 27, 5, 'Farm Manager - Supplier browser', 'Management of Supplier browser by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(104, 1, 6, 28, 5, 'Farm Manager - Supplier Data', 'Management of Supplier Data by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(105, 1, 6, 29, 5, 'Farm Manager - Supplier dashboard', 'Management of Supplier dashboard by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(106, 1, 6, 30, 5, 'Farm Manager - Buyer editor', 'Management of Buyer editor by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(107, 1, 6, 31, 5, 'Farm Manager - Buyer browser', 'Management of Buyer browser by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(108, 1, 6, 32, 5, 'Farm Manager - Buyer data', 'Management of Buyer data by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(109, 1, 6, 33, 5, 'Farm Manager - Buyer dashboard', 'Management of Buyer dashboard by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(110, 1, 6, 34, 5, 'Farm Manager - User editor', 'Management of User editor by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(111, 1, 6, 35, 5, 'Farm Manager - User browser', 'Management of User browser by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(112, 1, 6, 36, 5, 'Farm Manager - Cooperative data for cooperative', 'Management of Cooperative data for cooperative by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(113, 1, 6, 37, 5, 'Farm Manager - Cooperative dashboard for cooperative', 'Management of Cooperative dashboard for cooperative by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(114, 1, 6, 38, 5, 'Farm Manager - Admin Reference data management', 'Management of Admin Reference data management by Farm Manager', 3, NULL, '2018-02-18 08:12:07', '2018-02-18 08:12:07'),
(116, 1, 3, 2, 4, 'Cooperative (group of farms) - Company browser', 'Management of Company browser by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:27', '2018-02-18 08:13:27'),
(117, 1, 3, 3, 4, 'Cooperative (group of farms) - Farm listing', 'Management of Farm listing by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:27', '2018-02-18 08:13:27'),
(118, 1, 3, 4, 4, 'Cooperative (group of farms) - Farm dashboard', 'Management of Farm dashboard by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:27', '2018-02-18 08:13:27'),
(119, 1, 3, 5, 4, 'Cooperative (group of farms) - Farm create', 'Management of Farm create by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:27', '2018-02-18 08:13:27'),
(120, 1, 3, 6, 4, 'Cooperative (group of farms) - Farm facility', 'Management of Farm facility by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:27', '2018-02-18 08:13:27'),
(121, 1, 3, 7, 4, 'Cooperative (group of farms) - Farm staff general info', 'Management of Farm staff general info by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:27', '2018-02-18 08:13:27'),
(122, 1, 3, 8, 4, 'Cooperative (group of farms) - Farm staff', 'Management of Farm staff by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:27', '2018-02-18 08:13:27'),
(123, 1, 3, 9, 4, 'Cooperative (group of farms) - Farm hiring', 'Management of Farm hiring by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:27', '2018-02-18 08:13:27'),
(124, 1, 3, 10, 4, 'Cooperative (group of farms) - Farm safety', 'Management of Farm safety by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:27', '2018-02-18 08:13:27'),
(125, 1, 3, 11, 4, 'Cooperative (group of farms) - Farm training', 'Management of Farm training by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:27', '2018-02-18 08:13:27'),
(126, 1, 3, 12, 4, 'Cooperative (group of farms) - Farm environemental details', 'Management of Farm environemental details by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:27', '2018-02-18 08:13:27'),
(127, 1, 3, 13, 4, 'Cooperative (group of farms) - Farm supplier', 'Management of Farm supplier by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:27', '2018-02-18 08:13:27'),
(128, 1, 3, 14, 4, 'Cooperative (group of farms) - Farm production', 'Management of Farm production by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:27', '2018-02-18 08:13:27'),
(129, 1, 3, 15, 4, 'Cooperative (group of farms) - Farm Buyer', 'Management of Farm Buyer by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(130, 1, 3, 16, 4, 'Cooperative (group of farms) - Farm plots listing in Farm', 'Management of Farm plots listing in Farm by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(131, 1, 3, 17, 4, 'Cooperative (group of farms) - Farm plots all plots/browser', 'Management of Farm plots all plots/browser by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(132, 1, 3, 18, 4, 'Cooperative (group of farms) - Farm plots plots activity', 'Management of Farm plots plots activity by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(133, 1, 3, 19, 4, 'Cooperative (group of farms) - Farm plots plots measures', 'Management of Farm plots plots measures by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(134, 1, 3, 20, 4, 'Cooperative (group of farms) - Farm ponds listing in Farm', 'Management of Farm ponds listing in Farm by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(135, 1, 3, 21, 4, 'Cooperative (group of farms) - Farm ponds all plots/browser', 'Management of Farm ponds all plots/browser by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(136, 1, 3, 22, 4, 'Cooperative (group of farms) - Farm ponds ponds activity', 'Management of Farm ponds ponds activity by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(137, 1, 3, 23, 4, 'Cooperative (group of farms) - Farm ponds ponds measures', 'Management of Farm ponds ponds measures by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(138, 1, 3, 24, 5, 'Cooperative (group of farms) - Individual editor', 'Management of Individual editor by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(139, 1, 3, 25, 5, 'Cooperative (group of farms) - Individual browser', 'Management of Individual browser by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(140, 1, 3, 26, 4, 'Cooperative (group of farms) - Supplier editor', 'Management of Supplier editor by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(141, 1, 3, 27, 4, 'Cooperative (group of farms) - Supplier browser', 'Management of Supplier browser by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(142, 1, 3, 28, 4, 'Cooperative (group of farms) - Supplier Data', 'Management of Supplier Data by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(143, 1, 3, 29, 5, 'Cooperative (group of farms) - Supplier dashboard', 'Management of Supplier dashboard by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(144, 1, 3, 30, 4, 'Cooperative (group of farms) - Buyer editor', 'Management of Buyer editor by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(145, 1, 3, 31, 4, 'Cooperative (group of farms) - Buyer browser', 'Management of Buyer browser by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(146, 1, 3, 32, 4, 'Cooperative (group of farms) - Buyer data', 'Management of Buyer data by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(147, 1, 3, 33, 5, 'Cooperative (group of farms) - Buyer dashboard', 'Management of Buyer dashboard by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(148, 1, 3, 34, 3, 'Cooperative (group of farms) - User editor', 'Management of User editor by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(149, 1, 3, 35, 3, 'Cooperative (group of farms) - User browser', 'Management of User browser by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(150, 1, 3, 36, 3, 'Cooperative (group of farms) - Cooperative data for cooperative', 'Management of Cooperative data for cooperative by Cooperative (group of farms)', 3, NULL, '2018-02-18 08:13:28', '2018-02-18 08:13:28'),
(151, 1, 3, 37, 4, 'Cooperative  - Cooperative dashboard for cooperative', 'Management of Cooperative dashboard for cooperative by Cooperative ', 3, NULL, '2018-02-18 08:15:00', '2018-02-18 08:15:00'),
(152, 1, 3, 38, 5, 'Cooperative  - Admin Reference data management', 'Management of Admin Reference data management by Cooperative ', 3, NULL, '2018-02-18 08:15:00', '2018-02-18 08:15:00'),
(153, 1, 5, 1, 3, 'Buyer  - Company editor', 'Management of Company editor by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(154, 1, 5, 2, 4, 'Buyer  - Company browser', 'Management of Company browser by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(155, 1, 5, 3, 4, 'Buyer  - Farm listing', 'Management of Farm listing by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(156, 1, 5, 4, 4, 'Buyer  - Farm dashboard', 'Management of Farm dashboard by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(157, 1, 5, 5, 4, 'Buyer  - Farm create', 'Management of Farm create by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(158, 1, 5, 6, 4, 'Buyer  - Farm facility', 'Management of Farm facility by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(159, 1, 5, 7, 4, 'Buyer  - Farm staff general info', 'Management of Farm staff general info by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(160, 1, 5, 8, 4, 'Buyer  - Farm staff', 'Management of Farm staff by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(161, 1, 5, 9, 4, 'Buyer  - Farm hiring', 'Management of Farm hiring by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(162, 1, 5, 10, 4, 'Buyer  - Farm safety', 'Management of Farm safety by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(163, 1, 5, 11, 4, 'Buyer  - Farm training', 'Management of Farm training by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(164, 1, 5, 12, 4, 'Buyer  - Farm environemental details', 'Management of Farm environemental details by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(165, 1, 5, 13, 4, 'Buyer  - Farm supplier', 'Management of Farm supplier by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(166, 1, 5, 14, 4, 'Buyer  - Farm production', 'Management of Farm production by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(167, 1, 5, 15, 4, 'Buyer  - Farm Buyer', 'Management of Farm Buyer by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(168, 1, 5, 16, 4, 'Buyer  - Farm plots listing in Farm', 'Management of Farm plots listing in Farm by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(169, 1, 5, 17, 4, 'Buyer  - Farm plots all plots/browser', 'Management of Farm plots all plots/browser by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(170, 1, 5, 18, 4, 'Buyer  - Farm plots plots activity', 'Management of Farm plots plots activity by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(171, 1, 5, 19, 4, 'Buyer  - Farm plots plots measures', 'Management of Farm plots plots measures by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(172, 1, 5, 20, 4, 'Buyer  - Farm ponds listing in Farm', 'Management of Farm ponds listing in Farm by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(173, 1, 5, 21, 4, 'Buyer  - Farm ponds all plots/browser', 'Management of Farm ponds all plots/browser by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(174, 1, 5, 22, 4, 'Buyer  - Farm ponds ponds activity', 'Management of Farm ponds ponds activity by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(175, 1, 5, 23, 4, 'Buyer  - Farm ponds ponds measures', 'Management of Farm ponds ponds measures by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(176, 1, 5, 24, 5, 'Buyer  - Individual editor', 'Management of Individual editor by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(177, 1, 5, 25, 5, 'Buyer  - Individual browser', 'Management of Individual browser by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(178, 1, 5, 26, 4, 'Buyer  - Supplier editor', 'Management of Supplier editor by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(179, 1, 5, 27, 4, 'Buyer  - Supplier browser', 'Management of Supplier browser by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(180, 1, 5, 28, 4, 'Buyer  - Supplier Data', 'Management of Supplier Data by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(181, 1, 5, 29, 5, 'Buyer  - Supplier dashboard', 'Management of Supplier dashboard by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(182, 1, 5, 30, 3, 'Buyer  - Buyer editor', 'Management of Buyer editor by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(183, 1, 5, 31, 3, 'Buyer  - Buyer browser', 'Management of Buyer browser by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(184, 1, 5, 32, 3, 'Buyer  - Buyer data', 'Management of Buyer data by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(185, 1, 5, 33, 4, 'Buyer  - Buyer dashboard', 'Management of Buyer dashboard by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(186, 1, 5, 34, 5, 'Buyer  - User editor', 'Management of User editor by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(187, 1, 5, 35, 5, 'Buyer  - User browser', 'Management of User browser by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(188, 1, 5, 36, 4, 'Buyer  - Cooperative data for cooperative', 'Management of Cooperative data for cooperative by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(189, 1, 5, 37, 4, 'Buyer  - Cooperative dashboard for cooperative', 'Management of Cooperative dashboard for cooperative by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(190, 1, 5, 38, 5, 'Buyer  - Admin Reference data management', 'Management of Admin Reference data management by Buyer ', 3, NULL, '2018-02-18 08:15:49', '2018-02-18 08:15:49'),
(191, 1, 7, 1, 3, 'Supplier  - Company editor', 'Management of Company editor by Supplier ', 3, NULL, '2018-02-18 08:16:40', '2018-02-18 08:16:40'),
(192, 1, 7, 2, 4, 'Supplier  - Company browser', 'Management of Company browser by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(193, 1, 7, 3, 4, 'Supplier  - Farm listing', 'Management of Farm listing by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(194, 1, 7, 4, 4, 'Supplier  - Farm dashboard', 'Management of Farm dashboard by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(195, 1, 7, 5, 4, 'Supplier  - Farm create', 'Management of Farm create by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(196, 1, 7, 6, 4, 'Supplier  - Farm facility', 'Management of Farm facility by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(197, 1, 7, 7, 4, 'Supplier  - Farm staff general info', 'Management of Farm staff general info by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(198, 1, 7, 8, 4, 'Supplier  - Farm staff', 'Management of Farm staff by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(199, 1, 7, 9, 4, 'Supplier  - Farm hiring', 'Management of Farm hiring by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(200, 1, 7, 10, 4, 'Supplier  - Farm safety', 'Management of Farm safety by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(201, 1, 7, 11, 4, 'Supplier  - Farm training', 'Management of Farm training by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(202, 1, 7, 12, 4, 'Supplier  - Farm environemental details', 'Management of Farm environemental details by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(203, 1, 7, 13, 4, 'Supplier  - Farm supplier', 'Management of Farm supplier by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(204, 1, 7, 14, 4, 'Supplier  - Farm production', 'Management of Farm production by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(205, 1, 7, 15, 4, 'Supplier  - Farm Buyer', 'Management of Farm Buyer by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(206, 1, 7, 16, 4, 'Supplier  - Farm plots listing in Farm', 'Management of Farm plots listing in Farm by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(207, 1, 7, 17, 4, 'Supplier  - Farm plots all plots/browser', 'Management of Farm plots all plots/browser by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(208, 1, 7, 18, 4, 'Supplier  - Farm plots plots activity', 'Management of Farm plots plots activity by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(209, 1, 7, 19, 4, 'Supplier  - Farm plots plots measures', 'Management of Farm plots plots measures by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(210, 1, 7, 20, 4, 'Supplier  - Farm ponds listing in Farm', 'Management of Farm ponds listing in Farm by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(211, 1, 7, 21, 4, 'Supplier  - Farm ponds all plots/browser', 'Management of Farm ponds all plots/browser by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(212, 1, 7, 22, 4, 'Supplier  - Farm ponds ponds activity', 'Management of Farm ponds ponds activity by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(213, 1, 7, 23, 4, 'Supplier  - Farm ponds ponds measures', 'Management of Farm ponds ponds measures by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(214, 1, 7, 24, 5, 'Supplier  - Individual editor', 'Management of Individual editor by Supplier ', 3, NULL, '2018-02-18 08:16:41', '2018-02-18 08:16:41'),
(215, 1, 7, 25, 5, 'Supplier  - Individual browser', 'Management of Individual browser by Supplier ', 3, NULL, '2018-02-18 08:16:42', '2018-02-18 08:16:42'),
(216, 1, 7, 26, 3, 'Supplier  - Supplier editor', 'Management of Supplier editor by Supplier ', 3, NULL, '2018-02-18 08:16:42', '2018-02-18 08:16:42'),
(217, 1, 7, 27, 3, 'Supplier  - Supplier browser', 'Management of Supplier browser by Supplier ', 3, NULL, '2018-02-18 08:16:42', '2018-02-18 08:16:42'),
(218, 1, 7, 28, 3, 'Supplier  - Supplier Data', 'Management of Supplier Data by Supplier ', 3, NULL, '2018-02-18 08:16:42', '2018-02-18 08:16:42'),
(219, 1, 7, 29, 4, 'Supplier  - Supplier dashboard', 'Management of Supplier dashboard by Supplier ', 3, NULL, '2018-02-18 08:16:42', '2018-02-18 08:16:42'),
(220, 1, 7, 30, 4, 'Supplier  - Buyer editor', 'Management of Buyer editor by Supplier ', 3, NULL, '2018-02-18 08:16:42', '2018-02-18 08:16:42'),
(221, 1, 7, 31, 4, 'Supplier  - Buyer browser', 'Management of Buyer browser by Supplier ', 3, NULL, '2018-02-18 08:16:42', '2018-02-18 08:16:42'),
(222, 1, 7, 32, 4, 'Supplier  - Buyer data', 'Management of Buyer data by Supplier ', 3, NULL, '2018-02-18 08:16:42', '2018-02-18 08:16:42'),
(223, 1, 7, 33, 5, 'Supplier  - Buyer dashboard', 'Management of Buyer dashboard by Supplier ', 3, NULL, '2018-02-18 08:16:42', '2018-02-18 08:16:42'),
(224, 1, 7, 34, 5, 'Supplier  - User editor', 'Management of User editor by Supplier ', 3, NULL, '2018-02-18 08:16:42', '2018-02-18 08:16:42'),
(225, 1, 7, 35, 5, 'Supplier  - User browser', 'Management of User browser by Supplier ', 3, NULL, '2018-02-18 08:16:42', '2018-02-18 08:16:42'),
(226, 1, 7, 36, 4, 'Supplier  - Cooperative data for cooperative', 'Management of Cooperative data for cooperative by Supplier ', 3, NULL, '2018-02-18 08:16:42', '2018-02-18 08:16:42'),
(227, 1, 7, 37, 4, 'Supplier  - Cooperative dashboard for cooperative', 'Management of Cooperative dashboard for cooperative by Supplier ', 3, NULL, '2018-02-18 08:16:42', '2018-02-18 08:16:42');

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
-- Index pour la table `cl_app_debt_types`
--
ALTER TABLE `cl_app_debt_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `DEBT_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_app_debt_types_updater_id_idx` (`UPDATER_ID`);

--
-- Index pour la table `cl_app_declaration_sources_types`
--
ALTER TABLE `cl_app_declaration_sources_types`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `KEY_DECL_SOURCE_UPDATER_ID` (`UPDATER_ID`);

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
-- Index pour la table `cl_app_fresh_water_sypply_types`
--
ALTER TABLE `cl_app_fresh_water_sypply_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `FRESH_WATER_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_app_fresh_water_sypply_types_updater_id_idx` (`UPDATER_ID`);

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
-- Index pour la table `cl_app_water_supply_types`
--
ALTER TABLE `cl_app_water_supply_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `WATER_SUPPLY_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_app_water_supply_types_updater_id_idx` (`UPDATER_ID`);

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
-- Index pour la table `cl_farm_production_types`
--
ALTER TABLE `cl_farm_production_types`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `FARM_PROD_TYPE_CODE_UNIQUE` (`CODE`),
  ADD KEY `cl_farm_production_types_updater_id_idx` (`UPDATER_ID`);

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
  ADD PRIMARY KEY (`ID`),
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
  ADD KEY `FK_PRODUCTS_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_REF_PRODUCTS_RECOMMAND_UNIT_ID_idx` (`CL_RECOMMAND_UNIT_ID`);

--
-- Index pour la table `cl_ref_product_types`
--
ALTER TABLE `cl_ref_product_types`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_PRODUCTS_TYPE_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_RECOMAND_UNIT_TYPE_idx` (`CL_RECOMAND_QUANTITY_UNIT_ID`);

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
-- Index pour la table `jt_plot_activity_product_types`
--
ALTER TABLE `jt_plot_activity_product_types`
  ADD KEY `FK_PLOT_ACTIVITY_PRODUCT_TYPE_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_PLOT_ACTIVITY_TYPE_PRODUCT_TYPE_UNIK_FARM_idx` (`CL_FARM_PLOT_ACTIVITY_ID`),
  ADD KEY `FK_PLOT_ACTIVITY_TYPE_PRODUCT_TYPE_UNIK_PRODUCT_TYPE_idx` (`CL_PRODUCT_TYPE_ID`);

--
-- Index pour la table `jt_pond_activity_product_types`
--
ALTER TABLE `jt_pond_activity_product_types`
  ADD UNIQUE KEY `FK_JT_POND_ACTIVITY_PRODUCT_TYPE_UNIQUE` (`CL_FARM_POND_ACTIVITY_ID`,`CL_PRODUCT_TYPE_ID`),
  ADD KEY `FK_POND_ACTIVITY_PRODUCT_TYPE_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_FARM_POND_ACTIVITY_ACTIVITY_TYPE_idx` (`CL_FARM_POND_ACTIVITY_ID`),
  ADD KEY `FK_FARM_POND_ACTIVITY_PRODUCT_TYPE_idx` (`CL_PRODUCT_TYPE_ID`);

--
-- Index pour la table `reg_entities`
--
ALTER TABLE `reg_entities`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CL_ENTITY_UID_TYPE_ID` (`CL_ENTITY_UID_TYPE_ID`),
  ADD KEY `FK_REG_ENTITIES_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_facilities`
--
ALTER TABLE `reg_entity_facilities`
  ADD PRIMARY KEY (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_FARM_FACILITIES_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_farmag_details`
--
ALTER TABLE `reg_entity_farmag_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_REG_ENTITY_FARMAG_DETAILS_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_REG_ENTITY_FARMAG_DETAILS_FARM_ID_idx` (`REG_ENTITY_FARM_ID`);

--
-- Index pour la table `reg_entity_farmag_plots`
--
ALTER TABLE `reg_entity_farmag_plots`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `REG_ENTITY_FARM_ID` (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_FARMAG_PLOTS_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_REG_ENTITY_FARMAG_PLOTS_CL_COMMODITIES_ID` (`CL_COMMODITIES_ID`),
  ADD KEY `FK_REG_ENTITY_FARMAG_PLOTS_CL_PLOT_SIZE_UNIT_ID_idx` (`CL_PLOT_SIZE_UNIT_ID`);

--
-- Index pour la table `reg_entity_farmaq_details`
--
ALTER TABLE `reg_entity_farmaq_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_REG_ENTITY_FARMAQ_DETAILS_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_REG_ENTITY_FARMAQ_DETAILS_CL_FARM_PROD_TYPE_ID_idx` (`CL_FARM_PRODUCTION_TYPE_ID`),
  ADD KEY `FK_REG_ENTITY_FARMAQ_DETAILS_CLFRESH_WATER_ID_idx` (`CL_FARM_WATER_SUPPLY_ID`),
  ADD KEY `FK_REG_ENTITY_FARMAQ_DETAILS_FARM_ID_idx` (`REG_ENTITY_FARM_ID`);

--
-- Index pour la table `reg_entity_farmaq_ponds`
--
ALTER TABLE `reg_entity_farmaq_ponds`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `REG_ENTITY_FARM_ID` (`REG_ENTITY_FARM_ID`),
  ADD KEY `REG_ENTITY_FARM_ID_2` (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_FARMAQ_PONDS_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_REG_ENTITY_FARMAQ_PONDS_CL_PONDS_TYPE_ID_idx` (`CL_POND_TYPE_ID`),
  ADD KEY `FK_REG_ENTITY_FARMAQ_PONDS_CL_SPECIES_ID_idx` (`CL_SPECIES_ID`),
  ADD KEY `FK_REG_ENTITY_FARMAQ_PONDS_CL_UNIT_TYPE_ID_idx` (`CL_POND_SIZE_UNIT_ID`),
  ADD KEY `FK_REG_ENTITY_FARMAQ_PONDS_CL_VOL_UNIT_TYPE_ID` (`CL_POND_VOLUME_UNIT_ID`);

--
-- Index pour la table `reg_entity_farm_buildings`
--
ALTER TABLE `reg_entity_farm_buildings`
  ADD PRIMARY KEY (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_FARM_BUILDING_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_REG_ENTITY_FARM_BUILDING_CL_BUILDING_TYPE_ID_idx` (`CL_FARM_BUILDING_TYPE_ID`);

--
-- Index pour la table `reg_entity_farm_buyers`
--
ALTER TABLE `reg_entity_farm_buyers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `REG_ENTITY_FARM_ID` (`REG_ENTITY_FARM_ID`),
  ADD KEY `REG_ENTITY_BUYER_ID` (`REG_ENTITY_BUYER_ID`),
  ADD KEY `FK_CL_BUYER_PRODUCTTYPE` (`CL_PRODUCT_TYPES_ID`),
  ADD KEY `FK_REG_ENTITY_ENTITY_BUYER_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_farm_details`
--
ALTER TABLE `reg_entity_farm_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_REG_ENTITY_FARM_DETAILS_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_REG_ENTITY_FARM_DETAILS_FARM_ID_idx` (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_FARM_DETAILS_OWNER_ID_idx` (`REG_ENTITY_OWNER_ID`),
  ADD KEY `FK_REG_ENTITY_FARM_DETAILS_CL_SIZE_UNIT_ID_idx` (`CL_SIZE_UNIT_ID`),
  ADD KEY `FK_REG_ENTITY_FARM_DETAILS_CL_HVHE_TYPE_ID_idx` (`CL_HVHE_EXPENSION_TYPE_ID`);

--
-- Index pour la table `reg_entity_farm_details_farm_type`
--
ALTER TABLE `reg_entity_farm_details_farm_type`
  ADD KEY `FK_REG_ENTITY_FARM_DETAILS_TYPE_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_REG_ENTITY_FARM_DETAILS_TYPE_FARM_ID_idx` (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_FARM_DETAILS_TYPE_CL_FARM_TYPE_ID_idx` (`CL_FARM_TYPE_ID`);

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
  ADD KEY `FK_REG_ENTITY_FARM_SUPPLY_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_REG_ENTITY_FARM_SUPPLY_CL_WATER_SUP_TYPE_ID_idx` (`CL_WATER_SUPPLY_TYPE_ID`);

--
-- Index pour la table `reg_entity_hazardous_work`
--
ALTER TABLE `reg_entity_hazardous_work`
  ADD PRIMARY KEY (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_HAZARDOUS_WORK_TYPE_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_REG_ENTITY_HAZARDOUS_WORK_TYPE_CL_HAAZRD_WORK_TYPE_ID_idx` (`CL_APP_HAZARDOUS_WORK_TYPE_ID`);

--
-- Index pour la table `reg_entity_product_suppliers`
--
ALTER TABLE `reg_entity_product_suppliers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_REG_ENTITY_PRODUCT_SUPPLIER_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_REG_ENTITY_PRODUCT_SUPPLIER_CL_PRODUCTS_TYPE_ID_idx` (`CL_PRODUCT_TYPES_ID`),
  ADD KEY `FK_REG_ENTITY_PRODUCT_SUPPLIER_ENTITY_ID_idx` (`ENTITY_ID`);

--
-- Index pour la table `reg_entity_staff`
--
ALTER TABLE `reg_entity_staff`
  ADD UNIQUE KEY `FK_COMPKEY` (`REG_ENTITY_ID`,`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_CL_LANGUAGE_ID_idx` (`CL_LANGUAGE_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_CL_POS_TYPE_ID_idx` (`CL_POSITION_TYPE_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_CL_LEGAL_STATUS_ID_idx` (`CL_LEGAL_STATUS_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_FARM_ID_idx` (`REG_ENTITY_FARM_ID`);

--
-- Index pour la table `reg_entity_staff_contract`
--
ALTER TABLE `reg_entity_staff_contract`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_CONTRACT_DETAILS_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_CONTRACT_DETAILS_CL_CONTRACT_TYPE_ID_idx` (`CL_CONTRACT_TYPE_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_CONTRACT_CL_PAYMENT_FREQ_ID_idx` (`CL_PAYMENT_FREQUENCY_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_CONTRACT_DETAILS_CL_COUNTRY_ID_idx` (`CL_COUNTRY_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_CONTRACT_DETAILS_STAFF_ID_idx` (`REG_ENTITY_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_CONTRACT_DETAILS_FARM_ID_idx` (`REG_ENTITY_FARM_ID`);

--
-- Index pour la table `reg_entity_staff_declaration`
--
ALTER TABLE `reg_entity_staff_declaration`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_DECLARATION_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_DECLARATION_CL_STAFF_DECL_TYPE_ID_idx` (`CL_STAFF_DECLARATION_TYPE`),
  ADD KEY `FK_REG_ENTITY_STAFF_DECLARATION_CL_DECL_SOURCE_ID_idx` (`CL_DECLARATION_SOURCE`),
  ADD KEY `FK_REG_ENTITY_STAFF_DECLARATION_FARM_ID_idx` (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_DECLARATION_STAFF_ID_idx` (`REG_ENTITY_STAFF_ID`);

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
  ADD KEY `FK_DECLARATION_GRIVANCE_UPDATER_ID_idx` (`UPDATER_ID`),
  ADD KEY `FK_DECLARATION_CL_DEBT_TYPE_1_idx` (`CL_DEBT_TYPE_1_ID`),
  ADD KEY `FK_DECLARATION_CL_DEBT_TYPE_2_idx` (`CL_DEBT_TYPE_2_ID`),
  ADD KEY `FK_DECLARATION_CL_DEBT_TYPE_3_idx` (`CL_DEBT_TYPE_3_ID`);

--
-- Index pour la table `reg_entity_staff_declaration_working_hours`
--
ALTER TABLE `reg_entity_staff_declaration_working_hours`
  ADD PRIMARY KEY (`REG_ENTITY_STAFF_DECLARATION_ID`),
  ADD KEY `FK_DECLARATION_WORKING_HOURS_UPDATER_ID_idx` (`UPDATER_ID`),
  ADD KEY `FK_DECLARATION_WORKING_HOURS_CL_QUANTITY_REST_DAY_ID_idx` (`CL_QUANTITY_REST_PER_DAY_UNIT_ID`),
  ADD KEY `FK_DECLARATION_WORKING_HOURS_CL_QUANTITY_REST_WEEK_ID_idx` (`CL_QUANTITY_REST_PER_WEEK_UNIT_ID`),
  ADD KEY `FK_DECLARATION_WORKING_HOURS_CL_QUANTITY_OVERTIME_WEEK_ID_idx` (`CL_QUANTITY_OVERTIME_PER_WEEK_UNIT_ID`);

--
-- Index pour la table `reg_entity_staff_management`
--
ALTER TABLE `reg_entity_staff_management`
  ADD PRIMARY KEY (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_MANAGEMENT_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_MANAGEMENT_HAZARD_TYPE_ID` (`CL_HARZARDOUS_WORK_TYPE_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_NO_TERMIN_REASON_ID_idx` (`CL_NO_EARLY_CONTRACT_TERMINATION_REASON_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_GET_BACK_DEPO_ID_idx` (`CL_GET_BACK_FINANCIAL_DEPOSIT_REASON_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_MANAGEMENT_TERM_CONTRACT_REASON_ID_idx` (`CL_CONTRACT_TERMINATION_REASON_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_DEDUC_TYPE_ID_1_idx` (`CL_DEDUCTION_SALARY_ID_1`),
  ADD KEY `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_DEDUC_TYPE_ID_2_idx` (`CL_DEDUCTION_SALARY_ID_2`),
  ADD KEY `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_DEDUC_TYPE_ID_3_idx` (`CL_DEDUCTION_SALARY_ID_3`),
  ADD KEY `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_DEDUC_TYPE_ID_4_idx` (`CL_DEDUCTION_SALARY_ID_4`),
  ADD KEY `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_PAY_DEBT_TYPE_ID_2_idx` (`CL_PAYMENT_DEBT_TYPE_ID_2`),
  ADD KEY `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_PAY_DEBT_TYPE_ID_3_idx` (`CL_PAYMENT_DEBT_TYPE_ID_3`),
  ADD KEY `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_PAY_DEBT_TYPE_ID_4_idx` (`CL_PAYMENT_DEBT_TYPE_ID_4`),
  ADD KEY `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_HIRING_RESTR_ID_idx` (`CL_HIRING_RESTRICTION_ID`);

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
-- Index pour la table `reg_entity_staff_safety`
--
ALTER TABLE `reg_entity_staff_safety`
  ADD PRIMARY KEY (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_SAFETY_UPDATER_ID` (`UPDATER_ID`);

--
-- Index pour la table `reg_entity_staff_training`
--
ALTER TABLE `reg_entity_staff_training`
  ADD PRIMARY KEY (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_TRAINING_UPDATER_ID` (`UPDATER_ID`),
  ADD KEY `FK_REG_ENTITY_STAFF_TRAINING_HAZARD_TYPE_ID` (`CL_HAZARDOUS_ACTIVITIES_TRAINING_TYPE_ID`);

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
-- Index pour la table `sys_pages`
--
ALTER TABLE `sys_pages`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UNIQUE_SYS_PAGES` (`CODE`),
  ADD KEY `FK_SYS_PAGE_DOMAIN_ID_idx` (`SYS_PAGE_DOMAIN_ID`);

--
-- Index pour la table `sys_page_domains`
--
ALTER TABLE `sys_page_domains`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UNIQUE_SYS_PAGE_DOMAINES` (`CODE`);

--
-- Index pour la table `sys_rights`
--
ALTER TABLE `sys_rights`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UNIQUE_SYS_RIGHTs` (`CODE`);

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
  ADD KEY `INDX_CL_COUNTRY_ID` (`CL_COUNTRY_ID`),
  ADD KEY `FK_SYS_USERS_FARM_ID_idx` (`REG_ENTITY_FARM_ID`),
  ADD KEY `FK_SYS_USERS_COOP_ID_idx` (`REG_ENTITY_COOP_ID`),
  ADD KEY `FK_SYS_USERS_BUYER_ID_idx` (`REG_ENTITY_BUYER_ID`),
  ADD KEY `FK_SYS_USERS_SUPPLIER_ID_idx` (`REG_ENTITY_SUPPLIER_ID`);

--
-- Index pour la table `sys_users_rights`
--
ALTER TABLE `sys_users_rights`
  ADD PRIMARY KEY (`ID`);

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
-- AUTO_INCREMENT pour la table `cl_app_debt_types`
--
ALTER TABLE `cl_app_debt_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `cl_app_deduction_salary_types`
--
ALTER TABLE `cl_app_deduction_salary_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `cl_app_entity_types`
--
ALTER TABLE `cl_app_entity_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT pour la table `cl_app_fresh_water_sypply_types`
--
ALTER TABLE `cl_app_fresh_water_sypply_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cl_app_get_back_financial_deposit_reasons`
--
ALTER TABLE `cl_app_get_back_financial_deposit_reasons`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT pour la table `cl_app_hazardous_training_types`
--
ALTER TABLE `cl_app_hazardous_training_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT pour la table `cl_app_hazardous_work_type`
--
ALTER TABLE `cl_app_hazardous_work_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT pour la table `cl_app_hiring_restriction_types`
--
ALTER TABLE `cl_app_hiring_restriction_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `cl_app_payment_debt_types`
--
ALTER TABLE `cl_app_payment_debt_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
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
-- AUTO_INCREMENT pour la table `cl_app_water_supply_types`
--
ALTER TABLE `cl_app_water_supply_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `cl_farm_pond_types`
--
ALTER TABLE `cl_farm_pond_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `cl_farm_production_types`
--
ALTER TABLE `cl_farm_production_types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `dt_farmaq_pond_measurements`
--
ALTER TABLE `dt_farmaq_pond_measurements`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `dt_farmaq_production`
--
ALTER TABLE `dt_farmaq_production`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT pour la table `reg_entity_farm_buyers`
--
ALTER TABLE `reg_entity_farm_buyers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `reg_entity_farm_details`
--
ALTER TABLE `reg_entity_farm_details`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT pour la table `reg_entity_farm_providers`
--
ALTER TABLE `reg_entity_farm_providers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `reg_entity_product_suppliers`
--
ALTER TABLE `reg_entity_product_suppliers`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reg_entity_staff_contract`
--
ALTER TABLE `reg_entity_staff_contract`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
-- AUTO_INCREMENT pour la table `sys_pages`
--
ALTER TABLE `sys_pages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'list of system pages', AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT pour la table `sys_page_domains`
--
ALTER TABLE `sys_page_domains`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'list of system page domains', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `sys_rights`
--
ALTER TABLE `sys_rights`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'list of users rights', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `sys_roles`
--
ALTER TABLE `sys_roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `sys_users`
--
ALTER TABLE `sys_users`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `sys_users_rights`
--
ALTER TABLE `sys_users_rights`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'USER rights management per page', AUTO_INCREMENT=228;
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
-- Contraintes pour la table `cl_app_debt_types`
--
ALTER TABLE `cl_app_debt_types`
  ADD CONSTRAINT `FK_DEBT_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_app_declaration_sources_types`
--
ALTER TABLE `cl_app_declaration_sources_types`
  ADD CONSTRAINT `FK_DECL_SOURCE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Contraintes pour la table `cl_app_fresh_water_sypply_types`
--
ALTER TABLE `cl_app_fresh_water_sypply_types`
  ADD CONSTRAINT `FK_FRESH_WATER_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Contraintes pour la table `cl_app_water_supply_types`
--
ALTER TABLE `cl_app_water_supply_types`
  ADD CONSTRAINT `FK_WATER_SUPPLY_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Contraintes pour la table `cl_farm_production_types`
--
ALTER TABLE `cl_farm_production_types`
  ADD CONSTRAINT `FK_FARM_PROD_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `FK_PRODUCTS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REF_PRODUCTS_RECOMMAND_UNIT_ID` FOREIGN KEY (`CL_RECOMMAND_UNIT_ID`) REFERENCES `cl_app_quantity_units` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cl_ref_product_types`
--
ALTER TABLE `cl_ref_product_types`
  ADD CONSTRAINT `FK_PRODUCTS_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_RECOMAND_UNIT_TYPE` FOREIGN KEY (`CL_RECOMAND_QUANTITY_UNIT_ID`) REFERENCES `cl_app_quantity_unit_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Contraintes pour la table `jt_plot_activity_product_types`
--
ALTER TABLE `jt_plot_activity_product_types`
  ADD CONSTRAINT `FK_FARM_PLOT_ACTIVITY_PRODUCT_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_PLOT_ACTIVITY_TYPE_PRODUCT_TYPE_UNIK_FARM` FOREIGN KEY (`CL_FARM_PLOT_ACTIVITY_ID`) REFERENCES `cl_farm_plot_activity_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_PLOT_ACTIVITY_TYPE_PRODUCT_TYPE_UNIK_PRODUCT_TYPE` FOREIGN KEY (`CL_PRODUCT_TYPE_ID`) REFERENCES `cl_ref_product_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `jt_pond_activity_product_types`
--
ALTER TABLE `jt_pond_activity_product_types`
  ADD CONSTRAINT `FK_FARM_POND_ACTIVITY_ACTIVITY_TYPE` FOREIGN KEY (`CL_FARM_POND_ACTIVITY_ID`) REFERENCES `cl_farm_pond_activity_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_FARM_POND_ACTIVITY_PRODUCT_TYPE` FOREIGN KEY (`CL_PRODUCT_TYPE_ID`) REFERENCES `cl_ref_product_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_FARM_POND_ACTIVITY_PRODUCT_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entities`
--
ALTER TABLE `reg_entities`
  ADD CONSTRAINT `FK_CLTYPE` FOREIGN KEY (`CL_ENTITY_UID_TYPE_ID`) REFERENCES `cl_app_entity_types` (`ID`),
  ADD CONSTRAINT `FK_REG_ENTITIES_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_facilities`
--
ALTER TABLE `reg_entity_facilities`
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_FACILITIES_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_FACILITIES_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farmag_details`
--
ALTER TABLE `reg_entity_farmag_details`
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAG_DETAILS_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAG_DETAILS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farmag_plots`
--
ALTER TABLE `reg_entity_farmag_plots`
  ADD CONSTRAINT `FK_PLOT2FARMS` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`),
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAG_PLOTS_CL_COMMODITIES_ID` FOREIGN KEY (`CL_COMMODITIES_ID`) REFERENCES `cl_ref_commodities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAG_PLOTS_CL_PLOT_SIZE_UNIT_ID` FOREIGN KEY (`CL_PLOT_SIZE_UNIT_ID`) REFERENCES `cl_app_quantity_units` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAG_PLOTS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farmaq_details`
--
ALTER TABLE `reg_entity_farmaq_details`
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAQ_DETAILS_CLFRESH_WATER_ID` FOREIGN KEY (`CL_FARM_WATER_SUPPLY_ID`) REFERENCES `cl_app_fresh_water_sypply_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAQ_DETAILS_CL_FARM_PROD_TYPE_ID` FOREIGN KEY (`CL_FARM_PRODUCTION_TYPE_ID`) REFERENCES `cl_farm_production_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAQ_DETAILS_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAQ_DETAILS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farmaq_ponds`
--
ALTER TABLE `reg_entity_farmaq_ponds`
  ADD CONSTRAINT `FK_PONDS2FARM` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`),
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAQ_PONDS_CL_PONDS_TYPE_ID` FOREIGN KEY (`CL_POND_TYPE_ID`) REFERENCES `cl_farm_pond_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAQ_PONDS_CL_SPECIES_ID` FOREIGN KEY (`CL_SPECIES_ID`) REFERENCES `cl_ref_species` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAQ_PONDS_CL_UNIT_TYPE_ID` FOREIGN KEY (`CL_POND_SIZE_UNIT_ID`) REFERENCES `cl_app_quantity_units` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAQ_PONDS_CL_VOL_UNIT_TYPE_ID` FOREIGN KEY (`CL_POND_VOLUME_UNIT_ID`) REFERENCES `cl_app_quantity_units` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARMAQ_PONDS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farm_buildings`
--
ALTER TABLE `reg_entity_farm_buildings`
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_BUILDING_CL_BUILDING_TYPE_ID` FOREIGN KEY (`CL_FARM_BUILDING_TYPE_ID`) REFERENCES `cl_farm_building_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_BUILDING_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_BUILDING_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farm_buyers`
--
ALTER TABLE `reg_entity_farm_buyers`
  ADD CONSTRAINT `FK_CL_BUYER_PRODUCTTYPE` FOREIGN KEY (`CL_PRODUCT_TYPES_ID`) REFERENCES `cl_ref_product_types` (`ID`),
  ADD CONSTRAINT `FK_REG_ENTITY_ENTITY_BUYER_BUYER_ID` FOREIGN KEY (`REG_ENTITY_BUYER_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_ENTITY_BUYER_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_ENTITY_BUYER_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farm_details`
--
ALTER TABLE `reg_entity_farm_details`
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_DETAILS_CL_HVHE_TYPE_ID` FOREIGN KEY (`CL_HVHE_EXPENSION_TYPE_ID`) REFERENCES `cl_app_hvhe_expension_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_DETAILS_CL_SIZE_UNIT_ID` FOREIGN KEY (`CL_SIZE_UNIT_ID`) REFERENCES `cl_app_quantity_units` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_DETAILS_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_DETAILS_OWNER_ID` FOREIGN KEY (`REG_ENTITY_OWNER_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_DETAILS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farm_details_farm_type`
--
ALTER TABLE `reg_entity_farm_details_farm_type`
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_DETAILS_TYPE_CL_FARM_TYPE_ID` FOREIGN KEY (`CL_FARM_TYPE_ID`) REFERENCES `cl_farm_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_DETAILS_TYPE_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_DETAILS_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farm_providers`
--
ALTER TABLE `reg_entity_farm_providers`
  ADD CONSTRAINT `FK_CL_PRODUCTTYPE` FOREIGN KEY (`CL_PRODUCT_TYPES_ID`) REFERENCES `cl_ref_product_types` (`ID`),
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_PROVIDER_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_PROVIDER_SUPPLIER_ID` FOREIGN KEY (`REG_ENTITY_SUPPLIER_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_PROVIDER_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_farm_water_supply`
--
ALTER TABLE `reg_entity_farm_water_supply`
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_SUPPLY_CL_WATER_SUP_TYPE_ID` FOREIGN KEY (`CL_WATER_SUPPLY_TYPE_ID`) REFERENCES `cl_app_water_supply_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_SUPPLY_REG_ENTITY_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_FARM_SUPPLY_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_hazardous_work`
--
ALTER TABLE `reg_entity_hazardous_work`
  ADD CONSTRAINT `FK_REG_ENTITY_HAZARDOUS_WORK_TYPE_CL_HAAZRD_WORK_TYPE_ID` FOREIGN KEY (`CL_APP_HAZARDOUS_WORK_TYPE_ID`) REFERENCES `cl_app_hazardous_work_type` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_HAZARDOUS_WORK_TYPE_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_HAZARDOUS_WORK_TYPE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_product_suppliers`
--
ALTER TABLE `reg_entity_product_suppliers`
  ADD CONSTRAINT `FK_REG_ENTITY_PRODUCT_SUPPLIER_CL_PRODUCTS_TYPE_ID` FOREIGN KEY (`CL_PRODUCT_TYPES_ID`) REFERENCES `cl_ref_product_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_PRODUCT_SUPPLIER_ENTITY_ID` FOREIGN KEY (`ENTITY_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_PRODUCT_SUPPLIER_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff`
--
ALTER TABLE `reg_entity_staff`
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_CL_LANGUAGE_ID` FOREIGN KEY (`CL_LANGUAGE_ID`) REFERENCES `cl_ref_languages` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_CL_LEGAL_STATUS_ID` FOREIGN KEY (`CL_LEGAL_STATUS_ID`) REFERENCES `cl_app_legal_status` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_CL_POS_TYPE_ID` FOREIGN KEY (`CL_POSITION_TYPE_ID`) REFERENCES `cl_app_company_position_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_STAFF_ID` FOREIGN KEY (`REG_ENTITY_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff_contract`
--
ALTER TABLE `reg_entity_staff_contract`
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_CONTRACT_CL_PAYMENT_FREQ_ID` FOREIGN KEY (`CL_PAYMENT_FREQUENCY_ID`) REFERENCES `cl_app_payment_frequencies` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_CONTRACT_DETAILS_CL_CONTRACT_TYPE_ID` FOREIGN KEY (`CL_CONTRACT_TYPE_ID`) REFERENCES `cl_app_contract_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_CONTRACT_DETAILS_CL_COUNTRY_ID` FOREIGN KEY (`CL_COUNTRY_ID`) REFERENCES `cl_ref_countries` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_CONTRACT_DETAILS_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_CONTRACT_DETAILS_STAFF_ID` FOREIGN KEY (`REG_ENTITY_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_CONTRACT_DETAILS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff_declaration`
--
ALTER TABLE `reg_entity_staff_declaration`
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_DECLARATION_CL_DECL_SOURCE_ID` FOREIGN KEY (`CL_DECLARATION_SOURCE`) REFERENCES `cl_app_declaration_sources_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_DECLARATION_CL_STAFF_DECL_TYPE_ID` FOREIGN KEY (`CL_STAFF_DECLARATION_TYPE`) REFERENCES `cl_app_staff_declaration_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_DECLARATION_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_DECLARATION_STAFF_ID` FOREIGN KEY (`REG_ENTITY_STAFF_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
  ADD CONSTRAINT `FK_DECLARATION_CL_DEBT_TYPE_1` FOREIGN KEY (`CL_DEBT_TYPE_1_ID`) REFERENCES `cl_app_debt_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DECLARATION_CL_DEBT_TYPE_2` FOREIGN KEY (`CL_DEBT_TYPE_2_ID`) REFERENCES `cl_app_debt_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DECLARATION_CL_DEBT_TYPE_3` FOREIGN KEY (`CL_DEBT_TYPE_3_ID`) REFERENCES `cl_app_debt_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DECLARATION_REMUNERATION_UNIK` FOREIGN KEY (`REG_ENTITY_STAFF_DECLARATION_ID`) REFERENCES `reg_entity_staff_declaration` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DECLARATION_REMUNERATION_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff_declaration_working_hours`
--
ALTER TABLE `reg_entity_staff_declaration_working_hours`
  ADD CONSTRAINT `FK_DECLARATION_WORKING_HOURS_CL_QUANTITY_OVERTIME_WEEK_ID` FOREIGN KEY (`CL_QUANTITY_OVERTIME_PER_WEEK_UNIT_ID`) REFERENCES `cl_app_quantity_units` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DECLARATION_WORKING_HOURS_CL_QUANTITY_REST_DAY_ID` FOREIGN KEY (`CL_QUANTITY_REST_PER_DAY_UNIT_ID`) REFERENCES `cl_app_quantity_units` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DECLARATION_WORKING_HOURS_CL_QUANTITY_REST_WEEK_ID` FOREIGN KEY (`CL_QUANTITY_REST_PER_WEEK_UNIT_ID`) REFERENCES `cl_app_quantity_units` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DECLARATION_WORKING_HOURS_UNIK` FOREIGN KEY (`REG_ENTITY_STAFF_DECLARATION_ID`) REFERENCES `reg_entity_staff_declaration` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DECLARATION_WORKING_HOURS_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff_management`
--
ALTER TABLE `reg_entity_staff_management`
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_DEDUC_TYPE_ID_1` FOREIGN KEY (`CL_DEDUCTION_SALARY_ID_1`) REFERENCES `cl_app_deduction_salary_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_DEDUC_TYPE_ID_2` FOREIGN KEY (`CL_DEDUCTION_SALARY_ID_2`) REFERENCES `cl_app_deduction_salary_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_DEDUC_TYPE_ID_3` FOREIGN KEY (`CL_DEDUCTION_SALARY_ID_3`) REFERENCES `cl_app_deduction_salary_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_DEDUC_TYPE_ID_4` FOREIGN KEY (`CL_DEDUCTION_SALARY_ID_4`) REFERENCES `cl_app_deduction_salary_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_GET_BACK_DEPO_ID` FOREIGN KEY (`CL_GET_BACK_FINANCIAL_DEPOSIT_REASON_ID`) REFERENCES `cl_app_get_back_financial_deposit_reasons` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_HIRING_RESTR_ID` FOREIGN KEY (`CL_HIRING_RESTRICTION_ID`) REFERENCES `cl_app_hiring_restriction_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_NO_TERMIN_REASON_ID` FOREIGN KEY (`CL_NO_EARLY_CONTRACT_TERMINATION_REASON_ID`) REFERENCES `cl_app_no_early_termination_contract_reasons` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_PAY_DEBT_TYPE_ID_2` FOREIGN KEY (`CL_PAYMENT_DEBT_TYPE_ID_2`) REFERENCES `cl_app_payment_debt_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_PAY_DEBT_TYPE_ID_3` FOREIGN KEY (`CL_PAYMENT_DEBT_TYPE_ID_3`) REFERENCES `cl_app_payment_debt_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_MANAGEMENT_CL_PAY_DEBT_TYPE_ID_4` FOREIGN KEY (`CL_PAYMENT_DEBT_TYPE_ID_4`) REFERENCES `cl_app_payment_debt_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_MANAGEMENT_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_MANAGEMENT_HAZARD_TYPE_ID` FOREIGN KEY (`CL_HARZARDOUS_WORK_TYPE_ID`) REFERENCES `cl_app_hazardous_work_type` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_MANAGEMENT_TERM_CONTRACT_REASON_ID` FOREIGN KEY (`CL_CONTRACT_TERMINATION_REASON_ID`) REFERENCES `cl_app_termination_contract_reasons` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
-- Contraintes pour la table `reg_entity_staff_safety`
--
ALTER TABLE `reg_entity_staff_safety`
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_SAFETY_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reg_entity_staff_training`
--
ALTER TABLE `reg_entity_staff_training`
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_TRAINING_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_REG_ENTITY_STAFF_TRAINING_HAZARD_TYPE_ID` FOREIGN KEY (`CL_HAZARDOUS_ACTIVITIES_TRAINING_TYPE_ID`) REFERENCES `cl_app_hazardous_training_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
-- Contraintes pour la table `sys_pages`
--
ALTER TABLE `sys_pages`
  ADD CONSTRAINT `FK_SYS_PAGE_DOMAIN_ID` FOREIGN KEY (`SYS_PAGE_DOMAIN_ID`) REFERENCES `sys_page_domains` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `sys_users`
--
ALTER TABLE `sys_users`
  ADD CONSTRAINT `FK_CLCOUNTRY` FOREIGN KEY (`CL_COUNTRY_ID`) REFERENCES `cl_ref_countries` (`ID`),
  ADD CONSTRAINT `FK_SYS_USERS_BUYER_ID` FOREIGN KEY (`REG_ENTITY_BUYER_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_SYS_USERS_COOP_ID` FOREIGN KEY (`REG_ENTITY_COOP_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_SYS_USERS_FARM_ID` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_SYS_USERS_SUPPLIER_ID` FOREIGN KEY (`REG_ENTITY_SUPPLIER_ID`) REFERENCES `reg_entities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
