
//* Create a FK from entities to their CodeList Type **/
UPDATE `reg_entities` SET CL_ENTITY_UID_TYPE_ID =  ( SELECT ID FROM cl_entity_types WHERE cl_entity_types.CODE=reg_entities.ENTITY_TYPE);
ALTER TABLE `reg_entities` CHANGE `CL_ENTITY_UID_TYPE_ID` `CL_ENTITY_UID_TYPE_ID` INT(11) NOT NULL DEFAULT '0';
ALTER TABLE `reg_entities` ADD CONSTRAINT `FK_CLTYPE` FOREIGN KEY (`CL_ENTITY_UID_TYPE_ID`) REFERENCES `cl_entity_types` (`ID`)   ON UPDATE RESTRICT ON DELETE RESTRICT;
