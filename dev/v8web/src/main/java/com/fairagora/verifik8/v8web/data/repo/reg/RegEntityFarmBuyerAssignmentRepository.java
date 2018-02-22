package com.fairagora.verifik8.v8web.data.repo.reg;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmBuyerAssignment;

public interface RegEntityFarmBuyerAssignmentRepository extends JpaRepository<RegEntityFarmBuyerAssignment, Long> {


	public List<RegEntityFarmBuyerAssignment> findByFarmIdOrderByBuyerName(Long farmId);
	
}
