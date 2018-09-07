CREATE TABLE `dt_farmaq_pond_production_cycle` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_ENTITY_FARM_POND_ID` int(11) NOT NULL,
  `PRODUCTION_CYCLE_NUMBER` int(6) DEFAULT NULL,
  `PRODUCTION_CYCLE_START` timestamp  NULL DEFAULT NULL,
  `PRODUCTION_CYCLE_END` timestamp NULL DEFAULT NULL,
  `FEEDING_VALUE` float DEFAULT NULL,
  `CL_FEEDING_VALUE_UNIT_ID` int(11) DEFAULT NULL,
  `SEED_QUANTITY` float DEFAULT NULL,
  `CL_SEED_QUANTITY_UNIT_ID` int(11) DEFAULT NULL,
  `HARVESTED_QUANTITY` float DEFAULT NULL,
  `CL_HARVESTED_QUANTITY_UNIT_ID` int(11) DEFAULT NULL,
  `USE_ANTIBIO_IN_CYCLE` tinyint(1) DEFAULT '0',
  `ANTIBIO_QUANTITY` float DEFAULT NULL,
  `CL_ANTIBIO_QUANTITY_UNIT_ID` int(11) DEFAULT NULL,
  `CL_REF_SPECIES_ID` int(11) DEFAULT NULL,
  `UPDATER_ID` int(11) NOT NULL DEFAULT '1',
  `COMMENT` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_FARMAQ_POND_PROD_CYCLE_UPDATER_ID` (`UPDATER_ID`),
  CONSTRAINT `FK_FARMAQ_POND_PROD_CYCLE_UPDATER_ID` FOREIGN KEY (`UPDATER_ID`) REFERENCES `sys_users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY (`CL_REF_SPECIES_ID`) REFERENCES `cl_ref_species`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

ALTER TABLE `dt_farmaq_pond_production_cycle`
  ADD INDEX `FK_FARMAQ_POND_PROD_CYCLE_POND_ID_idx` (`REG_ENTITY_FARM_POND_ID` ASC);
ALTER TABLE `dt_farmaq_pond_production_cycle`
  ADD CONSTRAINT `FK_FARMAQ_POND_PROD_CYCLE_POND_ID`
FOREIGN KEY (`REG_ENTITY_FARM_POND_ID`)
REFERENCES `reg_entity_farmaq_ponds` (`ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;