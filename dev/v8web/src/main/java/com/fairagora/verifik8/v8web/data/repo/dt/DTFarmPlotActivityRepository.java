package com.fairagora.verifik8.v8web.data.repo.dt;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;
import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface DTFarmPlotActivityRepository extends JpaRepository<DTFarmPlotActivity, Long> {

	List<DTFarmPlotActivity> findByPlotId(Long plotId);

	List<DTFarmPlotActivity> findTop5ByOrderByCreatedAtDesc();

	@Override
	@Query(value = "SELECT * FROM dt_farmag_plot_management where ID = :id LIMIT  1", nativeQuery = true)
	DTFarmPlotActivity getOne(@Param("id") Long id);

}
