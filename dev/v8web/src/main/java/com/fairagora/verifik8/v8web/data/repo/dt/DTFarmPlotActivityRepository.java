package com.fairagora.verifik8.v8web.data.repo.dt;

import java.util.Date;
import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface DTFarmPlotActivityRepository extends JpaRepository<DTFarmPlotActivity, Long> {

	List<DTFarmPlotActivity> findByPlotId(Long plotId);
	
	@Query(value = "SELECT dt_farmag_plot_management.* FROM dt_farmag_plot_management WHERE "
			+ "dt_farmag_plot_management.REG_ENTITY_FARM_PLOT_ID = :plotId AND "
			+ "dt_farmag_plot_management.CL_PLOT_ACTIVITY_TYPE_ID = :activityId AND "
			+ "dt_farmag_plot_management.CL_PRODUCT_ID = :productId AND "
			+ "dt_farmag_plot_management.ACTIVITY_START_DATE = :startDate AND "
			+ "dt_farmag_plot_management.ACTIVITY_END_DATE = :endDate", nativeQuery = true)
	DTFarmPlotActivity findPlotActivityByPlotAndActivityAndProduct(
			@Param("plotId") Long plotId,
			@Param("activityId") Long activityId,
			@Param("productId") Long productId,
			@Param("startDate") Date startDate,
			@Param("endDate") Date endDate
		);
	
	@Query(value = "SELECT * FROM dt_farmag_plot_management WHERE "
			+ "dt_farmag_plot_management.ACTIVITY_START_DATE "
			+ "BETWEEN :previousDate AND :currentDate", nativeQuery= true)
	List<DTFarmPlotActivity> getAllActivityByDate(
			@Param("previousDate") Date previousDate,
			@Param("currentDate") Date currentDate
		);
	
	@Query(value = "SELECT dt_farmag_plot_management.* FROM dt_farmag_plot_management WHERE "
			+ "dt_farmag_plot_management.REG_ENTITY_FARM_PLOT_ID = :plotId AND "
			+ "dt_farmag_plot_management.CL_PLOT_ACTIVITY_TYPE_ID = :activityId AND "
			+ "dt_farmag_plot_management.ACTIVITY_START_DATE = :startDate AND "
			+ "dt_farmag_plot_management.ACTIVITY_END_DATE = :endDate", nativeQuery = true)
	DTFarmPlotActivity findPlotActivityByPlotAndActivity(
			@Param("plotId") Long plotId,
			@Param("activityId") Long activityId,
			@Param("startDate") Date startDate,
			@Param("endDate") Date endDate
		);
	
	List<DTFarmPlotActivity> findTop5ByOrderByCreatedAtDesc();

	List<DTFarmPlotActivity> findByPlotIdOrderByCreatedAtAsc(Long plotId);

	@Override
	@Query(value = "SELECT * FROM dt_farmag_plot_management where ID = :id LIMIT  1", nativeQuery = true)
	DTFarmPlotActivity getOne(@Param("id") Long id);
}
