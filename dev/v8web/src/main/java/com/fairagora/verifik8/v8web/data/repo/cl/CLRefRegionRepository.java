package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefRegion;

public interface CLRefRegionRepository extends CodeListRepository<CLRefRegion> {

	List<CLRefRegion> findByEnabledTrueOrderByName();

}
