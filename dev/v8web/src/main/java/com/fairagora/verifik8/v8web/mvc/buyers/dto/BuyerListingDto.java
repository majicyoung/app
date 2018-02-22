package com.fairagora.verifik8.v8web.mvc.buyers.dto;

public class BuyerListingDto {

	protected Long id;

	protected String farm;

	protected String buyer;

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

	public String getBuyer() {
		return buyer;
	}

	public void setBuyer(String buyer) {
		this.buyer = buyer;
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
