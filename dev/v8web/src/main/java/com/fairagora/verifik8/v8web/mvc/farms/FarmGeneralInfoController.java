package com.fairagora.verifik8.v8web.mvc.farms;

import java.sql.Time;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
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
import com.fairagora.verifik8.v8web.mvc.farms.dto.StaffGeneralInfoSto;

@Controller
public class FarmGeneralInfoController extends AbstractV8Controller {

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
	@RequestMapping(value = "/farm/{id}/staff-general-info.html", method = RequestMethod.GET)
	public String showEnvironmental(@PathVariable("id") Long id, Model mv) {
		StaffGeneralInfoSto dto = new StaffGeneralInfoSto();

		RegEntityStaffManagement staffMgmt = regEntityStaffManagementRepository.findByFarmId(id);
		if (staffMgmt == null) {
			staffMgmt = new RegEntityStaffManagement();
			staffMgmt.setFarmId(id);
			staffMgmt.setRegularWorkStartHour(new Time(8, 00, 00));
			staffMgmt.setRegularWorkEndHour(new Time(18, 00, 00));
			regEntityStaffManagementRepository.save(staffMgmt);
		}
		regFarmDtoMapper.toDto(staffMgmt, dto);

		prepareForFarmEdition(id, dto, mv);
		return "farms/staff-general-info";
	}

	/**
	 * 
	 * @param farmDto
	 * @param entityId
	 * @param bindResults
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/farm/{id}/staff-general-info.html", method = RequestMethod.POST)
	public String saveEnvironmental(@Validated @ModelAttribute("farmDto") StaffGeneralInfoSto farmDto,
			@PathVariable("id") Long entityId, BindingResult bindResults,
			Model mv) {

		prepareForFarmEdition(entityId, farmDto, mv);

		return "redirect:/farm/" + entityId + "/staff-general-info.html";
	}

	/**
	 * 
	 * @param id
	 * @param dto
	 * @param mv
	 */
	private void prepareForFarmEdition(Long id, StaffGeneralInfoSto dto, Model mv) {
		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/farm");
		mv.addAttribute("v8p", p);

		mv.addAttribute("activeTab", "staff-general-info");
		
		mv.addAttribute("farmDto", dto);
		mv.addAttribute("farmId", dto.getFarmId());
		
		mv.addAttribute("allHazardousWorkType",codeListservice.listActiveHazardousWorkType());
		
	}
}
