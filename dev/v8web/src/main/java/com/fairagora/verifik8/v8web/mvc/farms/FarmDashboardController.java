package com.fairagora.verifik8.v8web.mvc.farms;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;
import com.fairagora.verifik8.v8web.services.ComplianceService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.dashboard.FarmDashboardDataBuilder;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmFormDto;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class FarmDashboardController extends AbstractV8Controller {


	@Autowired
	private FarmDashboardDataBuilder farmDashboardDataBuilder;

	@Autowired
	private ComplianceService compilanceService;


	@Autowired
	private RegEntityFarmPondRepository regEntityFarmPondRepository;


	/**
	 * @param id
	 * @param mv
	 * @return
	 */
	@Transactional
	@RequestMapping(value = "/farm/{id}/dashboard.html", method = RequestMethod.GET)
	@PreAuthorize("hasAuthority('R_FARMDASH')")
	public String showDashboard(@PathVariable("id") Long id, Model mv) {

		FarmFormDto dto = new FarmFormDto();

		displayDashboard(id, dto, mv);
		return "farms/dashboard";
	}

	@Transactional
	@RequestMapping(value = "/farm/{id}/compliance", method = RequestMethod.GET)
	@PreAuthorize("hasAuthority('R_FARMDASH')")
	public ResponseEntity<Resource> getCompliance(@PathVariable("id") Long id, Model mv, HttpServletRequest request) throws IOException {
		compilanceService.init();
		String filename = compilanceService.createCompliance(id);

		HttpHeaders headers = new HttpHeaders();
		headers.set("Content-Type", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");

		File file = FileUtils.getFile(filename);

		FileSystemResource fileSystemResource = new FileSystemResource(file);

		return new ResponseEntity<>(fileSystemResource, headers, HttpStatus.OK);
	}

	@RequestMapping(value = "/productions", method = RequestMethod.GET)
	@ResponseBody
	public String getProductions(Model mv) {
		// Todo
		// Integrate with SQL query feature
		return "{\"results\":[{\"id\":1,\"text\":\"Option 1\"},{\"id\":2,\"text\":\"Option 2\"}]}";
	}

	@RequestMapping(value = "/waters", method = RequestMethod.GET)
	@ResponseBody
	public String getWaters(Model mv) {
		// Todo
		// Integrate with SQL query feature
		return "{\"results\":[{\"id\":1,\"text\":\"Option 1\"},{\"id\":2,\"text\":\"Option 2\"}]}";
	}

	@RequestMapping(value = "/productions/query", method = RequestMethod.GET)
	@ResponseBody
	public List<Object> queryProductions(@RequestParam("start") String startDate, @RequestParam("end") String endDate, @RequestParam("id") String id, Model mv) {
		// Todo
		// Integrate with SQL query feature
		List<Object> columns = new ArrayList<>();
		columns.add("Date");
		columns.add("Line#1");
		columns.add("Line#2");

		List<Object> data1 = new ArrayList<>();
		data1.add("1");
		data1.add(122);
		data1.add(333);

		List<Object> data2 = new ArrayList<>();
		data2.add("1");
		data2.add(144);
		data2.add(356);

		List<Object> query = new ArrayList<>();
		query.add(columns);
		query.add(data1);
		query.add(data2);

		return query;
	}

	@RequestMapping(value = "/waters/query", method = RequestMethod.GET)
	@ResponseBody
	public List<Object> queryWaters(@RequestParam("start") String startDate, @RequestParam("end") String endDate, @RequestParam("id") String id, @RequestParam("temp") String temperature,Model mv) {
		// Todo
		// Integrate with SQL query feature
		List<Object> columns = new ArrayList<>();
		columns.add("Date");
		columns.add("Line#1");
		columns.add("Line#2");

		List<Object> data1 = new ArrayList<>();
		data1.add("1");
		data1.add(122);
		data1.add(333);

		List<Object> data2 = new ArrayList<>();
		data2.add("1");
		data2.add(144);
		data2.add(356);

		List<Object> query = new ArrayList<>();
		query.add(columns);
		query.add(data1);
		query.add(data2);

		return query;
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
		mv.addAttribute("farmName", jdbc.queryForObject("SELECT name FROM reg_entities WHERE id=" + id, String.class));
		mv.addAttribute("farmDto", dto);
		mv.addAttribute("farmId", id);

	}
}
