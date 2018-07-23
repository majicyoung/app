package com.fairagora.verifik8.v8web.data.domain;

public class CustomProducts {
	protected Long activityId;
	protected String code;
	protected String description;
	protected Long id;
	protected String name;
	protected Long productTypeId;
	protected Long unitId;

	public CustomProducts() {
		super();
	}

	public CustomProducts(String code, String description, Long id, String name, Long productTypeId, Long unitId) {
		super();
		this.code = code;
		this.description = description;
		this.id = id;
		this.name = name;
		this.productTypeId = productTypeId;
		this.unitId = unitId;
	}

	public CustomProducts(Long activityId, Long productTypeId) {
		super();
		this.activityId = activityId;
		this.productTypeId = productTypeId;
	}

	public Long getActivityId() {
		return activityId;
	}

	public void setActivityId(Long activityId) {
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

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getProductTypeId() {
		return productTypeId;
	}

	public void setProductTypeId(Long productTypeId) {
		this.productTypeId = productTypeId;
	}

	public Long getUnitId() {
		return unitId;
	}

	public void setUnitId(Long unitId) {
		this.unitId = unitId;
	}	
}
