package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppContractType;

public interface CLAppContractTypeRepository extends CodeListRepository<CLAppContractType> {

	List<CLAppContractType> findByEnabledTrueOrderByName();

}
