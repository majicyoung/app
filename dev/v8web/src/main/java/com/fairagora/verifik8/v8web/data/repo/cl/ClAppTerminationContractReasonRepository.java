package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.ClAppTerminationContractReason;

public interface ClAppTerminationContractReasonRepository extends CodeListRepository<ClAppTerminationContractReason> {

	List<ClAppTerminationContractReason> findByEnabledTrueOrderByName();

}
