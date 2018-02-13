package com.fairagora.verifik8.v8web.mvc.farms.dashboard;

import java.util.ArrayList;
import java.util.List;

public class FarmDashboardTimeSeries<T> {

	protected String name;
	protected String key;

	protected List<String> labels = new ArrayList<>();
	protected List<String> series = new ArrayList<>();
	protected List<List<T>> values = new ArrayList<>();

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public List<String> getLabels() {
		return labels;
	}

	public void setLabels(List<String> labels) {
		this.labels = labels;
	}

	public List<List<T>> getValues() {
		return values;
	}

	public void setValues(List<List<T>> values) {
		this.values = values;
	}

	public List<String> getSeries() {
		return series;
	}

	public void setSeries(List<String> series) {
		this.series = series;
	}

}
