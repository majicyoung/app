package com.fairagora.verifik8.v8web.data.domain.sys;

import com.fairagora.verifik8.v8web.data.domain.V8Entity;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;
import com.fairagora.verifik8.v8web.data.domain.reg.V8Base;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "sys_users_stats_activity")
public class SysUserStatActivity  extends V8Base implements V8Entity {


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;


	@OneToOne(targetEntity = SYSUser.class, fetch = FetchType.EAGER)
	@JoinColumn(nullable = false, name = "SYS_USER_ID")
	private SYSUser sysUser;

	@OneToOne(targetEntity = DTFarmPlotActivity.class, fetch = FetchType.EAGER)
	@JoinColumn(nullable = false, name = "DT_FARM_PLOT_ACTIVITY_ID")
	private DTFarmPlotActivity dtFarmPlotActivity;

	@OneToOne(targetEntity = DTFarmPondActivity.class, fetch = FetchType.EAGER)
	@JoinColumn(nullable = false, name = "DT_FARM_POND_ACTIVITY_ID")
	private DTFarmPondActivity dtFarmPondActivity;

	@Column(name = "ACTIVITY_DATE")
	private Date activityDate;


	@Override
	public Long getId() {
		return id;
	}

	@Override
	public void setId(Long id) {
		this.id = id;
	}

	@Override
	public String getName() {
		return id.toString();
	}

	public SYSUser getSysUser() {
		return sysUser;
	}

	public void setSysUser(SYSUser sysUser) {
		this.sysUser = sysUser;
	}

	public DTFarmPlotActivity getDtFarmPlotActivity() {
		return dtFarmPlotActivity;
	}

	public void setDtFarmPlotActivity(DTFarmPlotActivity dtFarmPlotActivity) {
		this.dtFarmPlotActivity = dtFarmPlotActivity;
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
}
