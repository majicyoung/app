package com.fairagora.verifik8.v8web.mvc.plots;

import java.util.List;
import java.util.Optional;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppQuantityUnit;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProduct;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotProductionCycle;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPlot;
import com.fairagora.verifik8.v8web.data.repo.cl.CLFarmPlotActivityTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLFarmPondActivityTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLRefProductRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityRepository;
import com.fairagora.verifik8.v8web.services.FarmPlotProductionCycleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

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

	@Autowired
	private CLRefProductRepository clRefProductRepository;

	@Autowired
	private CLFarmPlotActivityTypeRepository clFarmPlotActivityTypeRepository;


	@Autowired
	protected JdbcTemplate jdbc;

	@Autowired
	private FarmPlotProductionCycleService farmPlotProductionCycleService;


	/**
	 * @param plotId
	 * @param mv
	 * @return
	 */
	@SuppressWarnings("OptionalUsedAsFieldOrParameterType")
	@PreAuthorize("hasAuthority('R_PONDACTIVTY')")
	@RequestMapping(value = {"/plots/{plotId}/activities/browser.html", "/farm/{farmId}/plots/{plotId}/activities/browser.html"}, method = RequestMethod.GET)
	public String showPondActivities(@PathVariable("farmId") Optional<Long> farmId, @PathVariable("plotId") Long plotId, Model mv) {

		List<DTFarmPlotActivity> activities = plotActivityRepository.findByPlotId(plotId);
		RegEntityFarmPlot regEntityFarmPlot =  farmPlotRepository.findOne(plotId);
		mv.addAttribute("activities", activities);
		mv.addAttribute("plotId", plotId);
		mv.addAttribute("farmId", farmId.orElse(null));
		mv.addAttribute("farmName", regEntityFarmPlot.getFarm().getName());
		mv.addAttribute("plotName", regEntityFarmPlot.getDescription());
		mv.addAttribute("backUrl", farmId.map(id -> "/farm/" + id + "/plots.html").orElse("/plots/browser.html"));
		mv.addAttribute("createActivityUrl", farmId.map(id -> "/farm/" + id + "/plots/"+plotId+"/activities/create.html").orElse("/plots/"+plotId+"/activities/create.html"));


		preparePage(plotId, mv);
		setToReadOnly(mv, "W_PLOTACTIVITY");
		return "plots/activities/browser";
	}





	@PreAuthorize("hasAuthority('R_PLOTACTIVITY')")
	@RequestMapping(value = {"/plots/{plotId}/activities/{activityId}/edit.html", "/farm/{farmId}/plots/{plotId}/activities/{activityId}/edit.html"}, method = RequestMethod.GET)
	public String showPlotActivities(@PathVariable("farmId") Optional<Long> farmId, @PathVariable("plotId") Long plotId, @PathVariable("activityId") Long activityId, Model mv) {

		DTFarmPlotActivity act = plotActivityRepository.findOne(activityId);

		PlotActivityDto dto = new PlotActivityDto();
		dtoMapper.toDto(act, dto);

		mv.addAttribute("activityDto", dto);
		mv.addAttribute("activityId", act.getId());

		mv.addAttribute("allActivityTypes", codeListservice.listActiveActivityTypes());
		mv.addAttribute("allProducts", codeListservice.listActiveProducts());
		mv.addAttribute("allTilingActivityTypes", codeListservice.listActiveTilingActivityTypes());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());
		mv.addAttribute("allCommodities", codeListservice.listActiveCommodities());
		mv.addAttribute("backUrl", farmId.map(id -> "/farm/" + id + "/plots.html").orElse("/plots/browser.html"));
		mv.addAttribute("submitUrl", farmId.map(id -> "/farm/" + id + "/plots/" + plotId + "/activities/update.html").orElse("/plots/" + plotId + "/activities/update.html"));

		preparePage(plotId, mv);

		setToReadOnly(mv, "W_PLOTACTIVITY");

		return "plots/activities/editor";
	}



	@PreAuthorize("hasAuthority('W_PLOTACTIVITY')")
	@RequestMapping(value = {"/plots/{plotId}/activities/create.html", "/farm/{farmId}/plots/{plotId}/activities/create.html"}, method = RequestMethod.GET)
	public String createPlotActivities(@PathVariable("farmId") Optional<Long> farmId, @PathVariable("plotId") Long plotId, Model mv) {

		PlotActivityDto dto = new PlotActivityDto();
		dto.setPlot(plotId);

		mv.addAttribute("activityDto", dto);
		mv.addAttribute("plotId", plotId);
		mv.addAttribute("farmId", farmId.orElse(null));
		mv.addAttribute("activityId", 0l);

		mv.addAttribute("allActivityTypes", codeListservice.listActiveActivityTypes());
		mv.addAttribute("allProducts", codeListservice.listActiveProducts());
		mv.addAttribute("allTilingActivityTypes", codeListservice.listActiveTilingActivityTypes());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());
		mv.addAttribute("allCommodities", codeListservice.listActiveCommodities());
		mv.addAttribute("backUrl", farmId.map(id -> "/farm/" + id + "/plots.html").orElse("/plots/browser.html"));
		mv.addAttribute("submitUrl", farmId.map(id -> "/farm/" + id + "/plots/" + plotId + "/activities/update.html").orElse("/plots/" + plotId + "/activities/update.html"));

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
	@PreAuthorize("hasAuthority('W_PLOTACTIVITY')")
	@RequestMapping(value = {"/plots/{plotId}/activities/update.html",  "/farm/{farmId}/plots/{plotId}/activities/update.html"}, method = RequestMethod.POST)
	public String showPlotActivities(@PathVariable("farmId") Optional<Long> farmId, @PathVariable("plotId") Long plotId, PlotActivityDto dto, BindingResult result, Model mv) {

		DTFarmPlotActivity act = null;

		if (result.hasErrors()) {
			System.out.println(result.toString());
		}

		if (dto.getId() == null || dto.getId().intValue() == 0) {
			act = new DTFarmPlotActivity();
		} else {
			act = plotActivityRepository.findOne(dto.getId());
			farmPlotProductionCycleService.rollbackPlotProductionCycle(act);
		}


		dtoMapper.fillEntity(dto, act);

		act.setPlot(farmPlotRepository.findOne(plotId));

		plotActivityRepository.save(act);

		farmPlotProductionCycleService.updatePlotProductionCycle(act);

		preparePage(plotId, mv);

		return farmId.map(id -> "redirect:/farm/" + id + "/plots/" + plotId + "/activities/browser.html").orElse("redirect:/plots/" + plotId + "/activities/browser.html");
	}

	/**
	 *
	 * @param id
	 * @param plotId
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('W_PLOTACTIVITY')")
	@RequestMapping(value = {"/plots/{plotId}/activities/delete.html", "/farm/{farmId}/plots/{plotId}/activities/delete.html"}, method = RequestMethod.POST)
	public String deletePlotActivities(@PathVariable("farmId") Optional<Long> farmId, @PathVariable("plotId") Long plotId, @RequestParam("activityId") Long activityId, Model mv) {

		plotActivityRepository.delete(activityId);

		preparePage(plotId, mv);

		return farmId.map(id -> "redirect:/farm/" + id + "/plots/" + plotId + "/activities/browser.html").orElse("redirect:/plots/" + plotId + "/activities/browser.html");

	}



	@PreAuthorize("hasAuthority('W_PONDMEASURE')")
	@RequestMapping(value = "/plots/{plotId}/products", method = RequestMethod.GET)
	@ResponseBody
	public List<CLRefProduct> getProducts(@PathVariable("plotId") Long plotId, @RequestParam("activityId") Long activityId, Model mv) {
		return codeListservice.listActiveProductsByPlotActivity(activityId);
	}

	@PreAuthorize("hasAuthority('W_PONDMEASURE')")
	@RequestMapping(value = "/plots/{plotId}/products/{productId}/unit", method = RequestMethod.GET)
	@ResponseBody
	public Long getProductRecommendedUnit(@PathVariable("plotId") Long plotId, @PathVariable("productId") Long productId, Model mv) {
		return clRefProductRepository.findOne(productId).getClAppConstructionLocationType().getId();
	}

	@PreAuthorize("hasAuthority('W_PONDMEASURE')")
	@RequestMapping(value = "/plots/{pondId}/activities/{activityId}/unit", method = RequestMethod.GET)
	@ResponseBody
	public Long getActivityRecommendedUnit(@PathVariable("pondId") Long pondId, @PathVariable("activityId") Long activityId, Model mv) {
		CLAppQuantityUnit clAppQuantityUnit=  clFarmPlotActivityTypeRepository.findOne(activityId).getClAppQuantityUnit();
		if (clAppQuantityUnit != null){
			return clAppQuantityUnit.getId();
		}else {
			return null;
		}
	}

	@PreAuthorize("hasAuthority('R_PONDBROWSER')")
	public String getActivityFertiliseTotal(Long plotId, Long activityId) {
		DTFarmPlotActivity dtFarmPlotActivity = plotActivityRepository.getOne(activityId);
		DTFarmPlotProductionCycle dtFarmPlotProductionCycle  = farmPlotProductionCycleService.getBetweenDate(plotId, dtFarmPlotActivity.getActivityStartDate());
		if (dtFarmPlotProductionCycle == null) {
			return jdbc.queryForObject("SELECT SUM(MEASURE_VALUE) FROM dt_farmag_plot_management WHERE ACTIVITY_START_DATE <= (SELECT ACTIVITY_START_DATE FROM dt_farmag_plot_management WHERE id = " + activityId + ") AND CL_PLOT_ACTIVITY_TYPE_ID = 10 and REG_ENTITY_FARM_PLOT_ID = " + plotId + ";", String.class);
		} else {
			return jdbc.queryForObject("SELECT SUM(MEASURE_VALUE) FROM dt_farmag_plot_management WHERE ACTIVITY_START_DATE <= (SELECT ACTIVITY_START_DATE FROM dt_farmag_plot_management WHERE id = " + activityId + ") AND  ACTIVITY_START_DATE >= DATE('" + dtFarmPlotProductionCycle.getProductionCycleStart() + "') AND CL_PLOT_ACTIVITY_TYPE_ID = 10 and REG_ENTITY_FARM_PLOT_ID = " + plotId + ";", String.class);
		}
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
