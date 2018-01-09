package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppPropulsionType;

public interface CLAppPropulsionTypeRepository extends CodeListRepository<CLAppPropulsionType> {

	List<CLAppPropulsionType> findByEnabledTrueOrderByName();

}
