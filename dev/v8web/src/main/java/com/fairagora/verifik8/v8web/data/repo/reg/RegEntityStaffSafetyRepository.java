package com.fairagora.verifik8.v8web.data.repo.reg;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffSafety;

public interface RegEntityStaffSafetyRepository extends JpaRepository<RegEntityStaffSafety, Long> {

	public Optional<RegEntityStaffSafety> findByFarmId(Long farmId);

}
