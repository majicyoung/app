package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefAdminLevel1;

public interface CLRefAdminLevel1Repository extends CodeListRepository<CLRefAdminLevel1> {

	List<CLRefAdminLevel1> findByEnabledTrueOrderByName();

}
