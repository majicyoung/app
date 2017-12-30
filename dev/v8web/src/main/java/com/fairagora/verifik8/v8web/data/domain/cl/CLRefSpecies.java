package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "cl_ref_species")
public class CLRefSpecies extends CodeListSupport {

	@Column(name = "SCIENTIFIC_NAME")
	protected String scientificName;

	public String getScientificName() {
		return scientificName;
	}

	public void setScientificName(String scientificName) {
		this.scientificName = scientificName;
	}
}
