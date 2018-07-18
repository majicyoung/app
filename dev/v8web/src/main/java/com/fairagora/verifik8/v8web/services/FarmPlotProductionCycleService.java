package com.fairagora.verifik8.v8web.services;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotProductionCycle;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPlotProductionCycleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.Date;

import static java.lang.Boolean.FALSE;
import static java.lang.Boolean.TRUE;

@Component
public class FarmPlotProductionCycleService {

	@Autowired
	private JdbcTemplate jdbc;

	@Autowired
	private DTFarmPlotProductionCycleRepository dtFarmPlotProductionCycleRepository;


	public void updatePlotProductionCycle(DTFarmPlotActivity dtFarmPlotActivity) {
		DTFarmPlotProductionCycle dtFarmPlotProductionCycle = getDtFarmPlotProductionCycle(dtFarmPlotActivity);
		if (dtFarmPlotProductionCycle == null) {
			dtFarmPlotProductionCycle = new DTFarmPlotProductionCycle();
		}
		switch (dtFarmPlotActivity.getActivityType().getCode()) {
			case "SOWI":
				dtFarmPlotProductionCycle.setSeedQuantity(dtFarmPlotActivity.getMeasure().getQuantity());
				dtFarmPlotProductionCycle.setClSeedQuantityUnit(dtFarmPlotActivity.getMeasure().getUnit());
				dtFarmPlotProductionCycle.setProductionCycleStart(dtFarmPlotActivity.getActivityStartDate());
				dtFarmPlotProductionCycle.setRegEntityFarmPlot(dtFarmPlotActivity.getPlot());
				dtFarmPlotProductionCycle.setClRefCommodities(dtFarmPlotActivity.getPlot().getCommodities());
				dtFarmPlotProductionCycle.setProductionCycleNumber(getLatestCycleNumber(dtFarmPlotActivity) + 1);
				break;
			case "HARV1":
			case "HARV2":
			case "HARV3":
				dtFarmPlotProductionCycle.setHarvestedQuantity(dtFarmPlotActivity.getMeasure().getQuantity());
				dtFarmPlotProductionCycle.setClHarvestedQuantityUnit(dtFarmPlotActivity.getMeasure().getUnit());
				dtFarmPlotProductionCycle.setProductionCycleEnd(dtFarmPlotActivity.getActivityStartDate());
				break;
			case "FERT":
				dtFarmPlotProductionCycle.addFertilizersValue(dtFarmPlotActivity.getMeasure().getQuantity());
				dtFarmPlotProductionCycle.setClFertilizersQuantityUnit(dtFarmPlotActivity.getMeasure().getUnit());
				break;
			case "PEST":
				dtFarmPlotProductionCycle.addPesticitesQuantity(dtFarmPlotActivity.getMeasure().getQuantity());
				dtFarmPlotProductionCycle.setClPesticidesQuantityUnit(dtFarmPlotActivity.getMeasure().getUnit());
				dtFarmPlotProductionCycle.setUsePesticitesInCycle(TRUE);
			case "HERB":
				dtFarmPlotProductionCycle.addHerbicidesQuantity(dtFarmPlotActivity.getMeasure().getQuantity());
				dtFarmPlotProductionCycle.setClHerbicidesQuantityUnit(dtFarmPlotActivity.getMeasure().getUnit());
				dtFarmPlotProductionCycle.setUseHerbicidesInCycle(TRUE);
				break;
		}
		dtFarmPlotProductionCycleRepository.save(dtFarmPlotProductionCycle);
	}

	public void rollbackPlotProductionCycle(DTFarmPlotActivity dtFarmPlotActivity){
		DTFarmPlotProductionCycle dtFarmPlotProductionCycle = getDtFarmPlotProductionCycle(dtFarmPlotActivity);
		if (dtFarmPlotProductionCycle == null) { return; }
		switch (dtFarmPlotActivity.getActivityType().getCode()) {
			case "SOWI":
				dtFarmPlotProductionCycleRepository.delete(dtFarmPlotProductionCycle);
				return;
			case "HARV1":
			case "HARV2":
			case "HARV3":
				dtFarmPlotProductionCycle.setHarvestedQuantity(null);
				dtFarmPlotProductionCycle.setClHarvestedQuantityUnit(null);
				dtFarmPlotProductionCycle.setProductionCycleEnd(null);
				break;
			case "FERT":
				dtFarmPlotProductionCycle.removeFertilizersValue(dtFarmPlotActivity.getMeasure().getQuantity());
				if (dtFarmPlotProductionCycle.getFertilizersQuantity() != null && dtFarmPlotProductionCycle.getFertilizersQuantity() <= 0) {
					dtFarmPlotProductionCycle.setClFertilizersQuantityUnit(null);
				}
				break;
			case "PEST":
				dtFarmPlotProductionCycle.removePesticitesQuantity(dtFarmPlotActivity.getMeasure().getQuantity());
				if (dtFarmPlotProductionCycle.getPesticidesQuantity() != null && dtFarmPlotProductionCycle.getPesticidesQuantity() <= 0) {
					dtFarmPlotProductionCycle.setClPesticidesQuantityUnit(null);
					dtFarmPlotProductionCycle.setUsePesticitesInCycle(FALSE);
				}
				break;
			case "HERB":
				dtFarmPlotProductionCycle.removeHerbicidesQuantity(dtFarmPlotActivity.getMeasure().getQuantity());
				if (dtFarmPlotProductionCycle.getHerbicidesQuantity() != null && dtFarmPlotProductionCycle.getHerbicidesQuantity() <= 0) {
					dtFarmPlotProductionCycle.setClHerbicidesQuantityUnit(null);
					dtFarmPlotProductionCycle.setUseHerbicidesInCycle(FALSE);
				}
				break;
		}
		dtFarmPlotProductionCycleRepository.save(dtFarmPlotProductionCycle);
	}

	public String getIsInPoduction(Long poundId){
 		return dtFarmPlotProductionCycleRepository.getPlotIsInProduction(poundId);
	}

	public DTFarmPlotProductionCycle getBetweenDate(Long pondId, Date productionDate){
		return dtFarmPlotProductionCycleRepository.getBetweenDate(pondId, productionDate);
	}

	private DTFarmPlotProductionCycle getDtFarmPlotProductionCycle(DTFarmPlotActivity dtFarmPlotActivity) {
		return dtFarmPlotProductionCycleRepository.getBetweenDate(dtFarmPlotActivity.getPlot().getId(), dtFarmPlotActivity.getActivityStartDate());
	}

	private Integer getLatestCycleNumber(DTFarmPlotActivity dtFarmPlotActivity){
		return dtFarmPlotProductionCycleRepository.getLastProductionCycleNumber(dtFarmPlotActivity.getPlot().getId());
	}
}
