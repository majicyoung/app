package com.fairagora.verifik8.v8web.mvc.farms;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPlotRepository;
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

	@Autowired
	private RegEntityFarmPlotRepository regEntityFarmPlotRepository;


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
		List<FarmDashboardChartSelector> farmDashboardChartSelectors = farmDashboardDataBuilder.getPoundChartList(id);
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			result = mapper.writeValueAsString(new FarmDashboardSelectorResult<>(farmDashboardChartSelectors));
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return result;
	}

	@RequestMapping(value = "/farm/{id}/dashboard/plotslist", method = RequestMethod.GET)
	@ResponseBody
	public String getPlotList(@PathVariable("id") Long id, Model mv) {
		List<FarmDashboardChartSelector> farmDashboardChartSelectors = farmDashboardDataBuilder.getPlotChartList(id);
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

	@RequestMapping(value = "/farm/{id}/dashboard/pesticidecontrollist", method = RequestMethod.GET)
	@ResponseBody
	public String getPesticidesControleList(Model mv) {
		List<FarmDashboardChartSelector> farmDashboardChartSelectors = farmDashboardDataBuilder.getPlotPesticideMeasureType();
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			result = mapper.writeValueAsString(new FarmDashboardSelectorResult<>(farmDashboardChartSelectors));
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return result;
	}

	@RequestMapping(value = "/farm/{id}/dashboard/pond/productions", method = RequestMethod.POST)
	@ResponseBody
	public List<Object> queryPondProductions(@PathVariable("id") Long id, @RequestParam("start") String startDate, @RequestParam("end") String endDate, @RequestParam(value = "poundIds[]") String[] poundIds, Model mv) {
		Map<String, Map<String, Double>> dataArray = farmDashboardDataBuilder.getPoundProduction(id, startDate, endDate, poundIds);
		List<String> dataDate = farmDashboardDataBuilder.getPoundProductionDate(id, startDate, endDate, poundIds);
		return pondFormatGraphArray(poundIds, dataArray, dataDate);
	}


	@RequestMapping(value = "/farm/{id}/dashboard/plot/productions", method = RequestMethod.POST)
	@ResponseBody
	public List<Object> queryPlotProductions(@PathVariable("id") Long id, @RequestParam("start") String startDate, @RequestParam("end") String endDate, @RequestParam(value = "plotIds[]") String[] plotIds, Model mv) {
		Map<String, Map<String, Double>> dataArray = farmDashboardDataBuilder.getPlotProduction(id, startDate, endDate, plotIds);
		List<String> dataDate = farmDashboardDataBuilder.getPlotProductionDate(id, startDate, endDate, plotIds);
		return plotFormatGraphArray(plotIds, dataArray, dataDate);
	}



	@Transactional
	@RequestMapping(value = "/farm/{id}/dashboard/pond/productions/initialize", method = RequestMethod.POST)
	@ResponseBody
	public List<Object> initPondProductionGraph(@PathVariable("id") Long id, @RequestParam("start") String startDate, @RequestParam("end") String endDate, Model mv){
		List<FarmDashboardChartSelector> farmDashboardChartSelectors =  farmDashboardDataBuilder.getPoundInitilizeChartList(id);
		String[] poundIds = farmDashboardChartSelectors.stream().map(FarmDashboardChartSelector::getId).map(String::valueOf).toArray(String[]::new);
		return queryPondProductions(id, startDate, endDate, poundIds,mv);
	}


	@Transactional
	@RequestMapping(value = "/farm/{id}/dashboard/plot/productions/initialize", method = RequestMethod.POST)
	@ResponseBody
	public List<Object> initPlotProductionGraph(@PathVariable("id") Long id, @RequestParam("start") String startDate, @RequestParam("end") String endDate, Model mv){
		List<FarmDashboardChartSelector> farmDashboardChartSelectors =  farmDashboardDataBuilder.getPlotInitilizeChartList(id);
		String[] plotIds = farmDashboardChartSelectors.stream().map(FarmDashboardChartSelector::getId).map(String::valueOf).toArray(String[]::new);
		return queryPlotProductions(id, startDate, endDate, plotIds,mv);
	}


	@RequestMapping(value = "/farm/{id}/dashboard/waters", method = RequestMethod.GET)
	@ResponseBody
	public List<Object> queryWaters(@PathVariable("id") Long id, @RequestParam("start") String startDate, @RequestParam("end") String endDate, @RequestParam(value = "poundIds[]") String[] poundIds, @RequestParam("measureId") String measureId, Model mv) {

		Map<String, Map<String, Double>> dataArray = farmDashboardDataBuilder.getPoundWaterMeasures(startDate, endDate, poundIds, measureId);
		List<String> dataDate = farmDashboardDataBuilder.getPoundWaterMeasureDate(startDate, endDate, poundIds, measureId);
		return pondFormatGraphArray(poundIds, dataArray, dataDate);
	}


	@RequestMapping(value = "/farm/{id}/dashboard/waters/initialize", method = RequestMethod.POST)
	@ResponseBody
	public List<Object> initWaterGraph(@PathVariable("id") Long id, @RequestParam("start") String startDate, @RequestParam("end") String endDate, Model mv){
		List<FarmDashboardChartSelector> farmDashboardChartSelectors =  farmDashboardDataBuilder.getPoundInitilizeChartList(id);
		String[] poundIds = farmDashboardChartSelectors.stream().map(FarmDashboardChartSelector::getId).map(String::valueOf).toArray(String[]::new);
		return queryWaters(id, startDate, endDate, poundIds, "2",mv);
	}


	@RequestMapping(value = "/farm/{id}/dashboard/pesticides", method = RequestMethod.GET)
	@ResponseBody
	public List<Object> queryPesticides(@PathVariable("id") Long id, @RequestParam("start") String startDate, @RequestParam("end") String endDate, @RequestParam(value = "plotIds[]") String[] plotIds, @RequestParam("measureId") String activityId, Model mv) {

		Map<String, Map<String, Double>> dataArray = farmDashboardDataBuilder.getPlotPesticideMeasures(startDate, endDate, plotIds, activityId);
		List<String> dataDate = farmDashboardDataBuilder.getPlotPesticideMeasureDate(startDate, endDate, plotIds, activityId);
		return plotFormatGraphArray(plotIds, dataArray, dataDate);
	}


	@RequestMapping(value = "/farm/{id}/dashboard/pesticides/initialize", method = RequestMethod.POST)
	@ResponseBody
	public List<Object> initPesticiesGraph(@PathVariable("id") Long id, @RequestParam("start") String startDate, @RequestParam("end") String endDate, Model mv){
		List<FarmDashboardChartSelector> farmDashboardChartSelectors =  farmDashboardDataBuilder.getPlotInitilizeChartList(id);
		String[] poundIds = farmDashboardChartSelectors.stream().map(FarmDashboardChartSelector::getId).map(String::valueOf).toArray(String[]::new);
		return queryPesticides(id, startDate, endDate, poundIds, "7",mv);
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

	private List<Object> pondFormatGraphArray(String[] poundIds, Map<String, Map<String, Double>> dataArray, List<String> dataDate){
		List<Object> graphData = new ArrayList<>();

		List<Object> leftColumns = new ArrayList<>();
		leftColumns.add("Date");
		Arrays.stream(poundIds)
				.map(Long::valueOf)
				.map(s -> regEntityFarmPondRepository.findOne(s))
				.forEach(regEntityFarmPond -> leftColumns.add(regEntityFarmPond.getName()));

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
			Arrays.stream(poundIds).forEach(s -> colums.add(0));
			graphData.add(colums);
		}


		graphData.add(0, leftColumns);


		return graphData;
	}

	private List<Object> plotFormatGraphArray(String[] plotIds, Map<String, Map<String, Double>> dataArray, List<String> dataDate){
		List<Object> graphData = new ArrayList<>();

		List<Object> leftColumns = new ArrayList<>();
		leftColumns.add("Date");
		Arrays.stream(plotIds)
				.map(Long::valueOf)
				.map(s -> regEntityFarmPlotRepository.findOne(s))
				.forEach(regEntityFarmPlot -> leftColumns.add(regEntityFarmPlot.getName()));

		for (String date : dataDate) {
			List<Object> colums = new ArrayList<>();
			colums.add(date);
			for (String plotId : plotIds) {
				colums.add(dataArray.get(date).getOrDefault(plotId, 0d));
			}
			graphData.add(colums);
		}

		//Initialization in case of empty data
		if (graphData.size() <= 0) {
			List<Object> colums = new ArrayList<>();
			colums.add("0");
			Arrays.stream(plotIds).forEach(s -> colums.add(0));
			graphData.add(colums);
		}


		graphData.add(0, leftColumns);


		return graphData;
	}
}
