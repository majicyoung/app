package com.fairagora.verifik8.v8web.mvc.farms.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class DTWaterAnalysisDto {

	protected Long id;

	protected Long pond;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	protected Date analysisDate;

	protected String pondNumber;
	protected String analysis;

	public Long getId() {
		return id;
	}

	public Long getPond() {
		return pond;
	}

	public void setPond(Long pond) {
		this.pond = pond;
	}

	public Date getAnalysisDate() {
		return analysisDate;
	}

	public void setAnalysisDate(Date analysisDate) {
		this.analysisDate = analysisDate;
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

	public String getPondNumber() {
		return pondNumber;
	}

	public void setPondNumber(String pondNumber) {
		this.pondNumber = pondNumber;
	}
}
