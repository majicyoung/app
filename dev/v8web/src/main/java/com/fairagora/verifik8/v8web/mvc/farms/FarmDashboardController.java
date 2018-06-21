package com.fairagora.verifik8.v8web.mvc.farms;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;
import com.fairagora.verifik8.v8web.mvc.farms.dashboard.FarmDashboardPoundSelector;
import com.fairagora.verifik8.v8web.mvc.farms.dashboard.FarmDashboardProduction;
import com.fairagora.verifik8.v8web.mvc.farms.dashboard.FarmDashboardSelectorResult;
import com.fairagora.verifik8.v8web.services.ComplianceService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

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

	@RequestMapping(value = "/farm/{id}/dashboard/poundslist", method = RequestMethod.GET)
	@ResponseBody
	public String getPoundList(@PathVariable("id") Long id, Model mv) {
		List<FarmDashboardPoundSelector> farmDashboardPoundSelectors = farmDashboardDataBuilder.getPoundList(id);
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			result = mapper.writeValueAsString(new FarmDashboardSelectorResult<>(farmDashboardPoundSelectors));
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return result;
	}

	@RequestMapping(value = "/farm/{id}/dashboard/waterscontrollist", method = RequestMethod.GET)
	@ResponseBody
	public String getWaters(Model mv) {
		// Todo
		// Integrate with SQL query feature
		return "{\"results\":[{\"id\":1,\"text\":\"Option 1\"},{\"id\":2,\"text\":\"Option 2\"}]}";
	}

	@RequestMapping(value = "/farm/{id}/dashboard/productions", method = RequestMethod.POST)
	@ResponseBody
	public List<Object> queryProductions(@PathVariable("id") Long id, @RequestParam("start") String startDate, @RequestParam("end") String endDate, @RequestParam(value = "poundIds[]") String[] poundIds, Model mv) {

		Map<String, Map<String, Double>> productionArray = farmDashboardDataBuilder.getPoundProduction(id, startDate, endDate, poundIds);
		List<String> farmDashboardProductionsDate = farmDashboardDataBuilder.getPoundProductionDate(id, startDate, endDate, poundIds);
		List<Object> graphData = new ArrayList<>();

		List<Object> leftColumns = new ArrayList<>();
		leftColumns.add("Date");
		leftColumns.addAll(Arrays.asList(poundIds));

		for (String date : farmDashboardProductionsDate) {
			List<Object> colums = new ArrayList<>();
			colums.add(date);
			for (String poundId : poundIds) {
				colums.add(productionArray.get(date).getOrDefault(poundId, 0d));
			}
			graphData.add(colums);
		}

		//Initialization in case of empty data
		if (graphData.size() <= 0) {
			List<Object> colums = new ArrayList<>();
			colums.add("0");
			for (String poundId : poundIds) {
				colums.add(0);
			}
			graphData.add(colums);
		}


		graphData.add(0, leftColumns);


		return graphData;
	}

	@RequestMapping(value = "/farm/{id}/dashboard/waters", method = RequestMethod.GET)
	@ResponseBody
	public List<Object> queryWaters(@PathVariable("id") Long id, @RequestParam("start") String startDate, @RequestParam("end") String endDate, @RequestParam(value = "ids[]") String[] ids, Model mv) {
		// Todo
		// Integrate with SQL query feature
		List<Object> columns = new ArrayList<>();
		columns.add("Date");
		columns.add("Line#1");
		columns.add("Line#2");

		List<Object> data1 = new ArrayList<>();
		data1.add("1");
		data1.add(122);
		data1.add(432);

		List<Object> data2 = new ArrayList<>();
		data2.add("2");
		data2.add(null);
		data2.add(356);

		List<Object> data3 = new ArrayList<>();
		data3.add("3");
		data3.add(144);
		data3.add(356);

		List<Object> query = new ArrayList<>();
		query.add(columns);
		query.add(data1);
		query.add(data2);
		query.add(data3);

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
