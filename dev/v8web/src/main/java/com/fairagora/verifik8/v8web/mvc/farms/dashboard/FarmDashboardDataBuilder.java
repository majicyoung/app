package com.fairagora.verifik8.v8web.mvc.farms.dashboard;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;

import com.fairagora.verifik8.v8web.config.helper.BooleanHelper;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppMeasureType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPlotActivityType;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPlot;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppMeasureTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLFarmPlotActivityTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPlotActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPlotProductionCycleRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondProductionCycleRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPlotRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class FarmDashboardDataBuilder {

	@Autowired
	private JdbcTemplate jdbc;

	@Autowired
	private RegEntityFarmPondRepository regEntityFarmPondRepository;

	@Autowired
	private RegEntityFarmPlotRepository regEntityFarmPlotRepository;

	@Autowired
	private CLAppMeasureTypeRepository clAppMeasureTypeRepository;

	@Autowired
	private DTFarmPondProductionCycleRepository dtFarmPondProductionCycleRepository;
	@Autowired
	private DTFarmPlotProductionCycleRepository dtFarmPlotProductionCycleRepository;
	@Autowired
	private CLFarmPlotActivityTypeRepository clFarmPlotActivityTypeRepository;

	public FarmDashboardDto get(Long farmId) {
		FarmDashboardDto dash = new FarmDashboardDto();

		// build top KPIs
		buildTopKpis(dash, farmId);

		buildTimeSeries(dash, farmId);

		AqProdCurrentYear(dash, farmId);

		buildPoundTable(dash, farmId);

		buildPlotTable(dash, farmId);

		return dash;
	}

	public List<FarmDashboardChartSelector> getPoundList(Long farmId) {
		List<FarmDashboardChartSelector> farmDashboardChartSelectors = new ArrayList<>();
		for (RegEntityFarmPond regEntityFarmPond : regEntityFarmPondRepository.findByFarmId(farmId)) {
			farmDashboardChartSelectors.add(new FarmDashboardChartSelector(regEntityFarmPond.getId(), regEntityFarmPond.getDescription()));
		}
		return farmDashboardChartSelectors;
	}


	private void buildTimeSeries(FarmDashboardDto dash, Long farmId) {
		FarmDashboardTimeSeries ts = new FarmDashboardTimeSeries<>();
		ts.setKey("kpi1");
		dash.getTimeSeries().add(ts);

		ts.getValues().add(new ArrayList<Integer>());
		ts.getValues().add(new ArrayList<Integer>());

		ts.getSeries().add("Farms");
		ts.getSeries().add("Plots");

		LocalDate d = LocalDate.now().minusMonths(12);
		while (d.isBefore(LocalDate.now().plusMonths(1))) {
			ts.getLabels().add(d.format(DateTimeFormatter.ofPattern("MMM yy")));

			String m = d.format(DateTimeFormatter.ofPattern("M"));
			String y = d.format(DateTimeFormatter.ofPattern("yyyy"));

			String sql1 = "SELECT count(ID) FROM reg_entities WHERE CL_ENTITY_UID_TYPE_ID=2 AND CREATED_AT < '"
					+ d.format(DateTimeFormatter.ofPattern("yyyy-MM-dd")) + "'";

			String sql2 = "SELECT count(ID) FROM reg_entity_farmag_plots WHERE  CREATED_AT < '"
					+ d.format(DateTimeFormatter.ofPattern("yyyy-MM-dd")) + "'";

			((List<Integer>) ts.getValues().get(0)).add(jdbc.queryForObject(sql1, Integer.class));
			((List<Integer>) ts.getValues().get(1)).add(jdbc.queryForObject(sql2, Integer.class));

			d = d.plusMonths(1);
		}

	}


	private void AqProdCurrentYear(FarmDashboardDto dash, Long farmId) {
		FarmDashboardTimeSeries ts = new FarmDashboardTimeSeries<>();
		ts.setKey("AqProd");
		dash.getTimeSeries().add(ts);
		ts.getValues().add(new ArrayList<Integer>());
		ts.getValues().add(new ArrayList<Integer>());
		ts.getSeries().add("harvesting");
		ts.getSeries().add("Ponds");
		LocalDate d = LocalDate.now().minusMonths(12);
		while (d.isBefore(LocalDate.now().plusMonths(1))) {
			ts.getLabels().add(d.format(DateTimeFormatter.ofPattern("MMM yy")));
			String m = d.format(DateTimeFormatter.ofPattern("M"));
			String sql1 = "SELECT SUM(CONVERT(MEASURE_VALUE, SIGNED INTEGER)) FROM dt_farmaq_pond_management WHERE ACTIVITY_END_DATE < '"
					+ d.format(DateTimeFormatter.ofPattern("yyyy-MM-dd")) + "' AND CL_POND_ACTIVITY_TYPE_ID = 2 AND REG_ENTITY_FARM_POND_ID in (SELECT ID FROM reg_entity_farmaq_ponds where REG_ENTITY_FARM_ID= " + farmId + ")";

			String sql2 = "SELECT count(ID) FROM reg_entity_farmaq_ponds WHERE  CREATED_AT < '"
					+ d.format(DateTimeFormatter.ofPattern("yyyy-MM-dd")) + "' AND REG_ENTITY_FARM_ID = " + farmId;
			((List<Integer>) ts.getValues().get(0)).add(jdbc.queryForObject(sql1, Integer.class));
			((List<Integer>) ts.getValues().get(1)).add(jdbc.queryForObject(sql2, Integer.class));
			d = d.plusMonths(1);
		}

	}


	private void buildTopKpis(FarmDashboardDto dash, Long farmId) {
		LocalDate d = LocalDate.now();
		String y = d.format(DateTimeFormatter.ofPattern("yyyy"));

		dash.getTopKpis().add(new FarmDashboardTopKpi<Integer>().setup("Number of Farms", "nbfarms", jdbc
				.queryForObject("SELECT count(ID) FROM reg_entities WHERE CL_ENTITY_UID_TYPE_ID=2 AND ID=" + farmId, Integer.class)));

		dash.getTopKpis().add(new FarmDashboardTopKpi<Integer>().setup("Total Area", "totArea", jdbc
				.queryForObject("SELECT SUM(POND_SIZE) FROM reg_entity_farmaq_ponds WHERE REG_ENTITY_FARM_ID=" + farmId, Integer.class)));

		dash.getTopKpis().add(new FarmDashboardTopKpi<Integer>().setup("Number of Ponds", "nbPonds",
				jdbc.queryForObject("SELECT count(ID) FROM reg_entity_farmaq_ponds WHERE REG_ENTITY_FARM_ID= " + farmId, Integer.class)));

		dash.getTopKpis().add(new FarmDashboardTopKpi<Integer>().setup("Number Active of Ponds", "nbActivePonds",
				getNumberOfActivePound(farmId)));

		dash.getTopKpis().add(new FarmDashboardTopKpi<Integer>().setup("Number of Plots", "nbPlots",
				jdbc.queryForObject("SELECT count(ID) FROM reg_entity_farmag_plots WHERE REG_ENTITY_FARM_ID= " + farmId, Integer.class)));

		dash.getTopKpis().add(new FarmDashboardTopKpi<Integer>().setup("Number Active of Ponds", "nbActivePlots",
				getNumberOfActivePlot(farmId)));

		dash.getTopKpis().add(new FarmDashboardTopKpi<Integer>().setup("Total Production in " + y, "totalProductionAq",
				jdbc.queryForObject("SELECT SUM(CONVERT(PRODUCTION_QUANTITY, SIGNED INTEGER)) FROM `dt_farmaq_production` WHERE YEAR(DATE_FROM) >= " + y + "  AND REG_ENTITY_FARM_ID=" + farmId, Integer.class)));

		dash.getTopKpis().add(new FarmDashboardTopKpi<Integer>().setup("Total Production in " + y, "totalProductionAg",
				jdbc.queryForObject("SELECT SUM(CONVERT(PRODUCTION_QUANTITY, SIGNED INTEGER)) FROM `dt_farmag_production` WHERE YEAR(DATE_FROM) >= " + y + " AND REG_ENTITY_FARM_ID=" + farmId, Integer.class)));

		dash.getTopKpis().add(new FarmDashboardTopKpi<Integer>().setup("Employees", "nbEmployees",
				jdbc.queryForObject("SELECT count(*) FROM reg_entity_staff WHERE REG_ENTITY_FARM_ID=" + farmId, Integer.class)));

	}

	private Integer getNumberOfActivePound(Long farmId) {
		int activeCount = 0;
		for (RegEntityFarmPond regEntityFarmPond : regEntityFarmPondRepository.findByFarmId(farmId)) {
			if (BooleanHelper.parseBoolean(getPondActive(regEntityFarmPond.getId()))) {
				activeCount++;
			}
		}
		return activeCount;
	}

	private Integer getNumberOfActivePlot(Long farmId) {
		int activeCount = 0;
		for (RegEntityFarmPlot regEntityFarmPlot: regEntityFarmPlotRepository.findByFarmId(farmId)) {
			if (BooleanHelper.parseBoolean(getPondActive(regEntityFarmPlot.getId()))) {
				activeCount++;
			}
		}
		return activeCount;
	}

	private void buildPoundTable(FarmDashboardDto dash, Long farmId) {
		for (RegEntityFarmPond regEntityFarmPond : regEntityFarmPondRepository.findByFarmId(farmId)) {
			FarmDashboardPond farmDashboardPond = new FarmDashboardPond();
			farmDashboardPond.setPoundId(regEntityFarmPond.getNumber());
			farmDashboardPond.setArea(regEntityFarmPond.getSize().toString());
			try {
				farmDashboardPond.setStockingDate(jdbc.queryForObject("SELECT max(dt_farmaq_pond_management.ACTIVITY_START_DATE) FROM dt_farmaq_pond_management where dt_farmaq_pond_management.REG_ENTITY_FARM_POND_ID = " + regEntityFarmPond.getId() + " AND dt_farmaq_pond_management.CL_POND_ACTIVITY_TYPE_ID = 1", String.class));
			} catch (DataAccessException e) {
				farmDashboardPond.setStockingDate("n/a");
			}

			try {
				farmDashboardPond.setStockingQuantity(jdbc.queryForObject("SELECT a.MEASURE_VALUE FROM (SELECT dt_farmaq_pond_management.MEASURE_VALUE, max(dt_farmaq_pond_management.ACTIVITY_START_DATE) FROM dt_farmaq_pond_management where dt_farmaq_pond_management.REG_ENTITY_FARM_POND_ID = " + regEntityFarmPond.getId() + " AND dt_farmaq_pond_management.CL_POND_ACTIVITY_TYPE_ID = 1) AS a", String.class));
			} catch (DataAccessException e) {
				farmDashboardPond.setStockingQuantity("n/a");
			}

			try {
				farmDashboardPond.setInProduction(getPondActive(regEntityFarmPond.getId()));
			} catch (DataAccessException e) {
				farmDashboardPond.setInProduction("n/a");
			}

			try {
				farmDashboardPond.setFeedQuantity(dtFarmPondProductionCycleRepository.getFeedQuantitySinceStocking(regEntityFarmPond.getId()));
			} catch (DataAccessException e) {
				farmDashboardPond.setInProduction("n/a");
			}

			farmDashboardPond.setMortalityRate("n/a");
			farmDashboardPond.setDisease("n/a");

			try {
				farmDashboardPond.setAntibioticsUse(jdbc.queryForObject("SELECT count(*) FROM dt_farmaq_pond_management where dt_farmaq_pond_management.REG_ENTITY_FARM_POND_ID = " + regEntityFarmPond.getId() + " AND dt_farmaq_pond_management.CL_POND_ACTIVITY_TYPE_ID = 5", String.class));
			} catch (DataAccessException e) {
				farmDashboardPond.setAntibioticsUse("n/a");
			}
			dash.getPondSeries().add(farmDashboardPond);

		}

	}
	private void buildPlotTable(FarmDashboardDto dash, Long farmId) {
		for (RegEntityFarmPlot regEntityFarmPlot: regEntityFarmPlotRepository.findByFarmId(farmId)) {
			FarmDashboardPlot farmDashboardPlot= new FarmDashboardPlot();
			farmDashboardPlot.setPlotId(regEntityFarmPlot.getNumber());
			farmDashboardPlot.setArea(regEntityFarmPlot.getSize().toString());
			try {
				farmDashboardPlot.setSowingDate(jdbc.queryForObject("SELECT max(dt_farmag_plot_management.ACTIVITY_START_DATE) FROM dt_farmag_plot_management where dt_farmag_plot_management.REG_ENTITY_FARM_PLOT_ID = " + regEntityFarmPlot.getId() + " AND dt_farmag_plot_management.CL_PLOT_ACTIVITY_TYPE_ID = 1", String.class));
			} catch (DataAccessException e) {
				farmDashboardPlot.setSowingDate("n/a");
			}

			try {
				farmDashboardPlot.setSowingQuantity(jdbc.queryForObject("SELECT a.MEASURE_VALUE FROM (SELECT dt_farmag_plot_management.MEASURE_VALUE, max(dt_farmag_plot_management.ACTIVITY_START_DATE) FROM dt_farmag_plot_management where dt_farmag_plot_management.REG_ENTITY_FARM_PLOT_ID = " + regEntityFarmPlot.getId() + " AND dt_farmag_plot_management.CL_PLOT_ACTIVITY_TYPE_ID= 1) AS a", String.class));
			} catch (DataAccessException e) {
				farmDashboardPlot.setSowingQuantity("n/a");
			}

			try {
				farmDashboardPlot.setInProduction(getPlotActive(regEntityFarmPlot.getId()));
			} catch (DataAccessException e) {
				farmDashboardPlot.setInProduction("n/a");
			}

			try {
				farmDashboardPlot.setFertilizationQuantity(dtFarmPlotProductionCycleRepository.getFertilizerQuantitySinceStocking(regEntityFarmPlot.getId()));
			} catch (DataAccessException e) {
				farmDashboardPlot.setInProduction("n/a");
			}

			farmDashboardPlot.setMortalityRate("n/a");
			farmDashboardPlot.setDisease("n/a");

			try {
				farmDashboardPlot.setPesticideUse(jdbc.queryForObject("SELECT count(*) FROM dt_farmag_plot_management where dt_farmag_plot_management.REG_ENTITY_FARM_PLOT_ID = " + regEntityFarmPlot.getId() + " AND ( dt_farmag_plot_management.CL_PLOT_ACTIVITY_TYPE_ID = 7 OR dt_farmag_plot_management.CL_PLOT_ACTIVITY_TYPE_ID = 8 OR dt_farmag_plot_management.CL_PLOT_ACTIVITY_TYPE_ID = 9 ) ", String.class));
			} catch (DataAccessException e) {
				farmDashboardPlot.setPesticideUse("n/a");
			}
			dash.getPlotSeries().add(farmDashboardPlot);

		}

	}

	public List<FarmDashboardChartSelector> getPoundInitilizeChartList(Long farmId) {
		List<FarmDashboardChartSelector> farmDashboardChartSelectors = new ArrayList<>();
		regEntityFarmPondRepository.findByFarmId(farmId).stream()
				.filter(regEntityFarmPond -> regEntityFarmPond.getType().getId() == 2)
				.limit(4)
				.forEach(regEntityFarmPond -> farmDashboardChartSelectors.add(new FarmDashboardChartSelector(regEntityFarmPond.getId(), regEntityFarmPond.getName())));
		return farmDashboardChartSelectors;
	}

	public List<FarmDashboardChartSelector> getPlotInitilizeChartList(Long farmId) {
		List<FarmDashboardChartSelector> farmDashboardChartSelectors = new ArrayList<>();
		regEntityFarmPlotRepository.findByFarmId(farmId).stream()
				.limit(4)
				.forEach(regEntityFarmPlot -> farmDashboardChartSelectors.add(new FarmDashboardChartSelector(regEntityFarmPlot.getId(), regEntityFarmPlot.getName())));
		return farmDashboardChartSelectors;
	}

	public List<FarmDashboardChartSelector> getPoundChartList(Long farmId) {
		List<FarmDashboardChartSelector> farmDashboardChartSelectors = new ArrayList<>();
		for (RegEntityFarmPond regEntityFarmPond : regEntityFarmPondRepository.findByFarmId(farmId)) {
			farmDashboardChartSelectors.add(new FarmDashboardChartSelector(regEntityFarmPond.getId(), regEntityFarmPond.getName()));
		}
		return farmDashboardChartSelectors;
	}

	public List<FarmDashboardChartSelector> getPlotChartList(Long farmId) {
		List<FarmDashboardChartSelector> farmDashboardChartSelectors = new ArrayList<>();
		for (RegEntityFarmPlot regEntityFarmPlot : regEntityFarmPlotRepository.findByFarmId(farmId)) {
			farmDashboardChartSelectors.add(new FarmDashboardChartSelector(regEntityFarmPlot.getId(), regEntityFarmPlot.getName()));
		}
		return farmDashboardChartSelectors;
	}

	/**
	 * Get the pond productions array by pound and date selected.
	 *
	 * @param startDate start date of query.
	 * @param endDate   end date of query.
	 * @param poundIds  ponds we want to query.
	 * @return query result.
	 */
	public Map<String, Map<String, Double>> getPoundProduction(Long farmId, String startDate, String endDate, String[] poundIds) {
		Map<String, Map<String, Double>> productionsArray = new HashMap<>(new HashMap<>());
		String poundIdsString = String.join(" or REG_ENTITY_FARM_POND_ID= ", poundIds);
		List<Map<String, Object>> queryList = jdbc.queryForList("SELECT REG_ENTITY_FARM_POND_ID, SUM(MEASURE_VALUE), DATE(ACTIVITY_START_DATE) FROM dt_farmaq_pond_management WHERE CL_POND_ACTIVITY_TYPE_ID=2  AND (REG_ENTITY_FARM_POND_ID= " + poundIdsString + " ) AND ACTIVITY_START_DATE >= STR_TO_DATE('" + startDate + "', '%Y-%m-%d') AND ACTIVITY_START_DATE <= STR_TO_DATE('" + endDate + "', '%Y-%m-%d') GROUP BY REG_ENTITY_FARM_POND_ID , DATE(ACTIVITY_START_DATE)");
		for (Map<String, Object> stringObjectMap : queryList) {
			String activityDate = stringObjectMap.get("DATE(ACTIVITY_START_DATE)").toString();
			Double measureValue = (Double) stringObjectMap.get("SUM(MEASURE_VALUE)");
			String farmPoundId = stringObjectMap.get("REG_ENTITY_FARM_POND_ID").toString();
			if (!productionsArray.containsKey(activityDate)) {
				productionsArray.put(activityDate, new HashMap<>());
			}
			productionsArray.get(activityDate).put(farmPoundId, measureValue);
		}
		return productionsArray;
	}

	/**
	 * Get the plots productions array by pound and date selected.
	 *
	 * @param startDate start date of query.
	 * @param endDate   end date of query.
	 * @param plotIds  plots we want to query.
	 * @return query result.
	 */
	public Map<String, Map<String, Double>> getPlotProduction(Long farmId, String startDate, String endDate, String[] plotIds) {
		Map<String, Map<String, Double>> productionsArray = new HashMap<>(new HashMap<>());
		String plotIdsString = String.join(" or REG_ENTITY_FARM_PLOT_ID= ", plotIds);
		List<Map<String, Object>> queryList = jdbc.queryForList("SELECT REG_ENTITY_FARM_PLOT_ID, SUM(MEASURE_VALUE), DATE(ACTIVITY_START_DATE) FROM dt_farmag_plot_management WHERE (CL_PLOT_ACTIVITY_TYPE_ID=3 OR CL_PLOT_ACTIVITY_TYPE_ID=4  OR CL_PLOT_ACTIVITY_TYPE_ID=5 )  AND (REG_ENTITY_FARM_PLOT_ID= " + plotIdsString + " ) AND ACTIVITY_START_DATE >= STR_TO_DATE('" + startDate + "', '%Y-%m-%d') AND ACTIVITY_START_DATE <= STR_TO_DATE('" + endDate + "', '%Y-%m-%d') GROUP BY REG_ENTITY_FARM_PLOT_ID , DATE(ACTIVITY_START_DATE)");
		for (Map<String, Object> stringObjectMap : queryList) {
			String activityDate = stringObjectMap.get("DATE(ACTIVITY_START_DATE)").toString();
			Double measureValue = (Double) stringObjectMap.get("SUM(MEASURE_VALUE)");
			String farmPlotId = stringObjectMap.get("REG_ENTITY_FARM_PLOT_ID").toString();
			if (!productionsArray.containsKey(activityDate)) {
				productionsArray.put(activityDate, new HashMap<>());
			}
			productionsArray.get(activityDate).put(farmPlotId, measureValue);
		}
		return productionsArray;
	}


	/**
	 * Get Date list of the productions we are looking for.
	 *
	 * @param startDate start date of query.
	 * @param endDate   end date of query.
	 * @param poundIds  ponds we want to query.
	 * @return list of dates.
	 */
	public List<String> getPoundProductionDate(Long farmId, String startDate, String endDate, String[] poundIds) {
		String poundIdsString = String.join(" or REG_ENTITY_FARM_POND_ID= ", poundIds);
		return jdbc.queryForList("SELECT DATE(ACTIVITY_START_DATE) FROM dt_farmaq_pond_management WHERE CL_POND_ACTIVITY_TYPE_ID=2  AND (REG_ENTITY_FARM_POND_ID= " + poundIdsString + " ) AND ACTIVITY_START_DATE >= STR_TO_DATE('" + startDate + "', '%Y-%m-%d') AND ACTIVITY_START_DATE <= STR_TO_DATE('" + endDate + "', '%Y-%m-%d') GROUP BY DATE(ACTIVITY_START_DATE)", String.class);
	}


	/**
	 * Get Date list of the plots productions we are looking for.
	 *
	 * @param startDate start date of query.
	 * @param endDate   end date of query.
	 * @param plotIds  plots we want to query.
	 * @return list of dates.
	 */
	public List<String> getPlotProductionDate(Long farmId, String startDate, String endDate, String[] plotIds) {
		String plotIdsString = String.join(" or REG_ENTITY_FARM_PLOT_ID= ", plotIds);
		return jdbc.queryForList("SELECT DATE(ACTIVITY_START_DATE) FROM dt_farmag_plot_management WHERE (CL_PLOT_ACTIVITY_TYPE_ID=3 OR CL_PLOT_ACTIVITY_TYPE_ID=4  OR CL_PLOT_ACTIVITY_TYPE_ID=5 )  AND (REG_ENTITY_FARM_PLOT_ID= " + plotIdsString + " ) AND ACTIVITY_START_DATE >= STR_TO_DATE('" + startDate + "', '%Y-%m-%d') AND ACTIVITY_START_DATE <= STR_TO_DATE('" + endDate + "', '%Y-%m-%d') GROUP BY DATE(ACTIVITY_START_DATE)", String.class);
	}

	/**
	 * Query the List of measurement type the graph can query.
	 *
	 * @return list of water type selector.
	 */
	public List<FarmDashboardChartSelector> getPoundWaterMeasureType() {
		List<FarmDashboardChartSelector> farmDashboardChartSelectors = new ArrayList<>();
		for (CLAppMeasureType clAppMeasureType : clAppMeasureTypeRepository.findAll()) {
			farmDashboardChartSelectors.add(new FarmDashboardChartSelector(clAppMeasureType.getId(), clAppMeasureType.getDescription()));
		}
		return farmDashboardChartSelectors;
	}
	/**
	 * Query the List of measurement type the graph can query.
	 *
	 * @return list of water type selector.
	 */
	public List<FarmDashboardChartSelector> getPlotPesticideMeasureType() {
		Long activityIds[] = {7L, 8L};
		List<FarmDashboardChartSelector> farmDashboardChartSelectors = new ArrayList<>();
		for (CLFarmPlotActivityType clFarmPlotActivityType: clFarmPlotActivityTypeRepository.findAll(Arrays.asList(activityIds))) {
			farmDashboardChartSelectors.add(new FarmDashboardChartSelector(clFarmPlotActivityType.getId(), clFarmPlotActivityType.getDescription()));
		}
		return farmDashboardChartSelectors;
	}

	/**
	 * Get Date list of the measure we are looking for.
	 *
	 * @param startDate start date of query.
	 * @param endDate   end date of query.
	 * @param poundIds  ponds we want to query.
	 * @param measureId measure type we want to query.
	 * @return list of dates.
	 */
	public List<String> getPoundWaterMeasureDate(String startDate, String endDate, String[] poundIds, String measureId) {
		String poundIdsString = String.join(" or REG_ENTITY_FARM_POND_ID= ", poundIds);
		return jdbc.queryForList("SELECT DATE(MEASURE_DATE) FROM dt_farmaq_pond_measurements WHERE CL_MEASURE_TYPE_ID=" + measureId + "  AND (REG_ENTITY_FARM_POND_ID= " + poundIdsString + " ) AND MEASURE_DATE >= STR_TO_DATE('" + startDate + "', '%Y-%m-%d') AND MEASURE_DATE <= STR_TO_DATE('" + endDate + "', '%Y-%m-%d') GROUP BY DATE(MEASURE_DATE)", String.class);
	}

	/**
	 * Get list of measure for water quality.
	 *
	 * @param startDate start date of query.
	 * @param endDate   end date of query.
	 * @param poundIds  ponds we want to query.
	 * @param measureId measure type we want to query.
	 * @return query result.
	 */
	public Map<String, Map<String, Double>> getPoundWaterMeasures(String startDate, String endDate, String[] poundIds, String measureId) {
		Map<String, Map<String, Double>> productionsArray = new HashMap<>(new HashMap<>());
		String poundIdsString = String.join(" or REG_ENTITY_FARM_POND_ID= ", poundIds);
		List<Map<String, Object>> queryList = jdbc.queryForList("SELECT REG_ENTITY_FARM_POND_ID, SUM(MEASURE_VALUE), DATE(MEASURE_DATE) FROM dt_farmaq_pond_measurements WHERE CL_MEASURE_TYPE_ID=" + measureId + "  AND (REG_ENTITY_FARM_POND_ID= " + poundIdsString + " ) AND MEASURE_DATE >= STR_TO_DATE('" + startDate + "', '%Y-%m-%d') AND MEASURE_DATE <= STR_TO_DATE('" + endDate + "', '%Y-%m-%d') GROUP BY REG_ENTITY_FARM_POND_ID , DATE(MEASURE_DATE)");
		for (Map<String, Object> stringObjectMap : queryList) {
			String activityDate = stringObjectMap.get("DATE(MEASURE_DATE)").toString();
			Double measureValue = (Double) stringObjectMap.get("SUM(MEASURE_VALUE)");
			String farmPoundId = stringObjectMap.get("REG_ENTITY_FARM_POND_ID").toString();
			if (!productionsArray.containsKey(activityDate)) {
				productionsArray.put(activityDate, new HashMap<>());
			}
			productionsArray.get(activityDate).put(farmPoundId, measureValue);
		}
		return productionsArray;
	}



	/**
	 * Get Date list of the measure we are looking for.
	 *
	 * @param startDate start date of query.
	 * @param endDate   end date of query.
	 * @param plotIds  plots we want to query.
	 * @param activityId activity type we want to query.
	 * @return list of dates.
	 */
	public List<String> getPlotPesticideMeasureDate(String startDate, String endDate, String[] plotIds, String activityId) {
		String plotIdsString = String.join(" or REG_ENTITY_FARM_POND_ID= ", plotIds);
		return jdbc.queryForList("SELECT DATE(ACTIVITY_START_DATE) FROM dt_farmag_plot_management WHERE CL_PLOT_ACTIVITY_TYPE_ID=" + activityId + "  AND (REG_ENTITY_FARM_PLOT_ID= " + plotIdsString + " ) AND ACTIVITY_START_DATE >= STR_TO_DATE('" + startDate + "', '%Y-%m-%d') AND ACTIVITY_END_DATE <= STR_TO_DATE('" + endDate + "', '%Y-%m-%d') GROUP BY DATE(ACTIVITY_START_DATE)", String.class);
	}

	/**
	 * Get list of measure for peticides use.
	 *
	 * @param startDate start date of query.
	 * @param endDate   end date of query.
	 * @param plotIds  plots we want to query.
	 * @param activityId activity type we want to query.
	 * @return query result.
	 */
	public Map<String, Map<String, Double>> getPlotPesticideMeasures(String startDate, String endDate, String[] plotIds, String activityId) {
		Map<String, Map<String, Double>> productionsArray = new HashMap<>(new HashMap<>());
		String plotIdsString = String.join(" or REG_ENTITY_FARM_PLOT_ID= ", plotIds);
		List<Map<String, Object>> queryList = jdbc.queryForList("SELECT REG_ENTITY_FARM_PLOT_ID, SUM(MEASURE_VALUE), DATE(ACTIVITY_START_DATE) FROM dt_farmag_plot_management WHERE CL_PLOT_ACTIVITY_TYPE_ID=" + activityId + "  AND (REG_ENTITY_FARM_PLOT_ID= " + plotIdsString + " ) AND ACTIVITY_START_DATE >= STR_TO_DATE('" + startDate + "', '%Y-%m-%d') AND ACTIVITY_END_DATE <= STR_TO_DATE('" + endDate + "', '%Y-%m-%d') GROUP BY REG_ENTITY_FARM_PLOT_ID , DATE(ACTIVITY_START_DATE)");
		for (Map<String, Object> stringObjectMap : queryList) {
			String activityDate = stringObjectMap.get("DATE(ACTIVITY_START_DATE)").toString();
			Double measureValue = (Double) stringObjectMap.get("SUM(MEASURE_VALUE)");
			String farmPlotId = stringObjectMap.get("REG_ENTITY_FARM_PLOT_ID").toString();
			if (!productionsArray.containsKey(activityDate)) {
				productionsArray.put(activityDate, new HashMap<>());
			}
			productionsArray.get(activityDate).put(farmPlotId, measureValue);
		}
		return productionsArray;
	}


	private String getPondActive(Long poundId){
		return String.valueOf(dtFarmPondProductionCycleRepository.getPondIsInProduction(poundId));
	}
	private String getPlotActive(Long poundId){
		return String.valueOf(dtFarmPlotProductionCycleRepository.getPlotIsInProduction(poundId));
	}
}
