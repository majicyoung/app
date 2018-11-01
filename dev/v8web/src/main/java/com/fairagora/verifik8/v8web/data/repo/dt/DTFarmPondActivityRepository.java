package com.fairagora.verifik8.v8web.data.repo.dt;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;

public interface DTFarmPondActivityRepository extends JpaRepository<DTFarmPondActivity, Long> {

	DTFarmPondActivity findById(Long activityId);

	List<DTFarmPondActivity> findByPondId(Long pondId);
	
	@Query(value = "SELECT dt_farmaq_pond_management.* FROM dt_farmaq_pond_management WHERE "
			+ "dt_farmaq_pond_management.REG_ENTITY_FARM_POND_ID = :pondId AND "
			+ "dt_farmaq_pond_management.CL_POND_ACTIVITY_TYPE_ID = :activityId AND "
			+ "dt_farmaq_pond_management.CL_PRODUCT_ID = :productId AND "
			+ "dt_farmaq_pond_management.ACTIVITY_START_DATE = :startDate AND "
			+ "dt_farmaq_pond_management.ACTIVITY_END_DATE = :endDate", nativeQuery = true)
	DTFarmPondActivity findPondActivityByPondAndActivityAndProduct(
			@Param("pondId") Long pondId,
			@Param("activityId") Long activityId,
			@Param("productId") Long productId,
			@Param("startDate") Date startDate,
			@Param("endDate") Date endDate
		);
	
	@Query(value = "SELECT dt_farmaq_pond_management.* FROM dt_farmaq_pond_management WHERE "
			+ "dt_farmaq_pond_management.REG_ENTITY_FARM_POND_ID = :pondId AND "
			+ "dt_farmaq_pond_management.CL_POND_ACTIVITY_TYPE_ID = :activityId AND "
			+ "dt_farmaq_pond_management.ACTIVITY_START_DATE = :startDate AND "
			+ "dt_farmaq_pond_management.ACTIVITY_END_DATE = :endDate", nativeQuery = true)
	DTFarmPondActivity findPondActivityByPondAndActivity(
			@Param("pondId") Long pondId,
			@Param("activityId") Long activityId,
			@Param("startDate") Date startDate,
			@Param("endDate") Date endDate
		);
}
