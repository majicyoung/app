package com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons;

public class V8MeasureDto {

	protected float quantity;

	protected Long unit;
	protected String unitName;

	public float getQuantity() {
		return quantity;
	}

	public void setQuantity(float quantity) {
		this.quantity = quantity;
	}

	public Long getUnit() {
		return unit;
	}

	public void setUnit(Long unit) {
		this.unit = unit;
	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

}
