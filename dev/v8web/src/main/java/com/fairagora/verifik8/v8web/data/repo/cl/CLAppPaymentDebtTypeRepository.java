package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppPaymentDebtType;

public interface CLAppPaymentDebtTypeRepository extends CodeListRepository<CLAppPaymentDebtType> {

	List<CLAppPaymentDebtType> findByEnabledTrueOrderByName();

}
