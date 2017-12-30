package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppCompanyPositionType;

public interface CLAppCompanyPositionTypeRepository extends CodeListRepository<CLAppCompanyPositionType> {

	List<CLAppCompanyPositionType> findByEnabledTrueOrderByName();

}
