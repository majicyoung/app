package com.fairagora.verifik8.v8web.mvc.home.dashboard;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class DashboardDataBuilder {

	@Autowired
	private JdbcTemplate jdbc;

	public HomeDashboardDto get() {
		HomeDashboardDto dash = new HomeDashboardDto();

		// build top KPIs
		buildTopKpis(dash);

		buildTimeSeries(dash);

		return dash;
	}

	
	private void buildTimeSeries(HomeDashboardDto dash) {
		DashboardTimeSeries ts = new DashboardTimeSeries<>();
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

	private void buildTopKpis(HomeDashboardDto dash) {
		dash.getTopKpis().add(new DashboardTopKpi<Integer>().setup("Number of Farms", "nbfarms", jdbc
				.queryForObject("SELECT count(ID) FROM reg_entities WHERE CL_ENTITY_UID_TYPE_ID=2", Integer.class)));

		dash.getTopKpis().add(new DashboardTopKpi<Integer>().setup("Number of Plots", "nbPlots",
				jdbc.queryForObject("SELECT count(ID) FROM reg_entity_farmag_plots", Integer.class)));

		dash.getTopKpis().add(new DashboardTopKpi<Integer>().setup("Number of Ponds", "nbPonds",
				jdbc.queryForObject("SELECT count(ID) FROM reg_entity_farmaq_ponds", Integer.class)));
		
		dash.getTopKpis().add(new DashboardTopKpi<Integer>().setup("Total Production in 2017", "totalAgProduction",
				jdbc.queryForObject("SELECT SUM(CONVERT(PRODUCTION_QUANTITY, SIGNED INTEGER)) FROM `dt_farmag_production` where YEAR(DATE_FROM) >= 2017", Integer.class)));
		
		dash.getTopKpis().add(new DashboardTopKpi<Integer>().setup("Total Production in 2017", "totalAqProduction",
				jdbc.queryForObject("SELECT SUM(CONVERT(PRODUCTION_QUANTITY, SIGNED INTEGER)) FROM `dt_farmaq_production` where YEAR(DATE_FROM) >= 2017", Integer.class)));
	
		
		dash.getTopKpis().add(new DashboardTopKpi<Integer>().setup("Employees", "nbEmployees",
				jdbc.queryForObject("SELECT count(*) FROM reg_entity_staff", Integer.class)));

	}

}
