package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefLanguageCountry;

public interface CLRefLanguageCountryRepository extends CodeListRepository<CLRefLanguageCountry> {

	List<CLRefLanguageCountry> findByEnabledTrueOrderByName();

}
