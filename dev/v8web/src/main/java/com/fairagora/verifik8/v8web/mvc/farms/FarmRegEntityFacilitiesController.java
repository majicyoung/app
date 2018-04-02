package com.fairagora.verifik8.v8web.mvc.farms;

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
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFacilities;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFacilitiesRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.dto.RegEntityFacilitiesDto;

@Controller
public class FarmRegEntityFacilitiesController extends AbstractV8Controller {

	@Autowired
	private RegEntityFacilitiesRepository repository;

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	/**
	 * 
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

		regFarmDtoMapper.toDto(staffMgmt, dto);

		prepareForFarmEdition(id, dto, mv);
		return "farms/facilities";
	}

	/**
	 * 
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

		repository.save(ent);

		return "redirect:/farm/" + farmId + "/facilities.html";
	}

	private void prepareForFarmEdition(Long id, RegEntityFacilitiesDto dto, Model mv) {
		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/farm");
		mv.addAttribute("v8p", p);

		mv.addAttribute("activeTab", "profile");
		mv.addAttribute("activeTabEdit", "facilities");

		mv.addAttribute("farmDto", dto);
		mv.addAttribute("farmId", dto.getFarmId());

	}
}
