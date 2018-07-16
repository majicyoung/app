package com.fairagora.verifik8.v8web.api.pond;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPondActivityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProduct;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;

@RequestMapping("api")
@RestController
public class PondsActivityController extends AbstractV8Controller {

	@GetMapping(path = "/activities")
	public ResponseEntity<?> showPondActivities() {
		List<CLFarmPondActivityType> clFarmPondActivityTypeList = codeListservice.listActivePondActivityTypes();

		return new ResponseEntity<Object>(clFarmPondActivityTypeList, HttpStatus.OK);
	}

	@GetMapping(path = "/products")
	public ResponseEntity<?> getProducts() {
		List<?> clRefProducts = codeListservice.listActiveProductsByActivity();
		
		if(clRefProducts.isEmpty()) {
			return new ResponseEntity<Object>(HttpStatus.NO_CONTENT);
		}
		
		return new ResponseEntity<Object>(clRefProducts, HttpStatus.OK);
	}
}
