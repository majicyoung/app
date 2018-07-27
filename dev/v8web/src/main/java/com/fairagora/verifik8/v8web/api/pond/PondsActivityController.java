package com.fairagora.verifik8.v8web.api.pond;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPondActivityType;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondActivityDto;

@RequestMapping("api")
@RestController
public class PondsActivityController extends AbstractV8Controller {

	@Autowired
	private DTFarmPondActivityRepository pondActivityRepository;

	@Autowired
	private RegEntityFarmPondRepository farmPondRepository;

	@Autowired
	private RegFarmDTOMapper dtoMapper;

	
	@GetMapping(path = "/activities")
	public ResponseEntity<?> showPondActivities() {
		List<CLFarmPondActivityType> clFarmPondActivityTypeList = codeListservice.listActivePondActivityTypes();

		return new ResponseEntity<Object>(clFarmPondActivityTypeList, HttpStatus.OK);
	}
	
	@PostMapping(path= "/ponds/{pondId}/activity")
	public ResponseEntity<?> createPondActivity(@PathVariable("pondId") Long pondId, PondActivityDto dto) {
		DTFarmPondActivity act = null;

		if (dto.getId() == null || dto.getId().intValue() == 0) {
			act = new DTFarmPondActivity();
		} else
			act = pondActivityRepository.findOne(dto.getId());

		dtoMapper.fillEntity(dto, act);

		act.setPond(farmPondRepository.findOne(pondId));

		pondActivityRepository.save(act);
		
		return new ResponseEntity<Object>(act, HttpStatus.CREATED);
	}
	
	@GetMapping(path = "/activities-measures")
	public ResponseEntity<?> getAllActivityMeasure() {
		List<DTFarmPondActivity> measures = pondActivityRepository.findAll();
		
		if (measures.isEmpty()) {
			return new ResponseEntity<List<DTFarmPondActivity>>(HttpStatus.NO_CONTENT);
		}

		return new ResponseEntity<List<DTFarmPondActivity>>(measures, HttpStatus.OK);
	}

}
