package com.fairagora.verifik8.v8web.mvc.ponds;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondActivityDto;

@Controller
public class PondActivityController extends AbstractV8Controller {

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
	@RequestMapping(value = "/ponds/{pondId}/activities/browser.html", method = RequestMethod.GET)
	public String showPlotActivities(@PathVariable("pondId") Long pondId, Model mv) {

		List<DTFarmPondActivity> activities = pondActivityRepository.findByPondId(pondId);
		mv.addAttribute("activities", activities);
		mv.addAttribute("pondId", pondId);

		preparePage(pondId, mv);

		return "ponds/activities/browser";
	}

	@RequestMapping(value = "/ponds/{pondId}/activities/create.html", method = RequestMethod.GET)
	public String createPlotActivities(@PathVariable("pondId") Long pondId, Model mv) {

		PondActivityDto dto = new PondActivityDto();
		dto.setPond(pondId);

		mv.addAttribute("activityDto", dto);
		mv.addAttribute("pondId", pondId);
		mv.addAttribute("activityId", 0l);

		mv.addAttribute("allPondActivityTypes", codeListservice.listActivePondActivityTypes());
		mv.addAttribute("allProducts", codeListservice.listActiveProducts());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());

		preparePage(pondId, mv);

		return "ponds/activities/editor";
	}

	@RequestMapping(value = "/ponds/{pondId}/activities/{activityId}/edit.html", method = RequestMethod.GET)
	public String showPondActivities(@PathVariable("pondId") Long pondId, @PathVariable("activityId") Long activityId,
			Model mv) {

		DTFarmPondActivity act = pondActivityRepository.findOne(activityId);

		PondActivityDto dto = new PondActivityDto();
		dtoMapper.toDto(act, dto);

		mv.addAttribute("activityDto", dto);
		mv.addAttribute("activityId", act.getId());

		mv.addAttribute("allPondActivityTypes", codeListservice.listActivePondActivityTypes());
		mv.addAttribute("allProducts", codeListservice.listActiveProducts());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());

		preparePage(pondId, mv);

		return "ponds/activities/editor";
	}

	/**
	 * 
	 * @param id
	 * @param plotId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/ponds/{pondId}/activities/update.html", method = RequestMethod.POST)
	public String showPlotActivities(@PathVariable("pondId") Long pondId, PondActivityDto dto, BindingResult result,
			Model mv) {

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

		preparePage(pondId, mv);

		return "redirect:/ponds/" + pondId + "/activities/browser.html";
	}

	/**
	 * 
	 * @param id
	 * @param plotId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/ponds/{pondId}/activities/delete.html", method = RequestMethod.POST)
	public String deletePlotActivities(@PathVariable("pondId") Long pondId, @RequestParam("activityId") Long activityId,
			Model mv) {

		pondActivityRepository.delete(activityId);

		preparePage(pondId, mv);

		return "redirect:/ponds/" + pondId + "/activities/browser.html";
	}

	/**
	 * 
	 * @param farm
	 * @param mv
	 */
	protected void preparePage(Long plotId, Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.ponds");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/ponds");
		mv.addAttribute("v8p", p);

		mv.addAttribute("pondId", plotId);

	}

}
