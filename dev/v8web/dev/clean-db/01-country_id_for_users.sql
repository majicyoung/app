/**we need to add country id for users to store their country if they are country manager**/
ALTER TABLE `sys_users` ADD `CL_COUNTRY_ID` INT NULL AFTER `SYS_ROLE_ID`, ADD INDEX `INDX_CL_COUNTRY_ID` (`CL_COUNTRY_ID`);
ALTER TABLE `sys_users` ADD CONSTRAINT `FK_CLCOUNTRY` FOREIGN KEY (`CL_COUNTRY_ID`) REFERENCES `cl_countries` (`ID`)   ON UPDATE RESTRICT ON DELETE RESTRICT;



__

ALTER TABLE `reg_entity_farm_details` CHANGE `OWNER_ID` `REG_ENTITY_OWNER_ID` INT(11) NOT NULL DEFAULT '0';
ALTER TABLE `reg_entity_farm_details` ADD `SYS_USER_FARMADMIN_ID` INT(11) NULL AFTER `REG_ENTITY_OWNER_ID`;

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
-- Dumping data for table `cl_farm_types`
--

INSERT INTO `cl_farm_types` (`ID`, `ENABLED`, `CODE`, `NAME`, `DESCRIPTION`, `UPDATER_ID`, `COMMENT`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'FARMAQ', 'Aquaculture Farm (growing)', NULL, '1', NULL, '2016-10-03 11:03:11', '2017-09-12 13:28:43'),
(2, 1, 'FARMAQ-H', 'Aquaculture Hatchery', NULL, '1', NULL, '2016-10-03 11:04:43', '2017-09-12 13:28:43'),
(3, 1, 'FARMAQ-M', 'Aquaculture Farm growing and hatchery', NULL, '1', NULL, '2016-10-03 11:05:46', '2017-09-12 13:28:43'),
(4, 1, 'FARMSUG', 'Sugar Farm', 'Sugar Farm production', '1', NULL, '2016-10-18 17:42:16', '2017-09-12 13:28:43');


DELETE FROM `cl_entity_types` WHERE `cl_entity_types`.`ID` = 3;
DELETE FROM `cl_entity_types` WHERE `cl_entity_types`.`ID` = 4;
DELETE FROM `cl_entity_types` WHERE `cl_entity_types`.`ID` = 11;

UPDATE `cl_entity_types` SET `CODE` = 'FARM', `NAME` = 'Any type of farm' WHERE `cl_entity_types`.`ID` = 2;

CREATE TABLE `pagreit3_verifik8`.`reg_entity_farm_details_farm_type` ( `REG_ENTITY_FARM_ID` INT(11) NOT NULL , `CL_FARM_TYPE_ID` INT(11) NOT NULL ) ENGINE = InnoDB;