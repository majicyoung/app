package com.fairagora.verifik8.v8web.data.domain.commons;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fairagora.verifik8.v8web.data.domain.cl.CLQuantityUnit;

@Embeddable
public class V8Measure {

	@Column(name = "QTY")
	protected float quantity;

	@ManyToOne
	@JoinColumn(name = "CL_UNIT_ID")
	protected CLQuantityUnit unit;

	public float getQuantity() {
		return quantity;
	}

	public void setQuantity(float quantity) {
		this.quantity = quantity;
	}

	public CLQuantityUnit getUnit() {
		return unit;
	}

	public void setUnit(CLQuantityUnit unit) {
		this.unit = unit;
	}

	@Override
	public String toString() {
		return unit == null ? "" : quantity + " " + (unit == null ? "?" : unit.getCode());
	}

	public V8Measure setup(float qt, CLQuantityUnit unit) {
		this.quantity = qt;
		this.unit = unit;
		return this;
	}

}
