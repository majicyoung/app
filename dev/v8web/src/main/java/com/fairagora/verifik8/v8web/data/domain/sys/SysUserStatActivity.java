package com.fairagora.verifik8.v8web.data.domain.sys;

import com.fairagora.verifik8.v8web.data.domain.V8Entity;
import com.fairagora.verifik8.v8web.data.domain.V8EntitySupport;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;
import com.fairagora.verifik8.v8web.data.domain.reg.V8Base;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondActivityRepository;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "sys_users_stats_activity")
public class SysUserStatActivity  extends V8EntitySupport {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;


	@ManyToOne(targetEntity = SYSUser.class, fetch = FetchType.EAGER)
	@JoinColumn(nullable = false, name = "SYS_USER_ID")
	protected SYSUser sysUser;


//	@ManyToOne()
//	@JoinColumn(name = "DT_FARM_PLOT_ACTIVITY_ID")
//	@NotFound(action = NotFoundAction.IGNORE)
	@Column(name = "PLOT_ACTIVITY_ID")
	protected Long dtFarmPlotActivity;

	//@ManyToOne()
	//@JoinColumn(name = "POND_ACTIVITY_ID")
	@Column(name = "POND_ACTIVITY_ID")
	protected Long dtFarmPondActivity;

	@Column(name = "ACTIVITY_DATE")
	protected Date activityDate;


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

	public Long getDtFarmPlotActivity() {
		return dtFarmPlotActivity;
	}

	public void setDtFarmPlotActivity(Long dtFarmPlotActivity) {
		this.dtFarmPlotActivity = dtFarmPlotActivity;
	}


	public Long getDtFarmPondActivity() {
		return dtFarmPondActivity;
	}

	public void setDtFarmPondActivity(Long dtFarmPondActivity) {
		this.dtFarmPondActivity = dtFarmPondActivity;
	}

	public Date getActivityDate() {
		return activityDate;
	}

	public void setActivityDate(Date activityDate) {
		this.activityDate = activityDate;
	}

//	public String getActivityName(){
//		if (dtFarmPlotActivity != null){
//			return dtFarmPlotActivity.getActivityType().getName() + "  " + dtFarmPlotActivity.getName();
//		}else{
//			return dtFarmPondActivity.getActivityType().getName() + "  " + dtFarmPondActivity.getName();
//		}
//	}


}
