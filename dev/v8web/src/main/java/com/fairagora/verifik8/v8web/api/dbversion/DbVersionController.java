package com.fairagora.verifik8.v8web.api.dbversion;

import java.io.IOException;
import java.util.Date;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;
import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.SysUserDTOMapper;
import com.fairagora.verifik8.v8web.mvc.users.dto.UserFormDto;
import com.fairagora.verifik8.v8web.services.UserService;

@RestController
public class DbVersionController extends SpringBootServletInitializer{

	@Autowired
	protected SYSUserRepository userRepository;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private SysUserDTOMapper sysUserDTOMapper;
	
	@RequestMapping("db-version")
	public void setCustomHeader (HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws IOException, ServletException {
		long time = new Date().getTime();
		
		if(request.getMethod().equalsIgnoreCase("POST")) {
			setDbVersion(String.valueOf(time));
		}
		
		response.setHeader("dbVersion", String.valueOf(getDbVersion().getCacheVersion()));
		filterChain.doFilter(request, response);
}
	
	private SYSUser getDbVersion() {
		SYSUser user = userService.getUserByEmail();
		if(user != null) {
			return user;
		}
		
		return null;
	}
	
	private void setDbVersion(String cacheVersion) {
		SYSUser newUser = userRepository.findOne(getDbVersion().getId());
		
		UserFormDto createUserDto = new UserFormDto();
		
		createUserDto.setRole(getDbVersion().getRole().getId());
		createUserDto.setName(getDbVersion().getName());
		createUserDto.setPassword(getDbVersion().getPassword());
		createUserDto.setEmail(getDbVersion().getEmail());
		createUserDto.setCacheVersion(cacheVersion);
		createUserDto.setCooperative(getDbVersion().getId());
		createUserDto.setCountry(getDbVersion().getId());
		createUserDto.setFarm(getDbVersion().getId());
		createUserDto.setBuyer(getDbVersion().getId());
		createUserDto.setSupplier(getDbVersion().getId());

		sysUserDTOMapper.fillEntity(createUserDto, newUser);

		userRepository.save(newUser);
	}
	
}
