package com.fairagora.verifik8.v8web.mvc.buyers;

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
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmBuyerAssignment;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmBuyerAssignmentRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.buyers.dto.BuyerListingDto;
import com.fairagora.verifik8.v8web.services.FarmService;

@Controller
public class BuyersBrowsingController extends AbstractV8Controller {

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	protected RegEntityFarmBuyerAssignmentRepository regEntityFarmBuyerRepository;

	@Autowired
	private FarmService farmService;

	@RequestMapping(value = "/buyers/browser.html", method = RequestMethod.GET)
	public String showBuyersManagementPage(Model mv) {

		List<BuyerListingDto> listing = regEntityFarmBuyerRepository.findAll().stream()
				.map(p -> regFarmDtoMapper.toListing(p)).collect(Collectors.toList());

		mv.addAttribute("listing", listing);

		preparePage(mv);

		return "buyers/browser";
	}

	/**
	 * 
	 * @param id
	 * @param buyerId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/buyers/delete.html", method = RequestMethod.POST)
	public String deleteBuyer(@RequestParam("buyerId") Long buyerId, Model mv) {
		regEntityFarmBuyerRepository.delete(buyerId);
		return "redirect:/buyers/browser.html";
	}

	/**
	 * 
	 * @param id
	 * @param buyerAssId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/buyers/{buyerId}/update.html", method = RequestMethod.POST)
	public String updateBuyer(@PathVariable("buyerId") Long buyerAssId,
			@RequestParam("productType") Long productType, @RequestParam("buyer") Long buyer,
			@RequestParam("farm") Long farmId, Model mv) {

		RegEntityFarmBuyerAssignment supAsst = buyerAssId == 0 ? new RegEntityFarmBuyerAssignment()
				: regEntityFarmBuyerRepository.findOne(buyerAssId);

		supAsst.setFarm(regEntityRepository.findOne(farmId));
		supAsst.setProductType(em.find(CLRefProductType.class, productType));
		supAsst.setBuyer(regEntityRepository.findOne(buyer));

		regEntityFarmBuyerRepository.save(supAsst);

		return "redirect:/buyers/browser.html";
	}

	/**
	 * 
	 * @param id
	 * @param buyerId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/buyers/create.html", method = RequestMethod.GET)
	public String createBuyer(Model mv) {

		preparePage(mv);
		mv.addAttribute("buyerId", 0);
		mv.addAttribute("allFarmsForUser", farmService.listFarms());
		mv.addAttribute("farm", 0);
		mv.addAttribute("productType", 0);
		mv.addAttribute("buyer", 0);

		return "buyers/editor";
	}

	/**
	 * 
	 * @param id
	 * @param buyerId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/buyers/{buyerAssId}/edit.html", method = RequestMethod.GET)
	public String editBuyer(@PathVariable("buyerAssId") Long buyerAssId, Model mv) {

		RegEntityFarmBuyerAssignment supAsst = regEntityFarmBuyerRepository.findOne(buyerAssId);
		mv.addAttribute("farm", supAsst.getFarm().getId());
		mv.addAttribute("productType", supAsst.getProductType().getId());
		mv.addAttribute("buyer", supAsst.getBuyer().getId());

		preparePage(mv);
		mv.addAttribute("allFarmsForUser", farmService.listFarms());

		return "buyers/editor";
	}

	/**
	 * 
	 * @param farm
	 * @param mv
	 */
	protected void preparePage(Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.buyers");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/buyers");
		mv.addAttribute("v8p", p);

		mv.addAttribute("allProductTypes", codeListservice.listActiveProductTypes());
		mv.addAttribute("allCompanies", regEntityRepository.findByEntityTypeCode(CLAppEntityType.CODE_COM));

	}
}
