package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLLegalStatus;

public interface CLLegalStatusRepository extends CodeListRepository<CLLegalStatus> {

	List<CLLegalStatus> findByEnabledTrueOrderByName();

}
