package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLQuantityUnit;

public interface CLQuantityUnitRepository extends CodeListRepository<CLQuantityUnit> {

	List<CLQuantityUnit> findByEnabledTrueOrderByName();

}
