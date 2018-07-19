package com.fairagora.verifik8.v8web.api.plot;

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

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.plots.dto.PlotListingDto;
import com.fairagora.verifik8.v8web.services.FarmService;
import com.fairagora.verifik8.v8web.services.UserService;
import com.fairagora.verifik8.v8web.services.enhanced.V8Farm;

@RequestMapping("green")
@RestController
public class PlotApiController extends AbstractV8Controller{


	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@Autowired
	private FarmService farmService;
	
	@Autowired
	private UserService userService;

	@RequestMapping(path = "/profile", method = RequestMethod.GET)
	public ResponseEntity<Object> getFarmByUser() {
		List<V8Farm> farms = farmService.listFarms();
		
		List<PlotListingDto> plots = farmService.listAllPlotsForLoggedUser(getLoggedUser()).stream().map(p -> regFarmDtoMapper.toListing(p)).collect(Collectors.toList());

		SYSUser user = userService.getUserByEmail();
		
		Map<String, Object> userFilter = new HashMap<>();
		userFilter.put("email", user.getEmail());
		userFilter.put("id", user.getId());
		userFilter.put("name", user.getName());
		userFilter.put("role", user.getRole());
		
		Map<String, Object> profileMap = new HashMap<>();
		profileMap.put("farms", farms);
		profileMap.put("ponds", plots);
		profileMap.put("user", userFilter);

		return new ResponseEntity<>(profileMap, HttpStatus.OK);
	}
	
}
