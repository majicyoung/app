package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppHazardousTrainingType;

public interface CLAppHazardousTrainingTypeRepository extends CodeListRepository<CLAppHazardousTrainingType> {

	List<CLAppHazardousTrainingType> findByEnabledTrueOrderByName();

}
