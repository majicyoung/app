package com.fairagora.verifik8.v8web.api.interceptor;

import java.io.Console;
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
		
		SYSUser user = getDbVersion();
		
		if(user.getCacheVersion() == null) {
			setDbVersion(String.valueOf(time), user);
		} else {
			if(request.getMethod().equalsIgnoreCase("POST")) {
				setDbVersion(String.valueOf(time), user);
			}
		}
		
		response.addHeader("verifik8_database_version", String.valueOf(user.getCacheVersion()));
		response.setHeader("Access-Control-Expose-Headers", "VERIFIK8_DATABASE_VERSION");
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
		
		return user;
	}
	
	private void setDbVersion(String cacheVersion, SYSUser user) {
		
		SYSUser newUser = userRepository.findOne(user.getId());
		
		UserFormDto createUserDto = new UserFormDto();
		
		System.out.println(user.getCooperative());
		
		createUserDto.setRole(user.getRole().getId());
		createUserDto.setName(user.getName());
		createUserDto.setPassword(user.getPassword());
		createUserDto.setEmail(user.getEmail());
		createUserDto.setCacheVersion(cacheVersion);
		createUserDto.setCooperative(user.getCooperative() != null ? user.getCooperative().getId() : null);
		createUserDto.setCountry(user.getCountry() != null ? user.getCountry().getId() : null);
		createUserDto.setFarm(user.getFarm() != null ? user.getFarm().getId() : null);
		createUserDto.setBuyer(user.getBuyer() != null ? user.getBuyer().getId() : null);
		createUserDto.setSupplier(user.getCooperative() != null ? user.getCooperative().getId() : null);
		createUserDto.setId(user.getId());

		sysUserDTOMapper.fillEntity(createUserDto, newUser);

		userRepository.save(newUser);
	}
}
