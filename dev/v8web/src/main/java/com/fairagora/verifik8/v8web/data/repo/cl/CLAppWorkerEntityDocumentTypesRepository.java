package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppWorkerEntityDocumentTypes;

public interface CLAppWorkerEntityDocumentTypesRepository extends CodeListRepository<CLAppWorkerEntityDocumentTypes> {

	List<CLAppWorkerEntityDocumentTypes> findByEnabledTrueOrderByName();

}
