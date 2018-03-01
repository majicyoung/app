package com.fairagora.verifik8.v8web.mvc.users;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSRole;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.SysUserDTOMapper;
import com.fairagora.verifik8.v8web.mvc.users.dto.RoleFormDto;

@Controller
public class RolesController extends AbstractV8Controller {

	@Autowired
	private SysUserDTOMapper sysUserDTOMapper;

	@RequestMapping(value = "/roles.html", method = RequestMethod.GET)
	public String showUsersList(Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.roles");
		p.setDescription("default.roles_page_description");
		p.setNavBarPrefix("/roles");
		mv.addAttribute("v8p", p);

		List<SYSRole> users = roleRepository.findAll();
		mv.addAttribute("roles", users);

		return "roles/listing";

	}

	@RequestMapping(value = "/role/{id}/delete.html", method = RequestMethod.POST)
	public String deleteUser(@PathVariable("id") Long id, Model mv) {
		roleRepository.delete(id);
		return "redirect:/roles.html";
	}

	@RequestMapping(value = "/role/{id}/edit.html", method = RequestMethod.GET)
	public String showEditUser(@PathVariable("id") Long id, Model mv) {
		RoleFormDto dto = new RoleFormDto();
		sysUserDTOMapper.toDto(roleRepository.findOne(id), dto);
		prepareForUserEdition(dto, mv);
		return "roles/create";
	}

	@RequestMapping(value = "/roles/create.html", method = RequestMethod.GET)
	public String showCreateUserForm(Model mv) {
		prepareForUserEdition(new RoleFormDto(), mv);
		return "roles/create";

	}

	private void prepareForUserEdition(RoleFormDto dto, Model mv) {
		V8Page p = new V8Page();
		p.setTitle("default.roles");
		p.setDescription("default.roles_page_description");
		p.setNavBarPrefix("/roles");
		mv.addAttribute("v8p", p);

		mv.addAttribute("newEntity", dto.getId() == null);

		mv.addAttribute("roleDto", dto);
	}

	@RequestMapping(value = "/roles/create.html", method = RequestMethod.POST)
	public String createUser(@Validated @ModelAttribute("userDto") RoleFormDto dto, BindingResult bindResults,
			Model mv) {

		SYSRole newRole = new SYSRole();
		sysUserDTOMapper.fillEntity(dto, newRole);
		roleRepository.save(newRole);

		return "redirect:/roles.html";
	}

	@RequestMapping(value = "/role/{id}/update.html", method = RequestMethod.POST)
	public String createUser(@Validated @ModelAttribute("userDto") RoleFormDto dtp, @PathVariable("id") Long userId,
			BindingResult bindResults, Model mv) {

		SYSRole newRole = roleRepository.findOne(userId);

		sysUserDTOMapper.fillEntity(dtp, newRole);

		roleRepository.save(newRole);

		return "redirect:/roles.html";
	}

}
