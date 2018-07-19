package com.fairagora.verifik8.v8web.mvc.plots.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.V8MeasureDto;

public class PlotActivityDto {

	protected Long id;

	protected Long plot;

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	protected Date activityStartDate;

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	protected Date activityEndDate;

	protected Long activityType;
	protected String activityName;

	protected Long product;

	protected V8MeasureDto measure;

	protected V8MeasureDto additionalMeasure;

	protected Long tilingActivityType;

	protected String comment;

	protected Long commodities;

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

	public Long getTilingActivityType() {
		return tilingActivityType;
	}

	public void setTilingActivityType(Long tilingActivityType) {
		this.tilingActivityType = tilingActivityType;
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

	public Long getCommodities() {
		return commodities;
	}

	public void setCommodities(Long commodities) {
		this.commodities = commodities;
	}
}
