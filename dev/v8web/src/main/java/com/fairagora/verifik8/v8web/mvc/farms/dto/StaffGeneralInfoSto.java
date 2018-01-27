package com.fairagora.verifik8.v8web.mvc.farms.dto;

import org.springframework.web.multipart.MultipartFile;

public class StaffGeneralInfoSto {

	protected Long farmId;
	protected int numberOfStaffAsToday;
	protected int nbRestDays;

	protected boolean workersRepresentativeGroup;
	protected int nbRepresentativeGroupsInArea;

	protected int nbWorkersChildLivingInFarm;
	protected int nbWorkersChildHelpingInFarm;
	protected int nbWorkersChildEnrolledSchool;

	protected boolean existenceHazardousWork;
	protected Long hazardousWorkType;

	protected boolean accessToProtectiveEquipment;
	protected MultipartFile protectiveEquipment;
	protected String protectiveEquipmentUrl;

	protected boolean existenceWorkAccidentRecord;

	protected MultipartFile workAccidentRecord;
	protected String workAccidentRecordUrl;

	protected boolean existenceFarmPolicies;
	protected MultipartFile farmPolicies;
	protected String farmPoliciesUrl;

	protected int nbOfSchoolInArea;

	protected boolean existenceGrievingSystem;
	protected boolean recordGrievingSystem;

	protected boolean joinWorkersRepresentativeGroup;
	protected int nbMigrantWorkers;

	protected boolean workerHurt;
	protected String workerHurtExplaination;

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

	public int getNbRestDays() {
		return nbRestDays;
	}

	public void setNbRestDays(int nbRestDays) {
		this.nbRestDays = nbRestDays;
	}

	public boolean isWorkersRepresentativeGroup() {
		return workersRepresentativeGroup;
	}

	public void setWorkersRepresentativeGroup(boolean workersRepresentativeGroup) {
		this.workersRepresentativeGroup = workersRepresentativeGroup;
	}

	public boolean isExistenceHazardousWork() {
		return existenceHazardousWork;
	}

	public void setExistenceHazardousWork(boolean existenceHazardousWork) {
		this.existenceHazardousWork = existenceHazardousWork;
	}

	public Long getHazardousWorkType() {
		return hazardousWorkType;
	}

	public void setHazardousWorkType(Long hazardousWorkType) {
		this.hazardousWorkType = hazardousWorkType;
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

	public boolean isAccessToProtectiveEquipment() {
		return accessToProtectiveEquipment;
	}

	public void setAccessToProtectiveEquipment(boolean accessToProtectiveEquipment) {
		this.accessToProtectiveEquipment = accessToProtectiveEquipment;
	}

	public boolean isExistenceWorkAccidentRecord() {
		return existenceWorkAccidentRecord;
	}

	public void setExistenceWorkAccidentRecord(boolean existenceWorkAccidentRecord) {
		this.existenceWorkAccidentRecord = existenceWorkAccidentRecord;
	}

	public boolean isExistenceFarmPolicies() {
		return existenceFarmPolicies;
	}

	public void setExistenceFarmPolicies(boolean existenceFarmPolicies) {
		this.existenceFarmPolicies = existenceFarmPolicies;
	}

	public MultipartFile getWorkAccidentRecord() {
		return workAccidentRecord;
	}

	public void setWorkAccidentRecord(MultipartFile workAccidentRecord) {
		this.workAccidentRecord = workAccidentRecord;
	}

	public String getWorkAccidentRecordUrl() {
		return workAccidentRecordUrl;
	}

	public void setWorkAccidentRecordUrl(String workAccidentRecordUrl) {
		this.workAccidentRecordUrl = workAccidentRecordUrl;
	}

	public MultipartFile getFarmPolicies() {
		return farmPolicies;
	}

	public void setFarmPolicies(MultipartFile farmPolicies) {
		this.farmPolicies = farmPolicies;
	}

	public String getFarmPoliciesUrl() {
		return farmPoliciesUrl;
	}

	public void setFarmPoliciesUrl(String farmPoliciesUrl) {
		this.farmPoliciesUrl = farmPoliciesUrl;
	}

	public MultipartFile getProtectiveEquipment() {
		return protectiveEquipment;
	}

	public void setProtectiveEquipment(MultipartFile protectiveEquipment) {
		this.protectiveEquipment = protectiveEquipment;
	}

	public String getProtectiveEquipmentUrl() {
		return protectiveEquipmentUrl;
	}

	public void setProtectiveEquipmentUrl(String protectiveEquipmentUrl) {
		this.protectiveEquipmentUrl = protectiveEquipmentUrl;
	}

	public int getNbOfSchoolInArea() {
		return nbOfSchoolInArea;
	}

	public void setNbOfSchoolInArea(int nbOfSchoolInArea) {
		this.nbOfSchoolInArea = nbOfSchoolInArea;
	}

	public int getNbRepresentativeGroupsInArea() {
		return nbRepresentativeGroupsInArea;
	}

	public void setNbRepresentativeGroupsInArea(int nbRepresentativeGroupsInArea) {
		this.nbRepresentativeGroupsInArea = nbRepresentativeGroupsInArea;
	}

	public boolean isRecordGrievingSystem() {
		return recordGrievingSystem;
	}

	public void setRecordGrievingSystem(boolean recordGrievingSystem) {
		this.recordGrievingSystem = recordGrievingSystem;
	}

	public boolean isJoinWorkersRepresentativeGroup() {
		return joinWorkersRepresentativeGroup;
	}

	public void setJoinWorkersRepresentativeGroup(boolean joinWorkersRepresentativeGroup) {
		this.joinWorkersRepresentativeGroup = joinWorkersRepresentativeGroup;
	}

	public int getNbMigrantWorkers() {
		return nbMigrantWorkers;
	}

	public void setNbMigrantWorkers(int nbMigrantWorkers) {
		this.nbMigrantWorkers = nbMigrantWorkers;
	}

	public boolean isExistenceGrievingSystem() {
		return existenceGrievingSystem;
	}

	public void setExistenceGrievingSystem(boolean existenceGrievingSystem) {
		this.existenceGrievingSystem = existenceGrievingSystem;
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

}
