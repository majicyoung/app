package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefLanguage;

public interface CLRefLanguageRepository extends CodeListRepository<CLRefLanguage> {

	List<CLRefLanguage> findByEnabledTrueOrderByName();

}
