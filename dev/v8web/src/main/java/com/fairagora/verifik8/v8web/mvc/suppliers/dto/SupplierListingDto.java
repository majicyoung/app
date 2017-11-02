package com.fairagora.verifik8.v8web.mvc.suppliers.dto;

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
