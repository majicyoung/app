package com.fairagora.verifik8.v8web.mvc.farms;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.reg.staff.RegEntityStaff;
import com.fairagora.verifik8.v8web.data.domain.reg.staff.RegEntityStaffContract;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityStaffContractRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityStaffRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.dto.StaffContractDto;
import com.fairagora.verifik8.v8web.services.FarmService;

@Controller
@Transactional
public class FarmStaffContractController extends AbstractV8Controller {

	@Autowired
	private FarmService farmService;

	@Autowired
	private RegEntityStaffRepository regEntityStaffRepository;

	@Autowired
	private RegEntityStaffContractRepository contractRepository;

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	/**
	 * 
	 * @param farmId
	 * @param entityId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/farm/{farmId}/entity/{entityId}/staff-working-agreements.html", method = RequestMethod.GET)
	public String showEditStaff(@PathVariable("farmId") Long farmId, @PathVariable("entityId") Long entityId,
			Model mv) {

		RegEntityStaff staff = regEntityStaffRepository.findByFarmId(farmId).stream()
				.filter(e -> e.getEntity().getId().equals(entityId)).findFirst().get();

		preparePage(staff, mv);

		List<RegEntityStaffContract> workingAgreements = contractRepository.findByFarmId(farmId).stream()
				.filter(e -> e.getEntity().getId().equals(entityId)).collect(Collectors.toList());

		mv.addAttribute("workingAgreements", workingAgreements);

		mv.addAttribute("wagDto", new StaffContractDto());

		return "farms/staff-working-agreements";
	}

	/**
	 * 
	 * @param farmId
	 * @param entityId
	 * @param contractId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/farm/{farmId}/entity/{entityId}/staff-working-agreemenent/delete.html", method = RequestMethod.POST)
	public String deleteStaffWorkingAgreement(@PathVariable("farmId") Long farmId,
			@PathVariable("entityId") Long entityId, @RequestParam("contractId") Long contractId, Model mv) {
		contractRepository.delete(contractId);

		return "redirect:/farm/" + farmId + "/entity/" + entityId + "/staff-working-agreements.html";
	}

	@RequestMapping(value = "/farm/{farmId}/entity/{entityId}/staff-working-agreement.html", method = RequestMethod.POST)
	public String saveStaffWorkingAgreement(@PathVariable("farmId") Long farmId,
			@PathVariable("entityId") Long entityId, StaffContractDto dto, Model mv) {

		RegEntityStaffContract contract = null;
		if (dto.getId() != null)
			contract = contractRepository.findOne(dto.getId());
		else {
			contract = new RegEntityStaffContract();
			contract.setEntity(regEntityRepository.findOne(entityId));
			contract.setFarm(regEntityRepository.findOne(farmId));
		}

		regFarmDtoMapper.fillEntity(dto, contract);

		contractRepository.save(contract);

		return "redirect:/farm/" + farmId + "/entity/" + entityId + "/staff-working-agreements.html";
	}

	/**
	 * 
	 * @param farm
	 * @param mv
	 */
	protected void preparePage(RegEntityStaff staff, Model mv) {

		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/farm");
		mv.addAttribute("v8p", p);

		// store the farm id, obviously usefull for further CRUD staff
		// operation, and page reload
		mv.addAttribute("staff", staff);
		mv.addAttribute("farmId", staff.getFarm().getId());
		mv.addAttribute("entityId", staff.getEntity().getId());
		mv.addAttribute("activeTab", "staff");

		mv.addAttribute("allContractTypes", codeListservice.listActiveContractTypes());
		mv.addAttribute("allCompanyPositionTypes", codeListservice.listActivePositionTypes());
		mv.addAttribute("allPaymentFrequencies", codeListservice.listActivePaymentFrequencies());
		mv.addAttribute("allCurrencies", codeListservice.listActiveCurrencies());

	}

}
