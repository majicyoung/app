package com.fairagora.verifik8.v8web.data.repo.dt;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;

public interface DTFarmPlotActivityRepository extends JpaRepository<DTFarmPlotActivity, Long> {

	List<DTFarmPlotActivity> findByPlotId(Long plotId);
	
	@Query(value = "SELECT dt_farmag_plot_management.* FROM dt_farmag_plot_management WHERE "
			+ "dt_farmag_plot_management.REG_ENTITY_FARM_PLOT_ID = :plotId AND "
			+ "dt_farmag_plot_management.CL_PLOT_ACTIVITY_TYPE_ID = :activityId AND "
			+ "dt_farmag_plot_management.CL_PRODUCT_ID = :productId AND "
			+ "dt_farmag_plot_management.ACTIVITY_START_DATE = :startDate AND "
			+ "dt_farmag_plot_management.ACTIVITY_END_DATE = :endDate", nativeQuery = true)
	DTFarmPlotActivity findPlotActivityByPlotAndActivity(
			@Param("plotId") Long plotId,
			@Param("activityId") Long activityId,
			@Param("productId") Long productId,
			@Param("startDate") Date startDate,
			@Param("endDate") Date endDate
		);

}
