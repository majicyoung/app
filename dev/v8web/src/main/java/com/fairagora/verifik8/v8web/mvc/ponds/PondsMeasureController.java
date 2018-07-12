package com.fairagora.verifik8.v8web.mvc.ponds;

import java.util.List;
import java.util.Optional;
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
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondMeasurement;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondMeasurementRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondMeasurementDto;

@Controller
public class PondsMeasureController extends AbstractV8Controller {

	@Autowired
	private DTFarmPondMeasurementRepository pondMeasuresRepository;

	@Autowired
	private RegEntityFarmPondRepository farmPondRepository;

	@Autowired
	private RegFarmDTOMapper dtoMapper;

	/**
	 * @param id
	 * @param pondId
	 * @param mv
	 * @return
	 */
	@SuppressWarnings("OptionalUsedAsFieldOrParameterType")
	@PreAuthorize("hasAuthority('R_PONDMEASURE')")
	@RequestMapping(value = {"/ponds/{pondId}/measures/browser.html", "/farm/{farmId}/pond/{pondId}/measures/browser.html"}, method = RequestMethod.GET)
	public String showPondMeasure(@PathVariable("farmId") Optional<Long> farmId, @PathVariable("pondId") Long pondId, Model mv) {

		List<DTFarmPondMeasurement> measures = pondMeasuresRepository.findByPondId(pondId);
		mv.addAttribute("measures", measures);
		mv.addAttribute("pondId", pondId);
		mv.addAttribute("farmId", farmId.orElse(null));
		mv.addAttribute("measureTypes", measures.stream().map(m -> m.getMeasureType()).distinct().collect(Collectors.toList()));
		mv.addAttribute("backUrl", farmId.map(id -> "/farm/" + id + "/ponds.html").orElse("/ponds/browser.html"));

		preparePage(pondId, mv);

		setToReadOnly(mv, "W_PONDMEASURE");
		return "ponds/measures/browser";
	}

	@SuppressWarnings("OptionalUsedAsFieldOrParameterType")
	@PreAuthorize("hasAuthority('W_PONDMEASURE')")
	@RequestMapping(value = {"/ponds/{pondId}/measures/create.html", "/farm/{farmId}/pond/{pondId}/measures/create.html"}, method = RequestMethod.GET)
	public String createPondMeasure(@PathVariable("farmId") Optional<Long> farmId, @PathVariable("pondId") Long pondId, Model mv) {

		PondMeasurementDto dto = new PondMeasurementDto();
		dto.setPond(pondId);

		mv.addAttribute("measureDto", dto);
		mv.addAttribute("measureId", 0l);
		mv.addAttribute("backUrl", farmId.map(id -> "/farm/" + id + "/ponds.html").orElse("/ponds/browser.html"));

		preparePage(pondId, mv);

		return "ponds/measures/editor";
	}

	@SuppressWarnings("OptionalUsedAsFieldOrParameterType")
	@PreAuthorize("hasAuthority('R_PONDMEASURE')")
	@RequestMapping(value = {"/ponds/{pondId}/measures/{activityId}/edit.html", "/farm/{farmId}/pond/{pondId}/measures/{activityId}/edit.html"}, method = RequestMethod.GET)
	public String showPondMeasures(@PathVariable("farmId") Optional<Long> farmId, @PathVariable("pondId") Long pondId, @PathVariable("activityId") Long activityId, Model mv) {

		DTFarmPondMeasurement act = pondMeasuresRepository.findOne(activityId);

		PondMeasurementDto dto = new PondMeasurementDto();
		dtoMapper.toDto(act, dto);
		dto.setPond(pondId);

		mv.addAttribute("measureDto", dto);
		mv.addAttribute("pondId", pondId);
		mv.addAttribute("farmId", farmId.orElse(null));
		mv.addAttribute("measureId", 0l);
		mv.addAttribute("backUrl", farmId.map(id -> "/farm/" + id + "/ponds.html").orElse("/ponds/browser.html"));

		setToReadOnly(mv, "W_PONDMEASURE");
		preparePage(pondId, mv);

		return "ponds/measures/editor";
	}

	/**
	 * @param id
	 * @param pondId
	 * @param mv
	 * @return
	 */
	@SuppressWarnings("OptionalUsedAsFieldOrParameterType")
	@PreAuthorize("hasAuthority('W_PONDMEASURE')")
	@RequestMapping(value = {"/ponds/{pondId}/measures/update.html", "/farm/{farmId}/pond/{pondId}/measures/update.html"}, method = RequestMethod.POST)
	public String updatePondMeasures(@PathVariable("farmId") Optional<Long> farmId, @PathVariable("pondId") Long pondId, PondMeasurementDto dto, BindingResult result, Model mv) {

		DTFarmPondMeasurement measure = null;

		if (dto.getId() == null || dto.getId().intValue() == 0) {
			measure = new DTFarmPondMeasurement();
		} else
			measure = pondMeasuresRepository.findOne(dto.getId());

		dtoMapper.fillEntity(dto, measure);

		measure.setPond(farmPondRepository.findOne(pondId));

		pondMeasuresRepository.save(measure);

		preparePage(pondId, mv);
		return farmId.map(id -> "redirect:/farm/" + id + "/pond/" + pondId + "/measures/browser.html")
				.orElse("redirect:/ponds/" + pondId + "/measures/browser.html");
	}

	/**
	 * @param id
	 * @param pondId
	 * @param mv
	 * @return
	 */
	@SuppressWarnings("OptionalUsedAsFieldOrParameterType")
	@PreAuthorize("hasAuthority('W_PONDMEASURE')")
	@RequestMapping(value = {"/ponds/{pondId}/measures/delete.html", "/farm/{farmId}/pond/{pondId}/measures/delete.html"}, method = RequestMethod.POST)
	public String deletePondMeasure(@PathVariable("farmId") Optional<Long> farmId, @PathVariable("pondId") Long pondId, @RequestParam("activityId") Long activityId, Model mv) {

		pondMeasuresRepository.delete(activityId);

		preparePage(pondId, mv);

		return farmId.map(id -> "redirect:/farm/" + id + "/pond/" + pondId + "/measures/browser.html")
				.orElse("redirect:/ponds/" + pondId + "/measures/browser.html");
	}

	/**
	 * @param farm
	 * @param mv
	 */
	protected void preparePage(Long pondId, Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.ponds");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/ponds");
		mv.addAttribute("v8p", p);

		mv.addAttribute("pondId", pondId);

		mv.addAttribute("allMeasureTypes", codeListservice.listActiveMeasureTypes());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());

	}

}
