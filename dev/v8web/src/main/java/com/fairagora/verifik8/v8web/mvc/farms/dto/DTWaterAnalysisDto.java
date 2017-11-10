package com.fairagora.verifik8.v8web.mvc.farms.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

public class DTWaterAnalysisDto {

	protected Long id;

	protected Long pond;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	protected Date analysisDate;

	protected String pondNumber;

	protected MultipartFile analysis;
	protected String analysisUrl;

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

	public void setId(Long id) {
		this.id = id;
	}

	public String getPondNumber() {
		return pondNumber;
	}

	public void setPondNumber(String pondNumber) {
		this.pondNumber = pondNumber;
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
