package com.fairagora.verifik8.v8web.data.repo.reg;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFacilities;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffSafety;

public interface RegEntityFacilitiesRepository extends JpaRepository<RegEntityFacilities, Long> {

	public Optional<RegEntityFacilities> findByFarmId(Long farmId);

}
