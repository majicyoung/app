package com.fairagora.verifik8.v8web.data.repo.reg;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;

public interface RegEntityRepository extends JpaRepository<RegEntity, Long> {

	List<RegEntity> findByEntityTypeCode(String entityTypeCode);

	List<RegEntity> findByEntityTypeCodeAndNationalityId(String codeFarm, Long countryId);

}
