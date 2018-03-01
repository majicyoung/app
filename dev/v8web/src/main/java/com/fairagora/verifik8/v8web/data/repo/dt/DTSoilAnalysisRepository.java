package com.fairagora.verifik8.v8web.data.repo.dt;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.dt.DTSoilAnalysis;

public interface DTSoilAnalysisRepository extends JpaRepository<DTSoilAnalysis, Long> {

	public List<DTSoilAnalysis> findByPlotId(Long id);

	public List<DTSoilAnalysis> findByPlotFarmId(Long id);

}
