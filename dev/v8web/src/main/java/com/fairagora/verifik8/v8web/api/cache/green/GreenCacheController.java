package com.fairagora.verifik8.v8web.api.cache.green;

import com.fairagora.verifik8.v8web.data.domain.CustomProducts;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppQuantityUnit;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppTilingActivityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPlotActivityType;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppQuantityUnitRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLRefProductRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPlotActivityRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.plots.dto.PlotListingDto;
import com.fairagora.verifik8.v8web.services.FarmService;
import com.fairagora.verifik8.v8web.services.UserService;
import com.fairagora.verifik8.v8web.services.enhanced.V8Farm;
import com.fasterxml.jackson.databind.ObjectMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RequestMapping("green")
@RestController
public class GreenCacheController extends AbstractV8Controller {

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	private FarmService farmService;

	@Autowired
	private DTFarmPlotActivityRepository plotActivityRepository;

	@Autowired
	private CLRefProductRepository clRefProductRepository;
	
	@Autowired
	private CLAppQuantityUnitRepository clAppQuantityUnitRepository;

	@Autowired
	private UserService userService;

	@GetMapping(path = "/cache")
	public ResponseEntity<Object> getCacheData() {
		List<CLFarmPlotActivityType> activities = codeListservice.listActiveActivityTypes();
		List<DTFarmPlotActivity> activitiesMeasures = plotActivityRepository.findAll();
		List<CLAppQuantityUnit> quantityUnits = clAppQuantityUnitRepository.getQuantityUnit();
		List<CLAppTilingActivityType> tilingActivityType = codeListservice.listActiveTilingActivityTypes();

		List<V8Farm> farms = farmService.listFarms();

		List<PlotListingDto> ponds = farmService.listAllPlotsForLoggedUser(getLoggedUser()).stream().map(p -> regFarmDtoMapper.toListing(p)).collect(Collectors.toList());

		SYSUser user = userService.getUserByEmail();
		Map<String, Object> userFilter = new HashMap<>();
		userFilter.put("email", user.getEmail());
		userFilter.put("id", user.getId());
		userFilter.put("name", user.getName());
		userFilter.put("role", user.getRole());

		List<CustomProducts> listProducts = new ArrayList<>();
		List<CustomProducts> products = clRefProductRepository.getProductAndFarmPondActivityId();
		List<CustomProducts> activity = clRefProductRepository.getFarmPlotActivity();

		for (CustomProducts cp : products) {
			CustomProducts cproduct = new CustomProducts();
			for (CustomProducts actCp : activity) {
				if (actCp.getProductTypeId() == cp.getProductTypeId()) {
					cproduct.setActivityId(actCp.getActivityId());
					cproduct.setCode(cp.getCode());
					cproduct.setDescription(cp.getDescription());
					cproduct.setId(cp.getId());
					cproduct.setName(cp.getName());
					cproduct.setProductTypeId(actCp.getProductTypeId());
					cproduct.setUnitId(cp.getUnitId());

					listProducts.add(cproduct);
				}
			}
		}

		Map<String, Object> cacheMap = new HashMap<String, Object>();
		cacheMap.put("activities", activities);
		cacheMap.put("activitiesManagement", activitiesMeasures);
		cacheMap.put("farms", farms);
		cacheMap.put("ponds", ponds);
		cacheMap.put("products", listProducts);
		cacheMap.put("quantityUnits", quantityUnits);
		cacheMap.put("user", userFilter);
		cacheMap.put("tilingActivityType", tilingActivityType);
		cacheMap.put("activitySettings", listPlotdActivitySettings());

		return new ResponseEntity<Object>(cacheMap, HttpStatus.OK);
	}
	
	protected Map<?, ?> listPlotdActivitySettings() {
		ObjectMapper objectMapper = new ObjectMapper();
		Map<?, ?> measureSettingsMap = null;

		try {
			measureSettingsMap = objectMapper.readValue(getClass().getResource("/json/PlotActivitySettings.json"), Map.class);
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return measureSettingsMap;
	}

}
