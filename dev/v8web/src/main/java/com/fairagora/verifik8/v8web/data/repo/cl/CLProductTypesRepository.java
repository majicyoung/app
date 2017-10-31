package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLProductType;

public interface CLProductTypesRepository extends CodeListRepository<CLProductType>{

	List<CLProductType> findByEnabledTrueOrderByName();

}
