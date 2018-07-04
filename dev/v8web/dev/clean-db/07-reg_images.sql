DROP TABLE `reg_pictures`;

CREATE TABLE `reg_pictures` (
  `PICTURE_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `RESOURCE_PATH` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NAME` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `UPDATER_ID` INT(11) NULL DEFAULT NULL,
  `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (PICTURE_ID))
   ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `jt_reg_farm_details_aerial_views_reg_picture` (
  `ENTITY_ID` int(11) NOT NULL,
  `PICTURE_ID` int(11) NOT NULL,
    `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `UPDATER_ID` INT(11) NULL DEFAULT NULL,
    `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `PRIMARY` PRIMARY KEY (ENTITY_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `jt_reg_farm_details_land_title_reg_picture` (
  `ENTITY_ID` int(11) NOT NULL,
  `PICTURE_ID` int(11) NOT NULL,
    `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `UPDATER_ID` INT(11) NULL DEFAULT NULL,
    `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `PRIMARY` PRIMARY KEY (ENTITY_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `jt_reg_farm_details_construction_permit_reg_picture` (
  `ENTITY_ID` int(11) NOT NULL,
  `PICTURE_ID` int(11) NOT NULL,
    `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `UPDATER_ID` INT(11) NULL DEFAULT NULL,
    `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `PRIMARY` PRIMARY KEY (ENTITY_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `jt_reg_farm_details_environment_impact_reg_picture` (
  `ENTITY_ID` int(11) NOT NULL,
  `PICTURE_ID` int(11) NOT NULL,
    `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `UPDATER_ID` INT(11) NULL DEFAULT NULL,
    `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `PRIMARY` PRIMARY KEY (ENTITY_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `jt_reg_farm_details_sitting_protected_area_reg_picture` (
  `ENTITY_ID` int(11) NOT NULL,
  `PICTURE_ID` int(11) NOT NULL,
    `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `UPDATER_ID` INT(11) NULL DEFAULT NULL,
    `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `PRIMARY` PRIMARY KEY (ENTITY_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `jt_reg_farm_details_canal_restoration_reg_picture` (
  `ENTITY_ID` int(11) NOT NULL,
  `PICTURE_ID` int(11) NOT NULL,
    `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `UPDATER_ID` INT(11) NULL DEFAULT NULL,
    `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `PRIMARY` PRIMARY KEY (ENTITY_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `jt_reg_farm_details_cumulative_impact_reg_picture` (
  `ENTITY_ID` int(11) NOT NULL,
  `PICTURE_ID` int(11) NOT NULL,
    `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `UPDATER_ID` INT(11) NULL DEFAULT NULL,
    `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `PRIMARY` PRIMARY KEY (ENTITY_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `jt_reg_facilities_access_toilets_reg_picture` (
  `ENTITY_ID` int(11) NOT NULL,
  `PICTURE_ID` int(11) NOT NULL,
    `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `UPDATER_ID` INT(11) NULL DEFAULT NULL,
    `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `PRIMARY` PRIMARY KEY (ENTITY_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `jt_reg_facilities_access_restroom_reg_picture` (
  `ENTITY_ID` int(11) NOT NULL,
  `PICTURE_ID` int(11) NOT NULL,
    `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `UPDATER_ID` INT(11) NULL DEFAULT NULL,
    `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `PRIMARY` PRIMARY KEY (ENTITY_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `jt_reg_facilities_access_shower_reg_picture` (
  `ENTITY_ID` int(11) NOT NULL,
  `PICTURE_ID` int(11) NOT NULL,
    `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `UPDATER_ID` INT(11) NULL DEFAULT NULL,
    `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `PRIMARY` PRIMARY KEY (ENTITY_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `jt_reg_facilities_access_drinking_reg_picture` (
  `ENTITY_ID` int(11) NOT NULL,
  `PICTURE_ID` int(11) NOT NULL,
    `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `UPDATER_ID` INT(11) NULL DEFAULT NULL,
    `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `PRIMARY` PRIMARY KEY (ENTITY_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `jt_reg_staff_management_farm_policies_reg_picture` (
  `ENTITY_ID` int(11) NOT NULL,
  `PICTURE_ID` int(11) NOT NULL,
    `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `UPDATER_ID` INT(11) NULL DEFAULT NULL,
    `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `PRIMARY` PRIMARY KEY (ENTITY_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `jt_reg_staff_management_work_accident_reg_picture` (
  `ENTITY_ID` int(11) NOT NULL,
  `PICTURE_ID` int(11) NOT NULL,
    `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `UPDATER_ID` INT(11) NULL DEFAULT NULL,
    `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `PRIMARY` PRIMARY KEY (ENTITY_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `jt_reg_staff_management_protective_equipment_reg_picture` (
  `ENTITY_ID` int(11) NOT NULL,
  `PICTURE_ID` int(11) NOT NULL,
    `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `UPDATER_ID` INT(11) NULL DEFAULT NULL,
    `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `PRIMARY` PRIMARY KEY (ENTITY_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `jt_reg_staff_work_permit_reg_picture` (
  `REG_ENTITY_ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL,
  `PICTURE_ID` int(11) NOT NULL,
    `DESCRIPTION` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `UPDATER_ID` INT(11) NULL DEFAULT NULL,
    `COMMENT` VARCHAR(216) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
    `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `PRIMARY` PRIMARY KEY (REG_ENTITY_ID,REG_ENTITY_FARM_ID,PICTURE_ID))
  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;