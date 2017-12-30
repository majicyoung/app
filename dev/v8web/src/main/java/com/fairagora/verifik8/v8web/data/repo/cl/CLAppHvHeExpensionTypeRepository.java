package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppHvHeExpensionType;

public interface CLAppHvHeExpensionTypeRepository extends CodeListRepository<CLAppHvHeExpensionType> {

	List<CLAppHvHeExpensionType> findByEnabledTrueOrderByName();

}
