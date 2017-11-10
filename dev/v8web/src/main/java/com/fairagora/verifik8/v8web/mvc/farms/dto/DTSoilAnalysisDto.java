package com.fairagora.verifik8.v8web.mvc.farms.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

public class DTSoilAnalysisDto {

	protected Long id;

	protected Long plot;
	protected String plotNumber;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	protected Date analysisDate;

	protected Long soilAnalysisType;
	protected String soilAnalysisTypeName;

	protected MultipartFile analysis;
	protected String analysisUrl;

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

	public MultipartFile getAnalysis() {
		return analysis;
	}

	public void setAnalysis(MultipartFile analysis) {
		this.analysis = analysis;
	}

	public String getAnalysisUrl() {
		return analysisUrl;
	}

	public void setAnalysisUrl(String analysisUrl) {
		this.analysisUrl = analysisUrl;
	}

}
