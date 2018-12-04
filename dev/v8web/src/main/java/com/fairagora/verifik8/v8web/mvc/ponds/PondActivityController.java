package com.fairagora.verifik8.v8web.mvc.ponds;

import java.util.List;
import java.util.Optional;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppQuantityUnit;
import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPondActivityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProduct;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondProductionCycle;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPlot;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;
import com.fairagora.verifik8.v8web.data.repo.cl.CLFarmPondActivityTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLFarmPondTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLRefProductRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondProductionCycleRepository;
import com.fairagora.verifik8.v8web.services.FameService;
import com.fairagora.verifik8.v8web.services.FarmPondProductionCycleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondActivityDto;

import javax.servlet.http.HttpServletRequest;

@Controller
public class PondActivityController extends AbstractV8Controller {

	@Autowired
	private DTFarmPondActivityRepository pondActivityRepository;

	@Autowired
	private RegEntityFarmPondRepository farmPondRepository;

	@Autowired
	private RegFarmDTOMapper dtoMapper;

	@Autowired
	private CLRefProductRepository clRefProductRepository;
	@Autowired
	private CLFarmPondActivityTypeRepository clFarmPondActivityTypeRepository;

	@Autowired
	protected JdbcTemplate jdbc;

	@Autowired
	private FarmPondProductionCycleService farmPondProductionCycleService;

	@Autowired
	private FameService fameService;

	/**
	 * @param pondId
	 * @param mv
	 * @return
	 */
	@SuppressWarnings("OptionalUsedAsFieldOrParameterType")
	@PreAuthorize("hasAuthority('R_PONDACTIVTY')")
	@RequestMapping(value = {"/ponds/{pondId}/activities/browser.html", "/farm/{farmId}/pond/{pondId}/activities/browser.html"}, method = RequestMethod.GET)
	public String showPondActivities(@PathVariable("farmId") Optional<Long> farmId, @PathVariable("pondId") Long pondId, Model mv) {

		List<DTFarmPondActivity> activities = pondActivityRepository.findByPondId(pondId);
		RegEntityFarmPond regEntityFarmPond =  farmPondRepository.findOne(pondId);
		mv.addAttribute("activities", activities);
		mv.addAttribute("pondId", pondId);
		mv.addAttribute("farmId", farmId.orElse(null));
		mv.addAttribute("farmName", regEntityFarmPond.getFarm().getName());
		mv.addAttribute("pondName", regEntityFarmPond.getDescription());
		mv.addAttribute("backUrl", farmId.map(id -> "/farm/" + id + "/ponds.html").orElse("/ponds/browser.html"));
		mv.addAttribute("createActivityUrl", farmId.map(id -> "/farm/" + id + "/pond/"+pondId+"/activities/create.html").orElse("/ponds/"+pondId+"/activities/create.html"));
		preparePage(pondId, mv);
		setToReadOnly(mv, "W_PONDACTIVTY");

		return "ponds/activities/browser";
	}


	/**
	 * @param pondId
	 * @param mv
	 * @return
	 */
	@SuppressWarnings("OptionalUsedAsFieldOrParameterType")
	@PreAuthorize("hasAuthority('W_PONDACTIVTY')")
	@RequestMapping(value = {"/ponds/{pondId}/activities/create.html", "/farm/{farmId}/pond/{pondId}/activities/create.html"}, method = RequestMethod.GET)
	public String createPondActivities(@PathVariable("farmId") Optional<Long> farmId, @PathVariable("pondId") Long pondId, Model mv) {

		PondActivityDto dto = new PondActivityDto();
		dto.setPond(pondId);

		mv.addAttribute("activityDto", dto);
		mv.addAttribute("pondId", pondId);
		mv.addAttribute("farmId", farmId.orElse(null));
		mv.addAttribute("activityId", 0l);

		mv.addAttribute("allPondActivityTypes", codeListservice.listActivePondActivityTypes());
		mv.addAttribute("allProducts", codeListservice.listActiveProducts());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());
		mv.addAttribute("allSpecies", codeListservice.listActiveSpecies());
		mv.addAttribute("backUrl", farmId.map(id -> "/farm/" + id + "/ponds.html").orElse("/ponds/browser.html"));
		mv.addAttribute("submitUrl", farmId.map(id -> "/farm/" + id + "/ponds/" + pondId + "/activities/update.html").orElse("/ponds/" + pondId + "/activities/update.html"));


