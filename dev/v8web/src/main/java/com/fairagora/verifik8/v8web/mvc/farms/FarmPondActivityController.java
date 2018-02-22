package com.fairagora.verifik8.v8web.mvc.farms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondActivityRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondActivityDto;

@Controller
public class FarmPondActivityController extends AbstractV8Controller {

	
	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	private RegEntityFarmPondRepository regEntityFarmPondRepository;

	@Autowired
	 protected JdbcTemplate jdbc;
	
	
	@Autowired
	private DTFarmPondActivityRepository pondActivityRepository;

	@Autowired
	private RegEntityFarmPondRepository farmPondRepository;

	@Autowired
	private RegFarmDTOMapper dtoMapper;

	/**
	 * 
	 * @param id
	 * @param pondId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/farm/{farmId}/pond/{pondId}/activities/browser.html", method = RequestMethod.GET)
	public String showPlotActivities(@PathVariable("farmId") Long farmId, @PathVariable("pondId") Long pondId, Model mv) {
		
		RegEntity farm = regEntityRepository.findOne(farmId);
		
		List<DTFarmPondActivity> activities = pondActivityRepository.findByPondId(pondId);
		mv.addAttribute("activities", activities);
		mv.addAttribute("farmId", farmId);
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id="+farmId, String.class));
		mv.addAttribute("pondId", pondId);

		preparePage(farm, pondId, mv);

		return "farms/pond-activities/browser";
	}

	@RequestMapping(value = "/farm/{farmId}/pond/{pondId}/activities/create.html", method = RequestMethod.GET)
	public String createPlotActivities(@PathVariable("farmId") Long farmId,@PathVariable("pondId") Long pondId, Model mv) {

		RegEntity farm = regEntityRepository.findOne(farmId);
		
		PondActivityDto dto = new PondActivityDto();
		dto.setPond(pondId);

		mv.addAttribute("activityDto", dto);
		mv.addAttribute("pondId", pondId);
		mv.addAttribute("activityId", 0l);
		mv.addAttribute("farmId", farmId);
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id="+farmId, String.class));
		mv.addAttribute("allPondActivityTypes", codeListservice.listActivePondActivityTypes());
		mv.addAttribute("allProducts", codeListservice.listActiveProducts());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());

		preparePage(farm,pondId, mv);

		return "farms/pond-activities/editor";
	}

	@RequestMapping(value = "/farm/{farmId}/pond/{pondId}/activities/{activityId}/edit.html", method = RequestMethod.GET)
	public String showPondActivities(@PathVariable("farmId") Long farmId,@PathVariable("pondId") Long pondId, @PathVariable("activityId") Long activityId,
			Model mv) {

		RegEntity farm = regEntityRepository.findOne(farmId);
		
		DTFarmPondActivity act = pondActivityRepository.findOne(activityId);

		PondActivityDto dto = new PondActivityDto();
		dtoMapper.toDto(act, dto);

		mv.addAttribute("activityDto", dto);
		mv.addAttribute("activityId", act.getId());
		mv.addAttribute("farmId", farmId);
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id="+farmId, String.class));
		mv.addAttribute("allPondActivityTypes", codeListservice.listActivePondActivityTypes());
		mv.addAttribute("allProducts", codeListservice.listActiveProducts());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());

		preparePage(farm,pondId, mv);

		return "farms/pond-activities/editor";
	}

	/**
	 * 
	 * @param id
	 * @param plotId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/farm/{farmId}/pond/{pondId}/activities/update.html", method = RequestMethod.POST)
	public String showPlotActivities(@PathVariable("farmId") Long farmId, @PathVariable("pondId") Long pondId, PondActivityDto dto, BindingResult result,
			Model mv) {

		RegEntity farm = regEntityRepository.findOne(farmId);
		
		DTFarmPondActivity act = null;

		if (result.hasErrors()) {
			System.out.println(result.toString());
		}

		if (dto.getId() == null || dto.getId().intValue() == 0) {
			act = new DTFarmPondActivity();
		} else
			act = pondActivityRepository.findOne(dto.getId());

		dtoMapper.fillEntity(dto, act);

		act.setPond(farmPondRepository.findOne(pondId));

		pondActivityRepository.save(act);

		preparePage(farm,pondId, mv);

		return "redirect:/farm/"+farmId +"/ponds.html";
	}

	/**
	 * 
	 * @param id
	 * @param plotId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/farm/{farmId}/pond/{pondId}/activities/delete.html", method = RequestMethod.POST)
	public String deletePlotActivities(@PathVariable("farmId") Long farmId, @PathVariable("pondId") Long pondId, @RequestParam("activityId") Long activityId,
			Model mv) {

		RegEntity farm = regEntityRepository.findOne(farmId);
		
		pondActivityRepository.delete(activityId);

		preparePage(farm,pondId, mv);

		return "redirect:/farm/"+farmId +"/ponds.html";
	}

	/**
	 * 
	 * @param farm
	 * @param mv
	 */
	protected void preparePage(RegEntity farm,Long pondId, Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/farm");
		mv.addAttribute("v8p", p);

		mv.addAttribute("pondId", pondId);
		mv.addAttribute("farmId", farm.getId());
		mv.addAttribute("activeTab", "ponds");

		mv.addAttribute("pondListing", regEntityFarmPondRepository.findByFarmId(farm.getId()));
		mv.addAttribute("allSpecies", codeListservice.listActiveSpecies());
		mv.addAttribute("allPondTypes", codeListservice.listActivePondTypes());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());
	}

}
