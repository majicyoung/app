package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLHvHeExpensionType;

public interface CLHvHeExpensionTypeRepository extends CodeListRepository<CLHvHeExpensionType> {

	List<CLHvHeExpensionType> findByEnabledTrueOrderByName();

}
