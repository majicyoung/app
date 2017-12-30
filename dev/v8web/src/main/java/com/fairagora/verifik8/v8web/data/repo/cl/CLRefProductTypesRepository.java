package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProductType;

public interface CLRefProductTypesRepository extends CodeListRepository<CLRefProductType>{

	List<CLRefProductType> findByEnabledTrueOrderByName();

}
