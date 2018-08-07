package com.fairagora.verifik8.v8web.api.cache.blue;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fairagora.verifik8.v8web.api.pond.PondsApiMeasureSettings;
import com.fairagora.verifik8.v8web.data.domain.CustomProducts;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppMeasureType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPondActivityType;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondMeasurement;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.repo.cl.CLRefProductRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondMeasurementRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondListingDto;
import com.fairagora.verifik8.v8web.services.CodeListsService;
import com.fairagora.verifik8.v8web.services.FarmService;
import com.fairagora.verifik8.v8web.services.UserService;
import com.fairagora.verifik8.v8web.services.enhanced.V8Farm;

@RequestMapping("blue")
@RestController
public class BlueCacheController extends AbstractV8Controller{

	@Autowired
	private CodeListsService codeListsService;
	
	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	private FarmService farmService;

	@Autowired
	private DTFarmPondActivityRepository pondActivityRepository;
	
	@Autowired
	private DTFarmPondMeasurementRepository pondMeasuresRepository;
	
	@Autowired
	private CLRefProductRepository clRefProductRepository;
	
	@Autowired
	private UserService userService;
	
	private PondsApiMeasureSettings pondsApiMeasureSettings;
	
	public BlueCacheController() {
		pondsApiMeasureSettings = new PondsApiMeasureSettings();
	}
	
	@GetMapping(path= "/cache")
	public ResponseEntity<Object> getCacheData() {
		List<CLAppMeasureType> clAppMeasureType = codeListsService.listActiveMeasureTypes();
		List<CLFarmPondActivityType> activities = codeListservice.listActivePondActivityTypes();
		List<DTFarmPondActivity> activitiesMeasures = pondActivityRepository.findAll();
		List<?> quantityUnits = codeListservice.listActiveQuantityUnit();
		List<DTFarmPondMeasurement> measures = pondMeasuresRepository.findAll();
		
		List<V8Farm> farms = farmService.listFarms();
		
		List<PondListingDto> ponds = farmService.listAllPondsForLoggedUser(getLoggedUser()).stream().map(p -> regFarmDtoMapper.toListing(p)).collect(Collectors.toList());

		SYSUser user = userService.getUserByEmail();
		Map<String, Object> userFilter = new HashMap<>();
		userFilter.put("email", user.getEmail());
		userFilter.put("id", user.getId());
		userFilter.put("name", user.getName());
		userFilter.put("role", user.getRole());
		
		
		List<CustomProducts> listProducts = new ArrayList<>();
		List<CustomProducts> products = clRefProductRepository.getProductAndFarmPondActivityId();
		List<CustomProducts> activity = clRefProductRepository.getFarmPondActivity();
		
		for (CustomProducts cp : products) {
			CustomProducts cproduct = new CustomProducts();
			for(CustomProducts actCp : activity) {
				if(actCp.getProductTypeId() == cp.getProductTypeId()) {
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
		cacheMap.put("measureTypes", clAppMeasureType);
		cacheMap.put("activities", activities);
		cacheMap.put("activitiesManagement", activitiesMeasures);
		cacheMap.put("farms", farms);
		cacheMap.put("ponds", ponds);
		cacheMap.put("products", listProducts);
		cacheMap.put("measureUnits", quantityUnits);
		cacheMap.put("user", userFilter);
		cacheMap.put("indicators", measures);
		cacheMap.put("measureSetting", pondsApiMeasureSettings.listAllMeasureSettings());
		
		return new ResponseEntity<Object>(cacheMap, HttpStatus.OK);
	}
	
}
