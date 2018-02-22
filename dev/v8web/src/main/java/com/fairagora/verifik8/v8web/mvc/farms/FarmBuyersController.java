package com.fairagora.verifik8.v8web.mvc.farms;

import java.util.List;

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
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppEntityType;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmBuyerAssignment;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmBuyerAssignmentRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;

@Controller
public class FarmBuyersController extends AbstractV8Controller {

	@Autowired
	protected RegEntityFarmBuyerAssignmentRepository regEntityFarmBuyerAssignmentRepository;

	@Autowired
	 protected JdbcTemplate jdbc;
	
	@RequestMapping(value = "/farm/{id}/buyers.html", method = RequestMethod.GET)
	public String showEditStaff(@PathVariable("id") Long id, Model mv) {

		RegEntity farm = regEntityRepository.findOne(id);

		preparePage(farm, mv);
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id="+id, String.class));
		return "farms/buyers";
	}

	@Transactional
	@RequestMapping(value = "/farm/{id}/buyer-for-producttype.html", method = RequestMethod.POST)
	public String addBuyerForProductType(@PathVariable("id") Long id, @RequestParam("productType") Long productType,
			@RequestParam("buyer") Long buyer, Model mv) {

		RegEntityFarmBuyerAssignment newAst = new RegEntityFarmBuyerAssignment();
		newAst.setFarm(regEntityRepository.findOne(id));
		newAst.setBuyer(regEntityRepository.findOne(buyer));
		newAst.setProductType(codeListservice.getProductType(productType));

		regEntityFarmBuyerAssignmentRepository.save(newAst);

		return "redirect:/farm/" + id + "/buyers.html";
	}

	@Transactional
	@RequestMapping(value = "/farm/{id}/delete-buyer-for-producttype.html", method = RequestMethod.POST)
	public String deleteBuyerForProductType(@PathVariable("id") Long id,
			@RequestParam("productType") Long productType, @RequestParam("buyer") Long buyer, Model mv) {

		for (RegEntityFarmBuyerAssignment ast : regEntityFarmBuyerAssignmentRepository
				.findByFarmIdOrderByBuyerName(id)) {
			if (productType.equals(ast.getProductType().getId()))
				if (buyer.equals(ast.getBuyer().getId()))
					regEntityFarmBuyerAssignmentRepository.delete(ast);
		}

		return "redirect:/farm/" + id + "/buyers.html";
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
		mv.addAttribute("activeTab", "buyers");

		List<RegEntityFarmBuyerAssignment> buyersListing = regEntityFarmBuyerAssignmentRepository
				.findByFarmIdOrderByBuyerName(farm.getId());
		mv.addAttribute("buyersListing", buyersListing);
		mv.addAttribute("allProductTypes", codeListservice.listActiveProductTypes());
		mv.addAttribute("allCompanies", regEntityRepository.findByEntityTypeCode(CLAppEntityType.CODE_COM));

	}
}
