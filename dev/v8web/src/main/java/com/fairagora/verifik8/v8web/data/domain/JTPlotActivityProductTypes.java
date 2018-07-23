package com.fairagora.verifik8.v8web.data.domain;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPlotActivityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProductType;
import com.fairagora.verifik8.v8web.data.domain.cl.CodeListSupport;
import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name = "jt_plot_activity_product_types")
public class JTPlotActivityProductTypes extends CodeListSupport{
	@ManyToOne
	@JoinColumn(name="CL_FARM_PLOT_ACTIVITY_ID", nullable=false)
	@JsonBackReference
	protected CLFarmPlotActivityType clFarmPlotActivityType;
	
	@ManyToOne
	@JoinColumn(name="CL_PRODUCT_TYPE_ID", nullable=false)
	@JsonBackReference
	protected CLRefProductType clRefProductType;

	public CLFarmPlotActivityType getClFarmPlotActivityType() {
		return clFarmPlotActivityType;
	}

	public void setClFarmPlotActivityType(CLFarmPlotActivityType clFarmPlotActivityType) {
		this.clFarmPlotActivityType = clFarmPlotActivityType;
	}

	public CLRefProductType getClRefProductType() {
		return clRefProductType;
	}

	public void setClRefProductType(CLRefProductType clRefProductType) {
		this.clRefProductType = clRefProductType;
	}
}
