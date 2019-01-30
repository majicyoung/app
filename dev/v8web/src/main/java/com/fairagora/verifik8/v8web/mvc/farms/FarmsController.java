package com.fairagora.verifik8.v8web.mvc.farms;

import java.util.*;

import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.domain.reg.RegPicture;
import com.fairagora.verifik8.v8web.data.infra.AttachementsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppEntityType;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmDetails;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppQuantityUnitRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmDetailsRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.companies.dto.CompanyDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmEnvironmentalDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmFormDto;
import com.fairagora.verifik8.v8web.mvc.invididuals.dto.IndividualDto;
import com.fairagora.verifik8.v8web.services.FarmService;
import com.fairagora.verifik8.v8web.services.enhanced.V8Farm;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FarmsController extends AbstractV8Controller {

	private static final String TYPE_AERAIL = "aerail";
	private static final String TYPE_ENVIRONMENTAL_EIA_DOC = "environment_impact_assessment_doc";
	private static final String TYPE_ENVIRONMENTAL_CONTRUCTION_PERMIT = "contruction_permit";
	private static final String TYPE_ENVIRONMENTAL_LAND_TITLE = "land_title";
	private static final String TYPE_ENVIRONMENTAL_SITTING_PROTECTED_AREA = "setting_protected_area";
	private static final String TYPE_ENVIRONMENTAL_CANAL_RESTORATION_PLAN = "canal_restoration_plan";
	private static final String TYPE_ENVIRONMENTAL_CUMULATIVE_IMPACE_STUDY = "cumulative_impace_study";
	private static final String TYPE_ENVIRONMENTAL_ESCAPE_REPORT = "escape_report";
	private static final String TYPE_ENVIRONMENTAL_PLACE_WASTED_WATER = "place_waste_of_water";

	@Autowired
	private CLAppQuantityUnitRepository quantityUnitRepository;

	@Autowired
	private RegEntityRepository regEntityRepository;

	@Autowired
	private RegEntityFarmDetailsRepository regEntityFarmDetailsRepository;

	@Autowired
	private FarmService farmService;

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	protected JdbcTemplate jdbc;

	@Autowired
	private AttachementsService attachementsService;

	private Map<String, RegPicture> aerailAttachments;

	private Map<String, RegPicture> eiaDocAttachments;
	private Map<String, RegPicture> contructionPermitAttachments;
	private Map<String, RegPicture> landTitleAttachments;
	private Map<String, RegPicture> sittingProtectedAreaAttachments;
	private Map<String, RegPicture> canalRestorationPlanAttachments;
	private Map<String, RegPicture> cumulativeImpaceStudyAttachments;
	private Map<String, RegPicture> escapeReportAttachments;
	private Map<String, RegPicture> wastedWaterAttachments;


	@PreAuthorize("hasAuthority('R_FARMLIST')")
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

	@PreAuthorize("hasAuthority('W_FARMCREATE')")
	@RequestMapping(value = "/farm/create.html", method = RequestMethod.GET)
	public String showCreateUserForm(Model mv) {

		FarmFormDto dto = new FarmFormDto();
		dto.setId(0l);
		prepareForFarmEdition(dto, mv);

		return "farms/create";

	}

	@PreAuthorize("hasAuthority('W_FARMCREATE')")
	@RequestMapping(value = "/farm/{id}/delete.html", method = RequestMethod.POST)
	public String deleteFarms(@PathVariable("id") Long id, Model mv) {
		farmService.deleteFarm(id);
		return "redirect:/farms.html";
	}

	@PreAuthorize("hasAuthority('R_FARMCREATE')")
	@RequestMapping(value = "/farm/{id}/edit.html", method = RequestMethod.GET)
	public String showEditUser(@PathVariable("id") Long id, Model mv) {
		FarmFormDto dto = new FarmFormDto();

		setToReadOnly(mv, "W_FARMCREATE");

		regFarmDtoMapper.toDto(regEntityRepository.findOne(id), dto);
			Optional<RegEntityFarmDetails> details = regEntityFarmDetailsRepository.findByEntityId(id);
		if (details.isPresent()) {
			regFarmDtoMapper.toDto(details.get(), dto);
			aerailAttachments = new HashMap<>();
			for (RegPicture regPicture : details.get().getAerialViews()) {
				aerailAttachments.put(regPicture.getResourcePath(), regPicture);
			}
		}

		prepareForFarmEdition(dto, mv);
		return "farms/create";
	}

	@PreAuthorize("hasAuthority('W_FARMCREATE')")
	@RequestMapping(value = "/farm/{id}/update.html", method = RequestMethod.POST)
	@Transactional
	public String updateFarm(@Validated @ModelAttribute("farmDto") FarmFormDto farmDto,
							 @PathVariable("id") Long entityId, BindingResult bindResults, Model mv) {

		RegEntity farm = regEntityRepository.findOne(entityId);
		RegEntityFarmDetails farmDetails = entityId == null || entityId.intValue() == 0 ? null
				: regEntityFarmDetailsRepository.findByEntityId(entityId).get();

		if (farm == null) {
			farm = new RegEntity();
			farm.setEntityType(codeListservice.findEntityType(CLAppEntityType.CODE_FARM));
		}

		regFarmDtoMapper.fillEntity(farmDto, farm);
		regEntityRepository.saveAndFlush(farm);

		if (farmDetails == null) {
			farmDetails = new RegEntityFarmDetails();
			farmDetails.setupFromExNihilo();
		}
		regFarmDtoMapper.fillEntity(farmDto, farmDetails);
		farmDetails.setEntity(farm);

		if (aerailAttachments != null) farmDetails.setAerialViews(new ArrayList<>(aerailAttachments.values()));

		regEntityFarmDetailsRepository.save(farmDetails);

		return "redirect:/farm/" + farm.getId() + "/edit.html";
	}

	/**
	 * @param id
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('R_FARMENV')")
	@RequestMapping(value = "/farm/{id}/environmental.html", method = RequestMethod.GET)
	public String showEnvironmental(@PathVariable("id") Long id, Model mv) {
		FarmEnvironmentalDto dto = new FarmEnvironmentalDto();

		RegEntityFarmDetails regEntityFarmDetails = regEntityFarmDetailsRepository.findByEntityId(id).get();

		regFarmDtoMapper.toDto(regEntityFarmDetails, dto);

		setToReadOnly(mv, "W_FARMENV");

		eiaDocAttachments = new HashMap<>();
		for (RegPicture regPicture : regEntityFarmDetails.getEnvironmentImpactAssessmentDocs()) {
			eiaDocAttachments.put(regPicture.getResourcePath(), regPicture);
		}
		contructionPermitAttachments = new HashMap<>();
		for (RegPicture regPicture : regEntityFarmDetails.getContructionPermits()) {
			contructionPermitAttachments.put(regPicture.getResourcePath(), regPicture);
		}
		landTitleAttachments = new HashMap<>();
		for (RegPicture regPicture : regEntityFarmDetails.getLandTitles()) {
			landTitleAttachments.put(regPicture.getResourcePath(), regPicture);
		}
		sittingProtectedAreaAttachments = new HashMap<>();
		for (RegPicture regPicture : regEntityFarmDetails.getSittingProtectedAreaDocs()) {
			sittingProtectedAreaAttachments.put(regPicture.getResourcePath(), regPicture);
		}
		canalRestorationPlanAttachments = new HashMap<>();
		for (RegPicture regPicture : regEntityFarmDetails.getCanalRestorationPlans()) {
			canalRestorationPlanAttachments.put(regPicture.getResourcePath(), regPicture);
		}
		cumulativeImpaceStudyAttachments = new HashMap<>();
		for (RegPicture regPicture : regEntityFarmDetails.getCumulativeImpactStudies()) {
			cumulativeImpaceStudyAttachments.put(regPicture.getResourcePath(), regPicture);
		}

		escapeReportAttachments = new HashMap<>();
		for (RegPicture regPicture : regEntityFarmDetails.getEscapeReports()) {
			escapeReportAttachments.put(regPicture.getResourcePath(), regPicture);
		}

		wastedWaterAttachments = new HashMap<>();
		for (RegPicture regPicture : regEntityFarmDetails.getPlaceOfWastedWater()) {
			wastedWaterAttachments.put(regPicture.getResourcePath(), regPicture);
		}

		prepareForFarmEdition(id, dto, mv);
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id=" + id, String.class));
		return "farms/environmental";
	}


	/**
	 * @param farmDto
	 * @param entityId
	 * @param bindResults
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('W_FARMENV')")
	@RequestMapping(value = "/farm/{id}/environmental-update.html", method = RequestMethod.POST)
	public String saveEnvironmental(@Validated @ModelAttribute("farmDto") FarmEnvironmentalDto farmDto,
									@PathVariable("id") Long entityId, BindingResult bindResults, Model mv) {

		RegEntityFarmDetails farmDetails = regEntityFarmDetailsRepository.findByEntityId(entityId).get();
		regFarmDtoMapper.fillEntity(farmDto, farmDetails);


		if (eiaDocAttachments != null) farmDetails.setEnvironmentImpactAssessmentDocs(new ArrayList<>(eiaDocAttachments.values()));
		if (contructionPermitAttachments != null) farmDetails.setContructionPermits(new ArrayList<>(contructionPermitAttachments.values()));
		if (landTitleAttachments != null) farmDetails.setLandTitles(new ArrayList<>(landTitleAttachments.values()));
		if (sittingProtectedAreaAttachments != null) farmDetails.setSittingProtectedAreaDocs(new ArrayList<>(sittingProtectedAreaAttachments.values()));
		if (canalRestorationPlanAttachments != null) farmDetails.setCanalRestorationPlans(new ArrayList<>(canalRestorationPlanAttachments.values()));
		if (cumulativeImpaceStudyAttachments != null) farmDetails.setCumulativeImpactStudies(new ArrayList<>(cumulativeImpaceStudyAttachments.values()));
		if (escapeReportAttachments != null) farmDetails.setEscapeReports(new ArrayList<>(escapeReportAttachments.values()));
		if (wastedWaterAttachments != null) farmDetails.setPlaceOfWastedWater(new ArrayList<>(wastedWaterAttachments.values()));

		regEntityFarmDetailsRepository.save(farmDetails);
		// TODO: save files !

		return "redirect:/farm/" + entityId + "/environmental.html";
	}

	/**
	 * @param id
	 * @param individualId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/farm/{id}/individual-editor.html", method = RequestMethod.GET)
	public String createIndividual(Model mv) {

		IndividualDto dto = new IndividualDto();
		prepareForIndividualCreation(mv);
		mv.addAttribute("individualId", 0);
		mv.addAttribute("individualDto", dto);
		mv.addAttribute("farm", 0);
		mv.addAttribute("productType", 0);
		mv.addAttribute("individual", 0);

		return "farms/popups/individual-editor";
	}

	/**
	 * @param farmDto
	 * @param entityId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/farm/{id}/individual-editor.html", method = RequestMethod.POST)

	public String addIndividual(@PathVariable("individualId") Long individualAssId, IndividualDto dto, Model mv) {

		RegEntity ind = individualAssId.intValue() == 0 ? new RegEntity()
				: regEntityRepository.findOne(individualAssId);
		ind.setEntityType(codeListservice.findEntityType(CLAppEntityType.CODE_IND));

		regFarmDtoMapper.fillEntity(dto, ind);

		regEntityRepository.save(ind);

		return "redirect:/farm/create";
	}

	@RequestMapping(value = "/farm/{id}/cooperative-editor.html", method = RequestMethod.GET)
	public String createCompany(Model mv) {

		CompanyDto dto = new CompanyDto();
		prepareForCooperativeCreation(mv);
		mv.addAttribute("companyId", 0);
		mv.addAttribute("companyDto", dto);
		mv.addAttribute("farm", 0);
		mv.addAttribute("productType", 0);
		mv.addAttribute("company", 0);
		mv.addAttribute("entityType", 5);

		return "farms/includes/cooperative-editor";
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
		mv.addAttribute("activeSecondTab", "profile");

		mv.addAttribute("farmDto", dto);
		mv.addAttribute("farmId", dto.getId());
		mv.addAttribute("farmName", dto.getName());
		mv.addAttribute("allQuantityUnits", quantityUnitRepository.findAll(new Sort("name")));
		mv.addAttribute("allCountries", countryRepository.findAll(new Sort("name")));
		mv.addAttribute("allIndividuals", regEntityRepository.findByEntityTypeCode(CLAppEntityType.CODE_IND));
		mv.addAttribute("allCooperatives", regEntityRepository.findByEntityTypeCode(CLAppEntityType.CODE_COOP));
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
		mv.addAttribute("activeSecondTab", "environmental");
		mv.addAttribute("activeTab", "profile");


		mv.addAttribute("farmDto", dto);
		mv.addAttribute("farmId", farmId);

		mv.addAttribute("allHighValueExpensionTypes", codeListservice.listActiveHighValueExpensionTypes());

	}

	/**
	 * @param farm
	 * @param mv
	 */
	protected void prepareForIndividualCreation(Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.individuals");
		p.setDescription("default.individuals_page_description");
		p.setNavBarPrefix("/individuals");
		mv.addAttribute("v8p", p);

		mv.addAttribute("allCountries", countryRepository.findAll(new Sort("name")));

	}

	/**
	 * @param farm
	 * @param mv
	 */
	protected void prepareForCooperativeCreation(Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.companies");
		p.setDescription("default.companies_page_description");
		p.setNavBarPrefix("/companies");
		mv.addAttribute("v8p", p);

		mv.addAttribute("allCountries", countryRepository.findAll(new Sort("name")));
		mv.addAttribute("allCompanyTypes", codeListservice.listActiveCompanyEntityTypes());

	}

	@RequestMapping(value = "/farm/{id}/edit.html/deleteimage", method = RequestMethod.POST)
	public String handleFileDelete(@RequestParam("type") String type, @RequestParam("filename") String filename) {
		switch (type) {
			case TYPE_AERAIL:
				this.aerailAttachments.remove(filename);
				break;
		}

		return "redirect:/";
	}

	@RequestMapping(value = "/farm/{id}/edit.html/upload", method = RequestMethod.POST)
	public String handleFileUpload(@RequestParam("file") MultipartFile file, @RequestParam("type") String type) {

		RegPicture regPicture = new RegPicture();
		regPicture.setResourcePath(file.getOriginalFilename());

		// Save file
		attachementsService.store(regPicture, file);

		switch (type) {
			case TYPE_AERAIL:
				this.aerailAttachments.put(file.getOriginalFilename(), regPicture);
				break;
		}

		return "redirect:/";
	}

	@RequestMapping(value = "/farm/{id}/environmental.html/deleteimage", method = RequestMethod.POST)
	public String handleEnvironmentalFileDelete(@RequestParam("type") String type, @RequestParam("filename") String filename) {
		switch (type) {
			case TYPE_ENVIRONMENTAL_EIA_DOC:
				this.eiaDocAttachments.remove(filename);
				break;
			case TYPE_ENVIRONMENTAL_CONTRUCTION_PERMIT:
				this.contructionPermitAttachments.remove(filename);
				break;
			case TYPE_ENVIRONMENTAL_LAND_TITLE:
				this.landTitleAttachments.remove(filename);
				break;
			case TYPE_ENVIRONMENTAL_SITTING_PROTECTED_AREA:
				this.sittingProtectedAreaAttachments.remove(filename);
				break;
			case TYPE_ENVIRONMENTAL_CANAL_RESTORATION_PLAN:
				this.canalRestorationPlanAttachments.remove(filename);
				break;
			case TYPE_ENVIRONMENTAL_CUMULATIVE_IMPACE_STUDY:
				this.cumulativeImpaceStudyAttachments.remove(filename);
				break;
			case TYPE_ENVIRONMENTAL_ESCAPE_REPORT:
				this.escapeReportAttachments.remove(filename);
				break;
			case TYPE_ENVIRONMENTAL_PLACE_WASTED_WATER:
				this.wastedWaterAttachments.remove(filename);
				break;
		}

		return "redirect:/";
	}

	@RequestMapping(value = "/farm/{id}/environmental.html/upload", method = RequestMethod.POST)
	public String handleEnvironmentalFileUpload(@RequestParam("file") MultipartFile file, @RequestParam("type") String type) {

		RegPicture regPicture = new RegPicture();
		regPicture.setResourcePath(file.getOriginalFilename());

		// Save file
		attachementsService.store(regPicture, file);

		switch (type) {
			case TYPE_ENVIRONMENTAL_EIA_DOC:
				this.eiaDocAttachments.put(file.getOriginalFilename(), regPicture);
				break;
			case TYPE_ENVIRONMENTAL_CONTRUCTION_PERMIT:
				this.contructionPermitAttachments.put(file.getOriginalFilename(), regPicture);
				break;
			case TYPE_ENVIRONMENTAL_LAND_TITLE:
				this.landTitleAttachments.put(file.getOriginalFilename(), regPicture);
				break;
			case TYPE_ENVIRONMENTAL_SITTING_PROTECTED_AREA:
				this.sittingProtectedAreaAttachments.put(file.getOriginalFilename(), regPicture);
				break;
			case TYPE_ENVIRONMENTAL_CANAL_RESTORATION_PLAN:
				this.canalRestorationPlanAttachments.put(file.getOriginalFilename(), regPicture);
				break;
			case TYPE_ENVIRONMENTAL_CUMULATIVE_IMPACE_STUDY:
				this.cumulativeImpaceStudyAttachments.put(file.getOriginalFilename(), regPicture);
				break;
			case TYPE_ENVIRONMENTAL_ESCAPE_REPORT:
				this.escapeReportAttachments.put(file.getOriginalFilename(), regPicture);
				break;
			case TYPE_ENVIRONMENTAL_PLACE_WASTED_WATER:
				this.wastedWaterAttachments.put(file.getOriginalFilename(), regPicture);
				break;
		}

		return "redirect:/";
	}

}
