package com.fairagora.verifik8.v8web.mvc.farms;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmPondDto;

@Controller
public class FarmPondsController extends AbstractV8Controller {

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	private RegEntityFarmPondRepository regEntityFarmPondRepository;

	@Autowired
	 protected JdbcTemplate jdbc;
	
	@RequestMapping(value = "/farm/{id}/ponds.html", method = RequestMethod.GET)
	public String showPondsManagementPage(@PathVariable("id") Long id, Model mv) {

		RegEntity farm = regEntityRepository.findOne(id);

		preparePage(farm, mv);

		FarmPondDto dto = new FarmPondDto();
		dto.setFarm(id);
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id="+id, String.class));
		mv.addAttribute("farmSize", jdbc.queryForObject("SELECT size FROM reg_entity_farm_details WHERE reg_entity_farm_id="+id, String.class));
		mv.addAttribute("pondDto", dto);

		return "farms/ponds";
	}


	
	@Transactional
	@RequestMapping(value = "/farm/{id}/pond.html", method = RequestMethod.POST)
	public String addPond(@PathVariable("id") Long id, FarmPondDto dto, Model mv) {

		RegEntity farm = regEntityRepository.findOne(id);

		RegEntityFarmPond pond = null;
		if (dto.getId() == null) {
			pond = new RegEntityFarmPond();
			pond.setFarm(farm);
		} else {
			pond = regEntityFarmPondRepository.findOne(dto.getId());
		}

		regFarmDtoMapper.fillEntity(dto, pond);
		regEntityFarmPondRepository.save(pond);
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id="+id, String.class));
		mv.addAttribute("farmSize", jdbc.queryForObject("SELECT size FROM reg_entity_farm_details WHERE reg_entity_farm_id="+id, String.class));
		preparePage(farm, mv);

		dto.setFarm(id);
		mv.addAttribute("pondDto", dto);

		return "redirect:/farm/" + id + "/ponds.html";
	}

	@RequestMapping(value = "/farm/{id}/pond/delete.html", method = RequestMethod.POST)
	public String deletePond(@PathVariable("id") Long id, @RequestParam("pondId") Long pondId, Model mv) {
		regEntityFarmPondRepository.delete(pondId);
		return "redirect:/farm/" + id + "/ponds.html";
	}

	/**
	 * 
	 * @param farm
	 * @param mv
	 */
	protected void preparePage(RegEntity farm, Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/farm");
		mv.addAttribute("v8p", p);

		// store the farm id, obviously usefull for further CRUD staff
		// operation, and page reload
		mv.addAttribute("farmId", farm.getId());
		mv.addAttribute("activeTab", "ponds");

		mv.addAttribute("pondListing", regEntityFarmPondRepository.findByFarmId(farm.getId()));
		mv.addAttribute("allSpecies", codeListservice.listActiveSpecies());
		mv.addAttribute("allPondTypes", codeListservice.listActivePondTypes());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());
	}

}
