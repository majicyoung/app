package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cl_hvhe_expension_types")
public class CLHvHeExpensionType extends CodeListSupport {

	@JoinColumn(name = "CL_COUNTRY_ID")
	@ManyToOne(optional = false)
	protected CLCountry country;

	public CLCountry getCountry() {
		return country;
	}

	public void setCountry(CLCountry country) {
		this.country = country;
	}
}
