package com.fairagora.verifik8.v8web.mvc.farms;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmFormDto;
import com.fairagora.verifik8.v8web.mvc.farms.statistic.FarmStatisticDataBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

@Controller
public class FarmStatisticController  extends AbstractV8Controller {

	@Autowired
	private FarmStatisticDataBuilder farmStatisticDataBuilder;

	@RequestMapping(value = "/farm/{id}/statistic.html", method = RequestMethod.GET)
//	@PreAuthorize("hasAuthority('R_FARMDASH')")
	public String showDashboard(@PathVariable("id") Long id, Model mv, HttpServletRequest req) {
		displayStatistic(id,mv);
		mv.addAttribute("dto", farmStatisticDataBuilder.get(loggedUser(req), id));
		return "farms/statistic";
	}


	private void displayStatistic(Long id, Model mv) {
		V8Page p = new V8Page();
		p.setTitle("default.farms");
		p.setDescription("default.farm_page_description");
		p.setNavBarPrefix("/farm");
		mv.addAttribute("v8p", p);

		mv.addAttribute("activeTab", "dashboard");
		mv.addAttribute("activeSecondTab", "statistic");


		mv.addAttribute("farmId", id);

	}

}
