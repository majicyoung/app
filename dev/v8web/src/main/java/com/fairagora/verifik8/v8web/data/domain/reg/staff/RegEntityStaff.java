package com.fairagora.verifik8.v8web.data.domain.reg.staff;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppCompanyPositionType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppLegalStatus;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefLanguage;
import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.domain.reg.V8Base;

@Entity
@Table(name = "reg_entity_staff")
public class RegEntityStaff extends V8Base {

	@EmbeddedId
	protected StaffCompKey key;

	@OneToOne(optional = false)
	@MapsId("farmId")
	@JoinColumn(name = "REG_ENTITY_FARM_ID")
	protected RegEntity farm;

	@OneToOne(optional = false)
	@MapsId("entityId")
	@JoinColumn(name = "REG_ENTITY_ID")
	protected RegEntity entity;

	@ManyToOne()
	@JoinColumn(name = "CL_LANGUAGE_ID")
	protected CLRefLanguage language;

	@ManyToOne()
	@JoinColumn(name = "CL_LEGAL_STATUS_ID")
	protected CLAppLegalStatus legalStatus;

	@ManyToOne()
	@JoinColumn(name = "CL_POSITION_TYPE_ID")
	protected CLAppCompanyPositionType position;
	
	@Column(name = "NOT_EMPLOYED_ANYMORE")
	protected boolean noEmployedAnymore;

	@Column(name = "FROM_LOCAL_COMMUNITY")
	protected boolean fromLocalComunity;

	@Column(name = "COMPANY_FOCAL_POINT")
	protected boolean companyFocalPoint;

	@Column(name = "TELEPHONE_OFFICE")
	protected String officePhoneNumber;

	@Column(name = "MOBILE_OFFICE")
	protected String officeMobile;

	@Column(name = "EMAIL_OFFICE")
	protected String officeEmail;

	@PrePersist
	void prePersistId(){
		if(key==null)key=new StaffCompKey();
		key.entityId=getEntity().getId();
		key.farmId=getFarm().getId();
	}
	
	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "WORKING_PERMIT_URL")) })
	protected Attachment workingPermit;

	public RegEntity getFarm() {
		return farm;
	}

	public void setFarm(RegEntity farm) {
		this.farm = farm;
	}

	public CLRefLanguage getLanguage() {
		return language;
	}

	public void setLanguage(CLRefLanguage language) {
		this.language = language;
	}

	public CLAppLegalStatus getLegalStatus() {
		return legalStatus;
	}

	public void setLegalStatus(CLAppLegalStatus legalStatus) {
		this.legalStatus = legalStatus;
	}

	public boolean isNoEmployedAnymore() {
		return noEmployedAnymore;
	}

	public void setNoEmployedAnymore(boolean noEmployedAnymore) {
		this.noEmployedAnymore = noEmployedAnymore;
	}

	public Attachment getWorkingPermit() {
		return workingPermit;
	}

	public void setWorkingPermit(Attachment workingPermit) {
		this.workingPermit = workingPermit;
	}

	public StaffCompKey getKey() {
		return key;
	}

	public void setKey(StaffCompKey key) {
		this.key = key;
	}

	public RegEntity getEntity() {
		return entity;
	}

	public void setEntity(RegEntity entity) {
		this.entity = entity;
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

	public CLAppCompanyPositionType getPosition() {
		return position;
	}

	public void setPosition(CLAppCompanyPositionType position) {
		this.position = position;
	}

}
