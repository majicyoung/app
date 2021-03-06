ALTER TABLE `reg_entity_staff_contract` DROP FOREIGN KEY `FK_REG_ENTITY_STAFF_CONTRACT_DETAILS_CL_CONTRACT_TYPE_ID`;
ALTER TABLE `cl_app_contract_types` MODIFY ID int(11) NOT NULL auto_increment;
ALTER TABLE `reg_entity_staff_contract` ADD CONSTRAINT `FK_REG_ENTITY_STAFF_CONTRACT_DETAILS_CL_CONTRACT_TYPE_ID` FOREIGN KEY (`CL_CONTRACT_TYPE_ID`) REFERENCES `cl_app_contract_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `reg_entity_staff_declaration` DROP FOREIGN KEY `FK_REG_ENTITY_STAFF_DECLARATION_CL_DECL_SOURCE_ID`;
ALTER TABLE `cl_app_declaration_sources_types` MODIFY ID int(11) NOT NULL auto_increment;
ALTER TABLE `reg_entity_staff_declaration` ADD CONSTRAINT `FK_REG_ENTITY_STAFF_DECLARATION_CL_DECL_SOURCE_ID` FOREIGN KEY (`CL_DECLARATION_SOURCE`) REFERENCES `cl_app_declaration_sources_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `reg_entity_staff_contract` DROP FOREIGN KEY `FK_REG_ENTITY_STAFF_CONTRACT_CL_PAYMENT_FREQ_ID`;
ALTER TABLE `cl_app_payment_frequencies` MODIFY ID int(11) NOT NULL auto_increment;
ALTER TABLE `reg_entity_staff_contract` ADD CONSTRAINT `FK_REG_ENTITY_STAFF_CONTRACT_CL_PAYMENT_FREQ_ID` FOREIGN KEY (`CL_PAYMENT_FREQUENCY_ID`) REFERENCES `cl_app_payment_frequencies` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `dt_farmag_production` DROP FOREIGN KEY `FK_FARMAG_PRODUCTION_PROD_TYPE`;
ALTER TABLE `dt_farmaq_production` DROP FOREIGN KEY `FK_FARMAQ_PRODUCTION_PROD_TYPE`;
ALTER TABLE `cl_app_prod_data_entry_types` MODIFY ID int(11) NOT NULL auto_increment;
ALTER TABLE `dt_farmag_production` ADD CONSTRAINT `FK_FARMAG_PRODUCTION_PROD_TYPE` FOREIGN KEY (`CL_PROD_DATA_ENTRY_TYPE_ID`) REFERENCES `cl_app_prod_data_entry_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `dt_farmaq_production` ADD CONSTRAINT `FK_FARMAQ_PRODUCTION_PROD_TYPE` FOREIGN KEY (`CL_PROD_DATA_ENTRY_TYPE_ID`) REFERENCES `cl_app_prod_data_entry_types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `cl_app_tiling_activity_types` MODIFY ID int(11) NOT NULL auto_increment;


ALTER TABLE `cl_ref_products` MODIFY ID int(11) NOT NULL auto_increment;