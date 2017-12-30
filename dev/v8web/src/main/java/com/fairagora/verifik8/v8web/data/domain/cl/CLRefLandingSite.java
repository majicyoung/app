package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity()
@Table(name = "cl_ref_landing_site")
public class CLRefLandingSite extends CodeListSupport {

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_ADMIN_LEVEL_1_ID")
	protected CLRefAdminLevel1 AdminLevel1;

	public CLRefAdminLevel1 getAdminLevel1() {
		return AdminLevel1;
	}

	public void setAdminLevel1(CLRefAdminLevel1 AdminLevel1) {
		this.AdminLevel1 = AdminLevel1;
	}
	
	
}
