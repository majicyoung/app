package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLPondType;

public interface CLPoundTypeRepository extends CodeListRepository<CLPondType> {

	List<CLPondType> findByEnabledTrueOrderByName();

}
