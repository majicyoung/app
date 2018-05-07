package com.fairagora.verifik8.v8web.data.domain.reg.farm;

import java.util.Date;
import java.util.List;

import javax.persistence.*;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.reg.RegPicture;
import org.hibernate.annotations.*;

import com.fairagora.verifik8.v8web.data.domain.V8EntitySupport;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppHvHeExpensionType;
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
	
	@Column(name = "QUOTA_ID")
	protected String quotaId;

	@Column(name = "ENVIRONMENT_IMPACT_ASSESSMENT")
	protected boolean environmentImpactAssessment;

	@OneToMany(cascade=CascadeType.ALL,
			fetch = FetchType.EAGER)
	@JoinTable(
			name = "jt_reg_farm_details_environment_impact_reg_picture",
			joinColumns = @JoinColumn(name = "ENTITY_ID"),
			inverseJoinColumns = @JoinColumn(name = "PICTURE_ID")
	)
	@Fetch(value = FetchMode.SUBSELECT)
	protected List<RegPicture> environmentImpactAssessmentDoc;

	@OneToMany(cascade=CascadeType.ALL,
			fetch = FetchType.EAGER)
	@JoinTable(
			name = "jt_reg_farm_details_construction_permit_reg_picture",
			joinColumns = @JoinColumn(name = "ENTITY_ID"),
			inverseJoinColumns = @JoinColumn(name = "PICTURE_ID")
	)
	@Fetch(value = FetchMode.SUBSELECT)
	protected List<RegPicture> contructionPermit;

	@OneToMany(cascade=CascadeType.ALL,
			fetch = FetchType.EAGER)
	@JoinTable(
			name = "jt_reg_farm_details_land_title_reg_picture",
			joinColumns = @JoinColumn(name = "ENTITY_ID"),
			inverseJoinColumns = @JoinColumn(name = "PICTURE_ID")
	)
	@Fetch(value = FetchMode.SUBSELECT)
	protected List<RegPicture> landTitle;

	@OneToMany(cascade=CascadeType.ALL,
				fetch = FetchType.EAGER)
	@JoinTable(
			name = "jt_reg_farm_details_aerial_views_reg_picture",
			joinColumns = @JoinColumn(name = "ENTITY_ID"),
			inverseJoinColumns = @JoinColumn(name = "PICTURE_ID")
	)
	@Fetch(value = FetchMode.SUBSELECT)
	protected List<RegPicture> aerialViews;

	@Column(name = "SITING_PROTECTED_AREA")
	protected boolean sittingProtectedArea;

	@OneToMany(cascade=CascadeType.ALL,
			fetch = FetchType.EAGER)
	@JoinTable(
			name = "jt_reg_farm_details_sitting_protected_area_reg_picture",
			joinColumns = @JoinColumn(name = "ENTITY_ID"),
			inverseJoinColumns = @JoinColumn(name = "PICTURE_ID")
	)
	@Fetch(value = FetchMode.SUBSELECT)
	protected List<RegPicture> sittingProtectedAreaDoc;

	@Column(name = "HVHE_FARM_EXPENSION")
	protected boolean farmExpension;

	@ManyToOne(optional = true)
	@NotFound(action = NotFoundAction.IGNORE)
	@JoinColumn(name = "CL_HVHE_EXPENSION_TYPE_ID")
	protected CLAppHvHeExpensionType farmExpensionType;

	@OneToMany(cascade=CascadeType.ALL,
			fetch = FetchType.EAGER)
	@JoinTable(
			name = "jt_reg_farm_details_canal_restoration_reg_picture",
			joinColumns = @JoinColumn(name = "ENTITY_ID"),
			inverseJoinColumns = @JoinColumn(name = "PICTURE_ID")
	)
	@Fetch(value = FetchMode.SUBSELECT)
	protected List<RegPicture> canalRestorationPlan;

	@OneToMany(cascade=CascadeType.ALL,
			fetch = FetchType.EAGER)
	@JoinTable(
			name = "jt_reg_farm_details_cumulative_impact_reg_picture",
			joinColumns = @JoinColumn(name = "ENTITY_ID"),
			inverseJoinColumns = @JoinColumn(name = "PICTURE_ID")
	)
	@Fetch(value = FetchMode.SUBSELECT)
	protected List<RegPicture> cumulativeImpactStudy;

	@Column(name = "HAS_A_LAB")
	protected boolean hasALab;

	@Column(name = "STAKEHOLDER_MEETING_PARTICIPATION")
	protected boolean stakeholderMeetingParticipation;

	@Column(name = "MEMBER_OF_ASSOCIATION")
	protected boolean memberAssociation;
	
	@Column(name = "STAKEHOLDER_MEETING_DATE")
	protected Date stakeholderMeetingDate;

	@Column(name = "STAKEHOLDER_MEETING_LOCATION")
	protected String stakeholderMeetingLocation;
	
	
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

	public List<RegPicture> getEnvironmentImpactAssessmentDoc() {
		return environmentImpactAssessmentDoc;
	}

	public void setEnvironmentImpactAssessmentDoc(List<RegPicture> environmentImpactAssessmentDoc) {
		this.environmentImpactAssessmentDoc = environmentImpactAssessmentDoc;
	}

	public List<RegPicture> getContructionPermit() {
		return contructionPermit;
	}

	public void setContructionPermit(List<RegPicture> contructionPermit) {
		this.contructionPermit = contructionPermit;
	}

	public List<RegPicture> getLandTitle() {
		return landTitle;
	}

	public void setLandTitle(List<RegPicture> landTitle) {
		this.landTitle = landTitle;
	}

	public boolean isFarmExpension() {
		return farmExpension;
	}

	public void setFarmExpension(boolean farmExpension) {
		this.farmExpension = farmExpension;
	}

	public CLAppHvHeExpensionType getFarmExpensionType() {
		return farmExpensionType;
	}

	public void setFarmExpensionType(CLAppHvHeExpensionType farmExpensionType) {
		this.farmExpensionType = farmExpensionType;
	}

	public List<RegPicture> getCanalRestorationPlan() {
		return canalRestorationPlan;
	}

	public void setCanalRestorationPlan(List<RegPicture> canalRestorationPlan) {
		this.canalRestorationPlan = canalRestorationPlan;
	}

	public List<RegPicture> getCumulativeImpactStudy() {
		return cumulativeImpactStudy;
	}

	public void setCumulativeImpactStudy(List<RegPicture> cumulativeImpactStudy) {
		this.cumulativeImpactStudy = cumulativeImpactStudy;
	}

	public boolean isSittingProtectedArea() {
		return sittingProtectedArea;
	}

	public void setSittingProtectedArea(boolean sittingProtectedArea) {
		this.sittingProtectedArea = sittingProtectedArea;
	}

	public List<RegPicture> getSittingProtectedAreaDoc() {
		return sittingProtectedAreaDoc;
	}

	public void setSittingProtectedAreaDoc(List<RegPicture> sittingProtectedAreaDoc) {
		this.sittingProtectedAreaDoc = sittingProtectedAreaDoc;
	}

	public List<RegPicture> getAerialView() {
		return aerialViews;
	}

	public void setAerialView(List<RegPicture> aerialView) {
		this.aerialViews = aerialView;
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
