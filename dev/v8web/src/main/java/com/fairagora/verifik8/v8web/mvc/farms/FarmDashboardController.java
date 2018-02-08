package com.fairagora.verifik8.v8web.mvc.farms;

import java.sql.Time;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
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
import com.fairagora.verifik8.v8web.mvc.farms.dto.StaffGeneralInfoSto;

@Controller
public class FarmDashboardController extends AbstractV8Controller {

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
	@Transactional
	@RequestMapping(value = "/farm/{id}/dashboard.html", method = RequestMethod.GET)
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

		prepareForFarmEdition(id, dto, mv);
		return "farms/dashboard";
	}

	@Autowired
	 protected JdbcTemplate jdbc;

	private void prepareForFarmEdition(Long id, FarmHiringRecruitmentDto dto, Model mv) {
		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/farm");
		mv.addAttribute("v8p", p);

		mv.addAttribute("activeTab", "dashboard");

		mv.addAttribute("allgetBackFinancialDepositReason", codeListservice.listActiveGetBackFinancialDepositReason());
		mv.addAttribute("allnoEarlyTerminationContractReason", codeListservice.listActiveNoEarlyTerminationContractReason());
		mv.addAttribute("allcontractTerminationReason", codeListservice.listActiveTerminationContractReason());
		mv.addAttribute("allWorkerEntrityDocumentTypes", codeListservice.listActiveWorkerEntityDocumentTypes());
		mv.addAttribute("allSalaryDeductionTypes", codeListservice.listActiveSalaryDeductionType());
		mv.addAttribute("allPaymentDebtTypes", codeListservice.listActivePaymentDebtType());
		mv.addAttribute("allHiringRestrictionsTypes", codeListservice.listActiveHiringRestrictionTypeRepository());
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id="+id, String.class));
		mv.addAttribute("farmDto", dto);
		mv.addAttribute("farmId", dto.getFarmId());

	}
}
