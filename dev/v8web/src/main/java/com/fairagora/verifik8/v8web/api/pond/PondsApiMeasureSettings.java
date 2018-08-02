package com.fairagora.verifik8.v8web.api.pond;

import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fasterxml.jackson.databind.ObjectMapper;

@RequestMapping("blue")
@RestController
public class PondsApiMeasureSettings extends AbstractV8Controller {

	@RequestMapping("/measure-settings")
	public ResponseEntity<?> showPondCustomMeasurement() {
		return new ResponseEntity<>(new PondsApiMeasureSettings().listAllMeasureSettings(), HttpStatus.OK);
	}

	public Map<?, ?> listAllMeasureSettings() {
		ObjectMapper objectMapper = new ObjectMapper();
		Map<?, ?> measureSettingsMap = null;

		try {
			measureSettingsMap = objectMapper.readValue(getClass().getResource("/json/MeasureSettingData.json"), Map.class);
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return measureSettingsMap;
	}

}
