package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLTilingActivityType;

public interface CLTilingActivityTypeRepository extends CodeListRepository<CLTilingActivityType> {

	List<CLTilingActivityType> findByEnabledTrueOrderByName();

}