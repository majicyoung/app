package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLCompanyPositionType;

public interface CLCompanyPositionTypeRepository extends CodeListRepository<CLCompanyPositionType> {

	List<CLCompanyPositionType> findByEnabledTrueOrderByName();

}
