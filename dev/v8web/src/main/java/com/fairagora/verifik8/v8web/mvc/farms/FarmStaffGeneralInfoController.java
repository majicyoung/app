package com.fairagora.verifik8.v8web.mvc.farms;

import java.sql.Time;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
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
import com.fairagora.verifik8.v8web.mvc.farms.dto.StaffGeneralInfoSto;

@Controller
public class FarmStaffGeneralInfoController extends AbstractV8Controller {

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
	@PreAuthorize("hasAuthority('R_FARMSTAFFINFO')")
	public String showEnvironmental(@PathVariable("id") Long id, Model mv) {
		StaffGeneralInfoSto dto = new StaffGeneralInfoSto();

		RegEntityStaffManagement staffMgmt = regEntityStaffManagementRepository.findByFarmId(id).orElseGet(() -> {
			RegEntityStaffManagement r = new RegEntityStaffManagement();
			r.setFarmId(id);
			r.setRegularWorkStartHour(new Time(8, 00, 00));
			r.setRegularWorkEndHour(new Time(18, 00, 00));
			regEntityStaffManagementRepository.save(r);
			return r;
		});

		setToReadOnly(mv, "W_FARMSTAFFINFO");
		
		regFarmDtoMapper.toDto(staffMgmt, dto);

		prepareForFarmEdition(id, dto, mv);
		return "farms/staff-general-info";
	}

	
	/**
	 * 
	 * @param farmDto
	 * @param farmId
	 * @param bindResults
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('W_FARMSTAFFINFO')")
	@RequestMapping(value = "/farm/{id}/staff-general-info.html", method = RequestMethod.POST)
	public String saveEnvironmental(@Validated @ModelAttribute("farmDto") StaffGeneralInfoSto farmDto,
			@PathVariable("id") Long farmId, BindingResult bindResults, Model mv) {

		RegEntityStaffManagement ent = regEntityStaffManagementRepository.findByFarmId(farmId).orElseGet(() -> {
			RegEntityStaffManagement e = new RegEntityStaffManagement();
			e.setFarmId(farmId);
			regEntityStaffManagementRepository.save(e);
			return e;
		});

		regFarmDtoMapper.fillEntity(farmDto, ent);

		regEntityStaffManagementRepository.save(ent);

		return "redirect:/farm/" + farmId + "/staff-general-info.html";
	}

	@Autowired
	 protected JdbcTemplate jdbc;
	
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
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id="+id, String.class));
		mv.addAttribute("farmId", dto.getFarmId());

		mv.addAttribute("allHazardousWorkType", codeListservice.listActiveHazardousWorkType());

	}
}
