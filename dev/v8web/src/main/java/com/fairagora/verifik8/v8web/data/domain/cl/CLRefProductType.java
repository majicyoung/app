package com.fairagora.verifik8.v8web.data.domain.cl;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "cl_ref_product_types")
public class CLRefProductType extends CodeListSupport {

	@JoinColumn(name = "PARENT_CODE")
	@ManyToOne(optional = true)
	protected CLRefProductType parent;

	@OneToMany(mappedBy="clRefProductType")
	@JsonManagedReference
	private Set<CLRefProduct> clRefProducts;

	public CLRefProductType getParent() {
		return parent;
	}

	public void setParent(CLRefProductType parent) {
		this.parent = parent;
	}

	@ManyToMany(mappedBy="clRefProductTypes")
	@JsonManagedReference
	private List<CLFarmPondActivityType> clFarmPondActivityTypes;

	public List<CLFarmPondActivityType> getClFarmPondActivityTypes() {
		return clFarmPondActivityTypes;
	}

	public void setClFarmPondActivityTypes(List<CLFarmPondActivityType> clFarmPondActivityTypes) {
		this.clFarmPondActivityTypes = clFarmPondActivityTypes;
	}

	public Set<CLRefProduct> getClRefProducts() {
		return clRefProducts;
	}

	public void setClRefProducts(Set<CLRefProduct> clRefProducts) {
		this.clRefProducts = clRefProducts;
	}

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_RECOMAND_QUANTITY_UNIT_ID")
	protected CLAppQuantityUnit appQuantityUnit;

	public CLAppQuantityUnit getQuantityUnit() {
		return appQuantityUnit;
	}

	public void setQuantityUnit(CLAppQuantityUnit appQuantityUnit) {
		this.appQuantityUnit = appQuantityUnit;
	}

}
