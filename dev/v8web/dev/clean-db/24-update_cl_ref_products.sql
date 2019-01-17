alter table cl_ref_products
  drop foreign key FK_CL_REF_PRODUCTS_REG_ENTITY_PRODUCT_SUPPLIER_ID;
drop index FK_CL_REF_PRODUCTS_REG_ENTITY_PRODUCT_SUPPLIER_ID on cl_ref_products;
alter table cl_ref_products
  drop column REG_ENTITY_PRODUCT_SUPPLIER_ID;


ALTER TABLE `cl_ref_products`
  ADD `REG_ENTITY_ID`int(10) DEFAULT NULL AFTER `CL_RECOMMAND_UNIT_ID`,
  ADD CONSTRAINT `FK_CL_REF_REG_ENTITY_ID`
    FOREIGN KEY (`REG_ENTITY_ID`) REFERENCES `reg_entities` (`ID`);


ALTER TABLE `cl_columns` CHANGE COLUMN `REG_ENTITY_PRODUCT_SUPPLER_ID` TO `REG_ENTITY_ID`;
