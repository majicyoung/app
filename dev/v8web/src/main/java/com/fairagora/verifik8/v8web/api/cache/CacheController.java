package com.fairagora.verifik8.v8web.api.cache;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppMeasureType;
import com.fairagora.verifik8.v8web.services.CodeListsService;

@RequestMapping("api")
@RestController
public class CacheController {

	@Autowired
	private CodeListsService codeListsService;
	
	@GetMapping(path= "/cache")
	public ResponseEntity<Object> getCacheData() {
		List<CLAppMeasureType> clAppMeasureType = codeListsService.listActiveMeasureTypes();
		
		Map<String, Object> cacheMap = new HashMap<String, Object>();
		cacheMap.put("measureTypes", clAppMeasureType);
		
		return new ResponseEntity<Object>(cacheMap, HttpStatus.OK);
	}
	
}
