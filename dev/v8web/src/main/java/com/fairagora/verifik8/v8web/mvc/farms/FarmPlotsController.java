package com.fairagora.verifik8.v8web.mvc.farms;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPlot;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPlotRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmPlotDto;

@Controller
public class FarmPlotsController extends AbstractV8Controller {

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	private RegEntityFarmPlotRepository regEntityFarmPlotRepository;

	@Autowired
	 protected JdbcTemplate jdbc;
	
	@RequestMapping(value = "/farm/{id}/plots.html", method = RequestMethod.GET)
	public String showPlotsManagementPage(@PathVariable("id") Long id, Model mv) {

		RegEntity farm = regEntityRepository.findOne(id);

		preparePage(farm, mv);

		FarmPlotDto dto = new FarmPlotDto();
		dto.setFarm(id);
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id="+id, String.class));
		mv.addAttribute("plotDto", dto);

		return "farms/plots";
	}

	
	@Transactional
	@RequestMapping(value = "/farm/{id}/plot.html", method = RequestMethod.POST)
	public String addPlot(@PathVariable("id") Long id, FarmPlotDto dto, Model mv) {

		RegEntity farm = regEntityRepository.findOne(id);

		RegEntityFarmPlot plot = null;
		if (dto.getId() == null) {
			plot = new RegEntityFarmPlot();
			plot.setFarm(farm);
		} else {
			plot = regEntityFarmPlotRepository.findOne(dto.getId());
		}

		regFarmDtoMapper.fillEntity(dto, plot);
		regEntityFarmPlotRepository.save(plot);
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id="+id, String.class));
		preparePage(farm, mv);

		dto.setFarm(id);
		
		mv.addAttribute("plotDto", dto);

		return "redirect:/farm/" + id + "/plots.html";
	}

	/**
	 * 
	 * @param id
	 * @param plotId
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/farm/{id}/plot/delete.html", method = RequestMethod.POST)
	public String deletePlot(@PathVariable("id") Long id, @RequestParam("plotId") Long plotId, Model mv) {
		regEntityFarmPlotRepository.delete(plotId);
		return "redirect:/farm/" + id + "/plots.html";
	}

	/**
	 * 
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
		mv.addAttribute("activeTab", "plots");

		mv.addAttribute("plotListing", regEntityFarmPlotRepository.findByFarmId(farm.getId()));
		mv.addAttribute("allSpecies", codeListservice.listActiveSpecies());
		mv.addAttribute("allCommodities", codeListservice.listActiveCommodities());
		mv.addAttribute("allQuantityUnits", codeListservice.listActiveQuantityUnit());
	}

}
