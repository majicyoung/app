package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppLocation;

public interface CLAppLocationRepository extends CodeListRepository<CLAppLocation> {

	List<CLAppLocation> findByEnabledTrueOrderByName();

}
