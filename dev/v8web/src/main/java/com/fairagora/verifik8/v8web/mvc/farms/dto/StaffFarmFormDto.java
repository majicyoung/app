package com.fairagora.verifik8.v8web.mvc.farms.dto;

import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public class StaffFarmFormDto {

	protected Long entity;
	protected Long position;
	
	protected Long language;
	protected Long legalStatus;

	protected String departement;

	protected String officePhoneNumber;
	protected String officeMobile;
	protected String officeEmail;

	protected boolean fromLocalComunity;
	protected boolean companyFocalPoint;
	protected boolean noEmployedAnymore;
	
	// att
	protected MultipartFile workingPermit;
	protected List<String> workingPermitUrl;

	
	public Long getEntity() {
		return entity;
	}

	public void setEntity(Long entity) {
		this.entity = entity;
	}

	public Long getPosition() {
		return position;
	}

	public void setPosition(Long position) {
		this.position = position;
	}

	public String getDepartement() {
		return departement;
	}

	public void setDepartement(String departement) {
		this.departement = departement;
	}

	public String getOfficePhoneNumber() {
		return officePhoneNumber;
	}

	public void setOfficePhoneNumber(String officePhoneNumber) {
		this.officePhoneNumber = officePhoneNumber;
	}

	public String getOfficeMobile() {
		return officeMobile;
	}

	public void setOfficeMobile(String officeMobile) {
		this.officeMobile = officeMobile;
	}

	public String getOfficeEmail() {
		return officeEmail;
	}

	public void setOfficeEmail(String officeEmail) {
		this.officeEmail = officeEmail;
	}

	public boolean isFromLocalComunity() {
		return fromLocalComunity;
	}

	public void setFromLocalComunity(boolean fromLocalComunity) {
		this.fromLocalComunity = fromLocalComunity;
	}

	public boolean isCompanyFocalPoint() {
		return companyFocalPoint;
	}

	public void setCompanyFocalPoint(boolean companyFocalPoint) {
		this.companyFocalPoint = companyFocalPoint;
	}

	public Long getLegalStatus() {
		return legalStatus;
	}

	public void setLegalStatus(Long legalStatus) {
		this.legalStatus = legalStatus;
	}

	public boolean isNoEmployedAnymore() {
		return noEmployedAnymore;
	}

	public void setNoEmployedAnymore(boolean noEmployedAnymore) {
		this.noEmployedAnymore = noEmployedAnymore;
	}

	public Long getLanguage() {
		return language;
	}

	public void setLanguage(Long language) {
		this.language = language;
	}

	public MultipartFile getWorkingPermit() {
		return workingPermit;
	}

	public void setWorkingPermit(MultipartFile workingPermit) {
		this.workingPermit = workingPermit;
	}

	public List<String> getWorkingPermitUrl() {
		return workingPermitUrl;
	}

	public void setWorkingPermitUrl(List<String> workingPermitUrl) {
		this.workingPermitUrl = workingPermitUrl;
	}

}
