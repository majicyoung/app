package com.fairagora.verifik8.v8web.mvc.companies;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppEntityType;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.companies.dto.CompanyDto;
import com.fairagora.verifik8.v8web.mvc.companies.dto.CompanyListingDto;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.services.FarmService;

@Controller
public class CompaniesBrowsingController extends AbstractV8Controller {

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	private FarmService farmService;

	@RequestMapping(value = "/companies/browser.html", method = RequestMethod.GET)
	public String showCompanysManagementPage(Model mv) {

		List<CompanyListingDto> listing = regEntityRepository.findAll().stream()
				.filter(e->e.getEntityType().isCompany())
				.map(p -> regFarmDtoMapper.toCompListing(p)).collect(Collectors.toList());

		mv.addAttribute("listing", listing);

		preparePage(mv);

		return "companies/browser";
	}

	/**
	 * 
	 * @param id
	 * @param companyId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/companies/delete.html", method = RequestMethod.POST)
	public String deleteCompany(@RequestParam("companyId") Long companyId, Model mv) {
		regEntityRepository.delete(companyId);
		return "redirect:/companies/browser.html";
	}

	/**
	 * 
	 * @param id
	 * @param companyAssId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/companies/{companyId}/update.html", method = RequestMethod.POST)
	@Transactional
	public String updateCompany(@PathVariable("companyId") Long companyAssId, CompanyDto dto, Model mv) {

		RegEntity ind = companyAssId.intValue() == 0 ? new RegEntity() : regEntityRepository.findOne(companyAssId);
		ind.setEntityType(codeListservice.findEntityType(CLAppEntityType.CODE_IND));

		regFarmDtoMapper.fillEntity(dto, ind);

		regEntityRepository.save(ind);

		return "redirect:/companies/browser.html";
	}

	/**
	 * 
	 * @param id
	 * @param companyId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/companies/create.html", method = RequestMethod.GET)
	public String createCompany(Model mv) {

		CompanyDto dto = new CompanyDto();
		preparePage(mv);
		mv.addAttribute("companyId", 0);
		mv.addAttribute("companyDto", dto);
		mv.addAttribute("farm", 0);
		mv.addAttribute("productType", 0);
		mv.addAttribute("company", 0);

		return "companies/editor";
	}

	/**
	 * 
	 * @param id
	 * @param companyId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/companies/{companyAssId}/edit.html", method = RequestMethod.GET)
	public String editCompany(@PathVariable("companyAssId") Long companyAssId, Model mv) {
		CompanyDto dto = new CompanyDto();
		RegEntity ind = regEntityRepository.findOne(companyAssId);
		regFarmDtoMapper.toDto(ind, dto);
		mv.addAttribute("companyDto", dto);
		mv.addAttribute("companyId", dto.getId());
		preparePage(mv);

		return "companies/editor";
	}

	/**
	 * 
	 * @param farm
	 * @param mv
	 */
	protected void preparePage(Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.companies");
		p.setDescription("default.companies_page_description");
		p.setNavBarPrefix("/companies");
		mv.addAttribute("v8p", p);

		mv.addAttribute("allCountries", countryRepository.findAll(new Sort("name")));
		mv.addAttribute("allCompanyTypes", codeListservice.listActiveCompanyEntityTypes());

	}
}
