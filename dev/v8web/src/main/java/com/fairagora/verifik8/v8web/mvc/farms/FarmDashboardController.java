package com.fairagora.verifik8.v8web.mvc.farms;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppMeasureType;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;
import com.fairagora.verifik8.v8web.mvc.farms.dashboard.FarmDashboardChartSelector;
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
import java.util.*;

@Controller
public class FarmDashboardController extends AbstractV8Controller {


	@Autowired
	private FarmDashboardDataBuilder farmDashboardDataBuilder;

	@Autowired
	private ComplianceService compilanceService;

	@Autowired
	protected JdbcTemplate jdbc;

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
		List<FarmDashboardChartSelector> farmDashboardChartSelectors = farmDashboardDataBuilder.getPoundList(id);
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			result = mapper.writeValueAsString(new FarmDashboardSelectorResult<>(farmDashboardChartSelectors));
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return result;
	}

	@RequestMapping(value = "/farm/{id}/dashboard/waterscontrollist", method = RequestMethod.GET)
	@ResponseBody
	public String getWaters(Model mv) {
		List<FarmDashboardChartSelector> farmDashboardChartSelectors = farmDashboardDataBuilder.getPoundWaterMeasureType();
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			result = mapper.writeValueAsString(new FarmDashboardSelectorResult<>(farmDashboardChartSelectors));
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return result;
	}

	@RequestMapping(value = "/farm/{id}/dashboard/productions", method = RequestMethod.POST)
	@ResponseBody
	public List<Object> queryProductions(@PathVariable("id") Long id, @RequestParam("start") String startDate, @RequestParam("end") String endDate, @RequestParam(value = "poundIds[]") String[] poundIds, Model mv) {
		Map<String, Map<String, Double>> dataArray = farmDashboardDataBuilder.getPoundProduction(id, startDate, endDate, poundIds);
		List<String> dataDate = farmDashboardDataBuilder.getPoundProductionDate(id, startDate, endDate, poundIds);
		return formatGraphArray(poundIds, dataArray, dataDate);
	}

	@RequestMapping(value = "/farm/{id}/dashboard/waters", method = RequestMethod.GET)
	@ResponseBody
	public List<Object> queryWaters(@PathVariable("id") Long id, @RequestParam("start") String startDate, @RequestParam("end") String endDate, @RequestParam(value = "poundIds[]") String[] poundIds, @RequestParam("measureId") String measureId, Model mv) {

		Map<String, Map<String, Double>> dataArray = farmDashboardDataBuilder.getPoundWaterMeasures(startDate, endDate, poundIds, measureId);
		List<String> dataDate = farmDashboardDataBuilder.getPoundWaterMeasureDate(startDate, endDate, poundIds, measureId);
		return formatGraphArray(poundIds, dataArray, dataDate);
	}




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

	private static List<Object> formatGraphArray(String[] poundIds, Map<String, Map<String, Double>> dataArray, List<String> dataDate){
		List<Object> graphData = new ArrayList<>();

		List<Object> leftColumns = new ArrayList<>();
		leftColumns.add("Date");
		leftColumns.addAll(Arrays.asList(poundIds));

		for (String date : dataDate) {
			List<Object> colums = new ArrayList<>();
			colums.add(date);
			for (String poundId : poundIds) {
				colums.add(dataArray.get(date).getOrDefault(poundId, 0d));
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
}
