package com.fairagora.verifik8.v8web.data.repo.reg;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmDetails;

public interface RegEntityFarmDetailsRepository extends JpaRepository<RegEntityFarmDetails, Long> {

	public RegEntityFarmDetails findByEntityId(Long id);

}
