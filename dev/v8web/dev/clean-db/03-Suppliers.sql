ALTER TABLE `reg_entity_farm_providers` ADD `CL_PRODUCT_TYPES_ID` INT NULL DEFAULT '1' AFTER `REG_ENTITY_SUPPLIER_ID`;
TER TABLE `reg_entity_farm_providers` ADD CONSTRAINT `FK_CL_PRODUCTTYPE` FOREIGN KEY (`CL_PRODUCT_TYPES_ID`) REFERENCES `cl_product_types`(`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `reg_entity_staff_management` ADD `WORKERS_REPRESENTATIVE_GROUP` TINYINT(1) NOT NULL AFTER `SAFETY_CONDITION`;