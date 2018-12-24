package com.fairagora.verifik8.v8web.mvc.fame.dto;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.V8MeasureDto;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class FameActivityDto {


	protected Long id;

	protected Long pond;

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	protected Date activityStartDate;

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	protected Date activityEndDate;

	protected Long activityType;
	protected String activityName;

	protected Long product;


	protected String feedLotNumber;

	protected String comment;

	protected Long species;

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

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getFeedLotNumber() {
		return feedLotNumber;
	}

	public void setFeedLotNumber(String feedLotNumber) {
		this.feedLotNumber = feedLotNumber;
	}

	public String getActivityName() {
		return activityName;
	}

	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}

	public Long getSpecies() {
		return species;
	}

	public void setSpecies(Long species) {
		this.species = species;
	}
}
