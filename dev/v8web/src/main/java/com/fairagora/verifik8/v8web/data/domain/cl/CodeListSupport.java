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

	@Column(name = "I18N_DEFAULT", length = 256, nullable = false)
	protected String i18nDefault;
	
	@Column(name = "I18N_EN", length = 256, nullable = false)
	protected String i18nEn;
	
	@Column(name = "I18N_FR", length = 256, nullable = false)
	protected String i18nFr;

	@Column(name = "I18N_ES", length = 256, nullable = false)
	protected String i18nEs;
	
	@Column(name = "I18N_TH", length = 256, nullable = false)
	protected String i18nTh;

	@Column(name = "I18N_VT", length = 256, nullable = false)
	protected String i18nVt;
	
	
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

	public String getI18nDefault() {
		return i18nDefault;
	}

	public void setI18nDefault(String i18nDefault) {
		this.i18nDefault = i18nDefault;
	}
	
	public String getI18nEn() {
		return i18nEn;
	}

	public void setI18nEn(String i18nEn) {
		this.i18nEn = i18nEn;
	}	
	
	public String getI18nFr() {
		return i18nFr;
	}

	public void setI18nFr(String i18nFr) {
		this.i18nFr = i18nFr;
	}	
	
	public String getI18nEs() {
		return i18nEs;
	}

	public void setI18nEs(String i18nEs) {
		this.i18nEs = i18nEs;
	}

	public String getI18nTh() {
		return i18nTh;
	}

	public void setI18nTh(String i18nTh) {
		this.i18nTh = i18nTh;
	}
	
	public String getI18nVt() {
		return i18nVt;
	}

	public void setI18nVt(String i18nVt) {
		this.i18nVt = i18nVt;
	}	


}
