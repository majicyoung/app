package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPondActivityType;

public interface CLFarmPondActivityTypeRepository extends CodeListRepository<CLFarmPondActivityType> {

	List<CLFarmPondActivityType> findByEnabledTrueOrderByName();
	
}
