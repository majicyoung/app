package com.fairagora.verifik8.v8web.mvc.fame;

import com.fairagora.verifik8.v8web.config.helper.DateHelper;
import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStatActivity;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSRoleRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserStatActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserStatRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.fame.dto.FameActivityDto;
import com.fairagora.verifik8.v8web.mvc.fame.dto.FameDTOMapper;
import com.fairagora.verifik8.v8web.mvc.fame.dto.FameUserDto;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondActivityDto;
import com.fairagora.verifik8.v8web.services.FameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collector;
import java.util.stream.Collectors;


@Controller
public class FameController  extends AbstractV8Controller {

	@Autowired
	private FameService fameService;

	@Autowired
	private FameDTOMapper fameDTOMapper;

	@Autowired
	private SYSUserStatRepository sysUserStatRepository;

	@Autowired
	private SYSUserStatActivityRepository sysUserStatActivityRepository;

	@Autowired
	private SYSRoleRepository sysRoleRepository;

	@SuppressWarnings("OptionalUsedAsFieldOrParameterType")
	@PreAuthorize("hasAuthority('R_FAMEBROWSER')")
	@RequestMapping(value = {"/fame.html"}, method = RequestMethod.GET)
	public String showHallOfFame(@RequestParam("startDate") Optional<String> startDate, @RequestParam("endDate") Optional<String> endDate, @RequestParam(value = "roleId") Optional<String> roleId, Model mv) {

		preparePage(mv);

		String pStartDate = startDate.orElseGet(() -> DateHelper.DateToSQLDateString(DateHelper.getLastMonthDate()));
		String pEndDate = endDate.orElseGet(() -> DateHelper.DateToSQLDateString(DateHelper.getCurrentDate()));
		String pRoleId = (roleId.isPresent() && !roleId.get().isEmpty())? roleId.get() : null;

		List<FameUserDto>  mostActiveUsersByLogin = fameService.getMostActiveUserByLogin(pStartDate, pEndDate, pRoleId).stream().map(p -> fameDTOMapper.toListing(p)).map(p -> p.selfSetLoginNumberCounts(sysUserStatRepository.countAllBySysUserId(p.getId()))).collect(Collectors.toList());
		List<FameUserDto>  lastActiveUsersByLogin = fameService.getLastActiveUserByLogin(pStartDate, pEndDate, pRoleId).stream().map(p -> fameDTOMapper.toListing(p)).map(p -> p.selfSetLoginNumberCounts(sysUserStatRepository.countAllBySysUserId(p.getId()))).collect(Collectors.toList());
		List<FameUserDto>  mostActiveUsersByActivity = fameService.getMostActiveUserByActivity(pStartDate, pEndDate, pRoleId).stream().map(p -> fameDTOMapper.toListing(p)).map(p -> p.selfSetLoginNumberCounts(sysUserStatActivityRepository.countAllBySysUserId(p.getId()))).collect(Collectors.toList());
		List<FameUserDto>  lastActiveUsersByActivity = fameService.getLatestActiveUserByActivity(pStartDate, pEndDate, pRoleId).stream().map(p -> fameDTOMapper.toListing(p)).map(p -> p.selfSetLoginNumberCounts(sysUserStatActivityRepository.countAllBySysUserId(p.getId()))).collect(Collectors.toList());

		mv.addAttribute("mostActiveUserListByLogin", mostActiveUsersByLogin);
		mv.addAttribute("lastActiveUserListByLogin", lastActiveUsersByLogin);
		mv.addAttribute("lastActiveUserListByActivity", mostActiveUsersByActivity);
		mv.addAttribute("lastActiveUserListByActivity", lastActiveUsersByActivity);
		mv.addAttribute("roleList", sysRoleRepository.findAll());


	//	setToReadOnly(mv, "R_FAME");
		return "fame/listing";
	}

	protected void preparePage(Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.hall_of_fame");
		p.setDescription("default.hall_of_fame_description");
		p.setNavBarPrefix("/fame");
		mv.addAttribute("v8p", p);

	}

}
