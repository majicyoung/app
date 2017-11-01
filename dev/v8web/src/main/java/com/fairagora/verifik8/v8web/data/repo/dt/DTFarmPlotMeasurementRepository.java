package com.fairagora.verifik8.v8web.data.repo.dt;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotMeasurement;

public interface DTFarmPlotMeasurementRepository extends JpaRepository<DTFarmPlotMeasurement, Long> {

	List<DTFarmPlotMeasurement> findByPlotId(Long plotId);

}
