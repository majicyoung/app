package com.fairagora.verifik8.v8web.api.quantity.units;

import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("blue")
@RestController
public class CLAppQuantityUnitsApiController extends AbstractV8Controller {

	@GetMapping(path = "/quantity-units")
	public ResponseEntity<?> showQuantityUnits() {
		List<?> quantityUnits = codeListservice.listActiveQuantityUnit();

		if (quantityUnits.isEmpty()) {
			return new ResponseEntity<Object>(HttpStatus.NO_CONTENT);
		}

		return new ResponseEntity<Object>(quantityUnits, HttpStatus.OK);
	}

	public List<?> listPondAllMeasureUnits() {
		ObjectMapper objectMapper = new ObjectMapper();
		List<?> measureUnitsMap = null;

		try {
			measureUnitsMap = objectMapper.readValue(getClass().getResource("/json/MeasureUnits.json"), List.class);
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return measureUnitsMap;
	}
}
