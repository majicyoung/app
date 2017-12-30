package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppQuantityUnit;

public interface CLAppQuantityUnitRepository extends CodeListRepository<CLAppQuantityUnit> {

	List<CLAppQuantityUnit> findByEnabledTrueOrderByName();

}
