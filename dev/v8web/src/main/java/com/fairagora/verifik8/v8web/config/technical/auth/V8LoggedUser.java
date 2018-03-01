package com.fairagora.verifik8.v8web.config.technical.auth;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;

public class V8LoggedUser implements UserDetails {

	private static final long serialVersionUID = 1L;

	private String userName;
	private String password;
	private List<GrantedAuthority> authorities;

	public V8LoggedUser(SYSUser su) {
		this.userName = su.getEmail();
		this.password = su.getPassword();
		this.authorities = new ArrayList<>();
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}

	@Override
	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return userName;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	public void addAuthority(SimpleGrantedAuthority simpleGrantedAuthority) {
		this.authorities.add(simpleGrantedAuthority);
	}

	public boolean hasRole(String string) {
		if (authorities != null)
			for (GrantedAuthority au : authorities) {
				if (au.getAuthority().equals(string))
					return true;
			}
		return false;
	}

}
