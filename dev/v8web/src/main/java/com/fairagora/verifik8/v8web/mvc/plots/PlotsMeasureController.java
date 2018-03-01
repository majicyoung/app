package com.fairagora.verifik8.v8web.mvc.plots;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotMeasurement;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPlotMeasurementRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPlotRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.plots.dto.PlotMeasurementDto;

@Controller
public class PlotsMeasureController extends AbstractV8Controller {

	@Autowired
	private DTFarmPlotMeasurementRepository plotMeasuresRepository;

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
	@PreAuthorize("hasAuthority('R_PLOTMEASURE')")
	@RequestMapping(value = "/plots/{plotId}/measures/browser.html", method = RequestMethod.GET)
	public String showPlotMeasure(@PathVariable("plotId") Long plotId, Model mv) {

		List<DTFarmPlotMeasurement> measures = plotMeasuresRepository.findByPlotId(plotId);
		mv.addAttribute("measures", measures);
		mv.addAttribute("plotId", plotId);
		mv.addAttribute("measureTypes", measures.stream().map(m -> m.getMeasureType()).distinct().collect(Collectors.toList()));

		preparePage(plotId, mv);
		setToReadOnly(mv, "W_PLOTMEASURE");
		return "plots/measures/browser";
	}

	@PreAuthorize("hasAuthority('W_PLOTMEASURE')")
	@RequestMapping(value = "/plots/{plotId}/measures/create.html", method = RequestMethod.GET)
	public String createPlotMeasure(@PathVariable("plotId") Long plotId, Model mv) {

		PlotMeasurementDto dto = new PlotMeasurementDto();
		dto.setPlot(plotId);

		mv.addAttribute("measureDto", dto);
		mv.addAttribute("measureId", 0l);

		preparePage(plotId, mv);

		return "plots/measures/editor";
	}

	@PreAuthorize("hasAuthority('R_PLOTMEASURE')")
	@RequestMapping(value = "/plots/{plotId}/measures/{activityId}/edit.html", method = RequestMethod.GET)
	public String showPlotMeasures(@PathVariable("plotId") Long plotId, @PathVariable("activityId") Long activityId, Model mv) {

		DTFarmPlotMeasurement act = plotMeasuresRepository.findOne(activityId);

		PlotMeasurementDto dto = new PlotMeasurementDto();
		dtoMapper.toDto(act, dto);
		dto.setPlot(plotId);

		mv.addAttribute("measureDto", dto);
		mv.addAttribute("plotId", plotId);
		mv.addAttribute("measureId", 0l);
		setToReadOnly(mv, "W_PLOTMEASURE");
		preparePage(plotId, mv);

		return "plots/measures/editor";
	}

	/**
	 * 
	 * @param id
	 * @param plotId
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('W_PLOTMEASURE')")
	@RequestMapping(value = "/plots/{plotId}/measures/update.html", method = RequestMethod.POST)
	public String updatePlotMeasures(@PathVariable("plotId") Long plotId, PlotMeasurementDto dto, BindingResult result, Model mv) {

		DTFarmPlotMeasurement measure = null;

		if (dto.getId() == null || dto.getId().intValue() == 0) {
			measure = new DTFarmPlotMeasurement();
		} else
			measure = plotMeasuresRepository.findOne(dto.getId());

		dtoMapper.fillEntity(dto, measure);

		measure.setPlot(farmPlotRepository.findOne(plotId));

		plotMeasuresRepository.save(measure);

		preparePage(plotId, mv);

		return "redirect:/plots/" + plotId + "/measures/browser.html";
	}

	/**
	 * 
	 * @param id
	 * @param plotId
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('W_PLOTMEASURE')")
	@RequestMapping(value = "/plots/{plotId}/measures/delete.html", method = RequestMethod.POST)
	public String deletePlotMeasure(@PathVariable("plotId") Long plotId, @RequestParam("activityId") Long activityId, Model mv) {

		plotMeasuresRepository.delete(activityId);

		preparePage(plotId, mv);

		return "redirect:/plots/" + plotId + "/measures/browser.html";
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

		mv.addAttribute("allMeasureTypes", codeListservice.listActiveMeasureTypes());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());

	}

}
