package com.fairagora.verifik8.v8web.api.oauth;

import java.util.Arrays;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;

@RestController
@RequestMapping(value = "oauth")
public class AbstractLoginProxy {
	@Value("${oauth.clientId}")
	private String clientId;
	
	@Value("${oauth.clientSecret}")
	private String clientSecret;
	
	@Value("${v8app.url}")
	private String v8apiUrl;

	@Autowired
	private SYSUserRepository userRepository;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public Object attemptLogin(@RequestParam("username") String username, @RequestParam("password") String password, HttpServletRequest request) {
		MultiValueMap<String, String> data = new LinkedMultiValueMap<>();
		SYSUser u = null;

		if (userRepository.findByEmail(username.toLowerCase()) != null) {
			u = userRepository.findByEmail(username.toLowerCase());
		} else {
			if (userRepository.findByPhoneNumber(username.toLowerCase()) != null) {
				u = userRepository.findByPhoneNumber(username.toLowerCase());
			}
		}

		if (u != null) {
			data.add("username", username);
			data.add("password", password);
			
			return this.proxy("password", data, request);
		}
		
		throw new UsernameNotFoundException(username);
	}
	
	@RequestMapping(value = "/login/refresh", method = RequestMethod.POST)
	public Object attemptRefresh(@RequestParam("token") String token, HttpServletRequest request) {
		MultiValueMap<String, String> data = new LinkedMultiValueMap<>();
		data.add("refresh_token", token);
		
		return this.proxy("refresh_token", data, request);
	}

	public ResponseEntity<?> proxy(String grantType, MultiValueMap<String, String> data, HttpServletRequest requestUrl) {
		MultiValueMap<String, String> oauthData = new LinkedMultiValueMap<>();
		oauthData.add("client_id", clientId);
		oauthData.add("client_secret", clientSecret);
		oauthData.add("grant_type", grantType);
		oauthData.putAll(data);
		
		RestTemplate restTemplate = new RestTemplate();
		String uri = this.getURL(requestUrl) + "/" +v8apiUrl+"/oauth/token";

		String base64Encode = clientId + ":" + clientSecret;
		
		HttpHeaders headers = new HttpHeaders();
	    headers.setAccept(Arrays.asList(MediaType.ALL)); 
		headers.add("Authorization", "Basic " + Base64.getEncoder().encodeToString(base64Encode.getBytes()));
	    
	    HttpEntity<?> request = new HttpEntity<>(oauthData, headers);
		
		ResponseEntity<String> response = restTemplate.postForEntity(uri, request, String.class);
		
		return new ResponseEntity<Object>(response.getBody(), HttpStatus.OK);
	}
	
	public String getURL(HttpServletRequest request){
		String fullURL = request.getRequestURL().toString();
		
		return fullURL.substring(0,StringUtils.ordinalIndexOf(fullURL, "/", 3)); 
	}
}
