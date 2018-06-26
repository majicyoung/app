package com.fairagora.verifik8.v8web.mvc.farms.dashboard;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FarmDashboardDto {

	protected List<FarmDashboardTimeSeries<?>> timeSeries = new ArrayList<>();

	protected List<FarmDashboardTopKpi<?>> topKpis = new ArrayList<>();

	protected List<FarmDashboardPond>  pondsSeries = new ArrayList<>();

	public List<FarmDashboardTopKpi<?>> getTopKpis() {
		return topKpis;
	}

	public List<FarmDashboardTimeSeries<?>> getTimeSeries() {
		return timeSeries;
	}

	public List<FarmDashboardPond> getPondSeries() { return pondsSeries;}


	/**
	 * just group by key for better usage in thymeleaf
	 * 
	 * @return
	 */
	public Map<String, FarmDashboardTimeSeries<?>> getTimeSeriesMap() {
		HashMap<String, FarmDashboardTimeSeries<?>> kpis = new HashMap<>();
		getTimeSeries().forEach(k -> kpis.put(k.getKey(), k));
		return kpis;
	}

	/**
	 * just group by key for better usage in thymeleaf
	 * 
	 * @return
	 */
	public Map<String, FarmDashboardTopKpi<?>> getTopKpisMap() {
		HashMap<String, FarmDashboardTopKpi<?>> kpis = new HashMap<>();
		getTopKpis().forEach(k -> kpis.put(k.getKey(), k));
		return kpis;
	}


}
