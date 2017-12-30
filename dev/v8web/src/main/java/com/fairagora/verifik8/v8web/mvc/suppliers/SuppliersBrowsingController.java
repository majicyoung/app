package com.fairagora.verifik8.v8web.mvc.suppliers;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppEntityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProductType;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmSupplierAssignment;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmSupplierAssignmentRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.suppliers.dto.SupplierListingDto;
import com.fairagora.verifik8.v8web.services.FarmService;

@Controller
public class SuppliersBrowsingController extends AbstractV8Controller {

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	protected RegEntityFarmSupplierAssignmentRepository regEntityFarmSupplierRepository;

	@Autowired
	private FarmService farmService;

	@RequestMapping(value = "/suppliers/browser.html", method = RequestMethod.GET)
	public String showSuppliersManagementPage(Model mv) {

		List<SupplierListingDto> listing = regEntityFarmSupplierRepository.findAll().stream()
				.map(p -> regFarmDtoMapper.toListing(p)).collect(Collectors.toList());

		mv.addAttribute("listing", listing);

		preparePage(mv);

		return "suppliers/browser";
	}

	/**
	 * 
	 * @param id
	 * @param supplierId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/suppliers/delete.html", method = RequestMethod.POST)
	public String deleteSupplier(@RequestParam("supplierId") Long supplierId, Model mv) {
		regEntityFarmSupplierRepository.delete(supplierId);
		return "redirect:/suppliers/browser.html";
	}

	/**
	 * 
	 * @param id
	 * @param supplierAssId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/suppliers/{supplierId}/update.html", method = RequestMethod.POST)
	public String updateSupplier(@PathVariable("supplierId") Long supplierAssId,
			@RequestParam("productType") Long productType, @RequestParam("supplier") Long supplier,
			@RequestParam("farm") Long farmId, Model mv) {

		RegEntityFarmSupplierAssignment supAsst = supplierAssId == 0 ? new RegEntityFarmSupplierAssignment()
				: regEntityFarmSupplierRepository.findOne(supplierAssId);

		supAsst.setFarm(regEntityRepository.findOne(farmId));
		supAsst.setProductType(em.find(CLRefProductType.class, productType));
		supAsst.setSupplier(regEntityRepository.findOne(supplier));

		regEntityFarmSupplierRepository.save(supAsst);

		return "redirect:/suppliers/browser.html";
	}

	/**
	 * 
	 * @param id
	 * @param supplierId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/suppliers/create.html", method = RequestMethod.GET)
	public String createSupplier(Model mv) {

		preparePage(mv);
		mv.addAttribute("supplierId", 0);
		mv.addAttribute("allFarmsForUser", farmService.listFarms());
		mv.addAttribute("farm", 0);
		mv.addAttribute("productType", 0);
		mv.addAttribute("supplier", 0);

		return "suppliers/editor";
	}

	/**
	 * 
	 * @param id
	 * @param supplierId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/suppliers/{supplierAssId}/edit.html", method = RequestMethod.GET)
	public String editSupplier(@PathVariable("supplierAssId") Long supplierAssId, Model mv) {

		RegEntityFarmSupplierAssignment supAsst = regEntityFarmSupplierRepository.findOne(supplierAssId);
		mv.addAttribute("farm", supAsst.getFarm().getId());
		mv.addAttribute("productType", supAsst.getProductType().getId());
		mv.addAttribute("supplier", supAsst.getSupplier().getId());

		preparePage(mv);
		mv.addAttribute("allFarmsForUser", farmService.listFarms());

		return "suppliers/editor";
	}

	/**
	 * 
	 * @param farm
	 * @param mv
	 */
	protected void preparePage(Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.suppliers");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/suppliers");
		mv.addAttribute("v8p", p);

		mv.addAttribute("allProductTypes", codeListservice.listActiveProductTypes());
		mv.addAttribute("allCompanies", regEntityRepository.findByEntityTypeCode(CLAppEntityType.CODE_COM));

	}
}
