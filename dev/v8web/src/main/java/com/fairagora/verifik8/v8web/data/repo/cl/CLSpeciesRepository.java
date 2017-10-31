package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLSpecies;

public interface CLSpeciesRepository extends CodeListRepository<CLSpecies> {

	List<CLSpecies> findByEnabledTrueOrderByName();

}
