package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity()
@Table(name = "cl_ref_admin_level_2")
public class CLRefAdminLevel2 extends CodeListSupport {

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_ADMIN_LEVEL_1_ID")
	protected CLRefAdminLevel1 clAdminLevel1Id;

	public CLRefAdminLevel1 getClAdminLevel1Id() {
		return clAdminLevel1Id;
	}

	public void setClAdminLevel1Id(CLRefAdminLevel1 clAdminLevel1Id) {
		this.clAdminLevel1Id = clAdminLevel1Id;
	}
}
