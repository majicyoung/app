package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefAdminLevel2;

public interface CLRefAdminLevel2Repository extends CodeListRepository<CLRefAdminLevel2> {

	List<CLRefAdminLevel2> findByEnabledTrueOrderByName();

}
