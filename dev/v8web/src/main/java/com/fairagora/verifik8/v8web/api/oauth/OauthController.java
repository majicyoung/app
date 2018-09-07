package com.fairagora.verifik8.v8web.api.oauth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = {"blue", "green"})
public class OauthController {

	@Autowired
	private TokenStore tokenStore;

	@PostMapping(value = "/logout")
	public @ResponseBody
	ResponseEntity<HttpStatus> logout(HttpServletRequest request) {
		String authHeader = request.getHeader("Authorization");
		if (authHeader != null) {
			try {
				String tokenValue = authHeader.replace("Bearer", "").trim();
				OAuth2AccessToken accessToken = tokenStore.readAccessToken(tokenValue);
				tokenStore.removeAccessToken(accessToken);
			} catch (Exception e) {
				return new ResponseEntity<HttpStatus>(HttpStatus.NOT_FOUND);
			}
		}

		return new ResponseEntity<HttpStatus>(HttpStatus.OK);
	}
}
