CREATE TABLE `reg_entity_staff_management_cl_app_payment_debt_types` (
  `CL_PAYMENT_DEBT_TYPE_ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `reg_entity_staff_management_cl_app_deduction_salary_types` (
  `CL_APP_DEDUCTION_SALARY_TYPE_ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `reg_entity_staff_management_cl_app_entity_document_types` (
  `CL_KEPT_WORKER_ENTITY_DOCUMENT_TYPE_ID` int(11) NOT NULL,
  `REG_ENTITY_FARM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

