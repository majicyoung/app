package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppSoilAnalysisType;

public interface CLAppSoilAnalysisTypeRepository extends CodeListRepository<CLAppSoilAnalysisType> {

	List<CLAppSoilAnalysisType> findByEnabledTrueOrderByName();


}
