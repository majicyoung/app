package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "cl_ref_product_types")
public class CLRefProductType extends CodeListSupport {

	@JoinColumn(name = "PARENT_CODE")
	@ManyToOne(optional = true)
	protected CLRefProductType parent;

	public CLRefProductType getParent() {
		return parent;
	}

	public void setParent(CLRefProductType parent) {
		this.parent = parent;
	}

	@ManyToMany(mappedBy="clRefProductTypes")
	private List<CLFarmPondActivityType> clFarmPondActivityTypes;

	public List<CLFarmPondActivityType> getClFarmPondActivityTypes() {
		return clFarmPondActivityTypes;
	}

	public void setClFarmPondActivityTypes(List<CLFarmPondActivityType> clFarmPondActivityTypes) {
		this.clFarmPondActivityTypes = clFarmPondActivityTypes;
	}
}
