package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cl_quantity_units")
public class CLQuantityUnit extends CodeListSupport {

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_QUANTITY_UNIT_TYPE_ID")
	protected CLQuantityUnitType type;

	public CLQuantityUnitType getType() {
		return type;
	}

	public void setType(CLQuantityUnitType type) {
		this.type = type;
	}

}
