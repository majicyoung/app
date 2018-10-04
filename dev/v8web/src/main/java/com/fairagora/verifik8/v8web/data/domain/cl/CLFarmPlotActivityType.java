package com.fairagora.verifik8.v8web.data.domain.cl;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cl_farm_plot_activity_types")
public class CLFarmPlotActivityType extends CodeListSupport {


	@ManyToOne
	@JoinColumn(name = "CL_RECOMMAND_UNIT_ID", nullable = true)
	@JsonBackReference
	protected CLAppQuantityUnit clAppQuantityUnit;

	public CLAppQuantityUnit getClAppQuantityUnit() {
		return clAppQuantityUnit;
	}

	public void setClAppQuantityUnit(CLAppQuantityUnit clAppQuantityUnit) {
		this.clAppQuantityUnit = clAppQuantityUnit;
	}
}
