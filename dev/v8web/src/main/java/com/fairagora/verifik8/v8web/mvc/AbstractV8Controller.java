package com.fairagora.verifik8.v8web.mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.fairagora.verifik8.v8web.config.functional.Verifik8AppConfig;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSRole;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.repo.cl.CLCountryRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSRoleRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;
import com.fairagora.verifik8.v8web.services.CodeListsService;

/**
 * Support class for all controller of the application
 * 
 * @author gregoire
 *
 */
public class AbstractV8Controller {

	@Autowired
	protected SYSUserRepository userRepository;

	@Autowired
	protected SYSRoleRepository roleRepository;

	@Autowired
	protected CLCountryRepository countryRepository;

	@Autowired
	protected Verifik8AppConfig v8App;

	@Autowired
	protected RegEntityRepository regEntityRepository;

	@Autowired
	protected CodeListsService codeListservice;

	@ModelAttribute("v8App")
	public Verifik8AppConfig appConfig() {
		return v8App;
	}


	@ModelAttribute("loggedUser")
	public SYSUser loggedUser() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		return userRepository.findByEmail(authentication.getName());
	}

	@ModelAttribute("applicationRoles")
	public List<SYSRole> applicationRoles() {
		return roleRepository.findAll(new Sort("label"));
	}

}
