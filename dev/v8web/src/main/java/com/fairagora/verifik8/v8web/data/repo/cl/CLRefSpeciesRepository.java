package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefSpecies;

public interface CLRefSpeciesRepository extends CodeListRepository<CLRefSpecies> {

	List<CLRefSpecies> findByEnabledTrueOrderByName();

}
