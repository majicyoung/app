package com.fairagora.verifik8.v8web.mvc.farms.dto;

public class StaffGeneralInfoSto {

	protected Long farmId;
	protected int numberOfStaffAsToday;
	protected int nbRestDays;
	protected boolean workersRepresentativeGroup;

	protected int nbWorkersChildLivingInFarm;
	protected int nbWorkersChildHelpingInFarm;
	protected int nbWorkersChildEnrolledSchool;

	protected boolean existenceHazardousWork;
	protected Long hazardousWorkType;

	protected boolean accessToProtectiveEquipment;

	protected boolean existenceWorkAccidentRecord;
	protected String workAccidentRecord;

	protected boolean existenceFarmPolicies;
	protected String farmPolicies;
	
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

	public String getWorkAccidentRecord() {
		return workAccidentRecord;
	}

	public void setWorkAccidentRecord(String workAccidentRecord) {
		this.workAccidentRecord = workAccidentRecord;
	}

	public boolean isExistenceFarmPolicies() {
		return existenceFarmPolicies;
	}

	public void setExistenceFarmPolicies(boolean existenceFarmPolicies) {
		this.existenceFarmPolicies = existenceFarmPolicies;
	}

	public String getFarmPolicies() {
		return farmPolicies;
	}

	public void setFarmPolicies(String farmPolicies) {
		this.farmPolicies = farmPolicies;
	}
}
