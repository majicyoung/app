package com.fairagora.verifik8.v8web.data.domain.commons;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppQuantityUnit;

@Embeddable
public class V8Measure {

	@Column(name = "QTY")
	protected float quantity;

	@ManyToOne
	@JoinColumn(name = "CL_UNIT_ID")
	protected CLAppQuantityUnit unit;

	public float getQuantity() {
		return quantity;
	}

	public void setQuantity(float quantity) {
		this.quantity = quantity;
	}

	public CLAppQuantityUnit getUnit() {
		return unit;
	}

	public void setUnit(CLAppQuantityUnit unit) {
		this.unit = unit;
	}


	public String getUnitCode(){
		return unit == null ? "?" : unit.getCode();
	}


	@Override
	public String toString() {
		return unit == null ? "" : quantity + " " + getUnitCode();
	}

	public V8Measure setup(float qt, CLAppQuantityUnit unit) {
		this.quantity = qt;
		this.unit = unit;
		return this;
	}

}
