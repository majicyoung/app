package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cl_app_hvhe_expension_types")
public class CLAppHvHeExpensionType extends CodeListSupport {

	@JoinColumn(name = "CL_COUNTRY_ID")
	@ManyToOne(optional = false)
	protected CLRefCountry country;

	public CLRefCountry getCountry() {
		return country;
	}

	public void setCountry(CLRefCountry country) {
		this.country = country;
	}
}
