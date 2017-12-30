package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppLegalStatus;

public interface CLAppLegalStatusRepository extends CodeListRepository<CLAppLegalStatus> {

	List<CLAppLegalStatus> findByEnabledTrueOrderByName();

}
