package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPondType;

public interface CLFarmPondTypeRepository extends CodeListRepository<CLFarmPondType> {

	List<CLFarmPondType> findByEnabledTrueOrderByName();

}
