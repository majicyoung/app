package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppEngineRole;

public interface CLAppEngineRoleRepository extends CodeListRepository<CLAppEngineRole> {

	List<CLAppEngineRole> findByEnabledTrueOrderByName();

}
