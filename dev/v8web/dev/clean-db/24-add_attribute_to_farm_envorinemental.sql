
CREATE TABLE `jt_reg_farm_details_escape_report_reg_picture` (
                                                      `ENTITY_ID` int(11) NOT NULL,
                                                      `PICTURE_ID` int(11) NOT NULL,
                                                      `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                                                      `UPDATER_ID` INT(11) NULL DEFAULT NULL,
                                                      `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                                                      `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                                      `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                                      CONSTRAINT `PRIMARY` PRIMARY KEY (ENTITY_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `jt_reg_farm_details_wasted_water_reg_picture` (
                                                      `ENTITY_ID` int(11) NOT NULL,
                                                      `PICTURE_ID` int(11) NOT NULL,
                                                      `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                                                      `UPDATER_ID` INT(11) NULL DEFAULT NULL,
                                                      `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
                                                      `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                                      `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                                      CONSTRAINT `PRIMARY` PRIMARY KEY (ENTITY_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


ALTER TABLE `reg_entity_farm_details` ADD `FILTRATION_SYSTEM` BOOLEAN DEFAULT FALSE,
  ADD `NUMBER_OF_ESCAPE` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  ADD `ESCAPE_PREVENTION` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  ADD `GPS_COORDINATE` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  ADD `FILTRATION_SYSTEM_CEMMENT` varchar(256) COLLATE utf8_bin DEFAULT NULL;