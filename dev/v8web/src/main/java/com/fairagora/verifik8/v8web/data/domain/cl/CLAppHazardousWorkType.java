package com.fairagora.verifik8.v8web.data.domain.cl;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffManagement;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "cl_app_hazardous_work_type")
public class CLAppHazardousWorkType extends CodeListSupport {

	@JoinColumn(name = "CL_ENTITY_TYPE_ID")
	@ManyToOne(optional = true)
	protected CLAppEntityType clEntityTypeId;

	@JoinColumn(name = "CL_FARM_TYPE_ID")
	@ManyToOne(optional = true)
	protected CLFarmType clFarmTypeId;

	@ManyToMany(mappedBy="hazardousWorkTypes")
	private List<RegEntityStaffManagement> regEntityStaffManagements;

	public CLAppEntityType getClEntityTypeId() {
		return clEntityTypeId;
	}

	public void setClEntityTypeId(CLAppEntityType clEntityTypeId) {
		this.clEntityTypeId = clEntityTypeId;
	}

	public CLFarmType getClFarmTypeId() {
		return clFarmTypeId;
	}

	public void setClFarmTypeId(CLFarmType clFarmTypeId) {
		this.clFarmTypeId = clFarmTypeId;
	}

}