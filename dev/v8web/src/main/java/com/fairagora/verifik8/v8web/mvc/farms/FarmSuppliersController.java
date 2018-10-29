package com.fairagora.verifik8.v8web.mvc.farms;

import java.util.List;

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
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppEntityType;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmSupplierAssignment;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmSupplierAssignmentRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;

@Controller
public class FarmSuppliersController extends AbstractV8Controller {

	@Autowired
	protected RegEntityFarmSupplierAssignmentRepository regEntityFarmSupplierAssignmentRepository;

	@Autowired
	protected JdbcTemplate jdbc;

	@PreAuthorize("hasAuthority('R_FARMSUPPLIER')")
	@RequestMapping(value = "/farm/{id}/suppliers.html", method = RequestMethod.GET)
	public String showEditStaff(@PathVariable("id") Long id, Model mv) {

		RegEntity farm = regEntityRepository.findOne(id);
		setToReadOnly(mv, "W_FARMSUPPLIER");
		preparePage(farm, mv);
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id=" + id, String.class));
		return "farms/suppliers";
	}

	@PreAuthorize("hasAuthority('W_FARMSUPPLIER')")
	@Transactional
	@RequestMapping(value = "/farm/{id}/supplier-for-producttype.html", method = RequestMethod.POST)
	public String addSupplierForProductType(@PathVariable("id") Long id, @RequestParam("productType") Long productType,
			@RequestParam("supplier") Long supplier, Model mv) {

		RegEntityFarmSupplierAssignment newAst = new RegEntityFarmSupplierAssignment();
		newAst.setFarm(regEntityRepository.findOne(id));
		newAst.setSupplier(regEntityRepository.findOne(supplier));
		newAst.setProductType(codeListservice.getRefProductType(productType));

		regEntityFarmSupplierAssignmentRepository.save(newAst);

		return "redirect:/farm/" + id + "/suppliers.html";
	}

	@PreAuthorize("hasAuthority('W_FARMSUPPLIER')")
	@Transactional
	@RequestMapping(value = "/farm/{id}/delete-supplier-for-producttype.html", method = RequestMethod.POST)
	public String deleteSupplierForProductType(@PathVariable("id") Long id,
			@RequestParam("productType") Long productType, @RequestParam("supplier") Long supplier, Model mv) {

		for (RegEntityFarmSupplierAssignment ast : regEntityFarmSupplierAssignmentRepository
				.findByFarmIdOrderBySupplierName(id)) {
			if (productType.equals(ast.getProductType().getId()))
				if (supplier.equals(ast.getSupplier().getId()))
					regEntityFarmSupplierAssignmentRepository.delete(ast);
		}

		return "redirect:/farm/" + id + "/suppliers.html";
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
		mv.addAttribute("activeTab", "suppliers");

		List<RegEntityFarmSupplierAssignment> suppliersListing = regEntityFarmSupplierAssignmentRepository
				.findByFarmIdOrderBySupplierName(farm.getId());
		mv.addAttribute("suppliersListing", suppliersListing);
		mv.addAttribute("allProductTypes", codeListservice.listActiveProductTypes());
		mv.addAttribute("allCompanies", regEntityRepository.findByEntityTypeCode(CLAppEntityType.CODE_COM));

	}
}
