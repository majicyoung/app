package com.fairagora.verifik8.v8web.data.repo.dt;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondProductionCycle;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.websocket.server.PathParam;
import javax.xml.crypto.Data;
import java.util.Date;

public interface DTFarmPondProductionCycleRepository extends JpaRepository<DTFarmPondProductionCycle, Long> {

	DTFarmPondProductionCycle findByRegEntityFarmPondId(Long regEntityFarmPondId);

	@Query(value = "SELECT dt_farmaq_pond_production_cycle.* FROM dt_farmaq_pond_production_cycle where :productionDate >= dt_farmaq_pond_production_cycle.PRODUCTION_CYCLE_START AND ( dt_farmaq_pond_production_cycle.PRODUCTION_CYCLE_END IS  NULL  OR :productionDate <= dt_farmaq_pond_production_cycle.PRODUCTION_CYCLE_END ) AND dt_farmaq_pond_production_cycle.REG_ENTITY_FARM_POND_ID = :pondId LIMIT  1", nativeQuery = true)
	DTFarmPondProductionCycle getBetweenDate(@Param("pondId") Long pondId, @Param("productionDate") Date productionDate);

	@Query(value = "SELECT (COUNT(*) > 0) as in_production FROM dt_farmaq_pond_production_cycle WHERE dt_farmaq_pond_production_cycle.PRODUCTION_CYCLE_START IS NOT NULL AND ( dt_farmaq_pond_production_cycle.PRODUCTION_CYCLE_END IS NULL ) AND dt_farmaq_pond_production_cycle.REG_ENTITY_FARM_POND_ID = :pondId ORDER BY dt_farmaq_pond_production_cycle.PRODUCTION_CYCLE_START ASC LIMIT  1", nativeQuery = true)
	String getPondIsInProduction(@Param("pondId") Long pondId);

	@Query(value = "SELECT FEEDING_VALUE as in_production FROM dt_farmaq_pond_production_cycle WHERE dt_farmaq_pond_production_cycle.PRODUCTION_CYCLE_START IS NOT NULL AND ( dt_farmaq_pond_production_cycle.PRODUCTION_CYCLE_END IS NULL ) AND dt_farmaq_pond_production_cycle.REG_ENTITY_FARM_POND_ID = :pondId ORDER BY dt_farmaq_pond_production_cycle.PRODUCTION_CYCLE_START ASC LIMIT  1", nativeQuery = true)
	String getFeedQuantitySinceStocking(@Param("pondId") Long pondId);

	@Query(value = "SELECT COALESCE(MAX(dt_farmaq_pond_production_cycle.PRODUCTION_CYCLE_NUMBER ), 0) FROM dt_farmaq_pond_production_cycle where dt_farmaq_pond_production_cycle.REG_ENTITY_FARM_POND_ID = :pondId", nativeQuery = true)
	Integer getLastProductionCycleNumber(@Param("pondId") Long pondId);

}
