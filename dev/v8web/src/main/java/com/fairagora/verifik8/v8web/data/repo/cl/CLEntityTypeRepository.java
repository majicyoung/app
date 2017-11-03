package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLEntityType;

public interface CLEntityTypeRepository extends CodeListRepository<CLEntityType> {

	List<CLEntityType> findByEnabledTrueAndCompanyTrueOrderByName();

}
