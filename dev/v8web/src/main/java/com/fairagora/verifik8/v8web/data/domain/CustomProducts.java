package com.fairagora.verifik8.v8web.data.domain;

public class CustomProducts {
	protected long activityId;
	protected String code;
	protected String description;
	protected long id;
	protected String name;
	protected long productTypeId;
	protected long unitId;

	public CustomProducts() {
		super();
	}

	public CustomProducts(String code, String description, long id, String name, long productTypeId, long unitId) {
		super();
		this.code = code;
		this.description = description;
		this.id = id;
		this.name = name;
		this.productTypeId = productTypeId;
		this.unitId = unitId;
	}

	public CustomProducts(long activityId, long productTypeId) {
		super();
		this.activityId = activityId;
		this.productTypeId = productTypeId;
	}

	public long getActivityId() {
		return activityId;
	}

	public void setActivityId(long activityId) {
		this.activityId = activityId;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getProductTypeId() {
		return productTypeId;
	}

	public void setProductTypeId(long productTypeId) {
		this.productTypeId = productTypeId;
	}

	public long getUnitId() {
		return unitId;
	}

	public void setUnitId(long unitId) {
		this.unitId = unitId;
	}
	
	
	
}
