package com.fairagora.verifik8.v8web.mvc.farms;

import java.util.List;

import org.hibernate.type.descriptor.sql.JdbcTypeFamilyInformation.Family;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.cl.CLEntityType;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmDetails;
import com.fairagora.verifik8.v8web.data.repo.cl.CLQuantityUnitRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmDetailsRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmEnvironmentalDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmFormDto;
import com.fairagora.verifik8.v8web.services.FarmService;
import com.fairagora.verifik8.v8web.services.enhanced.V8Farm;

@Controller
public class FarmsController extends AbstractV8Controller {

	@Autowired
	private CLQuantityUnitRepository quantityUnitRepository;

	@Autowired
	private RegEntityRepository regEntityRepository;

	@Autowired
	private RegEntityFarmDetailsRepository regEntityFarmDetailsRepository;

	@Autowired
	private FarmService farmService;

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@RequestMapping(value = "/farms.html", method = RequestMethod.GET)
	public String showFarmsList(Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/farms");
		mv.addAttribute("v8p", p);

		List<V8Farm> farms = farmService.listFarms();
		mv.addAttribute("farms", farms);

		return "farms/listing";

	}

	@RequestMapping(value = "/farm/create.html", method = RequestMethod.GET)
	public String showCreateUserForm(Model mv) {

		FarmFormDto dto = new FarmFormDto();
		dto.setId(0l);
		prepareForFarmEdition(dto, mv);

		return "farms/create";

	}

	@RequestMapping(value = "/farm/{id}/delete.html", method = RequestMethod.POST)
	public String deleteFarms(@PathVariable("id") Long id, Model mv) {
		farmService.deleteFarm(id);
		return "redirect:/farms.html";
	}

	@RequestMapping(value = "/farm/{id}/edit.html", method = RequestMethod.GET)
	public String showEditUser(@PathVariable("id") Long id, Model mv) {
		FarmFormDto dto = new FarmFormDto();

		regFarmDtoMapper.toDto(regEntityRepository.findOne(id), dto);
		regFarmDtoMapper.toDto(regEntityFarmDetailsRepository.findByEntityId(id).get(), dto);

		prepareForFarmEdition(dto, mv);
		return "farms/create";
	}

	@RequestMapping(value = "/farm/{id}/update.html", method = RequestMethod.POST)
	@Transactional
	public String updateFarm(@Validated @ModelAttribute("farmDto") FarmFormDto farmDto,
			@PathVariable("id") Long entityId, BindingResult bindResults, Model mv) {

		RegEntity farm = regEntityRepository.findOne(entityId);
		RegEntityFarmDetails farmDetails = entityId == null || entityId.intValue() == 0 ? null
				: regEntityFarmDetailsRepository.findByEntityId(entityId).get();

		if (farm == null) {
			farm = new RegEntity();
			farm.setEntityType(codeListservice.findEntityType(CLEntityType.CODE_FARM));
		}

		regFarmDtoMapper.fillEntity(farmDto, farm);
		regEntityRepository.saveAndFlush(farm);

		if (farmDetails == null) {
			farmDetails = new RegEntityFarmDetails();
			farmDetails.setupFromExNihilo();
		}
		regFarmDtoMapper.fillEntity(farmDto, farmDetails);
		farmDetails.setEntity(farm);

		regEntityFarmDetailsRepository.save(farmDetails);

		return "redirect:/farms.html";
	}

	/**
	 * 
	 * @param id
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/farm/{id}/environmental.html", method = RequestMethod.GET)
	public String showEnvironmental(@PathVariable("id") Long id, Model mv) {
		FarmEnvironmentalDto dto = new FarmEnvironmentalDto();

		regFarmDtoMapper.toDto(regEntityFarmDetailsRepository.findByEntityId(id).get(), dto);

		prepareForFarmEdition(id, dto, mv);
		return "farms/environmental";
	}

	/**
	 * 
	 * @param farmDto
	 * @param entityId
	 * @param bindResults
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/farm/{id}/environmental-update.html", method = RequestMethod.POST)
	public String saveEnvironmental(@Validated @ModelAttribute("farmDto") FarmEnvironmentalDto farmDto,
			@PathVariable("id") Long entityId, BindingResult bindResults,
			@RequestParam("impact_study") MultipartFile impact_study,
			@RequestParam("contruct_permit") MultipartFile contruct_permit,
			@RequestParam("land_title") MultipartFile land_title, @RequestParam("land_auth") MultipartFile land_auth,
			@RequestParam("canal_restore") MultipartFile canal_restore,
			@RequestParam("cumul_study") MultipartFile cumul_study, Model mv) {

		RegEntityFarmDetails farmDetails = regEntityFarmDetailsRepository.findByEntityId(entityId).get();
		regFarmDtoMapper.fillEntity(farmDto, farmDetails);
		regEntityFarmDetailsRepository.save(farmDetails);
		// TODO: save files !

		return "redirect:/farm/" + entityId + "/environmental.html";
	}

	/**
	 * prepare for model for pages
	 * 
	 * @param dto
	 * @param mv
	 */
	private void prepareForFarmEdition(FarmFormDto dto, Model mv) {
		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/farm");
		mv.addAttribute("v8p", p);

		mv.addAttribute("newEntity", dto.getId() == null);
		mv.addAttribute("activeTab", "profile");

		mv.addAttribute("farmDto", dto);
		mv.addAttribute("farmId", dto.getId());
		mv.addAttribute("allQuantityUnits", quantityUnitRepository.findAll(new Sort("name")));
		mv.addAttribute("allCountries", countryRepository.findAll(new Sort("name")));
		mv.addAttribute("allIndividuals", regEntityRepository.findByEntityTypeCode(CLEntityType.CODE_IND));
		mv.addAttribute("allCooperatives", regEntityRepository.findByEntityTypeCode(CLEntityType.CODE_COOP));
	}

	/**
	 * prepare for model for pages
	 * 
	 * @param dto
	 * @param mv
	 */
	private void prepareForFarmEdition(Long farmId, FarmEnvironmentalDto dto, Model mv) {
		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/farm");
		mv.addAttribute("v8p", p);

		mv.addAttribute("newEntity", false);
		mv.addAttribute("activeTab", "environmental");

		mv.addAttribute("farmDto", dto);
		mv.addAttribute("farmId", farmId);

		mv.addAttribute("allHighValueExpensionTypes", codeListservice.listActiveHighValueExpensionTypes());

	}
}
