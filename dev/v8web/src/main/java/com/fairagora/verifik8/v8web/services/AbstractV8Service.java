package com.fairagora.verifik8.v8web.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.fairagora.verifik8.v8web.data.repo.cl.CLQuantityUnitRepository;

public class AbstractV8Service {

	@Autowired
	protected JdbcTemplate jdbc;

	@Autowired
	protected CLQuantityUnitRepository clQtUnityRepository;
	
}
