package com.fairagora.verifik8.v8web.mvc.farms.dto;

import org.springframework.web.multipart.MultipartFile;

public class FarmEnvironmentalDto {

	protected boolean environmentImpactAssessment;

	// att
	protected MultipartFile environmentImpactAssessmentDoc;
	protected String environmentImpactAssessmentDocUrl;

	// att
	protected MultipartFile contructionPermit;
	protected String contructionPermitUrl;

	// att
	protected MultipartFile landTitle;
	protected String landTitleUrl;

	protected boolean sittingProtectedArea;

	// att
	protected MultipartFile sittingProtectedAreaDoc;
	protected String sittingProtectedAreaUrl;

	protected boolean farmExpension;

	protected Long farmExpensionType;

	// att
	protected MultipartFile canalRestorationPlan;
	protected String canalRestorationPlanUrl;

	// att
	protected MultipartFile cumulativeImpactStudy;
	protected String cumulativeImpactStudyUrl;

	public boolean isEnvironmentImpactAssessment() {
		return environmentImpactAssessment;
	}

	public void setEnvironmentImpactAssessment(boolean environmentImpactAssessment) {
		this.environmentImpactAssessment = environmentImpactAssessment;
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

	public MultipartFile getContructionPermit() {
		return contructionPermit;
	}

	public void setContructionPermit(MultipartFile contructionPermit) {
		this.contructionPermit = contructionPermit;
	}

	public String getContructionPermitUrl() {
		return contructionPermitUrl;
	}

	public void setContructionPermitUrl(String contructionPermitUrl) {
		this.contructionPermitUrl = contructionPermitUrl;
	}

	public MultipartFile getLandTitle() {
		return landTitle;
	}

	public void setLandTitle(MultipartFile landTitle) {
		this.landTitle = landTitle;
	}

	public String getLandTitleUrl() {
		return landTitleUrl;
	}

	public void setLandTitleUrl(String landTitleUrl) {
		this.landTitleUrl = landTitleUrl;
	}

	public MultipartFile getCanalRestorationPlan() {
		return canalRestorationPlan;
	}

	public void setCanalRestorationPlan(MultipartFile canalRestorationPlan) {
		this.canalRestorationPlan = canalRestorationPlan;
	}

	public String getCanalRestorationPlanUrl() {
		return canalRestorationPlanUrl;
	}

	public void setCanalRestorationPlanUrl(String canalRestorationPlanUrl) {
		this.canalRestorationPlanUrl = canalRestorationPlanUrl;
	}

	public MultipartFile getCumulativeImpactStudy() {
		return cumulativeImpactStudy;
	}

	public void setCumulativeImpactStudy(MultipartFile cumulativeImpactStudy) {
		this.cumulativeImpactStudy = cumulativeImpactStudy;
	}

	public String getCumulativeImpactStudyUrl() {
		return cumulativeImpactStudyUrl;
	}

	public void setCumulativeImpactStudyUrl(String cumulativeImpactStudyUrl) {
		this.cumulativeImpactStudyUrl = cumulativeImpactStudyUrl;
	}

	public MultipartFile getEnvironmentImpactAssessmentDoc() {
		return environmentImpactAssessmentDoc;
	}

	public void setEnvironmentImpactAssessmentDoc(MultipartFile environmentImpactAssessmentDoc) {
		this.environmentImpactAssessmentDoc = environmentImpactAssessmentDoc;
	}

	public String getEnvironmentImpactAssessmentDocUrl() {
		return environmentImpactAssessmentDocUrl;
	}

	public void setEnvironmentImpactAssessmentDocUrl(String environmentImpactAssessmentDocUrl) {
		this.environmentImpactAssessmentDocUrl = environmentImpactAssessmentDocUrl;
	}

	public MultipartFile getSittingProtectedAreaDoc() {
		return sittingProtectedAreaDoc;
	}

	public void setSittingProtectedAreaDoc(MultipartFile sittingProtectedAreaDoc) {
		this.sittingProtectedAreaDoc = sittingProtectedAreaDoc;
	}

}
