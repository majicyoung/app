package com.fairagora.verifik8.v8web.data.repo.reg;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;
import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmSupplierAssignment;

public interface RegEntityFarmSupplierAssignmentRepository extends JpaRepository<RegEntityFarmSupplierAssignment, Long> {


	public List<RegEntityFarmSupplierAssignment> findByFarmIdOrderBySupplierName(Long farmId);

}
