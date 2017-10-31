package com.fairagora.verifik8.v8web.data.repo.reg;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.reg.staff.RegEntityStaff;

public interface RegEntityStaffRepository extends JpaRepository<RegEntityStaff, Long> {

	public List<RegEntityStaff> findByFarmId(Long farmId);

}
