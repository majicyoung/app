package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppPowerUnit;

public interface CLAppPowerUnitRepository extends CodeListRepository<CLAppPowerUnit> {

	List<CLAppPowerUnit> findByEnabledTrueOrderByName();

}
