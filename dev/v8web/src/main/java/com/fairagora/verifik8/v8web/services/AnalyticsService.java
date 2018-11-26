package com.fairagora.verifik8.v8web.services;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStat;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSStatActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserStatActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserStatRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class AnalyticsService {


	@Autowired
	private SYSStatActivityRepository sysStatActivityRepository;

	@Autowired
	private SYSUserStatRepository sysUserStatRepository;

	@Autowired
	private SYSUserStatActivityRepository sysUserStatActivityRepository;



	public void saveUserLogin(SYSUser sysUser){
		SysUserStat sysUserStat = new SysUserStat();
		sysUserStat.setSysUser(sysUser);
		sysUserStat.setConnectionTime(new Date());
		sysUserStatRepository.save(sysUserStat);

	}



}
