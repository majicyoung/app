package com.fairagora.verifik8.v8web.mvc.farms.dashboard;

public class FarmDashboardTopKpi<T extends Number> {

	protected String name;
	protected String key;
	protected T value;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public T getValue() {
		return value;
	}

	public void setValue(T value) {
		this.value = value;
	}

	public String getKey() {
		return key;
	}

	public FarmDashboardTopKpi<T> setup(String name, String key, T i) {
		this.name = name;
		this.key = key;
		this.value = i;
		return this;
	}

}
