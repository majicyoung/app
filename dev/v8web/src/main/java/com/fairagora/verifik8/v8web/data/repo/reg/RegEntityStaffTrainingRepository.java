package com.fairagora.verifik8.v8web.data.repo.reg;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffTraining;

public interface RegEntityStaffTrainingRepository extends JpaRepository<RegEntityStaffTraining, Long> {

	public Optional<RegEntityStaffTraining> findByFarmId(Long farmId);

}
