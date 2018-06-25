package com.fairagora.verifik8.v8web.mvc.farms.dashboard;

public class FarmDashboardProduction {

	private String measureValue;
	private String activityStartDate;

	public FarmDashboardProduction(String measureValue, String activityStartDate) {
		this.measureValue = measureValue;
		this.activityStartDate = activityStartDate;
	}

	public String getMeasureValue() {
		return measureValue;
	}

	public void setMeasureValue(String measureValue) {
		this.measureValue = measureValue;
	}

	public String getActivityStartDate() {
		return activityStartDate;
	}

	public void setActivityStartDate(String activityStartDate) {
		this.activityStartDate = activityStartDate;
	}
}