		preparePage(pondId, mv);

		return "ponds/activities/editor";
	}

	/**
	 *
	 * @param farmId
	 * @param pondId
	 * @param activityId
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('R_PONDACTIVTY')")
	@RequestMapping(value = {"/ponds/{pondId}/activities/{activityId}/edit.html",  "/farm/{farmId}/pond/{pondId}/activities/{activityId}/edit.html"}, method = RequestMethod.GET)
	public String showPondActivities(@PathVariable("farmId") Optional<Long> farmId, @PathVariable("pondId") Long pondId, @PathVariable("activityId") Long activityId, Model mv) {

		DTFarmPondActivity act = pondActivityRepository.findOne(activityId);

		PondActivityDto dto = new PondActivityDto();
		dtoMapper.toDto(act, dto);

		mv.addAttribute("activityDto", dto);
		mv.addAttribute("activityId", act.getId());
		mv.addAttribute("allPondActivityTypes", codeListservice.listActivePondActivityTypes());
		mv.addAttribute("allProducts", codeListservice.listActiveProductsByActivity(dto.getActivityType()));
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());
		mv.addAttribute("allSpecies", codeListservice.listActiveSpecies());
		mv.addAttribute("backUrl", farmId.map(id -> "/farm/" + id + "/ponds.html").orElse("/ponds/browser.html"));
		mv.addAttribute("submitUrl", farmId.map(id -> "/farm/" + id + "/ponds/" + pondId + "/activities/update.html").orElse("/ponds/" + pondId + "/activities/update.html"));



		preparePage(pondId, mv);
		setToReadOnly(mv, "W_PONDACTIVTY");
		return "ponds/activities/editor";
	}

	/**
	 * @param pondId
	 * @param dto
	 * @param result
	 * @param mv
	 * @return
	 */
	@Transactional
	@PreAuthorize("hasAuthority('W_PONDACTIVTY')")
	@RequestMapping(value = {"/ponds/{pondId}/activities/update.html", "/farm/{farmId}/ponds/{pondId}/activities/update.html"}, method = RequestMethod.POST)
	public String createPondActivities(@PathVariable("farmId") Optional<Long> farmId, @PathVariable("pondId") Long pondId, PondActivityDto dto, BindingResult result, Model mv, HttpServletRequest req) {

		DTFarmPondActivity act = null;

		if (result.hasErrors()) {
			System.out.println(result.toString());
		}

		if (dto.getId() == null || dto.getId().intValue() == 0) {
			act = new DTFarmPondActivity();
		} else {
			act = pondActivityRepository.findOne(dto.getId());
			farmPondProductionCycleService.rollbackPondProductionCycle(act);
		}

		dtoMapper.fillEntity(dto, act);

		act.setPond(farmPondRepository.findOne(pondId));

		pondActivityRepository.save(act);

		farmPondProductionCycleService.updatePondProductionCycle(act);

		fameService.saveLatestFarmPondActivity(loggedUser(req), act);

		preparePage(pondId, mv);
		return farmId.map(id -> "redirect:/farm/" + id + "/pond/" + pondId + "/activities/browser.html").orElse("redirect:/ponds/" + pondId + "/activities/browser.html");
	}

	/**
	 * @param pondId
	 * @param activityId
	 * @param mv
	 * @return
	 */
	@Transactional
	@PreAuthorize("hasAuthority('W_PONDACTIVTY')")
	@RequestMapping(value = {"/ponds/{pondId}/activities/delete.html", "/farm/{farmId}/pond/{pondId}/activities/delete.html"}, method = RequestMethod.POST)
	public String deletePondActivities(@PathVariable("farmId") Optional<Long> farmId, @PathVariable("pondId") Long pondId, @RequestParam("activityId") Long activityId, Model mv) {
		DTFarmPondActivity act = pondActivityRepository.findOne(activityId);
		if (act != null) {
			farmPondProductionCycleService.rollbackPondProductionCycle(act);
		}
		pondActivityRepository.delete(activityId);
		preparePage(pondId, mv);
		return farmId.map(id -> "redirect:/farm/" + id + "/pond/" + pondId + "/activities/browser.html").orElse("redirect:/ponds/" + pondId + "/activities/browser.html");
	}


	@PreAuthorize("hasAuthority('W_PONDMEASURE')")
	@RequestMapping(value = "/ponds/{pondId}/products", method = RequestMethod.GET)
	@ResponseBody
	public List<CLRefProduct> getProducts(@PathVariable("pondId") Long pondId, @RequestParam("activityId") Long activityId, Model mv) {
		return codeListservice.listActiveProductsByActivity(activityId);
	}

	@PreAuthorize("hasAuthority('W_PONDMEASURE')")
	@RequestMapping(value = "/ponds/{pondId}/products/{productId}/unit", method = RequestMethod.GET)
	@ResponseBody
	public Long getProductRecommendedUnit(@PathVariable("pondId") Long pondId, @PathVariable("productId") Long productId, Model mv) {
		return clRefProductRepository.findOne(productId).getClAppConstructionLocationType().getId();
	}

	@PreAuthorize("hasAuthority('W_PONDMEASURE')")
	@RequestMapping(value = "/ponds/{pondId}/activities/{activityId}/unit", method = RequestMethod.GET)
	@ResponseBody
	public Long getActivityRecommendedUnit(@PathVariable("pondId") Long pondId, @PathVariable("activityId") Long activityId, Model mv) {
		CLAppQuantityUnit clAppQuantityUnit=  clFarmPondActivityTypeRepository.findOne(activityId).getClAppQuantityUnit();
		if (clAppQuantityUnit != null){
			return clAppQuantityUnit.getId();
		}else {
			return null;
		}
	}

	@PreAuthorize("hasAuthority('R_PONDBROWSER')")
	public String getActivityFeedingTotal(Long pondId, Long activityId) {
		DTFarmPondActivity dtFarmPondActivity = pondActivityRepository.getOne(activityId);
		DTFarmPondProductionCycle dtFarmPondProductionCycle = farmPondProductionCycleService.getBetweenDate(pondId, dtFarmPondActivity.getActivityStartDate());
		if (dtFarmPondProductionCycle == null) {
			return jdbc.queryForObject("SELECT SUM(MEASURE_VALUE) FROM dt_farmaq_pond_management WHERE ACTIVITY_START_DATE <= (SELECT ACTIVITY_START_DATE FROM dt_farmaq_pond_management WHERE id = " + activityId + ") AND CL_POND_ACTIVITY_TYPE_ID = 3 and REG_ENTITY_FARM_POND_ID = " + pondId + ";", String.class);
		} else {
			return jdbc.queryForObject("SELECT SUM(MEASURE_VALUE) FROM dt_farmaq_pond_management WHERE ACTIVITY_START_DATE <= (SELECT ACTIVITY_START_DATE FROM dt_farmaq_pond_management WHERE id = " + activityId + ") AND  ACTIVITY_START_DATE >= DATE('" + dtFarmPondProductionCycle.getProductionCycleStart() + "') AND CL_POND_ACTIVITY_TYPE_ID = 3 and REG_ENTITY_FARM_POND_ID = " + pondId + ";", String.class);
		}
	}

	/**
	 * @param plotId
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
