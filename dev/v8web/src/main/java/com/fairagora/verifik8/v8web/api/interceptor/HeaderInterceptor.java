package com.fairagora.verifik8.v8web.api.interceptor;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;
import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.SysUserDTOMapper;
import com.fairagora.verifik8.v8web.mvc.users.dto.UserFormDto;
import com.fairagora.verifik8.v8web.services.UserService;

public class HeaderInterceptor extends HandlerInterceptorAdapter{
	
	@Autowired
	protected SYSUserRepository userRepository;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private SysUserDTOMapper sysUserDTOMapper;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		long time = new Date().getTime();
		
		if(request.getMethod().equalsIgnoreCase("POST")) {
			setDbVersion(String.valueOf(time));
		}
		
		response.addHeader("dbVersion", String.valueOf(getDbVersion().getCacheVersion()));
		return true;
	}

	@Override
	public void postHandle(
			HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)
			throws Exception {
	}

	@Override
	public void afterCompletion(
			HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
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
