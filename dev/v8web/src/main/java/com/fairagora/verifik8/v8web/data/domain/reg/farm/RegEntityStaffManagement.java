package com.fairagora.verifik8.v8web.data.domain.reg.farm;

import java.sql.Time;
import java.util.List;

import javax.persistence.*;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppGetBackFinancialDepositReason;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppHazardousWorkType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppHiringRestrictionType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppNoEarlyTerminationContractReason;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppPaymentDebtType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppSalaryDeductionType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppWorkerEntityDocumentTypes;
import com.fairagora.verifik8.v8web.data.domain.cl.ClAppTerminationContractReason;
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

	@Column(name = "JOIN_WORKERS_REPRESENTATIVE_GROUP")
	protected boolean joinWorkersRepresentativeGroup;

	@Column(name = "NB_REPRESENTATIVE_GROUPS_IN_AREA")
	protected Integer nbRepresentativeGroupsInArea;

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

	@Column(name = "NB_SCHOOL_IN_AREA")
	protected Integer nbOfSchoolInArea;

	@Column(name = "NB_WORKERS_MIGRANTS")
	protected Integer nbWorkerMigrants;

	@Column(name = "MIMINUM_WAGES_APPLIED_TO_CONTRACT")
	protected boolean minimumWagesAppliedToContract;

	@Column(name = "WORKER_OVERTIME")
	protected boolean workerOvertime;

	@Column(name = "IS_OVERTIME_VOLUNTARY")
	protected boolean overtimeVoluntary;

	@Column(name = "EXISTENCE_HAZARDOUS_WORK")
	protected boolean existenceHazardousWork;

	@ManyToMany
	@JoinTable(
			name="reg_entity_staff_management_cl_app_hazardous_work_type",
			joinColumns=@JoinColumn(name="CL_HARZARDOUS_WORK_TYPE_ID", referencedColumnName="REG_ENTITY_FARM_ID"),
			inverseJoinColumns=@JoinColumn(name="REG_ENTITY_FARM_ID", referencedColumnName="ID"))
	protected List<CLAppHazardousWorkType> hazardousWorkTypes;

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

	@Column(name = "NB_MIGRANT_WORKERS")
	protected Integer nbMigrantWorkers;

	@Column(name = "EXISTENCE_DISCIPLINARY_POLICIES")
	protected boolean existenceDisciplinaryPolicies;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "DISCIPLINARY_POLICIES")) })
	protected Attachment disciplinaryPoliciesUrl;

	@Column(name = "EXISTENCE_GRIEVING_SYSTEM")
	protected boolean existenceGrievingSystem;

	@Column(name = "RECORD_GRIEVING_SYSTEM")
	protected boolean recordGrievingSystem;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "GRIEVING_SYSTEM_URL")) })
	protected Attachment grievingSystemUrl;

	@Column(name = "SAFETY_CONDITION")
	protected String safetyCondition;

	@Column(name = "WORKER_HURT")
	protected boolean workerHurt;

	@Column(name = "WORKER_HURT_EXPLANATION")
	protected String workerHurtExplaination;

	// --- HIRING SECTION ---------------------------------------------

	@Column(name = "WORKERS_MAKE_FINANCIAL_DEPOSIT")
	protected Boolean workersMakeFinancialDeposit;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_GET_BACK_FINANCIAL_DEPOSIT_REASON_ID")
	protected CLAppGetBackFinancialDepositReason getBackFinancialDepositReason;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_NO_EARLY_CONTRACT_TERMINATION_REASON_ID")
	protected CLAppNoEarlyTerminationContractReason noEarlyTerminationContractReason;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_CONTRACT_TERMINATION_REASON_ID")
	protected ClAppTerminationContractReason contractTerminationReason;

	@Column(name = "CONTRACT_TERMINATION_OTHER_REASON")
	protected String contractTerminationOtherReason;

	@Column(name = "KEEP_WORKER_DOCUMENTS_SAFEKEEPING")
	protected Boolean keepWorkerDocumentSafeKeeping;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_KEPT_WORKER_ENTITY_DOCUMENT_TYPE_ID_1")
	protected CLAppWorkerEntityDocumentTypes keptWorkerEntityDocumentType1;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_KEPT_WORKER_ENTITY_DOCUMENT_TYPE_ID_2")
	protected CLAppWorkerEntityDocumentTypes keptWorkerEntityDocumentType2;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_KEPT_WORKER_ENTITY_DOCUMENT_TYPE_ID_3")
	protected CLAppWorkerEntityDocumentTypes keptWorkerEntityDocumentType3;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_KEPT_WORKER_ENTITY_DOCUMENT_TYPE_ID_4")
	protected CLAppWorkerEntityDocumentTypes keptWorkerEntityDocumentType4;

	@Column(name = "ANY_CONTRACT_SIGNED_WITH_WORKERS")
	protected Boolean anyContractSignedWithWorkers;

	@Column(name = "STAFF_HIRED_DIRECTY")
	protected Boolean staffHiredDirectly;

	@Column(name = "STAFF_HIRED_THROUGH_AGENT")
	protected Boolean staffHiredThroughAgent;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_DEDUCTION_SALARY_ID_1")
	protected CLAppSalaryDeductionType salaryDeductionType1;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_DEDUCTION_SALARY_ID_2")
	protected CLAppSalaryDeductionType salaryDeductionType2;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_DEDUCTION_SALARY_ID_3")
	protected CLAppSalaryDeductionType salaryDeductionType3;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_DEDUCTION_SALARY_ID_4")
	protected CLAppSalaryDeductionType salaryDeductionType4;

	@Column(name = "DEDUCTION_SALARY_OTHER")
	protected String salaryDeductionOther;

	@Column(name = "AMOUNT_SALARY_DEDUCED_MONTH")
	protected Float amountSalaryDeducedMonth;

	@Column(name = "PAYMENT_SLIP_PROVIDED_TO_WORKER")
	protected Boolean paymentSlipProvidedToWorker;

	@Column(name = "WORKERS_IN_DEBT")
	protected Boolean workerInDebt;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_PAYMENT_DEBT_TYPE_ID_1")
	protected CLAppPaymentDebtType paymentDebtType1;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_PAYMENT_DEBT_TYPE_ID_2")
	protected CLAppPaymentDebtType paymentDebtType2;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_PAYMENT_DEBT_TYPE_ID_3")
	protected CLAppPaymentDebtType paymentDebtType3;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_PAYMENT_DEBT_TYPE_ID_4")
	protected CLAppPaymentDebtType paymentDebtType4;

	@Column(name = "WORKERS_IN_DEBT_OTHER_STAKEHOLDER")
	protected Boolean workersInDebtOtherStakeHolder;

	@Column(name = "IN_KIND_PAYMENT")
	protected Boolean inKindPayment;

	@Column(name = "IN_KIND_PAYMENT_TYPE")
	protected String inKindPaymentType;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_HIRING_RESTRICTION_ID")
	protected CLAppHiringRestrictionType hiringRestriction;

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

	public List<CLAppHazardousWorkType> getHazardousWorkTypes() {
		return hazardousWorkTypes;
	}

	public void setHazardousWorkTypes(List<CLAppHazardousWorkType> hazardousWorkTypes) {
		this.hazardousWorkTypes = hazardousWorkTypes;
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

	public boolean isExistenceGrievingSystem() {
		return existenceGrievingSystem;
	}

	public void setExistenceGrievingSystem(boolean existenceGrievingSystem) {
		this.existenceGrievingSystem = existenceGrievingSystem;
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

	public Integer getNbRepresentativeGroupsInArea() {
		return nbRepresentativeGroupsInArea;
	}

	public void setNbRepresentativeGroupsInArea(Integer nbRepresentativeGroupsInArea) {
		this.nbRepresentativeGroupsInArea = nbRepresentativeGroupsInArea;
	}

	public Integer getNbOfSchoolInArea() {
		return nbOfSchoolInArea;
	}

	public void setNbOfSchoolInArea(Integer nbOfSchoolInArea) {
		this.nbOfSchoolInArea = nbOfSchoolInArea;
	}

	public boolean isJoinWorkersRepresentativeGroup() {
		return joinWorkersRepresentativeGroup;
	}

	public void setJoinWorkersRepresentativeGroup(boolean joinWorkersRepresentativeGroup) {
		this.joinWorkersRepresentativeGroup = joinWorkersRepresentativeGroup;
	}

	public boolean isRecordGrievingSystem() {
		return recordGrievingSystem;
	}

	public void setRecordGrievingSystem(boolean recordGrievingSystem) {
		this.recordGrievingSystem = recordGrievingSystem;
	}

	public Integer getNbMigrantWorkers() {
		return nbMigrantWorkers;
	}

	public void setNbMigrantWorkers(Integer nbMigrantWorkers) {
		this.nbMigrantWorkers = nbMigrantWorkers;
	}

	public boolean isWorkerHurt() {
		return workerHurt;
	}

	public void setWorkerHurt(boolean workerHurt) {
		this.workerHurt = workerHurt;
	}

	public String getWorkerHurtExplaination() {
		return workerHurtExplaination;
	}

	public void setWorkerHurtExplaination(String workerHurtExplaination) {
		this.workerHurtExplaination = workerHurtExplaination;
	}

	public void setNbWorkerMigrants(Integer nbWorkerMigrants) {
		this.nbWorkerMigrants = nbWorkerMigrants;
	}

	public Boolean getWorkersMakeFinancialDeposit() {
		return workersMakeFinancialDeposit;
	}

	public void setWorkersMakeFinancialDeposit(Boolean workersMakeFinancialDeposit) {
		this.workersMakeFinancialDeposit = workersMakeFinancialDeposit;
	}

	public CLAppGetBackFinancialDepositReason getGetBackFinancialDepositReason() {
		return getBackFinancialDepositReason;
	}

	public void setGetBackFinancialDepositReason(CLAppGetBackFinancialDepositReason getBackFinancialDepositReason) {
		this.getBackFinancialDepositReason = getBackFinancialDepositReason;
	}

	public CLAppNoEarlyTerminationContractReason getNoEarlyTerminationContractReason() {
		return noEarlyTerminationContractReason;
	}

	public void setNoEarlyTerminationContractReason(
			CLAppNoEarlyTerminationContractReason noEarlyTerminationContractReason) {
		this.noEarlyTerminationContractReason = noEarlyTerminationContractReason;
	}

	public ClAppTerminationContractReason getContractTerminationReason() {
		return contractTerminationReason;
	}

	public void setContractTerminationReason(ClAppTerminationContractReason contractTerminationReason) {
		this.contractTerminationReason = contractTerminationReason;
	}

	public String getContractTerminationOtherReason() {
		return contractTerminationOtherReason;
	}

	public void setContractTerminationOtherReason(String contractTerminationOtherReason) {
		this.contractTerminationOtherReason = contractTerminationOtherReason;
	}

	public Boolean getKeepWorkerDocumentSafeKeeping() {
		return keepWorkerDocumentSafeKeeping;
	}

	public void setKeepWorkerDocumentSafeKeeping(Boolean keepWorkerDocumentSafeKeeping) {
		this.keepWorkerDocumentSafeKeeping = keepWorkerDocumentSafeKeeping;
	}

	public CLAppWorkerEntityDocumentTypes getKeptWorkerEntityDocumentType1() {
		return keptWorkerEntityDocumentType1;
	}

	public void setKeptWorkerEntityDocumentType1(CLAppWorkerEntityDocumentTypes keptWorkerEntityDocumentType1) {
		this.keptWorkerEntityDocumentType1 = keptWorkerEntityDocumentType1;
	}

	public CLAppWorkerEntityDocumentTypes getKeptWorkerEntityDocumentType2() {
		return keptWorkerEntityDocumentType2;
	}

	public void setKeptWorkerEntityDocumentType2(CLAppWorkerEntityDocumentTypes keptWorkerEntityDocumentType2) {
		this.keptWorkerEntityDocumentType2 = keptWorkerEntityDocumentType2;
	}

	public CLAppWorkerEntityDocumentTypes getKeptWorkerEntityDocumentType3() {
		return keptWorkerEntityDocumentType3;
	}

	public void setKeptWorkerEntityDocumentType3(CLAppWorkerEntityDocumentTypes keptWorkerEntityDocumentType3) {
		this.keptWorkerEntityDocumentType3 = keptWorkerEntityDocumentType3;
	}

	public CLAppWorkerEntityDocumentTypes getKeptWorkerEntityDocumentType4() {
		return keptWorkerEntityDocumentType4;
	}

	public void setKeptWorkerEntityDocumentType4(CLAppWorkerEntityDocumentTypes keptWorkerEntityDocumentType4) {
		this.keptWorkerEntityDocumentType4 = keptWorkerEntityDocumentType4;
	}

	public Boolean getAnyContractSignedWithWorkers() {
		return anyContractSignedWithWorkers;
	}

	public void setAnyContractSignedWithWorkers(Boolean anyContractSignedWithWorkers) {
		this.anyContractSignedWithWorkers = anyContractSignedWithWorkers;
	}

	public Boolean getStaffHiredDirectly() {
		return staffHiredDirectly;
	}

	public void setStaffHiredDirectly(Boolean staffHiredDirectly) {
		this.staffHiredDirectly = staffHiredDirectly;
	}

	public Boolean getStaffHiredThroughAgent() {
		return staffHiredThroughAgent;
	}

	public void setStaffHiredThroughAgent(Boolean staffHiredThroughAgent) {
		this.staffHiredThroughAgent = staffHiredThroughAgent;
	}

	public CLAppSalaryDeductionType getSalaryDeductionType1() {
		return salaryDeductionType1;
	}

	public void setSalaryDeductionType1(CLAppSalaryDeductionType salaryDeductionType1) {
		this.salaryDeductionType1 = salaryDeductionType1;
	}

	public CLAppSalaryDeductionType getSalaryDeductionType2() {
		return salaryDeductionType2;
	}

	public void setSalaryDeductionType2(CLAppSalaryDeductionType salaryDeductionType2) {
		this.salaryDeductionType2 = salaryDeductionType2;
	}

	public CLAppSalaryDeductionType getSalaryDeductionType3() {
		return salaryDeductionType3;
	}

	public void setSalaryDeductionType3(CLAppSalaryDeductionType salaryDeductionType3) {
		this.salaryDeductionType3 = salaryDeductionType3;
	}

	public CLAppSalaryDeductionType getSalaryDeductionType4() {
		return salaryDeductionType4;
	}

	public void setSalaryDeductionType4(CLAppSalaryDeductionType salaryDeductionType4) {
		this.salaryDeductionType4 = salaryDeductionType4;
	}

	public String getSalaryDeductionOther() {
		return salaryDeductionOther;
	}

	public void setSalaryDeductionOther(String salaryDeductionOther) {
		this.salaryDeductionOther = salaryDeductionOther;
	}

	public Float getAmountSalaryDeducedMonth() {
		return amountSalaryDeducedMonth;
	}

	public void setAmountSalaryDeducedMonth(Float amountSalaryDeducedMonth) {
		this.amountSalaryDeducedMonth = amountSalaryDeducedMonth;
	}

	public Boolean getPaymentSlipProvidedToWorker() {
		return paymentSlipProvidedToWorker;
	}

	public void setPaymentSlipProvidedToWorker(Boolean paymentSlipProvidedToWorker) {
		this.paymentSlipProvidedToWorker = paymentSlipProvidedToWorker;
	}

	public Boolean getWorkerInDebt() {
		return workerInDebt;
	}

	public void setWorkerInDebt(Boolean workerInDebt) {
		this.workerInDebt = workerInDebt;
	}

	public CLAppPaymentDebtType getPaymentDebtType1() {
		return paymentDebtType1;
	}

	public void setPaymentDebtType1(CLAppPaymentDebtType paymentDebtType1) {
		this.paymentDebtType1 = paymentDebtType1;
	}

	public CLAppPaymentDebtType getPaymentDebtType2() {
		return paymentDebtType2;
	}

	public void setPaymentDebtType2(CLAppPaymentDebtType paymentDebtType2) {
		this.paymentDebtType2 = paymentDebtType2;
	}

	public CLAppPaymentDebtType getPaymentDebtType3() {
		return paymentDebtType3;
	}

	public void setPaymentDebtType3(CLAppPaymentDebtType paymentDebtType3) {
		this.paymentDebtType3 = paymentDebtType3;
	}

	public CLAppPaymentDebtType getPaymentDebtType4() {
		return paymentDebtType4;
	}

	public void setPaymentDebtType4(CLAppPaymentDebtType paymentDebtType4) {
		this.paymentDebtType4 = paymentDebtType4;
	}

	public Boolean getWorkersInDebtOtherStakeHolder() {
		return workersInDebtOtherStakeHolder;
	}

	public void setWorkersInDebtOtherStakeHolder(Boolean workersInDebtOtherStakeHolder) {
		this.workersInDebtOtherStakeHolder = workersInDebtOtherStakeHolder;
	}

	public Boolean getInKindPayment() {
		return inKindPayment;
	}

	public void setInKindPayment(Boolean inKindPayment) {
		this.inKindPayment = inKindPayment;
	}

	public String getInKindPaymentType() {
		return inKindPaymentType;
	}

	public void setInKindPaymentType(String inKindPaymentType) {
		this.inKindPaymentType = inKindPaymentType;
	}

	public CLAppHiringRestrictionType getHiringRestriction() {
		return hiringRestriction;
	}

	public void setHiringRestriction(CLAppHiringRestrictionType hiringRestriction) {
		this.hiringRestriction = hiringRestriction;
	}

}
