package com.fairagora.verifik8.v8web.data.domain.reg.farm;

import java.sql.Time;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppHazardousWorkType;
import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;

@Entity
@Table(name = "reg_entity_staff_management")
public class RegEntityStaffManagement {

	@Id
	@Column(name = "REG_ENTITY_FARM_ID")
	protected Long farmId;

	@Column(name = "NUMBER_STAFF_FARM_AS_TODAY")
	protected int numberOfStaffAsToday;

	@Column(name = "NB_REST_DAYS")
	protected int nbRestDays;

	@Column(name = "WORKERS_REPRESENTATIVE_GROUP")
	protected boolean workersRepresentativeGroup;

	@Column(name = "REGULAR_WORK_START_HOUR")
	protected Time regularWorkStartHour;

	@Column(name = "REGULAR_WORK_END_HOUR")
	protected Time regularWorkEndHour;

	@Column(name = "NB_WORKERS_LIVING_IN_FARM")
	protected int nbWorkersLivingInFarm;

	@Column(name = "NB_WORKERS_CHILD_LIVING_IN_FARM")
	protected int nbWorkersChildLivingInFarm;

	@Column(name = "NB_WORKERS_CHILD_HELPING_IN_FARM")
	protected int nbWorkersChildHelpingInFarm;

	@Column(name = "NB_WORKERS_CHILD_ENROLLED_SCHOOL")
	protected int nbWorkersChildEnrolledSchool;

	@Column(name = "NB_WORKERS_MIGRANTS")
	protected int nbWorkerMigrants;

	@Column(name = "MIMINUM_WAGES_APPLIED_TO_CONTRACT")
	protected boolean minimumWagesAppliedToContract;

	@Column(name = "WORKER_OVERTIME")
	protected boolean workerOvertime;

	@Column(name = "IS_OVERTIME_VOLUNTARY")
	protected boolean overtimeVoluntary;

	@Column(name = "EXISTENCE_HAZARDOUS_WORK")
	protected boolean existenceHazardousWork;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_HARZARDOUS_WORK_TYPE_ID")
	protected CLAppHazardousWorkType hazardousWorkType;

