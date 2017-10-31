package com.fairagora.verifik8.v8web.data.domain.reg.staff;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class StaffCompKey implements Serializable {

	@Column(name = "REG_ENTITY_ID")
	protected Long entityId;

	@Column(name = "REG_ENTITY_FARM_ID")
	protected Long farmId;

	public Long getEntityId() {
		return entityId;
	}

	public void setEntityId(Long entityId) {
		this.entityId = entityId;
	}

	public Long getFarmId() {
		return farmId;
	}

	public void setFarmId(Long farmId) {
		this.farmId = farmId;
	}

}
