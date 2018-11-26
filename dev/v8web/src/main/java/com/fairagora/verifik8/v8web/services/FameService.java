package com.fairagora.verifik8.v8web.services;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPlotActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

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



	public List<SYSUser> getListHallOfFameUsers(){

		return userRepository.findBestRewardUsersByLogin().stream().limit(10).collect(Collectors.toList());

	}


	public List<DTFarmPondActivity> getListLatestPondActivity(){
		return pondActivityRepository.findTop5ByOrderByCreatedAtDesc();
	}

	public List<DTFarmPlotActivity> getListLatestPlotActivity(){
		return plotActivityRepository.findTop5ByOrderByCreatedAtDesc();
	}



}
