package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppEnergyType;

public interface CLAppEnergyTypeRepository extends CodeListRepository<CLAppEnergyType> {

	List<CLAppEnergyType> findByEnabledTrueOrderByName();

}
