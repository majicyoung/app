package com.fairagora.verifik8.v8web.api.plot;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fairagora.verifik8.v8web.data.domain.CustomProducts;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppQuantityUnitRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLRefProductRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;

@RequestMapping("green")
@RestController
public class PlotActivityApiController  extends AbstractV8Controller{

	@Autowired
	private CLRefProductRepository clRefProductRepository;
	
	@Autowired
	private CLAppQuantityUnitRepository clAppQuantityUnitRepository;

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
		List<?> quantityUnits = clAppQuantityUnitRepository.getQuantityUnit();
		
		if(quantityUnits.isEmpty()) {
			return new ResponseEntity<Object>(HttpStatus.NO_CONTENT);
		}
		
		return new ResponseEntity<Object>(quantityUnits, HttpStatus.OK);
	}
}
