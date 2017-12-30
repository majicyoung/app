package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLFishFishingZone;

public interface CLFishFishingZoneRepository extends CodeListRepository<CLFishFishingZone> {

	List<CLFishFishingZone> findByEnabledTrueOrderByName();

}
