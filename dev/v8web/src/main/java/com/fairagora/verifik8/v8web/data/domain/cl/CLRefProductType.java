package com.fairagora.verifik8.v8web.data.domain.cl;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "cl_ref_product_types")
public class CLRefProductType extends CodeListSupport {

	@ManyToOne(optional = true, cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@NotFound(action = NotFoundAction.IGNORE)
	@JoinColumn(name = "PARENT_CODE")
	protected CLRefProductType clRefProductTypeId;

	@OneToMany(mappedBy="clRefProductType", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private Set<CLRefProduct> clRefProducts;

	public CLRefProductType getClRefProductTypeId() {
		return clRefProductTypeId;
	}

	public void setClRefProductTypeId(CLRefProductType clRefProductTypeId) {
		this.clRefProductTypeId = clRefProductTypeId;
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

	@ManyToOne(optional = false, cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "CL_RECOMAND_QUANTITY_UNIT_ID")
	protected CLAppQuantityUnit clRecomandQuantityUnitId;

	public CLAppQuantityUnit getClRecomandQuantityUnitId() {
		return clRecomandQuantityUnitId;
	}

	public void setClRecomandQuantityUnitId(CLAppQuantityUnit clRecomandQuantityUnitId) {
		this.clRecomandQuantityUnitId = clRecomandQuantityUnitId;
	}
}
