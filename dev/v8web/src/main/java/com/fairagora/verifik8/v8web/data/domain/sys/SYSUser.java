package com.fairagora.verifik8.v8web.data.domain.sys;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.cl.CLCountry;

@Entity
@Table(name = "sys_users")
public class SYSUser {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	protected String name;
	protected String email;
	protected String password;

	protected boolean active;

	@ManyToOne
	@JoinColumn(name = "SYS_ROLE_ID")
	protected SYSRole role;

	/**
	 * country is used in case the user is a country manager
	 */
	@ManyToOne
	@JoinColumn(name = "CL_COUNTRY_ID")
	protected CLCountry country;

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public SYSRole getRole() {
		return role;
	}

	public void setRole(SYSRole role) {
		this.role = role;
	}

	public CLCountry getCountry() {
		return country;
	}

	public void setCountry(CLCountry country) {
		this.country = country;
	}

}