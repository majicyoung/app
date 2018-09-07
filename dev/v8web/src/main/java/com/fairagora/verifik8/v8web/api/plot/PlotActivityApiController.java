package com.fairagora.verifik8.v8web.api.plot;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fairagora.verifik8.v8web.data.domain.CustomProducts;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppQuantityUnit;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppQuantityUnitRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLRefProductRepository;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPlotActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPlotRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.plots.dto.PlotActivityDto;

@RequestMapping("green")
@RestController
public class PlotActivityApiController  extends AbstractV8Controller{

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
	
	
	@PostMapping(value = "/ponds/{plotId}/activity")
	public ResponseEntity<?> createPlotActivities(@PathVariable("plotId") Long plotId, PlotActivityDto dto) {
		DTFarmPlotActivity act = null;

		if (dto.getId() == null || dto.getId().intValue() == 0) {
			act = new DTFarmPlotActivity();
		} else {
			act = plotActivityRepository.findOne(dto.getId());
		}


		dtoMapper.fillEntity(dto, act);

		act.setPlot(farmPlotRepository.findOne(plotId));

		plotActivityRepository.save(act);

		return new ResponseEntity<Object>(HttpStatus.CREATED);
	}


	@GetMapping(path = "/products")
	public ResponseEntity<?> listAllClRefProducts() {
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

		return new ResponseEntity<Object>(listProducts, HttpStatus.OK);
	}
	
	@GetMapping(path="/quantity-units")
	public ResponseEntity<?> showQuantityUnits() {
		List<CLAppQuantityUnit> quantityUnits = clAppQuantityUnitRepository.getQuantityUnit();
		
		if(quantityUnits.isEmpty()) {
			return new ResponseEntity<Object>(HttpStatus.NO_CONTENT);
		}
		
		return new ResponseEntity<Object>(quantityUnits, HttpStatus.OK);
	}
}