package com.fairagora.verifik8.v8web.mvc.plots;

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
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPlot;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPlotRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmPlotDto;
import com.fairagora.verifik8.v8web.mvc.plots.dto.PlotListingDto;
import com.fairagora.verifik8.v8web.services.FarmService;

@Controller
public class PlotsBrowsingController extends AbstractV8Controller {

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	private RegEntityFarmPlotRepository regEntityFarmPlotRepository;

	@Autowired
	private FarmService farmService;

	@PreAuthorize("hasAuthority('R_PLOTBROWSER')")
	@RequestMapping(value = "/plots/browser.html", method = RequestMethod.GET)
	public String showPlotsManagementPage(Model mv) {
//
//		List<PlotListingDto> listing = regEntityFarmPlotRepository.findAll().stream()
//				.map(p -> regFarmDtoMapper.toListing(p)).collect(Collectors.toList());

		List<PlotListingDto> listing = farmService.listAllPlotsForLoggedUser(getLoggedUser()).stream().map(p -> regFarmDtoMapper.toListing(p)).collect(Collectors.toList());


		mv.addAttribute("listing", listing);

		preparePage(mv);
setToReadOnly(mv, "W_PLOTBROWSER");
		return "plots/browser";
	}

	/**
	 * 
	 * @param id
	 * @param plotId
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('W_PLOTBROWSER')")
	@RequestMapping(value = "/plots/delete.html", method = RequestMethod.POST)
	public String deletePlot(@RequestParam("plotId") Long plotId, Model mv) {
		regEntityFarmPlotRepository.delete(plotId);
		return "redirect:/plots/browser.html";
	}

	/**
	 * 
	 * @param id
	 * @param plotId
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('W_PLOTBROWSER')")
	@RequestMapping(value = "/plots/{plotId}/update.html", method = RequestMethod.POST)
	public String updatePlot(@PathVariable("plotId") Long plotId, FarmPlotDto dto, Model mv) {

		 RegEntityFarmPlot plot = plotId==0 ? new RegEntityFarmPlot(): regEntityFarmPlotRepository.findOne(plotId);

		regFarmDtoMapper.fillEntity(dto, plot);

		regEntityFarmPlotRepository.save(plot);
		return "redirect:/plots/browser.html";
	}

	/**
	 * 
	 * @param id
	 * @param plotId
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('W_PLOTBROWSER')")
	@RequestMapping(value = "/plots/create.html", method = RequestMethod.GET)
	public String createPlot(Model mv) {


		FarmPlotDto dto = new FarmPlotDto();

		mv.addAttribute("allFarmsForUser", farmService.listFarms());
		mv.addAttribute("plotDto", dto);
		mv.addAttribute("plotId", 0);
		mv.addAttribute("allCommodities", codeListservice.listActiveCommodities());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());

		preparePage(mv);

		return "plots/editor";
	}

	
	/**
	 * 
	 * @param id
	 * @param plotId
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('R_PLOTBROWSER')")
	@RequestMapping(value = "/plots/{plotId}/edit.html", method = RequestMethod.GET)
	public String editPlot(@PathVariable("plotId") Long plotId, Model mv) {

		RegEntityFarmPlot plot =  regEntityFarmPlotRepository.findOne(plotId);

		FarmPlotDto dto = new FarmPlotDto();
		regFarmDtoMapper.toDto(plot, dto);

		mv.addAttribute("allFarmsForUser", farmService.listFarms());
		mv.addAttribute("plotDto", dto);
		mv.addAttribute("plotId", dto.getId());
		mv.addAttribute("allCommodities", codeListservice.listActiveCommodities());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());

		preparePage(mv);
		
		setToReadOnly(mv, "W_PLOTBROWSER");

		return "plots/editor";
	}

	/**
	 * 
	 * @param farm
	 * @param mv
	 */
	protected void preparePage(Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.plots");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/plots");
		mv.addAttribute("v8p", p);

	}
}
