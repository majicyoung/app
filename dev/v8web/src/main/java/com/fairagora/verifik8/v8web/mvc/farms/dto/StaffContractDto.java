package com.fairagora.verifik8.v8web.mvc.farms.dto;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class StaffContractDto implements Serializable {

	private static final long serialVersionUID = 1L;
	protected Long id;
	protected Long farm;

	protected Long entity;

	protected String contractNo;

	protected Long contactType;

	protected Long companyPositionType;

	protected String departement;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	protected Date startingDate;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	protected Date agreedEndDate;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	protected Date issuanceDate;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	protected Date actualTerminationDate;

	protected boolean continuingContract;

	protected Float duration;

	protected Float remuneration;

	protected Long remunerationCurrency;

	protected Long paymentFrequency;

	protected boolean minimumWagesApplied;

	protected int nbHoursPerDay;

	protected int nbDaysAnnualLeave;

	protected boolean noAnnualLeaveSpecified;

	protected boolean contractInAnotherLanguage;

	protected Long country;

	public Long getFarm() {
		return farm;
	}

	public void setFarm(Long farm) {
		this.farm = farm;
	}

	public Long getEntity() {
		return entity;
	}

	public void setEntity(Long entity) {
		this.entity = entity;
	}

	public String getContractNo() {
		return contractNo;
	}

	public void setContractNo(String contractNo) {
		this.contractNo = contractNo;
	}

	public Long getContactType() {
		return contactType;
	}

	public void setContactType(Long contactType) {
		this.contactType = contactType;
	}

	public Long getCompanyPositionType() {
		return companyPositionType;
	}

	public void setCompanyPositionType(Long companyPositionType) {
		this.companyPositionType = companyPositionType;
	}

	public String getDepartement() {
		return departement;
	}

	public void setDepartement(String departement) {
		this.departement = departement;
	}

	public Date getStartingDate() {
		return startingDate;
	}

	public void setStartingDate(Date startingDate) {
		this.startingDate = startingDate;
	}

	public Date getAgreedEndDate() {
		return agreedEndDate;
	}

	public void setAgreedEndDate(Date agreedEndDate) {
		this.agreedEndDate = agreedEndDate;
	}

	public Date getIssuanceDate() {
		return issuanceDate;
	}

	public void setIssuanceDate(Date issuanceDate) {
		this.issuanceDate = issuanceDate;
	}

	public Date getActualTerminationDate() {
		return actualTerminationDate;
	}

	public void setActualTerminationDate(Date actualTerminationDate) {
		this.actualTerminationDate = actualTerminationDate;
	}

	public boolean isContinuingContract() {
		return continuingContract;
	}

	public void setContinuingContract(boolean continuingContract) {
		this.continuingContract = continuingContract;
	}

	public Float getDuration() {
		return duration;
	}

	public void setDuration(Float duration) {
		this.duration = duration;
	}

	public Float getRemuneration() {
		return remuneration;
	}

	public void setRemuneration(Float remuneration) {
		this.remuneration = remuneration;
	}

	public Long getPaymentFrequency() {
		return paymentFrequency;
	}

	public void setPaymentFrequency(Long paymentFrequency) {
		this.paymentFrequency = paymentFrequency;
	}

	public boolean isMinimumWagesApplied() {
		return minimumWagesApplied;
	}

	public void setMinimumWagesApplied(boolean minimumWagesApplied) {
		this.minimumWagesApplied = minimumWagesApplied;
	}

	public int getNbHoursPerDay() {
		return nbHoursPerDay;
	}

	public void setNbHoursPerDay(int nbHoursPerDay) {
		this.nbHoursPerDay = nbHoursPerDay;
	}

	public int getNbDaysAnnualLeave() {
		return nbDaysAnnualLeave;
	}

	public void setNbDaysAnnualLeave(int nbDaysAnnualLeave) {
		this.nbDaysAnnualLeave = nbDaysAnnualLeave;
	}

	public boolean isNoAnnualLeaveSpecified() {
		return noAnnualLeaveSpecified;
	}

	public void setNoAnnualLeaveSpecified(boolean noAnnualLeaveSpecified) {
		this.noAnnualLeaveSpecified = noAnnualLeaveSpecified;
	}

	public boolean isContractInAnotherLanguage() {
		return contractInAnotherLanguage;
	}

	public void setContractInAnotherLanguage(boolean contractInAnotherLanguage) {
		this.contractInAnotherLanguage = contractInAnotherLanguage;
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

	public Long getRemunerationCurrency() {
		return remunerationCurrency;
	}

	public void setRemunerationCurrency(Long remunerationCurrency) {
		this.remunerationCurrency = remunerationCurrency;
	}
}
