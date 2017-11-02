package com.fairagora.verifik8.v8web.mvc.suppliers.dto;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fairagora.verifik8.v8web.data.domain.cl.CLProductType;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.V8MeasureDto;

public class SupplierListingDto {

	protected Long id;

	protected String farm;

	protected String supplier;

	protected String productType;

	protected String city;
	
	public Long getId() {
		return id;
	}

	public String getFarm() {
		return farm;
	}

	public void setFarm(String farm) {
		this.farm = farm;
	}

	public String getSupplier() {
		return supplier;
	}

	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}

	public String getProductType() {
		return productType;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setId(Long id) {
		this.id = id;
	}


}
