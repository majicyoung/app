package com.fairagora.verifik8.v8web.mvc.farms.statistic;

import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStat;
import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStatActivity;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmStatisticActivityDto;

import java.util.Date;
import java.util.List;

public class FarmStatisticsDto {

	private int loginCount;

	private Date lastLogin;

	private Date userCreation;

	private Date farmCreation;

	private List<SysUserStat> sysUserStats;

	private List<FarmStatisticActivityDto> sysUserStatActivities;

	public int getLoginCount() {
		return loginCount;
	}

	public void setLoginCount(int loginCount) {
		this.loginCount = loginCount;
	}

	public Date getLastLogin() {
		return lastLogin;
	}

	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}

	public Date getUserCreation() {
		return userCreation;
	}

	public void setUserCreation(Date userCreation) {
		this.userCreation = userCreation;
	}

	public Date getFarmCreation() {
		return farmCreation;
	}

	public void setFarmCreation(Date farmCreation) {
		this.farmCreation = farmCreation;
	}

	public List<SysUserStat> getSysUserStats() {
		return sysUserStats;
	}

	public void setSysUserStats(List<SysUserStat> sysUserStats) {
		this.sysUserStats = sysUserStats;
	}

	public List<FarmStatisticActivityDto> getSysUserStatActivities() {
		return sysUserStatActivities;
	}

	public void setSysUserStatActivities(List<FarmStatisticActivityDto> sysUserStatActivities) {
		this.sysUserStatActivities = sysUserStatActivities;
	}
}
