package com.fairagora.verifik8.v8web.mvc.users;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppEntityType;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmFormDto;
import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.SysUserDTOMapper;
import com.fairagora.verifik8.v8web.mvc.users.dto.UserFormDto;

@Controller
public class UsersController extends AbstractV8Controller {

	@Autowired
	private SysUserDTOMapper sysUserDTOMapper;

	@RequestMapping(value = "/users.html", method = RequestMethod.GET)
	public String showUsersList(Model mv, HttpServletRequest req) {

		V8Page p = new V8Page();
		p.setTitle("default.users");
		p.setDescription("default.user_page_description");
		p.setNavBarPrefix("/users");
		mv.addAttribute("v8p", p);

		List<SYSUser> users = userRepository.findAll();
		mv.addAttribute("users", users);

		return "users/listing";

	}

	@RequestMapping(value = "/user/{id}/delete.html", method = RequestMethod.POST)
	public String deleteUser(@PathVariable("id") Long id, Model mv) {
		userRepository.delete(id);
		return "redirect:/users.html";
	}

	@RequestMapping(value = "/user/{id}/edit.html", method = RequestMethod.GET)
	public String showEditUser(@PathVariable("id") Long id, Model mv) {
		UserFormDto dto = new UserFormDto();

		sysUserDTOMapper.toDto(userRepository.findOne(id), dto);

		prepareForUserEdition(dto, mv);
		return "users/create";
	}

	@RequestMapping(value = "/users/create.html", method = RequestMethod.GET)
	public String showCreateUserForm(Model mv) {


		UserFormDto dto = new UserFormDto();
		dto.setId(0l);
		prepareForUserEdition (dto, mv);

		return "users/create";

	}

	private void prepareForUserEdition(UserFormDto dto, Model mv) {
		V8Page p = new V8Page();
		p.setTitle("default.users");
		p.setDescription("default.user_page_description");
		p.setNavBarPrefix("/users");
		mv.addAttribute("v8p", p);

		mv.addAttribute("newEntity", dto.getId() == null);

		mv.addAttribute("userDto", dto);
		mv.addAttribute("allCountries", countryRepository.findAll(new Sort("name")));
		mv.addAttribute("allCooperatives", regEntityRepository.findByEntityTypeCode(CLAppEntityType.CODE_COOP));
		mv.addAttribute("allFarms", regEntityRepository.findByEntityTypeCode(CLAppEntityType.CODE_FARM));
	}

	@RequestMapping(value = "/users/create.html", method = RequestMethod.POST)
	public String createUser(@Validated @ModelAttribute("userDto") UserFormDto createUserDto, BindingResult bindResults,
			Model mv) {

		SYSUser newUser = new SYSUser();

		sysUserDTOMapper.fillEntity(createUserDto, newUser);
		newUser.setActive(true);

		userRepository.save(newUser);

		return "redirect:/users.html";
	}

	@RequestMapping(value = "/user/{id}/update.html", method = RequestMethod.POST)
	public String createUser(@Validated @ModelAttribute("userDto") UserFormDto createUserDto,
			@PathVariable("id") Long userId, BindingResult bindResults, Model mv) {

		SYSUser newUser = userRepository.findOne(userId);

		sysUserDTOMapper.fillEntity(createUserDto, newUser);

		userRepository.save(newUser);

		return "redirect:/users.html";
	}

}
