package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppVesselEquipmentType;

public interface CLAppVesselEquipmentTypeRepository extends CodeListRepository<CLAppVesselEquipmentType> {

	List<CLAppVesselEquipmentType> findByEnabledTrueOrderByName();

}
