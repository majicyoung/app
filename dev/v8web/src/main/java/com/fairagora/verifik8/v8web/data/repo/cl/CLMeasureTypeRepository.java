package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLMeasureType;

public interface CLMeasureTypeRepository extends CodeListRepository<CLMeasureType> {

	List<CLMeasureType> findByEnabledTrueOrderByName();

}
