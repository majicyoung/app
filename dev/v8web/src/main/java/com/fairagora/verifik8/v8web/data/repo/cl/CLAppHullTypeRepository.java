package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppHullType;

public interface CLAppHullTypeRepository extends CodeListRepository<CLAppHullType> {

	List<CLAppHullType> findByEnabledTrueOrderByName();

}
