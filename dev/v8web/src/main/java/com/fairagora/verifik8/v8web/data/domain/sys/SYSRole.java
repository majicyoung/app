package com.fairagora.verifik8.v8web.data.domain.sys;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.V8Entity;

@Entity()
@Table(name = "sys_roles")
public class SYSRole implements V8Entity {

	public static final String SADMIN = "sadmin";
	public static final String country = "country";
	public static final String coop = "coop";
	public static final String farm = "farm";
	public static final String buyer = "buyer";
	public static final String supplier = "supplier";	

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	@Column(name = "CODE", unique = true, length = 2, nullable = false)
	protected String code;

	@Column(name = "NAME", length = 64, nullable = false)
	protected String name;

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}



}
