package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppGetBackFinancialDepositReason;

public interface CLAppGetBackFinancialDepositReasonRepository
		extends CodeListRepository<CLAppGetBackFinancialDepositReason> {

	List<CLAppGetBackFinancialDepositReason> findByEnabledTrueOrderByName();

}
