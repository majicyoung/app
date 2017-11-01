package com.fairagora.verifik8.v8web.mvc.ponds.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.V8MeasureDto;

public class PondMeasurementDto {
	protected Long id;

	protected Long pond;

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

	public Long getPond() {
		return pond;
	}

	public void setPond(Long pond) {
		this.pond = pond;
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