	@Column(name = "EXISTENCE_FARM_POLICIES")
	protected boolean existenceFarmPolicies;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "FARM_POLICIES")) })
	protected Attachment farmPolicies;

	@Column(name = "EXISTENCE_HEALTH_SAFETY_POLICIES")
	protected boolean existenceHealthSafetyPolicies;

	@Column(name = "HEALTH_SAFETY_POLICIES")
	protected String healthSafetyPolicies;

	@Column(name = "EXISTENCE_WORK_ACCIDENT_RECORD")
	protected boolean existenceWorkAccidentRecord;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "WORK_ACCIDENT_RECORD")) })
	protected Attachment workAccidentRecord;

	@Column(name = "ACCESS_TO_PROTECTIVE_EQUIPMENT")
	protected boolean accessToProtectiveEquipment;

	@Embedded
	@AttributeOverrides({
			@AttributeOverride(name = "resourcePath", column = @Column(name = "PROTECTIVE_EQUIPMENT_URL")) })
	protected Attachment protectiveEquipment;
	
	@Column(name = "EMPLOYER_ISSUE_RECORD")
	protected boolean empolyerIssueRecord;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "ISSUE_RECORD_URL")) })
	protected Attachment issueRecordUrl;

	@Column(name = "EXISTENCE_EXTRA_WORK_RECORD")
	protected boolean existenceExtraWorkRecord;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "EXTRA_WORK_RECORD_URL")) })
	protected Attachment extraWorkRecordUrl;

	@Column(name = "EXISTENCE_FREEDOM_ASSOCIATION_DISCLAIMER")
	protected boolean existenceFreedomAssociationDisclaimer;

	@Embedded
	@AttributeOverrides({
			@AttributeOverride(name = "resourcePath", column = @Column(name = "FREEDOM_ASSOCIATION_DISCLAIMER_URL")) })
	protected Attachment freedomAssociationDisclaimerUrl;

	@Column(name = "EXISTENCE_DISCRIMINATION_REGULATION")
	protected boolean existenceDiscriminationRegulation;

	@Embedded
	@AttributeOverrides({
			@AttributeOverride(name = "resourcePath", column = @Column(name = "DISCRIMINATION_REGULATION_URL")) })
	protected Attachment discriminationRegulationUrl;

	@Column(name = "EXISTENCE_DISCIPLINARY_POLICIES")
	protected boolean existenceDisciplinaryPolicies;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "DISCIPLINARY_POLICIES")) })
	protected Attachment disciplinaryPoliciesUrl;

	@Column(name = "EXISTENCE_GRIEVING_SYSTEM")
	protected boolean existenceGrievinSystem;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "GRIEVING_SYSTEM_URL")) })
	protected Attachment grievingSystemUrl;

	

	@Column(name = "SAFETY_CONDITION")
	protected String safetyCondition;

	public Long getFarmId() {
		return farmId;
	}

	public void setFarmId(Long farmId) {
		this.farmId = farmId;
	}

	public int getNumberOfStaffAsToday() {
		return numberOfStaffAsToday;
	}

	public void setNumberOfStaffAsToday(int numberOfStaffAsToday) {
		this.numberOfStaffAsToday = numberOfStaffAsToday;
	}

	public Time getRegularWorkStartHour() {
		return regularWorkStartHour;
	}

	public void setRegularWorkStartHour(Time regularWorkStartHour) {
		this.regularWorkStartHour = regularWorkStartHour;
	}

	public Time getRegularWorkEndHour() {
		return regularWorkEndHour;
	}

	public void setRegularWorkEndHour(Time regularWorkEndHour) {
		this.regularWorkEndHour = regularWorkEndHour;
	}

	public int getNbWorkersLivingInFarm() {
		return nbWorkersLivingInFarm;
	}

	public void setNbWorkersLivingInFarm(int nbWorkersLivingInFarm) {
		this.nbWorkersLivingInFarm = nbWorkersLivingInFarm;
	}

	public int getNbWorkersChildLivingInFarm() {
		return nbWorkersChildLivingInFarm;
	}

	public void setNbWorkersChildLivingInFarm(int nbWorkersChildLivingInFarm) {
		this.nbWorkersChildLivingInFarm = nbWorkersChildLivingInFarm;
	}

	public int getNbWorkersChildHelpingInFarm() {
		return nbWorkersChildHelpingInFarm;
	}

	public void setNbWorkersChildHelpingInFarm(int nbWorkersChildHelpingInFarm) {
		this.nbWorkersChildHelpingInFarm = nbWorkersChildHelpingInFarm;
	}

	public int getNbWorkersChildEnrolledSchool() {
		return nbWorkersChildEnrolledSchool;
	}

	public void setNbWorkersChildEnrolledSchool(int nbWorkersChildEnrolledSchool) {
		this.nbWorkersChildEnrolledSchool = nbWorkersChildEnrolledSchool;
	}

	public int getNbWorkerMigrants() {
		return nbWorkerMigrants;
	}

	public void setNbWorkerMigrants(int nbWorkerMigrants) {
		this.nbWorkerMigrants = nbWorkerMigrants;
	}

	public boolean isMinimumWagesAppliedToContract() {
		return minimumWagesAppliedToContract;
	}

	public void setMinimumWagesAppliedToContract(boolean minimumWagesAppliedToContract) {
		this.minimumWagesAppliedToContract = minimumWagesAppliedToContract;
	}

	public boolean isWorkerOvertime() {
		return workerOvertime;
	}

	public void setWorkerOvertime(boolean workerOvertime) {
		this.workerOvertime = workerOvertime;
	}

	public boolean getOvertimeVoluntary() {
		return overtimeVoluntary;
	}

	public void setOvertimeVoluntary(boolean overtimeVoluntary) {
		this.overtimeVoluntary = overtimeVoluntary;
	}

	public int getNbRestDays() {
		return nbRestDays;
	}

	public void setNbRestDays(int nbRestDays) {
		this.nbRestDays = nbRestDays;
	}

	public boolean isExistenceHazardousWork() {
		return existenceHazardousWork;
	}

	public void setExistenceHazardousWork(boolean existenceHazardousWork) {
		this.existenceHazardousWork = existenceHazardousWork;
	}

	public CLAppHazardousWorkType getHazardousWorkType() {
		return hazardousWorkType;
	}

	public void setHazardousWorkType(CLAppHazardousWorkType hazardousWorkType) {
		this.hazardousWorkType = hazardousWorkType;
	}

	public boolean isExistenceFarmPolicies() {
		return existenceFarmPolicies;
	}

	public void setExistenceFarmPolicies(boolean existenceFarmPolicies) {
		this.existenceFarmPolicies = existenceFarmPolicies;
	}

	public Attachment getFarmPolicies() {
		return farmPolicies;
	}

	public void setFarmPolicies(Attachment farmPolicies) {
		this.farmPolicies = farmPolicies;
	}

	public boolean isExistenceHealthSafetyPolicies() {
		return existenceHealthSafetyPolicies;
	}

	public void setExistenceHealthSafetyPolicies(boolean existenceHealthSafetyPolicies) {
		this.existenceHealthSafetyPolicies = existenceHealthSafetyPolicies;
	}

	public String getHealthSafetyPolicies() {
		return healthSafetyPolicies;
	}

	public void setHealthSafetyPolicies(String healthSafetyPolicies) {
		this.healthSafetyPolicies = healthSafetyPolicies;
	}

	public boolean isExistenceWorkAccidentRecord() {
		return existenceWorkAccidentRecord;
	}

	public void setExistenceWorkAccidentRecord(boolean existenceWorkAccidentRecord) {
		this.existenceWorkAccidentRecord = existenceWorkAccidentRecord;
	}

	public Attachment getWorkAccidentRecord() {
		return workAccidentRecord;
	}

	public void setWorkAccidentRecord(Attachment workAccidentRecord) {
		this.workAccidentRecord = workAccidentRecord;
	}

	public boolean isAccessToProtectiveEquipment() {
		return accessToProtectiveEquipment;
	}

	public void setAccessToProtectiveEquipment(boolean accessToProtectiveEquipment) {
		this.accessToProtectiveEquipment = accessToProtectiveEquipment;
	}

	public boolean isEmpolyerIssueRecord() {
		return empolyerIssueRecord;
	}

	public void setEmpolyerIssueRecord(boolean empolyerIssueRecord) {
		this.empolyerIssueRecord = empolyerIssueRecord;
	}

	public Attachment getIssueRecordUrl() {
		return issueRecordUrl;
	}

	public void setIssueRecordUrl(Attachment issuRecordUrl) {
		this.issueRecordUrl = issuRecordUrl;
	}

	public boolean isExistenceExtraWorkRecord() {
		return existenceExtraWorkRecord;
	}

	public void setExistenceExtraWorkRecord(boolean existenceExtraWorkRecord) {
		this.existenceExtraWorkRecord = existenceExtraWorkRecord;
	}

	public Attachment getExtraWorkRecordUrl() {
		return extraWorkRecordUrl;
	}

	public void setExtraWorkRecordUrl(Attachment extraWorkRecordUrl) {
		this.extraWorkRecordUrl = extraWorkRecordUrl;
	}

	public boolean isExistenceFreedomAssociationDisclaimer() {
		return existenceFreedomAssociationDisclaimer;
	}

	public void setExistenceFreedomAssociationDisclaimer(boolean existenceFreedomAssociationDisclaimer) {
		this.existenceFreedomAssociationDisclaimer = existenceFreedomAssociationDisclaimer;
	}

	public Attachment getFreedomAssociationDisclaimerUrl() {
		return freedomAssociationDisclaimerUrl;
	}

	public void setFreedomAssociationDisclaimerUrl(Attachment freedomAssociationDisclaimerUrl) {
		this.freedomAssociationDisclaimerUrl = freedomAssociationDisclaimerUrl;
	}

	public boolean isExistenceDiscriminationRegulation() {
		return existenceDiscriminationRegulation;
	}

	public void setExistenceDiscriminationRegulation(boolean existenceDiscriminationRegulation) {
		this.existenceDiscriminationRegulation = existenceDiscriminationRegulation;
	}

	public Attachment getDiscriminationRegulationUrl() {
		return discriminationRegulationUrl;
	}

	public void setDiscriminationRegulationUrl(Attachment discriminationRegulationUrl) {
		this.discriminationRegulationUrl = discriminationRegulationUrl;
	}

	public boolean isExistenceDisciplinaryPolicies() {
		return existenceDisciplinaryPolicies;
	}

	public void setExistenceDisciplinaryPolicies(boolean existenceDisciplinaryPolicies) {
		this.existenceDisciplinaryPolicies = existenceDisciplinaryPolicies;
	}

	public Attachment getDisciplinaryPoliciesUrl() {
		return disciplinaryPoliciesUrl;
	}

	public void setDisciplinaryPoliciesUrl(Attachment disciplinaryPoliciesUrl) {
		this.disciplinaryPoliciesUrl = disciplinaryPoliciesUrl;
	}

	public boolean isExistenceGrievinSystem() {
		return existenceGrievinSystem;
	}

	public void setExistenceGrievinSystem(boolean existenceGrievinSystem) {
		this.existenceGrievinSystem = existenceGrievinSystem;
	}

	public Attachment getGrievingSystemUrl() {
		return grievingSystemUrl;
	}

	public void setGrievingSystemUrl(Attachment grievingSystemUrl) {
		this.grievingSystemUrl = grievingSystemUrl;
	}

	 

	public Attachment getProtectiveEquipment() {
		return protectiveEquipment;
	}

	public void setProtectiveEquipment(Attachment protectiveEquipmentUrl) {
		this.protectiveEquipment = protectiveEquipmentUrl;
	}

	public String getSafetyCondition() {
		return safetyCondition;
	}

	public void setSafetyCondition(String safetyCondition) {
		this.safetyCondition = safetyCondition;
	}

	public boolean isWorkersRepresentativeGroup() {
		return workersRepresentativeGroup;
	}

	public void setWorkersRepresentativeGroup(boolean workersRepresentativeGroup) {
		this.workersRepresentativeGroup = workersRepresentativeGroup;
	}

}
