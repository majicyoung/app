package com.fairagora.verifik8.v8web.mvc.companies.dto;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.AddressDto;

public class CompanyDto {

	protected Long id;

	protected String name;

	protected String accronym;

	protected AddressDto address;

	protected String phoneNumber;

	protected String mobileNumber;

	protected String faxNumber;

	protected String email;

	protected String website;

	protected String registrationNumber;

	protected Long entityType;
	protected Long nationality;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAccronym() {
		return accronym;
	}

	public void setAccronym(String accronym) {
		this.accronym = accronym;
	}

	public AddressDto getAddress() {
		return address;
	}

	public void setAddress(AddressDto address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getFaxNumber() {
		return faxNumber;
	}

	public void setFaxNumber(String faxNumber) {
		this.faxNumber = faxNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getRegistrationNumber() {
		return registrationNumber;
	}

	public void setRegistrationNumber(String registrationNumber) {
		this.registrationNumber = registrationNumber;
	}

	public Long getEntityType() {
		return entityType;
	}

	public void setEntityType(Long entityType) {
		this.entityType = entityType;
	}

	public Long getNationality() {
		return nationality;
	}

	public void setNationality(Long nationality) {
		this.nationality = nationality;
	}

}
