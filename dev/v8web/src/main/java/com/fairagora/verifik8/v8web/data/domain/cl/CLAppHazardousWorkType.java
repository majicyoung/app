package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cl_app_hazardous_work_type")
public class CLAppHazardousWorkType extends CodeListSupport {

	@JoinColumn(name = "CL_ENTITY_TYPE_ID")
	@ManyToOne(optional = true)
	protected CLAppEntityType entityType;

	public CLAppEntityType getEntityType() {
		return entityType;
	}

	public void setEntityType(CLAppEntityType entityType) {
		this.entityType = entityType;
	}
	

	@JoinColumn(name = "CL_FARM_TYPE_ID")
	@ManyToOne(optional = true)
	protected CLFarmType farmType;

	public CLFarmType getFarmType() {
		return farmType;
	}

	public void setFarmType(CLFarmType farmType) {
		this.farmType = farmType;
	}
	
	
	
}
