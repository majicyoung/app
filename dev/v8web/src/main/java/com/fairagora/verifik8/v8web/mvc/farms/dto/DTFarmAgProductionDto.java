package com.fairagora.verifik8.v8web.mvc.farms.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.V8MeasureDto;

public class DTFarmAgProductionDto {

	protected Long id;

	protected Long farm;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	protected Date dateFrom;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	protected Date dateTo;

	protected Long commodities;
	protected String commoditiesName;
	protected V8MeasureDto quantity;

	protected Long dataEntryType;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getFarm() {
		return farm;
	}

	public void setFarm(Long farm) {
		this.farm = farm;
	}

	public Date getDateFrom() {
		return dateFrom;
	}

	public void setDateFrom(Date dateFrom) {
		this.dateFrom = dateFrom;
	}

	public Date getDateTo() {
		return dateTo;
	}

	public void setDateTo(Date dateTo) {
		this.dateTo = dateTo;
	}

	public Long getCommodities() {
		return commodities;
	}

	public void setCommodities(Long commodities) {
		this.commodities = commodities;
	}

	public V8MeasureDto getQuantity() {
		return quantity;
	}

	public void setQuantity(V8MeasureDto quantity) {
		this.quantity = quantity;
	}

	public String getCommoditiesName() {
		return commoditiesName;
	}

	public void setCommoditiesName(String commoditiesName) {
		this.commoditiesName = commoditiesName;
	}

	public Long getDataEntryType() {
		return dataEntryType;
	}

	public void setDataEntryType(Long dataEntryType) {
		this.dataEntryType = dataEntryType;
	}

}
