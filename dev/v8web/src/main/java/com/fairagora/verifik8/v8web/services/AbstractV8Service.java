package com.fairagora.verifik8.v8web.services;

import com.fairagora.verifik8.v8web.data.interactor.ExcelReader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.core.context.SecurityContextHolder;

import com.fairagora.verifik8.v8web.config.technical.auth.V8LoggedUser;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppQuantityUnitRepository;

public class AbstractV8Service {

	@Autowired
	protected JdbcTemplate jdbc;

	@Autowired
	protected CLAppQuantityUnitRepository clQtUnityRepository;

	protected V8LoggedUser getLoggedUser() {
		if (SecurityContextHolder.getContext().getAuthentication() == null)
			return null;
		return (V8LoggedUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	}
}
