package com.fairagora.verifik8.v8web.services;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class FameService {

	@Autowired
	private SYSUserRepository userRepository;



	public List<SYSUser> getListHallOfFameUsers(){

		return userRepository.findAll().stream().limit(10).collect(Collectors.toList());

	}



}
