package com.fairagora.verifik8.v8web.api.pond;

import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPondActivityType;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondActivityRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondActivityDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("blue")
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

	@PostMapping(path = "/ponds/{pondId}/activity")
	public ResponseEntity<?> createPondActivity(@PathVariable("pondId") Long pondId, PondActivityDto dto) {
		DTFarmPondActivity act = null;
		
		if(dto.getProduct() == null || dto.getProduct().intValue() == 0) {
			act = pondActivityRepository.findPondActivityByPondAndActivity(dto.getPond(), dto.getActivityType(), dto.getActivityStartDate(), dto.getActivityEndDate());
		} else {
			act = pondActivityRepository.findPondActivityByPondAndActivityAndProduct(dto.getPond(), dto.getActivityType(), dto.getProduct(), dto.getActivityStartDate(), dto.getActivityEndDate());
		}
		
		if (act == null) {
			act = new DTFarmPondActivity();
		} else {
			return new ResponseEntity<Object>(act, HttpStatus.CONFLICT);
		}

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
