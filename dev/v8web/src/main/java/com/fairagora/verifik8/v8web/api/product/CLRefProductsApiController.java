package com.fairagora.verifik8.v8web.api.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fairagora.verifik8.v8web.data.repo.cl.CLRefProductRepository;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;

@RequestMapping("api")
@RestController
public class CLRefProductsApiController extends AbstractV8Controller {

	@Autowired
	private CLRefProductRepository clRefProductRepository;

	@GetMapping(path = "/products")
	public ResponseEntity<?> listAllClRefProducts() {
		List<?> products = clRefProductRepository.findAll();

		if (products.isEmpty()) {
			return new ResponseEntity<Object>(HttpStatus.NO_CONTENT);
		}

		return new ResponseEntity<Object>(products, HttpStatus.OK);
	}
}
