package com.fairagora.verifik8.v8web.api.profile;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondListingDto;
import com.fairagora.verifik8.v8web.services.FarmService;
import com.fairagora.verifik8.v8web.services.enhanced.V8Farm;

@RequestMapping("api")
@RestController
public class ProfileController extends AbstractV8Controller{
	
	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	private FarmService farmService;

	@RequestMapping(path = "/profile", method = RequestMethod.GET)
	public ResponseEntity<Object> getFarmByUser() {
		List<V8Farm> farms = farmService.listFarms();
		
		List<PondListingDto> ponds = farmService.listVisiblePoundsForLoggedUser(getLoggedUser()).stream().map(p -> regFarmDtoMapper.toListing(p)).collect(Collectors.toList());

		Map<String, Object> profileMap = new HashMap<>();
		profileMap.put("farms", farms);
		profileMap.put("ponds", ponds);

		return new ResponseEntity<>(profileMap, HttpStatus.OK);
	}
}
