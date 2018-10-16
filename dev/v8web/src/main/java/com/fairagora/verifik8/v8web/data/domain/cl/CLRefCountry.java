package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "cl_ref_countries")
public class CLRefCountry extends CodeListSupport {

	@Column(name = "ISO_3_CODE", unique = true, length = 3, nullable = false)
	protected String iso3Code;

	public String getIso3Code() {
		return iso3Code;
	}

	public void setIso3Code(String iso3Code) {
		this.iso3Code = iso3Code;
	}

}