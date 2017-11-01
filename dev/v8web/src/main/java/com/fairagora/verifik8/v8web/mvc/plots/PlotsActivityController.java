package com.fairagora.verifik8.v8web.mvc.plots;

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
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPlotActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPlotRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.plots.dto.PlotActivityDto;

@Controller
public class PlotsActivityController extends AbstractV8Controller {

	@Autowired
	private DTFarmPlotActivityRepository plotActivityRepository;

	@Autowired
	private RegEntityFarmPlotRepository farmPlotRepository;

	@Autowired
	private RegFarmDTOMapper dtoMapper;

	/**
	 * 
	 * @param id
	 * @param plotId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/plots/{plotId}/activities/browser.html", method = RequestMethod.GET)
	public String showPlotActivities(@PathVariable("plotId") Long plotId, Model mv) {

		List<DTFarmPlotActivity> activities = plotActivityRepository.findByPlotId(plotId);
		mv.addAttribute("activities", activities);
		mv.addAttribute("plotId", plotId);

		preparePage(plotId, mv);

		return "plots/activities/browser";
	}

	@RequestMapping(value = "/plots/{plotId}/activities/create.html", method = RequestMethod.GET)
	public String createPlotActivities(@PathVariable("plotId") Long plotId, Model mv) {

		PlotActivityDto dto = new PlotActivityDto();
		dto.setPlot(plotId);

		mv.addAttribute("activityDto", dto);
		mv.addAttribute("plotId", plotId);
		mv.addAttribute("activityId", 0l);

		mv.addAttribute("allActivityTypes", codeListservice.listActiveActivityTypes());
		mv.addAttribute("allProducts", codeListservice.listActiveProducts());
		mv.addAttribute("allTilingActivityTypes", codeListservice.listActiveTilingActivityTypes());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());

		preparePage(plotId, mv);

		return "plots/activities/editor";
	}

	@RequestMapping(value = "/plots/{plotId}/activities/{activityId}/edit.html", method = RequestMethod.GET)
	public String showPlotActivities(@PathVariable("plotId") Long plotId, @PathVariable("activityId") Long activityId,
			Model mv) {

		DTFarmPlotActivity act = plotActivityRepository.findOne(activityId);

		PlotActivityDto dto = new PlotActivityDto();
		dtoMapper.toDto(act, dto);

		mv.addAttribute("activityDto", dto);
		mv.addAttribute("activityId", act.getId());

		mv.addAttribute("allActivityTypes", codeListservice.listActiveActivityTypes());
		mv.addAttribute("allProducts", codeListservice.listActiveProducts());
		mv.addAttribute("allTilingActivityTypes", codeListservice.listActiveTilingActivityTypes());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());

		preparePage(plotId, mv);

		return "plots/activities/editor";
	}

	/**
	 * 
	 * @param id
	 * @param plotId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/plots/{plotId}/activities/update.html", method = RequestMethod.POST)
	public String showPlotActivities(@PathVariable("plotId") Long plotId, PlotActivityDto dto, BindingResult result,
			Model mv) {

		DTFarmPlotActivity act = null;

		if (result.hasErrors()) {
			System.out.println(result.toString());
		}

		if (dto.getId() == null || dto.getId().intValue() == 0) {
			act = new DTFarmPlotActivity();
		} else
			act = plotActivityRepository.findOne(dto.getId());

		dtoMapper.fillEntity(dto, act);

		act.setPlot(farmPlotRepository.findOne(plotId));

		plotActivityRepository.save(act);

		preparePage(plotId, mv);

		return "redirect:/plots/" + plotId + "/activities/browser.html";
	}

	/**
	 * 
	 * @param id
	 * @param plotId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/plots/{plotId}/activities/delete.html", method = RequestMethod.POST)
	public String deletePlotActivities(@PathVariable("plotId") Long plotId, @RequestParam("activityId") Long activityId,
			Model mv) {

		plotActivityRepository.delete(activityId);

		preparePage(plotId, mv);

		return "redirect:/plots/" + plotId + "/activities/browser.html";
	}

	/**
	 * 
	 * @param farm
	 * @param mv
	 */
	protected void preparePage(Long plotId, Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.plots");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/plots");
		mv.addAttribute("v8p", p);

		mv.addAttribute("plotId", plotId);

	}

}
