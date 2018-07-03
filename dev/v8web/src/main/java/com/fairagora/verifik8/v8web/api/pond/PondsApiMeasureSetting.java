package com.fairagora.verifik8.v8web.api.pond;

import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fasterxml.jackson.databind.ObjectMapper;

@RequestMapping("api")
@RestController
public class PondsApiMeasureSetting extends AbstractV8Controller {

	@RequestMapping("/custom/measure")
	public ResponseEntity<?> showPondCustomMeasurement() {
		return new ResponseEntity<>(new PondsApiMeasureSetting().listAllMeasureSetting(), HttpStatus.OK);
	}
	
	private Map<?,?> listAllMeasureSetting() {
		 ObjectMapper objectMapper = new ObjectMapper();
		 Map<?,?> empMap = null;
		 
		try {
			empMap = objectMapper.readValue(getClass().getResource("/json/MeasureSettingData.json"),Map.class);
		} catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return empMap;
	}
		
}
