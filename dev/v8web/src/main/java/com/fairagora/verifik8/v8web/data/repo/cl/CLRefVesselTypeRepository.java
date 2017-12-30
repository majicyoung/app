package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefVesselType;

public interface CLRefVesselTypeRepository extends CodeListRepository<CLRefVesselType>{

	List<CLRefVesselType> findByEnabledTrueOrderByName();

}
