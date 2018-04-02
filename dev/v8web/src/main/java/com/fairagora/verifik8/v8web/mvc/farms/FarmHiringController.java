package com.fairagora.verifik8.v8web.mvc.farms;

import java.sql.Time;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffManagement;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityStaffManagementRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmHiringRecruitmentDto;

@Controller
public class FarmHiringController extends AbstractV8Controller {

	@Autowired
	private RegEntityStaffManagementRepository regEntityStaffManagementRepository;

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	/**
	 * 
	 * @param id
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('R_FARMHIRING')")
	@Transactional
	@RequestMapping(value = "/farm/{id}/hiring-recruitment.html", method = RequestMethod.GET)
	public String showEnvironmental(@PathVariable("id") Long id, Model mv) {
		FarmHiringRecruitmentDto dto = new FarmHiringRecruitmentDto();

		RegEntityStaffManagement staffMgmt = regEntityStaffManagementRepository.findByFarmId(id).orElseGet(() -> {
			RegEntityStaffManagement r = new RegEntityStaffManagement();
			r.setFarmId(id);
			r.setRegularWorkStartHour(new Time(8, 00, 00));
			r.setRegularWorkEndHour(new Time(18, 00, 00));
			regEntityStaffManagementRepository.save(r);
			return r;
		});

		regFarmDtoMapper.toDto(staffMgmt, dto);
		setToReadOnly(mv, "W_FARMHIRING");
		prepareForFarmEdition(id, dto, mv);
		return "farms/hiring-recruitment";
	}

	/**
	 * 
	 * @param farmDto
	 * @param farmId
	 * @param bindResults
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('W_FARMHIRING')")
	@RequestMapping(value = "/farm/{id}/hiring-recruitment.html", method = RequestMethod.POST)
	public String saveEnvironmental(@Validated @ModelAttribute("farmDto") FarmHiringRecruitmentDto farmDto, @PathVariable("id") Long farmId, BindingResult bindResults, Model mv) {

		RegEntityStaffManagement ent = regEntityStaffManagementRepository.findByFarmId(farmId).orElseGet(() -> {
			RegEntityStaffManagement e = new RegEntityStaffManagement();
			e.setFarmId(farmId);
			regEntityStaffManagementRepository.save(e);
			return e;
		});

		regFarmDtoMapper.fillEntity(farmDto, ent);

		regEntityStaffManagementRepository.save(ent);

		return "redirect:/farm/" + farmId + "/hiring-recruitment.html";
	}

	private void prepareForFarmEdition(Long id, FarmHiringRecruitmentDto dto, Model mv) {
		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/farm");
		mv.addAttribute("v8p", p);

		mv.addAttribute("activeTab", "staff");
		mv.addAttribute("activeSecondTab", "hiring");


		mv.addAttribute("allgetBackFinancialDepositReason", codeListservice.listActiveGetBackFinancialDepositReason());
		mv.addAttribute("allnoEarlyTerminationContractReason", codeListservice.listActiveNoEarlyTerminationContractReason());
		mv.addAttribute("allcontractTerminationReason", codeListservice.listActiveTerminationContractReason());
		mv.addAttribute("allWorkerEntrityDocumentTypes", codeListservice.listActiveWorkerEntityDocumentTypes());
		mv.addAttribute("allSalaryDeductionTypes", codeListservice.listActiveSalaryDeductionType());
		mv.addAttribute("allPaymentDebtTypes", codeListservice.listActivePaymentDebtType());
		mv.addAttribute("allHiringRestrictionsTypes", codeListservice.listActiveHiringRestrictionTypeRepository());

		mv.addAttribute("farmDto", dto);
		mv.addAttribute("farmId", dto.getFarmId());

	}
}
