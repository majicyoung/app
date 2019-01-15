package com.fairagora.verifik8.v8web.services;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStat;
import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStatActivity;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserStatActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserStatRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextListener;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

@Component
public class FameService {

	@Value("${oauth.clientId}")
	private String clientId;

	@Autowired
	private SYSUserRepository userRepository;

	@Autowired
	private SYSUserStatRepository sysUserStatRepository;

	@Autowired
	private SYSUserStatActivityRepository sysUserStatActivityRepository;
	
	@Autowired
	private HttpServletRequest request;
	
	@Bean
	public RequestContextListener requestContextListener(){
		return new RequestContextListener();
	} 


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
		sysUserStat.setClientId(clientId);
		sysUserStat.setSysUser(sysUser);
		sysUserStat.setConnectionTime(new Date());
		sysUserStat.setIpAddress(this.getClientIp(request));
		sysUserStat.setUserAgent(request.getHeader("User-Agent"));
		sysUserStat.setSource(this.getSource(request));
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
	
	private String getSource(HttpServletRequest request) {
		return request.getServerName().contains("api") ? "mobile" : "backend";
	}
	
	private String getClientIp(HttpServletRequest request) {
		InetAddress inetAddress = null;
		try {
			inetAddress = InetAddress.getByName(request.getServerName());
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		
		return inetAddress.getHostAddress();
	}

}
