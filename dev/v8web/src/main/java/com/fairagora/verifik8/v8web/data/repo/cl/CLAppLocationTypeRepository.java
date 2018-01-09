package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppLocationType;

public interface CLAppLocationTypeRepository extends CodeListRepository<CLAppLocationType> {

	List<CLAppLocationType> findByEnabledTrueOrderByName();

}
