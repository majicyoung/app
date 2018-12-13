package com.fairagora.verifik8.v8web.services;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStat;
import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStatActivity;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPlotActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSStatActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserStatActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserStatRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Component
public class FameService {

	@Autowired
	private SYSUserRepository userRepository;

	@Autowired
	private SYSUserStatRepository sysUserStatRepository;

	@Autowired
	private SYSUserStatActivityRepository sysUserStatActivityRepository;


	public List<SYSUser> getMostActiveUserByLogin(String startDate, String endDate, String roleId) {
		return roleId == null ? userRepository.findBestRewardUsersByLogin(startDate, endDate) : userRepository.findBestRewardUsersByRoleAndByLogin(startDate, endDate, roleId);
	}

	public List<SYSUser> getLastActiveUserByLogin(String startDate, String endDate, String roleId) {
		return roleId == null ? userRepository.findLastestUsersByLogin(startDate, endDate) : userRepository.findLastestUsersByRoleByLogin(startDate, endDate, roleId);
	}


	public List<SYSUser> getMostActiveUserByActivity(String startDate, String endDate, String roleId) {
		return roleId == null ? userRepository.findBestRewardUsersByActivity(startDate, endDate) : userRepository.findBestRewardUsersByRoleByActivity(startDate, endDate, roleId);

	}

	public List<SYSUser> getLatestActiveUserByActivity(String startDate, String endDate, String roleId) {
		return roleId == null ? userRepository.findLastestUsersByActivity(startDate, endDate) : userRepository.findLastestUsersByRoleByActivity(startDate, endDate, roleId);

	}

	public void saveUserLogin(SYSUser sysUser) {
		SysUserStat sysUserStat = new SysUserStat();
		sysUserStat.setSysUser(sysUser);
		sysUserStat.setConnectionTime(new Date());
		sysUserStatRepository.save(sysUserStat);

	}

	public void saveLatestFarmPondActivity(SYSUser sysUser, DTFarmPondActivity dtFarmPondActivity) {
		SysUserStatActivity sysUserStatActivity = new SysUserStatActivity();
		sysUserStatActivity.setSysUser(sysUser);
		sysUserStatActivity.setDtFarmPondActivity(dtFarmPondActivity.getId());
		sysUserStatActivityRepository.save(sysUserStatActivity);
	}

	public void saveLatestFarmPlotActivity(SYSUser sysUser, DTFarmPlotActivity dtFarmPlotActivity) {
		SysUserStatActivity sysUserStatActivity = new SysUserStatActivity();
		sysUserStatActivity.setSysUser(sysUser);
		sysUserStatActivity.setDtFarmPlotActivity(dtFarmPlotActivity.getId());
		sysUserStatActivityRepository.save(sysUserStatActivity);
	}


}
