package com.fairagora.verifik8.v8web.mvc.invididuals;

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
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppEntityType;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.invididuals.dto.IndividualDto;
import com.fairagora.verifik8.v8web.mvc.invididuals.dto.IndividualListingDto;
import com.fairagora.verifik8.v8web.services.FarmService;

@Controller
public class IndividualsBrowsingController extends AbstractV8Controller {

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	private FarmService farmService;

	@RequestMapping(value = "/individuals/browser.html", method = RequestMethod.GET)
	public String showIndividualsManagementPage(Model mv) {

		List<IndividualListingDto> listing = regEntityRepository.findByEntityTypeCode(CLAppEntityType.CODE_IND).stream()
				.map(p -> regFarmDtoMapper.toListing(p)).collect(Collectors.toList());

		mv.addAttribute("listing", listing);

		preparePage(mv);

		return "individuals/browser";
	}

	/**
	 * 
	 * @param id
	 * @param individualId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/individuals/delete.html", method = RequestMethod.POST)
	public String deleteIndividual(@RequestParam("individualId") Long individualId, Model mv) {
		regEntityRepository.delete(individualId);
		return "redirect:/individuals/browser.html";
	}

	/**
	 * 
	 * @param id
	 * @param individualAssId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/individuals/{individualId}/update.html", method = RequestMethod.POST)
	@Transactional
	public String updateIndividual(@PathVariable("individualId") Long individualAssId, IndividualDto dto,
			@RequestParam(required = false, name = "fromPopup") Boolean fromPopup, Model mv) {

		RegEntity ind = individualAssId.intValue() == 0 ? new RegEntity()
				: regEntityRepository.findOne(individualAssId);
		ind.setEntityType(codeListservice.findEntityType(CLAppEntityType.CODE_IND));

		regFarmDtoMapper.fillEntity(dto, ind);

		regEntityRepository.save(ind);

		if (fromPopup != null && fromPopup) {
			mv.addAttribute("itemType", "individual");
			mv.addAttribute("itemId", ind.getId());
			mv.addAttribute("itemName", ind.getName());
			return "farms/popups/action-done";
		} else
			return "redirect:/individuals/browser.html";
	}

	/**
	 * 
	 * @param id
	 * @param individualId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/individuals/create.html", method = RequestMethod.GET)
	public String createIndividual(Model mv) {

		IndividualDto dto = new IndividualDto();
		preparePage(mv);
		mv.addAttribute("individualId", 0);
		mv.addAttribute("individualDto", dto);
		mv.addAttribute("farm", 0);
		mv.addAttribute("productType", 0);
		mv.addAttribute("individual", 0);

		return "individuals/editor";
	}

	/**
	 * 
	 * @param id
	 * @param individualId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/individuals/{individualAssId}/edit.html", method = RequestMethod.GET)
	public String editIndividual(@PathVariable("individualAssId") Long individualAssId, Model mv) {
		IndividualDto dto = new IndividualDto();
		RegEntity ind = regEntityRepository.findOne(individualAssId);
		regFarmDtoMapper.toDto(ind, dto);
		mv.addAttribute("individualDto", dto);
		mv.addAttribute("individualId", dto.getId());
		preparePage(mv);

		return "individuals/editor";
	}

	/**
	 * 
	 * @param farm
	 * @param mv
	 */
	protected void preparePage(Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.individuals");
		p.setDescription("default.individuals_page_description");
		p.setNavBarPrefix("/individuals");
		mv.addAttribute("v8p", p);

		mv.addAttribute("allCountries", countryRepository.findAll(new Sort("name")));

	}
}
