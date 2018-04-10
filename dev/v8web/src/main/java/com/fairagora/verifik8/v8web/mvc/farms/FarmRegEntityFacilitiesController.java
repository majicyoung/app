package com.fairagora.verifik8.v8web.mvc.farms;

import javax.transaction.Transactional;

import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.infra.AttachementsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFacilities;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFacilitiesRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.dto.RegEntityFacilitiesDto;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FarmRegEntityFacilitiesController extends AbstractV8Controller {

	@Autowired
	private RegEntityFacilitiesRepository repository;

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	private AttachementsService attachementsService;

	private Attachment toiletsAttachment;
	private Attachment restRoomAttachment;
	private Attachment showerAttachment;
	private Attachment freeDrinkingAttachment;

	/**
	 * @param id
	 * @param mv
	 * @return
	 */
	@Transactional
	@RequestMapping(value = "/farm/{id}/facilities.html", method = RequestMethod.GET)
	@PreAuthorize("hasAuthority('R_FARMFACILITY')")
	public String showEnvironmental(@PathVariable("id") Long id, Model mv) {

		RegEntityFacilitiesDto dto = new RegEntityFacilitiesDto();

		RegEntityFacilities staffMgmt = repository.findByFarmId(id).orElseGet(() -> {
			RegEntityFacilities r = new RegEntityFacilities();
			r.setAccessRestRoom(false);
			r.setAccessShower(false);
			r.setAccessToFreeDrinking(false);
			r.setAccessToilets(false);
			r.setFarmId(id);
			repository.save(r);
			return r;
		});

		setToReadOnly(mv, "W_FARMFACILITY");

		toiletsAttachment = staffMgmt.getAccessToiletsAttachment();
		restRoomAttachment = staffMgmt.getAccessRestRoomAttachment();
		showerAttachment = staffMgmt.getAccessShowerAttachment();
		freeDrinkingAttachment = staffMgmt.getAccessToFreeDrinkingAttachment();

		regFarmDtoMapper.toDto(staffMgmt, dto);

		prepareForFarmEdition(id, dto, mv);
		return "farms/facilities";
	}

	/**
	 * @param farmDto
	 * @param farmId
	 * @param bindResults
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('W_FARMFACILITY')")
	@RequestMapping(value = "/farm/{id}/facilities.html", method = RequestMethod.POST)
	public String saveEnvironmental(@Validated @ModelAttribute("farmDto") RegEntityFacilitiesDto farmDto,
									@PathVariable("id") Long farmId, BindingResult bindResults, Model mv) {

		RegEntityFacilities ent = repository.findByFarmId(farmId).orElseGet(() -> {
			RegEntityFacilities e = new RegEntityFacilities();
			e.setAccessRestRoom(false);
			e.setAccessShower(false);
			e.setAccessToFreeDrinking(false);
			e.setAccessToilets(false);
			e.setFarmId(farmId);
			repository.save(e);
			return e;
		});

		regFarmDtoMapper.fillEntity(farmDto, ent);

		if (toiletsAttachment != null) ent.setAccessToiletsAttachment(toiletsAttachment);
		if (restRoomAttachment != null) ent.setAccessRestRoomAttachment(restRoomAttachment);
		if (showerAttachment != null) ent.setAccessShowerAttachment(showerAttachment);
		if (freeDrinkingAttachment != null) ent.setAccessToFreeDrinkingAttachment(freeDrinkingAttachment);

		repository.save(ent);

		return "redirect:/farm/" + farmId + "/facilities.html";
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String handleFileUpload(@RequestParam("file") MultipartFile file, @RequestParam("type") String type) {

		Attachment attachment = new Attachment();
		attachment.setResourcePath(file.getOriginalFilename());

		// Save file
		attachementsService.store(attachment, file);

		switch (type) {
			case "toilets":
				this.toiletsAttachment = attachment;
				break;
			case "restroom":
				this.restRoomAttachment = attachment;
				break;
			case "shower":
				this.showerAttachment = attachment;
				break;
			case "freedrinking":
				this.freeDrinkingAttachment = attachment;
				break;
		}

		return "redirect:/";
	}

	private void prepareForFarmEdition(Long id, RegEntityFacilitiesDto dto, Model mv) {
		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/farm");
		mv.addAttribute("v8p", p);

		mv.addAttribute("activeTab", "profile");
		mv.addAttribute("activeSecondTab", "facilities");

		mv.addAttribute("farmDto", dto);
		mv.addAttribute("farmId", dto.getFarmId());

	}
}
