package com.fairagora.verifik8.v8web.mvc.admin;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fairagora.verifik8.v8web.data.application.V8Page;

import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;


@Controller
public class AdminController extends AbstractV8Controller {


	@RequestMapping(value = "/admin/admin.html", method = RequestMethod.GET)
	public String adminPage(Model mv) {

		preparePage(mv);

		return "admin/admin";
	}

	
	@RequestMapping(value = "/admin/codelists/browser.html", method = RequestMethod.GET)
	public String CLPage(Model mv) {

		preparePage(mv);

		return "admin/codelists/browser";
	}
	

	/**
	 * 
	 * @param farm
	 * @param mv
	 */
	protected void preparePage(Model mv) {

		V8Page p = new V8Page();
		p.setTitle("admin.home");
		p.setDescription("admin.home");
		p.setNavBarPrefix("/admin");
		mv.addAttribute("v8p", p);



	}
}
