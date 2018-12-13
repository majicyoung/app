package com.fairagora.verifik8.v8web.mvc.fame.dto;

import org.hibernate.validator.constraints.Email;

import javax.validation.constraints.NotNull;

public class FameUserDto {

	protected Long id;

	@NotNull
	protected String name;
	@Email
	protected String email;

	protected String phoneNumber;

	/**
	 * id of the country, optional
	 */
	protected Long country;

	protected int loginNumberCounts;




	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Long getCountry() {
		return country;
	}

	public void setCountry(Long country) {
		this.country = country;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getLoginNumberCounts() {
		return loginNumberCounts;
	}

	public void setLoginNumberCounts(int loginNumberCounts) {
		this.loginNumberCounts = loginNumberCounts;
	}

	public FameUserDto selfSetLoginNumberCounts(int loginNumberCounts) {
		this.loginNumberCounts = loginNumberCounts;
		return this;
	}
}
