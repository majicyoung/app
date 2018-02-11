package com.fairagora.verifik8.v8web.mvc.farms;

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
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffTraining;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityStaffTrainingRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmStaffTrainingDto;

@Controller
public class FarmStaffTrainingController extends AbstractV8Controller {

	@Autowired
	private RegEntityStaffTrainingRepository repository;

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	/**
	 * 
	 * @param id
	 * @param mv
	 * @return
	 */
	@Transactional
	@RequestMapping(value = "/farm/{id}/training.html", method = RequestMethod.GET)
	public String showTraining(@PathVariable("id") Long id, Model mv) {
		FarmStaffTrainingDto dto = new FarmStaffTrainingDto();

		RegEntityStaffTraining staffTraining = repository.findByFarmId(id).orElseGet(() -> {
			RegEntityStaffTraining r = new RegEntityStaffTraining();
			r.setFarmId(id);
			repository.save(r);
			return r;
		});

		regFarmDtoMapper.toDto(staffTraining, dto);

		prepareForFarmEdition(id, dto, mv);
		return "farms/training";
	}

	/**
	 * 
	 * @param farmDto
	 * @param farmId
	 * @param bindResults
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/farm/{id}/training.html", method = RequestMethod.POST)
	public String saveTraining(@Validated @ModelAttribute("farmDto") FarmStaffTrainingDto farmDto,
			@PathVariable("id") Long farmId, BindingResult bindResults, Model mv) {

		RegEntityStaffTraining ent = repository.findByFarmId(farmId).orElseGet(() -> {
			RegEntityStaffTraining e = new RegEntityStaffTraining();
			e.setFarmId(farmId);
			repository.save(e);
			return e;
		});

		regFarmDtoMapper.fillEntity(farmDto, ent);

		repository.save(ent);

		return "redirect:/farm/" + farmId + "/training.html";
	}

	private void prepareForFarmEdition(Long id, FarmStaffTrainingDto dto, Model mv) {
		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/farm");
		mv.addAttribute("v8p", p);

		mv.addAttribute("activeTab", "training");
		mv.addAttribute("allHazardousActivitiesTrainingType", codeListservice.listHazardousTrainingTypeRepository());
		mv.addAttribute("farmDto", dto);
		mv.addAttribute("farmId", dto.getFarmId());

	}
}
