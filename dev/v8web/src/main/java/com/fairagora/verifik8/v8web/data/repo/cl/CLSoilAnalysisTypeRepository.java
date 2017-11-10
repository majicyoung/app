package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLSoilAnalysisType;

public interface CLSoilAnalysisTypeRepository extends CodeListRepository<CLSoilAnalysisType> {

	List<CLSoilAnalysisType> findByEnabledTrueOrderByName();


}
