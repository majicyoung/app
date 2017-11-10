package com.fairagora.verifik8.v8web.mvc.farms.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class DTSoilAnalysisDto {

	protected Long id;

	protected Long plot;
	protected String plotNumber;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	protected Date analysisDate;

	protected Long soilAnalysisType;
	protected String soilAnalysisTypeName;

	protected String analysis;

	public Long getId() {
		return id;
	}

	public Long getPlot() {
		return plot;
	}

	public void setPlot(Long plot) {
		this.plot = plot;
	}

	public Date getAnalysisDate() {
		return analysisDate;
	}

	public void setAnalysisDate(Date analysisDate) {
		this.analysisDate = analysisDate;
	}

	public Long getSoilAnalysisType() {
		return soilAnalysisType;
	}

	public void setSoilAnalysisType(Long soilAnalysisType) {
		this.soilAnalysisType = soilAnalysisType;
	}

	public String getAnalysis() {
		return analysis;
	}

	public void setAnalysis(String analysis) {
		this.analysis = analysis;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPlotNumber() {
		return plotNumber;
	}

	public void setPlotNumber(String plotNumber) {
		this.plotNumber = plotNumber;
	}

	public String getSoilAnalysisTypeName() {
		return soilAnalysisTypeName;
	}

	public void setSoilAnalysisTypeName(String soilAnalysisTypeName) {
		this.soilAnalysisTypeName = soilAnalysisTypeName;
	}

}
