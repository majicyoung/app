package com.fairagora.verifik8.v8web.data.repo.reg;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.mvc.companies.dto.CompanyListingDto;

public interface RegEntityRepository extends JpaRepository<RegEntity, Long> {

	List<RegEntity> findByEntityTypeCode(String entityTypeCode);


}
