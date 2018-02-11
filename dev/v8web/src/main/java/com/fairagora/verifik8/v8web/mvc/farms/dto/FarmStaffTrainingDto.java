package com.fairagora.verifik8.v8web.mvc.farms.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class FarmStaffTrainingDto {

	protected Long farmId;

	protected Boolean firstAidTraining;

	protected Boolean hazardousActivitiesTraining;

	protected Long hazardousActivitiesTrainingType;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	protected Date hazardousActivitiesTrainingDate;
	
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

	
	public Long getHazardousActivitiesTrainingType() {
		return hazardousActivitiesTrainingType;
	}

	public void setHazardousActivitiesTrainingType(Long hazardousActivitiesTrainingType) {
		this.hazardousActivitiesTrainingType = hazardousActivitiesTrainingType;
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
