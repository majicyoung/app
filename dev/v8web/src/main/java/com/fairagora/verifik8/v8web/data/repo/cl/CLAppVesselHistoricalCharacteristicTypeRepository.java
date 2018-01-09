package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppVesselHistoricalCharacteristicType;

public interface CLAppVesselHistoricalCharacteristicTypeRepository extends CodeListRepository<CLAppVesselHistoricalCharacteristicType>{

	List<CLAppVesselHistoricalCharacteristicType> findByEnabledTrueOrderByName();

}
