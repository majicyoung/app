package com.fairagora.verifik8.v8web.api.pond;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondMeasurement;
import com.fairagora.verifik8.v8web.data.repo.dt.DTFarmPondMeasurementRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.farms.RegFarmDTOMapper;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondListingDto;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondMeasurementDto;
import com.fairagora.verifik8.v8web.services.FarmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@RequestMapping("blue")
@RestController
public class PondsApiMeasureController extends AbstractV8Controller {

	@Autowired
	private RegFarmDTOMapper dtoMapper;

	@Autowired
	private RegEntityFarmPondRepository farmPondRepository;

	@Autowired
	private FarmService farmService;

	@Autowired
	private DTFarmPondMeasurementRepository pondMeasuresRepository;

	@Autowired
	private RegFarmDTOMapper regFarmDtoMapper;

	@PostMapping(path = "/ponds/{pondId}/measures")
	public ResponseEntity<?> createPondMeasure(@PathVariable("pondId") long pondId, PondMeasurementDto dto) {
		DTFarmPondMeasurement measure = null;

		if (dto.getId() == null || dto.getId().intValue() == 0) {
			measure = new DTFarmPondMeasurement();
		} else {
			measure = pondMeasuresRepository.findOne(dto.getId());
		}

		dtoMapper.fillEntity(dto, measure);

		measure.setPond(farmPondRepository.findOne(pondId));

		pondMeasuresRepository.save(measure);

		return new ResponseEntity<>(measure, HttpStatus.CREATED);
	}

	@GetMapping(path = "/measures")
	public ResponseEntity<List<DTFarmPondMeasurement>> getAllPondMeasure() {
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.YEAR, -1);

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date nextYear = cal.getTime();

		String previousDate = format.format(nextYear);
		String todayDate = format.format(new Date());

		List<PondListingDto> ponds = farmService.listAllPondsForLoggedUser(getLoggedUser()).stream().map(p -> regFarmDtoMapper.toListing(p)).collect(Collectors.toList());

		List<DTFarmPondMeasurement> measures = new ArrayList<>();

		for (PondListingDto pond : ponds) {
			measures.addAll(pondMeasuresRepository.findAllPondMeasure(todayDate, previousDate, pond.getId()));
		}

		if (measures.isEmpty()) {
			return new ResponseEntity<List<DTFarmPondMeasurement>>(HttpStatus.NO_CONTENT);
		}

		return new ResponseEntity<List<DTFarmPondMeasurement>>(measures, HttpStatus.OK);
	}

}
