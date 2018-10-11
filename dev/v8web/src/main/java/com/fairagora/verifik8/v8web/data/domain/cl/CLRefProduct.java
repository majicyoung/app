package com.fairagora.verifik8.v8web.data.domain.cl;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;

@Entity
@Table(name = "cl_ref_products")
public class CLRefProduct extends CodeListSupport{

	@ManyToOne
	@JoinColumn(name="CL_PRODUCTS_TYPE_ID", nullable=false)
	@JsonBackReference
	protected CLRefProductType clRefProductType;

	@ManyToOne
	@JoinColumn(name = "CL_RECOMMAND_UNIT_ID", nullable = true)
	@JsonBackReference
	protected CLAppQuantityUnit clAppConstructionLocationType;

	public CLRefProductType getClRefProductType() {
		return clRefProductType;
	}

	public void setClRefProductType(CLRefProductType clRefProductType) {
		this.clRefProductType = clRefProductType;
	}

	public CLAppQuantityUnit getClAppConstructionLocationType() {
		return clAppConstructionLocationType;
	}

	public void setClAppConstructionLocationType(CLAppQuantityUnit clAppConstructionLocationType) {
		this.clAppConstructionLocationType = clAppConstructionLocationType;
	}
}
