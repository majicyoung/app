package com.fairagora.verifik8.v8web.mvc.ponds.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.V8MeasureDto;

public class PondActivityDto {

	protected Long id;

	protected Long pond;

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	protected Date activityStartDate;

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	protected Date activityEndDate;

	protected Long activityType;
	protected String activityName;

	protected Long product;

	protected V8MeasureDto measure;

	protected V8MeasureDto additionalMeasure;


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

	public Date getActivityStartDate() {
		return activityStartDate;
	}

	public void setActivityStartDate(Date activityStartDate) {
		this.activityStartDate = activityStartDate;
	}

	public Date getActivityEndDate() {
		return activityEndDate;
	}

	public void setActivityEndDate(Date activityEndDate) {
		this.activityEndDate = activityEndDate;
	}

	public Long getActivityType() {
		return activityType;
	}

	public void setActivityType(Long activityType) {
		this.activityType = activityType;
	}

	public Long getProduct() {
		return product;
	}

	public void setProduct(Long product) {
		this.product = product;
	}

	public V8MeasureDto getMeasure() {
		return measure;
	}

	public void setMeasure(V8MeasureDto measure) {
		this.measure = measure;
	}

	public V8MeasureDto getAdditionalMeasure() {
		return additionalMeasure;
	}

	public void setAdditionalMeasure(V8MeasureDto additionalMeasure) {
		this.additionalMeasure = additionalMeasure;
	}


	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getActivityName() {
		return activityName;
	}

	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}
}
