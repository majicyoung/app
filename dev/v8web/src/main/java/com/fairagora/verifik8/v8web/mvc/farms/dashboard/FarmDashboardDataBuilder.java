package com.fairagora.verifik8.v8web.mvc.farms.dashboard;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class FarmDashboardDataBuilder {

	@Autowired
	private JdbcTemplate jdbc;

	public FarmDashboardDto get(Long farmId) {
		FarmDashboardDto dash = new FarmDashboardDto();

		// build top KPIs
		buildTopKpis(dash, farmId);

		buildTimeSeries(dash, farmId);

		AqProdCurrentYear(dash, farmId);

		return dash;
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
				jdbc.queryForObject("SELECT COUNT(*) FROM reg_entity_farmaq_ponds " +
						"LEFT JOIN dt_farmaq_pond_management ON reg_entity_farmaq_ponds.ID = dt_farmaq_pond_management.REG_ENTITY_FARM_POND_ID " +
						"WHERE REG_ENTITY_FARM_ID=" + farmId + " " +
						"AND NOT (dt_farmaq_pond_management.CL_POND_ACTIVITY_TYPE_ID = 1 " +
						"AND dt_farmaq_pond_management.ACTIVITY_START_DATE <= cast((now()) as date) " +
						"AND dt_farmaq_pond_management.ACTIVITY_END_DATE >= cast((now()) as date))", Integer.class)));

		dash.getTopKpis().add(new FarmDashboardTopKpi<Integer>().setup("Number of Plots", "nbPlots",
				jdbc.queryForObject("SELECT count(ID) FROM reg_entity_farmag_plots WHERE REG_ENTITY_FARM_ID= " + farmId, Integer.class)));

		dash.getTopKpis().add(new FarmDashboardTopKpi<Integer>().setup("Total Production in " + y, "totalProductionAq",
				jdbc.queryForObject("SELECT SUM(CONVERT(PRODUCTION_QUANTITY, SIGNED INTEGER)) FROM `dt_farmaq_production` WHERE YEAR(DATE_FROM) >= " + y + "  AND REG_ENTITY_FARM_ID=" + farmId, Integer.class)));

		dash.getTopKpis().add(new FarmDashboardTopKpi<Integer>().setup("Total Production in " + y, "totalProductionAg",
				jdbc.queryForObject("SELECT SUM(CONVERT(PRODUCTION_QUANTITY, SIGNED INTEGER)) FROM `dt_farmag_production` WHERE YEAR(DATE_FROM) >= " + y + " AND REG_ENTITY_FARM_ID=" + farmId, Integer.class)));

		dash.getTopKpis().add(new FarmDashboardTopKpi<Integer>().setup("Employees", "nbEmployees",
				jdbc.queryForObject("SELECT count(*) FROM reg_entity_staff WHERE REG_ENTITY_FARM_ID=" + farmId, Integer.class)));

	}

}
