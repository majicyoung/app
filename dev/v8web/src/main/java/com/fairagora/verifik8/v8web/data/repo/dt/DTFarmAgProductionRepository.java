package com.fairagora.verifik8.v8web.data.repo.dt;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmAgProduction;

public interface DTFarmAgProductionRepository extends JpaRepository<DTFarmAgProduction, Long> {

	public List<DTFarmAgProduction> findByFarmId(Long id);

}
