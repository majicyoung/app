package com.fairagora.verifik8.v8web.data.domain.reg.staff;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppCompanyPositionType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppContractType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCountry;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCurrency;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppPaymentFrequency;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.domain.reg.V8Base;

@Entity
@Table(name = "reg_entity_staff_contract")
public class RegEntityStaffContract extends V8Base implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	@ManyToOne(optional = false)
	@JoinColumn(name = "REG_ENTITY_FARM_ID")
	protected RegEntity farm;

	@ManyToOne(optional = false)
	@JoinColumn(name = "REG_ENTITY_ID")
	protected RegEntity entity;

	@Column(name = "CONTRACT_NO")
	protected String contractNo;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_CONTRACT_TYPE_ID")
	protected CLAppContractType contactType;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_COMPANY_POSITION_TYPE_ID")
	protected CLAppCompanyPositionType companyPositionType;

	@Column(name = "DEPARTMENT")
	protected String departement;

	@Temporal(TemporalType.DATE)
	@Column(name = "STARTING_DATE")
	protected Date startingDate;

	@Temporal(TemporalType.DATE)
	@Column(name = "AGREED_END_DATE")
	protected Date agreedEndDate;

	@Temporal(TemporalType.DATE)
	@Column(name = "ISSUANCE_DATE")
	protected Date issuanceDate;

	@Temporal(TemporalType.DATE)
	@Column(name = "ACTUAL_TERMINATION_DATE")
	protected Date actualTerminationDate;

	@Column(name = "CONTINUING_CONTRACT")
	protected boolean continuingContract;

	@Column(name = "CONTRACT_DURATION")
	protected Float duration;

	@Column(name = "CONTRACT_REMUNERATION")
	protected Float remuneration;

	@ManyToOne(optional=true)
	@JoinColumn(name = "CONTRACT_REMUNERATION_CURRENCY_ID")
	protected CLRefCurrency remunerationCurrency;
	
	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_PAYMENT_FREQUENCY_ID")
	protected CLAppPaymentFrequency paymentFrequency;

	@Column(name = "MINIMUM_WAGES_APPLIED")
	protected boolean minimumWagesApplied;

	@Column(name = "NB_HOURS_PER_DAY")
	protected int nbHoursPerDay;

	@Column(name = "NB_DAYS_ANNUAL_LEAVE")
	protected int nbDaysAnnualLeave;

	@Column(name = "NO_ANNUAL_LEAVE_SPECIFIED")
	protected boolean noAnnualLeaveSpecified;

	@Column(name = "CONTRACT_IN_OTHER_LANGUAGE")
	protected boolean contractInAnotherLanguage;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_COUNTRY_ID")
	protected CLRefCountry country;


	public RegEntity getFarm() {
		return farm;
	}

	public void setFarm(RegEntity farm) {
		this.farm = farm;
	}

	public RegEntity getEntity() {
		return entity;
	}

	public void setEntity(RegEntity entity) {
		this.entity = entity;
	}

	public String getContractNo() {
		return contractNo;
	}

	public void setContractNo(String contractNo) {
		this.contractNo = contractNo;
	}

	public CLAppContractType getContactType() {
		return contactType;
	}

	public void setContactType(CLAppContractType contactType) {
		this.contactType = contactType;
	}

	public CLAppCompanyPositionType getCompanyPositionType() {
		return companyPositionType;
	}

	public void setCompanyPositionType(CLAppCompanyPositionType companyPositionType) {
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

	public CLAppPaymentFrequency getPaymentFrequency() {
		return paymentFrequency;
	}

	public void setPaymentFrequency(CLAppPaymentFrequency paymentFrequency) {
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

	public CLRefCountry getCountry() {
		return country;
	}

	public void setCountry(CLRefCountry country) {
		this.country = country;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public CLRefCurrency getRemunerationCurrency() {
		return remunerationCurrency;
	}

	public void setRemunerationCurrency(CLRefCurrency remunerationCurrency) {
		this.remunerationCurrency = remunerationCurrency;
	}

}
