package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCommodities;

public interface CLRefCommoditiesRepository extends CodeListRepository<CLRefCommodities> {

	List<CLRefCommodities> findByEnabledTrueOrderByName();

}
