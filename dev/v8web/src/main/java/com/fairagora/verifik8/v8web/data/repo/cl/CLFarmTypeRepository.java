package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmType;

public interface CLFarmTypeRepository extends CodeListRepository<CLFarmType> {

	List<CLFarmType> findByEnabledTrueOrderByName();

}
