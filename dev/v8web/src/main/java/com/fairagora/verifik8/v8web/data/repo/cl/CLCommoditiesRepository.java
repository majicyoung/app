package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLCommodities;

public interface CLCommoditiesRepository extends CodeListRepository<CLCommodities> {

	List<CLCommodities> findByEnabledTrueOrderByName();

}
