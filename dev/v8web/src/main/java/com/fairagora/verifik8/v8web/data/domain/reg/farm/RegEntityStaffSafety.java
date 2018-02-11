package com.fairagora.verifik8.v8web.data.domain.reg.farm;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.reg.V8Base;

@Entity
@Table(name = "reg_entity_staff_safety")
public class RegEntityStaffSafety extends V8Base {

	@Id
	@Column(name = "REG_ENTITY_FARM_ID")
	protected Long farmId;

	@Column(name = "SAFETY_EQUIPMENT_IN_FARM")
	protected Boolean safeyEquipmentInFarm;

	@Column(name = "WORKERS_USE_SAFETY_EQUIPMENT")
	protected Boolean workerUseEquipmentInFarm;
	
	@Column(name = "FREE_SAFETY_EQUIPMENT")
	protected Boolean freeSafetyEquipment;

	@Column(name = "NUMBER_TRAINED_STAFF")
	protected int numberTrainedStaff;

	@Column(name = "PREVENTION_ACCIDENT_MEASURES")
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
