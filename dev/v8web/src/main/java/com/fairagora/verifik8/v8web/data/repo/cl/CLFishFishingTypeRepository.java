package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLFishFishingType;

public interface CLFishFishingTypeRepository extends CodeListRepository<CLFishFishingType> {

	List<CLFishFishingType> findByEnabledTrueOrderByName();

}
