package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPlotActivityType;

public interface CLFarmPlotActivityTypeRepository extends CodeListRepository<CLFarmPlotActivityType> {

	List<CLFarmPlotActivityType> findByEnabledTrueOrderByName();

}
