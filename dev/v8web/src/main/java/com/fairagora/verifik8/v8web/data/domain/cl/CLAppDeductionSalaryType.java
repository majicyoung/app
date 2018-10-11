package com.fairagora.verifik8.v8web.data.domain.cl;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffManagement;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import java.util.List;

@Entity
@Table(name = "cl_app_deduction_salary_types")
public class CLAppDeductionSalaryType extends CodeListSupport {

	@ManyToMany(mappedBy="salaryDeductionTypes")
	private List<RegEntityStaffManagement> regEntityStaffManagements;

}