package com.fairagora.verifik8.v8web.mvc.farms.dto;

public class FarmStaffSafetyDto {

	protected Long farmId;

	protected Boolean safeyEquipmentInFarm;

	protected Boolean workerUseEquipmentInFarm;
	
	protected Boolean freeSafetyEquipment;

	protected int numberTrainedStaff;

	protected Boolean preventionAccidentMeasures;

	public Long getFarmId() {
		return farmId;
	}

	public void setFarmId(Long farmId) {
		this.farmId = farmId;
	}

	public Boolean getSafeyEquipmentInFarm() {
		return safeyEquipmentInFarm;
	}

	public void setSafeyEquipmentInFarm(Boolean safeyEquipmentInFarm) {
		this.safeyEquipmentInFarm = safeyEquipmentInFarm;
	}

	public Boolean getWorkerUseEquipmentInFarm() {
		return workerUseEquipmentInFarm;
	}

	public void setWorkerUseEquipmentInFarm(Boolean workerUseEquipmentInFarm) {
		this.workerUseEquipmentInFarm = workerUseEquipmentInFarm;
	}
	
	
	public Boolean getFreeSafetyEquipment() {
		return freeSafetyEquipment;
	}

	public void setFreeSafetyEquipment(Boolean freeSafetyEquipment) {
		this.freeSafetyEquipment = freeSafetyEquipment;
	}

	public int getNumberTrainedStaff() {
		return numberTrainedStaff;
	}

	public void setNumberTrainedStaff(int numberTrainedStaff) {
		this.numberTrainedStaff = numberTrainedStaff;
	}

	public Boolean getPreventionAccidentMeasures() {
		return preventionAccidentMeasures;
	}

	public void setPreventionAccidentMeasures(Boolean preventionAccidentMeasures) {
		this.preventionAccidentMeasures = preventionAccidentMeasures;
	}

}
