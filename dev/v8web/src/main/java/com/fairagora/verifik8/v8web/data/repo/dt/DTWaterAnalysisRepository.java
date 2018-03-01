package com.fairagora.verifik8.v8web.data.repo.dt;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.dt.DTWaterAnalysis;

public interface DTWaterAnalysisRepository extends JpaRepository<DTWaterAnalysis, Long> {

	public List<DTWaterAnalysis> findByPondId(Long id);

	public List<DTWaterAnalysis> findByPondFarmId(Long id);

}
