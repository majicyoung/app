package com.fairagora.verifik8.v8web.data.repo.dt;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;

public interface DTFarmPlotActivityRepository extends JpaRepository<DTFarmPlotActivity, Long> {

	List<DTFarmPlotActivity> findByPlotId(Long plotId);

	List<DTFarmPlotActivity> findTop5ByOrderByCreatedAtDesc();

}
