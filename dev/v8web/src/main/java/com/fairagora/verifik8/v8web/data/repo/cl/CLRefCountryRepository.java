package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCountry;

public interface CLRefCountryRepository extends CodeListRepository<CLRefCountry> {

	List<CLRefCountry> findByEnabledTrueOrderByName();

}
