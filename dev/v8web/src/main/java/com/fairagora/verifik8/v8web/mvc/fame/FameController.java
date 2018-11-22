package com.fairagora.verifik8.v8web.mvc.fame;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.fame.dto.FameActivityDto;
import com.fairagora.verifik8.v8web.mvc.fame.dto.FameDTOMapper;
import com.fairagora.verifik8.v8web.mvc.fame.dto.FameUserDto;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondActivityDto;
import com.fairagora.verifik8.v8web.services.FameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;


@Controller
public class FameController  extends AbstractV8Controller {

	@Autowired
	private FameService fameService;

	@Autowired
	private FameDTOMapper fameDTOMapper;


	@SuppressWarnings("OptionalUsedAsFieldOrParameterType")
	//@PreAuthorize("hasAuthority('R_FAME')")
	@RequestMapping(value = {"/fame.html"}, method = RequestMethod.GET)
	public String showHallOfFame(Model mv) {

		preparePage(mv);

		List<FameUserDto>  listing = fameService.getListHallOfFameUsers().stream().map(p -> fameDTOMapper.toListing(p)).collect(Collectors.toList());
		List<FameActivityDto> fameActivityDtos = fameService.getListLatestPondActivity().stream().map(p -> fameDTOMapper.toListing(p)).collect(Collectors.toList());
		mv.addAttribute("listing", listing);
		mv.addAttribute("activityList", fameActivityDtos);


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
