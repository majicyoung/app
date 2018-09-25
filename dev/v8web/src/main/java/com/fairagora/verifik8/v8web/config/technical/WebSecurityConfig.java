package com.fairagora.verifik8.v8web.config.technical;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	static final String CLIENT_SECRET = "verifik8_secret";
	static final String REMEBER_ME_PARAM = "remember_me";
	static final String COOKIE_NAME = "verifik8_remember_me";
	
	@Autowired
	private DataSource dataSource;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.authorizeRequests().antMatchers("/webjars/**", "/static/**").permitAll().anyRequest().anonymous()
		.and()
        .authorizeRequests()
            .antMatchers("/").permitAll()
            .anyRequest().authenticated()
            .and()
        .formLogin()
            .loginPage("/login")
            .permitAll()
            .and()
        .logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout")).logoutSuccessUrl("/login")
            .permitAll();
		http.rememberMe(). 
	        key(CLIENT_SECRET).
	        rememberMeParameter(REMEBER_ME_PARAM).
	        rememberMeCookieName(COOKIE_NAME).
	        tokenValiditySeconds(86400);
		http.csrf().disable();
		http.headers()
	      .frameOptions()
	      .sameOrigin();
		
	}
}