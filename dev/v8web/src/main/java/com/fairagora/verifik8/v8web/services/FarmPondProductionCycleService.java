package com.fairagora.verifik8.v8web.services;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondProductionCycle;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondProductionCycleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.Date;

import static java.lang.Boolean.FALSE;
import static java.lang.Boolean.TRUE;

@Component
public class FarmPondProductionCycleService {

	@Autowired
	private JdbcTemplate jdbc;

	@Autowired
	private DTFarmPondProductionCycleRepository dtFarmPondProductionCycleRepository;


	public void updatePondProductionCycle(DTFarmPondActivity dtFarmPondActivity) {
		DTFarmPondProductionCycle dtFarmPondProductionCycle = getDtFarmPondProductionCycle(dtFarmPondActivity);
		if (dtFarmPondProductionCycle == null) {
			dtFarmPondProductionCycle = new DTFarmPondProductionCycle();
		}
		switch (dtFarmPondActivity.getActivityType().getCode()) {
			case "PONDSTOCK":
				dtFarmPondProductionCycle.setSeedQuantity(dtFarmPondActivity.getMeasure().getQuantity());
				dtFarmPondProductionCycle.setClSeedQuantityUnit(dtFarmPondActivity.getMeasure().getUnit());
				dtFarmPondProductionCycle.setProductionCycleStart(dtFarmPondActivity.getActivityStartDate());
				dtFarmPondProductionCycle.setRegEntityFarmPond(dtFarmPondActivity.getPond());
				dtFarmPondProductionCycle.setClRefSpecies(dtFarmPondActivity.getPond().getSpecies());
				dtFarmPondProductionCycle.setProductionCycleNumber(getLatestCycleNumber(dtFarmPondActivity) + 1);
				break;
			case "PONDHARV":
				dtFarmPondProductionCycle.setHarvestedQuantity(dtFarmPondActivity.getMeasure().getQuantity());
				dtFarmPondProductionCycle.setClHarvestedQuantityUnit(dtFarmPondActivity.getMeasure().getUnit());
				dtFarmPondProductionCycle.setProductionCycleEnd(dtFarmPondActivity.getActivityStartDate());
				break;
			case "FEEDUSE":
				dtFarmPondProductionCycle.addFeedingValue(dtFarmPondActivity.getMeasure().getQuantity());
				dtFarmPondProductionCycle.setClFeedingValueUnit(dtFarmPondActivity.getMeasure().getUnit());
				break;
			case "ANTIBIOUSE":
				dtFarmPondProductionCycle.addAntibioQuantity(dtFarmPondActivity.getMeasure().getQuantity());
				dtFarmPondProductionCycle.setClAntibioQuantityUnit(dtFarmPondActivity.getMeasure().getUnit());
				dtFarmPondProductionCycle.setUseAntibioInCycle(TRUE);
				break;
		}
		dtFarmPondProductionCycleRepository.save(dtFarmPondProductionCycle);
	}

	public void rollbackPondProductionCycle(DTFarmPondActivity dtFarmPondActivity){
		DTFarmPondProductionCycle dtFarmPondProductionCycle = getDtFarmPondProductionCycle(dtFarmPondActivity);
		if (dtFarmPondProductionCycle == null) { return; }
		switch (dtFarmPondActivity.getActivityType().getCode()) {
			case "PONDSTOCK":
				dtFarmPondProductionCycleRepository.delete(dtFarmPondProductionCycle);
				return;
			case "PONDHARV":
				dtFarmPondProductionCycle.setHarvestedQuantity(null);
				dtFarmPondProductionCycle.setClHarvestedQuantityUnit(null);
				dtFarmPondProductionCycle.setProductionCycleEnd(null);
				break;
			case "FEEDUSE":
				dtFarmPondProductionCycle.removeFeedingValue(dtFarmPondActivity.getMeasure().getQuantity());
				if (dtFarmPondProductionCycle.getFeedingValue() <= 0) {
					dtFarmPondProductionCycle.setClFeedingValueUnit(null);
				}
				break;
			case "ANTIBIOUSE":
				dtFarmPondProductionCycle.removeAntibioQuantity(dtFarmPondActivity.getMeasure().getQuantity());
				if (dtFarmPondProductionCycle.getAntibioQuantity() <= 0) {
					dtFarmPondProductionCycle.setClAntibioQuantityUnit(null);
					dtFarmPondProductionCycle.setUseAntibioInCycle(FALSE);
				}
				break;
		}
		dtFarmPondProductionCycleRepository.save(dtFarmPondProductionCycle);
	}

	public String getIsInPoduction(Long poundId){
 		return dtFarmPondProductionCycleRepository.getPondIsInProduction(poundId);
	}

	public DTFarmPondProductionCycle getBetweenDate(Long pondId, Date productionDate){
		return dtFarmPondProductionCycleRepository.getBetweenDate(pondId, productionDate);
	}

	private DTFarmPondProductionCycle getDtFarmPondProductionCycle(DTFarmPondActivity dtFarmPondActivity) {
		return dtFarmPondProductionCycleRepository.getBetweenDate(dtFarmPondActivity.getPond().getId(), dtFarmPondActivity.getActivityStartDate());
	}

	private Integer getLatestCycleNumber(DTFarmPondActivity dtFarmPondActivity){
		return dtFarmPondProductionCycleRepository.getLastProductionCycleNumber(dtFarmPondActivity.getPond().getId());
	}
}
