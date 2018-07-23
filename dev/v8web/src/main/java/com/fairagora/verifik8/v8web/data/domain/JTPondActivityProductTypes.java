package com.fairagora.verifik8.v8web.data.domain;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPondActivityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProductType;
import com.fairagora.verifik8.v8web.data.domain.cl.CodeListSupport;
import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name = "jt_pond_activity_product_types")
public class JTPondActivityProductTypes extends CodeListSupport {
	
	@ManyToOne
	@JoinColumn(name="CL_FARM_POND_ACTIVITY_ID", nullable=false)
	@JsonBackReference
	protected CLFarmPondActivityType clFarmPondActivityType;
	
	@ManyToOne
	@JoinColumn(name="CL_PRODUCT_TYPE_ID", nullable=false)
	@JsonBackReference
	protected CLRefProductType clRefProductType;

	public CLFarmPondActivityType getClFarmPondActivityType() {
		return clFarmPondActivityType;
	}

	public void setClFarmPondActivityType(CLFarmPondActivityType clFarmPondActivityType) {
		this.clFarmPondActivityType = clFarmPondActivityType;
	}

	public CLRefProductType getClRefProductType() {
		return clRefProductType;
	}

	public void setClRefProductType(CLRefProductType clRefProductType) {
		this.clRefProductType = clRefProductType;
	}
	
	
}
