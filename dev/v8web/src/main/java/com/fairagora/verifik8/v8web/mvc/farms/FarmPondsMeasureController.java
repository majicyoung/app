package com.fairagora.verifik8.v8web.mvc.farms;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondMeasurement;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondMeasurementRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondMeasurementDto;

@Controller
public class FarmPondsMeasureController extends AbstractV8Controller {

	@Autowired
	private DTFarmPondMeasurementRepository pondMeasuresRepository;

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
	@RequestMapping(value = "/farm/{farmId}/pond/{pondId}/measures/browser.html", method = RequestMethod.GET)
	public String showPondMeasure(@PathVariable("farmId") Long farmId, @PathVariable("pondId") Long pondId, Model mv) {

		RegEntity farm = regEntityRepository.findOne(farmId);
		
		List<DTFarmPondMeasurement> measures = pondMeasuresRepository.findByPondId(pondId);
		mv.addAttribute("measures", measures);
		mv.addAttribute("pondId", pondId);
		mv.addAttribute("measureTypes",
				measures.stream().map(m -> m.getMeasureType()).distinct().collect(Collectors.toList()));

		preparePage(farm, pondId, mv);

		return "farms/pond-measures/browser";
	}

	@RequestMapping(value = "/farm/{farmId}/pond/{pondId}/measures/create.html", method = RequestMethod.GET)
	public String createPondMeasure(@PathVariable("farmId") Long farmId, @PathVariable("pondId") Long pondId, Model mv) {

		RegEntity farm = regEntityRepository.findOne(farmId);
		
		PondMeasurementDto dto = new PondMeasurementDto();
		dto.setPond(pondId);

		mv.addAttribute("measureDto", dto);
		mv.addAttribute("measureId", 0l);

		preparePage(farm, pondId, mv);

		return "farms/pond-measures/editor";
	}

	@RequestMapping(value = "/farm/{farmId}/pond/{pondId}/measures/{activityId}/edit.html", method = RequestMethod.GET)
	public String showPondMeasures(@PathVariable("farmId") Long farmId, @PathVariable("pondId") Long pondId, @PathVariable("activityId") Long activityId,
			Model mv) {

		RegEntity farm = regEntityRepository.findOne(farmId);
		
		DTFarmPondMeasurement act = pondMeasuresRepository.findOne(activityId);

		PondMeasurementDto dto = new PondMeasurementDto();
		dtoMapper.toDto(act, dto);
		dto.setPond(pondId);

		mv.addAttribute("measureDto", dto);
		mv.addAttribute("pondId", pondId);
		mv.addAttribute("measureId", 0l);

		preparePage(farm, pondId, mv);

		return "farms/pond-measures/editor";
	}

	/**
	 * 
	 * @param id
	 * @param pondId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/farm/{farmId}/pond/{pondId}/measures/update.html", method = RequestMethod.POST)
	public String updatePondMeasures(@PathVariable("farmId") Long farmId, @PathVariable("pondId") Long pondId, PondMeasurementDto dto, BindingResult result,
			Model mv) {

		RegEntity farm = regEntityRepository.findOne(farmId);
		
		DTFarmPondMeasurement measure = null;

		if (dto.getId() == null || dto.getId().intValue() == 0) {
			measure = new DTFarmPondMeasurement();
		} else
			measure = pondMeasuresRepository.findOne(dto.getId());

		dtoMapper.fillEntity(dto, measure);

		measure.setPond(farmPondRepository.findOne(pondId));

		pondMeasuresRepository.save(measure);

		preparePage(farm, pondId, mv);

		return "redirect:/farm/"+farmId +"/ponds.html";
	}

	/**
	 * 
	 * @param id
	 * @param pondId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/farm/{farmId}/pond/{pondId}/measures/delete.html", method = RequestMethod.POST)
	public String deletePondMeasure(@PathVariable("farmId") Long farmId, @PathVariable("pondId") Long pondId, @RequestParam("activityId") Long activityId,
			Model mv) {

		RegEntity farm = regEntityRepository.findOne(farmId);
		
		pondMeasuresRepository.delete(activityId);

		preparePage(farm, pondId, mv);

		return "redirect:/farm/"+farmId +"/ponds.html";
	}

	/**
	 * 
	 * @param farm
	 * @param mv
	 */
	protected void preparePage(RegEntity farm, Long pondId, Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/farm");
		mv.addAttribute("v8p", p);

		mv.addAttribute("pondId", pondId);
		mv.addAttribute("farmId", farm.getId());
		mv.addAttribute("activeTab", "ponds");

		mv.addAttribute("allMeasureTypes", codeListservice.listActiveMeasureTypes());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());

	}

}
