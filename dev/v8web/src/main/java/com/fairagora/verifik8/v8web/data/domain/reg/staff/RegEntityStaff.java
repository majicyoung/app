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
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.cl.CLLanguage;
import com.fairagora.verifik8.v8web.data.domain.cl.CLLegalStatus;
import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;

@Entity
@Table(name = "reg_entity_staff")
public class RegEntityStaff {

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
	protected CLLanguage language;

	@ManyToOne()
	@JoinColumn(name = "CL_LEGAL_STATUS_ID")
	protected CLLegalStatus legalStatus;

	@Column(name = "NOT_EMPLOYED_ANYMORE")
	protected boolean noEmployedAnymore;

	@Column(name = "FROM_LOCAL_COMMUNITY")
	protected boolean fromLocalComunity;

	@Column(name = "TELEPHONE_OFFICE")
	protected String officePhoneNumber;

	@Column(name = "MOBILE_OFFICE")
	protected String officeMobile;

	@Column(name = "EMAIL_OFFICE")
	protected String officeEmail;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "WORKING_PERMIT")) })
	protected Attachment workingPermit;

	public RegEntity getFarm() {
		return farm;
	}

	public void setFarm(RegEntity farm) {
		this.farm = farm;
	}

	public CLLanguage getLanguage() {
		return language;
	}

	public void setLanguage(CLLanguage language) {
		this.language = language;
	}

	public CLLegalStatus getLegalStatus() {
		return legalStatus;
	}

	public void setLegalStatus(CLLegalStatus legalStatus) {
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

}
