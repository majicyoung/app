package com.fairagora.verifik8.v8web.mvc.farms.statistic;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmDetails;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStat;
import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStatActivity;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPlotActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmDetailsRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserStatActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserStatRepository;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmStatisticActivityDto;
import com.fairagora.verifik8.v8web.services.FameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureOrder;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Component
public class FarmStatisticDataBuilder {

	@Autowired
	private FameService fameService;


	@Autowired
	private SYSUserStatRepository sysUserStatRepository;

	@Autowired
	private SYSUserStatActivityRepository sysUserStatActivityRepository;

	@Autowired
	private RegEntityFarmDetailsRepository regEntityFarmDetailsRepository;

	@Autowired
	private SYSUserRepository sysUserRepository;


	@Autowired
	private DTFarmPondActivityRepository dtFarmPondActivityRepository;


	@Autowired
	private DTFarmPlotActivityRepository dtFarmPlotActivityRepository;

	public FarmStatisticsDto get(SYSUser sysUser, Long farmId) {



		FarmStatisticsDto dto = new FarmStatisticsDto();
		List<SYSUser> sysUsers = getSysUser(farmId);


		// build top KPIs
		buildUserKpi(dto,sysUser, sysUsers, farmId);

		buildLoginList(dto, sysUsers);
		buildActivityList(dto, farmId);

		return dto;
	}


	private void buildUserKpi(FarmStatisticsDto dto,SYSUser sysUser, List<SYSUser> sysUsers, Long farmId){
		RegEntityFarmDetails regEntityFarmDetails = regEntityFarmDetailsRepository.findByEntityId(farmId).get();

		dto.setLoginCount(getLoginCount(sysUsers));
		dto.setUserCreation(sysUser.getCreatedAt()	);
		dto.setFarmCreation(regEntityFarmDetails.getCreatedAt());
		dto.setLastLogin(getLastLogin(sysUsers));

	}

	private void buildLoginList(FarmStatisticsDto dto, List<SYSUser> sysUsers){
		if (sysUsers.size() > 0){
			dto.setSysUserStats(sysUserStatRepository.findAllBySysUserId(sysUsers.stream().map(SYSUser::getId).toArray(Long[]::new)));
		}
	}

	private void buildActivityList(FarmStatisticsDto dto, Long farmId){
			dto.setSysUserStatActivities(getSysUsersStatActivity(farmId));
	}


	private Date getLastLogin(List<SYSUser> sysUsers){
		if (sysUsers.size() > 0){
			SysUserStat sysUserStat = sysUserStatRepository.findFirstBySysUserId(sysUsers.stream().map(SYSUser::getId).toArray(Long[]::new));
			if (sysUserStat != null){
				return sysUserStat.getConnectionTime();
			}else {
				return null;
			}
		}else {
			return null;
		}
	}

	private int getLoginCount(List<SYSUser> sysUsers){
		return sysUsers.size() > 0? sysUserStatRepository.countAllBySysUserId(sysUsers.stream().map(SYSUser::getId).toArray(Long[]::new)): 0;
	}


	private List<SYSUser> getSysUser(Long farmId){
		RegEntityFarmDetails regEntityFarmDetails = regEntityFarmDetailsRepository.findByEntityId(farmId).get();
		return sysUserRepository.findSYSUserByFarmId(regEntityFarmDetails.getEntity().getId());
	}

	private List<FarmStatisticActivityDto> getSysUsersStatActivity(Long farmId){
		List<FarmStatisticActivityDto> farmStatisticActivityDtos = new ArrayList<>();
		sysUserStatActivityRepository.findAllPlotsByFarmId(farmId).forEach(sysUserStatActivity -> {
			FarmStatisticActivityDto farmStatisticActivityDto = new FarmStatisticActivityDto();
			farmStatisticActivityDto.setId(sysUserStatActivity.getId());
			farmStatisticActivityDto.setActivityDate(sysUserStatActivity.getActivityDate());
			farmStatisticActivityDto.setSysUser(sysUserStatActivity.getSysUser());
			farmStatisticActivityDto.setDtFarmPlotActivity( dtFarmPlotActivityRepository.getOne(sysUserStatActivity.getDtFarmPlotActivity()) );
			farmStatisticActivityDtos.add(farmStatisticActivityDto);

		});
		sysUserStatActivityRepository.findAllPondByFarmId(farmId).forEach(sysUserStatActivity -> {
			FarmStatisticActivityDto farmStatisticActivityDto = new FarmStatisticActivityDto();
			farmStatisticActivityDto.setId(sysUserStatActivity.getId());
			farmStatisticActivityDto.setActivityDate(sysUserStatActivity.getActivityDate());
			farmStatisticActivityDto.setSysUser(sysUserStatActivity.getSysUser());
			farmStatisticActivityDto.setDtFarmPondActivity( dtFarmPondActivityRepository.getOne(sysUserStatActivity.getDtFarmPondActivity()) );
			farmStatisticActivityDtos.add(farmStatisticActivityDto);

		});

		return farmStatisticActivityDtos;

	}
}
