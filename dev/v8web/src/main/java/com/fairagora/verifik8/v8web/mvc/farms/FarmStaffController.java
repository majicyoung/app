package com.fairagora.verifik8.v8web.mvc.farms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.cl.CLEntityType;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.domain.reg.staff.RegEntityStaff;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityStaffRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.services.FarmService;

@Controller
public class FarmStaffController extends AbstractV8Controller {

	@Autowired
	private FarmService farmService;

	@Autowired
	private RegEntityStaffRepository regEntityStaffRepository;

	@RequestMapping(value = "/farm/{id}/staff.html", method = RequestMethod.GET)
	public String showEditStaff(@PathVariable("id") Long id, Model mv) {

		RegEntity farm = regEntityRepository.findOne(id);

		preparePage(farm, mv);

		return "farms/staff";
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
		mv.addAttribute("activeTab", "staff");
		
		List<RegEntityStaff> staffListing = regEntityStaffRepository.findByFarmId(farm.getId());
		mv.addAttribute("staffListing", staffListing);
		mv.addAttribute("allIndividuals", regEntityRepository.findByEntityTypeCode(CLEntityType.CODE_IND));
		mv.addAttribute("allPositions", codeListservice.listActivePositionTypes());

	}

}
