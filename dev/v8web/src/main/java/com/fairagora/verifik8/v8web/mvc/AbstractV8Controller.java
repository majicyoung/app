package com.fairagora.verifik8.v8web.mvc;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.fairagora.verifik8.v8web.config.functional.Verifik8AppConfig;
import com.fairagora.verifik8.v8web.config.technical.auth.V8LoggedUser;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSRole;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.repo.cl.CLRefCountryRepository;
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

	protected static final String MAIN_FORM_TO_READ_ONLY = "mainFormToReadOnly";

	@Autowired
	protected SYSUserRepository userRepository;

	@Autowired
	protected SYSRoleRepository roleRepository;

	@Autowired
	protected CLRefCountryRepository countryRepository;

	@Autowired
	protected Verifik8AppConfig v8App;

	@Autowired
	protected RegEntityRepository regEntityRepository;

	@Autowired
	protected CodeListsService codeListservice;

	@Autowired
	protected EntityManager em;

	@ModelAttribute("v8App")
	public Verifik8AppConfig appConfig() {
		return v8App;
	}

	/**
	 * set readonly attribute if user don't have the given role
	 * 
	 * @param mv
	 * @param r
	 */
	protected void setToReadOnly(Model mv, String r) {
		mv.addAttribute(MAIN_FORM_TO_READ_ONLY, !getLoggedUser().hasRole(r));
	}

	protected V8LoggedUser getLoggedUser() {
		if (SecurityContextHolder.getContext().getAuthentication() == null)
			return null;
		return (V8LoggedUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	}

	@ModelAttribute("loggedUser")
	public SYSUser loggedUser(HttpServletRequest rq) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		return userRepository.findByEmail(authentication.getName());
	}

	@ModelAttribute("applicationRoles")
	public List<SYSRole> applicationRoles() {
		return roleRepository.findAll(new Sort("name"));
	}
	
	protected Date previousDate() {
		Date date = null;
		DateFormat dateFormat = null;
		try {
			dateFormat = new SimpleDateFormat("yyyy-MM-dd 00:00:00");
			Calendar c = Calendar.getInstance();
			c.add(Calendar.YEAR, -1);
			
			date = new SimpleDateFormat("yyyy-MM-dd 00:00:00").parse(dateFormat.format(c.getTime()));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return date;
	}
	
	protected Date currentDate() {
		Date date = null;
		DateFormat dateFormat = null;
		try {
			dateFormat = new SimpleDateFormat("yyyy-MM-dd 00:00:00");
			Calendar c = Calendar.getInstance();
			
			date = new SimpleDateFormat("yyyy-MM-dd 00:00:00").parse(dateFormat.format(c.getTime()));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return date;
	}

}
