package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cl_app_quantity_units")
public class CLAppQuantityUnit extends CodeListSupport {

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_QUANTITY_UNIT_TYPE_ID")
	protected CLAppQuantityUnitType  clQuantityUnitTypeId;

	public CLAppQuantityUnitType getClQuantityUnitTypeId() {
		return clQuantityUnitTypeId;
	}

	public void setClQuantityUnitTypeId(CLAppQuantityUnitType clQuantityUnitTypeId) {
		this.clQuantityUnitTypeId = clQuantityUnitTypeId;
	}
}
