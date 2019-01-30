package com.fairagora.verifik8.v8web.mvc.users.dto;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;

public class UserFormDto {

	protected Long id;

	@NotNull
	protected Long role;
	@NotNull
	protected String name;
	@NotNull
	protected String password;
	@Email
	protected String email;
	protected String cacheVersion;

	protected String phoneNumber;

	protected boolean active;


	/**
	 * id of the country, optional
	 */
	protected Long country;

	/**
	 * id of the cooperative we want this user to be linked to, this is not
	 * mandatory, and rather exclusive with farm
	 */
	protected Long cooperative;

	/**
	 * id of the farm we want this user to be linked to, this is not mandatory,
	 * and rather exclusive with farm
	 */
	protected Long farm;

	/**
	 * id of the supplier we want this user to be linked to, this is not mandatory,
	 * and rather exclusive with farm
	 */
	protected Long supplier;

	/**
	 * id of the buyer we want this user to be linked to, this is not mandatory,
	 * and rather exclusive with farm
	 */
	protected Long buyer;

	public Long getRole() {
		return role;
	}

	public void setRole(Long role) {
		this.role = role;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCacheVersion() {
		return cacheVersion;
	}

	public void setCacheVersion(String cacheVersion) {
		this.cacheVersion = cacheVersion;
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

	public Long getCooperative() {
		return cooperative;
	}

	public void setCooperative(Long coop) {
		this.cooperative = coop;
	}

	public Long getFarm() {
		return farm;
	}

	public void setFarm(Long farm) {
		this.farm = farm;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getSupplier() {
		return supplier;
	}

	public void setSupplier(Long supplier) {
		this.supplier = supplier;
	}

	public Long getBuyer() {
		return buyer;
	}

	public void setBuyer(Long buyer) {
		this.buyer = buyer;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
}
