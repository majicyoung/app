package com.fairagora.verifik8.v8web.api.profile;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fairagora.verifik8.v8web.services.FarmService;
import com.fairagora.verifik8.v8web.services.enhanced.V8Farm;

@RequestMapping("api")
@RestController
public class ProfileController {

	@Autowired
	private FarmService farmService;

	@RequestMapping(path = "/profile", method = RequestMethod.GET)
	public ResponseEntity<Object> getFarmByUser() {

		List<V8Farm> farms = farmService.listFarms();

		return new ResponseEntity<>(farms, HttpStatus.OK);
	}
}
