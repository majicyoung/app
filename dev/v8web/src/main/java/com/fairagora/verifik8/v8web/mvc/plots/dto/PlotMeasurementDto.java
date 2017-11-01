package com.fairagora.verifik8.v8web.mvc.plots.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.V8MeasureDto;

public class PlotMeasurementDto {
	protected Long id;

	protected Long plot;

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	protected Date measureDate;

	protected Long measureType;

	protected V8MeasureDto measure;

	protected String comment;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getPlot() {
		return plot;
	}

	public void setPlot(Long plot) {
		this.plot = plot;
	}

	public Date getMeasureDate() {
		return measureDate;
	}

	public void setMeasureDate(Date measureDate) {
		this.measureDate = measureDate;
	}

	public Long getMeasureType() {
		return measureType;
	}

	public void setMeasureType(Long measureType) {
		this.measureType = measureType;
	}

	public V8MeasureDto getMeasure() {
		return measure;
	}

	public void setMeasure(V8MeasureDto measure) {
		this.measure = measure;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
}
