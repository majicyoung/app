package com.fairagora.verifik8.v8web.data.domain.reg;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.V8Entity;
import com.fairagora.verifik8.v8web.data.domain.cl.CLEntityType;
import com.fairagora.verifik8.v8web.data.domain.commons.Address;

@Entity()
@Table(name = "reg_entities")
public class RegEntity implements V8Entity, Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_ENTITY_UID_TYPE_ID")
	protected CLEntityType entityType;

	@Column(name = "NAME")
	protected String name;

	@Column(name = "SURNAME")
	protected String surname;

	@Column(name = "MIDDLE_NAME")
	protected String middleName;

	@Column(name = "SUFFIX_NAME")
	protected String suffixName;

	@Column(name = "ACRONYM")
	protected String accronym;

	@Embedded
	protected Address address;

	@Column(name = "PHONE_NUMBER")
	protected String phoneNumber;

	@Column(name = "MOBILE_NUMBER")
	protected String mobileNumber;

	@Column(name = "FAX_NUMBER")
	protected String faxNumber;

	@Column(name = "E_MAIL")
	protected String email;

	@Column(name = "WEBSITE")
	protected String website;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public CLEntityType getEntityType() {
		return entityType;
	}

	public void setEntityType(CLEntityType entityType) {
		this.entityType = entityType;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
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

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getSuffixName() {
		return suffixName;
	}

	public void setSuffixName(String suffixName) {
		this.suffixName = suffixName;
	}

	public String getAccronym() {
		return accronym;
	}

	public void setAccronym(String accronym) {
		this.accronym = accronym;
	}

}
