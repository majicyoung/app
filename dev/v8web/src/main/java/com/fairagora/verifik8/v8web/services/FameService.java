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
	private DTFarmPondActivityRepository pondActivityRepository;

	@Autowired
	private DTFarmPlotActivityRepository plotActivityRepository;


	@Autowired
	private SYSStatActivityRepository sysStatActivityRepository;

	@Autowired
	private SYSUserStatRepository sysUserStatRepository;

	@Autowired
	private SYSUserStatActivityRepository sysUserStatActivityRepository;


	public List<SYSUser> getListHallOfFameUsers(){

		return userRepository.findBestRewardUsersByLogin().stream().limit(10).collect(Collectors.toList());

	}


	public List<DTFarmPondActivity> getListLatestPondActivity(){
		return pondActivityRepository.findTop5ByOrderByCreatedAtDesc();
	}

	public List<DTFarmPlotActivity> getListLatestPlotActivity(){
		return plotActivityRepository.findTop5ByOrderByCreatedAtDesc();
	}

	public void saveUserLogin(SYSUser sysUser){
		SysUserStat sysUserStat = new SysUserStat();
		sysUserStat.setSysUser(sysUser);
		sysUserStat.setConnectionTime(new Date());
		sysUserStatRepository.save(sysUserStat);

	}

	public void saveLatestFarmPondActivity(SYSUser sysUser, DTFarmPondActivity dtFarmPondActivity){
		SysUserStatActivity sysUserStatActivity = new SysUserStatActivity();
		sysUserStatActivity.setSysUser(sysUser);
		sysUserStatActivity.setDtFarmPondActivity(dtFarmPondActivity);
		sysUserStatActivityRepository.save(sysUserStatActivity);
	}

	public void saveLatestFarmPlotActivity(SYSUser sysUser, DTFarmPlotActivity dtFarmPlotActivity){
		SysUserStatActivity sysUserStatActivity = new SysUserStatActivity();
		sysUserStatActivity.setSysUser(sysUser);
		sysUserStatActivity.setDtFarmPlotActivity(dtFarmPlotActivity);
		sysUserStatActivityRepository.save(sysUserStatActivity);
	}



}
