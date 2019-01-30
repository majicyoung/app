package com.fairagora.verifik8.v8web.mvc.farms.dto;

import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public class FarmEnvironmentalDto {

	protected boolean environmentImpactAssessment;

	// att
	protected MultipartFile environmentImpactAssessmentDocMultipart;
	protected List<String>  environmentImpactAssessmentDocUrl;

	// att
	protected MultipartFile contructionPermitMultipart;
	protected List<String>  contructionPermitUrl;

	// att
	protected MultipartFile landTitleMultipart;
	protected List<String>  landTitleUrl;

	protected boolean sittingProtectedArea;

	// att
	protected MultipartFile sittingProtectedAreaDocMultipart;
	protected List<String>  sittingProtectedAreaUrl;

	protected boolean farmExpension;

	protected Long farmExpensionType;

	// att
	protected MultipartFile canalRestorationPlanMultipart;
	protected List<String>  canalRestorationPlanUrl;

	// att
	protected MultipartFile cumulativeImpactStudyMultipart;
	protected List<String>  cumulativeImpactStudyUrl;

	// att
	protected MultipartFile escapeReportMultipart;
	protected List<String>  escapeReportUrl;

	// att
	protected MultipartFile dischargeWasteWaterMultipart;
	protected List<String>  dischargeWasteWaterUrl;

	protected String numberOfEscape;
	protected String escapePrevention;
	protected String gpsCoordinate;
	protected String filtrationSystemComment;
	protected boolean filtrationSystem;

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

	public List<String>  getSittingProtectedAreaUrl() {
		return sittingProtectedAreaUrl;
	}

	public void setSittingProtectedAreaUrl(List<String> sittingProtectedAreaUrl) {
		this.sittingProtectedAreaUrl = sittingProtectedAreaUrl;
	}

	public boolean isSittingProtectedArea() {
		return sittingProtectedArea;
	}

	public void setSittingProtectedArea(boolean sittingProtectedArea) {
		this.sittingProtectedArea = sittingProtectedArea;
	}

	public MultipartFile getContructionPermitMultipart() {
		return contructionPermitMultipart;
	}

	public void setContructionPermitMultipart(MultipartFile contructionPermitMultipart) {
		this.contructionPermitMultipart = contructionPermitMultipart;
	}

	public List<String>  getContructionPermitUrl() {
		return contructionPermitUrl;
	}

	public void setContructionPermitUrl(List<String>  contructionPermitUrl) {
		this.contructionPermitUrl = contructionPermitUrl;
	}

	public MultipartFile getLandTitleMultipart() {
		return landTitleMultipart;
	}

	public void setLandTitleMultipart(MultipartFile landTitleMultipart) {
		this.landTitleMultipart = landTitleMultipart;
	}

	public List<String>  getLandTitleUrl() {
		return landTitleUrl;
	}

	public void setLandTitleUrl(List<String>  landTitleUrl) {
		this.landTitleUrl = landTitleUrl;
	}

	public MultipartFile getCanalRestorationPlanMultipart() {
		return canalRestorationPlanMultipart;
	}

	public void setCanalRestorationPlanMultipart(MultipartFile canalRestorationPlanMultipart) {
		this.canalRestorationPlanMultipart = canalRestorationPlanMultipart;
	}

	public List<String>  getCanalRestorationPlanUrl() {
		return canalRestorationPlanUrl;
	}

	public void setCanalRestorationPlanUrl(List<String>  canalRestorationPlanUrl) {
		this.canalRestorationPlanUrl = canalRestorationPlanUrl;
	}

	public MultipartFile getCumulativeImpactStudyMultipart() {
		return cumulativeImpactStudyMultipart;
	}

	public void setCumulativeImpactStudyMultipart(MultipartFile cumulativeImpactStudyMultipart) {
		this.cumulativeImpactStudyMultipart = cumulativeImpactStudyMultipart;
	}

	public List<String>  getCumulativeImpactStudyUrl() {
		return cumulativeImpactStudyUrl;
	}

	public void setCumulativeImpactStudyUrl(List<String>  cumulativeImpactStudyUrl) {
		this.cumulativeImpactStudyUrl = cumulativeImpactStudyUrl;
	}

	public MultipartFile getEnvironmentImpactAssessmentDocMultipart() {
		return environmentImpactAssessmentDocMultipart;
	}

	public void setEnvironmentImpactAssessmentDocMultipart(MultipartFile environmentImpactAssessmentDocMultipart) {
		this.environmentImpactAssessmentDocMultipart = environmentImpactAssessmentDocMultipart;
	}

	public List<String>  getEnvironmentImpactAssessmentDocUrl() {
		return environmentImpactAssessmentDocUrl;
	}

	public void setEnvironmentImpactAssessmentDocUrl(List<String>  environmentImpactAssessmentDocUrl) {
		this.environmentImpactAssessmentDocUrl = environmentImpactAssessmentDocUrl;
	}

	public MultipartFile getSittingProtectedAreaDocMultipart() {
		return sittingProtectedAreaDocMultipart;
	}

	public void setSittingProtectedAreaDocMultipart(MultipartFile sittingProtectedAreaDocMultipart) {
		this.sittingProtectedAreaDocMultipart = sittingProtectedAreaDocMultipart;
	}

	public MultipartFile getEscapeReportMultipart() {
		return escapeReportMultipart;
	}

	public void setEscapeReportMultipart(MultipartFile escapeReportMultipart) {
		this.escapeReportMultipart = escapeReportMultipart;
	}

	public List<String> getEscapeReportUrl() {
		return escapeReportUrl;
	}

	public void setEscapeReportUrl(List<String> escapeReportUrl) {
		this.escapeReportUrl = escapeReportUrl;
	}

	public MultipartFile getDischargeWasteWaterMultipart() {
		return dischargeWasteWaterMultipart;
	}

	public void setDischargeWasteWaterMultipart(MultipartFile dischargeWasteWaterMultipart) {
		this.dischargeWasteWaterMultipart = dischargeWasteWaterMultipart;
	}

	public List<String> getDischargeWasteWaterUrl() {
		return dischargeWasteWaterUrl;
	}

	public void setDischargeWasteWaterUrl(List<String> dischargeWasteWaterUrl) {
		this.dischargeWasteWaterUrl = dischargeWasteWaterUrl;
	}

	public String getNumberOfEscape() {
		return numberOfEscape;
	}

	public void setNumberOfEscape(String numberOfEscape) {
		this.numberOfEscape = numberOfEscape;
	}


	public String getGpsCoordinate() {
		return gpsCoordinate;
	}

	public void setGpsCoordinate(String gpsCoordinate) {
		this.gpsCoordinate = gpsCoordinate;
	}

	public String getEscapePrevention() {
		return escapePrevention;
	}

	public void setEscapePrevention(String escapePrevention) {
		this.escapePrevention = escapePrevention;
	}

	public String getFiltrationSystemComment() {
		return filtrationSystemComment;
	}

	public void setFiltrationSystemComment(String filtrationSystemComment) {
		this.filtrationSystemComment = filtrationSystemComment;
	}

	public boolean isFiltrationSystem() {
		return filtrationSystem;
	}

	public void setFiltrationSystem(boolean filtrationSystem) {
		this.filtrationSystem = filtrationSystem;
	}
}
