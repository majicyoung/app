package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppEntityType;

public interface CLAppEntityTypeRepository extends CodeListRepository<CLAppEntityType> {

	List<CLAppEntityType> findByEnabledTrueAndCompanyTrueOrderByName();

}
