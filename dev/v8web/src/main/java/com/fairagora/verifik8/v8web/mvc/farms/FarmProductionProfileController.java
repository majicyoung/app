package com.fairagora.verifik8.v8web.mvc.farms;

import java.util.List;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmAgProduction;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmAqProduction;
import com.fairagora.verifik8.v8web.data.domain.dt.DTSoilAnalysis;
import com.fairagora.verifik8.v8web.data.domain.dt.DTWaterAnalysis;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmAgProductionRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmAqProductionRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTSoilAnalysisRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTWaterAnalysisRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPlotRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.dto.DTFarmAgProductionDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.DTFarmAqProductionDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.DTSoilAnalysisDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.DTWaterAnalysisDto;

@Controller
public class FarmProductionProfileController extends AbstractV8Controller {

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	private RegEntityFarmPondRepository regEntityFarmPondRepository;

	@Autowired
	private RegEntityFarmPlotRepository regEntityFarmPlotRepository;

	@Autowired
	private DTFarmAgProductionRepository totalAgProductionRepository;

	@Autowired
	private DTFarmAqProductionRepository totalAqProductionRepository;
	
	
	@Autowired
	private DTSoilAnalysisRepository soilAnalysisRepository;

	@Autowired
	private DTWaterAnalysisRepository waterAnalysisRepository;

	/**
	 * display the production profile page, with all 3 sections (total
	 * production, soil analysis and water analysis)
	 * 
	 * @param farmId
	 * @return
	 */
	@Autowired
	 protected JdbcTemplate jdbc;
	
	@PreAuthorize("hasAuthority('R_FARMPROD')")
	@Transactional
	@RequestMapping(value = "/farm/{id}/production-profile.html", method = RequestMethod.GET)
	public String showFarmProductionProfile(@PathVariable(name = "id") Long id, Model mv) {
		RegEntity farm = regEntityRepository.findOne(id);

		List<DTFarmAgProductionDto> agProds = totalAgProductionRepository.findByFarmId(id).stream()
				.filter(p -> p.getDataEntryType().isManualEntry()).map(regFarmDtoMapper::toProductionDto)
				.collect(Collectors.toList());
		mv.addAttribute("productionAgListing", agProds);

		List<DTFarmAqProductionDto> aqProds = totalAqProductionRepository.findByFarmId(id).stream()
				.filter(p -> p.getDataEntryType().isManualEntry()).map(regFarmDtoMapper::toProductionDto)
				.collect(Collectors.toList());
		mv.addAttribute("productionAqListing", aqProds);
		
		List<DTSoilAnalysisDto> soilAnalysis = soilAnalysisRepository.findByPlotFarmId(id).stream()
				.map(regFarmDtoMapper::toSoilAnalysisDto).collect(Collectors.toList());
		mv.addAttribute("soilAnalysisListing", soilAnalysis);

		List<DTWaterAnalysisDto> waterAnalysis = waterAnalysisRepository.findByPondFarmId(id).stream()
				.map(regFarmDtoMapper::toWaterAnalysisDto).collect(Collectors.toList());
		mv.addAttribute("waterAnalysisListing", waterAnalysis);
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id="+id, String.class));
		preparePage(farm, mv);

		setToReadOnly(mv, "W_FARMPROD");
		
		return "farms/production-profile";
	}

	@PreAuthorize("hasAuthority('W_FARMPROD')")
	@Transactional
	@RequestMapping(value = "/farm/{farmId}/production-profile/water-analysis/delete.html", method = RequestMethod.POST)
	public String deleteWaterAnalysis(@PathVariable(name = "farmId") Long farmid, @RequestParam("id") Long id) {
		waterAnalysisRepository.delete(id);
		return "redirect:/farm/" + farmid + "/production-profile.html";
	}

	@PreAuthorize("hasAuthority('W_FARMPROD')")
	@Transactional
	@RequestMapping(value = "/farm/{farmId}/production-profile/water-analysis/update.html", method = RequestMethod.POST)
	public String updateWaterAnalysis(@PathVariable(name = "farmId") Long farmid, DTWaterAnalysisDto dto) {
		DTWaterAnalysis analysis = null;

		if (dto.getId() != null) {
			analysis = waterAnalysisRepository.findOne(dto.getId());
		} else {
			analysis = new DTWaterAnalysis();
		}

		regFarmDtoMapper.fillEntity(dto, analysis);
		waterAnalysisRepository.save(analysis);

		return "redirect:/farm/" + farmid + "/production-profile.html";
	}

