package com.fairagora.verifik8.v8web.data.domain.cl;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "cl_farm_pond_activity_types")
public class CLFarmPondActivityType extends CodeListSupport {


	@ManyToMany
	@JoinTable(
			name="jt_pond_activity_product_types",
			joinColumns=@JoinColumn(name="CL_FARM_POND_ACTIVITY_ID", referencedColumnName="ID"),
			inverseJoinColumns=@JoinColumn(name="CL_PRODUCT_TYPE_ID", referencedColumnName="ID"))
	@JsonBackReference
	protected List<CLRefProductType> clRefProductTypes;

	public List<CLRefProductType> getClRefProductTypes() {
		return clRefProductTypes;
	}

	public void setClRefProductTypes(List<CLRefProductType> clRefProductTypes) {
		this.clRefProductTypes = clRefProductTypes;
	}
}
