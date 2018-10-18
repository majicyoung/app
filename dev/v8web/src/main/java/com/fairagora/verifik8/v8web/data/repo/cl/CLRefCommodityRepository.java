package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCommodity;

public interface CLRefCommodityRepository extends CodeListRepository<CLRefCommodity> {

	List<CLRefCommodity> findByEnabledTrueOrderByName();

}
