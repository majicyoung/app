package com.fairagora.verifik8.v8web.services.enhanced;

import com.fairagora.verifik8.v8web.data.domain.commons.Address;
import com.fairagora.verifik8.v8web.data.domain.commons.V8Measure;

/**
 * decorated version of the RegEntity to map a farm
 * 
 * @author gregoire
 *
 */
public class V8Farm {

	private Long id;
	private String name;

	protected Address address;

	protected String phoneNumber;
	protected String mobileNumber;
	protected String faxNumber;
	protected String email;
	protected String website;

	private String location;

	private int staffCount;
	private int pondsCount;
	private int plotsCount;

	private V8Measure size;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public V8Measure getSize() {
		return size;
	}

	public void setSize(V8Measure size) {
		this.size = size;
	}

	public int getStaffCount() {
		return staffCount;
	}

	public void setStaffCount(int staffCount) {
		this.staffCount = staffCount;
	}

	public int getPondsCount() {
		return pondsCount;
	}

	public void setPondsCount(int poundsCount) {
		this.pondsCount = poundsCount;
	}

	public int getFieldsCount() {
		return plotsCount;
	}

	public void setFieldsCount(int fieldsCount) {
		this.plotsCount = fieldsCount;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
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

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public int getPlotsCount() {
		return plotsCount;
	}

	public void setPlotsCount(int plotsCount) {
		this.plotsCount = plotsCount;
	}
}
