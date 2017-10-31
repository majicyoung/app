package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLCountry;

public interface CLCountryRepository extends CodeListRepository<CLCountry> {

	List<CLCountry> findByEnabledTrueOrderByName();

}
