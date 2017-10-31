package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cl_product_types")
public class CLProductType extends CodeListSupport {

	@JoinColumn(name = "PARENT_CODE")
	@ManyToOne(optional = true)
	protected CLProductType parent;

	public CLProductType getParent() {
		return parent;
	}

	public void setParent(CLProductType parent) {
		this.parent = parent;
	}

}
