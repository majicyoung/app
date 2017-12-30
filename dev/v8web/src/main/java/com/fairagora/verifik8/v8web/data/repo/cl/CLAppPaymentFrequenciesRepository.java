package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppPaymentFrequency;

public interface CLAppPaymentFrequenciesRepository extends CodeListRepository<CLAppPaymentFrequency> {

	List<CLAppPaymentFrequency> findByEnabledTrueOrderByName();

}
