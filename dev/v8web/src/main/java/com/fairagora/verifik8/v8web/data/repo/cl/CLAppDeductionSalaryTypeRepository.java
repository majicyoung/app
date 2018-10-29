package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppDeductionSalaryType;

public interface CLAppDeductionSalaryTypeRepository extends CodeListRepository<CLAppDeductionSalaryType> {

	List<CLAppDeductionSalaryType> findByEnabledTrueOrderByName();

}
