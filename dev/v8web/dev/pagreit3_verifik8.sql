-- MySQL dump 10.13  Distrib 5.7.16, for osx10.11 (x86_64)
--
-- Host: localhost    Database: pagreit3_verifik8
-- ------------------------------------------------------
-- Server version	5.7.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cl_commodities`
--

DROP TABLE IF EXISTS `cl_commodities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_commodities` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CPC_CODE` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `HS_CODE` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of phytosanitary products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_commodities`
--

LOCK TABLES `cl_commodities` WRITE;
/*!40000 ALTER TABLE `cl_commodities` DISABLE KEYS */;
INSERT INTO `cl_commodities` VALUES (1,1,'0156','Sugar Cane','Sugar cane - Saccharum officinarum','0182','1212.99','1',NULL,'2017-09-23 10:16:35','2017-09-23 10:16:35');
/*!40000 ALTER TABLE `cl_commodities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_company_position_types`
--

DROP TABLE IF EXISTS `cl_company_position_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_company_position_types` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `POSITION_TYPES_CODE_UNIQUE` (`CODE`),
  KEY `cl_company_position_types_updater_id_idx` (`UPDATER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_company_position_types`
--

LOCK TABLES `cl_company_position_types` WRITE;
/*!40000 ALTER TABLE `cl_company_position_types` DISABLE KEYS */;
INSERT INTO `cl_company_position_types` VALUES (1,1,'CEO','Company CEO','Company CEO','1',NULL,'2016-11-13 15:17:13','2017-09-12 13:26:58'),(2,1,'OWN','Company Owner','Small Company Owner','1',NULL,'2016-11-13 15:18:30','2017-09-12 13:26:58'),(3,1,'PROD','Production Manager','Production Manager','1',NULL,'2016-11-13 15:18:30','2017-09-12 13:26:58'),(4,1,'SALES','Sales Manager','Sales Manager','1',NULL,'2016-11-13 21:08:54','2017-09-12 13:26:58'),(5,1,'WORK','Worker','Worker','1',NULL,'2016-11-13 21:08:54','2017-09-12 13:26:58');
/*!40000 ALTER TABLE `cl_company_position_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_contract_types`
--

DROP TABLE IF EXISTS `cl_contract_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_contract_types`
--

LOCK TABLES `cl_contract_types` WRITE;
/*!40000 ALTER TABLE `cl_contract_types` DISABLE KEYS */;
INSERT INTO `cl_contract_types` VALUES (1,1,'ORAL','ORAL','ORAL','1',NULL,'2017-11-04 17:53:42','2017-11-04 17:53:42'),(2,1,'WRITTEN','WRITTEN','WRITTEN','1',NULL,'2017-11-04 17:53:42','2017-11-04 17:53:42');
/*!40000 ALTER TABLE `cl_contract_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_countries`
--

DROP TABLE IF EXISTS `cl_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_countries` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The COUNTRIES codelist ID',
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` char(2) CHARACTER SET utf8 NOT NULL,
  `ISO_3_CODE` char(3) CHARACTER SET utf8 DEFAULT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(128) CHARACTER SET utf8 NOT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UNIQUE_CL_COUNTRIES` (`CODE`,`ISO_3_CODE`),
  KEY `cl_countries_updater_id_idx` (`UPDATER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='The COUNTRIES codelist';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_countries`
--

LOCK TABLES `cl_countries` WRITE;
/*!40000 ALTER TABLE `cl_countries` DISABLE KEYS */;
INSERT INTO `cl_countries` VALUES (1,1,'AM','ARM','Armenia','the Republic of Armenia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(2,1,'AF','AFG','Afghanistan','the Islamic Republic of Afghanistan','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(3,1,'AL','ALB','Albania','the Republic of Albania','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(4,1,'DZ','DZA','Algeria','the People\'s Democratic Republic of Algeria','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(5,1,'AS','ASM','American Samoa','American Samoa','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(6,1,'AD','AND','Andorra','the Principality of Andorra','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(7,1,'AO','AGO','Angola','the Republic of Angola','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(8,1,'AG','ATG','Antigua and Barbuda','Antigua and Barbuda','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(9,1,'AR','ARG','Argentina','the Argentine Republic','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(10,1,'AU','AUS','Australia','Australia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(11,1,'AT','AUT','Austria','the Republic of Austria','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(12,1,'BS','BHS','Bahamas','the Commonwealth of the Bahamas','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(13,1,'BH','BHR','Bahrain','the Kingdom of Bahrain','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(14,1,'BB','BRB','Barbados','Barbados','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(15,1,'BD','BGD','Bangladesh','the People\'s Republic of Bangladesh','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(16,1,'BM','BMU','Bermuda','Bermuda','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(17,1,'BT','BTN','Bhutan','the Kingdom of Bhutan','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(18,1,'BO','BOL','Bolivia (Plurinational State of)','the Plurinational State of Bolivia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(19,1,'BW','BWA','Botswana','the Republic of Botswana','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(20,1,'BR','BRA','Brazil','the Federative Republic of Brazil','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(21,1,'AW','ABW','Aruba','Aruba','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(22,1,'BZ','BLZ','Belize','Belize','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(23,1,'IO','IOT','British Indian Ocean Territory','British Indian Ocean Territory','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(24,1,'SB','SLB','Solomon Islands','Solomon Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(25,1,'BN','BRN','Brunei Darussalam','Brunei Darussalam','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(26,1,'BG','BGR','Bulgaria','the Republic of Bulgaria','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(27,1,'MM','MMR','Myanmar','the Republic of the Union of Myanmar','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(28,1,'BI','BDI','Burundi','the Republic of Burundi','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(29,1,'AQ','ATA','Antarctica','Antarctica','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(30,1,'BV','BVT','Bouvet Island','Bouvet Island','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(31,1,'CM','CMR','Cameroon','the Republic of Cameroon','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(32,1,'CA','CAN','Canada','Canada','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(33,1,'CV','CPV','Cape Verde','the Republic of Cape Verde','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(34,1,'KY','CYM','Cayman Islands','Cayman Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(35,1,'CF','CAF','Central African Republic','the Central African Republic','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(36,1,'LK','LKA','Sri Lanka','the Democratic Socialist Republic of Sri Lanka','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(37,1,'TD','TCD','Chad','the Republic of Chad','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(38,1,'CL','CHL','Chile','the Republic of Chile','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(39,1,'CN','CHN','China','the People\'s Republic of China','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(40,1,'CX','CXR','Christmas Island','Christmas Island','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(41,1,'CC','CCK','Cocos (Keeling) Islands','Cocos (Keeling) Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(42,1,'CO','COL','Colombia','the Republic of Colombia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(43,1,'KM','COM','Comoros','the Union of the Comoros','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(44,1,'CG','COG','Congo','the Republic of the Congo','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(45,1,'CK','COK','Cook Islands','the Cook Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(46,1,'CR','CRI','Costa Rica','the Republic of Costa Rica','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(47,1,'CU','CUB','Cuba','the Republic of Cuba','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(48,1,'CY','CYP','Cyprus','the Republic of Cyprus','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(49,1,'AZ','AZE','Azerbaijan','the Republic of Azerbaijan','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(50,1,'BJ','BEN','Benin','the Republic of Benin','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(51,1,'DK','DNK','Denmark','the Kingdom of Denmark','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(52,1,'DM','DMA','Dominica','the Commonwealth of Dominica','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(53,1,'DO','DOM','Dominican Republic','the Dominican Republic','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(54,1,'BY','BLR','Belarus','the Republic of Belarus','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(55,1,'EC','ECU','Ecuador','the Republic of Ecuador','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(56,1,'EG','EGY','Egypt','the Arab Republic of Egypt','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(57,1,'SV','SLV','El Salvador','the Republic of El Salvador','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(58,1,'GQ','GNQ','Equatorial Guinea','the Republic of Equatorial Guinea','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(59,1,'EE','EST','Estonia','the Republic of Estonia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(60,1,'FO','FRO','Faroe Islands (Associate Member)','Faroe Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(61,1,'FK','FLK','Falkland Islands (Malvinas)','the Falkland Islands (Malvinas)','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(62,1,'FJ','FJI','Fiji','the Republic of Fiji','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(63,1,'FI','FIN','Finland','the Republic of Finland','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(64,1,'FR','FRA','France','the French Republic','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(65,1,'GF','GUF','French Guiana','French Guiana','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(66,1,'PF','PYF','French Polynesia','French Polynesia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(67,1,'TF','ATF','French Southern and Antarctic Territories','French Southern and Antarctic Territories','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(68,1,'DJ','DJI','Djibouti','the Republic of Djibouti','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(69,1,'GE','GEO','Georgia','Georgia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(70,1,'GA','GAB','Gabon','the Gabonese Republic','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(71,1,'GM','GMB','Gambia','the Republic of the Gambia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(72,1,'DE','DEU','Germany','the Federal Republic of Germany','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(73,1,'BA','BIH','Bosnia and Herzegovina','Bosnia and Herzegovina','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(74,1,'GH','GHA','Ghana','the Republic of Ghana','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(75,1,'GI','GIB','Gibraltar','Gibraltar','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(76,1,'KI','KIR','Kiribati','the Republic of Kiribati','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(77,1,'GR','GRC','Greece','the Hellenic Republic','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(78,1,'GL','GRL','Greenland','Greenland','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(79,1,'GD','GRD','Grenada','Grenada','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(80,1,'GP','GLP','Guadeloupe','Guadeloupe','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(81,1,'GU','GUM','Guam','Guam','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(82,1,'GT','GTM','Guatemala','the Republic of Guatemala','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(83,1,'GN','GIN','Guinea','the Republic of Guinea','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(84,1,'GY','GUY','Guyana','the Republic of Guyana','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(85,1,'HM','HMD','Heard and McDonald Islands','Heard Island and McDonald Island','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(86,1,'HT','HTI','Haiti','the Republic of Haiti','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(87,1,'VA','VAT','Holy See','Holy see','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(88,1,'HN','HND','Honduras','the Republic of Honduras','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(89,1,'HK','HKG','China, Hong Kong SAR','China, Hong Kong Special Administrative Region','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(90,1,'HU','HUN','Hungary','Hungary','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(91,1,'HR','HRV','Croatia','the Republic of Croatia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(92,1,'IS','ISL','Iceland','the Republic of Iceland','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(93,1,'IN','IND','India','the Republic of India','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(94,1,'ID','IDN','Indonesia','the Republic of Indonesia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(95,1,'IR','IRN','Iran (Islamic Republic of)','the Islamic Republic of Iran','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(96,1,'IQ','IRQ','Iraq','the Republic of Iraq','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(97,1,'IE','IRL','Ireland','Ireland','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(98,1,'IL','ISR','Israel','the State of Israel','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(99,1,'IT','ITA','Italy','the Republic of Italy','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(100,1,'CI','CIV','Côte d\'Ivoire','the Republic of Côte d\'Ivoire','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(101,1,'KZ','KAZ','Kazakhstan','the Republic of Kazakhstan','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(102,1,'JM','JAM','Jamaica','Jamaica','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(103,1,'JP','JPN','Japan','Japan','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(104,1,'JT','JTN','Johnston Island','Johnston Island','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(105,1,'JO','JOR','Jordan','the Hashemite Kingdom of Jordan','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(106,1,'KG','KGZ','Kyrgyzstan','the Kyrgyz Republic','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(107,1,'KE','KEN','Kenya','the Republic of Kenya','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(108,1,'KH','KHM','Cambodia','the Kingdom of Cambodia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(109,1,'KP','PRK','Democratic People\'s Republic of Korea','the Democratic People\'s Republic of Korea','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(110,1,'KR','KOR','Republic of Korea','the Republic of Korea','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(111,1,'KW','KWT','Kuwait','the State of Kuwait','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(112,1,'LV','LVA','Latvia','the Republic of Latvia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(113,1,'LA','LAO','Lao People\'s Democratic Republic','the Lao People\'s Democratic Republic','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(114,1,'LB','LBN','Lebanon','the Lebanese Republic','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(115,1,'LS','LSO','Lesotho','the Kingdom of Lesotho','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(116,1,'LR','LBR','Liberia','the Republic of Liberia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(117,1,'LY','LBY','Libya','Libya','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(118,1,'LI','LIE','Liechtenstein','the Principality of Liechtenstein','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(119,1,'LT','LTU','Lithuania','the Republic of Lithuania','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(120,1,'MH','MHL','Marshall Islands','the Republic of the Marshall Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(121,1,'MO','MAC','China, Macao SAR','China, Macao Special Administrative Region','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(122,1,'MG','MDG','Madagascar','the Republic of Madagascar','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(123,1,'MW','MWI','Malawi','the Republic of Malawi','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(124,1,'MY','MYS','Malaysia','Malaysia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(125,1,'MV','MDV','Maldives','the Republic of Maldives','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(126,1,'ML','MLI','Mali','the Republic of Mali','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(127,1,'MT','MLT','Malta','the Republic of Malta','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(128,1,'MQ','MTQ','Martinique','Martinique','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(129,1,'MR','MRT','Mauritania','the Islamic Republic of Mauritania','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(130,1,'MU','MUS','Mauritius','the Republic of Mauritius','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(131,1,'MX','MEX','Mexico','the United Mexican States','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(132,1,'MI','MID','Midway Islands','Midway Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(133,1,'MC','MCO','Monaco','the Principality of Monaco','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(134,1,'MN','MNG','Mongolia','Mongolia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(135,1,'MS','MSR','Montserrat','Montserrat','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(136,1,'MA','MAR','Morocco','the Kingdom of Morocco','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(137,1,'MZ','MOZ','Mozambique','the Republic of Mozambique','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(138,1,'FM','FSM','Micronesia (Federated States of)','the Federated States of Micronesia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(139,1,'MD','MDA','Republic of Moldova','the Republic of Moldova','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(140,1,'NA','NAM','Namibia','the Republic of Namibia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(141,1,'NR','NRU','Nauru','the Republic of Nauru','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(142,1,'NP','NPL','Nepal','the Federal Democratic Republic of Nepal','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(143,1,'NL','NLD','Netherlands','the Kingdom of the Netherlands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(144,1,'AN','ANT','Netherlands Antilles','Netherlands Antilles','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(145,1,'NC','NCL','New Caledonia','New Caledonia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(146,1,'MK','MKD','The former Yugoslav Republic of Macedonia','The former Yugoslav Republic of Macedonia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(147,1,'VU','VUT','Vanuatu','the Republic of Vanuatu','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(148,1,'NZ','NZL','New Zealand','New Zealand','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(149,1,'NI','NIC','Nicaragua','the Republic of Nicaragua','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(150,1,'NE','NER','Niger','the Republic of the Niger','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(151,1,'NG','NGA','Nigeria','the Federal Republic of Nigeria','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(152,1,'NU','NIU','Niue','Niue','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(153,1,'NF','NFK','Norfolk Island','Territory of Norfolk Island','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(154,1,'NO','NOR','Norway','the Kingdom of Norway','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(155,1,'MP','MNP','Northern Mariana Islands','The Commonwealth of the Northern Mariana Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(156,1,'PK','PAK','Pakistan','the Islamic Republic of Pakistan','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(157,1,'PA','PAN','Panama','the Republic of Panama','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(158,1,'CZ','CZE','Czech Republic','the Czech Republic','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(159,1,'PG','PNG','Papua New Guinea','Papua New Guinea','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(160,1,'PY','PRY','Paraguay','the Republic of Paraguay','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(161,1,'PE','PER','Peru','the Republic of Peru','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(162,1,'PH','PHL','Philippines','the Republic of the Philippines','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(163,1,'PL','POL','Poland','the Republic of Poland','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(164,1,'PT','PRT','Portugal','the Portuguese Republic','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(165,1,'GW','GNB','Guinea-Bissau','the Republic of Guinea-Bissau','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(166,1,'TL','TLS','Timor-Leste','the Democratic Republic of Timor-Leste','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(167,1,'PR','PRI','Puerto Rico','the Commonwealth of Puerto Rico','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(168,1,'ER','ERI','Eritrea','Eritrea','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(169,1,'QA','QAT','Qatar','the State of Qatar','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(170,1,'PW','PLW','Palau','the Republic of Palau','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(171,1,'ZW','ZWE','Zimbabwe','the Republic of Zimbabwe','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(172,1,'RE','REU','Réunion','Réunion','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(173,1,'RO','ROU','Romania','Romania','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(174,1,'RW','RWA','Rwanda','the Republic of Rwanda','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(175,1,'RU','RUS','Russian Federation','the Russian Federation','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(176,1,'CS','SCG','Serbia and Montenegro','Serbia and Montenegro','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(177,1,'SH','SHN','Saint Helena, Ascension and Tristan da Cunha','Saint Helena, Ascension and Tristan da Cunha','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(178,1,'KN','KNA','Saint Kitts and Nevis','Saint Kitts and Nevis','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(179,1,'LC','LCA','Saint Lucia','Saint Lucia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(180,1,'PM','SPM','Saint Pierre and Miquelon','Saint Pierre and Miquelon','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(181,1,'VC','VCT','Saint Vincent and the Grenadines','Saint Vincent and the Grenadines','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(182,1,'SM','SMR','San Marino','the Republic of San Marino','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(183,1,'ST','STP','Sao Tome and Principe','the Democratic Republic of Sao Tome and Principe','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(184,1,'SA','SAU','Saudi Arabia','the Kingdom of Saudi Arabia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(185,1,'SN','SEN','Senegal','the Republic of Senegal','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(186,1,'SC','SYC','Seychelles','the Republic of Seychelles','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(187,1,'SL','SLE','Sierra Leone','the Republic of Sierra Leone','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(188,1,'SI','SVN','Slovenia','the Republic of Slovenia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(189,1,'SK','SVK','Slovakia','the Slovak Republic','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(190,1,'SG','SGP','Singapore','the Republic of Singapore','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(191,1,'SO','SOM','Somalia','the Somali Republic','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(192,1,'ZA','ZAF','South Africa','the Republic of South Africa','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(193,1,'ES','ESP','Spain','the Kingdom of Spain','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(194,1,'EH','ESH','Western Sahara','Western Sahara','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(195,1,'SD','SDN','Sudan','the Republic of the Sudan','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(196,1,'SR','SUR','Suriname','the Republic of Suriname','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(197,1,'TJ','TJK','Tajikistan','the Republic of Tajikistan','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(198,1,'SZ','SWZ','Swaziland','the Kingdom of Swaziland','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(199,1,'SE','SWE','Sweden','the Kingdom of Sweden','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(200,1,'CH','CHE','Switzerland','the Swiss Confederation','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(201,1,'SY','SYR','Syrian Arab Republic','the Syrian Arab Republic','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(202,1,'TM','TKM','Turkmenistan','Turkmenistan','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(203,1,'TW','TWN','Chinese Taipei','Chinese Taipei','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(204,1,'TZ','TZA','United Republic of Tanzania','the United Republic of Tanzania','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(205,1,'TH','THA','Thailand','the Kingdom of Thailand','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(206,1,'TG','TGO','Togo','the Togolese Republic','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(207,1,'TK','TKL','Tokelau (Associate Member)','Tokelau','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(208,1,'TO','TON','Tonga','the Kingdom of Tonga','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(209,1,'TT','TTO','Trinidad and Tobago','the Republic of Trinidad and Tobago','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(210,1,'OM','OMN','Oman','the Sultanate of Oman','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(211,1,'TN','TUN','Tunisia','the Republic of Tunisia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(212,1,'TR','TUR','Turkey','the Republic of Turkey','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(213,1,'TC','TCA','Turks and Caicos Islands','Turks and Caicos Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(214,1,'AE','ARE','United Arab Emirates','the United Arab Emirates','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(215,1,'UG','UGA','Uganda','the Republic of Uganda','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(216,1,'TV','TUV','Tuvalu','Tuvalu','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(217,1,'SU','SUN','Russia','Un. Sov. Soc. Rep.','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(218,1,'GB','GBR','United Kingdom','the United Kingdom of Great Britain and Northern Ireland','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(219,1,'UA','UKR','Ukraine','Ukraine','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(220,1,'US','USA','United States of America','the United States of America','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(221,1,'UM','UMI','US Minor Is.','US Minor Outlying Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(222,1,'BF','BFA','Burkina Faso','Burkina Faso','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(223,1,'UY','URY','Uruguay','the Eastern Republic of Uruguay','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(224,1,'UZ','UZB','Uzbekistan','the Republic of Uzbekistan','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(225,1,'VE','VEN','Venezuela (Bolivarian Republic of)','the Bolivarian Republic of Venezuela','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(226,1,'VN','VNM','Viet Nam','the Socialist Republic of Viet Nam','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(227,1,'ET','ETH','Ethiopia','the Federal Democratic Republic of Ethiopia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(228,1,'VG','VGB','British Virgin Islands','the British Virgin Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(229,1,'VI','VIR','United States Virgin Islands','the United States Virgin Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(230,1,'WK','WAK','Wake Island','Wake Island','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(231,1,'WF','WLF','Wallis and Futuna Islands','Wallis and Futuna Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(232,1,'WS','WSM','Samoa','the Independent State of Samoa','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(233,1,'YE','YEM','Yemen','the Republic of Yemen','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(234,1,'CD','COD','Democratic Republic of the Congo','the Democratic Republic of the Congo','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(235,1,'ZM','ZMB','Zambia','the Republic of Zambia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(236,1,'BE','BEL','Belgium','the Kingdom of Belgium','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(237,1,'LU','LUX','Luxembourg','the Grand Duchy of Luxembourg','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(238,1,'AI','AIA','Anguilla','Anguilla','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(239,1,'SJ','SJM','Svalbard and Jan Mayen Islands','Svalbard and Jan Mayen Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(240,1,'IM','IMN','Isle of Man','Isle of Man','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(241,1,'YT','MYT','Mayotte','Mayotte','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(242,1,'GS','SGS','South Georgia and the South Sandwich Islands','South Georgia and the South Sandwich Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(243,1,'RS','SRB','Serbia','Serbia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(244,1,'ME','MNE','Montenegro','Montenegro','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(245,1,'PS','PSE','Palestine','Palestine','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(246,1,'DD','DDR','German Democratic Republic','German Democratic Republic','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(247,1,'YU','YUG','Yugoslavia','Socialist Federal Republic of Yugoslavia','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(248,1,'AX','ALA','Åland Islands','Åland Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(249,1,'BQ','BES','Bonaire, Sint Eustatius and Saba','Bonaire, Sint Eustatius and Saba','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(250,1,'CW','CUW','Curaçao','Curaçao','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(251,1,'GG','GGY','Guernsey','Bailiwick of Guernsey','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(252,1,'JE','JEY','Jersey','Bailiwick of Jersey','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(253,1,'PN','PNC','Pitcairn Islands','Pitcairn Islands','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(254,1,'BL','BLM','Saint Barthélemy','Saint Barthélemy','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(255,1,'MF','MAF','Saint-Martin (French Part)','Saint-Martin (French Part)','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(256,1,'SX','SXM','Sint Maarten (Dutch Part)','Sint Maarten (Dutch Part)','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(257,1,'SS','SSD','South Sudan','the Republic of South Sudan','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(258,1,'UN','UNK','Unknown / Not set','Unknown / Not set','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59'),(259,1,'EU','EUR','European Union','European Union','1','Initial import','2014-12-31 22:00:00','2017-09-12 13:27:59');
/*!40000 ALTER TABLE `cl_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_entity_types`
--

DROP TABLE IF EXISTS `cl_entity_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_entity_types` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `IS_COMPANY` tinyint(1) NOT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ENTITY_TYPE_CODE_UNIQUE` (`CODE`),
  KEY `cl_entity_types_updater_id_idx` (`UPDATER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_entity_types`
--

LOCK TABLES `cl_entity_types` WRITE;
/*!40000 ALTER TABLE `cl_entity_types` DISABLE KEYS */;
INSERT INTO `cl_entity_types` VALUES (1,1,'IND','Individual',NULL,0,'1',NULL,'2014-12-31 21:00:00','2017-09-12 13:28:43'),(2,1,'FARM','Any type of farm',NULL,0,'1',NULL,'2016-10-03 11:03:11','2017-09-12 13:28:43'),(5,1,'COOP','Cooperative',NULL,1,'1',NULL,'2016-10-03 11:04:43','2017-09-12 13:28:43'),(6,1,'FM','Feed Mill',NULL,1,'1',NULL,'2017-09-12 13:28:43','2017-09-12 13:28:43'),(7,1,'LAB','Laboratory',NULL,1,'1',NULL,'2017-09-12 13:28:43','2017-09-12 13:28:43'),(8,1,'COM','Commercial company',NULL,1,'1',NULL,'2016-10-03 11:04:43','2017-09-12 13:28:43'),(9,1,'GOV','Government Institution',NULL,1,'1',NULL,'2016-10-03 11:04:43','2017-09-12 13:28:43'),(10,1,'ONG','Non-Governmental Organization',NULL,1,'1',NULL,'2016-10-03 11:04:43','2017-09-12 13:28:43'),(99,1,'SYS','System-related entity',NULL,0,'1',NULL,'2016-10-03 11:04:43','2017-09-12 13:28:43');
/*!40000 ALTER TABLE `cl_entity_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_farm_building_types`
--

DROP TABLE IF EXISTS `cl_farm_building_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_farm_building_types` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `QUANTITY_CODE_UNIQUE` (`CODE`),
  KEY `cl_farm_building_types_id_idx` (`UPDATER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_farm_building_types`
--

LOCK TABLES `cl_farm_building_types` WRITE;
/*!40000 ALTER TABLE `cl_farm_building_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `cl_farm_building_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_farm_types`
--

DROP TABLE IF EXISTS `cl_farm_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_farm_types` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ENTITY_TYPE_CODE_UNIQUE` (`CODE`),
  KEY `cl_entity_types_updater_id_idx` (`UPDATER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_farm_types`
--

LOCK TABLES `cl_farm_types` WRITE;
/*!40000 ALTER TABLE `cl_farm_types` DISABLE KEYS */;
INSERT INTO `cl_farm_types` VALUES (1,1,'FARMAQ','Aquaculture Farm (growing)',NULL,'1',NULL,'2016-10-03 11:03:11','2017-09-12 13:28:43'),(2,1,'FARMAQ-H','Aquaculture Hatchery',NULL,'1',NULL,'2016-10-03 11:04:43','2017-09-12 13:28:43'),(3,1,'FARMAQ-M','Aquaculture Farm growing and hatchery',NULL,'1',NULL,'2016-10-03 11:05:46','2017-09-12 13:28:43'),(4,1,'FARMSUG','Sugar Farm','Sugar Farm production','1',NULL,'2016-10-18 17:42:16','2017-09-12 13:28:43');
/*!40000 ALTER TABLE `cl_farm_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_hazardous_work_type`
--

DROP TABLE IF EXISTS `cl_hazardous_work_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_hazardous_work_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of hazardous work type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_hazardous_work_type`
--

LOCK TABLES `cl_hazardous_work_type` WRITE;
/*!40000 ALTER TABLE `cl_hazardous_work_type` DISABLE KEYS */;
INSERT INTO `cl_hazardous_work_type` VALUES (1,1,'SUGHARV','Sugar Cane harvester','Sugar Cane harvester','1',NULL,'2017-09-23 10:18:02','2017-09-23 10:18:02');
/*!40000 ALTER TABLE `cl_hazardous_work_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_hvhe_expension_types`
--

DROP TABLE IF EXISTS `cl_hvhe_expension_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_hvhe_expension_types` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CL_COUNTRY_ID` int(11) NOT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `HVHE_EXPENSION_TYPES_CODE_UNIQUE` (`CODE`),
  KEY `cl_hvhe_expension_types_updater_id_idx` (`UPDATER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_hvhe_expension_types`
--

LOCK TABLES `cl_hvhe_expension_types` WRITE;
/*!40000 ALTER TABLE `cl_hvhe_expension_types` DISABLE KEYS */;
INSERT INTO `cl_hvhe_expension_types` VALUES (1,1,'POND','New Pond','Creation of new pond',235,'1',NULL,'2016-11-13 20:10:38','2017-09-12 13:29:31'),(2,1,'CANAL','Canal creation','Canal creation',235,'1',NULL,'2016-11-13 20:25:06','2017-09-12 13:29:31');
/*!40000 ALTER TABLE `cl_hvhe_expension_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_languages`
--

DROP TABLE IF EXISTS `cl_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_languages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of hazardous work type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_languages`
--

LOCK TABLES `cl_languages` WRITE;
/*!40000 ALTER TABLE `cl_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cl_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_languages_countries`
--

DROP TABLE IF EXISTS `cl_languages_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_languages_countries` (
  `CL_LANGUAGE_ID` int(11) NOT NULL,
  `CL_COUNTRY_ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CL_LANGUAGE_ID`,`CL_COUNTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of languges per countries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_languages_countries`
--

LOCK TABLES `cl_languages_countries` WRITE;
/*!40000 ALTER TABLE `cl_languages_countries` DISABLE KEYS */;
INSERT INTO `cl_languages_countries` VALUES (159,209,1,'159','206','Thailande official language','1',NULL,'2017-11-04 18:08:00','2017-11-04 18:08:00');
/*!40000 ALTER TABLE `cl_languages_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_legal_status`
--

DROP TABLE IF EXISTS `cl_legal_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_legal_status` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CL_COUNTRY_ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='legal status (Married, divorced etc...)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_legal_status`
--

LOCK TABLES `cl_legal_status` WRITE;
/*!40000 ALTER TABLE `cl_legal_status` DISABLE KEYS */;
INSERT INTO `cl_legal_status` VALUES (1,205,1,'SING','Single','Single','1','ISO 20022 applied to Thailand','2017-09-23 10:50:17','2017-09-23 10:50:17'),(2,205,1,'MARR','Married','Married','1','ISO 20022 applied to Thailand','2017-09-23 10:50:17','2017-09-23 10:50:17'),(3,205,1,'LDIV','Legally divorced','Legally divored','1','ISO 20022 applied to Thailand','2017-09-23 10:51:38','2017-09-23 10:51:38'),(4,205,1,'DIVO','Divorced','Divorced','1','ISO 20022 applied to Thailand','2017-09-23 10:51:38','2017-09-23 10:51:38'),(5,205,1,'WIDO','Widow','Widow','1','ISO 20022 applied to Thailand','2017-09-23 10:52:56','2017-09-23 10:52:56'),(6,205,1,'UNIO','Stable Union','Stable Union','1','ISO 20022 applied to Thailand','2017-09-23 10:52:56','2017-09-23 10:52:56'),(7,205,1,'SEPA','Separated','Separated','1','ISO 20022 applied to Thailand','2017-09-23 10:55:43','2017-09-23 10:55:43');
/*!40000 ALTER TABLE `cl_legal_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_measure_types`
--

DROP TABLE IF EXISTS `cl_measure_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_measure_types` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `MEASURE_CODE_UNIQUE` (`CODE`),
  KEY `cl_measure_type_updater_id_idx` (`UPDATER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_measure_types`
--

LOCK TABLES `cl_measure_types` WRITE;
/*!40000 ALTER TABLE `cl_measure_types` DISABLE KEYS */;
INSERT INTO `cl_measure_types` VALUES (1,1,'pH','pH',NULL,'1',NULL,'2016-10-23 17:00:47','2017-09-12 13:30:11'),(2,1,'TEMP','Temperature','Temperature','1',NULL,'2016-10-23 17:00:47','2017-09-12 13:30:11'),(3,1,'DO','Dissolved Oxygen','Dissolved Oxygen','1',NULL,'2016-10-23 17:02:34','2017-09-12 13:30:11'),(4,1,'SAL','Salinity','Salinity','1',NULL,'2016-10-23 17:02:34','2017-09-12 13:30:11'),(5,1,'AMMO','Ammonia','Ammonia','1',NULL,'2016-10-23 17:03:03','2017-09-12 13:30:11');
/*!40000 ALTER TABLE `cl_measure_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_plot_activity_types`
--

DROP TABLE IF EXISTS `cl_plot_activity_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_plot_activity_types` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `PLOT_TYPES_CODE_UNIQUE` (`CODE`),
  KEY `cl_plot_activity_types_id_idx` (`UPDATER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_plot_activity_types`
--

LOCK TABLES `cl_plot_activity_types` WRITE;
/*!40000 ALTER TABLE `cl_plot_activity_types` DISABLE KEYS */;
INSERT INTO `cl_plot_activity_types` VALUES (1,1,'SOWI','Sowing','Sowing','1',NULL,'2017-09-23 10:56:40','2017-09-23 10:56:40'),(2,1,'HARV','Harvesting','Harvesting','1',NULL,'2017-09-23 10:59:56','2017-09-23 10:59:56'),(3,1,'PEST','Pesticide use','Pesticide use','1',NULL,'2017-09-23 10:59:56','2017-09-23 10:59:56'),(4,1,'HERB','Herbicide use','Herbicide use','1',NULL,'2017-09-23 10:59:56','2017-09-23 10:59:56'),(5,1,'FUNG','Fungicide use','Fungicide use','1',NULL,'2017-09-23 10:59:56','2017-09-23 10:59:56'),(6,1,'FERT','Fertilizer use','Fertilizer use','1',NULL,'2017-09-23 10:59:56','2017-09-23 10:59:56'),(7,1,'TILL','Soil Tillage','Soil tillage','1',NULL,'2017-09-23 11:01:37','2017-09-23 11:01:37');
/*!40000 ALTER TABLE `cl_plot_activity_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_pond_activity_types`
--

DROP TABLE IF EXISTS `cl_pond_activity_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_pond_activity_types` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `MANAGEMENT_TYPE_CODE_UNIQUE` (`CODE`),
  KEY `cl_pond_management_types_id_idx` (`UPDATER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_pond_activity_types`
--

LOCK TABLES `cl_pond_activity_types` WRITE;
/*!40000 ALTER TABLE `cl_pond_activity_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `cl_pond_activity_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_pond_types`
--

DROP TABLE IF EXISTS `cl_pond_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_pond_types` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `POND_TYPE_CODE_UNIQUE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_pond_types`
--

LOCK TABLES `cl_pond_types` WRITE;
/*!40000 ALTER TABLE `cl_pond_types` DISABLE KEYS */;
INSERT INTO `cl_pond_types` VALUES (1,1,'RES','Reservoir','Pond as water reservoir','1',NULL,'2017-01-06 11:19:45','2017-09-12 13:35:05'),(2,1,'GROW','Pond for growing','Pond for fish growing','1',NULL,'2017-01-06 11:25:19','2017-09-12 13:35:05'),(3,1,'REP','Pond for reproduction','Pond for fish reproduction','1',NULL,'2017-01-06 11:25:19','2017-09-12 13:35:05'),(4,1,'SEW','Sewage Pond','Pond for sewage cleaning','1',NULL,'2017-01-06 11:25:19','2017-09-12 13:35:05');
/*!40000 ALTER TABLE `cl_pond_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_prod_data_entry_types`
--

DROP TABLE IF EXISTS `cl_prod_data_entry_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_prod_data_entry_types` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_prod_data_entry_types`
--

LOCK TABLES `cl_prod_data_entry_types` WRITE;
/*!40000 ALTER TABLE `cl_prod_data_entry_types` DISABLE KEYS */;
INSERT INTO `cl_prod_data_entry_types` VALUES (1,1,'MAN','Manual entry','Data entry is done by the user','1',NULL,'2017-09-23 11:10:25','2017-09-23 11:10:25'),(2,1,'COMP','Computarized','Date are computed by the system','1',NULL,'2017-09-23 11:10:25','2017-09-23 11:10:25');
/*!40000 ALTER TABLE `cl_prod_data_entry_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_product_types`
--

DROP TABLE IF EXISTS `cl_product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_product_types` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_CODE` int(11) DEFAULT NULL,
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_product_types`
--

LOCK TABLES `cl_product_types` WRITE;
/*!40000 ALTER TABLE `cl_product_types` DISABLE KEYS */;
INSERT INTO `cl_product_types` VALUES (1,1,'DRUGCHEM','Drugs and Chemicals ','Drugs and Chemicals',NULL,'1',NULL,'2016-10-23 09:13:07','2017-09-12 13:36:24'),(2,1,'DRUGS','Drugs for animals ','Drugs for animals (aexecpt antibiotics)',1,'1',NULL,'2016-10-23 09:13:07','2017-09-12 13:36:24'),(3,1,'ANTIBIO','Antibiotics for animals ','Drugs for animals',1,'1',NULL,'2016-10-23 09:13:07','2017-09-12 13:36:24'),(4,1,'SEEDSHRIMP','Shrimp seed','Shrimp seed',1,'1',NULL,'2016-10-23 09:13:07','2017-09-12 13:36:24'),(10,1,'PROBIO','Probiotics','Probiotics',NULL,'1',NULL,'2016-10-23 09:13:07','2017-09-12 13:36:24'),(20,1,'ADDI','Additives','Additives',NULL,'1',NULL,'2016-10-23 09:13:07','2017-09-12 13:36:24'),(50,1,'FEED','Feed for animals ','Animal feed',NULL,'1',NULL,'2016-10-23 09:13:07','2017-09-12 13:36:24'),(51,1,'FEEDFISH','Fish feed ','Fish feed',50,'1',NULL,'2016-10-23 09:13:07','2017-09-12 13:36:24'),(52,1,'FEEDSHRIMP','Shrimp feed ','Shrimp feed',50,'1',NULL,'2016-10-23 09:13:07','2017-09-12 13:36:24');
/*!40000 ALTER TABLE `cl_product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_products`
--

DROP TABLE IF EXISTS `cl_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_products` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CL_PRODUCTS_TYPE_ID` int(11) NOT NULL,
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of phytosanitary products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_products`
--

LOCK TABLES `cl_products` WRITE;
/*!40000 ALTER TABLE `cl_products` DISABLE KEYS */;
INSERT INTO `cl_products` VALUES (1,1,'AMMO','Ammonitrate','Ammonitrate (Ammonium)',5,'1',NULL,'2017-09-23 11:06:07','2017-09-23 11:06:07'),(2,1,'TRIP','Triple Fertilizer 15','Triple Fertilizer 15N 15p 15K',5,'1',NULL,'2017-09-23 11:07:02','2017-09-23 11:07:02');
/*!40000 ALTER TABLE `cl_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_quantity_unit_types`
--

DROP TABLE IF EXISTS `cl_quantity_unit_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_quantity_unit_types` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL,
  `CODE` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL,
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_quantity_unit_types`
--

LOCK TABLES `cl_quantity_unit_types` WRITE;
/*!40000 ALTER TABLE `cl_quantity_unit_types` DISABLE KEYS */;
INSERT INTO `cl_quantity_unit_types` VALUES (1,1,'LEN','Length units','For quantity units modeling lengths','1','Initial import','2014-12-31 23:00:00','2017-09-12 13:31:44'),(2,1,'VOL','Volume','For quantity units modeling volumes','1','Initial import','2014-12-31 23:00:00','2017-09-12 13:31:44'),(3,1,'WGT','Weight','For quantity units modeling weights','1','Initial import','2014-12-31 23:00:00','2017-09-12 13:31:44'),(4,1,'ITM','Item','For quantity units modeling items','1','Initial import','2014-12-31 23:00:00','2017-09-12 13:31:44'),(5,1,'TON','Tonnage','For quantity units modeling tonnages','1','Initial import','2014-12-31 23:00:00','2017-09-12 13:31:44'),(6,1,'EFF','Effort','For quantity units modeling fishing effort','1','Initial import','2014-12-31 23:00:00','2017-09-12 13:31:44'),(7,1,'AREA','Area unit','For quantity units modeling area or surface','1',NULL,'2017-01-05 23:00:00','2017-09-12 13:31:44'),(8,1,'PHYCHEM','Physics and Chemistry units','Any unit used in physics and Chemistry (except temperature)','1',NULL,'2017-01-05 23:00:00','2017-09-12 13:31:44'),(9,1,'TEMP','Temperature','Temperature as  measure unit','1',NULL,'2017-01-05 23:00:00','2017-09-12 13:31:44');
/*!40000 ALTER TABLE `cl_quantity_unit_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_quantity_units`
--

DROP TABLE IF EXISTS `cl_quantity_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_quantity_units` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CL_QUANTITY_UNIT_TYPE_ID` int(11) NOT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `QUANTITY_CODE_UNIQUE` (`CODE`),
  KEY `cl_quantity_units_updater_id_idx` (`UPDATER_ID`),
  KEY `cl_quantity_units_quantity_unit_types_idx` (`CL_QUANTITY_UNIT_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_quantity_units`
--

LOCK TABLES `cl_quantity_units` WRITE;
/*!40000 ALTER TABLE `cl_quantity_units` DISABLE KEYS */;
INSERT INTO `cl_quantity_units` VALUES (1,1,'LBS','Pounds','Pounds (Lbs.) as a weight quantity type',3,'1','Initial import','2014-12-31 18:00:00','2017-09-12 13:32:19'),(2,1,'KG','Kg','Kilograms as a weight quantity type',3,'1','Initial import','2014-12-31 18:00:00','2017-09-12 13:32:19'),(3,1,'UNITS','Units','Units as quantity type',4,'1','Initial import','2014-12-31 18:00:00','2017-09-12 13:32:19'),(4,1,'CASES','Cases','Cases as quantity type',4,'1','Initial import','2014-12-31 18:00:00','2017-09-12 13:32:19'),(5,1,'M','Meters','Meters as length units',1,'1','Initial import','2014-12-31 18:00:00','2017-09-12 13:32:19'),(6,1,'M3','Cubic meters','Cubic meters as volume units',2,'1','Initial import','2014-12-31 18:00:00','2017-09-12 13:32:19'),(7,1,'FEET','Feet','Feet as length units',1,'1','Initial import','2014-12-31 18:00:00','2017-09-12 13:32:19'),(8,1,'FEET3','Cubic feet','Cubic feet as volume units',2,'1','Initial import','2014-12-31 18:00:00','2017-09-12 13:32:19'),(9,1,'LIT','Liters','Liters as volume units',2,'1','Initial import','2014-12-31 18:00:00','2017-09-12 13:32:19'),(10,1,'GALL','Gallons','Gallons as volume units',2,'1','Initial import','2014-12-31 18:00:00','2017-09-12 13:32:19'),(11,1,'MT','Metric tons','Metric tons as tonnage units',5,'1','Initial import','2014-12-31 18:00:00','2017-09-12 13:32:19'),(12,1,'HRS','Hours','Hours fished',6,'1','Initial import','2014-12-31 18:00:00','2017-09-12 13:32:19'),(13,1,'DAYS','Days','Days fished',6,'1','Initial import','2014-12-31 18:00:00','2017-09-12 13:32:19'),(14,1,'HA','Hectares','Hectares as length units',7,'1','','2017-01-04 14:11:35','2017-09-12 13:32:19'),(15,1,'M2','Square meters','Square meters',7,'1',NULL,'2017-01-06 10:31:05','2017-09-12 13:32:19'),(16,1,'pH','pH','pH unit',8,'1',NULL,'2017-01-06 10:33:18','2017-09-12 13:32:19'),(17,1,'T°C','Degree Celsius','Temperature in Celsius',9,'1',NULL,'2017-01-06 10:39:41','2017-09-12 13:32:19'),(18,1,'T°F','Degree Fahrenheit','Temperature in Fahrenheit',9,'1',NULL,'2017-01-06 10:40:24','2017-09-12 13:32:19'),(19,1,'PPM','ppm','Part per million',8,'1',NULL,'2017-01-06 10:46:06','2017-09-12 13:32:19'),(20,1,'MG/L','mg/l','Milligram per liter ',8,'1',NULL,'2017-01-06 10:46:06','2017-09-12 13:32:19'),(21,1,'PERCENT','%','Percentage',8,'1',NULL,'2017-01-06 10:46:06','2017-09-12 13:32:19'),(22,1,'PERTHOUS','ppt (‰)','Perthousand',8,'1',NULL,'2017-01-06 10:46:06','2017-09-12 13:32:19'),(23,1,'KG/L','Kg/l','\r\nKilogram per liter',8,'1',NULL,'2017-01-06 10:47:54','2017-09-12 13:32:19'),(24,1,'G/L','g/l','Gram per liter',8,'1',NULL,'2017-01-06 10:50:41','2017-09-12 13:32:19'),(25,1,'PSU','psu','Practical Salinity Unit',8,'1',NULL,'2017-01-06 10:50:41','2017-09-12 13:32:19'),(26,1,'G/KG','g/Kg','Gram per Kilogram (Salinity unit)',8,'1',NULL,'2017-01-06 10:50:41','2017-09-12 13:32:19'),(27,1,'FEET2','Square feet','Square feet as area unit',7,'1',NULL,'2017-01-06 10:53:14','2017-09-12 13:32:19'),(28,1,'ACRE','Acre','Acre as area unit',7,'1',NULL,'2017-01-06 10:53:40','2017-09-12 13:32:19'),(29,1,'RAI','Rai (area)','Rai area thai unit',7,'1',NULL,'2017-01-09 08:16:06','2017-09-12 13:32:19');
/*!40000 ALTER TABLE `cl_quantity_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_soil_analysis_types`
--

DROP TABLE IF EXISTS `cl_soil_analysis_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_soil_analysis_types` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(64) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of hazardous work type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_soil_analysis_types`
--

LOCK TABLES `cl_soil_analysis_types` WRITE;
/*!40000 ALTER TABLE `cl_soil_analysis_types` DISABLE KEYS */;
INSERT INTO `cl_soil_analysis_types` VALUES (1,1,'GEN','Soil Analysis','Soil Analysis (no specific information known)','1',NULL,'2017-09-20 09:58:43','2017-09-20 09:58:43');
/*!40000 ALTER TABLE `cl_soil_analysis_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_species`
--

DROP TABLE IF EXISTS `cl_species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_species` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `SCIENTIFIC_NAME` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SPECIES_CODE_UNIQUE` (`CODE`),
  KEY `cl_species_updater_id_idx` (`UPDATER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_species`
--

LOCK TABLES `cl_species` WRITE;
/*!40000 ALTER TABLE `cl_species` DISABLE KEYS */;
INSERT INTO `cl_species` VALUES (1,1,'VAN','Vannamei','Vannamei species','Vannamei','1',NULL,'2017-01-01 08:02:11','2017-09-12 13:33:00'),(2,1,'MON','Monodon','Monodon species','Monodon','1',NULL,'2017-01-01 08:02:11','2017-09-12 13:33:00'),(3,1,'TIL','Tilapia','Tilapia species','Tilapia','1',NULL,'2017-01-01 08:02:11','2017-09-12 13:33:00'),(4,1,'MIL','Milkfish','Milkfish species','Milkfish','1',NULL,'2017-01-01 08:02:11','2017-09-12 13:33:00');
/*!40000 ALTER TABLE `cl_species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_tiling_activity_types`
--

DROP TABLE IF EXISTS `cl_tiling_activity_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cl_tiling_activity_types` (
  `ID` int(11) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT '1',
  `CODE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(64) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `UPDATER_ID` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_tiling_activity_types`
--

LOCK TABLES `cl_tiling_activity_types` WRITE;
/*!40000 ALTER TABLE `cl_tiling_activity_types` DISABLE KEYS */;
INSERT INTO `cl_tiling_activity_types` VALUES (1,1,'SHOV','Manual Shoveling','Manual Shoveling','1',NULL,'2017-09-23 11:14:53','2017-09-23 11:14:53'),(2,1,'HOE','Manual hoeing','Manual hoeing','1',NULL,'2017-09-23 11:17:07','2017-09-23 11:17:07'),(3,1,'PLOUGH','Animal/mechanical ploughing','Animal/mechanical ploughing','1',NULL,'2017-09-23 11:17:07','2017-09-23 11:17:07');
/*!40000 ALTER TABLE `cl_tiling_activity_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dt_audit_bs_farm`
--

DROP TABLE IF EXISTS `dt_audit_bs_farm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dt_audit_bs_farm` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `AUDIT_DATE` date NOT NULL,
  `NB_CHILD_WORKING` int(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_audit_bs_farm`
--

LOCK TABLES `dt_audit_bs_farm` WRITE;
/*!40000 ALTER TABLE `dt_audit_bs_farm` DISABLE KEYS */;
/*!40000 ALTER TABLE `dt_audit_bs_farm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dt_farmag_plot_management`
--

DROP TABLE IF EXISTS `dt_farmag_plot_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dt_farmag_plot_management` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_ENTITY_FARM_PLOT_ID` int(11) NOT NULL,
  `ACTIVITY_START_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ACTIVITY_END_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CL_PLOT_ACTIVITY_TYPE_ID` int(11) NOT NULL,
  `CL_PRODUCT_ID` int(11) DEFAULT NULL,
  `MEASURE_VALUE` float NOT NULL,
  `CL_MEASURE_VALUE_UNIT_ID` int(11) NOT NULL,
  `ADDITIONNAL_MEASURE_VALUE` float DEFAULT NULL,
  `CL_ADDITIONNAL_MEASURE_VALUE_UNIT_ID` int(11) DEFAULT NULL,
  `CL_TILING_ACTIVITY_TYPE_ID` int(11) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_farmag_plot_management`
--

LOCK TABLES `dt_farmag_plot_management` WRITE;
/*!40000 ALTER TABLE `dt_farmag_plot_management` DISABLE KEYS */;
INSERT INTO `dt_farmag_plot_management` VALUES (2,1,'2017-11-01 03:57:21','2017-11-01 01:52:21',2,2,2,9,NULL,NULL,3,0,'ABC','2017-11-01 01:52:21','2017-11-01 01:52:21'),(3,1,'2017-11-01 01:58:21','2017-11-01 01:58:21',5,2,99,10,NULL,NULL,3,0,'TEst Value','2017-11-01 01:58:21','2017-11-01 01:58:21'),(6,1,'2017-11-01 02:00:05','2017-11-01 02:00:05',5,2,132,10,NULL,NULL,1,0,'Test','2017-11-01 02:00:05','2017-11-01 02:00:05');
/*!40000 ALTER TABLE `dt_farmag_plot_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dt_farmag_production`
--

DROP TABLE IF EXISTS `dt_farmag_production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dt_farmag_production` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='soil analysis record';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_farmag_production`
--

LOCK TABLES `dt_farmag_production` WRITE;
/*!40000 ALTER TABLE `dt_farmag_production` DISABLE KEYS */;
INSERT INTO `dt_farmag_production` VALUES (1,3,1,'2017-11-01','2017-11-30',1,'12',1,1,NULL,'2017-11-10 06:29:27','2017-11-10 06:29:27'),(2,3,1,'2017-11-01','2017-11-30',1,'25.0',4,3,'','2017-11-10 06:46:06','2017-11-10 06:46:06');
/*!40000 ALTER TABLE `dt_farmag_production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dt_farmaq_plot_measurements`
--

DROP TABLE IF EXISTS `dt_farmaq_plot_measurements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dt_farmaq_plot_measurements` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_ENTITY_FARM_PLOT_ID` int(11) NOT NULL,
  `MEASURE_DATE` datetime NOT NULL,
  `CL_MEASURE_TYPE_ID` int(11) NOT NULL,
  `MEASURE_VALUE` float NOT NULL,
  `CL_MEASURE_VALUE_UNIT_ID` int(11) NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `CL_MEASURE_TYPE_ID` (`CL_MEASURE_TYPE_ID`),
  KEY `dt_farmaq_pond_measurements_ibfk_3_idx` (`CL_MEASURE_VALUE_UNIT_ID`),
  KEY `REG_ENTITY_FARM_PLOT_ID` (`REG_ENTITY_FARM_PLOT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_farmaq_plot_measurements`
--

LOCK TABLES `dt_farmaq_plot_measurements` WRITE;
/*!40000 ALTER TABLE `dt_farmaq_plot_measurements` DISABLE KEYS */;
INSERT INTO `dt_farmaq_plot_measurements` VALUES (1,1,'2017-01-09 08:00:00',2,25,17,2,'','2017-01-12 09:59:38','2017-01-12 09:59:38'),(2,1,'2017-01-09 18:00:00',2,28.2,17,2,'','2017-01-12 10:00:06','2017-01-12 10:00:06'),(3,1,'2017-01-10 08:00:00',2,24.8,17,2,'','2017-01-12 10:00:45','2017-01-12 10:00:45'),(4,1,'2017-01-10 18:00:00',2,29,17,2,'','2017-01-12 10:01:10','2017-01-12 10:01:10'),(5,1,'2017-01-11 08:00:00',2,25.4,17,2,'','2017-01-12 10:01:30','2017-01-12 10:01:30'),(6,1,'2017-01-11 18:00:00',2,29,17,2,'','2017-01-12 10:01:53','2017-01-12 10:01:53'),(7,1,'2017-01-12 08:00:00',2,25.2,17,2,'','2017-01-12 10:02:47','2017-01-12 10:02:47'),(8,1,'2017-01-12 06:00:00',2,28.6,17,2,'','2017-01-12 10:03:50','2017-01-12 10:03:50'),(9,1,'2017-01-09 08:00:00',1,7.9,16,2,'','2017-01-12 10:07:04','2017-01-12 10:07:04'),(10,1,'2017-01-10 08:00:00',1,8.2,16,2,'','2017-01-12 10:07:27','2017-01-12 10:07:27'),(12,1,'2017-01-12 08:00:00',1,8,16,2,'','2017-01-12 10:10:01','2017-01-12 10:10:01'),(13,1,'2017-01-09 09:00:00',3,3.6,20,2,'','2017-01-12 10:11:12','2017-01-12 10:11:12'),(14,1,'2017-01-10 09:00:00',3,3.8,20,2,'','2017-01-12 10:11:36','2017-01-12 10:11:36'),(15,1,'2017-01-11 09:00:00',3,3.4,20,2,'','2017-01-12 10:11:57','2017-01-12 10:11:57'),(16,1,'2017-01-12 09:54:00',3,3.5,20,2,'','2017-01-12 10:12:16','2017-01-12 10:12:16'),(17,1,'2017-01-09 09:00:00',4,15.2,22,2,'','2017-01-12 10:13:36','2017-01-12 10:13:36'),(18,1,'2017-01-10 09:00:00',4,15,22,2,'','2017-01-12 10:13:58','2017-01-12 10:13:58'),(19,1,'2017-01-11 09:00:00',4,15.2,22,2,'','2017-01-12 10:14:16','2017-01-12 10:14:16'),(20,1,'2017-01-12 09:00:00',4,15,22,2,'','2017-01-12 10:14:35','2017-01-12 10:14:35'),(21,1,'2017-01-09 12:00:00',5,0.15,20,2,'','2017-01-12 10:15:35','2017-01-12 10:15:35'),(23,1,'2017-01-11 08:00:00',1,8.4,16,2,'','2017-01-20 13:57:35','2017-01-20 13:57:35');
/*!40000 ALTER TABLE `dt_farmaq_plot_measurements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dt_farmaq_pond_management`
--

DROP TABLE IF EXISTS `dt_farmaq_pond_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dt_farmaq_pond_management` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_farmaq_pond_management`
--

LOCK TABLES `dt_farmaq_pond_management` WRITE;
/*!40000 ALTER TABLE `dt_farmaq_pond_management` DISABLE KEYS */;
/*!40000 ALTER TABLE `dt_farmaq_pond_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dt_farmaq_pond_measurements`
--

DROP TABLE IF EXISTS `dt_farmaq_pond_measurements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dt_farmaq_pond_measurements` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_ENTITY_FARM_POND_ID` int(10) NOT NULL,
  `MEASURE_DATE` datetime NOT NULL,
  `CL_MEASURE_TYPE_ID` int(11) NOT NULL,
  `MEASURE_VALUE` float NOT NULL,
  `CL_MEASURE_VALUE_UNIT_ID` int(11) NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `CL_MEASURE_TYPE_ID` (`CL_MEASURE_TYPE_ID`),
  KEY `dt_farmaq_pond_measurements_ibfk_3_idx` (`CL_MEASURE_VALUE_UNIT_ID`),
  KEY `REG_ENTITY_FARM_POND_ID` (`REG_ENTITY_FARM_POND_ID`),
  CONSTRAINT `FKF` FOREIGN KEY (`REG_ENTITY_FARM_POND_ID`) REFERENCES `reg_entity_farmaq_ponds` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_farmaq_pond_measurements`
--

LOCK TABLES `dt_farmaq_pond_measurements` WRITE;
/*!40000 ALTER TABLE `dt_farmaq_pond_measurements` DISABLE KEYS */;
INSERT INTO `dt_farmaq_pond_measurements` VALUES (1,163,'2017-11-10 02:32:35',1,7.2,16,0,'TEST2','2017-11-01 23:32:50','2017-11-01 23:32:50'),(2,163,'2017-11-08 03:35:05',1,7.45,16,0,'PH','2017-11-01 23:35:19','2017-11-01 23:35:19');
/*!40000 ALTER TABLE `dt_farmaq_pond_measurements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dt_soil_analysis`
--

DROP TABLE IF EXISTS `dt_soil_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dt_soil_analysis` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_ENTITY_FARM_PLOT_ID` int(11) NOT NULL,
  `ANALYSIS_DATE` date NOT NULL,
  `CL_SOIL_ANALYSIS_TYPE_ID` int(11) DEFAULT NULL,
  `SOIL_ANALYSIS_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'Uploaded analysis docuent URL',
  `UPDATER_ID` int(11) NOT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='soil analysis record';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_soil_analysis`
--

LOCK TABLES `dt_soil_analysis` WRITE;
/*!40000 ALTER TABLE `dt_soil_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `dt_soil_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dt_water_analysis`
--

DROP TABLE IF EXISTS `dt_water_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dt_water_analysis` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_ENTITY_FARM_POND_ID` int(11) DEFAULT NULL COMMENT 'Not mandatory as it can be an analysis at the farm level',
  `ANALYSIS_DATE` date NOT NULL,
  `WATER_ANALYSIS_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'uplodaded Analysis document url',
  `UPDATER_ID` int(11) NOT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='soil analysis record';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_water_analysis`
--

LOCK TABLES `dt_water_analysis` WRITE;
/*!40000 ALTER TABLE `dt_water_analysis` DISABLE KEYS */;
INSERT INTO `dt_water_analysis` VALUES (3,8,'2017-11-09',NULL,3,'','2017-11-10 08:05:45','2017-11-10 08:05:45'),(4,8,'2017-11-14',NULL,3,'','2017-11-10 08:05:50','2017-11-10 08:05:50');
/*!40000 ALTER TABLE `dt_water_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entities`
--

DROP TABLE IF EXISTS `reg_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_entities` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
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
  `WEBSITE` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `REGISTRATION_NUMBER` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `IMG_URL` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `LTO_NUMBER` int(11) NOT NULL DEFAULT '0',
  `LTO_VALIDITY_DATE` date DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(1024) COLLATE utf8_bin NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `CL_ENTITY_UID_TYPE_ID` (`CL_ENTITY_UID_TYPE_ID`),
  CONSTRAINT `FK_CLTYPE` FOREIGN KEY (`CL_ENTITY_UID_TYPE_ID`) REFERENCES `cl_entity_types` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entities`
--

LOCK TABLES `reg_entities` WRITE;
/*!40000 ALTER TABLE `reg_entities` DISABLE KEYS */;
INSERT INTO `reg_entities` VALUES (1,1,'',NULL,205,'Jaruk','Prapom','','','','Mr.','M',NULL,205,'','','',0,'','TBC','','','','','',0,NULL,2,'','2017-01-11 09:40:35','2017-01-11 09:40:35'),(2,1,'',NULL,205,'Tew','','','','','Mr.','M',NULL,205,'','','',0,'','TBC','','','','','',0,NULL,2,'','2017-01-11 09:43:08','2017-01-11 11:17:03'),(3,2,'',NULL,1,'Tew Farm','','','','','','',NULL,205,'ChantaburiX','Khung district, Chantaburi provinceX','ZIPX',0,'0134129620','0683496499','0134121811','email@mail.com',NULL,'','',0,NULL,3,'','2017-01-11 09:47:53','2017-05-04 04:11:14'),(4,1,'',NULL,108,'Trane','Yaw (TewW1)','','','','Mr.','M',NULL,205,'','','',0,'','TBC','','','','','',0,NULL,2,'','2017-01-11 10:19:24','2017-01-11 10:29:43'),(5,1,'',NULL,108,'Tew Worker 2','','','','','Mrs.','F',NULL,205,'','','',0,'','TBC','','','','','',0,NULL,2,'','2017-01-11 10:20:55','2017-01-11 10:20:55'),(6,1,'',NULL,108,'Tew Worker 3','','','','','Mr.','M',NULL,205,'','','',0,'','TBC','','','','','',0,NULL,2,'','2017-01-11 10:21:42','2017-01-11 10:21:42'),(7,8,'',NULL,1,'Thai Union Feed Mill Co., Ltd.','','','','','','',NULL,205,'Samutsakorn','89/1 Moo 2, Rama II Road, Kalong Subdistrict, Muang District','74000',0,'66 (0) 3481-6500','66 (0) 63 230 9410','66 (0) 3481-6629','Yurachat.Sangsingkaew@thaiunion.com','','','',0,NULL,2,'','2017-01-11 11:00:08','2017-01-20 12:52:18'),(8,8,'',NULL,1,'Andaman Seafood CO.,LTD.','','','','','','',NULL,205,'Bangkok','SUIT 216/44,49 L.P.N. TOWER 21TH FLOOR , NONGLINCHEE RD.,CHONGNONSEE, YANNAWA','10120',0,'66 2285 2450-1','66 7783 5579-80','66 2285 2911','group@andaman-food.com','','','',0,NULL,2,'','2017-01-11 12:37:56','2017-01-11 17:14:01'),(10,2,'',NULL,1,'THAI UNION HATCHERY CO., LTD.','','','','','','',NULL,205,'Takuatung','42 Moo 14, Kokkloy Sub-district, Takuatung District, Phangnga Province','82140',0,'TBC','','','','','','',0,NULL,2,'','2017-01-11 12:43:22','2017-01-11 12:43:22'),(11,1,'',NULL,205,'Decha','Barnleudech','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'','0898364133','','','','','',0,NULL,2,'','2017-01-11 16:10:47','2017-01-20 12:16:44'),(12,5,'',NULL,1,'Sam Roi Yot Shrimp Farm Cooperative','','','','','','',NULL,205,'Prachuap Khiri Khan','','',0,'','','','TBC@TBC','','','',0,NULL,2,'','2017-01-11 16:15:05','2017-01-11 17:19:52'),(13,2,'',NULL,1,'Decha Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'0898364133','','','','','','',0,NULL,4,'','2017-01-11 16:20:33','2017-05-03 00:37:52'),(14,1,'',NULL,205,'Ning Nong (Nickname)','','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'','TBC','','','','','',0,NULL,2,'','2017-01-11 16:22:26','2017-01-20 12:17:21'),(15,8,'',NULL,1,'Thai Union Hatchery Co., Ltd.','','','','','','',NULL,205,'Phang Nga','42 Moo 14, Kokkloy Sub-district, Takuatung District','82140',0,'66 (0) 7658-4000-27','','66 (0) 7658-4028-9','Yurachat.Sangsingkaew@thaiunion.com','','','',0,NULL,2,'','2017-01-11 17:12:38','2017-01-20 12:52:33'),(16,5,'',NULL,1,'Atina Farms Cooperative','','','','','','',NULL,94,'','','',0,'','','','PCB@PCB','','','',0,NULL,2,'','2017-01-11 17:19:33','2017-01-11 17:19:33'),(17,1,'',NULL,205,'Chen','Huaheng','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'','0861757989','','','','','',0,NULL,2,'','2017-01-17 09:37:54','2017-01-20 11:14:09'),(18,2,'',NULL,1,'Chen Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 1 Samkrat tai District, Kui Buri','77150',0,'0861757989','','','','','','',0,NULL,2,'','2017-01-17 09:38:01','2017-01-17 12:16:09'),(19,2,'',NULL,1,'Chean Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 1 Samkrat tai District, Kui Buri','77150',0,'','','','','','','',0,NULL,2,'','2017-01-17 09:38:01','2017-01-17 09:38:01'),(21,1,'',NULL,205,'Naiyana','Phuengphakdi','','','','Mrs.','F',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','',0,'','0892595298','','','','','',0,NULL,2,'','2017-01-17 09:59:40','2017-01-20 12:03:46'),(22,2,'',NULL,1,'Naiyana Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'0892595298','','','','','','',0,NULL,2,'','2017-01-17 09:59:54','2017-01-20 12:03:08'),(23,1,'',NULL,205,'Thongthern','Phuangphet','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'','0984295819','','','','','',0,NULL,2,'','2017-01-17 10:07:42','2017-01-20 10:18:37'),(24,2,'',NULL,1,'Thongthern Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'0984295819','','','','','','',0,NULL,2,'','2017-01-17 10:07:51','2017-01-20 10:17:52'),(25,1,'',NULL,205,'Seri','Kochio','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'','0852162592','','','','','',0,NULL,2,'','2017-01-17 10:13:02','2017-01-20 12:06:32'),(26,2,'',NULL,1,'Seri Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'0852162592','','','','','','',0,NULL,2,'','2017-01-17 10:13:09','2017-01-20 12:08:13'),(27,1,'',NULL,205,'Sunan','Rakyim','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'','0852661378','','','','','',0,NULL,2,'','2017-01-17 10:16:37','2017-01-20 12:12:46'),(28,2,'',NULL,1,'Sunan Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'0852661378','','','','','','',0,NULL,2,'','2017-01-17 10:16:43','2017-01-20 12:12:17'),(29,1,'',NULL,205,'Somsak','Thongtun','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'','0839746629','','','','','',0,NULL,2,'','2017-01-17 10:21:22','2017-01-20 12:10:30'),(30,2,'',NULL,1,'Somsak Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 1, Samkrat Tai, Kui Buri','77150',0,'0839746629','','','','','','',0,NULL,2,'','2017-01-17 10:21:25','2017-01-17 12:18:57'),(32,2,'',NULL,1,'Somphan Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'0870067416','','','','','','',0,NULL,2,'','2017-01-17 10:25:41','2017-01-20 09:21:48'),(33,1,'',NULL,205,'Bunloed','Phuengphakdi','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'','0870722281','','','','','',0,NULL,2,'','2017-01-17 10:38:33','2017-01-20 11:03:21'),(34,2,'',NULL,1,'Sangat Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'0822494743','','','','','','',0,NULL,2,'','2017-01-17 10:38:39','2017-01-20 11:10:12'),(35,1,'',NULL,205,'Vichai','Huaheng','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'','0860366905','','','','','',0,NULL,2,'','2017-01-17 10:55:03','2017-01-20 09:37:47'),(36,2,'',NULL,1,'Vichai Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'0860366905','','','','','','',0,NULL,2,'','2017-01-17 10:55:28','2017-01-20 09:33:55'),(37,1,'',NULL,205,'Man ','Temta','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'','0951085528','','','','','',0,NULL,2,'','2017-01-17 11:01:24','2017-01-20 09:41:44'),(38,2,'',NULL,1,'Man Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'0951085528','','','','','','',0,NULL,2,'','2017-01-17 11:01:39','2017-01-20 09:45:19'),(39,1,'',NULL,205,'Arnon','Manesuwan','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'','0927010684','','','','','',0,NULL,2,'','2017-01-17 11:08:35','2017-01-20 09:50:04'),(40,2,'',NULL,1,'Arnon Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'0927010684','','','','','','',0,NULL,2,'','2017-01-17 11:08:41','2017-01-20 09:48:52'),(41,1,'',NULL,205,'Oangchan','Mansuwan','','','','Mrs.','F',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'','0927010684','','','','','',0,NULL,2,'','2017-01-17 11:14:18','2017-01-20 09:52:23'),(42,2,'',NULL,1,'Oangchan Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'0927010684','','','','','','',0,NULL,2,'','2017-01-17 11:14:27','2017-01-20 09:51:39'),(43,1,'',NULL,205,'Sangat','Chaibun','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'','0822494743','','','','','',0,NULL,2,'','2017-01-17 12:26:27','2017-01-20 11:12:49'),(44,2,'',NULL,1,'Bunloed Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'0870722281','','','','','','',0,NULL,2,'','2017-01-17 12:32:04','2017-01-20 11:04:54'),(45,1,'',NULL,205,'Somchai','Loekam','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'','0898296805','','','','','',0,NULL,2,'','2017-01-17 12:41:10','2017-01-20 10:57:52'),(46,2,'',NULL,1,'Somchai Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'0898296805','','','','','','',0,NULL,2,'','2017-01-17 12:41:18','2017-01-20 11:01:19'),(47,1,'',NULL,205,'Phuvadon','Phetpradub','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 9, Kui Nua Subdistrict, Kui Buri District','77150',0,'','0843196654','','','','','',0,NULL,2,'','2017-01-17 12:46:34','2017-01-20 10:54:26'),(48,2,'',NULL,1,'Phuvadon Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 9, Kui Nua Subdistrict, Kui Buri District','77150',0,'0843196654','','','','','','',0,NULL,2,'','2017-01-17 12:46:43','2017-01-20 10:51:24'),(49,1,'',NULL,205,'Thongdee','Phetpradub','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 9, Kui Nua Subdistrict, Kui Buri District','77150',0,'','0857026937','','','','','',0,NULL,2,'','2017-01-17 12:52:04','2017-01-20 10:46:08'),(50,2,'',NULL,1,'Thongdee Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 9, Kui Nua Subdistrict, Kui Buri District','77150',0,'0857026937','','','','','','',0,NULL,2,'','2017-01-17 12:52:24','2017-01-20 10:47:22'),(51,1,'',NULL,205,'Thongpoon ','Torrasap','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 9, Kui Nua Subdistrict, Kui Buri District','77150',0,'','0849715564','','','','','',0,NULL,2,'','2017-01-17 12:56:42','2017-01-20 10:43:20'),(52,2,'',NULL,1,'Thongpoon Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 9, Kui Nua Subdistrict, Kui Buri District','77150',0,'0849715564','','','','','','',0,NULL,2,'','2017-01-17 12:56:47','2017-01-20 10:42:06'),(53,1,'',NULL,205,'Samran','Hatsadam','','','','Mrs.','F',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'','0822414116','','','','','',0,NULL,2,'','2017-01-17 13:00:54','2017-01-20 10:38:55'),(54,2,'',NULL,1,'Samran Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'0822414116','','','','','','',0,NULL,2,'','2017-01-17 13:00:59','2017-01-20 10:40:54'),(55,1,'',NULL,205,'Tongchai','Thorasab','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 9, Kui Nua Subdistrict, Kui Buri District','77150',0,'','0810110371','','','','','',0,NULL,2,'','2017-01-17 13:06:26','2017-01-20 10:37:38'),(56,2,'',NULL,1,'Tongchai Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 9, Kui Nua Subdistrict, Kui Buri District','77150',0,'0810110371','','','','','','',0,NULL,2,'','2017-01-17 13:06:31','2017-01-20 10:36:31'),(57,1,'',NULL,205,'Prakit','Uthaitipwuttikorn','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'','0910123417','','','','','',0,NULL,2,'','2017-01-17 13:11:06','2017-01-20 10:30:29'),(58,2,'',NULL,1,'Prakit Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'0910123417','','','','','','',0,NULL,2,'','2017-01-17 13:11:16','2017-01-20 10:28:20'),(59,1,'',NULL,205,'Prani','Yamyai','','','','Mrs.','F',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'','0844139444','','','','','',0,NULL,2,'','2017-01-17 13:17:46','2017-01-20 10:26:02'),(60,2,'',NULL,1,'Prani Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'0844139444','','','','','','',0,NULL,2,'','2017-01-17 13:17:53','2017-01-20 10:25:19'),(61,1,'',NULL,205,'Chomkhan','Meuansuwan','','','','Mrs.','F',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'','0822408337','','','','','',0,NULL,2,'','2017-01-17 13:23:11','2017-01-20 10:04:58'),(62,2,'',NULL,1,'Chomkhan Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'0822408337','','','','','','',0,NULL,2,'','2017-01-17 13:23:14','2017-01-20 10:12:24'),(63,1,'',NULL,205,'Pathomkan','Yimyai','','','','Mrs.','F',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'','0819952083','','','','','',0,NULL,2,'','2017-01-17 13:30:15','2017-01-20 10:04:07'),(64,2,'',NULL,1,'Patomkan Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 1, Samkrat Tai, Kui Buri','77180',0,'0819952083','','','','','','',0,NULL,2,'','2017-01-17 13:30:21','2017-01-17 13:30:21'),(65,1,'',NULL,205,'Prachern','Yimyai','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'','0804322933','','','','','',0,NULL,2,'','2017-01-17 13:36:17','2017-01-20 09:54:26'),(66,2,'',NULL,1,'Prachern Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'0804322933','','','','','','',0,NULL,2,'','2017-01-17 13:36:22','2017-01-20 09:57:55'),(67,1,'',NULL,205,'Somphan','Laosuan','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'','0870067416','','','','','',0,NULL,2,'','2017-01-17 14:14:03','2017-01-20 09:25:22'),(68,2,'',NULL,1,'Somphan Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 1, Samkrat Tai, Kui Buri','77150',0,'0870067416','','','','','','',0,NULL,2,'','2017-01-17 14:14:08','2017-01-17 14:14:08'),(69,1,'',NULL,205,'Somkhit ','Phuangphae','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'','0877178509','','','','','',0,NULL,2,'','2017-01-17 14:20:55','2017-01-18 11:08:22'),(70,2,'',NULL,1,'Somkhit Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'0877178509','','','','','','',0,NULL,2,'','2017-01-17 14:21:23','2017-01-18 11:07:50'),(71,1,'',NULL,205,'Sayan','Bunma','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'','0891582857','','','','','',0,NULL,2,'','2017-01-17 14:23:30','2017-01-18 11:10:03'),(72,2,'',NULL,1,'Sayan Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'0891582857','','','','','','',0,NULL,2,'','2017-01-17 14:23:39','2017-01-18 11:09:35'),(73,1,'',NULL,205,'Somnuek','Loekam','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'','0897412416','','','','','',0,NULL,2,'','2017-01-17 14:24:48','2017-01-18 09:58:27'),(74,2,'',NULL,1,'Somnuek Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'0897412416','','','','','','',0,NULL,2,'','2017-01-17 14:24:54','2017-01-18 09:57:56'),(75,1,'',NULL,205,'Siri','Ainpasit','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'','0840154443','','','','','',0,NULL,2,'','2017-01-17 14:26:18','2017-01-18 09:56:46'),(76,2,'',NULL,1,'Siri Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'0947374352','','','','','','',0,NULL,9,'','2017-01-17 14:26:23','2017-05-04 21:01:42'),(77,1,'',NULL,205,'Saman',' Sukkrom','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'','0811912347','','','','','',0,NULL,2,'','2017-01-17 14:27:26','2017-01-18 09:54:29'),(78,2,'',NULL,1,'Saman Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao District, Sam Roi Yot','77180',0,'0811912347','','','','','','',0,NULL,2,'','2017-01-17 14:27:31','2017-01-17 15:17:45'),(79,1,'',NULL,205,'Woravit','Rodbowonwittahaya','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'','0833175803','','','','','',0,NULL,2,'','2017-01-17 14:28:36','2017-01-18 09:43:13'),(80,2,'',NULL,1,'Woravit Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'0833175803','','','','','','',0,NULL,2,'','2017-01-17 14:28:41','2017-01-18 09:41:31'),(81,1,'',NULL,205,'Somsong ','Nessuwan','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'','0890764380','','','','','',0,NULL,2,'','2017-01-17 14:29:45','2017-01-18 09:33:36'),(82,2,'',NULL,1,'Somsong Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'0890764380','','','','','','',0,NULL,2,'','2017-01-17 14:29:50','2017-01-18 09:11:37'),(83,1,'',NULL,205,'Setthakit ','Laochuan','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District','77150',0,'','0983705194','','','','','',0,NULL,2,'','2017-01-17 14:30:51','2017-01-18 08:55:28'),(84,2,'',NULL,1,'Setthakit Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'0983705194','','','','','','',0,NULL,2,'','2017-01-17 14:31:31','2017-01-18 09:13:47'),(85,1,'',NULL,205,'Nuengruethai','Gojiw','','','','Mrs.','F',NULL,205,'','','',0,'','0833175449','','','','','',0,NULL,2,'','2017-01-17 14:34:11','2017-01-17 14:34:11'),(86,2,'',NULL,1,'Nuengruethai Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 1, Samkrat Tai, Kui Buri','77150',0,'0833175449','','','','','','',0,NULL,2,'','2017-01-17 14:34:19','2017-01-17 14:34:19'),(87,1,'',NULL,205,'Lamphu','Vasayangkui','','','','Mrs.','F',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'','0957956624','','','','','',0,NULL,2,'','2017-01-17 14:36:13','2017-01-18 11:11:37'),(88,2,'',NULL,1,'Lamphu Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 5, Rai Mai Subdistrict, Sam Roi Yot District','77180',0,'0957956624','','','','','','',0,NULL,2,'','2017-01-17 14:36:18','2017-01-18 11:11:03'),(89,1,'',NULL,205,'Rawisara','Authaithipwutthikon','','','','Mrs.','F',NULL,205,'','','',0,'','0874141765','','','','','',0,NULL,2,'','2017-01-17 14:38:56','2017-01-17 14:41:52'),(90,2,'',NULL,1,'Rawisara Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'0874141765','','','','','','',0,NULL,2,'','2017-01-17 14:39:00','2017-01-20 09:20:01'),(91,1,'',NULL,205,'Ratchaset','Wongsawat','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','111 Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'','0863264268','','','','','',0,NULL,2,'','2017-01-17 14:45:21','2017-01-18 11:25:08'),(92,2,'',NULL,1,'Farm Thung Ngan','','','','','','',NULL,205,'Prachuap Khiri Khan','111 Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'0863264268','','','','','','',0,NULL,2,'','2017-01-17 14:45:28','2017-01-18 11:23:50'),(93,1,'',NULL,205,'Supot','Yudee','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'','0877178509','','','','','',0,NULL,2,'','2017-01-17 15:03:36','2017-01-18 10:00:27'),(94,2,'',NULL,1,'Supot Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'0877178509','','','','','','',0,NULL,2,'','2017-01-17 15:03:43','2017-01-18 09:59:56'),(95,1,'',NULL,205,'Phanjaporn','Bunma','','','','Mr.','M',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'','0888498838','','','','','',0,NULL,2,'','2017-01-17 15:20:12','2017-01-18 09:52:12'),(96,2,'',NULL,1,'Phanjaporn Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 2, Rai Kao Subdistrict, Sam Roi Yot District','77180',0,'0888498838','','','','','','',0,NULL,2,'','2017-01-17 15:20:33','2017-01-18 09:46:05'),(97,2,'',NULL,1,'Chen Farm','','','','','','',NULL,205,'Prachuap Khiri Khan','Moo 1, Sam Krathai Subdistrict, Kui Buri District ','77150',0,'0861757989','','','','','','',0,NULL,2,'','2017-01-20 11:19:09','2017-01-20 11:19:09'),(98,2,'',NULL,1,'PauPauFishFish','','','','','','',NULL,205,'Bangkok','123 Downtown','10400',0,'0955461566','','','','','','',0,NULL,4,'','2017-04-19 22:50:27','2017-04-19 22:50:27'),(99,1,NULL,NULL,64,'Elise','ROLLAND','',NULL,NULL,'Ms.','F','2017-06-07',64,'ST GRATIEN','142 av de ceinture','95210',0,'0683496499','0683496499','0134121811','pichenot@free.fr',NULL,'XX123',NULL,0,NULL,0,'','2017-11-02 19:23:58','2017-11-02 19:23:58'),(100,7,NULL,NULL,64,'PIROG INGENIERIE',NULL,NULL,NULL,'PIROG',NULL,NULL,NULL,64,'ST GRATIEN','142 av de ceinture','95210',0,'0134129620','0683496499','01.34.12.18.11','email@mail.com',NULL,'FR144',NULL,0,NULL,0,'','2017-11-03 06:56:59','2017-11-03 06:56:59'),(124,2,NULL,NULL,NULL,'Grégoire pichenot',NULL,NULL,NULL,NULL,NULL,NULL,NULL,64,'ST GRATIEN','142 av de ceinture','95210',0,'0683496499','0683496499','','pichenot@free.fr',NULL,NULL,NULL,0,NULL,3,'','2017-11-04 09:03:02','2017-11-04 09:03:02');
/*!40000 ALTER TABLE `reg_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_farm_buildings`
--

DROP TABLE IF EXISTS `reg_entity_farm_buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_entity_farm_buildings` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CL_FARM_BUILDING_TYPE_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) DEFAULT NULL,
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`REG_ENTITY_FARM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='description of existing other building than production (plot, barn, etc..)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_farm_buildings`
--

LOCK TABLES `reg_entity_farm_buildings` WRITE;
/*!40000 ALTER TABLE `reg_entity_farm_buildings` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg_entity_farm_buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_farm_details`
--

DROP TABLE IF EXISTS `reg_entity_farm_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_entity_farm_details` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `REG_ENTITY_OWNER_ID` int(11) NOT NULL DEFAULT '0',
  `SYS_USER_FARMADMIN_ID` int(11) DEFAULT NULL,
  `SIZE` double(8,2) NOT NULL,
  `CL_SIZE_UNIT_ID` int(11) NOT NULL DEFAULT '0',
  `LONGITUDE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `LATITUDE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `AERIAL_VIEW` varchar(256) COLLATE utf8_bin DEFAULT NULL,
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
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_farm_details`
--

LOCK TABLES `reg_entity_farm_details` WRITE;
/*!40000 ALTER TABLE `reg_entity_farm_details` DISABLE KEYS */;
INSERT INTO `reg_entity_farm_details` VALUES (1,3,16,1,13.00,29,'102.29619','22.435404','farm/map/99d15ed2f639cf7d14e5fdf50eab959f.jpeg',NULL,NULL,0,'','farm/permit/81652226f86146494bdb1d7841d59a7b.png','farm/land/9028b2d11440588ab0458faeb83e9c8f.png',1,'',0,0,0,'','',12,0,'','','','',3,'','2017-01-11 09:47:53','2017-05-04 04:11:14'),(3,13,11,1,34.03,29,'99.91035461425781','12.227957407305896','farm/map/ba4dacafe04f893a279773d8a3a3037d.png',NULL,NULL,0,'farm/impact/776e5cea45c7d82cce87ab869a17735f.png','','',0,'',0,0,0,'','',12,0,'','','','',4,'','2017-01-11 16:20:33','2017-05-03 00:37:55'),(6,22,21,1,0.00,0,'98.36361310000007','8.6892088','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 09:59:54','2017-01-20 12:03:08'),(7,24,23,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 10:07:51','2017-01-20 10:17:52'),(8,26,25,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 10:13:09','2017-01-20 12:08:13'),(9,28,27,1,0.00,0,'99.94570429999999','12.2015729','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 10:16:43','2017-01-20 12:12:17'),(10,30,29,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 10:21:25','2017-01-17 12:18:57'),(11,32,67,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 10:25:41','2017-02-27 23:23:04'),(12,34,43,1,0.00,0,'99.94570429999999','12.2015729','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 10:38:39','2017-02-27 23:23:27'),(13,36,35,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 10:55:28','2017-01-20 09:33:55'),(14,38,37,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 11:01:39','2017-01-20 09:45:19'),(15,40,39,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 11:08:41','2017-01-20 09:48:52'),(16,42,41,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 11:14:27','2017-01-20 09:51:39'),(17,44,33,1,0.00,0,'99.94570429999999','12.2015729','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 12:32:04','2017-01-20 11:04:54'),(18,46,45,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 12:41:18','2017-01-20 11:01:19'),(19,48,47,1,0.00,0,'99.4639598','11.1131166','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 12:46:43','2017-01-20 10:51:24'),(20,50,49,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 12:52:24','2017-01-20 10:47:22'),(21,52,51,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 12:56:47','2017-01-20 10:42:06'),(22,54,53,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 13:00:59','2017-01-20 10:40:54'),(23,56,55,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 13:06:31','2017-01-20 10:36:31'),(24,58,57,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 13:11:16','2017-01-20 10:28:20'),(25,60,59,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 13:17:53','2017-01-20 10:25:19'),(26,62,61,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 13:23:14','2017-01-20 10:12:24'),(27,64,63,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 13:30:21','2017-01-17 13:31:41'),(28,66,65,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 13:36:22','2017-01-20 09:57:55'),(30,70,69,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 14:21:23','2017-01-18 11:07:50'),(31,72,71,1,0.00,0,'99.94570429999999','12.2015729','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 14:23:39','2017-01-18 11:09:35'),(32,74,73,1,0.00,0,'99.94570429999999','12.2015729','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 14:24:54','2017-01-18 09:57:56'),(33,76,75,1,0.00,0,'100.99254100000007','15.870032','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',9,'','2017-01-17 14:26:23','2017-05-04 21:01:42'),(34,78,77,1,0.00,0,'99.94570429999999','12.2015729','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 14:27:31','2017-01-17 15:18:09'),(35,80,79,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 14:28:41','2017-01-18 09:42:27'),(36,82,81,1,0.00,0,'99.94570429999999','12.2015729','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 14:29:50','2017-01-18 09:38:00'),(37,84,83,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 14:31:31','2017-01-18 09:13:47'),(38,86,85,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 14:34:19','2017-01-17 14:34:55'),(39,88,87,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 14:36:18','2017-01-18 11:11:03'),(40,90,89,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 14:39:00','2017-01-20 09:20:01'),(41,92,91,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 14:45:28','2017-01-18 11:23:50'),(42,94,93,1,0.00,0,'99.94570429999999','12.2015729','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 15:03:43','2017-01-18 09:59:56'),(43,96,95,1,0.00,0,'99.94570429999999','12.2015729','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-17 15:20:33','2017-01-18 09:51:37'),(44,97,17,1,0.00,0,'','','',NULL,NULL,0,'','','',0,'',0,0,0,'','',12,0,'','','','',2,'','2017-01-20 11:19:09','2017-01-20 12:01:44'),(46,115,5,NULL,123.00,21,'102.29619','12.435403',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,NULL,16,0,NULL,NULL,NULL,NULL,3,'','2017-11-04 08:43:51','2017-11-04 08:43:51'),(51,124,4,NULL,132.00,4,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,1,NULL,1,0,1,NULL,NULL,12,0,NULL,NULL,NULL,NULL,3,'','2017-11-04 09:03:02','2017-11-04 09:03:02');
/*!40000 ALTER TABLE `reg_entity_farm_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_farm_details_farm_type`
--

DROP TABLE IF EXISTS `reg_entity_farm_details_farm_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_entity_farm_details_farm_type` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CL_FARM_TYPE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_farm_details_farm_type`
--

LOCK TABLES `reg_entity_farm_details_farm_type` WRITE;
/*!40000 ALTER TABLE `reg_entity_farm_details_farm_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg_entity_farm_details_farm_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_farm_facilities`
--

DROP TABLE IF EXISTS `reg_entity_farm_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`REG_ENTITY_FARM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='descirption of existing facilities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_farm_facilities`
--

LOCK TABLES `reg_entity_farm_facilities` WRITE;
/*!40000 ALTER TABLE `reg_entity_farm_facilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg_entity_farm_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_farm_providers`
--

DROP TABLE IF EXISTS `reg_entity_farm_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_entity_farm_providers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `REG_ENTITY_SUPPLIER_ID` int(11) NOT NULL,
  `CL_PRODUCT_TYPES_ID` int(11) DEFAULT '1',
  `UPDATER_ID` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `REG_ENTITY_FARM_ID` (`REG_ENTITY_FARM_ID`),
  KEY `REG_SEED_PROVIDER_ID` (`REG_ENTITY_SUPPLIER_ID`),
  KEY `FK_CL_PRODUCTTYPE` (`CL_PRODUCT_TYPES_ID`),
  CONSTRAINT `FK_CL_PRODUCTTYPE` FOREIGN KEY (`CL_PRODUCT_TYPES_ID`) REFERENCES `cl_product_types` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_farm_providers`
--

LOCK TABLES `reg_entity_farm_providers` WRITE;
/*!40000 ALTER TABLE `reg_entity_farm_providers` DISABLE KEYS */;
INSERT INTO `reg_entity_farm_providers` VALUES (1,1,1,1,'2','','2017-01-11 11:32:05','2017-01-11 11:32:05'),(4,3,15,51,'1',NULL,'2017-10-30 14:23:44','2017-10-30 14:23:44'),(10,10,8,10,'1',NULL,'2017-11-02 00:19:06','2017-11-02 00:19:06'),(12,78,7,51,'1',NULL,'2017-11-02 17:54:37','2017-11-02 17:54:37'),(13,124,8,3,'1',NULL,'2017-11-04 09:07:11','2017-11-04 09:07:11');
/*!40000 ALTER TABLE `reg_entity_farm_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_farm_water_supply`
--

DROP TABLE IF EXISTS `reg_entity_farm_water_supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_entity_farm_water_supply` (
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CL_WATER_SUPPLY_TYPE_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) DEFAULT NULL,
  `COMMENT` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`REG_ENTITY_FARM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='description of farm water source';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_farm_water_supply`
--

LOCK TABLES `reg_entity_farm_water_supply` WRITE;
/*!40000 ALTER TABLE `reg_entity_farm_water_supply` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg_entity_farm_water_supply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_farmag_details`
--

DROP TABLE IF EXISTS `reg_entity_farmag_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_entity_farmag_details` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `IRRIGATION` tinyint(1) NOT NULL DEFAULT '0',
  `IRRIGATION_AUTHORIZATION` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_farmag_details`
--

LOCK TABLES `reg_entity_farmag_details` WRITE;
/*!40000 ALTER TABLE `reg_entity_farmag_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg_entity_farmag_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_farmag_plots`
--

DROP TABLE IF EXISTS `reg_entity_farmag_plots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_entity_farmag_plots` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `REG_ENTITY_FARM_ID` (`REG_ENTITY_FARM_ID`),
  KEY `REG_ENTITY_FARM_ID_2` (`REG_ENTITY_FARM_ID`),
  KEY `REG_ENTITY_FARM_ID_3` (`REG_ENTITY_FARM_ID`),
  KEY `REG_ENTITY_FARM_ID_4` (`REG_ENTITY_FARM_ID`),
  CONSTRAINT `FK_PLOT2FARMS` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_farmag_plots`
--

LOCK TABLES `reg_entity_farmag_plots` WRITE;
/*!40000 ALTER TABLE `reg_entity_farmag_plots` DISABLE KEYS */;
INSERT INTO `reg_entity_farmag_plots` VALUES (1,3,'123','This is a longer description',1,12.00,28,1,0,NULL,NULL,NULL),(2,3,'X213','Grégoire',1,25.00,4,1,0,NULL,NULL,NULL),(5,124,'plot123','My Plot Is Nice',1,123.00,5,1,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `reg_entity_farmag_plots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_farmaq_details`
--

DROP TABLE IF EXISTS `reg_entity_farmaq_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_entity_farmaq_details` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_farmaq_details`
--

LOCK TABLES `reg_entity_farmaq_details` WRITE;
/*!40000 ALTER TABLE `reg_entity_farmaq_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg_entity_farmaq_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_farmaq_ponds`
--

DROP TABLE IF EXISTS `reg_entity_farmaq_ponds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_entity_farmaq_ponds` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
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
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `REG_ENTITY_FARM_ID` (`REG_ENTITY_FARM_ID`),
  KEY `REG_ENTITY_FARM_ID_2` (`REG_ENTITY_FARM_ID`),
  CONSTRAINT `FK_PONDS2FARM` FOREIGN KEY (`REG_ENTITY_FARM_ID`) REFERENCES `reg_entities` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_farmaq_ponds`
--

LOCK TABLES `reg_entity_farmaq_ponds` WRITE;
/*!40000 ALTER TABLE `reg_entity_farmaq_ponds` DISABLE KEYS */;
INSERT INTO `reg_entity_farmaq_ponds` VALUES (1,1,'1','Growing-out pond',2,1,5.00,29,0.00,9,2,'','2017-01-11 10:05:28','2017-01-11 11:44:11'),(2,1,'2','Growing-out pond',2,1,5.00,29,0.00,9,2,'','2017-01-11 10:06:33','2017-01-11 10:54:06'),(3,1,'3','Growing-out pond',2,1,6.00,29,0.00,9,2,'','2017-01-11 10:08:32','2017-01-11 10:54:10'),(4,1,'4','Growing-out pond',2,1,8.00,29,0.00,9,2,'','2017-01-11 10:09:06','2017-01-11 10:54:15'),(5,1,'5','Reservoir pond',1,1,12.00,29,0.00,9,2,'','2017-01-11 10:11:07','2017-01-11 10:52:55'),(6,1,'6','Reservoir pond',1,1,6.00,29,0.00,9,2,'','2017-01-11 10:12:28','2017-01-11 10:53:42'),(7,1,'7','Sediment pond',4,1,5.00,29,0.00,9,2,'','2017-01-11 10:13:52','2017-01-11 10:13:52'),(8,3,'1','Growing-out pond',2,1,3.92,29,0.00,9,2,'','2017-01-11 16:39:22','2017-01-17 14:06:44'),(9,3,'2','Growing-out pond',2,1,3.06,29,0.00,9,2,'','2017-01-11 16:39:46','2017-01-17 14:06:53'),(10,3,'3','Growing-out pond',2,1,2.87,29,0.00,9,2,'','2017-01-11 16:40:11','2017-01-17 14:07:11'),(11,3,'4','Growing fish (recycling water)',2,4,4.88,29,0.00,9,2,'','2017-01-11 16:49:40','2017-01-17 14:07:51'),(12,3,'5','Reservoir pond',1,1,3.68,29,0.00,9,2,'','2017-01-11 16:50:39','2017-01-17 14:08:58'),(18,6,'1','Growing',2,1,0.00,29,0.00,9,2,'','2017-01-17 10:01:35','2017-01-17 10:01:35'),(19,6,'2','Recycling pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 10:03:10','2017-01-17 10:03:10'),(20,7,'1','Growing',2,1,2.00,29,0.00,9,2,'','2017-01-17 10:09:04','2017-01-17 13:56:35'),(21,7,'2','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 10:09:26','2017-01-17 10:09:26'),(22,7,'3','empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:10:00','2017-01-17 10:10:00'),(23,7,'4','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:10:25','2017-01-17 10:10:25'),(24,8,'1','Growing',2,1,0.00,29,0.00,9,2,'','2017-01-17 10:13:56','2017-01-17 10:13:56'),(25,8,'2','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 10:14:23','2017-01-17 10:14:23'),(26,8,'3','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:14:55','2017-01-17 10:14:55'),(30,10,'1','Growing',2,1,0.00,29,0.00,9,2,'','2017-01-17 10:22:22','2017-01-17 10:22:22'),(31,10,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 10:22:39','2017-01-17 10:22:39'),(32,10,'3','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 10:23:01','2017-01-17 10:23:01'),(33,10,'4','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:23:27','2017-01-17 10:23:27'),(34,11,'1','Growing',2,1,0.00,29,0.00,9,2,'','2017-01-17 10:26:53','2017-01-17 10:26:53'),(35,11,'2','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 10:27:19','2017-01-17 10:27:19'),(36,11,'3','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:28:03','2017-01-17 10:28:03'),(37,11,'4','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:28:25','2017-01-17 10:28:25'),(38,11,'5','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:28:47','2017-01-17 10:28:47'),(39,11,'6','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:29:16','2017-01-17 10:29:16'),(40,11,'7','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:29:49','2017-01-17 10:29:49'),(41,12,'1','Growing',2,1,0.00,29,0.00,9,2,'','2017-01-17 10:39:25','2017-01-17 10:39:25'),(42,12,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 10:40:41','2017-01-17 10:40:41'),(43,12,'3','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 10:41:07','2017-01-17 10:41:07'),(44,12,'4','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:41:27','2017-01-17 10:41:27'),(45,12,'5','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:41:46','2017-01-17 10:41:46'),(46,13,'1','Growing ',2,1,0.00,29,0.00,9,2,'','2017-01-17 10:56:26','2017-01-17 10:56:26'),(47,13,'2','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 10:56:43','2017-01-17 10:56:43'),(48,13,'3','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:57:23','2017-01-17 10:57:23'),(49,13,'4','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:57:49','2017-01-17 10:57:49'),(50,13,'5','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:58:10','2017-01-17 10:58:10'),(51,13,'6','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:58:30','2017-01-17 10:58:30'),(52,13,'7','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:58:53','2017-01-17 10:58:53'),(53,13,'8','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 10:59:16','2017-01-17 10:59:16'),(54,14,'1','Growing',2,1,0.00,29,0.00,9,2,'','2017-01-17 11:04:00','2017-01-17 11:04:00'),(55,14,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 11:04:35','2017-01-17 11:04:35'),(56,14,'3','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 11:04:59','2017-01-17 11:04:59'),(57,14,'4','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 11:05:26','2017-01-17 11:05:26'),(58,14,'5','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 11:05:57','2017-01-17 11:05:57'),(59,15,'1','Growing',2,1,2.25,29,0.00,9,2,'','2017-01-17 11:09:33','2017-01-17 11:09:33'),(60,15,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 11:09:48','2017-01-17 11:09:48'),(61,15,'3','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 11:10:20','2017-01-17 11:12:08'),(62,15,'4','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 11:12:23','2017-01-17 11:12:23'),(63,16,'1','growing',2,1,2.50,29,0.00,9,2,'','2017-01-17 11:15:26','2017-01-17 11:15:26'),(64,16,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 11:15:39','2017-01-17 11:15:39'),(65,16,'3','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 11:16:06','2017-01-17 11:16:06'),(66,16,'4','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 11:16:30','2017-01-17 11:16:30'),(67,17,'1','Growing',3,1,0.00,29,0.00,9,2,'','2017-01-17 12:32:46','2017-01-17 12:32:46'),(68,17,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 12:33:53','2017-01-17 12:33:53'),(69,17,'3','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 12:34:27','2017-01-17 12:34:27'),(70,17,'4','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 12:34:55','2017-01-17 12:34:55'),(71,17,'5','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 12:35:20','2017-01-17 12:35:20'),(72,17,'6','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 12:35:42','2017-01-17 12:35:42'),(73,17,'7','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 12:36:02','2017-01-17 12:36:02'),(74,17,'8','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 12:36:34','2017-01-17 12:36:34'),(75,17,'9','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 12:37:07','2017-01-17 12:37:07'),(76,17,'10','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 12:37:47','2017-01-17 12:37:47'),(77,17,'11','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 12:38:08','2017-01-17 12:38:08'),(78,18,'1','Growing',2,1,2.25,29,0.00,9,2,'','2017-01-17 12:42:04','2017-01-17 12:42:04'),(79,18,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 12:42:19','2017-01-17 12:42:19'),(80,18,'3','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 12:42:52','2017-01-17 12:42:52'),(81,18,'4','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 12:43:12','2017-01-17 12:43:12'),(82,19,'1','Growing',2,1,2.30,29,0.00,9,2,'','2017-01-17 12:47:22','2017-01-17 12:47:22'),(83,19,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 12:47:37','2017-01-17 12:47:37'),(84,19,'3','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 12:47:58','2017-01-17 12:47:58'),(85,19,'4','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 12:48:45','2017-01-17 12:48:45'),(90,21,'1','Growing',2,1,2.65,29,0.00,9,2,'','2017-01-17 12:57:26','2017-01-17 12:57:26'),(91,21,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 12:57:42','2017-01-17 12:57:42'),(92,21,'3','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 12:58:05','2017-01-17 12:58:05'),(93,21,'4','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 12:58:33','2017-01-17 12:58:33'),(94,22,'1','Growing',2,1,2.35,29,0.00,9,2,'','2017-01-17 13:01:52','2017-01-17 13:01:52'),(95,22,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 13:02:13','2017-01-17 13:02:13'),(96,22,'3','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 13:02:40','2017-01-17 13:02:40'),(97,23,'1','Growing',2,1,2.00,29,0.00,9,2,'','2017-01-17 13:07:15','2017-01-17 13:07:15'),(98,23,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 13:07:32','2017-01-17 13:07:32'),(99,23,'3','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 13:07:54','2017-01-17 13:07:54'),(100,23,'4','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 13:08:15','2017-01-17 13:08:15'),(101,24,'1','Growing ',2,1,0.00,29,0.00,9,2,'','2017-01-17 13:11:50','2017-01-17 13:11:50'),(102,24,'2','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 13:12:14','2017-01-17 13:12:14'),(103,25,'1','Growing',2,1,4.00,29,0.00,9,2,'','2017-01-17 13:18:37','2017-01-17 13:18:37'),(104,25,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 13:18:59','2017-01-17 13:18:59'),(105,25,'3','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 13:19:42','2017-01-17 13:19:42'),(106,25,'4','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 13:20:00','2017-01-17 13:20:00'),(107,25,'5','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 13:20:26','2017-01-17 13:20:26'),(108,25,'6','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 13:21:04','2017-01-17 13:21:04'),(109,26,'1','Growing',2,1,2.75,29,0.00,9,2,'','2017-01-17 13:24:49','2017-01-17 13:24:49'),(110,26,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 13:25:02','2017-01-17 13:25:02'),(111,26,'3','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 13:25:46','2017-01-17 13:25:46'),(112,26,'4','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 13:28:11','2017-01-17 13:28:11'),(113,27,'1','Growing ',2,1,0.00,29,0.00,9,2,'','2017-01-17 13:31:05','2017-01-17 13:31:05'),(114,27,'2','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 13:31:20','2017-01-17 13:31:20'),(115,27,'3','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 13:31:39','2017-01-17 13:31:39'),(116,28,'1','Growing',2,1,0.00,29,0.00,9,2,'','2017-01-17 13:37:33','2017-01-17 13:37:33'),(117,28,'2','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 13:56:01','2017-01-17 13:56:01'),(118,28,'3','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 13:57:07','2017-01-17 13:57:07'),(119,28,'4','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 13:58:00','2017-01-17 13:58:00'),(120,28,'5','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-17 13:58:25','2017-01-17 13:58:25'),(121,3,'6','Reservoir pond',1,1,2.81,29,0.00,9,2,'','2017-01-17 14:09:19','2017-01-17 14:09:19'),(123,40,'1','Growing',2,1,2.71,29,0.00,9,2,'','2017-01-17 14:39:21','2017-01-17 14:39:21'),(124,40,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 14:39:35','2017-01-17 14:39:35'),(125,40,'3','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-17 14:40:04','2017-01-17 14:40:04'),(126,41,'1','Growing ',2,1,3.07,29,0.00,9,2,'','2017-01-17 14:46:50','2017-01-17 14:46:50'),(127,41,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 14:47:08','2017-01-17 14:47:08'),(128,41,'3','Sludge ++',4,1,0.00,29,0.00,9,2,'','2017-01-17 14:47:39','2017-01-17 14:47:39'),(129,41,'4','Sludge +',4,1,0.00,29,0.00,9,2,'','2017-01-17 14:48:03','2017-01-17 14:48:03'),(130,39,'1','Growig',2,1,2.30,29,0.00,9,2,'','2017-01-17 14:53:22','2017-01-17 14:53:22'),(131,39,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 14:53:41','2017-01-17 14:53:41'),(132,39,'3','Sludge ++',4,1,0.00,29,0.00,9,2,'','2017-01-17 14:54:03','2017-01-17 14:54:03'),(133,39,'4','Sludge +',4,1,0.00,29,0.00,9,2,'','2017-01-17 14:54:26','2017-01-17 14:54:26'),(138,30,'1','Growing',2,1,2.32,29,0.00,9,2,'','2017-01-17 15:00:28','2017-01-17 15:00:28'),(139,30,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 15:00:40','2017-01-17 15:00:40'),(140,30,'3','Sludge ++',4,1,0.00,29,0.00,9,2,'','2017-01-17 15:01:01','2017-01-17 15:01:01'),(141,30,'4','Sludge +',4,1,0.00,29,0.00,9,2,'','2017-01-17 15:01:24','2017-01-17 15:01:24'),(142,42,'1','Growing',2,1,2.50,29,0.00,9,2,'','2017-01-17 15:05:02','2017-01-17 15:05:02'),(143,42,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 15:05:29','2017-01-17 15:05:29'),(144,42,'3','Sludge ++',4,1,0.00,29,0.00,9,2,'','2017-01-17 15:05:53','2017-01-17 15:05:53'),(145,42,'4','Sludge +',4,1,0.00,29,0.00,9,2,'','2017-01-17 15:06:12','2017-01-17 15:06:12'),(146,32,'1','Growing',2,1,2.00,29,0.00,9,2,'','2017-01-17 15:08:45','2017-01-17 15:08:45'),(147,32,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 15:08:58','2017-01-17 15:08:58'),(148,32,'3','Sludge ++',4,1,0.00,29,0.00,9,2,'','2017-01-17 15:09:20','2017-01-17 15:09:20'),(149,32,'4','Sludge +',4,1,0.00,29,0.00,9,2,'','2017-01-17 15:09:42','2017-01-17 15:09:42'),(150,33,'1','Growing',2,1,2.75,29,0.00,9,2,'','2017-01-17 15:12:30','2017-01-17 15:12:30'),(151,33,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 15:12:43','2017-01-17 15:12:43'),(152,33,'3','Sludge ++',4,1,0.00,29,0.00,9,2,'','2017-01-17 15:13:12','2017-01-17 15:13:12'),(153,33,'4','Sludge +',4,1,0.00,29,0.00,9,2,'','2017-01-17 15:14:10','2017-01-17 15:14:10'),(154,34,'1','Growing',2,1,2.00,29,0.00,9,2,'','2017-01-17 15:15:19','2017-01-17 15:15:19'),(155,34,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-17 15:15:35','2017-01-17 15:15:35'),(156,34,'3','Sludge ++',4,1,0.00,29,0.00,9,2,'','2017-01-17 15:17:44','2017-01-17 15:17:44'),(157,34,'4','Sludge +',4,1,0.00,29,0.00,9,2,'','2017-01-17 15:18:07','2017-01-17 15:18:07'),(158,37,'1','Growing',2,1,2.50,29,0.00,9,2,'','2017-01-18 08:46:44','2017-01-18 08:46:44'),(161,37,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-18 08:48:44','2017-01-18 08:49:35'),(162,37,'3','Recycling water pond',4,1,0.00,29,0.00,9,2,'','2017-01-18 08:50:36','2017-01-18 08:50:36'),(163,36,'1','Growing',2,1,2.50,29,125.00,9,2,NULL,'2017-01-18 09:05:55','2017-01-18 09:05:55'),(164,36,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-18 09:11:35','2017-01-18 09:11:35'),(165,36,'3','Sludge ++',4,1,0.00,29,0.00,9,2,'','2017-01-18 09:12:08','2017-01-18 09:12:08'),(166,36,'4','Sludge +',4,1,0.00,29,0.00,9,2,'','2017-01-18 09:13:02','2017-01-18 09:13:02'),(167,35,'1','Growing',2,1,2.00,29,0.00,9,2,'','2017-01-18 09:41:06','2017-01-18 09:41:06'),(168,35,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-18 09:41:29','2017-01-18 09:41:29'),(169,35,'3','Sludge ++',4,1,0.00,29,0.00,9,2,'','2017-01-18 09:41:56','2017-01-18 09:41:56'),(170,35,'4','Sludge +',4,1,0.00,29,0.00,9,2,'','2017-01-18 09:42:26','2017-01-18 09:42:26'),(171,43,'1','Growing',2,1,2.30,29,0.00,9,2,'','2017-01-18 09:45:47','2017-01-18 09:45:47'),(172,43,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-18 09:46:04','2017-01-18 09:46:04'),(173,43,'3','Sludge ++',4,1,0.00,29,0.00,9,2,'','2017-01-18 09:48:13','2017-01-18 09:48:13'),(174,43,'4','Sludge +',4,1,0.00,29,0.00,9,2,'','2017-01-18 09:51:35','2017-01-18 09:51:35'),(175,13,'9','Empty pond',1,1,0.00,29,0.00,9,2,'','2017-01-20 09:33:49','2017-01-20 09:33:49'),(176,44,'1','Growing',2,1,2.25,29,0.00,9,2,'','2017-01-20 11:20:04','2017-01-20 11:20:04'),(177,44,'2','Sludge +++',4,1,0.00,29,0.00,9,2,'','2017-01-20 11:20:17','2017-01-20 11:20:17'),(178,44,'3','Sludge ++',4,1,0.00,29,0.00,9,2,'','2017-01-20 11:21:02','2017-01-20 11:21:02'),(179,44,'4','Sludge +',4,1,0.00,29,0.00,9,2,'','2017-01-20 11:21:24','2017-01-20 11:21:24'),(180,44,'5','Reservoir pond',1,1,3.98,29,0.00,9,2,'','2017-01-20 11:21:58','2017-01-20 11:21:58'),(182,3,'8','Reservoir pond',2,2,0.00,0,1234.00,9,0,NULL,'2017-10-31 13:49:25','2017-10-31 13:49:25'),(183,124,'XUIOX','My Pond',2,2,0.00,0,123.00,28,0,NULL,'2017-11-04 09:07:27','2017-11-04 09:07:27');
/*!40000 ALTER TABLE `reg_entity_farmaq_ponds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_product_suppliers`
--

DROP TABLE IF EXISTS `reg_entity_product_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_entity_product_suppliers` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(11) NOT NULL DEFAULT '0',
  `CL_PRODUCT_TYPES_ID` int(11) NOT NULL DEFAULT '0',
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_product_suppliers`
--

LOCK TABLES `reg_entity_product_suppliers` WRITE;
/*!40000 ALTER TABLE `reg_entity_product_suppliers` DISABLE KEYS */;
INSERT INTO `reg_entity_product_suppliers` VALUES (1,7,52,2,'','2017-01-11 11:32:05','2017-01-11 11:32:05'),(2,15,4,2,'','2017-01-11 17:18:01','2017-01-16 09:18:37');
/*!40000 ALTER TABLE `reg_entity_product_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_staff`
--

DROP TABLE IF EXISTS `reg_entity_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_entity_staff` (
  `REG_ENTITY_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `CL_LANGUAGE_ID` int(11) DEFAULT NULL,
  `CL_LEGAL_STATUS_ID` int(11) NOT NULL,
  `CHARACTERISTICS_1` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `CHARACTERISTICS_2` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `NOT_EMPLOYED_ANYMORE` tinyint(1) NOT NULL,
  `TELEPHONE_OFFICE` varchar(45) COLLATE utf8_bin NOT NULL,
  `MOBILE_OFFICE` varchar(45) COLLATE utf8_bin NOT NULL,
  `EMAIL_OFFICE` varchar(45) COLLATE utf8_bin NOT NULL,
  `FROM_LOCAL_COMMUNITY` tinyint(1) NOT NULL,
  `WORKING_PERMIT` varchar(256) COLLATE utf8_bin NOT NULL,
  `UPDATER_ID` int(11) NOT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`REG_ENTITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='list of individuals and companies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_staff`
--

LOCK TABLES `reg_entity_staff` WRITE;
/*!40000 ALTER TABLE `reg_entity_staff` DISABLE KEYS */;
INSERT INTO `reg_entity_staff` VALUES (1,3,NULL,1,NULL,NULL,0,'','TBC','',0,'staff/work_permit/8ea6eb660a94a67a7deeb835aa5ab6c4.jpeg',2,'','2017-01-11 10:48:01','2017-01-11 10:48:01'),(2,14,NULL,0,NULL,NULL,0,'','TBC','',1,'',2,'','2017-01-11 16:23:15','2017-01-11 16:23:15'),(4,17,NULL,0,NULL,NULL,0,'','0861757989','',1,'',2,'','2017-01-17 09:52:04','2017-01-17 09:52:04'),(5,20,NULL,0,NULL,NULL,0,'','TBC','',1,'',2,'','2017-01-17 09:54:32','2017-01-17 09:54:32'),(6,21,NULL,0,NULL,NULL,0,'','0892595298','',0,'',2,'','2017-01-17 10:00:39','2017-01-17 10:46:00'),(7,23,NULL,0,NULL,NULL,0,'','0984295819','',0,'',2,'','2017-01-17 10:08:12','2017-01-17 10:49:50'),(8,25,NULL,0,NULL,NULL,0,'','0852162592','',0,'',2,'','2017-01-17 10:13:34','2017-01-17 12:21:30'),(9,27,NULL,0,NULL,NULL,0,'','0852661378','',0,'',2,'','2017-01-17 10:17:04','2017-01-17 10:48:19'),(10,29,NULL,0,NULL,NULL,0,'','0839746629','',0,'',2,'','2017-01-17 10:21:45','2017-01-17 10:50:46'),(11,43,NULL,0,NULL,NULL,0,'','0822494743','',0,'',2,'','2017-01-17 10:39:03','2017-01-17 12:27:10'),(13,35,NULL,0,NULL,NULL,0,'','0860366905','',0,'',2,'','2017-01-17 10:56:04','2017-01-17 13:59:24'),(14,37,NULL,0,NULL,NULL,0,'','0951085528','',1,'',2,'','2017-01-17 11:03:29','2017-01-17 11:03:29'),(15,39,NULL,0,NULL,NULL,0,'','0927010684','',0,'',2,'','2017-01-17 11:09:10','2017-01-17 11:10:57'),(16,41,NULL,0,NULL,NULL,0,'','0927010684','',1,'',2,'','2017-01-17 11:14:48','2017-01-17 11:14:48'),(17,33,NULL,0,NULL,NULL,0,'','0870722281','',1,'',2,'','2017-01-17 12:33:21','2017-01-17 12:33:21'),(18,45,NULL,0,NULL,NULL,0,'','0898296805','',1,'',2,'','2017-01-17 12:41:37','2017-01-17 12:41:37'),(19,47,NULL,0,NULL,NULL,0,'','0843196654','',1,'',2,'','2017-01-17 12:47:04','2017-01-17 12:47:04'),(20,49,NULL,0,NULL,NULL,0,'','0857026937','',1,'',2,'','2017-01-17 12:52:44','2017-01-17 12:52:44'),(21,51,NULL,0,NULL,NULL,0,'','0849715564','',1,'',2,'','2017-01-17 12:57:08','2017-01-17 12:57:08'),(22,53,NULL,0,NULL,NULL,0,'','0822414116','',1,'',2,'','2017-01-17 13:01:25','2017-01-17 13:01:25'),(23,55,NULL,0,NULL,NULL,0,'','0810110371','',1,'',2,'','2017-01-17 13:06:58','2017-01-17 13:06:58'),(24,57,NULL,0,NULL,NULL,0,'','0910123417','',1,'',2,'','2017-01-17 13:11:34','2017-01-17 13:11:34'),(25,59,NULL,0,NULL,NULL,0,'','0844139444','',1,'',2,'','2017-01-17 13:18:11','2017-01-17 13:18:11'),(26,61,NULL,0,NULL,NULL,0,'','0822408337','',1,'',2,'','2017-01-17 13:24:07','2017-01-17 13:24:07'),(27,63,NULL,0,NULL,NULL,0,'','0819952083','',1,'',2,'','2017-01-17 13:30:43','2017-01-17 13:30:43'),(28,65,NULL,0,NULL,NULL,0,'','0804322933','',1,'',2,'','2017-01-17 13:36:49','2017-01-17 13:36:49'),(29,11,NULL,0,NULL,NULL,0,'','0898364133','',1,'',2,'','2017-01-17 14:05:46','2017-01-17 14:05:46'),(30,67,NULL,0,NULL,NULL,0,'','0870067416','',1,'',2,'','2017-01-17 14:14:33','2017-01-17 14:14:33'),(31,67,NULL,0,NULL,NULL,0,'','0870067416','',1,'',2,'','2017-01-17 14:17:11','2017-01-17 14:17:11'),(32,69,NULL,0,NULL,NULL,0,'','0877178509','',1,'',2,'','2017-01-17 14:21:53','2017-01-17 14:21:53'),(33,83,NULL,0,NULL,NULL,0,'','0983705194','',1,'',2,'','2017-01-17 14:32:53','2017-01-17 14:32:53'),(34,85,NULL,0,NULL,NULL,0,'','0833175449','',1,'',2,'','2017-01-17 14:34:50','2017-01-17 14:34:50'),(35,87,NULL,0,NULL,NULL,0,'','0957956624','',1,'',2,'','2017-01-17 14:36:41','2017-01-17 14:36:41'),(36,89,NULL,0,NULL,NULL,0,'','0874141765','',1,'',2,'','2017-01-17 14:41:34','2017-01-17 14:41:34'),(37,91,NULL,0,NULL,NULL,0,'','0863264268','',1,'',2,'','2017-01-17 14:46:30','2017-01-17 14:46:30'),(38,71,NULL,0,NULL,NULL,0,'','0891582857','',1,'',2,'','2017-01-17 14:57:45','2017-01-17 14:57:45'),(39,93,NULL,0,NULL,NULL,0,'','0877178509','',1,'',2,'','2017-01-17 15:04:40','2017-01-17 15:04:40'),(40,73,NULL,0,NULL,NULL,0,'','0897412416','',1,'',2,'','2017-01-17 15:08:26','2017-01-17 15:08:26'),(41,75,NULL,0,NULL,NULL,0,'','0840154443','',1,'',2,'','2017-01-17 15:11:30','2017-01-17 15:11:30'),(42,77,NULL,0,NULL,NULL,0,'','0811912347','',1,'',2,'','2017-01-17 15:17:25','2017-01-17 15:17:25'),(43,95,NULL,0,NULL,NULL,0,'','0888498838','',1,'',2,'','2017-01-17 15:21:08','2017-01-17 15:21:08'),(44,81,NULL,0,NULL,NULL,0,'','0890764380','',1,'',2,'','2017-01-18 09:03:48','2017-01-18 09:03:48'),(45,79,NULL,0,NULL,NULL,0,'','0833175803','',1,'',2,'','2017-01-18 09:40:48','2017-01-18 09:40:48'),(46,17,NULL,0,NULL,NULL,0,'','0861757989','',1,'',2,'','2017-01-20 11:22:25','2017-01-20 11:22:25');
/*!40000 ALTER TABLE `reg_entity_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_staff_contract`
--

DROP TABLE IF EXISTS `reg_entity_staff_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_entity_staff_contract` (
  `ID` int(11) NOT NULL,
  `REG_ENTITY_STAFF_ID` int(11) NOT NULL,
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
  `CL_PAYMENT_FREQUENCY_ID` int(11) DEFAULT NULL,
  `MINIMUM_WAGES_APPLIED` tinyint(1) NOT NULL,
  `NB_HOURS_PER_DAY` int(2) DEFAULT NULL,
  `NB_DAYS_ANNUAL_LEAVE` int(3) DEFAULT NULL,
  `PAPER_CONTRACT_COPY` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `NO_ANNUAL_LEAVE_SPECIFIED` tinyint(1) DEFAULT NULL,
  `CONTRACT_IN_OTHER_LANGUAGE` tinyint(1) NOT NULL,
  `CL_COUNTRY_ID` int(11) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_staff_contract`
--

LOCK TABLES `reg_entity_staff_contract` WRITE;
/*!40000 ALTER TABLE `reg_entity_staff_contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg_entity_staff_contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_staff_declaration`
--

DROP TABLE IF EXISTS `reg_entity_staff_declaration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_entity_staff_declaration` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL COMMENT 'THE FARM ID',
  `REG_ENTITY_STAFF_ID` int(11) NOT NULL COMMENT 'THE STAFF ID',
  `CL_STAFF_DECLARATION_TYPE` int(11) NOT NULL,
  `DECLARATION_DATE` date NOT NULL,
  `DECLARATION_DESCRIPTION` varchar(256) CHARACTER SET utf8 NOT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '0',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table to store declaration coming from external sources';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_staff_declaration`
--

LOCK TABLES `reg_entity_staff_declaration` WRITE;
/*!40000 ALTER TABLE `reg_entity_staff_declaration` DISABLE KEYS */;
INSERT INTO `reg_entity_staff_declaration` VALUES (1,1,1,0,'2017-01-11','',2,'','2017-01-11 10:48:01','2017-01-11 10:48:01'),(2,3,2,0,'2017-01-11','',2,'','2017-01-11 16:23:15','2017-01-11 16:23:15'),(6,6,6,0,'2017-01-17','',2,'','2017-01-17 10:00:39','2017-01-17 10:00:39'),(7,7,7,0,'2017-01-17','',2,'','2017-01-17 10:08:12','2017-01-17 10:08:12'),(8,8,8,0,'2017-01-17','',2,'','2017-01-17 10:13:34','2017-01-17 10:13:34'),(9,9,9,0,'2017-01-17','',2,'','2017-01-17 10:17:04','2017-01-17 10:17:04'),(10,10,10,0,'2017-01-17','',2,'','2017-01-17 10:21:45','2017-01-17 10:21:45'),(11,12,11,0,'2017-01-17','',2,'','2017-01-17 10:39:03','2017-01-17 10:39:03'),(13,13,13,0,'2017-01-17','',2,'','2017-01-17 10:56:04','2017-01-17 10:56:04'),(14,14,14,0,'2017-01-17','',2,'','2017-01-17 11:03:29','2017-01-17 11:03:29'),(15,15,15,0,'2017-01-17','',2,'','2017-01-17 11:09:10','2017-01-17 11:09:10'),(16,16,16,0,'2017-01-17','',2,'','2017-01-17 11:14:48','2017-01-17 11:14:48'),(17,17,17,0,'2017-01-17','',2,'','2017-01-17 12:33:21','2017-01-17 12:33:21'),(18,18,18,0,'2017-01-17','',2,'','2017-01-17 12:41:37','2017-01-17 12:41:37'),(19,19,19,0,'2017-01-17','',2,'','2017-01-17 12:47:04','2017-01-17 12:47:04'),(20,20,20,0,'2017-01-17','',2,'','2017-01-17 12:52:44','2017-01-17 12:52:44'),(21,21,21,0,'2017-01-17','',2,'','2017-01-17 12:57:08','2017-01-17 12:57:08'),(22,22,22,0,'2017-01-17','',2,'','2017-01-17 13:01:25','2017-01-17 13:01:25'),(23,23,23,0,'2017-01-17','',2,'','2017-01-17 13:06:58','2017-01-17 13:06:58'),(24,24,24,0,'2017-01-17','',2,'','2017-01-17 13:11:34','2017-01-17 13:11:34'),(25,25,25,0,'2017-01-17','',2,'','2017-01-17 13:18:11','2017-01-17 13:18:11'),(26,26,26,0,'2017-01-17','',2,'','2017-01-17 13:24:07','2017-01-17 13:24:07'),(27,27,27,0,'2017-01-17','',2,'','2017-01-17 13:30:43','2017-01-17 13:30:43'),(28,28,28,0,'2017-01-17','',2,'','2017-01-17 13:36:49','2017-01-17 13:36:49'),(29,3,29,0,'2017-01-17','',2,'','2017-01-17 14:05:46','2017-01-17 14:05:46'),(31,11,31,0,'2017-01-17','',2,'','2017-01-17 14:17:11','2017-01-17 14:17:11'),(32,30,32,0,'2017-01-17','',2,'','2017-01-17 14:21:53','2017-01-17 14:21:53'),(33,37,33,0,'2017-01-17','',2,'','2017-01-17 14:32:53','2017-01-17 14:32:53'),(34,38,34,0,'2017-01-17','',2,'','2017-01-17 14:34:50','2017-01-17 14:34:50'),(35,39,35,0,'2017-01-17','',2,'','2017-01-17 14:36:41','2017-01-17 14:36:41'),(36,40,36,0,'2017-01-17','',2,'','2017-01-17 14:41:34','2017-01-17 14:41:34'),(37,41,37,0,'2017-01-17','',2,'','2017-01-17 14:46:30','2017-01-17 14:46:30'),(38,31,38,0,'2017-01-17','',2,'','2017-01-17 14:57:45','2017-01-17 14:57:45'),(39,42,39,0,'2017-01-17','',2,'','2017-01-17 15:04:40','2017-01-17 15:04:40'),(40,32,40,0,'2017-01-17','',2,'','2017-01-17 15:08:26','2017-01-17 15:08:26'),(41,33,41,0,'2017-01-17','',2,'','2017-01-17 15:11:30','2017-01-17 15:11:30'),(42,34,42,0,'2017-01-17','',2,'','2017-01-17 15:17:25','2017-01-17 15:17:25'),(43,43,43,0,'2017-01-17','',2,'','2017-01-17 15:21:08','2017-01-17 15:21:08'),(44,36,44,0,'2017-01-18','',2,'','2017-01-18 09:03:48','2017-01-18 09:03:48'),(45,35,45,0,'2017-01-18','',2,'','2017-01-18 09:40:48','2017-01-18 09:40:48'),(46,44,46,0,'2017-01-20','',2,'','2017-01-20 11:22:25','2017-01-20 11:22:25');
/*!40000 ALTER TABLE `reg_entity_staff_declaration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_staff_management`
--

DROP TABLE IF EXISTS `reg_entity_staff_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`REG_ENTITY_FARM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Additional information regarding staff at the farm level';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_staff_management`
--

LOCK TABLES `reg_entity_staff_management` WRITE;
/*!40000 ALTER TABLE `reg_entity_staff_management` DISABLE KEYS */;
INSERT INTO `reg_entity_staff_management` VALUES (3,0,'08:00:00','18:00:00',0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,0,NULL,0,NULL,0,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,0,NULL,NULL,'2017-10-30 17:44:14','2017-10-30 17:44:14'),(124,31,'08:00:00','18:00:00',12,2,0,0,0,0,0,0,0,0,NULL,0,'',0,NULL,0,'',1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,NULL,0,NULL,NULL,'2017-11-04 09:03:15','2017-11-04 09:03:15');
/*!40000 ALTER TABLE `reg_entity_staff_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_staff_other_attribute`
--

DROP TABLE IF EXISTS `reg_entity_staff_other_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_entity_staff_other_attribute` (
  `REG_ENTITY_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`REG_ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='additional attribues for staff';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_staff_other_attribute`
--

LOCK TABLES `reg_entity_staff_other_attribute` WRITE;
/*!40000 ALTER TABLE `reg_entity_staff_other_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg_entity_staff_other_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_entity_staff_other_attribute_definition`
--

DROP TABLE IF EXISTS `reg_entity_staff_other_attribute_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_entity_staff_other_attribute_definition` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ATTRIBUTE_1_TYPE` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ATTRIBUTE_1_DESCRIPTION` tinyint(1) DEFAULT NULL,
  `ATTRIBUTE_2_TYPE` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `ATTRIBUTE_2_DESCRIPTION` tinyint(1) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL,
  `COMMENT` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Store definition of additional attributes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_entity_staff_other_attribute_definition`
--

LOCK TABLES `reg_entity_staff_other_attribute_definition` WRITE;
/*!40000 ALTER TABLE `reg_entity_staff_other_attribute_definition` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg_entity_staff_other_attribute_definition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_roles`
--

DROP TABLE IF EXISTS `sys_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `LABEL` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_roles`
--

LOCK TABLES `sys_roles` WRITE;
/*!40000 ALTER TABLE `sys_roles` DISABLE KEYS */;
INSERT INTO `sys_roles` VALUES (1,'sadmin','Super Admin.'),(2,'country','Country Admin.'),(3,'coop','Cooperative Admin.'),(4,'farm','Farm Admin.');
/*!40000 ALTER TABLE `sys_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_users`
--

DROP TABLE IF EXISTS `sys_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `SYS_ROLE_ID` int(11) NOT NULL DEFAULT '0',
  `CL_COUNTRY_ID` int(11) DEFAULT NULL,
  `access` int(11) NOT NULL DEFAULT '0',
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `INDX_CL_COUNTRY_ID` (`CL_COUNTRY_ID`),
  CONSTRAINT `FK_CLCOUNTRY` FOREIGN KEY (`CL_COUNTRY_ID`) REFERENCES `cl_countries` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_users`
--

LOCK TABLES `sys_users` WRITE;
/*!40000 ALTER TABLE `sys_users` DISABLE KEYS */;
INSERT INTO `sys_users` VALUES (0,'MACHINE USER','gregoire@mac.comX','a',NULL,2,3,0,'2017-10-12 21:15:38','2017-10-12 21:15:38',1),(1,'Sylvain','smathieu@sy2media.com','a','wn6u8ekuSSGVEkNU7iB4Ny7MoUTrg4Wr02WMX7KmhycjCQ11WAKOTEZFqahm',1,NULL,0,'2016-12-13 13:15:10','2017-01-19 16:26:10',1),(2,'Emmanuelle','emabourgois@fairagora.com','a','fEgzdBjgx4NyG88Z2nOfcSgjk0gOQy8AC7qQDHCQ9bj9p0bxEvTtOyhrEBxy',1,NULL,0,'2016-12-31 13:19:35','2017-04-10 21:40:14',1),(3,'Yann','yann.laurent@pagre-it.com','a','bYKYqJbPQyaBXur7vBYDe4Fca0U4yP0BTgK9N0BT4iGpN0lYyWkKeIIV8ZLw',1,NULL,0,'2016-12-31 13:20:49','2017-09-12 06:47:48',1),(4,'Pau Badia','contact@fairagora.com','a','CU2fh81hE2CZUUDWCqirG6m8FBhSLh6iANYqxADTafKFrMBiqzbOiUroHsgo',1,NULL,0,'2017-04-03 21:04:33','2017-07-26 18:25:05',1),(5,'pitch','ema@gmail.com','a','GFfwcVbQ31BU7mLbMwU65DiLLb9zjM7aIZ8WaDpXA62iLNDqm66ZAsPljbRY',3,NULL,12,'2017-04-26 21:58:09','2017-04-26 22:01:31',1),(7,'Decha Farm','paubadiagrimalt@gmail.com','a','Y6FRqc11PMunhPEoT9w6oTrkezUucCzkscbPZZiQdFsrcseMr4QpS5MHFqA0',4,NULL,3,'2017-05-01 19:52:49','2017-05-04 20:27:55',1),(8,'Tongpoon Thorasap','nudeerdk@gmail.com','a',NULL,4,NULL,21,'2017-05-04 20:08:30','2017-05-04 20:12:53',1),(9,'Sam Roi Yod Shrimp Farm Cooperative','samroiyod_coop@hotmail.com','a',NULL,3,NULL,12,'2017-05-04 20:31:08','2017-05-04 20:31:08',1),(10,'Flavie Denelle','flavie.denelle@gmail.com','a',NULL,1,NULL,0,'2017-07-20 20:44:30','2017-07-20 20:44:30',1);
/*!40000 ALTER TABLE `sys_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-10 12:44:46
