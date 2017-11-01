package com.fairagora.verifik8.v8web.data.domain.sys;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.V8Entity;

@Entity()
@Table(name = "sys_roles")
public class SYSRole implements V8Entity {

	@Id
	@Column(name = "ID")
	protected Long id;

	@Column(name = "CODE", unique = true, length = 2, nullable = false)
	protected String code;

	@Column(name = "LABEL", length = 64, nullable = false)
	protected String label;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	@Override
	public String getName() {
		return getLabel();
	}
	
	

}
