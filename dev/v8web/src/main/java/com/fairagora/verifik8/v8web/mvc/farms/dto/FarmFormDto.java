package com.fairagora.verifik8.v8web.mvc.farms.dto;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.AddressDto;
import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.V8MeasureDto;

public class FarmFormDto {

	protected Long id;

	protected String name;

	protected Long owner;

	protected Long cooperative;

	protected AddressDto address;

	protected String phoneNumber;

	protected String mobileNumber;

	protected String faxNumber;

	protected String email;
	protected String instantMessanger;
	
	protected String website;
	protected String quotaId;

	protected Float longitude;

	protected Float latitude;

	protected V8MeasureDto size;

	protected MultipartFile aerialViewMultipart;
	protected List<String> aerialViewUrl;

	protected boolean stakeholderMeetingParticipation;
	
	protected boolean memberAssociation;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	protected Date stakeholderMeetingDate;
	
	protected String stakeholderMeetingLocation;
	
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

	public String getInstantMessanger() {
		return instantMessanger;
	}

	public void setInstantMessanger(String instantMessanger) {
		this.instantMessanger = instantMessanger;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public Long getOwner() {
		return owner;
	}

	public void setOwner(Long owner) {
		this.owner = owner;
	}

	public Float getLongitude() {
		return longitude;
	}

	public void setLongitude(Float longitude) {
		this.longitude = longitude;
	}

	public Float getLatitude() {
		return latitude;
	}

	public void setLatitude(Float latitude) {
		this.latitude = latitude;
	}

	public V8MeasureDto getSize() {
		return size;
	}

	public void setSize(V8MeasureDto size) {
		this.size = size;
	}

	public Long getCooperative() {
		return cooperative;
	}

	public void setCooperative(Long cooperative) {
		this.cooperative = cooperative;
	}

	public MultipartFile getAerialViewMultipart() {
		return aerialViewMultipart;
	}

	public void setAerialViewMultipart(MultipartFile aerialViewMultipart) {
		this.aerialViewMultipart = aerialViewMultipart;
	}

	public List<String> getAerialViewUrl() {
		return aerialViewUrl;
	}

	public void setAerialViewUrl(List<String> aerialViewUrl) {
		this.aerialViewUrl = aerialViewUrl;
	}

	public String getQuotaId() {
		return quotaId;
	}

	public void setQuotaId(String quotaId) {
		this.quotaId = quotaId;
	}
	
	public boolean isStakeholderMeetingParticipation() {
		return stakeholderMeetingParticipation;
	}

	public void setStakeholderMeetingParticipation(boolean stakeholderMeetingParticipation) {
		this.stakeholderMeetingParticipation = stakeholderMeetingParticipation;
	}
	
	public boolean isMemberAssociation() {
		return memberAssociation;
	}

	public void setMemberAssociation(boolean memberAssociation) {
		this.memberAssociation = memberAssociation;
	}	

	public Date getStakeholderMeetingDate() {
		return stakeholderMeetingDate;
	}

	public void setStakeholderMeetingDate(Date stakeholderMeetingDate) {
		this.stakeholderMeetingDate = stakeholderMeetingDate;
	}
	
	public String getStakeholderMeetingLocation() {
		return stakeholderMeetingLocation;
	}

	public void setStakeholderMeetingLocation(String stakeholderMeetingLocation) {
		this.stakeholderMeetingLocation = stakeholderMeetingLocation;
	}
	
	
}
