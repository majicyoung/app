package com.fairagora.verifik8.v8web.mvc.farms;

import java.sql.Time;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.transaction.Transactional;

import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.domain.reg.RegPicture;
import com.fairagora.verifik8.v8web.data.infra.AttachementsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffManagement;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityStaffManagementRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.dto.StaffGeneralInfoSto;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FarmStaffGeneralInfoController extends AbstractV8Controller {

	private static final String TYPE_PROTECTIVE_EQUIPMENT = "protective_equipment";
	private static final String TYPE_WORK_ACCIDENT_RECORD = "work_accident_record";
	private static final String TYPE_FARM_POLICIES = "farm_policies";

	@Autowired
	private RegEntityStaffManagementRepository regEntityStaffManagementRepository;

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	private AttachementsService attachementsService;

	private Map<String, RegPicture> protectiveEquipmentAttachment;
	private Map<String, RegPicture> workAccidentRecordAttachment;
	private Map<String, RegPicture> farmPoliciesAttachment;

	/**
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

		if (staffMgmt.getProtectiveEquipments() != null){
			protectiveEquipmentAttachment = new HashMap<>();
			for (RegPicture regPicture : staffMgmt.getProtectiveEquipments()) {
				protectiveEquipmentAttachment.put(regPicture.getResourcePath(), regPicture);
			}
		}
		if (staffMgmt.getWorkAccidentRecords() != null){
			workAccidentRecordAttachment = new HashMap<>();
			for (RegPicture regPicture : staffMgmt.getWorkAccidentRecords()) {
				workAccidentRecordAttachment.put(regPicture.getResourcePath(), regPicture);
			}

		}
		if (staffMgmt.getFarmPolicies() != null){
			farmPoliciesAttachment = new HashMap<>();
			for (RegPicture regPicture : staffMgmt.getFarmPolicies()) {
				farmPoliciesAttachment.put(regPicture.getResourcePath(), regPicture);
			}
		}

		regFarmDtoMapper.toDto(staffMgmt, dto);

		prepareForFarmEdition(id, dto, mv);
		return "farms/staff-general-info";
	}


	/**
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

		if (protectiveEquipmentAttachment != null) ent.setProtectiveEquipments(new ArrayList<>(protectiveEquipmentAttachment.values()));
		if (workAccidentRecordAttachment != null) ent.setWorkAccidentRecords(new ArrayList<>(workAccidentRecordAttachment.values()));
		if (farmPoliciesAttachment != null) ent.setFarmPolicies(new ArrayList<>(farmPoliciesAttachment.values()));

		regEntityStaffManagementRepository.save(ent);

		return "redirect:/farm/" + farmId + "/staff-general-info.html";
	}

	@Autowired
	protected JdbcTemplate jdbc;

	/**
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

		mv.addAttribute("activeTab", "staff");
		mv.addAttribute("activeSecondTab", "staff-general-info");

		mv.addAttribute("farmDto", dto);
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id=" + id, String.class));
		mv.addAttribute("farmId", dto.getFarmId());

		mv.addAttribute("allHazardousWorkType", codeListservice.listActiveHazardousWorkType());

	}

	@RequestMapping(value = "/farm/{id}/staff-general-info.html/deleteimage", method = RequestMethod.POST)
	public String handleFileDelete(@RequestParam("type") String type, @RequestParam("filename") String filename) {
		switch (type) {
			case TYPE_PROTECTIVE_EQUIPMENT:
				this.protectiveEquipmentAttachment.remove(filename);
				break;
			case TYPE_WORK_ACCIDENT_RECORD:
				this.workAccidentRecordAttachment.remove(filename);
				break;
			case TYPE_FARM_POLICIES:
				this.farmPoliciesAttachment.remove(filename);
				break;
		}

		return "redirect:/";
	}

	@RequestMapping(value = "/farm/{id}/staff-general-info.html/upload", method = RequestMethod.POST)
	public String handleFileUpload(@RequestParam("file") MultipartFile file, @RequestParam("type") String type) {

		RegPicture regPicture = new RegPicture();
		regPicture.setResourcePath(file.getOriginalFilename());

		// Save file
		attachementsService.store(regPicture, file);

		switch (type) {
			case TYPE_PROTECTIVE_EQUIPMENT:
				this.protectiveEquipmentAttachment.put(file.getOriginalFilename(), regPicture);
				break;
			case TYPE_WORK_ACCIDENT_RECORD:
				this.workAccidentRecordAttachment.put(file.getOriginalFilename(), regPicture);
				break;
			case TYPE_FARM_POLICIES:
				this.farmPoliciesAttachment.put(file.getOriginalFilename(), regPicture);
				break;
		}

		return "redirect:/";
	}
}
