package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppTerminationContractReason;

public interface CLAppTerminationContractReasonRepository extends CodeListRepository<CLAppTerminationContractReason> {

	List<CLAppTerminationContractReason> findByEnabledTrueOrderByName();

}
