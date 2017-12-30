package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCurrency;

public interface CLRefCurrencyRepository extends CodeListRepository<CLRefCurrency> {

	List<CLRefCurrency> findByEnabledTrueOrderByName();

}
