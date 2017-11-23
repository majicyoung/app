package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLContractType;

public interface CLContractTypeRepository extends CodeListRepository<CLContractType> {

	List<CLContractType> findByEnabledTrueOrderByName();

}
