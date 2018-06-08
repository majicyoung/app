package com.fairagora.verifik8.v8web.mvc.farms.dashboard;

import com.fairagora.verifik8.v8web.config.helper.BooleanHelper;

import java.util.ArrayList;
import java.util.List;

public class FarmDashboardPond {

	private String poundId;
	private String area;
	private String stockingDate;
	private String stockingQuantity;
	private String inProduction;
	private String feedQuantity;
	private String mortalityRate;
	private String disease;
	private String antibioticsUse;

	public String getAntibioticsUse() {
		return BooleanHelper.valueOf(antibioticsUse).toString();
	}

	public void setAntibioticsUse(String antibioticsUse) {
		this.antibioticsUse = antibioticsUse;
	}

	public String getInProduction() {
		return BooleanHelper.valueOf(inProduction).toString();
	}

	public void setInProduction(String inProduction) {
		this.inProduction = inProduction;
	}

	public String getPoundId() {
		return poundId;
	}

	public void setPoundId(String poundId) {
		this.poundId = poundId;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getStockingDate() {
		return stockingDate;
	}

	public void setStockingDate(String stockingDate) {
		this.stockingDate = stockingDate;
	}

	public String getStockingQuantity() {
		return stockingQuantity;
	}

	public void setStockingQuantity(String stockingQuantity) {
		this.stockingQuantity = stockingQuantity;
	}

	public String getFeedQuantity() {
		return feedQuantity;
	}

	public void setFeedQuantity(String feedQuantity) {
		this.feedQuantity = feedQuantity;
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

}
