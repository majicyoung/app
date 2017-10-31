package com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons;

public class AddressDto {

	protected String main;

	protected String city;

	protected String zip;

	protected Long country;

	public String getMain() {
		return main;
	}

	public void setMain(String main) {
		this.main = main;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public Long getCountry() {
		return country;
	}

	public void setCountry(Long country) {
		this.country = country;
	}

}
