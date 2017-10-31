package com.fairagora.verifik8.v8web.mvc.farms.dto;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.V8MeasureDto;

public class FarmPlotDto {
	protected Long id;

	protected Long farm;

	protected String number;

	protected String description;

	protected Long commodities;

	protected boolean irrigated;

	protected V8MeasureDto size;

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

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Long getCommodities() {
		return commodities;
	}

	public void setCommodities(Long commodities) {
		this.commodities = commodities;
	}

	public boolean isIrrigated() {
		return irrigated;
	}

	public void setIrrigated(boolean irrigated) {
		this.irrigated = irrigated;
	}

	public V8MeasureDto getSize() {
		return size;
	}

	public void setSize(V8MeasureDto size) {
		this.size = size;
	}

}
