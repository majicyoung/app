package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppTilingActivityType;

public interface CLAppTilingActivityTypeRepository extends CodeListRepository<CLAppTilingActivityType> {

	List<CLAppTilingActivityType> findByEnabledTrueOrderByName();

}
