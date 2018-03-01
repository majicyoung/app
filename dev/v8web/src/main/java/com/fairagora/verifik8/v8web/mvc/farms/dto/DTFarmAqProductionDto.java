package com.fairagora.verifik8.v8web.mvc.farms.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.V8MeasureDto;

public class DTFarmAqProductionDto {

	protected Long id;

	protected Long farm;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	protected Date dateFrom;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	protected Date dateTo;

	protected Long species;
	protected String speciesName;
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

	public Long getSpecies() {
		return species;
	}

	public void setSpecies(Long species) {
		this.species = species;
	}

	public V8MeasureDto getQuantity() {
		return quantity;
	}

	public void setQuantity(V8MeasureDto quantity) {
		this.quantity = quantity;
	}

	
	public String getSpeciesName() {
		return speciesName;
	}

	public void setSpeciesName(String speciesName) {
		this.speciesName = speciesName;
	}

	public Long getDataEntryType() {
		return dataEntryType;
	}

	public void setDataEntryType(Long dataEntryType) {
		this.dataEntryType = dataEntryType;
	}

}
