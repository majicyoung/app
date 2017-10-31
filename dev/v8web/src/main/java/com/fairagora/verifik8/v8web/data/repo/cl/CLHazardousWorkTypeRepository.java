package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLHazardousWorkType;

public interface CLHazardousWorkTypeRepository extends CodeListRepository<CLHazardousWorkType> {

	List<CLHazardousWorkType> findByEnabledTrueOrderByName();


}
