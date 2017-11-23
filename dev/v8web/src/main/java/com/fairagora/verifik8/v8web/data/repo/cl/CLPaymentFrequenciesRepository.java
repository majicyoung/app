package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLCommodities;
import com.fairagora.verifik8.v8web.data.domain.cl.CLPaymentFrequency;

public interface CLPaymentFrequenciesRepository extends CodeListRepository<CLPaymentFrequency> {

	List<CLPaymentFrequency> findByEnabledTrueOrderByName();

}
