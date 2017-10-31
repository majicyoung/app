package com.fairagora.verifik8.v8web.data.repo.reg;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPlot;

public interface RegEntityFarmPlotRepository extends JpaRepository<RegEntityFarmPlot, Long> {

	List<RegEntityFarmPlot> findByFarmId(Long id);

}
