package com.fairagora.verifik8.v8web.mvc.home.dashboard;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class HomeDashboardDto {

	protected List<DashboardTimeSeries<?>> timeSeries = new ArrayList<>();

	protected List<DashboardTopKpi<?>> topKpis = new ArrayList<>();

	public List<DashboardTopKpi<?>> getTopKpis() {
		return topKpis;
	}

	public List<DashboardTimeSeries<?>> getTimeSeries() {
		return timeSeries;
	}

	/**
	 * just group by key for better usage in thymeleaf
	 * 
	 * @return
	 */
	public Map<String, DashboardTimeSeries<?>> getTimeSeriesMap() {
		HashMap<String, DashboardTimeSeries<?>> kpis = new HashMap<>();
		getTimeSeries().forEach(k -> kpis.put(k.getKey(), k));
		return kpis;
	}

	/**
	 * just group by key for better usage in thymeleaf
	 * 
	 * @return
	 */
	public Map<String, DashboardTopKpi<?>> getTopKpisMap() {
		HashMap<String, DashboardTopKpi<?>> kpis = new HashMap<>();
		getTopKpis().forEach(k -> kpis.put(k.getKey(), k));
		return kpis;
	}

}
