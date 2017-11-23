package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLLanguage;

public interface CLLanguageRepository extends CodeListRepository<CLLanguage> {

	List<CLLanguage> findByEnabledTrueOrderByName();

}
