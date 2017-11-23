package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLCurrency;

public interface CLCurrencyRepository extends CodeListRepository<CLCurrency> {

	List<CLCurrency> findByEnabledTrueOrderByName();

}
