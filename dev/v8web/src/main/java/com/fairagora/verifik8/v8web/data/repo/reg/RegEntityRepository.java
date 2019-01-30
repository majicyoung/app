package com.fairagora.verifik8.v8web.data.repo.reg;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import org.springframework.data.jpa.repository.Query;

public interface RegEntityRepository extends JpaRepository<RegEntity, Long> {

	List<RegEntity> findByEntityTypeCode(String entityTypeCode);

	List<RegEntity> findByEntityTypeCodeAndNationalityId(String codeFarm, Long countryId);

	@Query(value = "SELECT * From reg_entities WHERE CL_ENTITY_UID_TYPE_ID = 5 OR CL_ENTITY_UID_TYPE_ID = 6 OR CL_ENTITY_UID_TYPE_ID = 8 ", nativeQuery = true)
	List<RegEntity> findPruductSupplier();

}
