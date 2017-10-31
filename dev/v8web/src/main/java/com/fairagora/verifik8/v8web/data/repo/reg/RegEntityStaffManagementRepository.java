package com.fairagora.verifik8.v8web.data.repo.reg;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffManagement;

public interface RegEntityStaffManagementRepository extends JpaRepository<RegEntityStaffManagement, Long> {

	public RegEntityStaffManagement findByFarmId(Long id);

}
