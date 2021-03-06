package com.fairagora.verifik8.v8web.data.repo.dt;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondMeasurement;

public interface DTFarmPondMeasurementRepository extends JpaRepository<DTFarmPondMeasurement, Long> {

	List<DTFarmPondMeasurement> findByPondId(Long pondId);
	
	@Query(value = "SELECT * FROM dt_farmaq_pond_measurements WHERE REG_ENTITY_FARM_POND_ID=:id AND MEASURE_DATE BETWEEN :previousDate AND :currentDate", nativeQuery = true)
	List<DTFarmPondMeasurement> findAllPondMeasure(@Param("currentDate") String currentDate, @Param("previousDate") String previousDate,@Param("id") Long id);

	@Query(value = "SELECT * FROM dt_farmaq_pond_measurements WHERE "
			+ "MEASURE_DATE BETWEEN :previousDate AND :currentDate", nativeQuery = true)
	List<DTFarmPondMeasurement> findAllPondMeasureByDate(
			@Param("previousDate") Date previousDate,
			@Param("currentDate") Date currentDate);
}
