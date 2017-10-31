package com.fairagora.verifik8.v8web.mvc.infra;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@PreAuthorize("isAuthenticated()")
public class HelloController {

	@RequestMapping(value = "/hello.html", method = RequestMethod.GET)
	public String hello() {
		return "hello";
	}

}
