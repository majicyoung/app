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
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffSafety;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityStaffSafetyRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmStaffSafetyDto;

@Controller
public class FarmStaffSafetyController extends AbstractV8Controller {

	@Autowired
	private RegEntityStaffSafetyRepository repository;

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	/**
	 * 
	 * @param id
	 * @param mv
	 * @return
	 */
	@Transactional
	@PreAuthorize("hasAuthority('R_FARMSAFETY')")
	@RequestMapping(value = "/farm/{id}/safety.html", method = RequestMethod.GET)
	public String showEnvironmental(@PathVariable("id") Long id, Model mv) {
		FarmStaffSafetyDto dto = new FarmStaffSafetyDto();

		RegEntityStaffSafety staffMgmt = repository.findByFarmId(id).orElseGet(() -> {
			RegEntityStaffSafety r = new RegEntityStaffSafety();
			r.setFarmId(id);
			repository.save(r);
			return r;
		});

		setToReadOnly(mv, "W_FARMSAFETY");

		regFarmDtoMapper.toDto(staffMgmt, dto);

		prepareForFarmEdition(id, dto, mv);
		return "farms/safety";
	}

	/**
	 * 
	 * @param farmDto
	 * @param farmId
	 * @param bindResults
	 * @param mv
	 * @return
	 */
	@PreAuthorize("hasAuthority('W_FARMSAFETY')")
	@RequestMapping(value = "/farm/{id}/safety.html", method = RequestMethod.POST)
	public String saveEnvironmental(@Validated @ModelAttribute("farmDto") FarmStaffSafetyDto farmDto,
			@PathVariable("id") Long farmId, BindingResult bindResults, Model mv) {

		RegEntityStaffSafety ent = repository.findByFarmId(farmId).orElseGet(() -> {
			RegEntityStaffSafety e = new RegEntityStaffSafety();
			e.setFarmId(farmId);
			repository.save(e);
			return e;
		});

		regFarmDtoMapper.fillEntity(farmDto, ent);

		repository.save(ent);

		return "redirect:/farm/" + farmId + "/safety.html";
	}

	private void prepareForFarmEdition(Long id, FarmStaffSafetyDto dto, Model mv) {
		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/farm");
		mv.addAttribute("v8p", p);

		mv.addAttribute("activeSecondTab", "safety");
		mv.addAttribute("activeTab", "profile");

		mv.addAttribute("farmDto", dto);
		mv.addAttribute("farmId", dto.getFarmId());

	}
}
