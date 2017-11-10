package com.fairagora.verifik8.v8web.data.domain.reg.farm;

import javax.persistence.AssociationOverride;
import javax.persistence.AssociationOverrides;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import com.fairagora.verifik8.v8web.data.domain.V8EntitySupport;
import com.fairagora.verifik8.v8web.data.domain.cl.CLHvHeExpensionType;
import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.domain.commons.V8Measure;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;

@Entity
@Table(name = "reg_entity_farm_details")
public class RegEntityFarmDetails extends V8EntitySupport {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	@OneToOne(optional = false)
	@JoinColumn(name = "REG_ENTITY_FARM_ID")
	protected RegEntity entity;

	@OneToOne(optional = false)
	@JoinColumn(name = "REG_ENTITY_OWNER_ID")
	protected RegEntity owner;

	@OneToOne(optional = true)
	@JoinColumn(name = "MEMBER_COOP_ID")
	protected RegEntity cooperative;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "quantity", column = @Column(name = "SIZE")), })
	@AssociationOverrides({ @AssociationOverride(name = "unit", joinColumns = @JoinColumn(name = "CL_SIZE_UNIT_ID")) })
	protected V8Measure size;

	@Column(name = "LONGITUDE")
	protected String longitude;

	@Column(name = "LATITUDE")
	protected String latitude;

	@Column(name = "ENVIRONMENT_IMPACT_ASSESSMENT")
	protected boolean environmentImpactAssessment;

	@Embedded
	@AttributeOverrides({
			@AttributeOverride(name = "resourcePath", column = @Column(name = "ENVIRONMENT_IMPACT_ASSESSMENT_URL")) })
	protected Attachment environmentImpactAssessmentDoc;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "HVH_CONSTRUCT_PERMIT")) })
	protected Attachment contructionPermit;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "HVH_LAND_TITLE")) })
	protected Attachment landTitle;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "AERIAL_VIEW")) })
	protected Attachment aerialView;

	@Column(name = "SITING_PROTECTED_AREA")
	protected boolean sittingProtectedArea;

	@Embedded
	@AttributeOverrides({
			@AttributeOverride(name = "resourcePath", column = @Column(name = "SITING_PROTECTED_AREA_AUTHORIZATION_URL")) })
	protected Attachment sittingProtectedAreaDoc;

	@Column(name = "HVHE_FARM_EXPENSION")
	protected boolean farmExpension;

	@ManyToOne(optional = true)
	@NotFound(action = NotFoundAction.IGNORE)
	@JoinColumn(name = "CL_HVHE_EXPENSION_TYPE_ID")
	protected CLHvHeExpensionType farmExpensionType;

	@Embedded
	@AttributeOverrides({
			@AttributeOverride(name = "resourcePath", column = @Column(name = "HVHE_CANAL_RESTAURATION_PLAN")) })
	protected Attachment canalRestorationPlan;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "CUMUL_IMPACTS")) })
	protected Attachment cumulativeImpactStudy;

	@Column(name = "HAS_A_LAB")
	protected boolean hasALab;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public RegEntity getEntity() {
		return entity;
	}

	public void setEntity(RegEntity entity) {
		this.entity = entity;
	}

	public V8Measure getSize() {
		return size;
	}

	public void setSize(V8Measure size) {
		this.size = size;
	}

	public RegEntity getOwner() {
		return owner;
	}

	public void setOwner(RegEntity owner) {
		this.owner = owner;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public RegEntity getCooperative() {
		return cooperative;
	}

	public void setCooperative(RegEntity cooperative) {
		this.cooperative = cooperative;
	}

	public boolean isEnvironmentImpactAssessment() {
		return environmentImpactAssessment;
	}

	public void setEnvironmentImpactAssessment(boolean environmentImpactAssessment) {
		this.environmentImpactAssessment = environmentImpactAssessment;
	}

	public Attachment getEnvironmentImpactAssessmentDoc() {
		return environmentImpactAssessmentDoc;
	}

	public void setEnvironmentImpactAssessmentDoc(Attachment environmentImpactAssessmentDoc) {
		this.environmentImpactAssessmentDoc = environmentImpactAssessmentDoc;
	}

	public Attachment getContructionPermit() {
		return contructionPermit;
	}

	public void setContructionPermit(Attachment contructionPermit) {
		this.contructionPermit = contructionPermit;
	}

	public Attachment getLandTitle() {
		return landTitle;
	}

	public void setLandTitle(Attachment landTitle) {
		this.landTitle = landTitle;
	}

	public boolean isFarmExpension() {
		return farmExpension;
	}

	public void setFarmExpension(boolean farmExpension) {
		this.farmExpension = farmExpension;
	}

	public CLHvHeExpensionType getFarmExpensionType() {
		return farmExpensionType;
	}

	public void setFarmExpensionType(CLHvHeExpensionType farmExpensionType) {
		this.farmExpensionType = farmExpensionType;
	}

	public Attachment getCanalRestorationPlan() {
		return canalRestorationPlan;
	}

	public void setCanalRestorationPlan(Attachment canalRestorationPlan) {
		this.canalRestorationPlan = canalRestorationPlan;
	}

	public Attachment getCumulativeImpactStudy() {
		return cumulativeImpactStudy;
	}

	public void setCumulativeImpactStudy(Attachment cumulativeImpactStudy) {
		this.cumulativeImpactStudy = cumulativeImpactStudy;
	}

	public boolean isSittingProtectedArea() {
		return sittingProtectedArea;
	}

	public void setSittingProtectedArea(boolean sittingProtectedArea) {
		this.sittingProtectedArea = sittingProtectedArea;
	}

	public Attachment getSittingProtectedAreaDoc() {
		return sittingProtectedAreaDoc;
	}

	public void setSittingProtectedAreaDoc(Attachment sittingProtectedAreaDoc) {
		this.sittingProtectedAreaDoc = sittingProtectedAreaDoc;
	}

	public Attachment getAerialView() {
		return aerialView;
	}

	public void setAerialView(Attachment aerialView) {
		this.aerialView = aerialView;
	}

	public boolean isHasALab() {
		return hasALab;
	}

	public void setHasALab(boolean hasALab) {
		this.hasALab = hasALab;
	}

	public void setupFromExNihilo() {
		this.hasALab = false;
	}

	@Override
	public String getName() {
		return getEntity().getName();
	}
}
