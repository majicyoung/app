package com.fairagora.verifik8.v8web.data.domain.reg.farm;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppHazardousTrainingType;
import com.fairagora.verifik8.v8web.data.domain.reg.V8Base;

@Entity
@Table(name = "reg_entity_staff_training")
public class RegEntityStaffTraining extends V8Base {

	@Id
	@Column(name = "REG_ENTITY_FARM_ID")
	protected Long farmId;

	@Column(name = "FIRST_AID_TRAINING")
	protected Boolean firstAidTraining;

	@Column(name = "HAZARDOUS_ACTIVITIES_TRAINING")
	protected Boolean hazardousActivitiesTraining;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_HAZARDOUS_ACTIVITIES_TRAINING_TYPE_ID")
	protected CLAppHazardousTrainingType hazardousActivitiesTrainingType;
	
	@Column(name = "HAZARDOUS_ACTIVITIES_TRAINING_DATE")
	protected Date hazardousActivitiesTrainingDate;

	@Column(name = "HAZARDOUS_ACTIVITIES_NUMBER_TRAINED_STAFF")
	protected int numberHazardousActivitiesTrainedStaff;
	
	public Long getFarmId() {
		return farmId;
	}

	public void setFarmId(Long farmId) {
		this.farmId = farmId;
	}

	public Boolean getFirstAidTraining() {
		return firstAidTraining;
	}

	public void setFirstAidTraining(Boolean firstAidTraining) {
		this.firstAidTraining = firstAidTraining;
	}

	public Boolean getHazardousActivitiesTraining() {
		return hazardousActivitiesTraining;
	}

	public void setHazardousActivitiesTraining(Boolean hazardousActivitiesTraining) {
		this.hazardousActivitiesTraining = hazardousActivitiesTraining;
	}


	public Date getHazardousActivitiesTrainingDate() {
		return hazardousActivitiesTrainingDate;
	}

	public void setHazardousActivitiesTrainingDate(Date hazardousActivitiesTrainingDate) {
		this.hazardousActivitiesTrainingDate = hazardousActivitiesTrainingDate;
	}
	
	
	public int getNumberHazardousActivitiesTrainedStaff() {
		return numberHazardousActivitiesTrainedStaff;
	}

	public void setNumberHazardousActivitiesTrainedStaff(int numberHazardousActivitiesTrainedStaff) {
		this.numberHazardousActivitiesTrainedStaff = numberHazardousActivitiesTrainedStaff;
	}
	
	

}
