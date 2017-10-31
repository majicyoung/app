package com.fairagora.verifik8.v8web.data.domain.commons;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fairagora.verifik8.v8web.data.domain.cl.CLCountry;

@Embeddable
public class Address {

	@Column(name = "ADDRESS")
	protected String main;

	@Column(name = "ADDRESS_CITY")
	protected String city;

	@Column(name = "ADDRESS_ZIP_CODE")
	protected String zip;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_ADDRESS_COUNTRY_ID")
	protected CLCountry country;

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

	public CLCountry getCountry() {
		return country;
	}

	public void setCountry(CLCountry country) {
		this.country = country;
	}

}
