package com.fairagora.verifik8.v8web.data.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProduct;

@Entity
@Table(name = "jt_pond_activity_product_types")
public class JTPondActivityProductTypes extends CLRefProduct{
	
	@Column(name = "CL_FARM_POND_ACTIVITY_ID", nullable = false)
	protected long activityId;

	public long getActivityId() {
		return activityId;
	}

	public void setActivityId(long activityId) {
		this.activityId = activityId;
	}
}
