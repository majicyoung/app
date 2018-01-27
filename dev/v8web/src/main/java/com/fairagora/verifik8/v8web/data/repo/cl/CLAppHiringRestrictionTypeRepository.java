package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppHiringRestrictionType;

public interface CLAppHiringRestrictionTypeRepository extends CodeListRepository<CLAppHiringRestrictionType> {

	List<CLAppHiringRestrictionType> findByEnabledTrueOrderByName();

}
