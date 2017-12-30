package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "cl_ref_countries")
public class CLRefCountry extends CodeListSupport {

	@Column(name = "ISO_3_CODE", unique = true, length = 3, nullable = false)
	protected String isoCode;

	public String getIsoCode() {
		return isoCode;
	}

	public void setIsoCode(String isoCode) {
		this.isoCode = isoCode;
	}

}
