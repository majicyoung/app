package com.fairagora.verifik8.v8web.data.repo.dt;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotProductionCycle;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondProductionCycle;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Date;

public interface DTFarmPlotProductionCycleRepository extends JpaRepository<DTFarmPlotProductionCycle, Long> {

	DTFarmPlotProductionCycle findByRegEntityFarmPlotId(Long regEntityFarmPlotId);

	@Query(value = "SELECT dt_farmag_plot_production_cycle.* FROM dt_farmag_plot_production_cycle where :productionDate >= dt_farmag_plot_production_cycle.PRODUCTION_CYCLE_START AND ( dt_farmag_plot_production_cycle.PRODUCTION_CYCLE_END IS  NULL  OR :productionDate <= dt_farmag_plot_production_cycle.PRODUCTION_CYCLE_END ) AND dt_farmag_plot_production_cycle.REG_ENTITY_FARM_PLOT_ID = :plotId LIMIT  1", nativeQuery = true)
	DTFarmPlotProductionCycle getBetweenDate(@Param("plotId") Long plotId, @Param("productionDate") Date productionDate);

	@Query(value = "SELECT (COUNT(*) > 0) as in_production FROM dt_farmag_plot_production_cycle WHERE dt_farmag_plot_production_cycle.PRODUCTION_CYCLE_START IS NOT NULL AND ( dt_farmag_plot_production_cycle.PRODUCTION_CYCLE_END IS NULL ) AND dt_farmag_plot_production_cycle.REG_ENTITY_FARM_POND_ID = :plotId ORDER BY dt_farmag_plot_production_cycle.PRODUCTION_CYCLE_START ASC LIMIT  1", nativeQuery = true)
	String getPlotIsInProduction(@Param("plotId") Long plotId);

	@Query(value = "SELECT FERTILIZERS_QUANTITY as in_production FROM dt_farmag_plot_production_cycle WHERE dt_farmag_plot_production_cycle.PRODUCTION_CYCLE_START IS NOT NULL AND ( dt_farmag_plot_production_cycle.PRODUCTION_CYCLE_END IS NULL ) AND dt_farmag_plot_production_cycle.REG_ENTITY_FARM_POND_ID = :plotId ORDER BY dt_farmag_plot_production_cycle.PRODUCTION_CYCLE_START ASC LIMIT  1", nativeQuery = true)
	String getFertilizerQuantitySinceStocking(@Param("plotId") Long plotId);

	@Query(value = "SELECT COALESCE(MAX(dt_farmag_plot_production_cycle.PRODUCTION_CYCLE_NUMBER ), 0) FROM dt_farmag_plot_production_cycle where dt_farmag_plot_production_cycle.REG_ENTITY_FARM_PLOT_ID = :plotId", nativeQuery = true)
	Integer getLastProductionCycleNumber(@Param("plotId") Long plotId);

}
