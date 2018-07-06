package com.fairagora.verifik8.v8web.mvc.ponds;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmPondDto;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondListingDto;
import com.fairagora.verifik8.v8web.services.FarmService;

@Controller
public class PondsBrowsingController extends AbstractV8Controller {

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	private RegEntityFarmPondRepository regEntityFarmPondRepository;

	@Autowired
	private FarmService farmService;

	@PreAuthorize("hasAuthority('R_PONDBROWSER')")
	@RequestMapping(value = "/ponds/browser.html", method = RequestMethod.GET)
	public String showPondsManagementPage(Model mv) {

		List<PondListingDto> listing = farmService.listVisiblePoundsForLoggedUser(getLoggedUser()).stream().map(p -> regFarmDtoMapper.toListing(p)).collect(Collectors.toList());

		mv.addAttribute("listing", listing);

		preparePage(mv);
		setToReadOnly(mv, "W_PONDBROWSER");
		return "ponds/browser";
	}


	/**
	 * 
	 * @param id
	 * @param pondId
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('W_PONDBROWSER')")
	@RequestMapping(value = "/ponds/delete.html", method = RequestMethod.POST)
	public String deletePond(@RequestParam("pondId") Long pondId, Model mv) {
		regEntityFarmPondRepository.delete(pondId);
		return "redirect:/ponds/browser.html";
	}

	/**
	 * 
	 * @param id
	 * @param pondId
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('W_PONDBROWSER')")
	@RequestMapping(value = "/ponds/{pondId}/update.html", method = RequestMethod.POST)
	public String updatePond(@PathVariable("pondId") Long pondId, FarmPondDto dto, Model mv) {

		RegEntityFarmPond pond = pondId == 0 ? new RegEntityFarmPond() : regEntityFarmPondRepository.findOne(pondId);

		regFarmDtoMapper.fillEntity(dto, pond);

		regEntityFarmPondRepository.save(pond);
		return "redirect:/ponds/browser.html";
	}

	/**
	 * 
	 * @param id
	 * @param pondId
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('W_PONDBROWSER')")
	@RequestMapping(value = "/ponds/create.html", method = RequestMethod.GET)
	public String createPond(Model mv) {

		FarmPondDto dto = new FarmPondDto();

		mv.addAttribute("allFarmsForUser", farmService.listFarms());
		mv.addAttribute("pondDto", dto);
		mv.addAttribute("pondId", 0);
		mv.addAttribute("allCommodities", codeListservice.listActiveCommodities());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());

		preparePage(mv);

		return "ponds/editor";
	}

	/**
	 * 
	 * @param id
	 * @param pondId
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('R_PONDBROWSER')")
	@RequestMapping(value = "/ponds/{pondId}/edit.html", method = RequestMethod.GET)
	public String editPond(@PathVariable("pondId") Long pondId, Model mv) {

		RegEntityFarmPond pond = regEntityFarmPondRepository.findOne(pondId);

		FarmPondDto dto = new FarmPondDto();
		regFarmDtoMapper.toDto(pond, dto);

		mv.addAttribute("allFarmsForUser", farmService.listFarms());
		mv.addAttribute("pondDto", dto);
		mv.addAttribute("pondId", dto.getId());
		mv.addAttribute("allCommodities", codeListservice.listActiveCommodities());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());

		preparePage(mv);
		setToReadOnly(mv, "W_PONDBROWSER");

		return "ponds/editor";
	}

	/**
	 * 
	 * @param farm
	 * @param mv
	 */
	protected void preparePage(Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.ponds");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/ponds");
		mv.addAttribute("v8p", p);

		mv.addAttribute("allSpecies", codeListservice.listActiveSpecies());
		mv.addAttribute("allPondTypes", codeListservice.listActivePondTypes());

	}
}
