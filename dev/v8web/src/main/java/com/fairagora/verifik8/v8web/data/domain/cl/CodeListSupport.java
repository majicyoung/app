package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

import com.fairagora.verifik8.v8web.data.domain.V8EntitySupport;

@MappedSuperclass
public abstract class CodeListSupport extends V8EntitySupport {

	@Id
	@Column(name = "ID")
	protected Long id;

	@Column(name = "ENABLED")
	protected boolean enabled;

	@Column(name = "CODE", unique = true, length = 2, nullable = false)
	protected String code;

	@Column(name = "NAME", length = 64, nullable = false)
	protected String name;

	@Column(name = "DESCRIPTION", length = 128, nullable = false)
	protected String description;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
