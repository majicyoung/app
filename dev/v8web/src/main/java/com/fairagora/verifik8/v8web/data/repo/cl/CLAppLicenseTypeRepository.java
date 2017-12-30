package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppLicenseType;

public interface CLAppLicenseTypeRepository extends CodeListRepository<CLAppLicenseType> {

	List<CLAppLicenseType> findByEnabledTrueOrderByName();

}
