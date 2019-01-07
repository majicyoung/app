package com.fairagora.verifik8.v8web.mvc.farms.dto;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;

import javax.persistence.*;
import java.util.Date;

public class FarmStatisticActivityDto {


	protected Long id;

	protected SYSUser sysUser;

	protected DTFarmPondActivity dtFarmPondActivity;

	protected DTFarmPlotActivity dtFarmPlotActivity;

	protected Date activityDate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public SYSUser getSysUser() {
		return sysUser;
	}

	public void setSysUser(SYSUser sysUser) {
		this.sysUser = sysUser;
	}

	public DTFarmPondActivity getDtFarmPondActivity() {
		return dtFarmPondActivity;
	}

	public void setDtFarmPondActivity(DTFarmPondActivity dtFarmPondActivity) {
		this.dtFarmPondActivity = dtFarmPondActivity;
	}

	public Date getActivityDate() {
		return activityDate;
	}

	public void setActivityDate(Date activityDate) {
		this.activityDate = activityDate;
	}

	public DTFarmPlotActivity getDtFarmPlotActivity() {
		return dtFarmPlotActivity;
	}

	public void setDtFarmPlotActivity(DTFarmPlotActivity dtFarmPlotActivity) {
		this.dtFarmPlotActivity = dtFarmPlotActivity;
	}


}
