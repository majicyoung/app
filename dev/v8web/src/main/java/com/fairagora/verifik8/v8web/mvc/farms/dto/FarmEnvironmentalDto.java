package com.fairagora.verifik8.v8web.mvc.farms.dto;

public class FarmEnvironmentalDto {

	protected boolean environmentImpactAssessment;

	// att
	protected String environmentImpactAssessmentUrl;

	// att
	protected String contructionPermit;

	// att
	protected String landTitle;

	protected boolean sittingProtectedArea;

	// att
	protected String sittingProtectedAreaUrl;

	protected boolean farmExpension;

	protected Long farmExpensionType;

	// att
	protected String canalRestorationPlan;
	// att
	protected String cumulativeImpactStudy;

	public boolean isEnvironmentImpactAssessment() {
		return environmentImpactAssessment;
	}

	public void setEnvironmentImpactAssessment(boolean environmentImpactAssessment) {
		this.environmentImpactAssessment = environmentImpactAssessment;
	}

	public String getEnvironmentImpactAssessmentUrl() {
		return environmentImpactAssessmentUrl;
	}

	public void setEnvironmentImpactAssessmentUrl(String environmentImpactAssessmentUrl) {
		this.environmentImpactAssessmentUrl = environmentImpactAssessmentUrl;
	}

	public String getContructionPermit() {
		return contructionPermit;
	}

	public void setContructionPermit(String contructionPermit) {
		this.contructionPermit = contructionPermit;
	}

	public String getLandTitle() {
		return landTitle;
	}

	public void setLandTitle(String landTitle) {
		this.landTitle = landTitle;
	}

	

	public boolean isFarmExpension() {
		return farmExpension;
	}

	public void setFarmExpension(boolean farmExpension) {
		this.farmExpension = farmExpension;
	}

	public Long getFarmExpensionType() {
		return farmExpensionType;
	}

	public void setFarmExpensionType(Long farmExpensionType) {
		this.farmExpensionType = farmExpensionType;
	}

	public String getCanalRestorationPlan() {
		return canalRestorationPlan;
	}

	public void setCanalRestorationPlan(String canalRestorationPlan) {
		this.canalRestorationPlan = canalRestorationPlan;
	}

	public String getCumulativeImpactStudy() {
		return cumulativeImpactStudy;
	}

	public void setCumulativeImpactStudy(String cumulativeImpactStudy) {
		this.cumulativeImpactStudy = cumulativeImpactStudy;
	}

	public String getSittingProtectedAreaUrl() {
		return sittingProtectedAreaUrl;
	}

	public void setSittingProtectedAreaUrl(String sittingProtectedAreaUrl) {
		this.sittingProtectedAreaUrl = sittingProtectedAreaUrl;
	}

	public boolean isSittingProtectedArea() {
		return sittingProtectedArea;
	}

	public void setSittingProtectedArea(boolean sittingProtectedArea) {
		this.sittingProtectedArea = sittingProtectedArea;
	}

}
