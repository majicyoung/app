package com.fairagora.verifik8.v8web.api.oauth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = {"blue", "green"})
public class OauthController extends AbstractV8Controller{
	
	@Autowired
    private JdbcTemplate jdbc;

	@Autowired
	private TokenStore tokenStore;

	@PostMapping(value = "/logout")
	public @ResponseBody
	ResponseEntity<HttpStatus> logout(HttpServletRequest request) {
		System.out.println("username : " + this.getLoggedUser());
		String authHeader = request.getHeader("Authorization");
		if (authHeader != null) {
			try {
				jdbc.update("DELETE FROM oauth_access_token WHERE user_name = ?", new Object[] { this.getLoggedUser().getUsername() });
				
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
