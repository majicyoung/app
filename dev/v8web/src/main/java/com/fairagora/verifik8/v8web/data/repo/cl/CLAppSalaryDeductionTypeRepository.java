package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppSalaryDeductionType;

public interface CLAppSalaryDeductionTypeRepository extends CodeListRepository<CLAppSalaryDeductionType> {

	List<CLAppSalaryDeductionType> findByEnabledTrueOrderByName();

}
