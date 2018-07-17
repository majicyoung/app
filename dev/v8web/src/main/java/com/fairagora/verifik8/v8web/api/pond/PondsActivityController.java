package com.fairagora.verifik8.v8web.api.pond;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPondActivityType;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;

@RequestMapping("api")
@RestController
public class PondsActivityController extends AbstractV8Controller {

	@GetMapping(path = "/activities")
	public ResponseEntity<?> showPondActivities() {
		List<CLFarmPondActivityType> clFarmPondActivityTypeList = codeListservice.listActivePondActivityTypes();

		return new ResponseEntity<Object>(clFarmPondActivityTypeList, HttpStatus.OK);
	}

}
