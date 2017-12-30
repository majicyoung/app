package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

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

}
