package com.fairagora.verifik8.v8web.data.repo.dt;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondMeasurement;

public interface DTFarmPondMeasurementRepository extends JpaRepository<DTFarmPondMeasurement, Long> {

	List<DTFarmPondMeasurement> findByPondId(Long pondId);

}
