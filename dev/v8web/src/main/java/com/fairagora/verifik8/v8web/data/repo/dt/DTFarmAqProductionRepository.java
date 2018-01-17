package com.fairagora.verifik8.v8web.data.repo.dt;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmAqProduction;

public interface DTFarmAqProductionRepository extends JpaRepository<DTFarmAqProduction, Long> {

	public List<DTFarmAqProduction> findByFarmId(Long id);

}
