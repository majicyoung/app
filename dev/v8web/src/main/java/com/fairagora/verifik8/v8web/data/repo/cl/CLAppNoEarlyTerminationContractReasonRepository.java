package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppNoEarlyTerminationContractReason;

public interface CLAppNoEarlyTerminationContractReasonRepository
		extends CodeListRepository<CLAppNoEarlyTerminationContractReason> {

	List<CLAppNoEarlyTerminationContractReason> findByEnabledTrueOrderByName();

}
