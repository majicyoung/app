package com.fairagora.verifik8.v8web.api.plot;

import com.fairagora.verifik8.v8web.data.domain.CustomProducts;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppQuantityUnit;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppTilingActivityType;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppQuantityUnitRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLRefProductRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPlotActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPlotRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.plots.dto.PlotActivityDto;
import com.fairagora.verifik8.v8web.services.FameService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

@RequestMapping("green")
@RestController
public class PlotActivityApiController extends AbstractV8Controller {

	@Autowired
	private DTFarmPlotActivityRepository plotActivityRepository;

	@Autowired
	private RegEntityFarmPlotRepository farmPlotRepository;

	@Autowired
	private RegFarmDTOMapper dtoMapper;

	@Autowired
	private CLRefProductRepository clRefProductRepository;

	@Autowired
	private CLAppQuantityUnitRepository clAppQuantityUnitRepository;
	
	@Autowired
	private FameService fameService;

	@PostMapping(value = "/ponds/{plotId}/activity")
	public ResponseEntity<?> createPlotActivities(@PathVariable("plotId") Long plotId, PlotActivityDto dto, HttpServletRequest req) {
		DTFarmPlotActivity act = null;
		
		if(dto.getProduct() == null || dto.getProduct().intValue() == 0) {
			act = plotActivityRepository.findPlotActivityByPlotAndActivity(dto.getPlot(), dto.getActivityType(), dto.getActivityStartDate(), dto.getActivityEndDate());
		} else {
			act = plotActivityRepository.findPlotActivityByPlotAndActivityAndProduct(dto.getPlot(), dto.getActivityType(), dto.getProduct(), dto.getActivityStartDate(), dto.getActivityEndDate());
		}
		
		if (act == null) {
			act = new DTFarmPlotActivity();
		} else {
			return new ResponseEntity<Object>(act, HttpStatus.CONFLICT);
		}

		dtoMapper.fillEntity(dto, act);

		act.setPlot(farmPlotRepository.findOne(plotId));

		plotActivityRepository.save(act);
		
		fameService.saveLatestFarmPlotActivity(loggedUser(req), act);

		return new ResponseEntity<Object>(act, HttpStatus.CREATED);
	}

	@GetMapping(path = "/activities-measures")
	public ResponseEntity<List<DTFarmPlotActivity>> getAllActivityMeasure() {
		List<DTFarmPlotActivity> measures = plotActivityRepository.findAll();

		if (measures.isEmpty()) {
			return new ResponseEntity<List<DTFarmPlotActivity>>(HttpStatus.NO_CONTENT);
		}

		return new ResponseEntity<List<DTFarmPlotActivity>>(measures, HttpStatus.OK);
	}

	@GetMapping(path = "/products")
	public ResponseEntity<?> listAllClRefProducts() {
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

		return new ResponseEntity<Object>(listProducts, HttpStatus.OK);
	}

	@GetMapping(path = "/quantity-units")
	public ResponseEntity<?> showQuantityUnits() {
		List<CLAppQuantityUnit> quantityUnits = clAppQuantityUnitRepository.getQuantityUnit();

		if (quantityUnits.isEmpty()) {
			return new ResponseEntity<Object>(HttpStatus.NO_CONTENT);
		}

		return new ResponseEntity<Object>(quantityUnits, HttpStatus.OK);
	}
	
	@GetMapping(path = "/tiling-activity-type")
	public ResponseEntity<?> showTilingActivityType() {
		List<CLAppTilingActivityType> tilingActivityType = codeListservice.listActiveTilingActivityTypes();
		
		if (tilingActivityType.isEmpty()) {
			return new ResponseEntity<Object>(HttpStatus.NO_CONTENT);
		}
		
		return new ResponseEntity<Object>(tilingActivityType, HttpStatus.OK);
	}
}
