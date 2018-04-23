package com.fairagora.verifik8.v8web.mvc.farms;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.infra.AttachementsService;
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
import com.fairagora.verifik8.v8web.data.domain.reg.staff.RegEntityStaff;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityStaffRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.dto.StaffFarmFormDto;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FarmStaffController extends AbstractV8Controller {

	private static final String TYPE_WORKING_PERMIT = "working_permit";

	@Autowired
	private RegEntityStaffRepository regEntityStaffRepository;
	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	protected JdbcTemplate jdbc;

	@Autowired
	private AttachementsService attachementsService;

	private Attachment workingPermitAttachment;

	@PreAuthorize("hasAuthority('R_FARMSTAFF')")
	@RequestMapping(value = "/farm/{id}/staff.html", method = RequestMethod.GET)
	public String showEditStaff(@PathVariable("id") Long id, Model mv) {

		RegEntity farm = regEntityRepository.findOne(id);

		preparePage(farm, mv);
		setToReadOnly(mv, "W_FARMSTAFF");
		StaffFarmFormDto dto = new StaffFarmFormDto();

		mv.addAttribute("staffDto", dto);
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id=" + id, String.class));
		return "farms/staff";
	}

	/**
	 * @param id
	 * @param staffId
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('W_FARMSTAFF')")
	@RequestMapping(value = "/farm/{id}/staff/delete.html", method = RequestMethod.POST)
	public String deleteEntityStaff(@PathVariable("id") Long id, @RequestParam("entityId") Long entityId, Model mv) {

		regEntityStaffRepository.findByFarmId(id).stream().filter(s -> s.getEntity().getId().equals(entityId))
				.findFirst().ifPresent(c -> regEntityStaffRepository.delete(c));

		return "redirect:/farm/" + id + "/staff.html";
	}

	/**
	 * @param id
	 * @param dto
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('W_FARMSTAFF')")
	@RequestMapping(value = "/farm/{id}/staff.html", method = RequestMethod.POST)
	public String saveEntityStaff(@PathVariable("id") Long id, StaffFarmFormDto dto, Model mv) {

		RegEntityStaff staff = regEntityStaffRepository.findByFarmId(id).stream()
				.filter(s -> s.getEntity().getId().equals(dto.getEntity())).findFirst().orElseGet(() -> {
					RegEntityStaff st = new RegEntityStaff();
					st.setFarm(regEntityRepository.findOne(id));
					st.setEntity(regEntityRepository.findOne(dto.getEntity()));
					return st;
				});

		regFarmDtoMapper.fillEntity(dto, staff);

		if (workingPermitAttachment != null) staff.setWorkingPermit(workingPermitAttachment);

		regEntityStaffRepository.save(staff);

		return "redirect:/farm/" + id + "/staff.html";
	}

	@PreAuthorize("hasAuthority('W_FARMSTAFF')")
	@RequestMapping(value = "/farm/{id}/staff.html/reset", method = RequestMethod.POST)
	public String saveEntityStaff(@PathVariable("id") Long id, @RequestParam("sid") Long sid) {

		boolean found = false;
		List<RegEntityStaff> staffListing = regEntityStaffRepository.findByFarmId(id);
		for (int i = 0; i < staffListing.size() && !found; i++) {

			if (staffListing.get(i).getEntity().getId().equals(sid)) {
				this.workingPermitAttachment = staffListing.get(i).getWorkingPermit();
				found = true;
			}

		}

		if (!found) {
			this.workingPermitAttachment = null;
		}

		return "redirect:/";

	}

	/**
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
		mv.addAttribute("activeSecondTab", "staff");

		List<RegEntityStaff> staffListing = regEntityStaffRepository.findByFarmId(farm.getId());
		mv.addAttribute("staffListing", staffListing);
		mv.addAttribute("allIndividuals", regEntityRepository.findByEntityTypeCode(CLAppEntityType.CODE_IND));
		mv.addAttribute("allPositions", codeListservice.listActivePositionTypes());
		mv.addAttribute("allLegalStatuses", codeListservice.listActiveLegalStatuses());
		mv.addAttribute("allLanguages", codeListservice.listActiveLanguages());

	}

	@RequestMapping(value = "/farm/{id}/staff.html/deleteimage", method = RequestMethod.POST)
	public String handleFileDelete(@RequestParam("type") String type) {
		switch (type) {
			case TYPE_WORKING_PERMIT:
				this.workingPermitAttachment = null;
				break;
		}

		return "redirect:/";
	}

	@RequestMapping(value = "/farm/{id}/staff.html/upload", method = RequestMethod.POST)
	public String handleFileUpload(@RequestParam("file") MultipartFile file, @RequestParam("type") String type) {

		Attachment attachment = new Attachment();
		attachment.setResourcePath(file.getOriginalFilename());

		// Save file
		attachementsService.store(attachment, file);

		switch (type) {
			case TYPE_WORKING_PERMIT:
				this.workingPermitAttachment = attachment;
				break;
		}

		return "redirect:/";
	}

}
