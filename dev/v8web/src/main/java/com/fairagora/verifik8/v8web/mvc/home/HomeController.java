package com.fairagora.verifik8.v8web.mvc.home;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;

@Controller
@PreAuthorize("isAuthenticated()")
public class HomeController extends AbstractV8Controller {

	/**
	 * Show home dashboard
	 * 
	 * @return
	 */
	@RequestMapping(value = "/home.html", method = RequestMethod.GET)
	public String hello(Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.dashboard");
		p.setDescription("default.home");
		p.setNavBarPrefix("/home");
		mv.addAttribute("v8p", p);

		return "home";
	}

}
