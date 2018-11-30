package com.fairagora.verifik8.v8web.mvc.farms.statistic;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmDetails;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmDetailsRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserStatRepository;
import com.fairagora.verifik8.v8web.services.FameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureOrder;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
public class FarmStatisticDataBuilder {

	@Autowired
	private FameService fameService;


	@Autowired
	private SYSUserStatRepository sysUserStatRepository;

	@Autowired
	private RegEntityFarmDetailsRepository regEntityFarmDetailsRepository;

	@Autowired
	private SYSUserRepository sysUserRepository;


	public FarmStatisticsDto get(SYSUser sysUser, Long farmId) {



		FarmStatisticsDto dto = new FarmStatisticsDto();

		// build top KPIs
		buildUserKpi(dto, sysUser, farmId);

		buildLoginList(dto, sysUser, farmId);

		return dto;
	}


	private void buildUserKpi(FarmStatisticsDto dto, SYSUser sysUser, Long FarmId){

		dto.setLoginCount(sysUserStatRepository.countAllBySysUserId(sysUser.getId()));
		dto.setUserCreation(new Date());
		dto.setFarmCreation(new Date());
		dto.setLastLogin(new Date());

	}

	private void buildLoginList(FarmStatisticsDto dto, SYSUser sysUser, Long farmId){
	//	RegEntityFarmDetails regEntityFarmDetails = regEntityFarmDetailsRepository.findByEntityId(farmId).get();
	//	SYSUser user =  sysUserRepository.findByEmail(regEntityFarmDetails.getOwner().getEmail());
		dto.setSysUserStats(sysUserStatRepository.findAllBySysUserId(sysUser.getId()));
	}


}
