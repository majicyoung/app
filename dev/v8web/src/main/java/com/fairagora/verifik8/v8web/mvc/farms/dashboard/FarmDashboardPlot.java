package com.fairagora.verifik8.v8web.mvc.farms.dashboard;

import com.fairagora.verifik8.v8web.config.helper.BooleanHelper;

public class FarmDashboardPlot {

	private String plotId;
	private String area;
	private String sowingDate;
	private String sowingQuantity;
	private String inProduction;
	private String fertilizationQuantity;
	private String mortalityRate;
	private String disease;
	private String pesticideUse;

	public String getInProduction() {
		return BooleanHelper.valueOf(inProduction).toString();
	}

	public void setInProduction(String inProduction) {
		this.inProduction = inProduction;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getMortalityRate() {
		return mortalityRate;
	}

	public void setMortalityRate(String mortalityRate) {
		this.mortalityRate = mortalityRate;
	}

	public String getDisease() {
		return BooleanHelper.valueOf(disease).toString() ;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

	public String getPlotId() {
		return plotId;
	}

	public void setPlotId(String plotId) {
		this.plotId = plotId;
	}

	public String getSowingDate() {
		return sowingDate;
	}

	public void setSowingDate(String sowingDate) {
		this.sowingDate = sowingDate;
	}

	public String getSowingQuantity() {
		return sowingQuantity;
	}

	public void setSowingQuantity(String sowingQuantity) {
		this.sowingQuantity = sowingQuantity;
	}

	public String getFertilizationQuantity() {
		return fertilizationQuantity;
	}

	public void setFertilizationQuantity(String fertilizationQuantity) {
		this.fertilizationQuantity = fertilizationQuantity;
	}

	public String getPesticideUse() {
		return BooleanHelper.valueOf(pesticideUse).toString();
	}

	public void setPesticideUse(String pesticideUse) {
		this.pesticideUse = pesticideUse;
	}
}
