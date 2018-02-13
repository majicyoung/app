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
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmFormDto;
import com.fairagora.verifik8.v8web.mvc.farms.dashboard.FarmDashboardDataBuilder;
import com.fairagora.verifik8.v8web.services.FarmService;

@Controller
public class FarmDashboardController extends AbstractV8Controller {



	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;


	@Autowired
	private FarmDashboardDataBuilder farmDashboardDataBuilder;
	

	
	/**
	 * 
	 * @param id
	 * @param mv
	 * @return
	 */
	@Transactional
	@RequestMapping(value = "/farm/{id}/dashboard.html", method = RequestMethod.GET)
	public String showDashboard(@PathVariable("id") Long id, Model mv) {


		FarmFormDto dto = new FarmFormDto();

		displayDashboard(id, dto, mv);
		return "farms/dashboard";
	}

	@Autowired
	 protected JdbcTemplate jdbc;

	private void displayDashboard(Long id, FarmFormDto dto, Model mv) {
		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/farm");
		mv.addAttribute("v8p", p);

		mv.addAttribute("activeTab", "dashboard");

		mv.addAttribute("dashboard", farmDashboardDataBuilder.get(id));
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id="+id, String.class));
		mv.addAttribute("farmDto", dto);
		mv.addAttribute("farmId", id);

	}
}