	@PreAuthorize("hasAuthority('W_FARMPROD')")
	@Transactional
	@RequestMapping(value = "/farm/{farmId}/production-profile/soil-analysis/update.html", method = RequestMethod.POST)
	public String updateSoilAnalysis(@PathVariable(name = "farmId") Long farmid, DTSoilAnalysisDto dto) {
		DTSoilAnalysis analysis = null;

		if (dto.getId() != null) {
			analysis = soilAnalysisRepository.findOne(dto.getId());
		} else {
			analysis = new DTSoilAnalysis();
		}

		regFarmDtoMapper.fillEntity(dto, analysis);
		soilAnalysisRepository.save(analysis);

		return "redirect:/farm/" + farmid + "/production-profile.html";
	}

	@PreAuthorize("hasAuthority('W_FARMPROD')")
	@Transactional
	@RequestMapping(value = "/farm/{farmId}/production-profile/soil-analysis/delete.html", method = RequestMethod.POST)
	public String deleteSoilAnalysis(@PathVariable(name = "farmId") Long farmid, @RequestParam("id") Long id) {
		soilAnalysisRepository.delete(id);
		return "redirect:/farm/" + farmid + "/production-profile.html";
	}

	@PreAuthorize("hasAuthority('W_FARMPROD')")
	@Transactional
	@RequestMapping(value = "/farm/{farmId}/production-profile/total-productionAg/update.html", method = RequestMethod.POST)
	public String updateAgProduction(@PathVariable(name = "farmId") Long farmid, DTFarmAgProductionDto dto) {
		DTFarmAgProduction prod = null;

		if (dto.getId() != null) {
			prod = totalAgProductionRepository.findOne(dto.getId());
		} else {
			prod = new DTFarmAgProduction();
		}

		if (dto.getDataEntryType() == null)
			dto.setDataEntryType(1l);

		regFarmDtoMapper.fillEntity(dto, prod);

		// override what ever was on the DTO - truth is from URL
		prod.setFarm(regEntityRepository.findOne(farmid));
		totalAgProductionRepository.save(prod);

		return "redirect:/farm/" + farmid + "/production-profile.html";
	}

	@PreAuthorize("hasAuthority('W_FARMPROD')")
	@Transactional
	@RequestMapping(value = "/farm/{farmId}/production-profile/total-productionAq/update.html", method = RequestMethod.POST)
	public String updateAqProduction(@PathVariable(name = "farmId") Long farmid, DTFarmAqProductionDto dto) {
		DTFarmAqProduction Aqprod = null;

		if (dto.getId() != null) {
			Aqprod = totalAqProductionRepository.findOne(dto.getId());
		} else {
			Aqprod = new DTFarmAqProduction();
		}

		if (dto.getDataEntryType() == null)
			dto.setDataEntryType(1l);

		regFarmDtoMapper.fillEntity(dto, Aqprod);

		// override what ever was on the DTO - truth is from URL
		Aqprod.setFarm(regEntityRepository.findOne(farmid));
		totalAqProductionRepository.save(Aqprod);

		return "redirect:/farm/" + farmid + "/production-profile.html";
	}
	
	
	@PreAuthorize("hasAuthority('W_FARMPROD')")
	@Transactional
	@RequestMapping(value = "/farm/{farmId}/production-profile/total-productionAg/delete.html", method = RequestMethod.POST)
	public String deleteTotalAgProduction(@PathVariable(name = "farmId") Long farmid, @RequestParam("id") Long id) {
		totalAgProductionRepository.delete(id);
		return "redirect:/farm/" + farmid + "/production-profile.html";
	}

	@PreAuthorize("hasAuthority('W_FARMPROD')")
	@Transactional
	@RequestMapping(value = "/farm/{farmId}/production-profile/total-productionAq/delete.html", method = RequestMethod.POST)
	public String deleteTotalAqProduction(@PathVariable(name = "farmId") Long farmid, @RequestParam("id") Long id) {
		totalAqProductionRepository.delete(id);
		return "redirect:/farm/" + farmid + "/production-profile.html";
	}
	
	
	
	/**
	 * 
	 * @param farm
	 * @param mv
	 */
	protected void preparePage(RegEntity farm, Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_production_profile_page_description");
		p.setNavBarPrefix("/farm");
		mv.addAttribute("v8p", p);

		// store the farm id, obviously usefull for further CRUD staff
		// operation, and page reload
		mv.addAttribute("farmId", farm.getId());
		mv.addAttribute("activeTab", "production");
		mv.addAttribute("activeSecondTab", "production-profile");

		mv.addAttribute("pondListing", regEntityFarmPondRepository.findByFarmId(farm.getId()));
		mv.addAttribute("plotListing", regEntityFarmPlotRepository.findByFarmId(farm.getId()));
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());
		mv.addAttribute("allCommodities", codeListservice.listActiveCommodities());
		mv.addAttribute("allSpecies", codeListservice.listActiveSpecies());
		mv.addAttribute("soilAnalysisTypeListing", codeListservice.listActiveSoilAnalysisType());
	}
}
